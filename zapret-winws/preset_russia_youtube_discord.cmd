start "zapret: yt+discord" /min "%~dp0winws.exe" ^
--wf-tcp=443 --wf-udp=443,50000-50099 ^

--filter-tcp=443 --hostlist="%~dp0files\list-discord.txt" ^
--dpi-desync=fake --dpi-desync-fooling=badseq --new ^

--filter-tcp=443 --hostlist="%~dp0files\list-youtube.txt" ^
--dpi-desync=fake,multidisorder --dpi-desync-fooling=badsum --dpi-desync-split-pos=1 --new ^

--filter-tcp=443 --hostlist="%~dp0files\list-youtube.txt" ^
--dpi-desync=fake,fakedsplit --dpi-desync-fooling=datanoack --dpi-desync-split-pos=1 --new ^

--filter-udp=443 --hostlist="%~dp0files\list-youtube.txt" ^
--dpi-desync=fake --dpi-desync-repeats=5 --dpi-desync-fake-quic="%~dp0files\quic_initial_www_google_com.bin" --new ^

--filter-udp=443 --hostlist="%~dp0files\list-youtube.txt" ^
--dpi-desync=ipfrag2 --dpi-desync-ipfrag-pos-udp=64 --new ^

--filter-udp=443 --filter-l7=discord --dpi-desync=fake --dpi-desync-repeats=5 --dpi-desync-fake-discord=0x00 --new ^

--filter-udp=443 --filter-l7=stun --dpi-desync=fake --dpi-desync-repeats=5 --dpi-desync-fake-stun=0x00 --new ^

--filter-udp=50000-50099 --filter-l7=discord,stun --dpi-desync=fake --dpi-desync-repeats=3 --new ^

--filter-tcp=443 --dpi-desync=fake --dpi-desync-fooling=badseq --dpi-desync-autottl=2
