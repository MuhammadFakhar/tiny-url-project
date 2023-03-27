# Tiny URL App

The Tiny URL App is a simple web application built in Ruby 3.1 and Rails 6.1 that allows users to convert long URLs into shorter, more manageable ones. When a user submits a URL to be shortened, the app generates a unique short code for the URL, which can then be used to redirect to the original URL.
Getting Started

To get started with the Tiny URL App, follow these steps:

    Clone the repository: git clone https://github.com/MuhammadFakhar/tiny-url-app.git
    Navigate to the app directory: cd tiny-url-app
    Install dependencies: bundle install
    Setup the database: rails db:migrate
    Start the server: rails server

The app should now be running on http://localhost:3000.
# Usage

To use the Tiny URL App, follow these steps:

    Navigate to the home page http://localhost:3000.
    Enter a long URL that you want to shorten in the input field.
    The app will generate a unique short code for the URL.
    Copy the shortened URL and use it as needed.
    To redirect to the original URL, enter the shortened code in the address bar of your browser.

# Architecture

The Tiny URL App follows the standard Rails MVC architecture and uses the following components:

    Model: The app has a single model, Url, which represents the original long URL and its corresponding shortened code. The model has two attributes: original_url and short_code.

    Controller: The app has a single controller, UrlsController, which handles the creation of new shortened URLs and redirects to the original URL when a user enters a shortened code.

    Routes: The app has two routes: which maps to the new action of the UrlsController, and /:short_code, which maps to the show action of the UrlsController.

    Service: The app has a UrlShortener service object that generates a unique short code for each URL. This service object is used in the UrlsController to create new shortened URLs.

# Contributing

If you'd like to contribute to the Tiny URL App, feel free to submit a pull request. We welcome contributions of all types, including bug fixes, new features, and documentation improvements.
License

The Tiny URL App is released under the MIT License.
