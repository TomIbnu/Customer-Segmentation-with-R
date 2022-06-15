Customer-Segmentation_With-R
===
## Table of Content
* **[Dataset Customer Segments](#backg)**
* **[K-Means Function](#backg)**
* **[Clustering Vector Result Analysis](#backg)**
* **[Means Clustering Analysis](#backg)**
* **[Elbow-Effect Graphic](#backg)**
* **[Sum of Square Analysis Result](#backg)**
* **[Conclusion](#backg)**
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

Cluster     Jenis.Kelamin.1 Umur Profesi.1

1            1.40 61.80000  4.200000

2            1.75 31.58333  3.916667

3            2.00 20.07143  3.571429

4            2.00 42.33333  4.000000

5            1.70 52.50000  3.800000

Cluster Tipe.Residen.1      NilaiBelanjaSetahun
  
1       1.400000            8.696132

2       1.250000            7.330958

3       1.357143            5.901089

4       1.555556            8.804791

5       1.300000            6.01832

From the results above, can be explain that:
1. The first column containing the numbers 1 to 5 represents the cluster number.
2. Column 'Kelamin.1' shows the mean value of the sex data that has been converted to numeric, with 1 representing Male and 2 representing female.
3. In cluster 3 it can be seen that there is only the number 2, meaning that cluster 3 only contains data with a female gender profile. Now, for the first cluster in the form of the number 1.40, it means that the data is mixed but tends to be male (1).
4. The 'Umur' column is a representation of the original dataset without being converted. It can be seen that for the 3rd cluster the average age is 20 years, the age of 61 years for the 1st cluster, and so on.
5. 'Profesi.1' column shows the average professional data for each cluster that has been converted to numeric, namely numbers 1 to 5. Numbers 1, 2, 3, 4, and 5 in this column respectively represent Housewives, Students, Students, Professionals, and Entrepreneurs. 
6. It can be seen for all clusters that the professional values are in the range of 3.5 to 4.2 (3.5 < profession <= 4.2). This shows that the profession tends to be Professional, and strictly speaking the fourth cluster has a profession in the form of Professional.
7. Column 'Tipe.Residen.1' shows the data representation of Type.Resident which has been converted to numeric with the number 1 representing the Cluster and 2 representing the Sector. For the entire cluster, it can be seen that the data is quite spread out between the Sector and Cluster, especially for the 4th cluster where the value of this column is 1.555.
8. Finally, the 'NilaiBelanjaSetahun' column is quite significant in its distribution for each cluster. The 1st and 4th clusters have higher spending values than the other three clusters.
# Elbow-Effect Graphic
From the information generated by the kmeans function, the Sum of Squares (SS) metric or often called the Sum of Squared Errors (SSE) is very important to be used as the basis for determining the optimal number of clusters.
Theoretically, here are some things we can observe with SS:
• The smaller the number of clusters produced, the greater the SS value.

• Vice versa, the more the number of clusters produced, the smaller the SS value.

• Due to its quadratic nature, if there is a significant difference between each cluster combination, the difference in the SS value will be even greater.

• And as the number of clusters increases, the difference between each SS will be smaller.

If entered into a line graph, the plotting of the total SS for each cluster is as follows.
![elbow_effect](https://user-images.githubusercontent.com/106945977/173736541-0b9d420a-9984-4b2a-9c3f-a95ba4bd3d16.png)

The far left point is the number of SS for 1 number of clusters, the second point is for 2 number of clusters, and so on. Notice that the further to the right the difference in distance between each point is getting smaller.
This line graph has a shape like an elbow, and for the optimal number of clusters we usually take the point of the elbow. In the example above we can take 4 or 5.
The decision-making process based on this elbow plotting is what we call the Elbow Effect or the Elbow Method.
# Sum of Square Analysis Result

Within cluster sum of squares by cluster:

[1]  58.21123 174.85164 316.73367

[4] 171.67372 108.49735

 (between_SS / total_SS =  92.4 %)

The concept of sum of squares (SS) is the sum of the "square distances" of the difference between each data point and its mean or centroid. This SS can be the mean or centroid for each cluster or the whole data. Sum of squares in other data science literature is often referred to as Sum of Squared Errors (SSE).
The greater the SS value, the wider the difference between each data point in the cluster.
Based on this concept, the following is an explanation for the Kmeans output results above:
1. The value 316.73367 is the SS for the 3rd cluster, 58.21123 is the SS for the 1st cluster, and so on. The smaller the value, the better the potential.
2. total_SS: is the SS for all points against the global average, not per cluster. This value is always fixed and is not affected by the number of clusters.
3. between_SS: is the total_SS minus the sum of the SS values of the entire cluster.
4. (between_SS / total_SS) is the ratio between between_SS divided by total_SS. The bigger the percentage, generally the better.
# Conclusion
From sum of square and elbow graphic, we can conclude that optimal segmentation in the 5th cluster because from the elbow effect, the best result is 4th and 5th cluster but in the sum of square showed that 5th cluster have less value than 4th cluster which is best potential for cluster.
