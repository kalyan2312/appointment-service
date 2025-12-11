FROM public.ecr.aws/lambda/nodejs:18

# Copy package files
COPY package*.json ./
RUN npm install

# Copy microservice source
COPY . .

# Set the Lambda handler (file.function)
CMD ["main.handler"]
