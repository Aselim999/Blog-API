# Blog API – Backend Assessment

This is a Ruby on Rails API-only project developed as part of a backend engineering assessment.

It provides a secure blogging platform where users can register, log in, create posts, comment on posts, and all posts are automatically deleted after 24 hours using background processing with Sidekiq.

---

## Features

- **JWT Authentication** (Signup/Login)
- **Posts CRUD** (Create, Read, Update, Delete)
- **User-based Access Control** (Only post owners can modify/delete)
- **Nested Comments**
- **Post Auto-Deletion After 24 Hours** using Sidekiq + Redis
- **Sidekiq Dashboard** at `/sidekiq` for background job monitoring
- **Fully Dockerized** environment
- **Tested with Postman**

---

##  Tech Stack

- Ruby 3.2
- Rails 7.1 (API mode)
- PostgreSQL
- Redis
- Sidekiq
- Docker / Docker Compose

---

##  Getting Started


```bash
1. Clone the Repository
git clone https://github.com/Aselim999/Blog-API.git
cd Blog-API

2. Start the Application

docker-compose up --build
This will start:

Rails server on http://localhost:3000

Sidekiq worker

Redis

PostgreSQL

3. Access the Sidekiq Dashboard
Visit:
http://localhost:3000/sidekiq

Here you can monitor background jobs like post deletions.

API Endpoints
Auth
Method	Endpoint	Description
POST	/signup	Create a new user
POST	/login	Authenticate and return JWT token
GET	/me	Get current logged-in user info (requires token)

Posts
Method	Endpoint	Description
GET	/posts	List all posts
POST	/posts	Create a post (auth)
GET	/posts/:id	View a specific post
PUT	/posts/:id	Update post (owner only)
DELETE	/posts/:id	Delete post (owner only)

Comments
Method	Endpoint	Description
POST	/posts/:post_id/comments	Add a comment
PUT	/comments/:id	Update your comment
DELETE	/comments/:id	Delete your comment

Authorization
All protected routes require an Authorization header with a valid JWT token:

makefile

Authorization: Bearer <your_token>
You can get the token by logging in via /login.

Developed by
Abdalla Mustafa Selim
GitHub: @Aselim999
Backend Developer & Tech Problem-Solver

Notes
All posts are scheduled to be deleted 24 hours after creation

Sidekiq handles the background deletion job

Fully containerized via Docker for easy setup

Testing
Use Postman to test endpoints:

Set headers

Test token-protected routes

See auto-deletion effect after waiting or checking Sidekiq queue

Good Luck Reviewing!
Thanks for the opportunity!
