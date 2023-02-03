import tweepy
import time

# Your Twitter API credentials
consumer_key = "VMBe1tTnDQMlmD1pHb42VLq6Z"
consumer_secret = "EorMVZIsHbFUvMrnJ3ZR7ipt3EiuDUJN1tBoH8yibxezTDGIHH"
access_token = "1621215941886353410-jccLdEP6wknjgCwpFVhb8tmgNhu2nP"
access_token_secret = "RTws4LFoqoQdp4cMu1DT1RLL9o5KYDrs7nmJfv3QwWAPS"

# Authenticate to Twitter
auth = tweepy.OAuthHandler(consumer_key, consumer_secret)
auth.set_access_token(access_token, access_token_secret)

# Create API object
api = tweepy.API(auth)

# Tweet every 5 minutes
while True:
    api.update_status("Hello, World!")
    time.sleep(300)
