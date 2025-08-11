# API generate FILES

## BPDP -> SEMAI
### Request
{
    file_id: 1, # ID file upload di database
    file_url: "https://example.com/storage/uploads/rekening-koran/evidence/file.xlsx", # URL untuk mengakses file
    category: "rekening_koran", # Kategori file upload, contoh "rekening_koran", "master_hpe", "keberatan_sp3es", "restitusi"
    request_id: "RAND-UUID" # UUID dari BPDP
}
### Response
{
    status: 200, 403, dll..
    message: success, failed, error, etc..
    data : {} # optional jika ada
}


## SEMAI -> BPDP
### Request
{
    file_id: 123,
    request_id: "RAND-UUID", # UUID dari SEMAI
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
##Request tarif pungutan BPDP ke SEMAI
{
    request_id: "RAND-UUID", # UUID dari BPDP
    category: "tarif_pungutan",
    uraian_lhp: "",
    tarif_pungutan: "",
    
}
##Response tarif pungutan BPDP ke SEMAI
{
    status: 200, 403, dll..
    message: success, failed, error, etc..
    data : {} # optional jika ada               
}

##Request tarif pungutan SEMAI ke BPDP
{
    request_id: "RAND-UUID", # UUID dari SEMAI
    category: "tarif_pungutan",
    kelompok_tarif: "I,II,III,IV,etc...",
    nilai_tarif: "20, 7.5, 5,etc...",
    satuan_nilai_tarif: "percent, usd"
}
##Response tarif pungutan SEMAI ke BPDP
{
    status: 200, 403, dll..
    message: success, failed, error, etc..
    data : {} # optional jika ada               
}