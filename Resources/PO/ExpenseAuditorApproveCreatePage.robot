*** Settings ***
Library  Selenium2Library
Resource  ../Resources/CommonWeb.robot
Resource  CommonWeb.robot


*** Variables ***
#Go to Tasks
${EXPENSE_REPORT_PENDING} =  Expense Reports Pending Review
${TASK_ITEM} =  xpath=//*[@id="_FOpt1:_FOr1:0:_FONSr2:0:_FOTsdiFndTasksList::disAcr"]
#//*[@id="_FOpt1:_FOr1:0:_FONSr2:0:_FOTsdiFndTasksList::disAcr"]

#Navigate To Manage Expense Reports
${MANAGE_EXPENSE_REPORT} =  xpath=//*[@id="_FOpt1:_FOr1:0:_FONSr2:0:_FOTRaT:0:RAtl1"]
#Select And Audit The Expense Report
${CONTAINS_MANAGE_EXPENSE_REPORT} =  Manage Expense Reports
${REPORT_STATUS} =  xpath=//*[@id="_FOpt1:_FOr1:0:_FONSr2:0:MAnt2:1:pt1:panelGroupLayout2:qryId0:value10::content"]
#id=_FOpt1:_FOr1:0:_FONSr2:0:MAnt2:1:pt1:panelGroupLayout2:qryId0:vPanel1
#xpath=//*[@id="_FOpt1:_FOr1:0:_FONSr2:0:MAnt2:1:pt1:panelGroupLayout2:qryId0:value10::content"]
#                          //*[@id="_FOpt1:_FOr1:0:_FONSr2:0:MAnt2:1:pt1:panelGroupLayout2:qryId0:value10::content"]
${Person_Locator} =  xpath=//*[@id="_FOpt1:_FOr1:0:_FONSr2:0:MAnt2:1:pt1:panelGroupLayout2:qryId0:value30::content"]
#${PERSON} =  Kumar Gour, Jitendra
${SEARCH} =  xpath=//*[@id="_FOpt1:_FOr1:0:_FONSr2:0:MAnt2:1:pt1:panelGroupLayout2:qryId0::search"]
#//*[@id="_FOpt1:_FOr1:0:_FONSr2:0:MAnt2:1:pt1:panelGroupLayout2:qryId0::_afrDscl"]
#Select Suitable Expense Report
${CLICK_THE_REPORT} =  xpath=//*[@id="_FOpt1:_FOr1:0:_FONSr2:0:MAnt2:1:pt1:panelGroupLayout2:t12:_ATp:t1::db"]/table/tbody/tr[1]/td[1]
${AUDIT_EXPENSE_REPORT} =  xpath=//*[@id="_FOpt1:_FOr1:0:_FONSr2:0:MAnt2:1:pt1:panelGroupLayout2:t12:_ATp:createReportButton"]/a
#Audit Expense Report
${EXPENSE_REPORT} =  Expense Report
#Select "Original Receipt Package Check in Date"
${CHECK_IN_DATE} =  xpath=//*[@id="_FOpt1:_FOr1:0:_FONSr2:0:MAnt2:2:pt1:AppPanel:it1::content"]
${CHECKBOX_RECEIPT_VERIFIED} =  xpath=//*[@id="_FOpt1:_FOr1:0:_FONSr2:0:MAnt2:2:pt1:AppPanel:ATT1:_ATTp:tt1:allReceiptVerifiedFlag::content"]
${COMPLETE_AUDIT} =  xpath=//*[@id="_FOpt1:_FOr1:0:_FONSr2:0:MAnt2:2:pt1:AppPanel:completeAuditButton"]/a

#Select Navigate to Auditing from Hamburger Menu
${ITEM_MENU_ADD_AUDITING} =  id=pt1:nv_itemNode_expenses_auditing

#                           xpath=//*[@id="_FOpt1:nv_itemNode_expenses_auditing"]



*** Keywords ***



Go to Tasks
#    wait until page contains element  ${EXPENSE_REPORT_PENDING}
    click element  ${TASK_ITEM}

Navigate To Manage Expense Reports
    sleep  5s
    click link   ${MANAGE_EXPENSE_REPORT}
    sleep  5s

Select And Audit The Expense Report

#    wait until page contains element  ${CONTAINS_MANAGE_EXPENSE_REPORT}
    Sleep  15s
    SELECT FROM LIST BY LABEL   ${REPORT_STATUS}  Pending expense auditor approval
    INPUT TEXT   ${Person_Locator}  Kumar Gour, Jitendra
    sleep  5s
    CLICK BUTTON  ${SEARCH}


Select Suitable Expense Report
    sleep  5s
    click element  ${CLICK_THE_REPORT}
    sleep  5s
    click element  ${AUDIT_EXPENSE_REPORT}
    Sleep  5s

Audit Expense Report
    wait until page contains element  ${EXPENSE_REPORT}
    sleep  5s



Select "Original Receipt Package Check in Date"
    sleep  5s
    ${sys_date} =  Fetch Current Date  %m/%d/%Y
    wait until page contains element  ${CHECK_IN_DATE}  10s
    input text  ${CHECK_IN_DATE}  ${sys_date}

Select On The Checkbox Recept Verified
    sleep  5s
    select checkbox   ${CHECKBOX_RECEIPT_VERIFIED}

select The Complete Audit
    sleep  5s
    click element  ${COMPLETE_AUDIT}
    sleep  5s

Select The Confirmation Box for Complete the Audit
    click button  OK
    Sleep  5s
#    End of the TestCase


Click Menu Item Auditing
    sleep  5s
#    click element  ${ITEM_HAMBURGER}
    wait dynamically for an element and then click  ${ITEM_MENU_ADD_AUDITING}


Navigate for Auditing The Expense Report
        Go to Tasks
        Navigate To Manage Expense Reports
        Select And Audit The Expense Report
        Select Suitable Expense Report
#        Audit Expense Report