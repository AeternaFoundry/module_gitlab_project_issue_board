output "project_issue_boards_id" {
  description = "Map of id values across all project_issue_boards, keyed the same as var.project_issue_boards except keys with no id are omitted"
  value       = { for k, v in gitlab_project_issue_board.project_issue_boards : k => v.id if v.id != null && length(v.id) > 0 }
}
output "project_issue_boards_assignee_id" {
  description = "Map of assignee_id values across all project_issue_boards, keyed the same as var.project_issue_boards except keys with no assignee_id are omitted"
  value       = { for k, v in gitlab_project_issue_board.project_issue_boards : k => v.assignee_id if v.assignee_id != null }
}
output "project_issue_boards_labels" {
  description = "Map of labels values across all project_issue_boards, keyed the same as var.project_issue_boards except keys with no labels are omitted"
  value       = { for k, v in gitlab_project_issue_board.project_issue_boards : k => v.labels if v.labels != null && length(v.labels) > 0 }
}
output "project_issue_boards_lists" {
  description = "Map of lists values across all project_issue_boards, keyed the same as var.project_issue_boards except keys with no lists are omitted"
  value       = { for k, v in gitlab_project_issue_board.project_issue_boards : k => v.lists if v.lists != null && length(v.lists) > 0 }
}
output "project_issue_boards_milestone_id" {
  description = "Map of milestone_id values across all project_issue_boards, keyed the same as var.project_issue_boards except keys with no milestone_id are omitted"
  value       = { for k, v in gitlab_project_issue_board.project_issue_boards : k => v.milestone_id if v.milestone_id != null }
}
output "project_issue_boards_name" {
  description = "Map of name values across all project_issue_boards, keyed the same as var.project_issue_boards except keys with no name are omitted"
  value       = { for k, v in gitlab_project_issue_board.project_issue_boards : k => v.name if v.name != null && length(v.name) > 0 }
}
output "project_issue_boards_project" {
  description = "Map of project values across all project_issue_boards, keyed the same as var.project_issue_boards except keys with no project are omitted"
  value       = { for k, v in gitlab_project_issue_board.project_issue_boards : k => v.project if v.project != null && length(v.project) > 0 }
}
output "project_issue_boards_weight" {
  description = "Map of weight values across all project_issue_boards, keyed the same as var.project_issue_boards except keys with no weight are omitted"
  value       = { for k, v in gitlab_project_issue_board.project_issue_boards : k => v.weight if v.weight != null }
}

