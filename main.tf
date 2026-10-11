resource "gitlab_project_issue_board" "project_issue_boards" {
  for_each = var.project_issue_boards

  name         = each.value.name
  project      = each.value.project
  assignee_id  = each.value.assignee_id
  labels       = each.value.labels
  milestone_id = each.value.milestone_id
  weight       = each.value.weight

  dynamic "lists" {
    for_each = each.value.lists != null ? each.value.lists : []
    content {
      assignee_id  = lists.value.assignee_id
      iteration_id = lists.value.iteration_id
      label_id     = lists.value.label_id
      milestone_id = lists.value.milestone_id
    }
  }
}

