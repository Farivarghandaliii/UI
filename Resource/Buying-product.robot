***Settings***
Documentation  A Test Suite Buy And Delete Product
Library        SeleniumLibrary
Resource       common.robot
Resource       Variables.robot

***Variables***
${DeleteProduct}     xpath://html[1]/body[1]/main[1]/div[2]/section[1]/div[1]/div[2]/div[1]/div[1]/section[1]/div[1]/div[1]/ul[1]/li[1]/div[1]/div[2]/div[7]/div[1]/a[1]
${ChooseMobile}      xpath://html/body/div[1]/div[1]/div[3]/div[3]/div[1]/div/section[1]/div[2]/div/div/div[10]/article/a/div[2]/div[1]/div/div/div[1]/div/img
${Delete}	         xpath://html/body/div[1]/div[1]/div[3]/div[3]/div[2]/div/ul[2]/li/div/div/section/div/div/div[2]/div[2]/div[1]/div[3]/div/button[2]
${AddBuy}            xpath://*[@id="__next"]/div[1]/div[3]/div[3]/div[2]/div[2]/div[2]/div[2]/div[3]/div[1]/div[8]/div/div[2]/div[3]/button[1]/div[2]
${ContinueBuy}       xpath://html/body/div[1]/div[1]/div[3]/div[3]/div[2]/div/ul[2]/li/div/div/aside/div/div[1]/div[1]/div[4]/a
${SelectApple}       xpath://*[@id="plpLayoutContainer"]/section[2]/div/div/div[1]/div[2]/div[2]/div[3]/div/div[1]/label/span
${SellerCheckbox}    xpath://*[@id="plpLayoutContainer"]/section[2]/div/div/div[1]/div[8]/div[2]/div[2]/div/div[1]/label/span
${Time}              xpath://*[@id="__next"]/div[1]/div[3]/div[3]/div[2]/div[2]/aside/div/div/div[1]/div[4]/button	
${EndShopping}       xpath://p[text()='سبد خرید شما خالی است!']
${Return}            xpath://span[text()='بازگشت به سبد خرید']
${VisibleMobile}     xpath://p[text()='گوشی موبایل اپل']
${Seller}            xpath://div[text()='نوع فروشنده']	
${ShoppingBasket}    xpath://span[text()='سبد خرید']
${Basket}            xpath://p[text()='سبد خرید']
${Brand}             xpath://div[text()='برند']

***Keywords*** 
Select Product
    Wait Until Element Is Visible  ${Product}
    Click Element  ${Product}
    Wait Until Element Is Visible  ${Digital}
    Set Focus To Element  ${Apple}
    Wait Until Keyword Succeeds  10s  3s  Click Apple Menu
    Wait Until Element Is Visible  ${Filters} 
    
Choose Mobile To Buying
    Wait Until Page Contains Element  ${Seller}
    Wait Until Keyword Succeeds  10s  3s  Click Seller
    Wait Until Element Is Visible  ${SellerCheckbox}
    Wait Until Keyword Succeeds  10s  3s  Click Checkbox
    Wait Until Element Is Visible  ${Filters}
    Execute JavaScript   window.scrollBy(0,600)
    Wait Until Element Is Visible  ${Brand}
    Wait Until Keyword Succeeds  10s  3s  Click Brand
    Wait Until Element IS Visible  ${SelectApple} 
    Wait Until Keyword Succeeds  10s  3s  Click Apple
    Wait Until Element IS Visible  ${BestSelling}
    Click Element  ${BestSelling}
    Wait Until Element Is Visible  ${Filters}
    Execute JavaScript   window.scrollBy(0,900)
    Wait Until Element Is Visible  ${ChooseMobile}
    Wait Until Keyword Succeeds  10s  3s  Click Image Mobile
    Switch Window   New
    Wait Until Element Is Visible  ${VisibleMobile}
    Execute JavaScript   window.scrollBy(0,300)
    Wait Until Element Is Visible  ${AddBuy}
    Click Element  ${AddBuy}

Delete Product
    Wait Until Page Contains Element  ${Basket}	
    Click Element  ${Basket}
    Wait Until Element Is Visible  ${ShoppingBasket}
    Wait Until Element Is Visible  ${ContinueBuy}
    Scroll Element Into View  ${ContinueBuy}
    Set Focus To Element  ${ContinueBuy}
    Click Link  ${ContinueBuy}
    Wait Until Element Is Visible  ${Time}
    scroll Up Page
    Wait Until Element Is Visible  ${Return}
    Wait Until Keyword Succeeds  10s  3s  Click Return
    scroll Up Page
    Wait Until Element Is Visible  ${Delete}
    Set Focus To Element  ${Delete}
    Click Button  ${Delete}
    Page Should Contain Element  ${EndShopping}

Click Apple Menu
    Click Element  ${Apple}

Click Return
    Click Element  ${Return}

Click Image Mobile
    Click Image  ${ChooseMobile}

Click Seller
    Click Element  ${Seller}

Click Checkbox
    Click Element  ${SellerCheckbox}

Click Brand  
    Click Element  ${Brand}

Click Apple
    Click Element  ${SelectApple}