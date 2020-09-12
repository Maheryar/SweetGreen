*** Settings ***
Documentation    Suite description
Resource   ../Variables/TestVariables.robot
Library  ../CstmLibs/Csv.py

*** Keywords ***
Start Automation Setup
    Open Browser  ${url}   ${Browser}
    Wait Until Page Contains   sweetgreen | Inspiring healthier communities
    Set Window Size   1900  1900

Assert Seasonal Item01
     ${assert_seasonal_item01}=  Get Text   ${seasonal_item01}
     should be equal as strings  ${assert_seasonal_item01}   ${check_seasonal_item01}
Assert Seasonal Item02
     ${assert_seasonal_item02}=  Get Text   ${seasonal_item02}
     should be equal as strings  ${assert_seasonal_item02}   ${check_seasonal_item02}
Assert Seasonal Item03
     ${assert_seasonal_item03}=  Get Text   ${seasonal_item03}
     should be equal as strings  ${assert_seasonal_item03}   ${check_seasonal_item03}
Assert Seasonal Item04
     ${assert_seasonal_item04}=  Get Text   ${seasonal_item04}
     should be equal as strings  ${assert_seasonal_item04}   ${check_seasonal_item04}
Assert Warm Bowl Item01
     ${assert_warmbowl_item01}=  Get Text   ${warm_bowl_item01}
     should be equal as strings  ${assert_warmbowl_item01}   ${check_warmbowel_item01}

Assert Warm Bowl Item02
     ${assert_warmbowl_item02}=  Get Text   ${warm_bowl_item02}
     should be equal as strings  ${assert_warmbowl_item02}   ${check_warmbowel_item02}

Assert Warm Bowl Item03
     ${assert_warmbowl_item03}=  Get Text   ${warm_bowl_item03}
     should be equal as strings  ${assert_warmbowl_item03}   ${check_warmbowel_item03}

Assert Warm Bowl Item04
     ${assert_warmbowl_item04}=  Get Text   ${warm_bowl_item04}
     should be equal as strings  ${assert_warmbowl_item04}   ${check_warmbowel_item04}

Assert Warm Bowl Item05
     ${assert_warmbowl_item05}=  Get Text   ${warm_bowl_item05}
     should be equal as strings  ${assert_warmbowl_item05}   ${check_warmbowel_item05}

@{saverowsofdata}   Get CSV Data   ${CSV_FILE_PATH_STORED_HERE}
Fill The Form
    @{saverowsofdata} =  Get CSV Data   ${CSV_FILE_PATH_STORED_HERE}
    sleep  2s
    :FOR  ${singlerows}   IN   @{saverowsofdata}
    \   log   ${singlerows}
    \   Run Keyword And Continue on Failure   Input Text   ${first_name_field}    ${singlerows[0]}
    \   Run Keyword And Continue on Failure   Input Text   ${last_name_field}     ${singlerows[1]}
    \   Run Keyword And Continue on Failure   Input Text   ${email_field}         ${singlerows[2]}
    \   Run Keyword And Continue on Failure   Input Text   ${phone_num}           ${singlerows[3]}
    \   Run Keyword And Continue on Failure   Input Text   ${title}               ${singlerows[4]}
    \   Run Keyword And Continue on Failure   Input Text   ${company}             ${singlerows[5]}
    \   Run Keyword And Continue on Failure   Select From List By Label   ${num_of_employees}    ${singlerows[6]}
    \   Run Keyword And Continue on Failure   Input Text   ${street_name}         ${singlerows[7]}
    \   Run Keyword And Continue on Failure   Input Text   ${city}                ${singlerows[8]}
    \   Run Keyword And Continue on Failure   Input Text   ${state}               ${singlerows[9]}
    \   Run Keyword And Continue on Failure   Input Text   ${zip_code}            ${singlerows[10]}
    \   Run Keyword And Continue on Failure   Input Text   ${country}             ${singlerows[11]}
    \   Run Keyword And Continue on Failure   Select From List By Label   ${question}            ${singlerows[12]}
    \   Clear The Form

Clear The Form
    Clear Element Text   ${first_name_field}
    Clear Element Text   ${last_name_field}
    Clear Element Text   ${email_field}
    Clear Element Text   ${phone_num}
    Clear Element Text   ${title}
    Clear Element Text   ${company}
    Clear Element Text   ${street_name}
    Clear Element Text   ${city}
    Clear Element Text   ${state}
    Clear Element Text   ${zip_code}
    Clear Element Text   ${country}

Get CSV Data
    [Arguments]  ${FilePath}   # pass in filepath for csv file
    ${Data} =   SG csv file   ${FilePath}
    [Return]  ${Data}