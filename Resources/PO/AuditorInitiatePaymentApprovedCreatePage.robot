*** Settings ***
Library  Selenium2Library
Resource  ../Resources/CommonWeb.robot
Resource  CommonWeb.robot



*** Variables ***
${PROCESS_EXPENSE_REIMBURSEMENTS} =  xpath=//*[@id="_FOpt1:_FOr1:0:_FONSr2:0:_FOTRaT:0:RAtl6"]
${BUSINESS_UNIT} =  id=_FOpt1:_FOr1:0:_FONSr2:0:MAnt2:1:pt1:AP1:r1:basicReqBody:paramDynForm_ATTRIBUTE1_ATTRIBUTE1::content
#                          //*[@id="_FOpt1:_FOr1:0:_FONSr2:0:MAnt2:1:pt1:AP1:r1:basicReqBody:paramDynForm_ATTRIBUTE1_ATTRIBUTE1::content"]
${TYPE} =  xpath=//*[@id="_FOpt1:_FOr1:0:_FONSr2:0:MAnt2:1:pt1:AP1:r1:basicReqBody:paramDynForm_ATTRIBUTE5_EXPENSE_REIMBURSEMENTS::content"]
${SUBMIT} =  id=_FOpt1:_FOr1:0:_FONSr2:0:MAnt2:1:pt1:AP1:r1:requestBtns:submitButton
#                   //*[@id="_FOpt1:_FOr1:0:_FONSr2:0:MAnt2:1:pt1:AP1:r1:requestBtns:submitButton"]/a


*** Keywords ***
Navigate To "Process Expense Reimbursements and Cash Advances"
    Sleep  5s
    click link  ${PROCESS_EXPENSE_REIMBURSEMENTS}
    Sleep  5s


Select the "Business Unit"
    sleep  5s
    SELECT FROM LIST BY LABEL  ${BUSINESS_UNIT}  SOAIS

Select the "Type"
    sleep  5s
    SELECT FROM LIST BY LABEL  ${TYPE}  Cash Advances

Select "Submit"
    sleep  5s
    wait dynamically for an element and then click  ${SUBMIT}

Select "Confirmation Box"
    sleep  5s
    Click Button  OK



Steps for "Process Expense Reimbursements and Cash Advances"
    Select the "Business Unit"
    Select the "Type"
    Select "Submit"
    Select "Confirmation Box"

