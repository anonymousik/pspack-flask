#!/bin/bash

set -e

echo "=== Wykrywanie systemu operacyjnego ==="
OS="unknown"
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
  if grep -qi microsoft /proc/version 2>/dev/null; then
    OS="wsl"
  else
    OS="linux"
  fi
elif [[ "$OSTYPE" == "darwin"* ]]; then
  OS="macos"
elif [[ "$OSTYPE" == "cygwin" || "$OSTYPE" == "msys" || "$OSTYPE" == "win32" ]]; then
  OS="windows"
fi

echo "Wykryto system: $OS"
echo ""

echo "=== Sprawdzanie Pythona ==="
if ! command -v python3 >/dev/null 2>&1; then
  echo "Python3 nie jest zainstalowany! Pobierz ze strony: https://www.python.org/"
  exit 1
fi
echo "Wersja Pythona: $(python3 --version)"

echo "=== Instalacja zależności ==="
python3 -m pip install --upgrade pip
python3 -m pip install -r requirements.txt

echo "=== GOTOWE! ==="
echo "Aby uruchomić aplikację, wpisz: python3 app.py"