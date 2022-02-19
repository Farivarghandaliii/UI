***Settings***
Documentation  A Test Suite DataDriven Check Type Magazine in Digikala
Library        SeleniumLibrary
Resource       common.robot
Resource       Variables.robot

***Variables***
${Galingor}           xpath://html/body/div[1]/div[1]/div[3]/div[3]/div[1]/div/section[2]/div/div/div[1]/div[10]/div[2]/div[5]/div/div[1]/label/span
${Release}            xpath://html/body/div[1]/div[1]/div[3]/div[3]/div[1]/div/section[2]/div/div/div[1]/div[11]/div/div[2]/div/div/div[1]
${TypePaI}            xpath://*[@id="plpLayoutContainer"]/section[2]/div/div/div[1]/div[10]/div[2]/div[5]/div/div[1]/label/span	
${TypePaEX}           xpath://*[@id="plpLayoutContainer"]/section[2]/div/div/div[1]/div[10]/div[2]/div[3]/div/div[1]/label/span
${VisibleMagazine}    xpath:/html/body/div[1]/div[1]/div[3]/div[3]/div[1]/nav/div/div/div[1]/div[3]/a 
${SelectMEX}          Xpath://img[@alt='مجله THE BATMAN WHO LAUGHS 1 ژانویه 2018']
${Slider}             xpath://*[@id="__next"]/div[1]/div[3]/div[3]/div[1]/div[1]
${ChooseBook}         xpath://img[@alt='مجلات، نقشه و نشانگر کتاب']
${SelectBook}         xpath://p[text()='کتاب، لوازم تحریر و هنر']	
${SelectMI}           xpath://img[@alt='فصلنامه صنایع و معادن']
${Groupingh}          xpath://h3[@class='text-h3 color-900']
${View}               xpath://div[text()='پربازدیدترین']
${Categories}         xpath://div[text()='دسته‌بندی‌ها']	
${MagazineI}          xpath://div[text()='مجلات داخلی']
${MagazineEX}         xpath://div[text()='مجلات خارجی']
${CoverType}          xpath://div[text()='نوع جلد']
${Jornals}            xpath://div[text()='مجلات']
${Type}               xpath://p[text()='کاغذی']

***Keywords***
Select Jornal
    [Arguments]  ${magazines}  ${quarterly}  ${paper}
    Wait Until Element Is Visible  ${Product}
    Click Element  ${Product}
    Wait Until Element Is Visible  ${SelectBook}
    Click Element  ${SelectBook}
    Wait Until Element Is Visible  ${Slider}
    Execute JavaScript   window.scrollBy(0,800)
    Wait Until Element Is Visible  ${Groupingh}
    Set Focus To Element  ${ChooseBook}
    Wait Until Keyword Succeeds  10s  3s  Choose Book Image
    Execute JavaScript  window.scrollBy(0, -document.body.scrollHeight)	
    Wait Until Element Is Visible  ${Jornals}   
    Click Element  ${Jornals}   
    Wait Until Element Is Visible  ${VisibleMagazine}  
    Click Element  ${magazines}
    Wait Until Element Is Visible  ${Filters}
    Execute JavaScript   window.scrollBy(0,900)
    Wait Until Element Is Visible  ${CoverType}
    Wait Until Keyword Succeeds  10s  3s  Cover Type
    Scroll To View Paper
    Wait Until Element Is Visible  ${paper}
    Click Element  ${paper}
    Execute JavaScript  window.scrollBy(0, -document.body.scrollHeight)
    Wait Until Element Is Visible  ${quarterly}
    Set Focus To Element  ${quarterly}
    Click image  ${quarterly}
    Switch Window   New
    Wait Until Element Is Visible  ${Type}
    
Choose Book Image
    Click Image  ${ChooseBook}

Cover Type
    Click Element  ${CoverType}

Scroll To View Paper
    ${x}=  Get Horizontal Position  ${Galingor} 
    ${y}=  Get Vertical Position  ${Galingor} 	
    Execute Javascript  window.scrollTo(${x}, ${y}) 