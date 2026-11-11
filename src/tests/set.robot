
*** Settings ***
Resource  resource.robot

Suite Setup    Open And Configure Browser
Test Setup    Reset Counter
Suite Teardown    Close Browser

*** Test Cases ***
When counter is set to 10 the value is ten
    Go To  ${HOME_URL}
    Click  button >> text=Paina
    Fill Text  input[name="value"]  10
    Click  button >> text=Aseta
    Get Text  body  *=  nappia painettu 10 kertaa

