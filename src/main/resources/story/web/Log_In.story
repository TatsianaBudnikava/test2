Scenario: Log In validation
Meta:
@layout desktop
Given I am on the main application page
When I click on element located `By.xpath(//a[text()="Log In"])`
When I login as registered UserEmail
When I wait until element located `By.xpath(//input[@id="login"])` appears
When I click on element located `By.xpath(//input[@id="login"])`
When I login as registered UserPassword
When I click on element located `By.xpath(//button[@id='login-submit']//span[@class='css-t5emrf'])`
When I wait until the page title contains the text 'Trello'
Then the page with the URL 'https://trello.com/tatiana24758745/boards' is loaded

Scenario: User profile verifying

When I click on element located `By.xpath(//span[@class='_24AWINHReYjNBf'])`
When I click on element located `By.xpath(//li[@class='_1pCh-d8Vg1eITK']//a[@class='_2jR0BZMM5cBReR']//span[@class='_1uK2vQ_aMRS2NU'])`
When I scroll to the end of the page
When I wait until element located `By.xpath(//a[@class='js-personal-data-export button'])` appears
When I click on element located `By.xpath(//a[@class='js-personal-data-export button'])`
When I set browser cookies to the API context
When I issue a HTTP GET request for a resource with the URL 'https://trello.com/1/members/me?fields=all&sessions=all&credentials=all&organizations=all&organization_fields=all&organization_enterprise=true&organization_paid_account=true&boards=all&board_fields=all&paid_account=true'
Then `${responseCode}` is equal to `200`
When I save JSON element from context by JSON path `$.email` to STORY variable `email`
