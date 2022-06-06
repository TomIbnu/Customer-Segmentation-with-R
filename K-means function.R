#Bagian Data Preparation
Customer <- read.csv("customer sample dataset.txt", sep="\t")
Customer_matrix <- data.matrix(Customer[c("Jenis.Kelamin", "Profesi", "Tipe.Residen")])
Customer <- data.frame(Customer, Customer_matrix)
Profesi <- unique(Customer[c("Profesi","Profesi.1")])
Jenis.Kelamin <- unique(Customer[c("Jenis.Kelamin","Jenis.Kelamin.1")])
Tipe.Profesi <- unique(Customer[c("Tipe.Residen","Tipe.Residen.1")])
Customer$NilaiBelanjaSetahun <- pelanggan$NilaiBelanjaSetahun/1000000
field_yang_digunakan = c("Jenis.Kelamin.1", "Umur", "Profesi.1", "Tipe.Residen.1","NilaiBelanjaSetahun")

#Bagian K-Means
set.seed(100)

#fungsi kmeans untuk membentuk 5 cluster dengan 25 skenario random dan simpan ke dalam variable segmentasi
segmentasi <- kmeans(x=pelanggan[field_yang_digunakan], centers=5, nstart=25)

#fungsi kmeans untuk membentuk 5 cluster dengan 25 skenario random dan simpan ke dalam variable segmentasi
segmentasi <- kmeans(x=Customer[field_yang_digunakan], centers=5, nstart=25)

#tampilkan hasil k-means
segmentasi
