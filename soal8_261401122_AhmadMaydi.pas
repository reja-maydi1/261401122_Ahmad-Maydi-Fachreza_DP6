program GajiKaryawan;
uses crt;
var 
jam : integer;
gaji_pokok, lembur, bonus, total_akhir : real;
golongan : char;

begin
clrscr;
write('Masukkan golongan gaji karyawan : ');
readln(golongan);
write('Masukkan jumlah jam kerja: ');
readln(jam);

if (golongan = 'A') or (golongan = 'a') then
  gaji_pokok := 1500000
else if (golongan = 'B') or (golongan = 'b') then
  gaji_pokok := 2000000
else if (golongan = 'C') or (golongan = 'c') then 
  gaji_pokok := 2500000
else 
  writeln('Golongan tidak tersedia');

if jam > 40 then 
  lembur := (jam - 40) * 20000
else 
  lembur := 0;

if (golongan = 'C') or (golongan = 'c') and (jam > 50) then 
  bonus := 100000
else 
  bonus := 0;

total_akhir := gaji_pokok + lembur + bonus;

writeln('===Rincian Gaji===');
writeln('Gaji Pokok = Rp ', gaji_pokok:0:0);
writeln('Lembur = ',lembur:0:0);
writeln('Bonus = Rp ', bonus:0:0);
writeln('Total Gaji Akhir = Rp ', total_akhir:0:0);
readln;
end.