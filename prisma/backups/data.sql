SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- Dumped from database version 15.8
-- Dumped by pg_dump version 15.8

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: audit_log_entries; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."audit_log_entries" ("instance_id", "id", "payload", "created_at", "ip_address") FROM stdin;
\.


--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."flow_state" ("id", "user_id", "auth_code", "code_challenge_method", "code_challenge", "provider_type", "provider_access_token", "provider_refresh_token", "created_at", "updated_at", "authentication_method", "auth_code_issued_at") FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."users" ("instance_id", "id", "aud", "role", "email", "encrypted_password", "email_confirmed_at", "invited_at", "confirmation_token", "confirmation_sent_at", "recovery_token", "recovery_sent_at", "email_change_token_new", "email_change", "email_change_sent_at", "last_sign_in_at", "raw_app_meta_data", "raw_user_meta_data", "is_super_admin", "created_at", "updated_at", "phone", "phone_confirmed_at", "phone_change", "phone_change_token", "phone_change_sent_at", "email_change_token_current", "email_change_confirm_status", "banned_until", "reauthentication_token", "reauthentication_sent_at", "is_sso_user", "deleted_at", "is_anonymous") FROM stdin;
\.


--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."identities" ("provider_id", "user_id", "identity_data", "provider", "last_sign_in_at", "created_at", "updated_at", "id") FROM stdin;
\.


