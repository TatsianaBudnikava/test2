Scenario: Visual test of a main page
Given I am on the main application page
When I COMPARE_AGAINST baseline with `page` ignoring:
|ELEMENT|
|By.xpath(//button[@class='btn btn-wrap btn-success btn-lg px-4'])|

Scenario:  Log In visual check
Given I am on a page with the URL 'https://trello.com/login'
When I enter `${registeredUserEmail}` in  field located `By.xpath(//input[@id="user"])`
When I wait until element located `By.xpath(//input[@id="login"])` appears
When I click on element located `By.xpath(//input[@id="login"])`
When I enter `${registeredUserPass}` in  field located `By.xpath(//input[@id="password"])`
When I COMPARE_AGAINST baseline with `registration` ignoring:
|ELEMENT|
|By.xpath(//input[@id="password"])|

Scenario: Page visual check
Given I am on a page with the URL 'https://trello.com/login'
When I enter `${registeredUserEmail}` in  field located `By.xpath(//input[@id="user"])`
When I wait until element located `By.xpath(//input[@id="login"])` appears
When I click on element located `By.xpath(//input[@id="login"])`
When I wait until element located `By.xpath(//input[@id="password"])` appears
When I enter `${registeredUserPass}` in  field located `By.xpath(//input[@id="password"])`
When I click on element located `By.xpath(//button[@id='login-submit']//span[@class='css-t5emrf'])`
When I wait until the page title contains the text 'Trello'
When I click on all elements located `By.xpath(//button[@class='_33CvMKqfH4Yf0j _3SBHBJq0AAxzqg'])`
When I COMPARE_AGAINST baseline with `command_creation`
When I click on all elements located `By.xpath(//span[@name='add'])`
When I click on all elements located `By.xpath(//div[@class='atlaskit-portal-container']//li[1]//button[1]//span[2])`
When I COMPARE_AGAINST baseline with `board_creation`
When I click on all elements located `By.xpath(//button[@class='qb90FI2uVIybRy k6NnmijSxBrC-y']//span[@name='close'])`
When I click on all elements located `By.xpath(//body/div[@id='trello-root']/div[@id='chrome-container']/div[@class='BfrybzRYI4wt4w']/div[@id='surface']/main[@id='popover-boundary']/div[@id='content']/div[@class='member-boards-view']/div[@class='js-boards-page']/div[@class='js-react-root']/div/div[@class='home-container']/div[@class='home-sticky-container']/div/nav[@class='home-left-sidebar-container']/div[@class='_27QKbGhxDkdNHq']/ul[@class='_1T7jXM3PAP_MoF']/li[@class='pgEbaAFZBA0N5R']/a[@class='_1hc34_9rc6xcjf']/span[2])`
When I COMPARE_AGAINST baseline with `main`
