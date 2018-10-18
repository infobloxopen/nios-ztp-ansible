# nios-ztp-anisble
Deploying Infoblox Grid( Grid Master and a Member) and doing initial configurations through Ansible on OpenStack 

The Ansible playbook discussed in the document addresses the following use cases:
•	Deploying Grid Master( Deployment, License and network initialization using cloud-init)
•	Deploying a Member( Deployment, License and network initialization using cloud-init)	
•	Adding the Member to the Grid.
•	Starting DNS and DHCP services using a shell script. ( zero_touch_provisioning.sh )


Pre-requistes

•	A working OpenStack (Newton release onwards) setup with sufficient resources to host Infoblox grid (a minimum of 24 GB RAM, 8 vCPUs and 600 GB hard disk space).
•	The vNIOS image for KVM (version specific or DDI) in the qcow2 format. 
•	A Linux machine (preferably ubuntu) with Ansible (2.6.2 onwards) and python-openstack client (3.16.x) installed.
