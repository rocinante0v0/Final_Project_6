# **Diabetes Analysis Project**

## **Project Description**
This project utilizes the **2015 Behavioral Risk Factor Surveillance System (BRFSS)** dataset to analyze the relationship between **BMI** and diabetes status. The goal is to visualize BMI distributions across three diabetes categories:  
- **0**: No Diabetes  
- **1**: Prediabetes  
- **2**: Diabetes  

The project generates a boxplot summarizing the BMI distribution by diabetes status.

---

## **File Structure**
- **`Data/`**: Contains the dataset used for analysis.  
  - `diabetes_012_health_indicators_BRFSS2015.csv`

- **`Report/`**: Stores the generated report in HTML format.  
  - `Report.html`

- **`Dockerfile`**: Builds a Docker image for rendering the R Markdown report.

- **`Makefile`**: Automates the process of building the Docker image, running the container, and cleaning up outputs.

- **`Report.rmd`**: The R Markdown file that contains the analysis code and generates the report.

---

## **How to Generate the Report**

### **Option 1: Using RStudio**
1. Clone this repository to your local machine:
   ```bash
   git clone https://github.com/rocinante0v0/Final_project_6.git
   cd Final_project_6
   ```

2. Open `Report.rmd` in **RStudio**.

3. Click the **Knit** button in RStudio to generate the HTML report.

---

### **Option 2: Using Docker**

#### **Build Docker Image**
Pull the image from docker hub
```bash
docker pull rocinante0v0/data550_report:latest
```

To build the Docker image for this project, run the following command:
```bash
docker build -t rocinante0v0/data550_report:latest .
```

#### **Generate the Report**
To generate the report and save it to the `Report` directory:
```bash
docker run --rm -v ${PWD}/Report:/project/Report rocinante0v0/data550_report:latest
```

---

## **Code for Tables and Figures**
- **Figure code**: The code for creating the BMI boxplot is included in the `Report.rmd` file under the **`plot_correlation`** chunk.

---

## **Output**
The final HTML report will be stored in the `Report/` directory as:
```
Report/Report.html
```
