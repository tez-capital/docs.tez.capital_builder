---
title: default
weight: 3
type: docs
summary: tezpay default configuration
---
```yaml
{
  tezpay_config_version: 0
  baker: ""
  payouts: {
    wallet_mode: local-private-key
    fee: 0.05
  }
  delegators: {
    requirements: {}
  }
  income_recipients: {}
  network: {
    rpc_url: https://mainnet.api.tez.ie
    tzkt_url: https://api.tzkt.io/
    explorer: https://tzkt.io/
  }
  overdelegation: {
    protect: true
  }
}
```
