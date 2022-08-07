@smoke
Feature: View Research Extension of PUP System


  Scenario Outline: Research Extension <name>
    * configure driver = {type:'chrome', executable: 'C:/Program Files/Google/Chrome/Application/chrome.exe'}
    * driver 'https://www.pup.edu.ph/'
    And click('<btn1>')
    When click('<btn2>')
    Then waitForUrl('<expected>')

    Examples:
      | name                 | btn1              | btn2                    | expected                                         |
      | Research             | {a}Research       | {a}Extensions            |https://www.pup.edu.ph/research/emo/             |