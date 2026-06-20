# Offline Sync Design

Principle: Local-first.

1. Store all data in SQLite.
2. Mark unsynced records.
3. Sync automatically when internet returns.
4. Last-write-wins conflict strategy for MVP.
5. Background sync queue.