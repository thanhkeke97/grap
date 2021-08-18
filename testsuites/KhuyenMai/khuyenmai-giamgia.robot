*** Settings ***
Documentation    As a tester
...      I want to
...      So I can
Suite Setup    Setup Android App Test Suite    Before Test Android App Pos
Suite Teardown    Teardown Android App Test Suite
Force Tags    TNKM
Resource    ../../core/actions/KhuyenMai/khuyenmai-giamgia_step_definitions.robot
Resource    ../../core/share/utils.robot
Resource    ../../config/envi.robot
Metadata    Feature    TNKM_KhuyenMai-GiamGia
Metadata    Generated by    _gherkin2robotframework on 2021-08-18T09:34:32.269000_

*** Test Cases ***
TN_KM_01
    [Tags]    TN_KM_01
    Given Setup Test Case
    ${DataTable}=    Create List
    FOR    ${table}    ${list_pr_code}    IN
    ...    Bàn TN_KMTT_01    HTMHTN0202
        ${entry}=    Create Dictionary    table=${table}    list_pr_code=${list_pr_code}
        Append To List    ${DataTable}    ${entry}
    END
    When Tao don hang tren UI    @{DataTable}
    And Kiem tra icon hop qua khuyen mai
    And Click icon hop qua
    ${DataTable}=    Create List
    FOR    ${name_promotion}    IN
    ...    Khuyến mại 01
        ${entry}=    Create Dictionary    name_promotion=${name_promotion}
        Append To List    ${DataTable}    ${entry}
    END
    And Kiem tra thong tin chuong trinh khuyen mai tren popup    @{DataTable}
    And Ap dung chuong trinh khuyen mai
    And Kiem tra thong tin chuong trinh khuyen mai duoc ap dung
    And Click vao button thanh toan don
    ${DataTable}=    Create List
    FOR    ${GiamGia}    IN
    ...    10000
        ${entry}=    Create Dictionary    GiamGia=${GiamGia}
        Append To List    ${DataTable}    ${entry}
    END
    Then Assert don hang ap dung chuong trinh khuyen mai    @{DataTable}
    And Teardown test Case

TN_KM_02
    [Tags]    TN_KM_02
    Given Setup Test Case
    When Tao don hang tren UI
    And Ap dung chuong trinh khuyen mai nhieu dieu kien
    And Thanh toan don hang
    Then Assert thong tin khuyen mai


