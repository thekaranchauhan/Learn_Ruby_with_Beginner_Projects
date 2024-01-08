# Weather App in Ruby

Welcome to the Weather App in Ruby! This simple console application allows you to retrieve the current temperature and a 7-day weather forecast for a given city using the OpenWeatherMap API.

## Getting Started

### Prerequisites

Make sure you have Ruby installed on your system. You can download it from [https://www.ruby-lang.org/en/documentation/installation/](https://www.ruby-lang.org/en/documentation/installation/).

### Installation

1. Clone the repository to your local machine:

   ```bash
   git clone https://github.com/thekaranchauhan/Learn_Ruby_with_Beginner_Projects.git

2. Change into the project directory:

   ```bash
   cd Weather

3. Install the required gem using Bundler:

   ```bash
   bundle install

4. Obtain an API key from [OpenWeatherMap](https://openweathermap.org/) and update application.rb with your API key.

# File Structure

The Weather App in Ruby follows a simple file structure to organize its components. Below is an overview of the key files:

1. **main.rb:** Entry point of the application.
2. **manager.rb:** Manages user input and interacts with the Weather class.
3. **application.rb**: Holds the configuration, including the OpenWeatherMap API key.
4. **weather.rb:** Handles the logic for fetching weather data.
