*** Settings ***
Library    SeleniumLibrary 
Suite Setup       Log    I m inside test suite Setup    
Suite Teardown    Log    I m inside test suite Teardown    
Test Setup        Log    I m inside test case setup    
Test Teardown     Log    I M inside test case teardown   
Default Tags    sanity
*** Test Cases ***
LoginTest

    Open Browser  ${Url}  chrome
    Set Browser Implicit Wait    5
    Input Text  name=uid  @{key}[0]
    Input Password  name=password  @{key}[1]
  #  Press Keys  name=q  ENTER    
    Click Button  name=btnLogin   
    Click Element    link=New Customer 
    Sleep    5    
    Close Browser
    Log    this test case was executed by %{username} on %{os}     

*** Variables ***
${Url}     http://demo.guru99.com/v4/index.php
@{key}     mngr315366    yrEsEpU    

*** Keywords ***
