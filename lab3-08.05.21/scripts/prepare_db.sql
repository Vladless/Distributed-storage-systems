-- Настройка базы данных к резервному копированию
-- 1. Перевод в режим ARCHIVELOG, чтобы была возможность делать резервные копии, не останавливая экземпляр.
-- Выполняется один раз, после создания.
SHUTDOWN;
STARTUP MOUNT;
ALTER DATABASE ARCHIVELOG;
ALTER DATABASE OPEN;
SHUTDOWN;
STARTUP;