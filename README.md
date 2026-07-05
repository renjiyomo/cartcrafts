# CartCraft

CartCraft is a PHP-based e-commerce application platform. It enables seamless transactions between artists, customers, and administrators. The application allows users to purchase and bid on products, artists to manage and sell their creations, and administrators to oversee the entire platform ecosystem.

## Features

- **Multi-Role System**: Distinct portals for Customers, Artists, and Administrators.
- **Product Management**: Artists can add, edit, and track their products.
- **Bidding System**: Customers can place bids on specific products.
- **Commission Orders**: Customers can request custom commissions from artists.
- **Cart & Checkout**: A streamlined process for adding items to a cart and checking out safely.
- **Reports & Analytics**: Sales reports and statistics for both Artists and Admins.

## Prerequisites

To run this project locally, ensure you have the following installed:
- [XAMPP](https://www.apachefriends.org/index.html) (or any other Apache/MySQL server stack like WAMP or MAMP)
- PHP (Version 7.4 or higher recommended)
- MySQL/MariaDB

## Installation & Setup

1. **Clone the repository:**
   ```bash
   git clone https://github.com/yourusername/cartcraft.git
   cd cartcraft
   ```

2. **Move the project to your local server:**
   Place the cloned directory inside your web server's root folder:
   - For XAMPP: `C:\xampp\htdocs\cartcraft`
   - For WAMP: `C:\wamp\www\cartcraft`

3. **Database Configuration:**
   - Open phpMyAdmin (usually `http://localhost/phpmyadmin`).
   - Create a new database named `cart_craft`.
   - Import your database schema (`.sql` file) into this newly created database. *(Note: For security reasons, the original database dump might not be included in this repository. Use the provided schema or contact the administrator).*
   
   - The application requires database connection credentials in several places. Copy the provided template to configure your connection:
     1. Copy `cartcraft_db.example.php` and rename it to `cartcraft_db.php`.
     2. Update the credentials in `cartcraft_db.php` according to your local MySQL setup (username, password, database name).
     3. Ensure this `cartcraft_db.php` file is placed in the following directories:
        - `Register/cartcraft_db.php`
        - `Register/Login/cartcraft_db.php`
        - `Register/Login/Page/cartcraft_db.php`

4. **Uploads Directory Setup:**
   Some directories are ignored by git to keep user data private. Ensure the following directories exist in your local setup, or create them if missing:
   - `Register/uploads/`
   - `Register/Login/Page/GcashProof/`
   - `Register/Login/Page/GcashQR/`

5. **Run the Application:**
   Start Apache and MySQL services from the XAMPP Control Panel.
   Open your web browser and navigate to:
   ```
   http://localhost/cartcraft/
   ```

## Security and Publishing

This project is configured to safely act as a public repository. The `.gitignore` file is tailored to exclude:
- Database files and sensitive SQL dumps (`*.sql`).
- Sensitive connection credentials (`cartcraft_db.php`).
- User-generated uploads (proofs of payment, ID verifications, products images).
- Local IDE and OS-generated files.

> **Warning:** Never commit files containing passwords, API keys, or real user data to the public repository. Always use template files (like `.example.php`) to demonstrate the required structure without exposing real data.

## Contributing

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## License

Distributed under the MIT License. See `LICENSE` for more information.
