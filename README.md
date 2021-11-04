# Terraform Exercise

So this is a shared environment for doing terraform.  The latest binary for it is inside this working directory which is saved offline...

Running terraform (since it is outside of your normal system path) is best done as follows:

```bash
$ ./terraform init
$ ./terraform apply
```

The code is shared while the shell is unique, so it works best when one is sharing and the rest are coding...  Though as long as the lock has been released terraform can be run by anyone.