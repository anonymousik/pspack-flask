# 🎮 pspack-flask

**pspack-flask** to narzędzie typu exploit dla PS4 (firmware 9.00), zintegrowane z automatycznym pobieraniem i wysyłaniem GoldHEN. Całość działa jako aplikacja webowa oparta na Flask.

---

## ⭐ Najważniejsze funkcje

- Automatyczny exploit pOOBs4 dla PS4 v9.00
- Automatyczne pobieranie i wysyłka GoldHEN
- Szybka instalacja lokalna oraz wsparcie dla Dockera
- Nasłuchiwanie na porcie 1337

---

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

---

## 🚀 Uruchomienie exploita

1. **Start aplikacji Flask**
    ```bash
    python3 app.py
    ```
    > W razie potrzeby uruchom jako administrator/root (port 1337).

2. **Obserwuj konsolę** – pojawi się adres IP, np.  
   `* Running on http://192.168.1.200:1337/`

3. **Na PS4:** Otwórz przeglądarkę i wpisz wyświetlony adres z portem 1337.

4. **Dalsza obsługa:** Wszystko działa jak w oryginalnym psOOBs4. Po udanym exploicie GoldHEN zostanie wysłany automatycznie.

---

## 🐳 Uruchamianie w Dockerze

1. **Budowanie obrazu**
    ```bash
    docker build -t pspack-flask .
    ```
2. **Start kontenera**
    ```bash
    docker run --name pspack -d -p 1337:1337 pspack-flask
    ```

---

## ❓ Najczęstsze problemy

- **Nie działa exploit?**
    1. Spróbuj ponownie.
    2. Upewnij się, że masz firmware 9.00 – jeśli nie, zmodyfikuj [ten szablon HTML](https://github.com/mc-17/pspack-flask/blob/main/templates/index.html#L70) lub znajdź exploit zgodny z Twoją wersją.

---

## 👨‍💻 Autorzy i podziękowania

- Podstawa exploita: zespół pOOBs4  
- Integracja Flask + automatyzacja: [anonymousik](https://github.com/anonymousik)

---

## ⚠️ Zastrzeżenia

Korzystasz na własną odpowiedzialność!  
Modyfikacje konsol mogą prowadzić do utraty gwarjaProjekt udostępniony wyłącznie w celach edukacyjnych.