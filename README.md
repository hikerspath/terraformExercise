# Terraform Exercise

Running terraform (since it is outside of your normal system path) is best done as follows:

```bash
$ ./terraform init
$ ./terraform apply
```

The code is shared while the shell is unique, so it works best when one is sharing and the rest are coding...  Though as long as the lock has been released terraform can be run by anyone.

---
## ATEAM-12345: Monthly Regional Holidays

Use a holiday API to build files in a YYYY-MM-DD.txt
format.  The only files created should be for the 
present month and an optional location (country code).
The content of each file should contain the description 
of the respective holiday.

**AC:**

1. Should shift based on present month without code
   adjustment
2. Should allow for variablized location changes
3. Should use terraform to build it

**NOTES:** 
* [Open Holiday API](https://date.nager.at/api/v2/publicholidays/2020/US)
* [Terraform: HTTP Data Source](https://registry.terraform.io/providers/hashicorp/http/latest/docs/data-sources/http)
* [Terraform: For Expressions](https://www.terraform.io/docs/language/expressions/for.html)
* [Terraform: Time & Date Functions](https://www.terraform.io/docs/language/functions/formatdate.html)
