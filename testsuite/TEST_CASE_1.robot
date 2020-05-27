*** Settings ***
Library  SeleniumLibrary
Library  OperatingSystem
Library  String

*** Variables ***
${browser}  chrome
${url}  https://www.facebook.com/
*** Test Cases ***
TC_01: Login
    LoginTest

*** Keywords ***
LoginTest
    ${File}=    Get File    /home/nphucthinh/text.txt
    @{list}=    Split To Lines      ${File}
    :FOR        ${line}     IN      @{list}
    \   Work  ${line}

Work
    [Arguments]  ${line}
    Open Browser    ${url}   ${browser}
    ${str}=     String.Split String      ${line}     /
    log     ${str[0]}
    log     ${str[1]}
    Close Browser

