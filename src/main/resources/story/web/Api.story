Scenario: Verify Trello account creation
When I issue a HTTP GET request for a resource with the URL 'https://api.trello.com/1/members/me/?key=58b5c42b9497ceb8b1b4fffe7665ed0b&token=8158622fe7d96aa0dd580338f7dd88f9d6bc770653d30c7da6179b07100a865e'
Then `${responseCode}` is equal to `200`


Scenario: Verify Trello board creation
Given request body: {     }
When I issue a HTTP POST request for a resource with the URL 'https://api.trello.com/1/boards/?name=vacation&key=58b5c42b9497ceb8b1b4fffe7665ed0b&token=8158622fe7d96aa0dd580338f7dd88f9d6bc770653d30c7da6179b07100a865e'
Then `${responseCode}` is equal to `200`
