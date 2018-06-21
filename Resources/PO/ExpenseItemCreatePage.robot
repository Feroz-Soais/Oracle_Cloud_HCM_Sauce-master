*** Settings ***
Library  Selenium2Library
Resource  ../CommonWeb.robot


*** Variables ***

${ITEM_DATE} =  xpath=//*[@id="_FOpt1:_FOr1:0:_FOSritemNode_my_information_expenses:0:MAnt2:1:AP1:StartDate::content"]
${ITEM_TEMPLATE} =  xpath=//*[@id="_FOpt1:_FOr1:0:_FOSritemNode_my_information_expenses:0:MAnt2:1:AP1:ExpenseTemplateId::content"]
${ITEM_TYPE} =  xpath=//*[@id="_FOpt1:_FOr1:0:_FOSritemNode_my_information_expenses:0:MAnt2:1:AP1:ExpenseTypeId::content"]
${ITEM_AMOUNT} =  xpath=//*[@id="_FOpt1:_FOr1:0:_FOSritemNode_my_information_expenses:0:MAnt2:1:AP1:ReceiptAmount::content"]
${ITEM_NOS_OF_DAYS} =  xpath=//*[@id="_FOpt1:_FOr1:0:_FOSritemNode_my_information_expenses:0:MAnt2:1:AP1:NumberOfDays::content"]
${ITEM_DESCRIPTION} =  xpath=//*[@id="_FOpt1:_FOr1:0:_FOSritemNode_my_information_expenses:0:MAnt2:1:AP1:Description::content"]
${ITEM_MERCHANT_NAME} =  xpath=//*[@id="_FOpt1:_FOr1:0:_FOSritemNode_my_information_expenses:0:MAnt2:1:AP1:MerchantName::content"]
#${ITEM_MERCHANT_NAME} =  xpath=//*[@name='_FOpt1:_FOr1:0:_FOSritemNode_my_information_expenses:0:MAnt2:1:AP1:MerchantName']
${ITEM_PROJECT_ID} =  xpath=//*[@id="_FOpt1:_FOr1:0:_FOSritemNode_my_information_expenses:0:MAnt2:1:AP1:dff_ExpenseDffVOIteratorprojectIdInternetCharges::content"]
${ITEM_UNIT} =  xpath=//*[@id="_FOpt1:_FOr1:0:_FOSritemNode_my_information_expenses:0:MAnt2:1:AP1:dff_ExpenseDffVOIteratorunitInternetCharges::content"]
${ITEM_CITY} =  xpath=//*[@id="_FOpt1:_FOr1:0:_FOSritemNode_my_information_expenses:0:MAnt2:1:AP1:dff_ExpenseDffVOIteratorcityInternetCharges::content"]
${ITEM_SAVE_CLOSE} =  xpath=//*[@id="_FOpt1:_FOr1:0:_FOSritemNode_my_information_expenses:0:MAnt2:1:AP1:SaveAndCloseButton"]
${ITEM_HAMBURGER} =  id=pt1:_UISmmLink
${ITEM_MENU-EXPENSES} =  xpath=//*[@id="pt1:nv_itemNode_my_information_expenses"]
${ITEM_MENU_ADD_EXPENSES} =  id=pt1:nv_itemNode_my_information_expenses
                            #xpath=//a[@id="_FOpt1:_FOr1:0:_FOSritemNode_my_information_expenses:0:_FOTsr1:0:pt0:pt1:r1:0:ITPdtl:0:commandImageLink6"]
${ITEM_ADD_EXPENSE} =  xpath=//a[@id="_FOpt1:_FOr1:0:_FOSritemNode_my_information_expenses:0:_FOTsr1:0:pt0:pt1:r1:0:ITPdtl:0:commandImageLink6"]
*** Keywords ***


Enter Expense Item "Date" Value
    ${sys_date} =  Fetch Current Date  %m/%d/%Y
    wait until page contains element  ${ITEM_DATE}  10s
    input text  ${ITEM_DATE}  ${sys_date}

Select Expense "Template"
    Select From List By Label  ${ITEM_TEMPLATE}  Rent and Regular charges
    sleep  10s

Select Expense Item "Type"
    Select From List By Label  ${ITEM_TYPE}  Internet Charges
    sleep  6s

Enter Expense Item "Amount" Value
    input text  ${ITEM_AMOUNT}  900
    sleep  6s

Enter Expense Item "Number Of Days" Value
    wait until page contains element  ${ITEM_NOS_OF_DAYS}  10s
    input text  ${ITEM_NOS_OF_DAYS}  31

Enter Expense Item "Description" Value
    input text  ${ITEM_DESCRIPTION}  Monthly internet charges

Enter Expense Item "Merchant Name" Value
    input text  ${ITEM_MERCHANT_NAME}  Airtel
    sleep  5s

Select Expense Item "Project Id"
    sleep  6s
    select from list by label  ${ITEM_PROJECT_ID}  Concentrix
    sleep  5s

Select Expense Item "Unit"
    sleep  4s
    select from list by label  ${ITEM_UNIT}  2

Select Expense Item "City"
    sleep  5s
    select from list by label  ${ITEM_CITY}  New Delhi

Click "Save & Close"
    wait dynamically for an element and then click  ${ITEM_SAVE_CLOSE}

Enter Create Expense Item Data
    Enter Expense Item "Date" Value
    Select Expense "Template"
    Select Expense Item "Type"
    Enter Expense Item "Amount" Value
    Enter Expense Item "Number Of Days" Value
    Enter Expense Item "Description" Value
    Enter Expense Item "Merchant Name" Value
    Select Expense Item "Project Id"
    Select Expense Item "Unit"
    Select Expense Item "City"


Click On Add Expense Item
    sleep  3s
    wait dynamically for an element and then click  ${ITEM_ADD_EXPENSE}
    sleep  4s

Click Hamburger Menu
    Wait Dynamically For An Element And Then Click  ${ITEM_HAMBURGER}

Click Menu Item Expenses
    sleep  4S
    Wait Dynamically For An Element And Then Click  ${ITEM_MENU_ADD_EXPENSES}



