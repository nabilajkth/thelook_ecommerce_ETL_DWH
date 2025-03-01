-- Mengambil Data untuk Fact Table
SELECT
    oi.id AS transaction_id,         -- Menggunakan ID dari order_items sebagai transaction_id
    o.order_id,                      -- ID pesanan
    o.user_id,                       -- ID pengguna
    oi.product_id,                   -- ID produk
    DATE(oi.created_at) AS date_id,  -- Tanggal transaksi
    p.retail_price,                  -- Harga jual produk (bisa berbeda dari harga retail)
    o.num_of_item AS quantity,                          -- Jumlah item yang dibeli
    (o.num_of_item * p.retail_price) AS total_amount    -- Total harga transaksi
FROM
    bigquery-public-data.thelook_ecommerce.order_items AS oi
    INNER JOIN bigquery-public-data.thelook_ecommerce.orders AS o 
        ON oi.order_id = o.order_id
    INNER JOIN bigquery-public-data.thelook_ecommerce.products AS p 
        ON oi.product_id = p.id
    INNER JOIN bigquery-public-data.thelook_ecommerce.users AS u 
        ON o.user_id = u.id
ORDER BY date_id DESC;

-- Ambil data untuk Dimension Table (dim_user)
SELECT 
    id AS user_id, 
    first_name, 
    last_name, 
    email, 
    age, 
    city
FROM `bigquery-public-data.thelook_ecommerce.users`
ORDER BY user_id;

-- Ambil data untuk Dimension Table (dim_product)
SELECT 
    id AS product_id, 
    name AS product_name, 
    brand AS product_brand, 
    retail_price, 
    cost
FROM `bigquery-public-data.thelook_ecommerce.products`
ORDER BY id;

-- Ambil data untuk Dimension Table (dim_date) dari Table Orders_items
SELECT DISTINCT
    DATE(created_at) AS date_id,   -- ID utama dalam format YYYY-MM-DD
    EXTRACT(YEAR FROM created_at) AS year,
    EXTRACT(QUARTER FROM created_at) AS quarter,
    EXTRACT(MONTH FROM created_at) AS month,
    EXTRACT(DAY FROM created_at) AS day,
    EXTRACT(WEEK FROM created_at) AS week_of_year,
    EXTRACT(DAYOFWEEK FROM created_at) AS day_of_week,  -- 1 = Minggu, 7 = Sabtu
    FORMAT_DATE('%A', DATE(created_at)) AS day_name,   -- Nama hari (Senin, Selasa, ...)
    FORMAT_DATE('%B', DATE(created_at)) AS month_name, -- Nama bulan (Januari, Februari, ...)
    CASE 
        WHEN EXTRACT(DAYOFWEEK FROM created_at) IN (1, 7) THEN 'Weekend'
        ELSE 'Weekday'
    END AS is_weekend  -- Menandai apakah tanggal termasuk akhir pekan
FROM `bigquery-public-data.thelook_ecommerce.order_items`
ORDER BY date_id;