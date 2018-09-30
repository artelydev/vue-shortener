import axios from 'axios'

URL = process.env.APP_URL

routes = {}

for route in ['get', 'count', 'store']
  routes[route] = "#{URL}/links/#{route}"

export default
  get: (url) -> axios.post routes.get, { url }
  count: -> axios.get routes.count
  store: ({ url, shortened }) -> axios.post routes.store, { url, shortened }
