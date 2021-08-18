*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
...               ====================================================
...               Generated by update_common_keyworks.py - DO NOT EDIT
...               ====================================================
...
Library           AppiumLibrary
Resource          ../../core/share/utils.robot

*** Keywords ***
FNB AND GetLocator TNH Main Header Title Page
    ${locator}    Set Variable    //android.widget.TextView[contains(@text,'{0}')]
    ${lang_str}    KV Get Language Text    Trả hàng nhập    None
    ${locator}    Format String    ${locator}    ${lang_str}
    [Return]    ${locator}

FNB AND GetLocator TNH Icon Seach
    ${locator}    Set Variable    id=net.citigo.kiotviet.fnb.manager:id/imv_action_filter
    [Return]    ${locator}

FNB AND TNH Icon Seach
    [Arguments]    ${is_wait_visible}=True    ${wait_time_out}=20s
    ${locator}    FNB AND GetLocator TNH Icon Seach
    Run Keyword If    '${is_wait_visible}' == 'True'    KV Wait Until Page Contains Element    ${locator}    ${wait_time_out}
    Run Keyword If    '${is_wait_visible}' == 'True'    KV Wait Until Element Is Visible    ${locator}    ${wait_time_out}
    KV Click Element    ${locator}

FNB AND GetLocator TNH Textbox Ma Phieu Tra
    ${locator}    Set Variable    //android.widget.LinearLayout/android.widget.EditText[1]
    [Return]    ${locator}

FNB AND TNH Textbox Ma Phieu Tra
    [Arguments]    ${text}    ${is_clear_text}=True    ${is_wait_visible}=True    ${wait_time_out}=${20}
    ${locator}    FNB AND GetLocator TNH Textbox Ma Phieu Tra
    Run Keyword If    '${is_wait_visible}' == 'True'    KV Wait Until Page Contains Element    ${locator}    ${wait_time_out}
    Run Keyword If    '${is_wait_visible}' == 'True'    KV Wait Until Element Is Visible    ${locator}    ${wait_time_out}
    KV Input Text   ${locator}    ${text}    ${is_clear_text}

FNB AND GetLocator TNH Text Ap Dung
    ${locator}    Set Variable    id=net.citigo.kiotviet.fnb.manager:id/tv_search_apply
    [Return]    ${locator}

FNB AND TNH Text Ap Dung
    [Arguments]    ${is_wait_visible}=True    ${wait_time_out}=20s
    ${locator}    FNB AND GetLocator TNH Text Ap Dung
    Run Keyword If    '${is_wait_visible}' == 'True'    KV Wait Until Page Contains Element    ${locator}    ${wait_time_out}
    Run Keyword If    '${is_wait_visible}' == 'True'    KV Wait Until Element Is Visible    ${locator}    ${wait_time_out}
    KV Click Element    ${locator}

FNB AND GetLocator TNH First Ma Phieu
    ${locator}    Set Variable    id=net.citigo.kiotviet.fnb.manager:id/l_item_root
    [Return]    ${locator}

FNB AND TNH First Ma Phieu
    [Arguments]    ${is_wait_visible}=True    ${wait_time_out}=20s
    ${locator}    FNB AND GetLocator TNH First Ma Phieu
    Run Keyword If    '${is_wait_visible}' == 'True'    KV Wait Until Page Contains Element    ${locator}    ${wait_time_out}
    Run Keyword If    '${is_wait_visible}' == 'True'    KV Wait Until Element Is Visible    ${locator}    ${wait_time_out}
    KV Click Element    ${locator}

FNB AND GetLocator TNH Text Ten Nha Cung Cap
    ${locator}    Set Variable    id=net.citigo.kiotviet.fnb.manager:id/tv_invoice_customer_name
    [Return]    ${locator}

FNB AND GetLocator TNH Text List Ten Hang Hoa
    ${locator}    Set Variable    //androidx.recyclerview.widget.RecyclerView/android.widget.RelativeLayout/android.widget.TextView[1]
    [Return]    ${locator}

