*** Settings ***
Suite Setup    Setup Test Suite    Before Test Danh Muc Hang Hoa
Suite Teardown    Teardown Test Suite
Force Tags    GRAB
Resource    ../../core/actions/DongBoDonHang/dongbodonhang-danh_muc_hang_hoa_step_definitions.robot
Resource    ../../core/share/utils.robot
Resource    ../../config/envi.robot
Metadata    Feature    GRAB_DongBoDonHang-Danh Muc Hang Hoa
Metadata    Generated by    _gherkin2robotframework on 2021-08-30T18:21:32.269647_

*** Test Cases ***
Don hang binh thuong khong bi loi: A
    [Documentation]    Documentation for
    [Tags]    GRAB_DB01
    [Template]    Scenario Outline Don hang binh thuong khong bi loi
    Grab Food

Don hang bi loi: A
    [Documentation]    Documentation for
    [Tags]    GRAB_DB02
    [Template]    Scenario Outline Don hang bi loi
    Grab Food

Don hang co ap dung KM tren GF: A
    [Documentation]    Documentation for
    [Tags]    GRAB_DB03
    [Template]    Scenario Outline Don hang co ap dung KM tren GF
    Grab Food

Don hang co topping tren GF: A
    [Documentation]    Documentation for
    [Tags]    GRAB_DB04
    [Template]    Scenario Outline Don hang co topping tren GF
    Grab Food

Don hang GF tung dong bo ve KV: A
    [Documentation]    Documentation for
    [Tags]    GRAB_DB05
    [Template]    Scenario Outline Don hang GF tung dong bo ve KV
    Grab Food


*** Keywords ***
Scenario Outline Don hang binh thuong khong bi loi
    [Arguments]    ${Ten_Ban}
    Given Tao 1 tai khoan admin
    When Login vao MHTN
    And Tao 1 don hang binh thuong tren GF
    And Chon ban bang cach tim kiem    ${Ten_Ban}
    Then Assert thong tin don hang tren GF voi thong tin don hang tren KV

Scenario Outline Don hang bi loi
    [Arguments]    ${Ten_Ban}
    Given Tao 1 tai khoan admin
    When Login vao MHTN
    And Tao 1 don hang bi loi tren GF
    And Chon ban bang cach tim kiem    ${Ten_Ban}
    Then Assert thong tin don hang tren GF voi thong tin don hang tren KV

Scenario Outline Don hang co ap dung KM tren GF
    [Arguments]    ${Ten_Ban}
    Given Tao 1 tai khoan admin
    When Login vao MHTN
    And Tao 1 don hang co ap dung KM tren GF
    And Chon ban bang cach tim kiem    ${Ten_Ban}
    Then Assert thong tin don hang tren GF voi thong tin don hang tren KV

Scenario Outline Don hang co topping tren GF
    [Arguments]    ${Ten_Ban}
    Given Tao 1 tai khoan admin
    When Login vao MHTN
    And Tao 1 don hang co topping tren GF
    And Chon ban bang cach tim kiem    ${Ten_Ban}
    Then Assert thong tin don hang tren GF voi thong tin don hang tren KV

Scenario Outline Don hang GF tung dong bo ve KV
    [Arguments]    ${Ten_Ban}
    Given Tao 1 tai khoan admin
    When Login vao MHTN
    And Tao 1 don hang co topping tren GF
    And Chon ban bang cach tim kiem    ${Ten_Ban}
    Then Assert thong tin don hang tren GF voi thong tin don hang tren KV
    When Them 1 mon an vao don hang vua tao tren GF
    Then Assert thong tin don hang tren GF voi thong tin don hang tren KV

