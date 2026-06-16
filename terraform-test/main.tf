# Hello-world Terraform config used to validate sparse checkout in atlas/tfc-agent.
#
# The workspace's "working directory" should be set to "terraform-test" so that
# atlas emits a sparse_checkout_pattern (see AgentIngressSerializer) and the agent
# checks out ONLY this directory. The large files under ../bulk-test-data/ should
# NOT be present in the agent's working tree if sparse checkout is functioning.

terraform {
  required_version = ">= 1.0"
}

output "hello" {
  value = "Hello from sparse-checkout test (terraform-test/)"
}
