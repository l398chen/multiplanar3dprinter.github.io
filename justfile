set dotenv-load := true

zola-dev COMMAND="serve" TYPE="--dev":
    zola {{COMMAND}} --drafts

alias dev := zola-dev

deploy:
    zola build --base-url https://temp--multiplanar3dprinter.netlify.app
    netlify deploy --auth {{ env_var("NETLIFY_AUTH_TOKEN") }} --site {{ env_var("NETLIFY_SITE_ID") }} --alias temp

serve:
    zola build
    miniserve --index index.html -- public/
