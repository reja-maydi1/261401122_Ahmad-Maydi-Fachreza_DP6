program login;
uses crt;

var 
    sandi : string;
    percobaan : integer;

begin 
    clrscr;
    percobaan := 0;
    repeat
    percobaan := percobaan + 1;
    //User Menginput Kata Sandi
    write ('Masukkan Kata Sandi: '); 
    readln (sandi);

    if sandi = 'pascal123' then
    begin 
        //Jika Kata Sandi Sesuai, Maka User Dapat Login
        writeln ('LOGIN BERHASIL! SELAMAT DATANG');
        break;
    end
    
    else if percobaan < 3 then
    begin 
        //Jika Kata Sandi Salah, Maka Diberikan Kesempatan Untuk Mencoba Sampai 2 Kali Percobaan
        writeln ('KATA SANDI SALAH! SILAHKAN COBA LAGI');
    end;

    if (percobaan = 3) and (sandi <> 'pascal123') then 
    begin 
        //Jika Sudah Masuk Pada Percobaan ke 3 Tapi Kata Sandi Belum tepat, Maka Percobaan Sudah Habis dan Akun User Terblokir
        writeln ('PERCOBAAN ANDA HABIS, AKUN DIBLOKIR!');
    end;
    until percobaan = 3;
end.