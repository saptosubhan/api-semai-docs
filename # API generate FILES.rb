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
    rows: [
        { #category rekening_koran
            tanggal_transaksi: "2025-01-01",
            bank: "BCA",
            kode_billing: "1234567890",
            jumlah_pungutan: 100000.00
        },
        { #category kepmendag_merk
            nama_merek: "AFRICA SUPER OLIO",
            pemilik_merek: "PT. Berkah Emas Sumber Terang",
            pemroduksi_merek: "PT. Royal Industries Indonesia",
            nomor_keputusan: "NOMOR 2018 TAHUN 2023"
        }
    ] # isi data dalam bentuk arrays
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

