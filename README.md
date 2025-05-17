# 🎮 pspack-flask

**pspack-flask** to narzędzie exploitacyjne dla PS4 z firmware 9.00, bazujące na pOOBs4 i zintegrowane z automatycznym pobieraniem oraz wysyłaniem GoldHEN. Całość udostępniona jako lekka aplikacja webowa w Python Flask, gotowa do uruchomienia lokalnie lub w Dockerze.


## ⭐ Najważniejsze funkcje

- Automatyczny exploit pOOBs4 dla PS4 v9.00
- Automatyczne pobieranie i wysyłka GoldHEN
- Szybka instalacja lokalnie lub przez Docker
- Nasłuchiwanie na porcie 1337

## 🛠️ Instalacja

### Wymagania

- Python 3.10 lub nowszy  
- pip  
- (Opcjonalnie) Docker

### Szybka instalacja

1. **Klonowanie repozytorium**
    ```bash
    git clone https://github.com/anonymousik/pspack-flask.git
    cd pspack-flask
    ```

2. **Instalacja zależności**
    ```bash
    python3 -m pip install -r requirements.txt
    ```

## 🚀 Przykłady uruchomienia

### Przykład 1: Uruchomienie lokalnie

```bash
python3 app.py
```
> Jeśli pojawi się błąd związany z portem 1337, uruchom polecenie jako administrator/root.

Po uruchomieniu zobaczysz w terminalu adres IP, np.:  
`* Running on http://192.168.1.200:1337/`

Na PS4 otwórz przeglądarkę i wpisz ten adres (z portem 1337). Po udanym exploicie GoldHEN zostanie wysłany automatycznie.

---

### Przykład 2: Uruchomienie w Dockerze

1. Zbuduj obraz Dockera:
    ```bash
    docker build -t pspack-flask .
    ```

2. Uruchom kontener:
    ```bash
    docker run --name pspack -d -p 1337:1337 pspack-flask
    ```

Po uruchomieniu przejdź na PS4 pod adres IP Twojego serwera/komputera na port 1337.

---

### Przykład 3: Automatyczna instalacja zależności (Linux/Mac)

Możesz skorzystać ze skryptu automatyzującego:
```bash
chmod +x setup.sh
./setup.sh
```
Po zakończeniu uruchom aplikację:
```bash
python3 app.py
```

---

## 🐳 Przykładowe pliki Docker

### Dockerfile

```dockerfile
FROM python:3.10-slim

# Ustaw katalog roboczy
WORKDIR /app

# Skopiuj plik z zależnościami i zainstaluj je
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Skopiuj całą resztę kodu do obrazu
COPY . .

# Otwórz port na potrzeby aplikacji Flask
EXPOSE 1337

# Domyślna komenda uruchamiająca aplikację
CMD ["python", "app.py"]
```

---

### .dockerignore

```
__pycache__/
*.pyc
*.pyo
*.pyd
.env
*.db
.idea/
.vscode/
.DS_Store
```

---

## ❓ Najczęstsze problemy (FAQ)

- **Nie działa exploit?**
    1. Spróbuj ponownie (czasem działa za drugim/trzecim razem).
    2. Upewnij się, że masz firmware 9.00 – jeśli nie, zmodyfikuj [ten szablon HTML](https://github.com/mc-17/pspack-flask/blob/main/templates/index.html#L70) lub znajdź exploit zgodny z Twoją wersją.
    3. Sprawdź zaporę sieciową i ustawienia sieciowe – port 1337 musi być dostępny.

- **GoldHEN się nie pobiera lub nie wysyła?**
    - Sprawdź połączenie z internetem oraz uprawnienia aplikacji.

- **Jak sprawdzić adres IP?**
    - Adres pojawi się w terminalu po uruchomieniu aplikacji (`* Running on http://...`).

---

## 👨‍💻 Autorzy i podziękowania

- **Podstawa exploita:** zespół pOOBs4  
- **Integracja Flask + automatyzacja:** [anonymousik](https://github.com/anonymousik)

---

## ⚠️ Zastrzeżenia

Korzystasz na własną odpowiedzialność!  
Modyfikacje konsol mogą prowadzić do utraty gwarancji lub zablokowania sprzętu.

---

## 📄 Licencja

Projekt udostępniony wyłącznie w celach edukacyjnych.
```