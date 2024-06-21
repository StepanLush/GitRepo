#!/bin/bash

git checkout dev > /dev/null 2>&1

CHANGED_FILES=$(git diff --name-only master)

CHANGED_FOLDERS=$(git diff --dirstat=files,0 master | cut -d '/' -f 1)

echo "Измененные файлы:"
echo "$CHANGED_FILES"

echo

echo "Измененные папки:"
echo "$CHANGED_FILES"

git checkout master
