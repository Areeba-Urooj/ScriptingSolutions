# User Creation Script

A Bash script for automating user account creation on Linux systems with automatic password generation and forced password change on first login.

## Features

- Creates new user accounts with specified username and comment
- Automatically generates secure passwords
- Forces password change on first login
- Requires root privileges for execution
- Performs error checking at each step
- Displays created user information including hostname

## Prerequisites

- Root access or sudo privileges
- Linux operating system
- Bash shell

## Installation

1. Clone this repository or download the script
2. Make the script executable:
```bash
chmod +x create_user.sh
```

## Usage

Run the script with root privileges or sudo:

```bash
sudo ./create_user.sh USERNAME "USER COMMENT"
```

Example:
```bash
sudo ./create_user.sh Urooj "Test comment"
```

### Parameters:
- `USERNAME`: The login name for the new user
- `"USER COMMENT"`: A description or comment for the user account (can contain spaces)

## Output

When successfully executed, the script will display:

```
__________________________________

Username: Urooj
Password: 1677517320123456789
Ubuntu
```

### Example Screenshot:
![](/archive_project/usr1.PNG)
![](/archive_project/usr2.PNG)
![](/archive_project/usr3.PNG)
![](/archive_project/usr4.PNG)
![](/archive_project/usr5.PNG)


*Screenshot shows the script execution and output display with username, generated password, and hostname.*

## Error Handling

The script includes error checking for:
- Root privilege verification
- Correct number of input parameters
- User creation success
- Password setting success

Error messages will be displayed if:
- Script is run without root privileges
- Required parameters are missing
- User account creation fails
- Password setting fails

## Security Features

- Automatically generated passwords using timestamp
- Forced password change on first login
- Root privilege requirement
- No hardcoded passwords

## Contributing

1. Fork the repository
2. Create your feature branch
3. Commit your changes
4. Push to the branch
5. Create a new Pull Request

## License

This project is licensed under the MIT License - see the LICENSE file for details.