FNB AND GetLocator TNH Text Tong Tien Hang Tra
    ${locator}    Set Variable    id=net.citigo.kiotviet.fnb.manager:id/tv_invoice_detail_price
    [Return]    ${locator}

FNB AND GetLocator TNH Text Giam Gia
    ${locator}    Set Variable    id=net.citigo.kiotviet.fnb.manager:id/tv_invoice_detail_discount
    [Return]    ${locator}

FNB AND GetLocator TNH Text NCC Can Tra
    ${locator}    Set Variable    id=net.citigo.kiotviet.fnb.manager:id/tv_invoice_detail_need_paid
    [Return]    ${locator}

FNB AND GetLocator TNH Text NCC Da Tra
    ${locator}    Set Variable    id=net.citigo.kiotviet.fnb.manager:id/tv_invoice_detail_already_paid
    [Return]    ${locator}

FNB AND GetLocator TNH Icon Extra Menu
    ${locator}    Set Variable    id=net.citigo.kiotviet.fnb.manager:id/menu_delete_purchase
    [Return]    ${locator}

FNB AND TNH Icon Extra Menu
    [Arguments]    ${is_wait_visible}=True    ${wait_time_out}=20s
    ${locator}    FNB AND GetLocator TNH Icon Extra Menu
    Run Keyword If    '${is_wait_visible}' == 'True'    KV Wait Until Page Contains Element    ${locator}    ${wait_time_out}
    Run Keyword If    '${is_wait_visible}' == 'True'    KV Wait Until Element Is Visible    ${locator}    ${wait_time_out}
    KV Click Element    ${locator}

FNB AND GetLocator TNH Button Huy Phieu
    ${locator}    Set Variable    id=net.citigo.kiotviet.fnb.manager:id/content
    [Return]    ${locator}

FNB AND TNH Button Huy Phieu
    [Arguments]    ${is_wait_visible}=True    ${wait_time_out}=20s
    ${locator}    FNB AND GetLocator TNH Button Huy Phieu
    Run Keyword If    '${is_wait_visible}' == 'True'    KV Wait Until Page Contains Element    ${locator}    ${wait_time_out}
    Run Keyword If    '${is_wait_visible}' == 'True'    KV Wait Until Element Is Visible    ${locator}    ${wait_time_out}
    KV Click Element    ${locator}

FNB AND GetLocator TNH Button Confirm Huy Phieu
    ${locator}    Set Variable    id=net.citigo.kiotviet.fnb.manager:id/md_buttonDefaultPositive
    [Return]    ${locator}

FNB AND TNH Button Confirm Huy Phieu
    [Arguments]    ${is_wait_visible}=True    ${wait_time_out}=20s
    ${locator}    FNB AND GetLocator TNH Button Confirm Huy Phieu
    Run Keyword If    '${is_wait_visible}' == 'True'    KV Wait Until Page Contains Element    ${locator}    ${wait_time_out}
    Run Keyword If    '${is_wait_visible}' == 'True'    KV Wait Until Element Is Visible    ${locator}    ${wait_time_out}
    KV Click Element    ${locator}

FNB AND GetLocator TNH Button Confirm Huy Phieu Thanh Toan
    ${locator}    Set Variable    id=net.citigo.kiotviet.fnb.manager:id/md_buttonDefaultPositive
    [Return]    ${locator}

FNB AND TNH Button Confirm Huy Phieu Thanh Toan
    [Arguments]    ${is_wait_visible}=True    ${wait_time_out}=20s
    ${locator}    FNB AND GetLocator TNH Button Confirm Huy Phieu Thanh Toan
    Run Keyword If    '${is_wait_visible}' == 'True'    KV Wait Until Page Contains Element    ${locator}    ${wait_time_out}
    Run Keyword If    '${is_wait_visible}' == 'True'    KV Wait Until Element Is Visible    ${locator}    ${wait_time_out}
    KV Click Element    ${locator}
