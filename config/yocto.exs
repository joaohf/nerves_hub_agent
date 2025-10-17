import Config

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
  configurator: NervesHubLink.Configurator.SharedSecret,
  shared_secret: [
    product_key: "my key",
    product_secret: "my secret"
  ],
  remote_iex: true
