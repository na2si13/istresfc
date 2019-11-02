##installation
```
git clone http://gitlab.dauba.net/Joseph/istresfc.git istresFC
cd istresFC
cp .env.example .env
nano .env
composer install
php artisan key:generate
npm install
php artisan voyager:install
```
Pensez à importez la base de donnée presente dans le repertoire sql !