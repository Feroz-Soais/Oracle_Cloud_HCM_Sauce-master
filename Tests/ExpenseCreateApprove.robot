*** Settings ***
Documentation  This script is used to create an Expense item, Expense Report and Approve and Reject an Expense Report
Resource  ../Resources/ExpenseItemCreate.robot
Resource  ../Resources/ExpenseReportCreate.robot
Resource  ../Resources/ExpenseApproveCreate.robot
Resource  ../Resources/ExpenseRejectReport.robot
Resource  ../Resources/ExpenseAuditorApproveCreate.robot
Resource  ../Resources/ExpenseAuditorRejectCreate.robot
Resource  ../Resources/AuditorInitiatePaymentApprovedCreate.robot
#Library  ../Lib/jutil.py

Test Setup  Begin Web Test
Test Teardown  End Web Test

*** Variables ***

#robot -d results -v Manager_Email:"Dhanesh Kumar" -v Manager_Pwd:"Soa@4321" tests/ExpenseCreateApprove.robot
#robot -d results -v Auditor_Email:"Vasanthshrinivas V Naik" -v Auditor_Pwd:"Soais@1234" tests/ExpenseCreateApprove.robot



*** Test Cases ***
Test To Create , Approve and Reject Expense

#    Employee Should Be Able To Creates An Expense Item
#
#    Employee Should Be Able To Create An Expense Report
#
#    Line Manager Should Be Able To Approve An Expense Report

#   ERO5(Feroz)
#    Line Manager Should Be Able To Reject An Expense Report
#   ERO6(Feroz) working fine without errors
#    Expense Auditor Should Be Able To Approve And Audit An Expense Report
#   ER07(Feroz)
   Expense Auditor Should Be Able To Reject And Audit An Expense Report

#  CA06(Feroz)
#    Auditor Should Be Able To Initate Payment Processing of The Approve Cash Advances

sdfsadfasdsdfs


#todo  Line Manager Should Be Able To Reject An Expense Report  (Feroz) files created ExpenseRejectReport.robot and ExpenseRejectReportPage.robot
#todo  Expense Auditor Should Be Able To Approve And Audit An Expense Report  (Feroz) files created ExpenseAuditorApproveCreate.robot and ExpenseAuditorApproveCreatePage.robot
#todo  Expense Auditor Should Be Able To Reject And Audit An Expense Report (Feroz) files created ExpenseAuditorRejectCreate.robot and ExpenseAuditorRejectCreatePage.robot
#todo  Auditor Should Be Able To Initate Payment Processing of The Approve Cash Advances (Feroz) Files created AuditorInitiatePaymentApprovedCreate.robot AuditorInitiatePaymentApprovedCreatePage.robot
