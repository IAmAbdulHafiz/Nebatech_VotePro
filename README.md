# Nebatech VotePro

**Nebatech VotePro** is a secure, responsive, and efficient web-based eVoting system built to facilitate transparent and seamless voting processes. This system allows an administrator to manage candidates, voters, and oversee real-time voting results, while ensuring a smooth and intuitive voting experience for users.

## Table of Contents
- [Features](#features)
- [Technologies Used](#technologies-used)
- [Setup and Installation](#setup-and-installation)
- [Usage](#usage)
- [Challenges & Areas for Improvement](#challenges--areas-for-improvement)
- [Future Enhancements](#future-enhancements)
- [Contributing](#contributing)
- [License](#license)
- [Author](#author)

## Features

### Admin Panel
- **Dashboard**: Overview of the election, including vote tally and graphical statistics.
- **Add Voters**: Admins can create new voters by adding names, photos, and generating unique IDs and passwords.
- **Create Positions and Candidates**: Manage the candidates for each voting position.
- **View and Manage Votes**: See all votes cast, with details of who voted and for whom.
- **Reset Votes**: Ability to reset all votes to start a new election.
- **Statistics**: Visual representation of voting counts with charts.
- **Admin Profile Management**: Update admin profile information.
- **System Settings**: Manage and configure system settings.

### Voters Panel
- **Voter Login**: Secure login with unique ID and password.
- **Cast Vote**: Voters can view candidates and cast their vote.
- **Multi-Voting System**: Voters can vote for multiple candidates if allowed.
- **View Ballot**: Voters can review their voting choices before submission.
- **Logout**: Secure logout functionality.

### Other Features
- **Real-time Voting Tally**: Dynamic vote count updates with visual charts.
- **Search Functionality**: Easily find voters, candidates, and vote data.
- **Responsive Design**: Mobile-friendly and optimized for various screen sizes.

## Technologies Used
- **Frontend**:
  - HTML
  - CSS (with Bootstrap for responsive design)
  - JavaScript

- **Backend**:
  - PHP: Server-side scripting for handling logic, authentication, and vote processing.

- **Database**:
  - MySQL: Used for storing voters, candidates, votes, and election-related data.

## Setup and Installation

### Prerequisites
Ensure you have the following installed:
- **PHP** (version 7.x or later)
- **MySQL** (or any equivalent database server)
- **Apache** or **Nginx** web server
- **Composer** (optional, but recommended for managing PHP dependencies)

### Steps to Install

1. **Clone the repository:**
   ```bash
   git clone https://github.com/iAmAbdulHafiz/nebatech-votepro.git
   cd nebatech-votepro
   ```

2. **Set up the database:**
   - Create a new MySQL database.
   - Import the provided SQL file located in the `database/` folder:
     ```bash
     mysql -u your_username -p your_database_name < database/nebatech_votepro.sql
     ```

3. **Update the database configuration:**
   - Open the `config.php` file and update the following values:
     ```php
     define('DB_HOST', 'localhost');
     define('DB_USER', 'your_username');
     define('DB_PASS', 'your_password');
     define('DB_NAME', 'your_database_name');
     ```

4. **Start your local development server:**
   ```bash
   php -S localhost:8000
   ```

5. **Access the application:**
   Open your browser and navigate to `http://localhost:8000`.

## Usage

### Admin Access
- Navigate to `http://localhost:8000/admin`
- Use the default credentials (or the ones you set during setup) to log in:
  - **Username:** `admin`
  - **Password:** `password`

### Voter Access
- Admins will create voters and assign them unique login credentials.
- Voters can log in via the voter panel to cast their votes.

## Challenges & Areas for Improvement

### Challenges
- **Vote Integrity:** Ensuring the votes cannot be tampered with was a key challenge in building the backend logic.
- **Real-time Updates:** Implementing a real-time tally system without overloading the server.

### Areas for Improvement
- Add two-factor authentication for increased voter security.
- Improve scalability for large-scale elections.
  
## Future Enhancements
- **Encryption of Vote Data:** Enhance vote security by encrypting the votes stored in the database.
- **Multi-language Support:** Extend the system to support multiple languages for broader usage.
- **Enhanced User Interface:** Improve the frontend design for a more modern user experience.

## Contributing

Contributions are welcome! If you'd like to contribute to this project, please fork the repository and submit a pull request. For major changes, please open an issue first to discuss what you would like to change.

1. Fork the project.
2. Create your feature branch (`git checkout -b feature/AmazingFeature`).
3. Commit your changes (`git commit -m 'Add some amazing feature'`).
4. Push to the branch (`git push origin feature/AmazingFeature`).
5. Open a pull request.

## License

This project is licensed under the MIT License. See the `LICENSE` file for more information.

## Author
**Abdul-Hafiz Yussif**

- GitHub: https://github.com/IAmAbdulHafiz
- LinkedIn: https://www.linkedin.com/in/abdul-hafiz-yussif-30215b220/
- Email: abdulhafiz@nebatech.com

