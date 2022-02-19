***Settings***
Documentation    A Test Suite DataDriven Check Type Magazine in Digikala
Resource         ../../Resource/Login-Resource.robot
Resource         ../../Resource/DataDriven.robot
Force Tags       Magazines
Suite Setup      Valid Login
Suite Teardown   Close Browser
Test Template    Show Request For Magazines

***Test Cases***
Show Request For Magazines Internal  ${MagazineI}  ${SelectMI}  ${TypePaI} 

Show Request For Magazines External  ${MagazineEX}  ${SelectMEX}  ${TypePaEX}  

***Keywords***
Show Request For Magazines
    [Arguments]  ${magazines}  ${quarterly}  ${paper}
    Select Jornal  ${magazines}  ${quarterly}  ${paper}