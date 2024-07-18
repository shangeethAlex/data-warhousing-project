

CREATE TABLE Dim_Track
(
	TrackSK int IDENTITY(1,1) NOT NULL PRIMARY KEY,
	AlternativeTrackId INT NOT NULL,
    Track_Name NVARCHAR(200) NOT NULL,
    AlbumId INT ,
    MediaTypeId INT,
	MediaType_Name NVARCHAR(120),
    GenreId INT,
	Genere_Name NVARCHAR(120),
    Composer NVARCHAR(220),
    Milliseconds INT NOT NULL,
    Bytes INT,
    UnitPrice NUMERIC(10,2) NOT NULL,
	Artist_Name NVARCHAR(120),
	Album_Title NVARCHAR(160) NOT NULL,
	Playlist_Name NVARCHAR(120),
	InsertDate datetime,
	ModifiedDate datetime

);

CREATE TABLE Dim_Customer
(
    CustomerSK INT NOT NULL PRIMARY KEY,
	AlternativeCustomerId INT NOT NULL,
    FirstName NVARCHAR(40) NOT NULL,
    LastName NVARCHAR(20) NOT NULL,
    Company NVARCHAR(80),
    Address NVARCHAR(70),
    City NVARCHAR(40),
    State NVARCHAR(40),
    Country NVARCHAR(40),
    PostalCode NVARCHAR(10),
    Phone NVARCHAR(24),
    Fax NVARCHAR(24),
    Email NVARCHAR(60) NOT NULL,
	StartDate	datetime,
	EndDate		datetime,
	InsertDate datetime,
	ModifiedDate datetime,
);

CREATE TABLE Dim_Employee
(
    EmployeeSK INT NOT NULL PRIMARY KEY,
	AlternativeEmployeeId INT NOT NULL,
    LastName NVARCHAR(20) NOT NULL,
    FirstName NVARCHAR(20) NOT NULL,
    Title NVARCHAR(30),
    ReportsTo INT ,
    BirthDate DATETIME,
    HireDate DATETIME,
    Address NVARCHAR(70),
    City NVARCHAR(40),
    State NVARCHAR(40),
    Country NVARCHAR(40),
    PostalCode NVARCHAR(10),
    Phone NVARCHAR(24),
    Fax NVARCHAR(24),
    Email NVARCHAR(60),
	InsertDate datetime,
	ModifiedDate datetime,
);




-- Fact Table
CREATE TABLE Fact_InvoiceLine
(
    InvoiceLineId INT NOT NULL PRIMARY KEY,
    InvoiceId INT NOT NULL FOREIGN KEY REFERENCES Invoice(InvoiceId),
    TrackId INT NOT NULL FOREIGN KEY REFERENCES Dim_Track(TrackSK),
	CustomerId INT NOT NULL,
    UnitPrice NUMERIC(10,2) NOT NULL,
    Quantity INT NOT NULL,
    InvoiceDate DATETIME NOT NULL,
    BillingAddress NVARCHAR(70),
    BillingCity NVARCHAR(40),
    BillingState NVARCHAR(40),
    BillingCountry NVARCHAR(40),
    BillingPostalCode NVARCHAR(10),
    Total NUMERIC(10,2) NOT NULL,
	InsertDate datetime,
	ModifiedDate datetime,
);