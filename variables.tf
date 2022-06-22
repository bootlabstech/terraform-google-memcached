variable "network_name" {
    description = "Network name of the instance."
    type        =  string
}
variable "address_name" {
    description = "Name of the compute address"
    type        =  string
}
variable "address_purpose" {
    description = "the compute-address purpose"
    type        =  string
}
variable "address_type" {
    description = "the compute address_type"
    type        =  string
}
variable "prefix_length" {
    description = "the compute - address prefix - length"
    type        =  string
}
variable "memcache_name" {
    description = "the name of the memcache instance."
    type        =  string
}
variable "cpu_count" {
    description = "the cpu count for the node."
    type        =  string
}
variable "memory_size_mb" {
    description = "the memory_size_mb for the node."
    type        =  string
}
variable "node_count" {
    description = "node_count"
    type        =  string
}
variable "memcache_version" {
    description = "memcache_version"
    type        =  string
}
