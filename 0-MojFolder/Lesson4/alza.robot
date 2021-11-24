*** Settings ***
Library   SeleniumLibrary
Resource    ./Keywords/kw.robot
Resource    ./Variables/variables.robot
Test Setup  Open Chrome On Alza Homepage
Test Teardown   Close Browser


*** Test Cases ***
311 Adding a specific item not logged
    Click On Computers and Laptops
    Click On Laptops Category
    Click On Home and Office Category
    Click On Affordable Category
    Click On Best Sellers Header Tab
    Click On 3rd Bestseller Item
    Add To Cart Big
    Wait Until Page Contains    Product Added to Cart
    Check Basket Counter
    Check Basket Price
    Proceed to Checkout
    Location Should Be    https://www.alza.sk/EN/Order1.htm
    Continue Checkout
    Location Should Be    https://www.alza.sk/Order2.htm
    Select Shipping Option
    Select Dispatch Method
    Select Payment Method
    Location Should Be    https://www.alza.sk/Order3.htm


