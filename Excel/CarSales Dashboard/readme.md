# Data Analysis & Dashboard

Used CarSales Data.

## Tools

 #### Ms Excel

## Task:

#### 1.Data cleaning
#### 2.Analyze the Data
#### 3.Data Visualization
#### 4.Create Dashboard

### Task to perform

## Data Cleaning:
1.Save the CSV file as an XLSX file:
2.Column widths: Sort out the widths of all columns so that the data is clearly visible in all cells.
3.Empty rows: Use the Filter feature to look for blanks and remove all empty rows from the data.
4.Duplicate records: Use either the Conditional Formatting or Remove Duplicates feature to look for and remove any duplicated records from the data.
5.Spelling: The original source file data has not been checked for errors in the spelling. Check for spelling mistakes in the data and fix them.
6.Whitespace: Use the Find and Replace feature to remove all double-spaces from the data.
7.Department names: When the data was converted from its data source, the department names (see correct list below) didn’t import correctly and they are now split over two columns in the data. Use Flash Fill to reduce the department names to just one column, and then remove any unnecessary columns.


 ## Analyze the Data: (Create Privot Table)

 1.Format the data as a table: Use the Format as Table option to format the data as a table.
 2.Use AutoSum to calculate values: Use AutoSum to find the following values for column ‘C’ and record each of the values:
    -SUM
    -AVERAGE
    -MIN
    -MAX
    -COUNT
 3.Create a Pivot Table: Use the PivotTable feature to create a pivot table that displays the Department field in the Rows section, and 
 the Equipment Count in the Values section, so that the pivot table displays the sum of equipment count by department.
 4.Sort the pivot table data: Use the Sort By Value setting on the pivot table to sort it in descending order by the sum of equipment 
 count.
 5.Make two more pivot tables exactly the same as task 3: Follow the same steps you performed in Tasks 3 and 4 to create two more 
 identical pivot tables so that you end up with 3 worksheets that contain identical pivot tables.
 6.Analyze data in the pivot table: Use the PivotTable Fields pane to manipulate and analyze data in the two copied pivot table as 
  follows:
    1.In pivot table 2 add the Equipment Class field below the Department field so that the different vehicle types appear under each
      department with their respective counts.
    2.Collapse all fields except the top one - Transportation
    3.In pivot table 3 add the Equipment Class field above the Department field so that the different vehicle types appear first, with 
      the different departments listed underneath each vehicle type with their respective counts.
    4.Collapse all fields except the top one - CUV

 ## Data Visualization:

 Create visualizations for the following captured KPI metrics:

 1.‘Quantity Sold’ by ‘Dealer ID’ - as a bar chart, sorted in either ascending or descending order of quantity sold, and change the chart 
  title to “Quantity Sold by Dealer ID” (Hint: Use the pivot table on Sheet1, and use ‘Format’ on the ‘Chart’ tab to change the chart 
  title)
 2.‘Profit’ by ‘Date’ and ‘Model’ - as a line chart, and give the chart a title of “Profit by Date and Model” (Hint: Use the pivot table 
  on Sheet2, and use ‘Chart Title’ on the ‘Chart’ tab to change the chart title)
 3.‘Profit’ by ‘Year’ and ‘Dealer ID’ - as a column chart, titled “Profit by Year and Dealer ID” with the data columns in red (Hint: Use 
  the pivot table on Sheet3, and use ‘Format’ on the ‘Chart’ tab to change the chart title and to format the ‘series’ fill color in red)
 4.‘Sum of Profits’ for ‘Hudson model cars’ by ‘Dealer ID’ - as a line chart, titled “Profit of Hudson Models by Dealer ID”. Also remove 
  the horizontal gridlines from the chart, put the legend on the right side of the chart, and color the series outline in green. (Hint: 
  Use the pivot table on Sheet4, use ‘Gridlines’ in the ‘Axes’ group on the ‘Chart’ tab to remove the gridlines, and use ‘Format’ on the 
  ‘Chart’ tab to change the chart title, to move the legend, and to format the ‘series’ outline color in green)

## Create Dashboard:

1. I have used privot charts to create dashboard.
2.Add filters using slicer & time slicer. Joined filters all other charts except 'profit by handson model by dealer id' so that it works interactively.
3. I have Changed the filters boder,fill,fornt color and size using slicer styles.
4.Set Dashboard background color and also changed the charts color so that It looks unique. 

    
