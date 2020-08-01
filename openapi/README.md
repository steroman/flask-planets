<div align="center">

# Planets and Webhooks API
 ![NASA's logo](/docs/assets/nasa-logo.png)

</div>

## Table of Contents

- [About Planets and Webhooks API](#📄-about)
- [Render the API with ReDoc](#🚀-getting-started)

## 📄 About Planets and Webhooks API

Planets and Webhooks is a REST API based on [OpenAPI](https://www.openapis.org/ "Link to the OpenAPI website"). It provides data about planets from [NASA data](https://solarsystem.nasa.gov/moons/in-depth/ "Link to NASA") at `/planets` and `/planets/{id}`. It also logs the incoming data it receives to a `/webhook` endpoint.

Its OpenAPI Specification (OAS) follows OpenAPI 3.0.0.

## 📝 Render the API with ReDoc

ReDoc is a JavaScript lightweight OpenAPI documentation engine that allows you to render your OpenAPI Specification (OAS).

### Requirements

- A well formed OAS as a YAML or JSON file hosted online and public
- Your favourite HTML editor
- An internet connection

### Render an OAS with ReDoc Standalone

ReDoc does not allow you to render your OAS locally for security reasons, unless you are bundling the document with [redoc-cli](https://github.com/Redocly/redoc/tree/master/cli "Link to ReDoc CLI GitHub page"), which adds extra dependencies because ReDoc is a JavaScript application.

These instructions explain how to render your OAS with ReDoc embedding the ReDoc Standalone script.

1. Create an HTML file and paste this content inside the `<body>` tag.

  ```html
  <redoc spec-url='https://raw.githubusercontent.com/steroman/flask-planets/main/openapi/openapi.yaml'></redoc>
  <script src="https://cdn.jsdelivr.net/npm/redoc@next/bundles/redoc.standalone.js"> </script>
  ```
2. Replace the `spec-url`content with the URL of your OAS YAML file.

3. Save your HTML file and then open it.  

  You can use the included index.html file as a reference.

4. Enjoy your OAS.

  ![The OAS rendered with ReDoc](/docs/assets/redoc-oas.gif)

### Render an API hosted locally
