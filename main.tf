data "google_compute_network" "memcache_network" {
  name = var.network_name
}

resource "google_compute_global_address" "service_range" {
  name          = var.address_name
  purpose       = var.address_purpose
  address_type  = var.address_type
  prefix_length = var.prefix_length
  network       = data.google_compute_network.memcache_network.id
}

resource "google_service_networking_connection" "private_service_connection" {
  network                 = data.google_compute_network.memcache_network.id
  service                 = "servicenetworking.googleapis.com"
  reserved_peering_ranges = [google_compute_global_address.service_range.name]
}

resource "google_memcache_instance" "instance" {
  name = var.memcache_name
  authorized_network = google_service_networking_connection.private_service_connection.network

  node_config {
    cpu_count      = var.cpu_count
    memory_size_mb = var.memory_size_mb
  }
  node_count = var.node_count
  memcache_version = var.memcache_version

}
