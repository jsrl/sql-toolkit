# SQL Data Types

## 1. Numeric  
### 🔹 Integers  
- **TINYINT** (8 bits, -128 to 127 or 0 to 255 unsigned)  
- **SMALLINT** (16 bits, -32,768 to 32,767)  
- **MEDIUMINT** (24 bits, -8,388,608 to 8,388,607)  
- **INT / INTEGER** (32 bits, -2,147,483,648 to 2,147,483,647)  
- **BIGINT** (64 bits, ±9 quintillion)  

### 🔹 Decimal and Floating Point  
- **DECIMAL(p, s) / NUMERIC(p, s)** (Fixed precision, p = total digits, s = decimals)  
- **FLOAT** (32-bit, approximate precision)  
- **DOUBLE / REAL** (64-bit, higher precision)  

---

## 2. Text Strings  
- **CHAR(n)** (Fixed-length string, up to 255 characters)  
- **VARCHAR(n)** (Variable-length string, up to 65,535 characters depending on the engine)  
- **TEXT** (Long text, can be `TINYTEXT`, `TEXT`, `MEDIUMTEXT`, `LONGTEXT`)  

---

## 3. Date and Time  
- **DATE** (YYYY-MM-DD)  
- **TIME** (HH:MM:SS)  
- **DATETIME** (YYYY-MM-DD HH:MM:SS)  
- **TIMESTAMP** (Similar to `DATETIME`, but based on UTC time zone)  
- **YEAR** (4-digit year)  

---

## 4. Boolean and Others  
- **BOOLEAN / BOOL** (Alias of `TINYINT(1)`, where 0 = false, 1 = true)  
- **BIT(n)** (Binary value of `n` bits)  
- **BLOB** (Stores binary data like images, videos, etc.)  

---

## 5. Engine-Specific Data Types  
- **PostgreSQL:** `JSONB`, `UUID`, `ARRAY`, `HSTORE`  
- **MySQL:** `ENUM`, `SET`  
- **SQL Server:** `UNIQUEIDENTIFIER`, `XML`, `GEOGRAPHY`  
