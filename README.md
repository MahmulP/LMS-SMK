
# Laravel LMS PTIK

Learning Management System untuk tugas UAS LMS SMK yang dibuat menggunakan framework Laravel


## Run Locally

Clone the project

```bash
  git clone https://github.com/MahmulP/LMS-SMK.git
```

Go to the project directory

```bash
  cd LMS-SMK
```

Install dependencies

```bash
  composer install
```

Copy env.example

```bash
  cp .env.example .env
```

Generate key

```bash
  php artisan key:generate
```

Migrate into database

```bash
  php artisan serve --seed
```

Start the server

```bash
  php artisan serve
```


## Email and Password Default Admin


| Name | Email     | Password                |
| :-------- | :------- | :------------------------- |
| `admin` | `admin@gmail.com` | mahmul123 |


## Tech Stack

**Client:** Boostrap, Ajax.

**Server:** PHP, Laravel, Mysql


## Feedback

If you have any feedback, please reach out to us at mahmulpratama16@gmail.com

