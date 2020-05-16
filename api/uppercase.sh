import "string@0.1.0"
import "querystring@1.3.0"

handler() {
  local path
  local query
  path="$(jq -r '.path' < "$REQUEST")"
  querystring "$path" | querystring_unescape | string_upper
}