# FYDP Website
A homepage and a blog.

Install [Zola](https://www.getzola.org/documentation/getting-started/installation/) to start.

## Images
These should go under `static/media/<image>` and are referenced like `/media/<image>` within Markdown or HTML.

## Build
```shell
just dev build
or 
zola build --drafts
```

## Serve
```shell
just dev serve
or
zola serve --drafts
```

## Deployment
Github Actions is used for CI and to deploy to Netlify. A temporary deployment is possible if you create a Netlify account, and I will then add you to the team. You could also just push to a new branch on the org's Github which will generate an autodeployment.

