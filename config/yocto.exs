import Config

# Device HTTP connection.
config :nerves_hub_link,
  host: "0.0.0.0:4001"

config :nerves_runtime,
   target: "host",
   kernel: [autoload_modules: false],
   kv_backend: Nerves.Runtime.KVBackend.UBootEnv

config :vintage_net,
  resolvconf: "/dev/null",
  persistence: VintageNet.Persistence.Null,
  bin_ip: "false"

config :nerves_hub_link,
  host: "devices.nervescloud.com",
  configurator: NervesHubLink.Configurator.SharedSecret

config :nerves_hub_link,
  shared_secret: [
    product_key: "my key",
    product_secret: "my secret"
  ]
