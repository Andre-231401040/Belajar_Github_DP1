program tugasPertama;

uses crt;

var
nama_makanan1, nama_makanan2 : string;
harga_makanan1, harga_makanan2 : integer;
ptr_nama_makanan1, ptr_nama_makanan2 : ^string;
ptr_harga_makanan1, ptr_harga_makanan2 : ^integer;

begin
    clrscr;
    write('Masukkan nama makanan pertama: ');
    readln(nama_makanan1);
    write('Masukkan harga makanan pertama: ');
    readln(harga_makanan1);
    write('Masukkan nama makanan kedua: ');
    readln(nama_makanan2);
    write('Masukkan harga makanan kedua: ');
    readln(harga_makanan2);

    ptr_nama_makanan1 := @nama_makanan1;
    ptr_nama_makanan2 := @nama_makanan2;
    ptr_harga_makanan1 := @harga_makanan1;
    ptr_harga_makanan2 := @harga_makanan2;

    if(ptr_harga_makanan1^ > ptr_harga_makanan2^) then
        begin
            writeln('Makanan Termahal');
            write('Nama makanan termahal: ');
            writeln(ptr_nama_makanan1^);
            write('Harga makanan termahal: ');
            writeln(ptr_harga_makanan1^);
            writeln('Makanan Termurah');
            write('Nama makanan termurah: ');
            writeln(ptr_nama_makanan2^);
            write('Harga makanan termurah: ');
            writeln(ptr_harga_makanan2^);
        end
    else if(ptr_harga_makanan2^ > ptr_harga_makanan1^) then
        begin
            writeln('Makanan Termahal');
            write('Nama makanan termahal: ');
            writeln(ptr_nama_makanan2^);
            write('Harga makanan termahal: ');
            writeln(ptr_harga_makanan2^);
            writeln('Makanan Termurah');
            write('Nama makanan termurah: ');
            writeln(ptr_nama_makanan1^);
            write('Harga makanan termurah: ');
            writeln(ptr_harga_makanan1^);
        end
    else
        begin
            writeln('Harga makanan pertama dan kedua adalah sama');
        end;
end.