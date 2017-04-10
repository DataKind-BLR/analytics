# README

This project analyzes of municipal data for real time alerts and forecasts by analysing the data from the eGov SmartCity Public Grievance Redressal (PGR) system.

This is an ongoing collaboration between eGovernments Foundation and [DataKind Bangalore](http://www.datakind.org/chapters/datakind-blr), as part of DataKind's DataCorps.

## About eGovernments Foundation and DataKind

### eGovernments Foundation
[eGovernments Foundation](http://www.egovernments.org/) transforms urban governance with the use of scalable and replicable technology solutions that enable efficient and effective municipal operations, better decision making, and contact-less urban service delivery.

### DataKind
[DataKind](http://www.datakind.org/) is a nonprofit organization that brings leading data scientists together with high impact social organizations through a comprehensive, collaborative approach that leads to shared insights, greater understanding and positive action through data in the service of humanity.

## About the project

We're using data generated by the Corporation of Chennai (CoC). The city generates these complaints via dedicated phone lines and a portal where citizens can raise a complaint. The data we are using contains complaints from 200 wards across Chennai and 93 types of complaints.  

Although the solution is built for the CoC, it is designed to be general enough to work with other municipalities.

There are two goals in mind for this project:
- Forecasts for overall top complaint types across the city
- An alerts and notifications system which raises an alert if an anomaly in the inflow of complaints is detected.


### Sub-modules

* EDA - Dashboard: For exploring & plotting data, and preliminary analysis for Time series modeling
* Time Series Dashboard (forked [here](https://github.com/DataKind-BLR/time-series-dashboard)): For selection of parameters for ARIMA and Exponential smoothing models.
* Gravity: Front-end for the project, where results are tabulated or visualized
* `time-series` : Contains several notebooks in which a few complaint types' data are analyzed. Useful for understanding how time series modeling works
* `alerts` : Contains code and notebooks for the alerts module.
* [eGovs.lib](eGovs.lib): The R library which contains high level APIs for time series modeling and anomaly detection.


## How to run

### Installing the R library

* Install `devtools` using `install.packages("devtools")`
* Execute `devtools::install_github("egovernments/analytics",subdir = "eGovs.lib")`

Additional instructions are available [here](eGovs.lib/README.md)

### Building models and getting output

* Create a config file which contains model specifications. An example can be found here in `eGovs.lib/R/example_config.json`
* Execute `eGovs.lib::execute.all(<path.to.config>, <path.to.output>)`

### Running the front-end
* Collect the output in the previous step, move it to `gravity-backend/data/data.json` (exact name)
* start the 2 servers:
  * navigate to `gravity-backend` and execute `python server.py`
  * navigate to `gravity-frontend` and execute `npm start`

(More details can be found in respective project READMEs)

#### Generating sample data  /\*TODO\*/

## FAQ /\*TODO\*/:
* How do I contribute?
* Something's not working, what do I do?
