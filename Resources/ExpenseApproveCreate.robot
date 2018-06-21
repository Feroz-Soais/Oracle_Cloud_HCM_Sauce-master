*** Settings ***
Resource  CommonWeb.robot
Resource  PO/ExpenseApproveCreatePage.robot


*** Keywords ***
Approve Expense Report
     Navigate to Expense
     Go To Travel And Expenses
     Navigate To Approve Reports
     Select And Approve Report
     Logout of Application

Line Manager Should Be Able To Approve An Expense Report
        [Documentation]  This script is used to Approve an Expense Report in Oracle HCM
        [Tags]  Smoke
         CommonWeb.Login As Manager   ${Manager_Email}  ${Manager_Pwd}
         ExpenseApproveCreate.Approve Expense Report


#Line Manager Approves The Expense Report
#    [Documentation]  This script is used to Approve an Expense Report in Oracle HCM
#    [Tags]  Smoke
#    @{csvData} =  Get CSV Data  ${DATA_PATH}
#    :FOR  ${singledata}  IN  @{csvData}
#     \  CommonWeb.Login As Manager   ${singledata}
#     \  Approve Expense Report