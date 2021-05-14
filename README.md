## Welcome!

This repository contains a basic NodeJS server useful for demonstration purposes.
The served webpage will  connect to GitHub's [Octocat API endpoint](https://api.github.com/octocat) and return the Zen quote of the day.

Relevant packages used in this setup:

- pug (templates)
- fetch
- mocha / nyc / codecov (unit tests with coverage report)

### Demo (sucess)

![out](https://user-images.githubusercontent.com/1078545/57860397-bc7ff380-77ec-11e9-80f8-39e02ef3c035.gif)


### Demo (failure)

![out](https://user-images.githubusercontent.com/1078545/57860396-bc7ff380-77ec-11e9-8f55-83b879e667d2.gif)


There are some built-in unit tests to ensure that everything can be verified.

### Instructions

Please fork this repository and ensure you have a local working copy. You will need a working NodeJS environment. Get the latest stable version from https://nodejs.org/en/download/ or via your OS package manager (e.g. `brew` on Mac or `chocolatey` on Windows). 

CI:

```
npm install 
npm run test
npm run lint [optional]
npm run report-coverage

```

Run server (defaults to localhost:3000):

```
npm start
```


