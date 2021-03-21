*** Settings ***
Library    SeleniumLibrary  
Suite Setup       Log    I m inside test suite Setup    
Suite Teardown    Log    I m inside test suite Teardown    
Test Setup        Log    I m inside test case setup    
Test Teardown     Log    I M inside test case teardown 
Default Tags    regression   
*** Test Cases ***
AddNewCustomer
   [Tags]    regression1
   LoginKW
   Click Element     link=New Customer 
   Input Text        name=name    Ahmed       
   Click Element     name=rad1           
   Input Text        name=dob    12       
   Input Text        name=dob    12       
   Input Text        name=dob    2020       
   Input Text        name=addr    From My Lovely Tunisia       
   Input Text        name=city    Tunis       
   Input Text        name=state    Tunis       
   Input Text        name=pinno    123211      
   Input Text        name=telephoneno    53376894       
   Input Text        name=emailid    guesmi13@gmail.com       
   Input Password    name=password    1234564
   Sleep    5
   Click Button      name=sub
   Sleep    5   
   Current Frame Should Contain    Successfully      
                   
#   Close Browser
   Log    this test case was executed by %{username} on %{os}     




*** Variables ***
${Url}     http://demo.guru99.com/v4/index.php
@{key}     mngr315366    yrEsEpU 
${a}=    Set Variable   11/12/2001
${b}=    Set Variable   12
${c}=    Set Variable   2001
${d}=    Set Variable   ${a}${b}${c}
*** Keywords ***
LoginKW
    Open Browser  ${Url}  chrome
    Set Browser Implicit Wait    5
    Input Text  name=uid  @{key}[0]
    Input Password  name=password  @{key}[1]
  #  Press Keys  name=q  ENTER    
    Click Button  name=btnLogin 
    
