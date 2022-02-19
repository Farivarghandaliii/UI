***Settings***
Documentation     A Test Suite For Availibility Product
Resource          ../../Resource/Login-Resource.robot
Resource          ../../Resource/check-availability-product.robot
Force Tags        Availability
Suite Setup       Valid Login
Suite Teardown    Close Browser

***Test Cases***
Available Product
    Select Product