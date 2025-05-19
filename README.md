# The Look E-Commerce ETL & Data Warehouse

## Project Overview

Proyek ini bertujuan untuk membangun pipeline ETL (Extract, Transform, Load) dan Data Warehouse dari data e-commerce milik The Look yang tersedia di Google BigQuery.
Data yang sudah diolah kemudian dimuat ke dalam sistem manajemen basis data PostgreSQL untuk keperluan analisis penjualan.

---

## Tools & Technology
- Google BigQuery – Sumber data
- PySpark – Transformasi data
- PostgreSQL – Data Warehouse
- VS Code – IDE
- SQL – Query untuk Extract dan DDL
- Google Slides – Presentasi bisnis dan data modeling

## Data Warehouse Design

### Business Process

Fokus dari data warehouse adalah menganalisis proses penjualan dalam platform e-commerce, yang melibatkan entitas seperti:
- Customer
- Product
- Order
- Order Item

### Schema Design
- Schema Type: Star Schema
- Fact Table:
  * fact_orders
- Dimension Tables:
  * dim_customers
  * dim_products
  * dim_dates

Diagram dan penjelasan lebih lengkap dapat ditemukan di Google Slide (lihat bagian akhir README).

## ETL Pipeline Steps

1. Extract
   - Mengambil data dari BigQuery berdasarkan struktur Fact & Dimension Table.
   - Menyimpan hasil query dalam format .csv.

2. Transform
   - Dilakukan menggunakan PySpark:
   - Rename kolom
   - Format data (tanggal, tipe data)
   - Menghapus missing/null value
   - Menyesuaikan struktur tabel sesuai skema data warehouse

4. Load
   - Membuat schema dan table di PostgreSQL
   - Load hasil transformasi ke masing-masing tabel di PostgreSQL

--- 
