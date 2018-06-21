*** Settings ***
Resource  CommonWeb.robot
Resource  PO/ExpenseAuditorApproveCreatePage.robot
Resource  PO/ExpenseItemCreatePage.robot




*** Keywords ***
Expense Auditor Approve Report
     Navigate to Auditing
     Navigate for Auditing The Expense Report
     Select "Original Receipt Package Check in Date"
     Select On The Checkbox Recept Verified
     select The Complete Audit
     Select The Confirmation Box for Complete the Audit
     Logout of Application





Expense Auditor Should Be Able To Approve And Audit An Expense Report
    [Documentation]  This script is used to Audit an Expense Report and Approve in Oracle HCM
        [Tags]  Smoke
#         CommonWeb.Login As Auditor   ${Auditor_Email}  ${Auditor_Pwd}
         CommonWeb.Login As Auditor   ${Auditor_Email}  ${Auditor_Pwd}
         ExpenseAuditorApproveCreate.Expense Auditor Approve Report