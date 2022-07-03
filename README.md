<p>
    <img src="/resources/eyecatcher.png" width="350" />
</p>

# Organizing and analyzing Lab-data
This repository contains the first version of the Eye-lab Logger. It allows visualizing the data collected from the NN project. <br>
**Author:** NN team  <br>
**Email Address:** 

## The project
Bikair is a project developed by students from the 4th Generation EAGLE graduate program. It focuses on testing low-cost Arduino-based sensors in an urban environment such as the city of Würzburg. Eventually, the project aims to correlate in-situ data with relevant Remote Sensing-based parameters. It takes advantage of the recent advancements in the Internet of Things (IoT), which allows the collection of data on specific locations and its further transportation using wireless network protocols. Bikair team designed static and mobile devices using sensors that measure environmental parameters like temperature, humidity, UV radiation, particulate matter (PM1, PM 2.5, PM 10), and soil moisture. These measurements could strengthen a wide range of applications such as monitoring the relationship between urban green and temperature, identifying air pollution hotspots, or supporting the downscaling of satellite remote sensing products.

## Usage

### First Steps 
To visualize the logger, you could follow the next steps:
1. Download the repository 
2. Unzip the file  
3. Open the project `Bikair_Logger_V1.Rproj`
4. Run the code `Main_App.R`

After running the code, a new window with the logger will open. 

### Data Import 
#### Load File
The following step is uploading the data. This is possible from the `Data Import` tab. In the left corner, there is a `Browse` button. By clicking it, you can select the file with the data. It is located in the folder of the repository `\Bikair_Logger_V1-main\Data` <br>
<p>
    <img src="/Resources/Load data.PNG" width="800" />
</p>

#### Table Display
After loading the file, a table with the data will be displayed. In the left panel you can select variables and observe some statistics such as the median, quartiles, and the minimum and maximum value. <br>

The variable selected would work as a starting point for the next steps. It could be changed afterward. <br>

<p>
    <img src="/Resources/data_import.PNG" width="800" />
</p>

<p>
    <img src="/Resources/plots.PNG" width="850" />
</p>
