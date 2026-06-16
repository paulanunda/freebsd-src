# bulk-test-data

Incompressible random filler files used to validate **sparse checkout** in
atlas / tfc-agent.

These files exist only to bloat the repository's working tree. When a workspace
is configured with working directory `terraform-test/`, atlas emits a
`sparse_checkout_pattern` and the tfc-agent should check out ONLY
`terraform-test/`. If sparse checkout is working, none of the `random_*.bin`
files below should appear in the agent's working tree.

Each file is 95 MiB (under GitHub's 100 MB per-file push limit). Contents are
random bytes so they are incompressible (worst case for the slug packer).
