***Settings***
Documentation  A Test Suite For Login To Digikala
Library        SeleniumLibrary
Resource       common.robot
Resource       Variables.robot

***Variables***
${Profile}     xpath://*[@id="base_layout_desktop_fixed_header"]/header/div/div/div/div[2]/div[1]/div	
${ClickLogin}  xpath://*[@id="base_layout_desktop_fixed_header"]/header/div/div/div/div[2]/a/div[2]	
${SubmitPass}  xpath://*[@id="__next"]/main/div[2]/form/button[3]	
${SubmitUser}  xpath://*[@id="__next"]/main/div[2]/form/button	
${Order}       xpath://span[text()='سفارش‌ها']
${Search}      xpath://div[text()='جستجو']
${UserID}      name:username
${PassID}      name:password

***Keywords***
Open Page
    Set Selenium Speed  ${SPEED}
    Set Selenium Timeout  ${TIMEOUT}
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window

Login
    [Arguments]  ${username}  ${password}
    Wait Until Element Is Visible  ${ClickLogin}
    Click Element  ${ClickLogin}
    Wait Until Element Is Visible  ${UserID} 
    Set Focus To Element  ${UserID}  
    Input Text  ${UserID}  ${username} 
    Click Button  ${SubmitUser}
    Wait Until Element Is Visible  ${PassID}  
    Input Text  ${PassID}  ${password}
    Click Button  ${SubmitPass}  
    Wait Until Element Is Visible  ${Profile}
    Click Element  ${Profile}
    Wait Until Element Is Visible  ${Order}	
    Click Element  ${Profile}

Valid Login
    Open Page
    Login  ${USERNAME}  ${PASSWORD}  