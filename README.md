# Yorkshire Rams website

[![Netlify](https://www.netlify.com/img/global/badges/netlify-color-bg.svg)](https://www.netlify.com)

[![CircleCI](https://circleci.com/gh/yorkshirerams/website.svg?style=svg)](https://circleci.com/gh/yorkshirerams/website) [![Codacy Badge](https://api.codacy.com/project/badge/Grade/01a180c5c3e34124aa90c4267c1825cd)](https://www.codacy.com/app/MarkGaze/website?utm_source=github.com&utm_medium=referral&utm_content=yorkshirerams/website&utm_campaign=Badge_Grade)

A proof-of-concept for a next-gen website for the Rams

## Demo

A demo of the the site can be found [here](https://yorkshirerams.netlify.com/)

## Development

### Prerequisites

You will need to have `git`, `nodejs`, `gatsby-cli` and `make` installed

### Building

Clone the repo to your local machine and run the following command:

```shell
make install
```

### Run the development server

Running the following command will launch a development version of the website that will auto-refresh when changes are made

```shell
make run
```

### Run checks

When making changes, it's worth running the `ESLint` and `Prettier` checks often using the following command

```shell
make vet
```

This will make sure that the build will not fail on `CircleCI` when committing

You can also use the following command to fix all `Prettier` issues:

```shell
make vet-fix
```
