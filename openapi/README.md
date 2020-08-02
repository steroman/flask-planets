<div align="center">

# Planets and Webhooks API
 ![NASA's logo](/docs/assets/nasa-logo.png)

</div>

## 📖 Table of Contents

- [About Planets and Webhooks API](#📄-about)
- [Render an API with ReDoc](#📟-render-an-api-with-redoc)

## 🔍 About Planets and Webhooks API

Planets and Webhooks is a two-ways API based on [OpenAPI 3.0.3](https://www.openapis.org/ "Link to the OpenAPI website"). It provides data about planets from [NASA data](https://solarsystem.nasa.gov/moons/in-depth/ "Link to NASA") at `/planets` and `/planets/{id}`. Using the `/webhook` endpoint, you can also log the incoming requests to the API.

The Planet and Webhooks OpenAPI Specification (OAS) is available in three formats:

 - as a [YAML file](openapi.yaml)
 - as a [standalone HTML file](redoc-static.html)
 - as an [HTML file](index.html) that embeds a ReDoc Script and points to the YAML file

## 📟 Render an API with ReDoc

ReDoc is a JavaScript lightweight API documentation engine with flexible rendering capabilities. In this document you can learn some methods to render an API with ReDoc.

- [Render an API with ReDoc Standalone as a HTML file](#render-an-api-with-redoc-standalone)
- [Bundle an API as a HTML file](#bundle-an-api-as-a-html-file)
- [Render an API with redoc-cli Server](#render-an-api-with-redoc-cli-server)

### Requirements

- A public API source file
- A local API source file
- [redoc-cli](https://github.com/Redocly/redoc/tree/master/cli "Link to ReDoc CLI GitHub page") to render your API
- npm 5.2.0 or higher, which comes with [Node.JS](https://nodejs.org/es/ "Link to Node.JS's website")

### Render an API with ReDoc Standalone

You can render a API source file that is available online and public embedding a public API source file into a standalone HTML file. This file also includes a ReDoc Standalone script.

1. Create a valid HTML file and paste this content inside the `<body>` tag.

  ```html
  <redoc spec-url='https://raw.githubusercontent.com/steroman/flask-planets/main/openapi/openapi.yaml'></redoc>
  <script src="https://cdn.jsdelivr.net/npm/redoc@next/bundles/redoc.standalone.js"> </script>
  ```
2. Replace the `spec-url`content with the URL of your OAS YAML file.

3. Save your HTML file and then open it.  

  You can use the included index.html file as a reference.

4. Enjoy your API.  

  ![The OAS rendered with ReDoc](/docs/assets/redoc-oas.gif)

### Bundle an API as a HTML File

One way to render an API source file is to build an HTML file with [redoc-cli](https://github.com/Redocly/redoc/tree/master/cli "Link to ReDoc CLI GitHub page").

1. Create a new folder and paste your API source file there.

2. Open your CLI app and browse to the folder.

3. Run redoc-cli locally typing `npx redoc-cli`.

4. Bundle the API typing `redoc-cli bundle <specfile.yaml>`.

5. Take the generated *redoc-static.html* file anywhere you want to. For example you can [place it in your API repo](standalone-oas.html).

  ```cli
  Prerendering docs

  🎉 bundled successfully in: redoc-static.html (991 KiB) [⏱ 0.299s]
  ```

### Render an API with redoc-cli Server

One way to render an API source file is to run a local [redoc-cli](https://github.com/Redocly/redoc/tree/master/cli "Link to ReDoc CLI GitHub page").

1. Create a new folder and paste your API source file there.

2. Open your CLI app and browse to the folder.

3. Run redoc-cli locally typing `npx redoc-cli`.

4. Mount the server typing `redoc-cli serve <specfile.yaml>`.

  ```CLI
  {
  ssr: undefined,
  title: undefined,
  watch: undefined,
  templateFileName: undefined,
  templateOptions: {},
  redocOptions: {}
  }

  Server started: http://127.0.0.1:8080
  ```

5. Browse to the local server and enjoy your API.
