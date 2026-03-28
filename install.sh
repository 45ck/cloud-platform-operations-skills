#!/usr/bin/env bash
set -euo pipefail
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
install_skill() {
  local skill="$1"
  mkdir -p "$HOME/.claude/skills/$skill" "$HOME/.agents/skills/$skill"
  cp "$SCRIPT_DIR/.claude/skills/$skill/SKILL.md" "$HOME/.claude/skills/$skill/SKILL.md"
  cp "$SCRIPT_DIR/.agents/skills/$skill/SKILL.md" "$HOME/.agents/skills/$skill/SKILL.md"
}
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
for skill in "${SKILLS[@]}"; do install_skill "$skill"; done
