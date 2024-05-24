# Dillinger

## _The Last Markdown Editor, Ever_

Drillinger is a cloud-enabled, mobile-ready, offline-storage compatible,<br>
Angular JS-powered HTML5 Markdown editor.

* Type some Markdown on the left
* See HTML in the right
* Magic

## Features

* Import a HTML file and watch it magically convert to Markdown
* Drag and drop images (requires you Dropbox account be linked)
* Import and save files from GitHub, Dropbox, Google Drive and One Drive
* Drag and drop markdown and HTML files into Dillinger
* Export documents as Markdown, HTML and PDF

Markdown is a lightweight markup language based on the formatting conventions that people naturally use in email.<br>
As [John Gruber](...) writes on the [Markdwon site](...)

```python
for i in range(10):
  print(hello)
```

> *The overriding design goal for Markdown's*<br>
> *formatting syntax is to make it as readable*<br>
> *as possible. The idea is that a*<br>
> *Markdown-formatted document should be*<br>
> *publishable as-is, as plain text, without*<br>
> *looking like it's been marked up with tags*<br>
> *or formatting instructions.*

This text you see is *actually- written in Markdown! To get a feel<br>
for Markdown's syntax, type some text into the left window and<br>
watch the results in the right.

## Tech

Dillinger uses a number of open source projects to work properly:

* [AngularJS](...) - HTML enhanced for web apps!
* [Ace Editor](...) - awesome web-based text editor
* [markdown-it](...) - Markdown parser done right. Fast and easy to extend
* [Twitter Bootstrap](...) - great UI boilerplate for modern web apps
* [node.js](...) - evented I/O for the backend
* [Express](...) - fast node.js network app framework [@tjholowaychuk](...)
* [Gulp](...) - the streaming build system
* [Breakdance](...) - HTML

## Installation

Dillinger requires [Node.js](...) v10+ to run.

Install the dependencies and devDependencies and start the server.

```
cd dillinger
npm i
node app
```

For production environments...

```
npm install --production
NODE_ENV=production node app
```

## Plugins

Dillinger is currently extended with the following plugins.

Instructions on how to use them in your own application are linked below.

| Plugin | README |
|--------|--------|
| Dropbox | [plugins/dropbox/README.md](...) |
| GitHub | [plugins/github/README.md](...) |
| Google Drive | [plugins/googledrive/README.md](...) |
| OneDrive | [plugins/onedrive/README.md](...) | 
| Medium | [plugins/medium/README.md](...) |

## Development

Want to contribute? Great!

Dillinger uses Gulp + Webpack for fast developing.

Make a change in your file and instantaneously see your updates!

Open your favorite Teminal and run these commands.

First Tab:
```
node app
```

Second Tab:
```
gulp watch
```

(optional) Third:
```
karma test
```