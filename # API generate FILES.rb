# API generate FILES

## SUCOFINDO -> SEMAI
### Request
{
    file_id: 1, # ID file upload di database
    file_url: "https://example.com/storage/uploads/rekening-koran/evidence/file.xlsx", # URL untuk mengakses file
    category: "rekening_koran", # Kategori file upload, contoh "rekening_koran", "master_hpe", "keberatan_sp3es", "restitusi"
    request_id: "a12f6b1e-4d98-4b22-bc41-2f6b9c3e8e9f" # UUID dari SUCOFINDO
}
### Response
{
    status: 200, 403, dll..
    message: success, failed, error, etc..
    data : {} # optional jika ada
}


## SEMAI -> SUCOFINDO
### Request
{
    file_id: 123,
    request_id: "a12f6b1e-4d98-4b22-bc41-2f6b9c3e8e9f", # UUID dari SEMAI
    category: "rekening_koran", # Kategori file upload, contoh "rekening_koran", "master_hpe", "keberatan_sp3es", "restitusi"
    row_count: 20, # jumlah rows data (khusus untuk bulk insert)
    rows: [] # isi data dalam bentuk arrays
}
### Response
{
    status: 200, 403, dll..
    message: success, failed, error, etc..
    data : {} # optional jika ada
}


# API tarif pungutan
#Request
{
    request_id: "a12f6b1e-4d98-4b22-bc41-2f6b9c3e8e9f", # UUID dari SUCOFINDO
    category: "rekening_koran",
    
}
#Response   
{
    status: 200, 403, dll..
    message: success, failed, error, etc..
    data : {} # optional jika ada               
}