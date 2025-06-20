# Laravel Career Portal

**Laravel Career Portal** is a complete job management system built with Laravel, where users and admins have separate dashboards and functionalities. The platform allows job posting, job searching, and application tracking with a clean and modern UI.

---

## 🚀 Features Overview

### 👤 User Functionalities

- 🔐 **Login / Register**
- 🏠 **User Dashboard**
- 📝 **Post New Jobs**
- 📋 **My Jobs** – manage user's own posted jobs
- 📥 **Jobs Applied** – track which jobs the user has applied to
- 💾 **Saved Jobs** – save interesting jobs for later
- ⏳ **Sort Jobs** – by Latest or Oldest
- 🔍 **Advanced Job Search** by:
  - **Keyword**
  - **Location**
  - **Category**
  - **Job Type**
  - **Experience Level**

---

### 🛠️ Admin Functionalities

- 🔐 **Admin Login System**
- 📊 **Admin Dashboard**
- 👥 **Manage All Users**
- 💼 **Manage All Jobs**
- 📩 **View Job Applications**
- Full control over user data, job posts, and overall platform management

---

### 🌐 Front Page Features

- ⭐ **Popular Job Categories**
- 🌟 **Featured Jobs**
- 🆕 **Latest Job Listings**

---

## 📦 Tech Stack

- **Laravel** – Backend framework  
- **Blade** – Templating engine  
- **Bootstrap** – Frontend UI  
- **MySQL** – Database  
- **PHP** – Core Language

---

## 🛠️ Getting Started

1. **Clone the Repository**

   ```bash
   git clone https://github.com/your-username/laravel-career-portal.git
   ```

2. **Navigate to the project folder**

   ```bash
   cd laravel-career-portal
   ```

3. **Install Dependencies**

   ```bash
   composer install
   ```

4. **Set up Environment**

   ```bash
   cp .env.example .env
   php artisan key:generate
   ```

5. **Configure `.env` for database & mail settings**

6. **Run Migrations**

   ```bash
   php artisan migrate
   ```

7. **Start Development Server**

   ```bash
   php artisan serve
   ```

8. Visit: [http://localhost:8000](http://localhost:8000)

---

## 🔐 Default Credentials (for testing)

**Admin Login**  
- Email: `admin@gmail.com`  
- Password: `password`

**User Login**  
- Email: `user@gmail.com`  
- Password: `password`

---

## 🤝 Contribution

Pull requests are welcome. For major changes, please open an issue first to discuss what you’d like to contribute.

---

## 📄 License

This project is open-sourced under the [MIT license](https://opensource.org/licenses/MIT).
