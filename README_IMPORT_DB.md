## 1️⃣ Ensure Supabase & Prisma Are Installed

If you haven't installed Supabase CLI and Prisma, install them first:

```sh
npm install -g supabase-cli
npm install --save-dev prisma
```

Start your local Supabase instance:

```sh
supabase start
```

---

## 2️⃣ Configure `.env` for Local Supabase

Make sure your Prisma setup points to your local Supabase database. Update your `.env` file:

```ini
DATABASE_URL="postgresql://postgres:postgres@localhost:54322/postgres"
```

---

## 3️⃣ Apply Prisma Migrations

Run the following Prisma command to apply migrations:

```sh
npx prisma migrate dev
```

This will:
✅ Apply existing migrations (`migration.sql`)
✅ Ensure tables match `schema.prisma`

If needed, force-reset the database:

```sh
npx prisma migrate reset
```

---

## 4️⃣ Verify in Supabase

Now, open Supabase Studio (`http://localhost:54323`) and check the **Table Editor** to confirm the schema is applied.

---

## 🛠 Alternative: Direct SQL Import

If Prisma isn't set up, you can manually execute the `migration.sql` on your Supabase instance:

```sh
supabase db reset
supabase db execute < backend/prisma/prisma/migrations/20230816080541_init/migration.sql
```
