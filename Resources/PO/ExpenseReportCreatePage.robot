*** Settings ***
Library  Selenium2Library
Resource  ../CommonWeb.robot


*** Variables ***

${ITEM_EXPENSE_ITEM} =  xpath=//*[@id="_FOpt1:_FOr1:0:_FOSritemNode_my_information_expenses:0:_FOTsr1:0:pt0:pt1:r1:0:ITPdtl:0:lv3:0:listItem3"]
${ITEM_ACTIONS_SELECT_EXPENSE} =  xpath=//*[@id="_FOpt1:_FOr1:0:_FOSritemNode_my_information_expenses:0:_FOTsr1:0:pt0:pt1:r1:0:ITPdtl:0:m1"]/div/table/tbody/tr/td[2]/a
${ITEM_ACTIONS_DROPDOWN} =  xpath=//*[@id="_FOpt1:_FOr1:0:_FOSritemNode_my_information_expenses:0:_FOTsr1:0:pt0:pt1:r1:0:ITPdtl:0:commandMenuItem6"]
${ITEM_ACTIONS_DUPLICATE} =  xpath=//*[@id="_FOpt1:_FOr1:0:_FOSritemNode_my_information_expenses:0:MAnt2:1:AP1:SaveAndCloseButton"]/table/tbody/tr/td[1]/a
${ITEM_ADD_TO_REPORT} =  xpath=//*[@id="_FOpt1:_FOr1:0:_FOSritemNode_my_information_expenses:0:_FOTsr1:0:pt0:pt1:r1:0:ITPdtl:0:commandToolbarButton4"]/table/tbody/tr/td[1]/a
${ITEM_PURPOSE} =  xpath=//input[@id="_FOpt1:_FOr1:0:_FOSritemNode_my_information_expenses:0:MAnt2:1:AP1:it1::content"]
${ITEM_MANAGER_NAME} =  xpath=//select[@id="_FOpt1:_FOr1:0:_FOSritemNode_my_information_expenses:0:MAnt2:1:AP1:df1G_ExpenseHeaderDffVOIteratormanagerName__FLEX_EMPTY::content"]
${ITEM_SUBMIT} =  xpath=//*[@id="_FOpt1:_FOr1:0:_FOSritemNode_my_information_expenses:0:MAnt2:2:AP1:ctb2"]/table/tbody/tr/td[1]/a
${ITEM_OK_SUBMIT_BUTTON} =  xpath=//*[@id="_FOpt1:_FOr1:0:_FOSritemNode_my_information_expenses:0:MAnt2:2:AP1:OKSubmitDialogButton"]
${ITEM_CREATE_EXPENSE_REPORT} =  xpath=//*[@id="_FOpt1:_FOr1:0:_FOSritemNode_my_information_expenses:0:_FOTsr1:0:pt0:AP1:commandLink1"]
${ITEM_CLICK_ACTIONS_DROPDOWN} =  xpath=//*[@id="_FOpt1:_FOr1:0:_FOSritemNode_my_information_expenses:0:_FOTsr1:0:pt0:pt1:m1"]
${ITEM_CREATE_EXPENSE} =  xpath=//*[@id="_FOpt1:_FOr1:0:_FOSritemNode_my_information_expenses:0:_FOTsr1:0:pt0:pt1:commandMenuItem6"]/td[2]
${ITEM_CLICK_MENU_EXPENSES} =  xpath=//*[@id="pt1:j_id16"]/tbody/tr/td[3]
${ITEM_EXPENSE_REPORT} =  xpath=//*[@id="_FOpt1:_FOr1:0:_FOSritemNode_my_information_expenses:0:_FOTsr1:0:pt0:pt1:r1:0:ITPdc2j_id_1:ITPsh1:0:pt1:pgl2"]
${ITEM_CREATE_REPORT} =  xpath=//a[@id="_FOpt1:_FOr1:0:_FOSritemNode_my_information_expenses:0:_FOTsr1:0:pt0:pt1:r1:0:ITPdtl:1:commandImageLink14"]
${ITEM_ADD_EXISTING} =  xpath=//*[@id="_FOpt1:_FOr1:0:_FOSritemNode_my_information_expenses:0:MAnt2:1:AP1:ctb1"]
${ITEM_ADD_EXISTING_REPORT} =  id=_FOpt1:_FOr1:0:_FOSritemNode_my_information_expenses:0:MAnt2:1:AP1:lv2:0:li2
${ITEM_APPLY} =  id=_FOpt1:_FOr1:0:_FOSritemNode_my_information_expenses:0:MAnt2:1:AP1:cb2
${ITEM_CLICK_OK} =  id=_FOpt1:_FOr1:0:_FOSritemNode_my_information_expenses:0:MAnt2:1:AP1:cb3
${ITEM_CLICK_SUBMIT} =  xpath=//*[@id="_FOpt1:_FOr1:0:_FOSritemNode_my_information_expenses:0:MAnt2:1:AP1:ctb2"]
${ITEM_CLICK_CONFIRM} =  xpath=//*[@id="_FOpt1:_FOr1:0:_FOSritemNode_my_information_expenses:0:MAnt2:1:AP1:OKSubmitDialogButton"]

