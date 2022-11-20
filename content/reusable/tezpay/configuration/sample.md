---
title: sample
weight: 3
type: docs
summary: tezpay sample configuration
---
```yaml
{
  tezpay_config_version: 0
  baker: ""
  payouts: {
    wallet_mode: local-private-key
    fee: 0.075
    baker_pays_transaction_fee: true
    baker_pays_allocation_fee: true
    minimum_payout_amount: 10.5
  }
  delegators: {
    requirements: {
      minimum_balance: 0.5
    }
    ignore: [
      tz1Ke2h7sDdakHJQh8WX4Z372du1KChsksyU
      tz1burnburnburnburnburnburnburjAYjjX
    ]
    overrides: {
      tz1P6WKJu2rcbxKiKRZHKQKmKrpC9TfW1AwM: {
        recipient: ""
        fee: 0.005
        no_fee: true
        minimum_balance: 2.5
      }
    }
  }
  income_recipients: {
    bonds: {
      tz1P6WKJu2rcbxKiKRZHKQKmKrpC9TfW1AwM: 0.455
      tz1X7U9XxVz6NDxL4DSZhijME61PW45bYUJE: 0.545
    }
    fees: {
      tz1P6WKJu2rcbxKiKRZHKQKmKrpC9TfW1AwM: 0.455
      tz1X7U9XxVz6NDxL4DSZhijME61PW45bYUJE: 0.545
    }
    donate: 0.025
    donations: {
      tz1P6WKJu2rcbxKiKRZHKQKmKrpC9TfW1AwM: 0.1
      tz1UGkfyrT9yBt6U5PV7Qeui3pt3a8jffoWv: 0.9
    }
  }
  network: {
    rpc_url: https://mainnet.api.tez.ie
    tzkt_url: https://api.tzkt.io/
    explorer: https://tzstats.com/
    ignore_kt: true
  }
  overdelegation: {
    protect: true
  }
  notifications: [
    {
      message_template: my awesome message
      type: discord
      webhook_url: https://my-discord-webhook.com/
    }
    {
      message_template: my awesome message
      type: discord
      webhook_id: webhook id
      webhook_token: webhook token
    }
    {
      access_token: your access token
      access_token_secret: your access token secret
      consumer_key: your consumer key
      consumer_secret: your consumer secret
      message_template: my awesome message
      type: twitter
    }
    {
      api_token: your api token
      message_template: my awesome message
      receivers: [
        list of chat numbers without quotes
        -1234567890
      ]
      type: telegram
    }
    {
      message_template: my awesome message
      recipients: [
        my-follower1@email.is
        my-follower2@email.is
      ]
      sender: my@email.is
      smtp_identity: ""
      smtp_password: password123
      smtp_server: smtp.gmail.com
      smtp_username: my@email.is
      type: email
    }
    {
      args: [
        --kind
        <kind>
        <data>
      ]
      path: path to external notificator binary
      type: external
    }
  ]
}
```
