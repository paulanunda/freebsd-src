# Touch under the workspace working directory (terraform-test/) so that
# should_trigger_run_for() matches and atlas creates a RUN. The over-cap
# bulk-test-data/ payload remains in the tree, so the packed slug (~4.087 GiB)
# should exceed the 4 GiB cap during ingestion and fail the run.
variable "trigger_attempt" {
  type    = number
  default = 3
}

# Bump to trigger a fresh webhook ingestion that snapshots the workspace's
# sparse_checkout_pattern (/terraform-test/) into the new config version's
# ingress_attributes, so the agent sparse-checkouts and packs only this dir.
