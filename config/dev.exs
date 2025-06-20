import Config

# Device HTTP connection.
config :nerves_hub_link,
  host: "0.0.0.0:4001"

# nerves_runtime needs to disable
# and mock out some parts.

cert =
  if File.exists?("./nerves-hub/test-cert.pem"),
    do: File.read!("./nerves-hub/test-cert.pem")

key =
  if File.exists?("./nerves-hub/test-key.pem"),
    do: File.read!("./nerves-hub/test-key.pem")

config :nerves_runtime,
  target: "host",
  kernel: [autoload_modules: false],
  kv_backend:
    {Nerves.Runtime.KVBackend.InMemory,
     contents: %{
       "nerves_fw_active" => "a",
       "a.nerves_fw_uuid" => "8a8b902c-d1a9-58aa-6111-04ab57c2f2a8",
       "a.nerves_fw_product" => "nerves_hub",
       "a.nerves_fw_architecture" => "x86_64",
       "a.nerves_fw_version" => "0.1.0",
       "a.nerves_fw_platform" => "x86_84",
       "a.nerves_fw_misc" => "extra comments",
       "a.nerves_fw_description" => "test firmware",
       "nerves_hub_cert" => cert,
       "nerves_hub_key" => key,
       "nerves_fw_devpath" => "/tmp/fwup_bogus_path",
       "nerves_serial_number" => "test"
     }}

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
