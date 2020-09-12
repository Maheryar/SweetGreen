*** Settings ***
Library  AppiumLibrary
Resource        ../Variables/TestVariables.robot
Resource        ../Resources/SGkeywords.robot
Documentation    Suite description

*** Variables ***
${AppiumServer}   http://127.0.0.1:4723/vd/hub
${platformName}   android
${deviceName}     emulator-5554
*** Test Cases ***
Test01
    [Tags]    DEBUG
    Open Browser    ${url}   ${Browser}   ${AppiumServer}  ${platformName}    ${deviceName}


