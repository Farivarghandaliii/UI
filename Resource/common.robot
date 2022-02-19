***Settings***
Documentation     A common resource file with global keywords and variables
Library           SeleniumLibrary

***Variables***
${Product}           xpath://*[@id="base_layout_desktop_fixed_header"]/header/nav/div[1]/div[1]/div[1]/div
${Digital}           xpath://p[text()='کالای دیجیتال']
${BestSelling}       xpath://div[text()='پرفروش‌ترین‌']	
${Filters}           xpath://div[text()='فیلترها']	
${Apple}             xpath://span[text()='اپل']

***Keywords***
scroll Up Page
        Execute JavaScript  window.scrollBy(0, -document.body.scrollHeight)

scroll Down Page
        Execute JavaScript  window.scrollBy(0, document.body.scrollHeight)

Scroll To View
    [Arguments]  ${position} 
    ${x}=  Get Horizontal Position  ${position}  
    ${y}=  Get Vertical Position  ${position} 	
    Execute Javascript  window.scrollTo(${x}, ${y})