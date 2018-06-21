*** Settings ***
Resource  CommonWeb.robot
Resource  PO/ExpenseRejectReportPage.robot


*** Keywords ***
Reject Expense Report
     Navigate to Expense
     "Go To Travel And Expenses"
     Navigate To Reject Reports
     Select And Reject Report
     Logout of Application


Line Manager Should Be Able To Reject An Expense Report
        [Documentation]  This script is used to Reject an Expense Report in Oracle HCM
        [Tags]  Smoke
         CommonWeb.Login As Manager   ${Manager_Email}  ${Manager_Pwd}
         ExpenseRejectReport.Reject Expense Report

