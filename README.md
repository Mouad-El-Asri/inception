# inception

Welcome to a world of Docker-powered innovation! 🐳

## Overview

This project represents an exciting exploration of system administration using Docker. It's all about pushing the boundaries of what's possible in containerization and infrastructure management.

## The Challenge

My goal was to create a virtualized environment within a personal virtual machine, composed of multiple Docker containers, each running a specific service. While it might sound complex, the challenge was to make it all work seamlessly.

## What I Achieved

🌟 **Custom Docker Images**: I took the DIY route and built my Docker images from scratch, ensuring I had full control over the environment.

🔒 **Secure Access**: I established secure access through an NGINX container, utilizing TLSv1.2 and TLSv1.3 protocols to protect the infrastructure.

📊 **Performance Matters**: I optimized my containers for performance, choosing between the penultimate stable versions of Alpine and Debian based on my needs.

🐱‍🏍 **No Infinite Loops**: I adhered to best practices by avoiding infinite loops and hacky patches to ensure the containers run smoothly.

💼 **Services Galore**: The infrastructure includes NGINX, a WordPress + php-fpm setup, MariaDB, volumes for database and website files, and a dedicated docker-network for seamless communication.

🛡️ **Security First**: I took security seriously, ensuring that no passwords were exposed in Dockerfiles and leveraging environment variables for configuration.

## What's Next

My journey doesn't end here. I'm continuously exploring new possibilities and expanding my skills in Docker, system administration, and DevOps.

## Additional Information

Detailed instructions on project requirements can be found in the main project subject.

## Get Involved

Feel free to connect with me to discuss Docker, automation, and all things tech! 🤝

## License

This project is licensed under the MIT License.

## Acknowledgments

I would like to acknowledge the creators of the 42 Network curriculum.

</br>
<div align="center">
  <p>Crafted with ❤️ by <b>Mouad El Asri</b></p>
  <p>< FUTURE: IS_LOADING /></p>
</div>
