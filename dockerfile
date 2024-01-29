FROM ubuntu:latest

# Update package lists
RUN apt-get update -y

# Install desired networking utilities
RUN apt-get install -y \
    iputils-ping \
    net-tools \
    dnsutils \
    tcpdump \
    curl \
    wget \
    iproute2

# Example: Install additional tools based on your needs
# RUN apt-get install -y nmap  # For network scanning

# Clean up cache (optional)
RUN apt-get clean -y

# Set working directory (optional)
WORKDIR /app

# Expose specific ports (optional)
EXPOSE 80 443

# Start a command (optional)
CMD ["bash"]

# Or specify your own process
# CMD ["your-app"]
