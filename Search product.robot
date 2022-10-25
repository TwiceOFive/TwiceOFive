*** Settings ***
Documentation     Selenium
Library           SeleniumLibrary

###############################

*** Variables ***

###############################

*** Test Cases ***
Should be able to search and add product to cart
    Open browser   https://www.alza.sk/     chrome
    sleep    3s
    maximize browser window
    sleep    2s
    click link    xpath=//*[@id="rootHtml"]/body/alza-component-head/div[7]/div/div/div[2]/a[1]
    sleep    2s
    Input text     id=edtSearch    Xbox Series X
    sleep    2s
    click element    xpath=//*[@id="btnSearch"]
    sleep    2s
    scroll element into view    xpath=//*[@id="boxes"]/div[1]/div[2]/div[1]/span/div/div/a
    sleep    2s
    click link     xpath=//*[@id="boxes"]/div[1]/div[1]/div[2]/a
    sleep    2s
    scroll element into view    xpath=//*[@id="detailText"]/div[3]/div[4]/div[1]/a/div[1]/img
    sleep    2s
    click element    CSS=#detailText > div.price-detail > div.price-detail__row > div.price-detail__right-col > div > a.btnx.new.green.buy.js-buy-button
    sleep    2s
    click link    id=varBToBasketButton
    sleep    2s
    scroll element into view    CSS=#blockLine-0 > div.pager
    sleep    2s
    click link    css=#blockBtnRight > a
    sleep    6s
    close browser



