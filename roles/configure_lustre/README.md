# Configure Lustre

This role configures a Lustre client to to able to talk to a lnet.

It can differentiate the different network cards based on `ansible_facts.product_name`, so you can have different types of servers with different network settings.

Its kind of lowlevel, yet it has relation to how the server type will connect to lnet.
