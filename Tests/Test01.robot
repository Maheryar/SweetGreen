*** Settings ***
Documentation    Suite description
Test Setup      Start Automation Setup
Test Teardown   Close Browser
Resource        ../Variables/TestVariables.robot
Resource        ../Resources/SGkeywords.robot

Library         SeleniumLibrary

*** Test Cases ***
# robot -d Results Tests\Test01.robot

TestCase01
    [Tags]    Regression
    Double Click Element   css=.main-menu
    Click Link   ${menu_button}
    Sleep   2s
    Click Link   ${location_button}
    sleep   1s
    Assert Seasonal Item01
    Assert Seasonal Item02
    Assert Seasonal Item03
    Assert Seasonal Item04
    Assert Warm Bowl Item01
    Assert Warm Bowl Item02
    Assert Warm Bowl Item03
    Assert Warm Bowl Item04
    Assert Warm Bowl Item05
    Click Link    css=#menu-top-nav-1 > .menu-outpost > a
    sleep  1s
    Click Link    css=.RequestOutpostButton__StyledButton-sc-6pjsub-0:nth-child(4)


    Fill The Form

