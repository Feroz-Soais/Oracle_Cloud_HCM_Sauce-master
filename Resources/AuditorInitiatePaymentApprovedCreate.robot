*** Settings ***
Resource  PO/ExpenseAuditorRejectCreatePage.robot
Resource  PO/ExpenseAuditorApproveCreatePage.robot
Resource  PO/ExpenseItemCreatePage.robot





*** Keywords ***
Auditor Initiate Payment Approved
    Navigate to Auditing
    Go to Tasks
    Navigate To "Process Expense Reimbursements and Cash Advances"
    Steps for "Process Expense Reimbursements and Cash Advances"
    Logout of Application





Auditor Should Be Able To Initate Payment Processing of The Approve Cash Advances
        [Documentation]  This Script is for Auditor Initate Payment Processing of The Approve Cash Advances
        [Tags]  Smoke
        CommonWeb.Login As Auditor   ${Auditor_Email}  ${Auditor_Pwd}
        AuditorInitiatePaymentApprovedCreate.Auditor Initiate Payment Approved