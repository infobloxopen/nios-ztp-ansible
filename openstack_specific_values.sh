#!/bin/bash
openstack image list 2> test_output.txt
REQUIRE_PASSWORD="$(less test_output.txt|grep "requires authentication"| cut -d " " -f6-7)"


if [ "${REQUIRE_PASSWORD}" == "requires authentication." ] 
	then 

		echo -e " \033[0;31m Incorrect Password entered for admin-openrc file, Please try again \033[0;31m "
elif
            !  [ "${REQUIRE_PASSWORD}" == "requires authentication" ] 
	then    echo "**Images**" > openstack_values
		openstack image list >> openstack_values
                echo "**Networks**" >> openstack_values
                openstack network list >> openstack_values
                echo "**Security Groups**" >> openstack_values
                openstack security group list >> openstack_values
                echo "**Flavors**" >> openstack_values
                openstack flavor list >> openstack_values
                echo  "**Ports**" >> openstack_values
                openstack port list >> openstack_values
fi
