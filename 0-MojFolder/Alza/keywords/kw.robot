*** Settings ***
Resource    ../variables/variables.robot

*** Keywords ***
Open Chrome On Alza Homepage
    Open Browser    https://www.alza.sk/EN/   gc
    Set Window Size    1920    1000

Navigate To
    [Arguments]    ${element}    ${wait_for}
    Click Element   ${element}
    Wait Until Element Is Visible    ${wait_for}

Click On Computers and Laptops
    wait until element is visible    ${computers_and_laptops}
    click element    ${computers_and_laptops}

Click On Laptops Category
    wait until element is visible    ${laptops}
    click element    ${laptops}

Click On Home and Office Category
    wait until element is visible    ${home_and_office}
    click element    ${home_and_office}

Click On Affordable Category
    wait until element is visible    ${affordable}
    click element    ${affordable}

Click On Best Sellers Header Tab
    wait until element is visible    ${bestsellers}
    click element    ${bestsellers}
    wait until element is visible    ${circleLoader}
    wait until element is not visible    ${circleLoader}

Click On 3rd Bestseller Item
    wait until element is visible    ${thirdBestItem}
    click element    ${thirdBestItem}

Store Value
    [Arguments]    ${element}
    ${STORE_PRICE} =   get text    ${element}
    set global variable    ${STORE_PRICE}

Add To Cart Big
    wait until element is visible    ${add_to_cart}
    Store Value    ${product_price}
    click element    ${add_to_cart}

Check Basket Counter
    ${basket_count_value} =    get text    ${basket_count}
    should be equal    ${basket_count_value}    1

Check Basket Price
    ${basket_price_value}    get text    ${basket_price}
    should be equal    ${STORE_PRICE}    ${basket_price_value}

Proceed to Checkout
    wait until element is visible    ${proceed_to_checkout}
    click element    ${proceed_to_checkout}

Continue Checkout
    wait until element is visible    ${checkout_continue}
    click element    ${checkout_continue}
    wait until element is visible    ${checkout_modal}
    click element    ${dont_add_anything_modal}
    sleep    3

Select Shipping Option
    wait until element is visible    ${bratislava-main_shop_chk}
    click element    ${bratislava-main_shop_chk}

Select Dispatch Method
    wait until element is visible    ${confirm_selection_btn}
    click element    ${standard_dispatch_radio}
    wait until element is visible    ${standard_dispatch_radio}
    click element    ${confirm_selection_btn}

Select Payment Method
    sleep    2
    wait until element is visible    ${payment_credit_debit_card}
    click element    ${payment_credit_debit_card}
    sleep    2
    wait until element is visible    ${delivery_continue_btn}
    click element    ${delivery_continue_btn}
    sleep    3