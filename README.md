Customer-Segmentation_With-R
===
## Table of Content
* **[Dataset Customer Segments](#backg)**
* 
# Dataset Customer Segments
The dataset that we use is customer data with the fields "Customer ID", "Customer Name", "Gender", "Age", "Profession", "Resident Type" and "One Year Shopping Value" with the following display.
The dataset can be show in https://storage.googleapis.com/dqlab-dataset/customer_segments.txt
![image](https://user-images.githubusercontent.com/106945977/173722756-37c046d2-36a1-4814-a915-180e1ecd526e.png)
The dataset consist of 7 feature:
1. Customer ID : Customer code with mixed text format CUST- followed number
2. Customer Name : Name of customer with text format
3. Gender : Gender in customer, only filled with two categorical date which is 'Pria' and 'Wanita'
4. Age : Age from customer with number format
5. Profession : Profession form customer, filled with categorical date consist of 'Wiraswasta','Pelajar','Professional','Ibu Rumah Tangga', and 'Mahasiswa'
6. Resident Type : The type of residence of our customers, for this dataset there are only two categories: 'Cluster' and 'Sector'
7. One year shopping value : That is value one year customer spend, filled with number
It can be seen that there are columns that contain only numbers, namely Age and Years of Spending Value. The rest is filled with category data for the "Gender", "Profession" and "Resident Type" columns. While "Customer ID" and "Customer Name" we consider to have a unique value for each row of data and represent each individual.
Because the "Customer ID" and "Customer Name" columns are unique, they will not be used as variables determining our segmentation, but the rest of the other columns will be used.
# K-Means Function
In this practice, we will segment directly on customer data – which we have prepared for data in the previous chapter – using the kmeans function.

 The kmeans function requires a minimum of 2 parameters, namely:

• x: data used, where all data contents must be numeric.
• centers: desired number of clusters.

And this kmeans function is usually accompanied by a call to the seet.seed function. This is useful for us to "uniform" the list of the same random values from kmeans so that we get the same output.
![image](https://user-images.githubusercontent.com/106945977/173727114-84beab88-acc5-4ef3-a997-ce3677a8b0be.png)
These results can be divided into five parts, with an explanation according to the serial number in the image as follows:
1. Size / number of data points in each cluster
2. The average value (centroid) of each cluster
3. Cluster division of each data element based on its position
4. The sum of the squared distances from each point to the centroid
5. Other information components contained in this kmeans object
# Clustering Vector Result Analysis
 [1] 1 3 5 5 4 3 1 5 2 2 5 5 1 1 3 2 2 1
[19] 2 3 4 5 2 4 2 5 2 4 5 4 3 4 3 3 4 2
[37] 3 4 3 3 3 2 2 3 3 3 5 4 2 5
This clustering vector is a series of vectors containing cluster numbers. From our results, the vector contains the numbers 1 to 5, maximum according to the number of clusters we want.
This vector starts from number 1, which means that the first data from our dataset will be allocated to cluster number 1. From the picture it can also be seen that the contents of the second vector have a value of 3, this means that the second data from our dataset is allocated to cluster number 3, and so on. The last data position (50th) has cluster number 5.
# Means Cluster Analysis
