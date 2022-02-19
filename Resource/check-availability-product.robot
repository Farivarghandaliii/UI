***Settings***
Documentation  A Test Suite For Availibility Product
Library        SeleniumLibrary
Resource       common.robot
Resource       Variables.robot

***Variables***
${ChooseMobile}     xpath://html/body/div[1]/div[1]/div[3]/div[3]/div[1]/div/section[1]/div[2]/div[1]/div/div[2]/article/a/div[2]/div[2]/div[2]/h2
${NoticesButton}    xpath://*[@id="__next"]/div[1]/div[3]/div[3]/div[2]/div[2]/div[2]/div[2]/div[3]/div/div/div[2]/button
${PMessage}         xpath://*[@id="modal-root"]/div[20]/div/div/div/div[2]/div/form/label[2]/label/span 
${Record}           xpath://html/body/div[2]/div[2]/div[20]/div/div/div/div[2]/div/form/div/button
${NextPage}         xpath://*[@id="plpLayoutContainer"]/section[1]/div[2]/div[2]/div[2]/span[4]
${EndNotice}        xpath://text()[.='دیگر لازم نیست خبرم کنید']/ancestor::div[1]	
${VisibleMobile}    xpath://p[text()='گوشی موبایل اپل']
${SmsChecked}       id:notification-param-2
${NPMessage}        name:sendNotification
${ClickPage}        xpath://a[text()='۲']
${SCROLL_HIEGHT}    2000

***Keywords***
Select Product
    Wait Until Element Is Visible  ${Product}
    Click Element  ${Product}
    Wait Until Element Is Visible  ${Digital}
    Set Focus To Element  ${Apple}
    Wait Until Keyword Succeeds  10s  3s  Click Apple Menu
    Wait Until Element Is Visible   ${Filters}
    Click Element  ${BestSelling}
    Wait Until Element Is Visible   ${Filters}
    Scroll To Page
    Scroll To Next Page
    Wait Until Keyword Succeeds  10s  3s  Click Next Page
    Wait Until Element Is Visible  ${BestSelling}
    Wait Until Element Is Visible  ${ChooseMobile}
    Click Element  ${ChooseMobile}
    Switch Window   New
    Wait Until Element Is Visible  ${VisibleMobile}	
    Set Focus To Element  ${NoticesButton}
    Click Button  ${NoticesButton}
    Wait Until Element Is Visible  ${Record}
    Checked Checkbox
    Run Keyword If  ${IsChecked}  Select Private Message Checkbox
    Click Button  ${Record}
    Wait Until Element Is Visible  ${EndNotice}	

Scroll To Page 
    FOR  ${i}  IN RANGE    0   20
        ${SCROLL_HIEGHT}=   Evaluate  ${SCROLL_HIEGHT}+500
        Sleep    .4
        Execute JavaScript  window.scrollTo(0, ${SCROLL_HIEGHT})
    END    

Select Private Message Checkbox
    Click Element  ${PMessage}

Checked Checkbox
    ${confirm} =  Run Keyword And Return Status  Checkbox Should Not Be Selected  ${NPMessage}
    Set Test Variable  ${IsChecked}  ${confirm}

Click Apple Menu
    Click Element  ${Apple}

Click Next Page
    Click Element  ${NextPage}

Scroll To Next Page
    ${x}=  Get Horizontal Position  ${NextPage}
    ${y}=  Get Vertical Position  ${NextPage}
    Execute Javascript  window.scrollTo(${x}, ${y})