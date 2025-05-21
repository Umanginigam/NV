# NV
**🔍 Description:**

A Bash shell script that downloads and extracts "Scheme Name" and "NAV" values from AMFI’s mutual fund data at [https://www.amfiindia.com/spages/NAVAll.txt], and saves them as a TSV file.

**📄 Output:**

A file named amfi_nav_data.tsv with two columns:

Scheme Name

NAV

**▶️ How to Run:**
```bash
chmod +x extract_nav.sh
./extract_nav.sh
```
**🧠 Note:**
This can be extended to JSON using jq or Python. Contact me if you'd like a JSON version!
