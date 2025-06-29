# NervesHubAgent

This is an initial Elixir application for connecting a device to NervesHub.
It uses [nerves_hub_link](https://github.com/nerves-hub/nerves_hub_link) that
does all the hard work.

The purpose is to have some control over how and when is the right time to
connect to NervesHub. As the intent is to run this application in any Linux
distribution, however the main target now is to run it on Yocto based distributions.

## TODO

- [ ] Decide how to manage keys and where to get them
- [ ] List and decide the best option for managing network
- [x] [Implement yocto recipe for nerves_hub_agent](https://github.com/joaohf/meta-nerves-hub/blob/a48d734a63f60f282cc171d97a69ff10997ee9c5/recipes-connectivity/nerves-hub-agent/nerves-hub-agent_0.1.0.bb)
