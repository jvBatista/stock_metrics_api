# Use an official Ruby runtime as the base image
FROM ruby:3.0.2

# Set the working directory in the container
WORKDIR /app

# Copy the Gemfile and Gemfile.lock into the container
COPY Gemfile Gemfile.lock /app/

# Install dependencies
RUN bundle install

# Copy the rest of the application code into the container
COPY . /app/

# Expose port 3000 to the outside world
EXPOSE 3000

# Start the Rails server
CMD ["rails", "s", "-p", "3000", "-b", "0.0.0.0"]
