FROM nginx:stable-alpine3.17

## Step 1:
# Create a working directory
WORKDIR /usr/share/nginx/html

## Step 2:
# Copy source code to working directory
COPY build /usr/share/nginx/html
ADD . .
## Step 4:
# Expose port 80
EXPOSE 80