
# Tourism Management System (TMS)

A simple and user-friendly **Tourism Management System (TMS)** developed to help users browse, select, and book tourism packages online. The system also provides an admin panel to manage packages, users, and bookings efficiently.



## 🚀 Features

- User Registration and Login  
- View available tour packages  
- Book tourism packages  
- Manage user profile  
- Admin panel for package and booking management  
- Secure session handling  
- Responsive UI  



## 🛠️ Technologies Used

- **Frontend:** HTML, CSS, JavaScript  
- **Backend:** PHP  
- **Database:** MySQL  
- **Server:** XAMPP / WAMP / LAMP  



## 📁 Project Structure



TMS/

│── assets/ # Images, CSS, JS files

│── build/ # Compiled files

│── classes/ # PHP classes

│── database/ # SQL database file

│── dist/ # Distribution files

│── inc/ # Reusable includes

│── libs/ # External libraries

│── plugins/ # Plugins

│── report/ # Reports

│── uploads/ # User uploads

│── index.php # Home page

│── login.php # Login page

│── logout.php # Logout

│── my_account.php # User account

│── book_form.php # Booking form

│── view_package.php # View packages

└── config.php # Database configuration



## ⚙️ Installation Steps

1. Clone the repository:



git clone [https://github.com/raulniraj/TMS.git](https://github.com/raulniraj/TMS.git)



2. Start XAMPP and run **Apache** and **MySQL**.

3. Open **phpMyAdmin**, create a database named `tourism_db`.

4. Import the SQL file from the `database/` folder.

5. Open `config.php` and update database credentials:

php
define('DB_HOST', 'localhost');
define('DB_USER', 'root');
define('DB_PASS', '');
define('DB_NAME', 'tourism_db');


6. Open browser and run:


http://localhost/TMS/




## 📌 How It Works

* Users can browse available packages
* Users must log in to book a package
* Admin can add, update, or delete packages
* All data is stored securely in MySQL



## 👨‍💻 Developed By

**Niraj Raul**
GitHub: [https://github.com/raulniraj](https://github.com/raulniraj)



## 📜 License

This project is open-source and free to use for learning and development.

---

