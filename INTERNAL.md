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