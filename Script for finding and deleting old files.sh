#!/bin/bash

# Директория для поиска старых файлов
TARGET_DIR="/path/to/target"

# Количество дней
DAYS=30

# Поиск и удаление файлов
find "$TARGET_DIR" -type f -mtime +$DAYS -exec rm -f {} \;

# Проверка статуса удаления файлов
if [ $? -eq 0 ]; then
    echo "Файлы старше $DAYS дней успешно удалены из $TARGET_DIR."
else
    echo "Ошибка при удалении старых файлов."
    exit 1
fi