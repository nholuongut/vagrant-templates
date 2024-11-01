# nholuongut - Vagrant templates

![](https://i.imgur.com/waxVImv.png)
### [View all Roadmaps](https://github.com/nholuongut/all-roadmaps) &nbsp;&middot;&nbsp; [Best Practices](https://github.com/nholuongut/all-roadmaps/blob/main/public/best-practices/) &nbsp;&middot;&nbsp; [Questions](https://www.linkedin.com/in/nholuong/)
<br/>

Vagrant templates for quick labs.

The shell provisioners use my [DevOps-Bash-tools](https://github.com/nholuongut/devops-bash-tools) repo.

Run this to ensure it's downloaded first:

```shell
make init
```

Then just `cd` to a directory and type `make`:

```shell
cd ubuntu
make
```

which will run:

```shell
vagrant up
vagrant ssh ubuntu
```

## Inventory

- `ubuntu/` - quick [Ubuntu](https://ubuntu.com/) Linux VM
- `debian/` - quick [Debian](https://www.debian.org/) Linux VM
- `kubernetes/` - [Kubernetes](https://kubernetes.io/) cluster built by `kubeadm` on Ubuntu. Used this to pass my [CKA](https://www.cncf.io/certification/cka/) exam ([Certified Kubernetes Administrator](https://www.cncf.io/certification/cka/)), you need something like this for the official [CNCF CKA course - Kubernetes Fundamentals](https://training.linuxfoundation.org/training/kubernetes-fundamentals/) (as of 2019-2020)
- `rancher/` - [Rancher](https://www.rancher.com/) RKE2 cluster on Ubuntu, uses RKE2 installer and K3s, different to K8s above

Copy the `ubuntu/` or `debian/` directories to quickly create new Ubuntu or Debian based labs.

# 🚀 I'm are always open to your feedback.  Please contact as bellow information:
### [Contact ]
* [Name: nho Luong]
* [Skype](luongutnho_skype)
* [Github](https://github.com/nholuongut/)
* [Linkedin](https://www.linkedin.com/in/nholuong/)
* [Email Address](luongutnho@hotmail.com)
* [PayPal.me](https://www.paypal.com/paypalme/nholuongut)

![](https://i.imgur.com/waxVImv.png)
![](Donate.png)
[![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/nholuong)

# License
* Nho Luong (c). All Rights Reserved.🌟