--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."instances" ("id", "uuid", "raw_base_config", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sessions" ("id", "user_id", "created_at", "updated_at", "factor_id", "aal", "not_after", "refreshed_at", "user_agent", "ip", "tag") FROM stdin;
\.


--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_amr_claims" ("session_id", "created_at", "updated_at", "authentication_method", "id") FROM stdin;
\.


--
-- Data for Name: mfa_factors; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_factors" ("id", "user_id", "friendly_name", "factor_type", "status", "created_at", "updated_at", "secret", "phone", "last_challenged_at", "web_authn_credential", "web_authn_aaguid") FROM stdin;
\.


--
-- Data for Name: mfa_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_challenges" ("id", "factor_id", "created_at", "verified_at", "ip_address", "otp_code", "web_authn_session_data") FROM stdin;
\.


--
-- Data for Name: one_time_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."one_time_tokens" ("id", "user_id", "token_type", "token_hash", "relates_to", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: refresh_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."refresh_tokens" ("instance_id", "id", "token", "user_id", "revoked", "created_at", "updated_at", "parent", "session_id") FROM stdin;
\.


--
-- Data for Name: sso_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sso_providers" ("id", "resource_id", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: saml_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."saml_providers" ("id", "sso_provider_id", "entity_id", "metadata_xml", "metadata_url", "attribute_mapping", "created_at", "updated_at", "name_id_format") FROM stdin;
\.


--
-- Data for Name: saml_relay_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."saml_relay_states" ("id", "sso_provider_id", "request_id", "for_email", "redirect_to", "created_at", "updated_at", "flow_state_id") FROM stdin;
\.


--
-- Data for Name: sso_domains; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sso_domains" ("id", "sso_provider_id", "domain", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: key; Type: TABLE DATA; Schema: pgsodium; Owner: supabase_admin
--

COPY "pgsodium"."key" ("id", "status", "created", "expires", "key_type", "key_id", "key_context", "name", "associated_data", "raw_key", "raw_key_nonce", "parent_key", "comment", "user_data") FROM stdin;
\.


--
-- Data for Name: clients; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."clients" ("id", "created_at", "firstName", "lastName", "email", "age") FROM stdin;
1	2025-02-25 15:58:43.572191+00	Jon	Doe	jon@mail.com	22
2	2025-02-25 15:59:08.294901+00	Joan	Doe	joan@email.com	44
3	2025-02-25 18:42:16.766277+00	I know	is public	that@this.data	1
4	2025-02-25 18:42:47.502941+00	For sure 	private	project@should.be	44
\.


--
-- Data for Name: posts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."posts" ("id", "created_at", "author", "post", "tags") FROM stdin;
1	2025-02-25 18:46:58.961353+00	1	TypeScript support\nsupabase-js has TypeScript support for type inference, autocompletion, type-safe queries, and more.\n\nWith TypeScript, supabase-js detects things like not null constraints and generated columns. Nullable columns are typed as T | null when you select the column. Generated columns will show a type error when you insert to it.\n\nsupabase-js also detects relationships between tables. A referenced table with one-to-many relationship is typed as T[]. Likewise, a referenced table with many-to-one relationship is typed as T | null.\n\nGenerating TypeScript Types#\nYou can use the Supabase CLI to generate the types. You can also generate the types from the dashboard.\n\nTerminal\n\nsupabase gen types typescript --project-id abcdefghijklmnopqrst > database.types.ts\nThese types are generated from your database schema. Given a table public.movies, the generated types will look like:	['some','nice','tags']
2	2025-02-25 18:47:46.264386+00	2	The auth methods can be accessed via the supabase.auth namespace.\n\nBy default, the supabase client sets persistSession to true and attempts to store the session in local storage. When using the supabase client in an environment that doesn't support local storage, you might notice the following warning message being logged:\n\nNo storage option exists to persist the session, which may result in unexpected behavior when using auth. If you want to set persistSession to true, please provide a storage option or you may set persistSession to false to disable this warning.\n\nThis warning message can be safely ignored if you're not using auth on the server-side. If you are using auth and you want to set persistSession to true, you will need to provide a custom storage implementation that follows this interface.\n\nAny email links and one-time passwords (OTPs) sent have a default expiry of 24 hours. We have the following rate limits in place to guard against brute force attacks.\n\nThe expiry of an access token can be set in the "JWT expiry limit" field in your project's auth settings. A refresh token never expires and can only be used once.\n\nCreate auth client\nCreate auth client (server-side)\n	['tags','are','boring']
3	2025-02-25 18:48:17.39452+00	3	Create a new user\nCreates a new user.\n\nBy default, the user needs to verify their email address before logging in. To turn this off, disable Confirm email in your project.\nConfirm email determines if users need to confirm their email address after signing up.\nIf Confirm email is enabled, a user is returned but session is null.\nIf Confirm email is disabled, both a user and a session are returned.\nWhen the user confirms their email address, they are redirected to the SITE_URL by default. You can modify your SITE_URL or add additional redirect URLs in your project.\nIf signUp() is called for an existing confirmed user:\nWhen both Confirm email and Confirm phone (even when phone provider is disabled) are enabled in your project, an obfuscated/fake user object is returned.\nWhen either Confirm email or Confirm phone (even when phone provider is disabled) is disabled, the error message, User already registered is returned.\nTo fetch the currently logged-in user, refer to getUser().\nParameters	[]
\.


--
-- Data for Name: buckets; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."buckets" ("id", "name", "owner", "created_at", "updated_at", "public", "avif_autodetection", "file_size_limit", "allowed_mime_types", "owner_id") FROM stdin;
\.


--
-- Data for Name: objects; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."objects" ("id", "bucket_id", "name", "owner", "created_at", "updated_at", "last_accessed_at", "metadata", "version", "owner_id", "user_metadata") FROM stdin;
\.


--
-- Data for Name: s3_multipart_uploads; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."s3_multipart_uploads" ("id", "in_progress_size", "upload_signature", "bucket_id", "key", "version", "owner_id", "created_at", "user_metadata") FROM stdin;
\.


--
-- Data for Name: s3_multipart_uploads_parts; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."s3_multipart_uploads_parts" ("id", "upload_id", "size", "part_number", "bucket_id", "key", "etag", "owner_id", "version", "created_at") FROM stdin;
\.


--
-- Data for Name: secrets; Type: TABLE DATA; Schema: vault; Owner: supabase_admin
--

COPY "vault"."secrets" ("id", "name", "description", "secret", "key_id", "nonce", "created_at", "updated_at") FROM stdin;
\.


--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: supabase_auth_admin
--

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 1, false);


--
-- Name: key_key_id_seq; Type: SEQUENCE SET; Schema: pgsodium; Owner: supabase_admin
--

SELECT pg_catalog.setval('"pgsodium"."key_key_id_seq"', 1, false);


--
-- Name: clients_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."clients_id_seq"', 4, true);


--
-- Name: posts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."posts_id_seq"', 3, true);


--
-- PostgreSQL database dump complete
--

RESET ALL;
