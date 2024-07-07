"# BookLibrary" 

This repository contains the Book Library project, which includes a Symfony backend and a React frontend.

## Project Structure

- `backend/`: Contains the Symfony backend code.
- `frontend/`: Contains the React frontend code.

## Prerequisites

- [PHP 7.2.5 or higher](https://www.php.net/)
- [Composer](https://getcomposer.org/)
- [Node.js and npm](https://nodejs.org/)
- [Git](https://git-scm.com/)
- WAMP server

**Set up the environment variables**:

    Edit `.env.local` and set the database credentials:

    ```
    DATABASE_URL="mysql://root:@127.0.0.1:3306/book_library?serverVersion=8.0"

    ```

**Create the database and run migrations**:

    - php bin/console doctrine:database:create
    - php bin/console doctrine:migrations:migrate

**Load sample data**:

    - php bin/console doctrine:fixtures:load

**Run the Symfony server**:

    - symfony server:start


### Frontend (React)

**Start the React development server**:

    - npm start


## Access the Application

- The Symfony backend should be running at `http://localhost:8000`
- The React frontend should be running at `http://localhost:3000`


## SQL Export File

- `book_library.sql`: Contains the DB schema and sample data.
