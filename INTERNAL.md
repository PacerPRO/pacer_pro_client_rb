# Internal Development Notes

## The environment set up is a little complicated

### Set up a pacerpro application as usual, listening on port 3000

### A `.env` with the following (ask Ken for a copy)

| Variable        | Notes                                       |
| --------------- | ------------------------------------------- |
| JWT_KEY         | must match the pacerpro app's configuration |
| EMAIL           | must match the default test user            |
| PASSWORD        | must match the default test user            |
| API_GATEWAY_URL | defined in API Gateway console              |
| GIT_USERNAME    | e.g. "PacerPro"                             |
| GIT_REPO        | e.g. "pacer_pro_client_rb"                  |

### Start an ngrok (https) gateway

```yaml
authtoken: {{...}}
tunnels:
  https:
    proto: tls
    addr: 3000
    hostname: {{hostname}}
    key: /Users/pacerpro/workspace/pacerpro/tmp/STAR_pacerpro_com.key
    crt: /Users/pacerpro/workspace/pacerpro/tmp/STAR_pacerpro_com.pem
```

You'll need a copy of the current SSL certs, host name and the ngrok auth token.

## Testing

`rake`

## Workflow

- `git flow feature start {trackerId}`
- ...
- Update `version.rb` to match API version (add a fourth quad if neccessary)
- `rake README.md` will update the version number in the file, etc.
- `git flow feature finish {trackerId}` (or publish, then pull request)

## Checklist

### Starting a new API version

- [ ] Update version number
- [ ] Use development/qa host & basePath

(Plug menu) Integrations

- [ ] Copy Amazon API integration settings
- [ ] Copy GitHub Sync (ruby client) integration settings
- [ ] Copy GitHub Sync (swagger.json) integration settings
- [ ] Copy Style Validator integration settings

(Gear menu) Settings

- [ ] Copy API Info
- [ ] Copy GitHub Push
- [ ] Copy Codegen options

### Every operation must have

- [ ] Authorization Header (swagger & aws)
- [ ] Pagination query parameters (swagger & aws)
- [ ] tag
- [ ] summary
- [ ] description
- [ ] operationId
- [ ] produces
- [ ] responses
- [ ] new models

### Integration testing & QA

- [ ] generate Ruby SDK
- [ ] integration tests vis a vis pacer_pro_client_rb

### Pre-release checklist

- [ ] Use production host & basePath
- [ ] notify stakeholders of release & date (changes, breaking changes, updates, additions, etc.)
