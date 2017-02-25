# ceri-boilerplate

Starting point for your new, shiny component.

## Usage
```sh
# clone the boilerplate
git clone https://github.com/cerijs/ceri-boilerplate.git ./ceri-component
```
## Structure
```sh
dev/ # will be served via dev server
# first basic view to see your component in action
# also holds the unit tests for this specific scenario
dev/basic
src/ # where you should put your sources
src/component # the component

# all created by npm run build
bundle.js # your minified component bundled with ceri
component.js # your component compiled to ES5 (should be your main file)
bundle.ES6.js # entry point for ES6 import if your package has multiple components (in this case, this should be the main file)
```

## Commands
```sh
npm run dev # start dev server, serving dev/ folder by default
npm run build # build ES5, and bundled version of your component 
npm run watch # start karma in watch mode
npm run test # single karma test run
npm run ghpages # upload a static version of your dev server view to github
npm version major|minor|patch # test, build, git push, bump version and publish
```


## License
Copyright (c) 2017 Paul Pflugradt
Licensed under the MIT license.
