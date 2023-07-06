
    "builders":[
        {

        "type": "amazon-ebs",
        "access_key":"AKIATVJI7JQXK4YESPAI",
        "secret_key":"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",
        "region": "us-west-1",
        "ami_name": "LINUX_MY_IMAGE-{{timestamp}}",
        "source_ami": "ami-0ef262972e641bb3e",
        "instance_type": "t2.micro",
        "ssh_username":"ec2-user",
        "ssh_agent_auth": "false",
         "associate_public_ip_address": "true",
         "ssh_interface": "public_ip",
         

        }
        





    ],
    
    "provisioners": [
        {
          
            "type": "file",
            "source": "provisioner.sh",
            "destination": "/tmp/provisioner.sh"
        },
        
        
          {"type": "shell",
            "inline": [
                "chmod a+x /tmp/provisioner.sh",
                "ls -la /tmp",
                "pwd",
                "/tmp/provisioner.sh"]


           }
        
    ]
      


    
}
