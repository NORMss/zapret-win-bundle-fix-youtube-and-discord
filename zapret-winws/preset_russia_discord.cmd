start "zapret: discord" /min "%~dp0winws.exe" ^
--wf-tcp=443 --wf-udp=443,50000-50099 ^

--filter-tcp=443 --hostlist="%~dp0files\list-discord.txt" ^
--dpi-desync=fake --dpi-desync-fooling=badseq --new ^

--filter-udp=443 --filter-l7=discord --dpi-desync=fake --dpi-desync-repeats=5 --dpi-desync-fake-discord=0x00 --new ^

--filter-udp=443 --filter-l7=stun --dpi-desync=fake --dpi-desync-repeats=5 --dpi-desync-fake-stun=0x00 --new ^

--filter-udp=50000-50099 --filter-l7=discord,stun --dpi-desync=fake --dpi-desync-repeats=3
