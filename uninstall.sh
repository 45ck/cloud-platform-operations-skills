#!/usr/bin/env bash
set -euo pipefail
SKILLS=(
  acl-maintenance-reviewer
  blue-green-readiness-reviewer
  iaas-paas-saas-faas-selector
  maintenance-window-planner
  migration-wave-planner
  orphaned-resource-auditor
  patch-management-checker
  public-private-hybrid-cloud-reviewer
  resource-lifecycle-planner
  update-rollback-planner
)
for skill in "${SKILLS[@]}"; do
  rm -rf "$HOME/.claude/skills/$skill" "$HOME/.agents/skills/$skill"
done
