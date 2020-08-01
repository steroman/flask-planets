<div align="center">

# Planets and Webhooks API
 ![NASA's logo](./docs/assets/nasa-logo.png)

</div>
## Table of Contents

- [About Planets and Webhooks API](#📄-about)
- [Getting Started](#🚀-getting-started)
- [Using Planets and Webhooks](#📟-using-planets-and-webhooks)
- [Contributing](#🤝-contributing)
- [License](#📝-license)

## 📄 About Planets and Webhooks API

Planets and Webhooks is a REST API based on [OpenAPI](https://www.openapis.org/ "Link to the OpenAPI website"). It provides data about planets from [NASA data](https://solarsystem.nasa.gov/moons/in-depth/ "Link to NASA") at `/planets` and `/planets/{id}`. It also logs the incoming data it receives to a `/webhook` endpoint.

Its OpenAPI Specification (OAS) follows OpenAPI 3.0.0.

## 📝 Render the API with ReDoc

ReDoc is a JavaScript lightweight OpenAPI documentation engine that allows you to render your OpenAPI Specification (OAS) online or locally.

### Requirements

- A well formed OAS as a YAML or JSON file

### Render an OAS hosted online

ReDoc does not allow you to render your OAS locally for security reasons, unless you are bundling the document with [redoc-cli](https://github.com/Redocly/redoc/tree/master/cli "Link to ReDoc CLI GitHub page"), which adds extra dependencies because ReDoc is a JavaScript application.

This instructions explain how to render your OAS with ReDoc embedding an OAS available online

1. Create an HTML file and paste this content inside the `<body>` tag.

```
HTML
<redoc spec-url='https://raw.githubusercontent.com/steroman/flask-planets/main/openapi/openapi.yaml'></redoc>
<script src="https://cdn.jsdelivr.net/npm/redoc@next/bundles/redoc.standalone.js"> </script>
```

### Render an API hosted locally
