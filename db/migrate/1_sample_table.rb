"strategy": {
    "type": "Recreate",
    "resource": {},
    "recreateParams": {
        "pre": {
            "failurePolicy": "Abort",
            "execNewPod": {
                "command": [
                    "/bin/true"
                ],
                "env": [
                    {
                        "name": "CUSTOM_VAR1",
                        "value": "custom_value1"
                    }
                ],
                "containerName": "ruby-helloworld"
            }
        },
        "post": {
            "failurePolicy": "Ignore",
            "execNewPod": {
                "command": [
                    "/bin/false"
                ],
                "env": [
                    {
                        "name": "CUSTOM_VAR2",
                        "value": "custom_value2"
                    }
                ],
                "containerName": "ruby-helloworld"
            }
        }
    }
},
