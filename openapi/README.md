<div align="center">

# Planets and Webhooks API
 ![NASA's logo](/docs/assets/nasa-logo.png)

</div>

## Table of Contents

- [About Planets and Webhooks API](#📄-about)
- [Render the API with ReDoc](#🚀-getting-started)

## 📄 About Planets and Webhooks API

Planets and Webhooks is a REST API based on [OpenAPI](https://www.openapis.org/ "Link to the OpenAPI website"). It provides data about planets from [NASA data](https://solarsystem.nasa.gov/moons/in-depth/ "Link to NASA") at `/planets` and `/planets/{id}`. Using the `/webhook` endpoint, you can also log the incoming requests to the API.

Planets and Webhooks is based on OpenAPI 3.0.3.

## 📝 Render the API with ReDoc

ReDoc is a JavaScript lightweight OpenAPI documentation engine that allows you to render your OpenAPI Specification (OAS).

### Requirements

- A well formed OAS as a YAML or JSON file hosted online and public
- Your favourite HTML editor
- An internet connection

### Render an OAS with ReDoc Standalone

If you want to bundle your OAS in your repo, you can do it with [redoc-cli](https://github.com/Redocly/redoc/tree/master/cli "Link to ReDoc CLI GitHub page"). redoc-cli it's a JavaScript app, which would add extra dependencies to your repo.

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
