DELETE FROM Hosts;

#TODO Better classification and Description everything is a (server/Desktop/Loadbalancer?) / Messaging-RabbitMQ
INSERT INTO Hosts (Environment, Type, Purpose, HostName) VALUES
('DEV', 'Server', 'SVN', 'ec2-54-209-149-104.compute-1.amazonaws.com'),
('DEV', 'Server', 'Messaging', 'ec2-54-172-250-220.compute-1.amazonaws.com'),
('DEV', 'Server', 'Database', 'elektos.cty8sfgs1evu.us-east-1.rds.amazonaws.com'),
('DEV', 'Server', 'Central-1', 'ec2-52-23-185-3.compute-1.amazonaws.com'),

#WHAT exactly is this entry for?
('DEV', 'Server', 'Central-1', '172.31.35.139'),

#WHY is this entry here?
('DEV', 'Desktop', 'Personal', '127.0.0.1', 'Hostname looks like an IP Address but that is what is returned by HttpServletRequest.getRemoteHost().'),
('DEV', 'Desktop', 'Developer-Box', '98.223.35.37', 'Saradhi Laptop Chicago'),
('DEV', 'Desktop', 'Developer-Box', '103.225.56.57', 'Saradhi Laptop Traveling'),
('DEV', 'Desktop', 'Developer-Box', '24.1.204.80', 'Saradhi Laptop Chicago');