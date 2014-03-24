# Canvas Section Search

A simple Sinatra app that allows quick searching by _section_ for the [Canvas LMS](http://instructure.com). Currently Canvas only allows search by course, which makes it impossible to find a section that has been cross-listed into a different course without polling the API.

## How It Works

While the app can be used in a browser by putting the section SIS id as a URL parameter, it is really designed to be run as a custom Chrome search, custom [Alfred](http://www.alfredapp.com/) search, or similar. In any of these events, the format is
````
http://<YOUR-APP-URL>/<SIS-SECTION-ID>
````
which will redirect you to the _course_ that section is a part of if it exists, or display "Nope" if not found.

## Installation

To keep API keys and Canvas URL secret the variables are set at the environment level.
- `API_KEY` must be set to the oauth token of a user with sufficient powers to perform the search.
- `CANVAS` must be set you your Canvas URL, example: `https://canvas.instructure.com`
