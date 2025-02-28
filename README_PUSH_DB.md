# Apply Prisma Schema to Supabase Database

## 1️⃣ Run Prisma Migrations

Since you're using Prisma, you need to apply the schema to Supabase's PostgreSQL:

```sh
npx prisma migrate dev --name init
```

This will:

- Apply the schema (`schema.prisma`) to the Supabase database
- Run the migration (`migration.sql`) if needed

If your database is fresh, run:

```sh
npx prisma db push
```

This forces the schema into the database.

---

## 2️⃣ Deploy Supabase Edge Functions

If the `/supabase/functions` folder contains serverless functions, they need to be deployed to Supabase.

### Start the local Supabase environment

Ensure Supabase is running locally:

```sh
supabase start
```

### Deploy functions to Supabase

Deploy a specific function:

```sh
supabase functions deploy <function_name>
```

Or, deploy all functions in the folder:

```sh
for fn in supabase/functions/*; do
  supabase functions deploy "$(basename "$fn")"
done
```

### Test function locally

```sh
supabase functions serve <function_name>
```

---

## 3️⃣ Verify Everything is Working

- Check Prisma tables in the Supabase SQL Editor
- Run API requests to deployed Edge Functions
- Confirm the database is properly migrated

---

# Running Supabase Edge Functions Locally

## 1️⃣ Start Supabase Locally

Ensure your local Supabase instance is running:

```sh
supabase start
```

## 2️⃣ Serve Edge Functions Locally

Navigate to your project root (where `supabase/` is located), then run:

```sh
supabase functions serve <function_name>
```

To serve all functions in `/supabase/functions/`:

```sh
for fn in supabase/functions/*; do
  supabase functions serve "$(basename "$fn")" &
done
```

## 3️⃣ Test the Functions Locally

Once the functions are running, you can call them using `curl` or Postman:

```sh
curl -X POST "http://localhost:54321/functions/v1/<function_name>" \
 -H "Content-Type: application/json" \
 -d '{}'
```

Replace `<function_name>` with the actual function name.

## 4️⃣ Debugging & Logs

To see logs while functions are running:

```sh
supabase logs
```

To debug a specific function:

```sh
supabase functions serve <function_name> --debug
```

## 5️⃣ (Optional) Auto-Reload on Changes

To enable hot reloading for functions:

```sh
supabase functions serve <function_name> --watch
```

This way, any change you make will automatically restart the function.

---

# Fixing Prisma Issues

## Manually Drop the Constraint First

Try manually dropping the constraint before running `npx prisma db push`:

```sql
ALTER TABLE auth.identities DROP CONSTRAINT identities_provider_id_provider_unique;
```

Then, rerun:

```sh
npx prisma db push
```

## 2️⃣ Use `prisma migrate dev` Instead

If you're in development, use migration-based updates instead of `db push`:

```sh
npx prisma migrate dev --name update_schema
```

## 3️⃣ Reset the Database (Destructive, Only for Dev!)

If it's a local development setup and data loss isn't a concern:

```sh
npx prisma migrate reset
```

## Reset Supabase Database (Recommended)

This command will wipe all schemas, roles, and data in the local database and recreate it:

```sh
supabase db reset
```
