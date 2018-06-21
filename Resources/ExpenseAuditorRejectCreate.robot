*** Settings ***
Resource  CommonWeb.robot
Resource  PO/ExpenseAuditorRejectCreatePage.robot
Resource  PO/ExpenseAuditorApproveCreatePage.robot
Resource  PO/ExpenseItemCreatePage.robot





*** Keywords ***
Expense Auditor Reject Report
    Navigate to Auditing
    Navigate for Auditing The Expense Report
    Select "Actions" Dropdown
    Reject Auditor Expense Report
    Select The Confirmation Box For Reject
    Logout of Application





Expense Auditor Should Be Able To Reject And Audit An Expense Report
    [Documentation]  This script is used to Audit an Expense Report and Reject in Oracle HCM
        [Tags]  Smoke
#         CommonWeb.Login As Auditor   ${Auditor_Email}  ${Auditor_Pwd}
         CommonWeb.Login As Auditor   ${Auditor_Email}  ${Auditor_Pwd}
         ExpenseAuditorRejectCreate.Expense Auditor Reject Report
