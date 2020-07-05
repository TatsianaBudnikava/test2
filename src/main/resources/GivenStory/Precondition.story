Lifecycle:
Examples:
|email                                |password                             |FullName                  |
|tatiana@ugly.mail                    |tohanchik                            |Tatiana                   |                 |
|#{generate(Internet.emailAddress)}   |#{generate(regexify('[a-z]{8}')}     |#{generate(Name.FullName)}|

Scenario: Account registration
Meta:
@layout desktop
Given I am on the main application page
When I click on element located `By.xpath(//a[text()="Sign Up"])`
When I enter `<email>` in  field located `By.xpath(//input[@id="email"])`
When I wait until element located `By.xpath(//input[@id="signup-submit"])` appears
When I click on element located `By.xpath(//input[@id="signup-submit"])`
When I wait until element located `By.xpath(//input[@id="displayName"])` appears
When I fill <FullName> in the registration form
When I enter `<password>` in  field located `By.xpath(//input[@id="password"])`
When I initialize the STORY variable `email` with value `tatsiana#{generate(Internet.emailAddress)}`
When I initialize the STORY variable `FullName` with value `#{generate(Name.FullName)}`
When I initialize the STORY variable `password` with value `#{generate(regexify ('[a-z]{8}')}`
When I click on element located `By.xpath(//button[@id='signup-submit'])`
Then the text 'Welcome to Trello!' exists
