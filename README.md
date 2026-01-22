Screening Test – Full Stack (PHP / Laravel / React-Next.js)
Overview

This repository contains my solution for the Full Stack Screening Test covering:

Legacy PHP code analysis and refactoring

Laravel REST API development with multi-database support

Basic frontend setup (Next.js) and integration planning

Documentation and setup instructions

Due to time constraints, priority was given to backend architecture, API correctness, and code quality.

Tech Stack

Backend: PHP 8.2, Laravel 12

Databases: MySQL (main_db, analytics_db)

Authentication: Laravel Sanctum (API)

Frontend (Basic Setup): Next.js / React (not fully implemented)

Tools: Composer, Artisan, Postman
Features Implemented

RESTful API for a Multi-Tenant Booking System

Multiple database connections:

main_db → application data

analytics_db → logging & analytics

API Authentication using Laravel Sanctum

Booking CRUD endpoints:

POST /api/v1/bookings

GET /api/v1/bookings

GET /api/v1/bookings/{id}

PUT /api/v1/bookings/{id}

DELETE /api/v1/bookings/{id}

Analytics endpoint:

GET /api/v1/analytics/bookings

Booking activity logging to analytics database

Validation using Form Requests

Eloquent models with explicit database connections

Consistent JSON API responses with proper error handling

Testing

All endpoints tested using Postman

Postman collection included in repository

Part 3: Frontend (React / Next.js)
Status: 🟡 Partially Completed (Basic Setup)
Notes

A basic Next.js project structure was initialized.

Due to limited time and lack of prior hands-on experience with React/Next.js, a full dashboard implementation was not completed.

Instead of delivering rushed or low-quality frontend code, I chose to:

Focus on backend correctness

Provide a clear plan for frontend implementation

Planned Frontend Features (Documented)

Dashboard with booking statistics

Bookings list with pagination, filtering, sorting

Create/Edit booking forms using React Hook Form

API integration using Axios / Fetch

Toast notifications and loading states

Responsive UI

This frontend can be fully implemented without backend changes, as the system is API-first.

Part 4: Integration & Documentation
Status: 🟡 Documented

Backend APIs verified via Postman

Frontend-to-backend integration approach documented

Clear environment setup instructions provided


Setup Instructions
Prerequisites

PHP 8.2+

Composer 2.x

MySQL

Node.js (for frontend setup, optional)

Backend Setup
composer install
cp .env.example .env
php artisan key:generate
php artisan migrate
php artisan serve
API Testing

Import the Postman collection from /postman

Use Sanctum token for authenticated endpoints

Notes to Reviewer

This submission prioritizes clean backend architecture, API design, and real-world decision making.
Given additional time, the frontend would be completed using Next.js without requiring any backend changes.
