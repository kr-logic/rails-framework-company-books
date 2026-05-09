<details>
<summary>Open spoiler for the university task in Hungarian </summary>
Webprogramozás – Gyakorlati vizsga (A variáns)

================================================

Összpontszám: 60 pont



Készítsen egy Rails alkalmazást az alábbi specifikációk alapján!



1. Projekt és Adatmodell (15 pont)

   - Hozzon létre egy új Rails projektet company_books néven!

   - Hozzon létre egy Book modellt az alábbi mezőkkel:

     • title (string) – A könyv címe

     • author (string) – Szerző neve

     • isbn (string) – ISBN-azonosító

     • pages (integer) – Oldalszám

Megoldás: 

rails cli:    

        rails new company_books
        cd company_books

        rails generate scaffold Book title:string author:string isbn:string pages:integer
        rails db:migrate

config/routes.rb:

    Rails.application.routes.draw do
        resources :books
        root "books#index"
    end

2. Funkcionalitás és CRUD (20 pont, ebből 5 pont extra)

   - Az alkalmazás listázza ki az összes könyvet az indítóoldalon.

   - Lehessen új könyvet rögzíteni egy űrlapon keresztül.

   - Biztosítsa a könyvek adatainak törlését.

   - Extra (5 pont): Valósítsa meg az adatok szerkesztésének lehetőségét is!

Megoldás: app/models/book.rb fájlban

3. Üzleti logika és Validáció (15 pont)

   - A title, author és isbn mezők kitöltése kötelező.

   - A pages mező csak 1 és 5 000 közötti szám lehet (a határértékeket is beleértve).

   - Az ISBN-azonosító (isbn) legyen egyedi az adatbázisban.

Megoldás: app/models/book.rb fájlban

4. Hitelesítés és Védelem (10 pont)

   - Telepítse a Devise gem-et!

   - Csak bejelentkezett felhasználók rögzíthessenek vagy törölhessenek könyvet.

   - A lista oldal legyen bárki számára megtekinthető (vendégeknek is).

Megoldás:

Gemfile:

        gem 'devise'

rails cli:

        bundle install
        rails generate devise:install
        rails generate devise User
        rails db:migrate

Authorizáció: app/controllers/books_controller.rb fájlban

</details>

## Ruby on Rails Framework project: Book database website

<img src="https://github.com/user-attachments/assets/fa3d39bc-ad36-4fc3-a777-7ccc5e6a37d8" />



I made this repository for a university course in order to practice making simple and quick websites for prototypes to spare time compared to making in PHP and HTML from scratch. 

This project is a book database CRUD system built with Ruby on Rails, featuring Devise authentication and custom data validations so far.
