# Stage 1
FROM hugomods/hugo:latest AS build

# Install the Hugo go app.
# RUN apt update

# RUN apt install hugo -y

# RUN apt install golang -y

# RUN go version

WORKDIR /opt/HugoApp

# Copy Hugo config into the container Workdir.
COPY . .

# Run Hugo in the Workdir to generate HTML.
RUN npm install
RUN hugo mod get
RUN go get github.com/schnerring/hugo-theme-gruvbox@0eb434ccff160fcc3ca2ce103db2f1c93362cf77
RUN hugo 

# Stage 2
FROM nginx:latest

# Set workdir to the NGINX default dir.
#WORKDIR /usr/share/nginx/html

# Copy HTML from previous build into the Workdir.
COPY --from=build /opt/HugoApp/public /usr/share/nginx/html

# Expose port 80
EXPOSE 80/tcp
