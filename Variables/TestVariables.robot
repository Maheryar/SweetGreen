*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary
Resource   ../Resources/SGkeywords.robot
*** Variables ***
${url}   https://www.sweetgreen.com/
${Browser}  chrome
# ***********ASSERTS***************
${check_seasonal_item01}    RUSTIC TOMATO HARVEST BOWL
${check_seasonal_item02}    ROASTED CARROT + FETA BOWL*
${check_seasonal_item03}    GREEN GODDESS AVOCADO SALAD
${check_seasonal_item04}    CRANBERRY RASPBERRY SPINDRIFT
${check_warmbowel_item01}   SHROOMAMI
${check_warmbowel_item02}   CHICKEN PESTO PARM*
${check_warmbowel_item03}   FISH TACO
${check_warmbowel_item04}   HARVEST BOWL
${check_warmbowel_item05}   CHICKEN TOSTADA
#************DATA DRIVEN********************
${CSV_FILE_PATH_STORED_HERE}   C:\\Users\\Viden\\PycharmProjects\\SweetGreen\\Data\\dataSweetGreen.csv

#************HOME PAGE********************
${menu_button}    css=#menu-top-nav-1 > .menu-menu > a
#************MENU PAGE********************
${location_button}   xpath=//*[@id="region"]/div[2]/nav/ul/li[8]/a
${NEXT_button}
#************REQUEST AN OUTPOST FORM PAGE********************
${first_name_field}   id=first_name
${last_name_field}    id=last_name
${email_field}        id=email
${phone_num}          id=phone
${title}              id=title
${company}            id=company
${num_of_employees}   id=00N4P00000GXNhr
${street_name}        id=street
${city}               id=city
${state}              id=state
${zip_code}           id=zip
${country}            id=country
${question}           id=00N4P00000GV77J
#************SEASONAL MENU********************
${seasonal_item01}    css=#post-426 > section:nth-of-type(2) > div > div:nth-of-type(1) > div > div:nth-of-type(1) > div > h2
${seasonal_item02}    css=#post-426 > section:nth-of-type(2) > div > div:nth-of-type(1) > div > div:nth-of-type(2) > div > h2
${seasonal_item03}    xpath=//*[@id="post-426"]/section[2]/div/div[1]/div/div[3]/div/h2
${seasonal_item04}    xpath=//*[@id="post-426"]/section[2]/div/div[1]/div/div[4]/div/h2
#************WARM BOWL MENU********************
${warm_bowl_item01}    css=.top .cols:nth-child(1) h2
${warm_bowl_item02}    css=.top .cols:nth-child(2) h2
${warm_bowl_item03}    css=.top .cols:nth-child(3) h2
${warm_bowl_item04}    css=.top .cols:nth-child(4) h2
${warm_bowl_item05}    css=.top .cols:nth-child(5) h2
#************END OF FILE********************