*** Settings ***
Library  Selenium2Library
#Resource  ../Resources/CommonWeb.robot
Resource  ../CommonWeb.robot

*** Variables ***
${ITEM_TRAVEL_AND_EXPENSES} =  xpath= //*[@id="_FOpt1:_FOr1:0:_FOSritemNode_my_information_expenses:0:_FOTsr1:0:pt0:AP1:cl1"]
${ITEM_REJECT_REPORTS} =       xpath= //*[@id="_FOpt1:_FOr1:0:_FOSritemNode_my_information_expenses:0:_FOTsr1:1:pt0:pt1:r1:0:ITPdc2j_id_2:ITPsh2:0:pt1:pgl2"]
${ITEM_REPORT_TO_REJECT} =     xpath= //*[@id="_FOpt1:_FOr1:0:_FOSritemNode_my_information_expenses:0:_FOTsr1:1:pt0:pt1:r1:0:ITPdtl:1:lv4:0:panelGridLayout13"]/div[10]
${ITEM_REJECT_REPORT} =        xpath= //*[@id="_FOpt1:_FOr1:0:_FOSritemNode_my_information_expenses:0:_FOTsr1:1:pt0:pt1:r1:0:ITPdtl:1:commandToolbarButton5"]/a


*** Keywords ***
"Go To Travel And Expenses"
    sleep  5s
    wait dynamically for an element and then click   ${ITEM_TRAVEL_AND_EXPENSES}

Navigate To Reject Reports
    sleep  5s
    wait dynamically for an element and then click   ${ITEM_REJECT_REPORTS}



Select And Reject Report
    sleep  5s
    wait dynamically for an element and then click   ${ITEM_REPORT_TO_REJECT}
    sleep  5s
    wait dynamically for an element and then click   ${ITEM_REJECT_REPORT}