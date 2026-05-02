Full Stack Screening Test(PHP / Laravel / React-Next.js)
Project : RESTful API for a Multi-Tenant Booking System

Overview:
This is a Laravel REST API development with multi-database support, in this the priority was given to backend architecture, API correctness, and code quality. Basic frontend setup (Next.js) and integration planning.

Tech Stack:
Backend: PHP 8.2, Laravel 12

Features Implemented:
Databases: MySQL (main_db, analytics_db), Multiple database connections:
1. main_db → application data.
2. analytics_db → logging & analytics.

Authentication: Laravel Sanctum (API).

Frontend (Basic Setup): Next.js / React (not fully implemented).

Tools: Composer, Artisan, Postman.

Booking CRUD endpoints:

POST /api/v1/bookings
GET /api/v1/bookings
GET /api/v1/bookings/{id}
PUT /api/v1/bookings/{id}
DELETE /api/v1/bookings/{id}

Analytics endpoint:

GET /api/v1/analytics/bookings

1.Booking activity logging to analytics database
2.Validation using Form Requests
3.Eloquent models with explicit database connections
4.Consistent JSON API responses with proper error handling

Testing:
All endpoints tested using Postman. Postman collection included in repository

Part 3: Frontend (React / Next.js)

Notes:
A basic Next.js project structure was initialized, full dashboard implementation was not completed.

Instead of delivering rushed or low-quality frontend code, I choose to:
1. Focus on backend correctness.
2. Provide a clear plan for frontend implementation
3. Planned Frontend Features (Documented)
4. Dashboard with booking statistics
5. Bookings list with pagination, filtering, sorting
6. Create/Edit booking forms using React Hook Form
7. API integration using Axios / Fetch
8. Toast notifications and loading states

Responsive UI.

Backend APIs verified via Postman.

Backend Setup: 
composer install
cp .env.example .env
php artisan key:generate
php artisan migrate
php artisan serve
API Testing

Import the Postman collection from /postman.

Use Sanctum token for authenticated endpoints.

Notes to Reviewer:

This project prioritizes clean backend architecture, API design, and real-world decision making.
