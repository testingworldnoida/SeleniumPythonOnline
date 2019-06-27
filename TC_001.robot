*** Settings ***
Library  SeleniumLibrary


*** Test Cases ***
TC_001_Posting
    open browser     https://panel.postfity.com/login#/   Chrome
    maximize browser window
    click element    xpath=//span[text()='Login with LinkedIn']
    wait until page contains element   id=username
    clear element text  id=username
    input text  id=username   testingworldqa@gmail.com
    input text  id=password   Testing@2017
    click button   xpath=//button[@type='submit']
    click button   xpath=//button[text()='No, thanks']
    click button   xpath=(//span[@class='account-bg'])[2]