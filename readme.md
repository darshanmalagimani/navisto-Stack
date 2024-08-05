# Navisto Stack - Basic : Portainer & File Browser

This setup script simplifies the installation of Docker on any Linux system and deploys two essential tools: FileBrowser and Portainer. 
By running this script, you'll have a fully functional Docker environment with FileBrowser and Portainer containerized and ready to use.

## Features

- **Automated Docker Installation:** Ensures Docker is installed and up-to-date on your Linux system.
- **FileBrowser Deployment:** Provides a web interface to manage files on your system.
- **Portainer Deployment:** Offers a comprehensive interface to manage Docker containers, images, volumes, and networks.

## Prerequisites

- A Linux-based operating system
- `wget` installed on your system (most distributions have it pre-installed)

## Installation

1. Open your terminal.
2. Run the following command to download and execute the setup script:

   ```sh
   wget -qO- https://raw.githubusercontent.com/darshanmalagimani/navisto-Stack/main/setup.sh | bash
