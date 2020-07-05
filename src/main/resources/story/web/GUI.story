Scenario: Card adding
Given I am on a page with the URL 'https://trello.com/login'
When I enter `${registeredUserEmail}` in  field located `By.xpath(//input[@id="user"])`
When I wait until element located `By.xpath(//input[@id="login"])` appears
When I click on element located `By.xpath(//input[@id="login"])`
When I enter `${registeredUserPass}` in  field located `By.xpath(//input[@class="Input__InputElement-sc-1o6bj35-0 bfCuIo"])`
When I click on element located `By.xpath(//button[@id='login-submit']//span[@class='css-t5emrf'])`
When I wait until the page title contains the text 'Trello'
When I wait until element located `By.xpath(//li[@class="boards-page-board-section-list-item"]//a[@href="/b/FxCb0q3G/vacation"])` appears
When I click on element located `By.xpath(//li[@class="boards-page-board-section-list-item"]//a[@href="/b/FxCb0q3G/vacation"])`
When I find >= `1` elements by `By.xpath((.//a[@class="open-card-composer js-open-card-composer"]//span[@class="js-add-a-card"])[2])` and for each element do
|step |
|When I click on element located `By.xpath(//div[@id='surface']//div[2]//div[1]//div[3]//a[1]//span[2])`|
|When I enter `june` in field located `By.xpath(//textarea[@class="list-card-composer-textarea js-card-title"])`|
|When I click on element located `By.xpath(//input[@class="primary confirm mod-compact js-add-card"])`|
Then number of elements found by `By.xpath(//input[@class="primary confirm mod-compact js-add-card"])` is GREATER_THAN_OR_EQUAL_TO `1`
