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

## License

The MIT License (MIT)

Copyright (c) David Lyons

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
