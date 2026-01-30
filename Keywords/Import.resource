*** Settings ***
Library      Collections
Library      SeleniumLibrary
Library      DebugLibrary
# --- Resources Layer ---
Variables    ${CURDIR}/../resources/locators/locator.yaml
Variables    ${CURDIR}/../resources/setting/setting.yaml
Variables    ${CURDIR}/../resources/testdata/test_data.yaml
# --- Keywords Layer ---
Resource     ${CURDIR}/Common.robot
Resource     ${CURDIR}/Features/Feature.robot
Resource     ${CURDIR}/Pages/Page_home.robot
Resource     ${CURDIR}/Pages/Page_plp.robot