WEDDING GUEST CHECK-IN PRO v5 — CLOUD DATABASE

QUICK START
1. Create a project at https://supabase.com/ and open its SQL Editor.
2. Run the full contents of supabase_setup.sql.
3. In Project Settings / API, copy the Project URL and the publishable (or anon) key.
4. Open index.html while connected to the internet. Go to Cloud DB, enter URL/key, then create an account.
5. If Supabase email confirmation is enabled, confirm the email first. Then return to Cloud DB and Login & Sync.
6. On each check-in phone, open the same app, enter the same URL/key and sign in with the same account. Data will sync from the cloud.

IMPORTANT
- Use only the publishable/anon key in the browser. NEVER paste the service_role or secret key into this app.
- The database tables use Row Level Security and are restricted to the signed-in account.
- This is a prototype. For a public event, use HTTPS hosting, a strong admin password, disable public account signups after creating the admin account, and test concurrent check-ins before the wedding.
- Browser-only records are not automatically merged if you connect multiple devices with different existing guest lists. Sign in on the primary device first and use that cloud data on other devices.
- If the app is opened as a local file, cloud sync still needs internet. Live camera may require HTTPS; use the phone camera capture or QR gallery fallback.
