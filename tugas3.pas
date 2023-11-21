program tugasKetiga;

uses crt;

var
nama, nim, jurusan, nomorTelepon : string;
usia : integer;
ptr_nama, ptr_nim, ptr_jurusan, ptr_nomorTelepon : ^string;
ptr_usia : ^integer;
address_nama, address_nim, address_jurusan, address_nomorTelepon, address_usia : ^word;

begin
    clrscr;
    nama := 'Andre';
    nim := '231401040';
    jurusan := 'Ilmu Komputer';
    nomorTelepon := '081361926580';
    usia := 18;

    ptr_nama := @nama;
    ptr_nim := @nim;
    ptr_jurusan := @jurusan;
    ptr_nomorTelepon := @nomorTelepon;
    ptr_usia := @usia;

    address_nama := addr(ptr_nama);
    address_nim := addr(ptr_nim);
    address_jurusan := addr(ptr_jurusan);
    address_nomorTelepon := addr(ptr_nomorTelepon);
    address_usia := addr(ptr_usia);

    writeln('Alamat dari variabel nama          :',address_nama^);
    writeln('Alamat dari variabel nim           :',address_nim^);
    writeln('Alamat dari variabel nama          :',address_jurusan^);
    writeln('Alamat dari variabel nomor telepon :',address_nomorTelepon^);
    writeln('Alamat dari variabel usia          :',address_usia^);
end.