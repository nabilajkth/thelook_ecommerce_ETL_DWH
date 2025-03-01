[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/lowPEQWt)
# Graded Challenge 6

_Graded Challenge ini dibuat guna mengevaluasi pembelajaran pada Hacktiv8 Comprehensive Data Analytics Program khususnya pada konsep ETL dan Data Warehouse._

---

## Assignment Instructions

*Graded Challenge 6* dikerjakan dalam format **Notebook (.py)**, **SQL File (.sql)**, dan **Google Slide**  di bawah ini:

1. *Project* dinyatakan selesai dan diterima untuk dinilai jika notebook dapat dirun seluruhnya tanpa ada error.

2. Pada tugas Graded Challenge 6, akan diminta untuk membuat:
   -  **Notebook (.ipynb)** yang berisikan pengambilan, pengolahan, dan analisis data. Kerjakan dengan Visual Studio Code!
   -  **SQL Query (.sql)** (2 file) yang berisikan 
   -  **Google Slide**

3. Notebook **wajib** diberikan keterangan atau pengenalan dengan menggunakan `markdown` yang berisikan Judul tugas, Nama, Batch, dan penjelasan singkat tentang program yang dibuat, fitur-fitur. Contoh:
    ```py
    '''
    Graded Challenge 6

    Nama  : Fahmi Iman Alfarizki
    Batch : CODA-RMT-001

    Program ini dibuat untuk melakukan automatisasi pengolahan (cleaning) data text yang berguna untuk pemodelan model analisa sentimen.

    '''
    ```
5. Tiap cell diberikan penjelasan mengenai apa yang dilakukan/dijalankan dengan markdown.

6. **WARNING**: Plagiarisme sekecil apapun dapat terdeteksi. Tugas ini akan diuji tingkat plagiarismenya dengan software khusus.

---

## Assignment Submission

- Simpan assignment pada Graded Challenge 6 ini dengan nama `P2G6_<nama-student>.ipynb` (notebook). Misal `P2G6_fahmi-iman.ipynb`(**Maksimal nama dua suku kata**).
- Push file Assigment yang telah dibuat ke repository Github Classroom masing-masing student.

---

## Assignment Objectives

*Graded Challenge 6* ini dibuat guna mengevaluasi konsep ETL dan Data Modeling sebagai berikut:

  - Mampu melakukan proses Extract data
  - Mampu melakukan proses transformasi data dengan PySpark
  - Mampu mendesain data warehouse berikut dengan Fact dan Dimension table nya
  - Mampu membuat data warehouse pada PostgreSQL
  - Mampu menyimpan data ke dalam data warehouse yang sudah dibuat

---

## Assignment Instructions and Cases

#### Case
Kamu bekerja di perusahaam ecommerce yang bernama 'The Look'. Kamu diminta membuat Data Warehouse untuk kebutuhan analisis perusahaan terkait dengan penjualan.

#### A. Dataset
Dataset yang digunakan berasal dari Google BigQuery database "thelook_ecommerce" yang dapat diakses [disini](https://console.cloud.google.com/bigquery?p=bigquery-public-data&d=thelook_ecommerce).

#### B. Data Modeling
1. Buat desain data warehouse beserta rincian fact table dan dimension table nya.
2. Untuk membuat desain data warehouse, ikuti langkah-langkah berikut:
   - Fokus utama data warehouse ini adalah menyimpan data terkait dengan data penjualan, sehingga proses bisnis hanya berkutat pada penjualan di platform e-commerce
   - Buatkan rincian proses bisnis terkait dengan penjualan untuk dapat mengetahui kebutuhan datanya
   - Tentukan Fact Table (boleh lebih dari satu apabila diperlukan)
   - Buat Dimension Table berdasarkan Fact Table nya
   - Tentukan juga jenis skemanya (Star/Snowflake/Galaxy)
3. Jelaskan desain Data Modeling dari permasalahan bisnisnya (tidak perlu dengan metode SMART, boleh dibuat cerita sendiri), proses bisnis yang sudah diuraikan, dan diagram skema data modelingnya
4. Buat penjelasan poin 3 di dalam Google Slide dan masukan link Google Slidenya di file .ipynb

#### C. Extract
1. Ambil data yang diperlukan dari database BigQuery berdasarkan Fact Table dan Dimension Table dan simpan ke .csv masing-masing output querynya
2. Beri nama file .csv dengan nama bebas
3. Tuliskan sql querynya di file .sql khusus dan beri keterangan per masing-masing group query sql nya untuk menjelaskan query mana untuk data yang mana.
4. Load file-file csv tersebut ke **PySpark dataframe**.

#### D. Transform
1. Lakukan data cleaning dan transformation sesuai dengan Fact Table dan Dimension Table menggunakan PySpark.
2. Proses cleaning dan transform dapat menerapkan merubahan nama kolom, perubahan format data, cek dan hapus missing values, menambah atau menghapus kolom, dll.
3. Proses transform ini dilakukan di dalam file notebook .ipynb. Sangat tidak disarankan dijalankan di Google Colab karena nantinya akan dihubungkan ke database PostgreSQL.

#### E. Load
1. Buat data warehouse yang sudah kamu desain sebelumnya ke database PostgreSQL. Buat Database dan table baru berdasarkan desain skema yang sudah kamu buat.
2. Simpan rangkaian proses DDL nya pada satu file .sql dengan nama file `<datawarehouse_ddl_<nama>.sql`.
3. Load data PySpark yang sudah ditransform ke dalam masing-masing table (Fact dan Dimension) yang sudah dibuat.

#### F. Presentasi
1. Buat slide presentasi dengan Google Slide yang memuat konten:
   - Judul
   - Business Problem
   - Business Process\
     Memuat proses bisnis yang didesain pada bagian B.
   - Data Modeling\
     Menjelaskan skema desain data warehouse berdasarkan ketentuan bagian B.
   - ETL Process\
     Jelaskan proses Extract, Transform, dan Load nya
2. Masukan link Google Slide ke dalam file notebook .ipynb nya di cell terakhir. Pastikan bahwa file bisa dilihat oleh semua user.
3. Slide akan dipresentasikan di sesi presentasi Graded Challenge 6.

## Assignment Rubrics

|**Key Component**|**Description**|**Points**|
|---|---|---|
|Business Knowledge|Siswa mampu membuat proses bisnis untuk dijadikan acuan melakukan data modeling |6 pts|
|Data Modeling|Siswa mampu mendesain data warehouse beserta fact table dan dimension table nya |8 pts|
|SQL DDL|Siswa dapat membuat data warehouse dengan query di PostgreSQL |6 pts|
|PySpark|Siswa mampu mencoba melakukan data cleaning dan transformation dengan PySPark |4 pts|
|Load|Siswa mampu menghubungkan PySpark dengan database PostgreSQL secara lokal |3 pts|
|SQL DML|Siswa dapat mengisi data ke data warehouse |4 pts|
|Readability|Semua cell di notebook dan sql terdokumentasikan dengan baik |4 pts|
|Presentation|Siswa membuat slide sesuai dengan instruksi |2 pts|

**Total: 37 pts**

---
## Score Reduction

Jika Student terlambat mengumpulkan dengan waktu yang ditentukan, maka Graded Challenge akan diberi poin nol.

--- 
