Description: Trello board creation check

Scenario: Verify Trello board creation
When I issue a HTTP POST request for a resource with the URL 'https://trello.com/b/9gjvNXAp/vacation'
Then `${responseCode}` is equal to `200`
