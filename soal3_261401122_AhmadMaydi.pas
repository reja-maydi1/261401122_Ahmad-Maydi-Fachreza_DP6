program deretAngkaPenyaringan;
uses crt;

var
  N, kategori, i: integer;

begin
  // Masukkan nilai N
  clrscr;
  write('Masukkan nilai N: ');
  readln(N);
  //Pilih Kategori Deret
  writeln('Pilih kategori deret:');
  writeln('1: Ganjil');
  writeln('2: Genap');
  write('Pilihan Anda (1/2): ');
  readln(kategori);
  
  writeln('Hasil penyaringan deret angka:');
  
  //Gunakan while loop dari 1 hingga N
  i := 1;
  while i <= N do
  begin
    
    //Jika angka tidak sesuai kategori deret, lewati menggunakan 'continue'
    if (kategori = 1) and (i mod 2 = 0) then
    begin
      i := i + 1;
      continue;
    end;
    
    if (kategori = 2) and (i mod 2 <> 0) then
    begin
      i := i + 1;
      continue;
    end;
    
    //Jika angka merupakan kelipatan 5, lewati angka tersebut menggunakan 'continue'
    if i mod 5 = 0 then
    begin
      i := i + 1;
      continue;
    end;
    
    //Tampilkan deret angka hasil penyaringan ke layar
    write(i, ' ');
    
    //Naikkan nilai i untuk iterasi berikutnya
    i := i + 1;
  end;
  
  writeln;
  readln;
end.