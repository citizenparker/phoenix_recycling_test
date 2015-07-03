use Mix.Config

# For development, we disable any cache and enable
# debugging and code reloading.
#
# The watchers configuration can be used to run external
# watchers to your application. For example, we use it
# with brunch.io to recompile .js and .css sources.
config :recycling_headers, RecyclingHeaders.Endpoint,
  http: [port: 4000],
  debug_errors: true,
  cache_static_lookup: false,
  watchers: [node: ["node_modules/brunch/bin/brunch", "watch"]]

# Do not include metadata nor timestamps in development logs
config :logger, :console, format: "[$level] $message\n"
