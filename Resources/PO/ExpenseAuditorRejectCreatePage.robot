*** Settings ***
Library  Selenium2Library
Resource  ../Resources/CommonWeb.robot
Resource  CommonWeb.robot




*** Variables ***
${CLICK_ACTION_BUTTON} =  id=_FOpt1:_FOr1:0:_FONSr2:0:MAnt2:2:pt1:AppPanel:commandToolbarButton1::popArea
//*[@id="_FOpt1:_FOr1:0:_FONSr2:0:MAnt2:2:pt1:AppPanel:commandToolbarButton1::popEl"]
#//*[@id="_FOpt1:_FOr1:0:_FONSr2:0:MAnt2:2:pt1:AppPanel:commandToolbarButton1::popEl"]
#//*[@id="_FOpt1:_FOr1:0:_FONSr2:0:MAnt2:2:pt1:AppPanel:commandToolbarButton1"]
#//*[@id="_FOpt1:_FOr1:0:_FONSr2:0:MAnt2:2:pt1:AppPanel:commandToolbarButton1"]/table/tbody/tr/td[1]/a
#//*[@id="_FOpt1:_FOr1:0:_FONSr2:0:MAnt2:2:pt1:AppPanel:commandToolbarButton1"]/table/tbody/tr/td[1]/a
#//*[@id="_FOpt1:_FOr1:0:_FONSr2:0:MAnt2:2:pt1:AppPanel:commandToolbarButton1::popEl"]
${REJCT_AUDITOR_EXPENSE_REPORT} =   id=_FOpt1:_FOr1:0:_FONSr2:0:MAnt2:2:pt1:AppPanel:rejectReportAction
${ACTION_REASON} =  xpath=//*[@id="_FOpt1:_FOr1:0:_FONSr2:0:MAnt2:2:pt1:AppPanel:soc8::content"]
${CONFIRMATION_BOX} =  xpath=//*[@id="_FOpt1:_FOr1:0:_FONSr2:0:MAnt2:2:pt1:AppPanel:commandButton1"]





*** Keywords ***




Select "Actions" Dropdown
    sleep  5s
#    SELECT FROM LIST BY Value  ${CLICK_ACTION_BUTTON}  Reject Expense Report
     wait dynamically for an element and then click  ${CLICK_ACTION_BUTTON}
    sleep  5s
    wait dynamically for an element and then click  ${REJCT_AUDITOR_EXPENSE_REPORT}

Reject Auditor Expense Report
    sleep  5s
    SELECT FROM LIST BY LABEL  ${ACTION_REASON}  Incomplete original receipt package
    sleep  5s
    click Button  OK
    sleep  5s

Select The Confirmation Box For Reject
    sleep  5s
    wait dynamically for an element and then click  ${CONFIRMATION_BOX}
