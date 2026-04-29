CREATE TABLE user (
    id                INT IDENTITY PRIMARY KEY,
    full_name         NVARCHAR(255) NOT NULL,
    gender            NVARCHAR(20),
    email             NVARCHAR(255) UNIQUE,
    phone             NVARCHAR(50) UNIQUE,
    date_of_birth     DATE,
    password_hash     NVARCHAR(255) NOT NULL,
    photo             NVARCHAR(512),
    experience_years  INT CHECK (experience_years >= 0),
    company           NVARCHAR(255),
    country_code      NVARCHAR(10),
    role_id           INT
);
CREATE TABLE role (
    id INT IDENTITY
    name NVARCHAR(255)
)
CREATE TABLE shipments (
    id                          INT IDENTITY(1,1) PRIMARY KEY,
    consumer_id                 INT NOT NULL,                    
    dispatch_date               DATE,                            
    manufacturer_id             INT NOT NULL,                    
    days_in_transit             INT,                             
    carrier_id                  INT,                             
    driver1_id                  INT,                             
    driver2_id                  INT                              
);