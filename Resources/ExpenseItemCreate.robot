*** Settings ***
Resource  PO/ExpenseItemCreatePage.robot
Resource  CommonWeb.robot
*** Variables ***

*** Keywords ***
Create an Expense Item
    Navigate to Expense
    Click On Add Expense Item
    Enter Create Expense Item Data
    Take Screenshot  ItemDetails
    Click "Save & Close"
    logout of application


Employee Should Be Able To Creates An Expense Item
        [Documentation]  This Test Creates An Employee Expense Item In Oracle HCM
        [Tags]  Expense
         CommonWeb.Login to the Application  ${Employee_Email}  ${Employee_Pwd}
         ExpenseItemCreate.Create an Expense Item

#Employee Should Be Able To Creates An Expense Item
#    [Documentation]  This script is used to create an Expense Item in Oracle HCM
#    [Tags]  Smoke
#    @{csvData} =  Get CSV Data  ${DATA_PATH}
#    :FOR  ${singledata}  IN  @{csvData}
#    \  CommonWeb.Login to the Application  ${singledata}
#    \  Create an Expense Item

