set -e
pict browser.model | tee results/browser-2way.txt >/dev/null
pict browser.model /o:3 > results/browser-3way.txt
pict transfer-nc.model > results/transfer-nc.txt
pict transfer.model > results/transfer.txt
pict transfer-neg.model > results/transfer-neg.txt
for f in browser-2way browser-3way transfer-nc transfer transfer-neg; do echo "$f: $(tail -n +2 results/$f.txt | wc -l)"; done
