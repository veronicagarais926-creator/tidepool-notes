-- Run once in the Supabase SQL editor to enable text-only posts and the live "New posts" pill.
alter table public.posts alter column photo_path drop not null;
-- Realtime for the "New posts" pill (ignore the error if already added):
alter publication supabase_realtime add table public.posts;
