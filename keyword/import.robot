*** Settings ***
Library    SeleniumLibrary
Library    Collections
Library    String
Library    DebugLibrary

# --- Locator layer ---
Resource    ${CURDIR}/../resource/Locator/home_locator.robot
Resource    ${CURDIR}/../resource/locator/product_list_locator.robot
Resource    ${CURDIR}/../resource/locator/product_detail_locator.robot

# --- Variable layer ---
Variables    ${CURDIR}/../Resource/Setting/setting.yaml
Variables    ${CURDIR}/../Resource/Testdata/testdata.yaml


# --- Keyword layer ---
Resource    ${CURDIR}/common.robot
Resource    ${CURDIR}/Pages/home_page.robot
Resource    ${CURDIR}/Pages/product_detail.robot
Resource    ${CURDIR}/Pages/product_list_page.robot
Resource    ${CURDIR}/Features/home_feature.robot
Resource    ${CURDIR}/Features/product_detail_feature.robot
Resource    ${CURDIR}/Features/product_list_feature.robot


