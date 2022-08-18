*** Settings ***
Documentation    Use this layer to get data from external files
Library    ../../CustomLibs/Csv.py
Library    ../../CustomLibs/Read_Data_Excel.py

*** Keywords ***
Get CSV Data
    [Arguments]    ${FilePath}
    ${Data} =  read csv file  ${FilePath}
    [Return]   ${Data}

Read Number of Rows
    [Arguments]    ${sheetname}
    ${maxr}=    Max Number Of Rows    ${sheetname}
    [Return]    ${maxr}

Read Excel Data of Cell
    [Arguments]    ${sheetname}    ${row}    ${cell}
    ${celldata}=    Cell Data    ${sheetname}    ${row}    ${cell}
    [Return]    ${celldata}

Read Number of Cols
    [Arguments]    ${sheetname}
    ${maxc}=    Max Number Of Cols    ${sheetname}
    [Return]    ${maxc}

    
