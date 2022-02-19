***Settings***
Documentation     A Test Suite Buy And Delete Product
Resource          ../../Resource/Login-Resource.robot
Resource          ../../Resource/Buying-product.robot
Force Tags        Buy Product
Suite Setup       Valid Login
Suite Teardown    Close Browser

***Test Cases***
Buying Product
    Select Product
    Choose Mobile To Buying
    Delete Product