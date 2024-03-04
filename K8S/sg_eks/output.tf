output "my_security_group_id" {
   value = "${aws_security_group.worker_node_sg.id}"
}