*** Keywords ***

Find And Click Expense Item
    sleep  5s
    wait dynamically for an element and then click   ${ITEM_EXPENSE_ITEM}

#""" Following are for expense report

Find And Click Expense Report
    sleep  5s
    wait dynamically for an element and then click   ${ITEM_EXPENSE_REPORT}
    sleep  5s

Click Create Expense Report
    sleep  5s
    wait dynamically for an element and then click   ${ITEM_CREATE_REPORT}

Click Add Existing
    sleep  5s
    wait dynamically for an element and then click   ${ITEM_ADD_EXISTING}

Add Latest Report
    sleep  5s
    wait dynamically for an element and then click   ${ITEM_ADD_EXISTING_REPORT}

Click On Apply And Ok
    sleep  5s
    wait dynamically for an element and then click   ${ITEM_APPLY}
    sleep  5s
    wait dynamically for an element and then click   ${ITEM_CLICK_OK}

Click To Submit Report
    sleep  5s
    wait dynamically for an element and then click   ${ITEM_CLICK_SUBMIT}

Click To Confirm Submit
    sleep  5s
    wait dynamically for an element and then click   ${ITEM_CLICK_CONFIRM}

Click Add Existing Report
    Click Add Existing
    Add Latest Report
    Click On Apply And Ok
    Click To Submit Report
    Click To Confirm Submit

Click Actions then Click Duplicate
    sleep  3s
    wait dynamically for an element and then click  ${ITEM_ACTIONS_SELECT_EXPENSE}
    wait dynamically for an element and then click  ${ITEM_ACTIONS_DROPDOWN}
    wait dynamically for an element and then click  ${ITEM_ACTIONS_DUPLICATE}
    sleep  3s

Click Add To Report
    sleep  3s
    Wait Dynamically For An Element And Then Click  ${ITEM_ADD_TO_REPORT}

Input Purpose
    sleep  5s
    Wait Dynamically For An Element And Then Click  ${ITEM_PURPOSE}
    input text  ${ITEM_PURPOSE}  Internet Charges Reimbursement

Input ManagerName
    sleep  3s
    select from list by label  ${ITEM_MANAGER_NAME}  Anirban Chaudhuri
    sleep  4s

Click Submit
    sleep  3s
    wait dynamically for an element and then click  ${ITEM_SUBMIT}
    sleep  4s
    Take Screenshot  AfterSubmit
    sleep  5s
    #Ok Submit Dialogue Button
    wait dynamically for an element and then click   ${ITEM_OK_SUBMIT_BUTTON}
    sleep  5s



Click On Create Expense Report
    Wait Dynamically For An Element And Then Click   ${ITEM_CREATE_EXPENSE_REPORT}

Click On Actions Dropdown
    Wait Dynamically For An Element And Then Click  ${ITEM_CLICK_ACTIONS_DROPDOWN}

Click On Create Expense Item
    Wait Dynamically For An Element And Then Click  ${ITEM_CREATE_EXPENSE}

Click Menu Item Expenses Again
    Wait Dynamically For An Element And Then Click  ${ITEM_CLICK_MENU_EXPENSES}