variable "project_issue_boards" {
  description = <<EOT
Map of project_issue_boards, attributes below
Required:
    - name
    - project
Optional:
    - assignee_id
    - labels
    - milestone_id
    - weight
    - lists (block):
        - assignee_id (optional)
        - iteration_id (optional)
        - label_id (optional)
        - milestone_id (optional)
EOT

  type = map(object({
    name         = string
    project      = string
    assignee_id  = optional(number)
    labels       = optional(set(string))
    milestone_id = optional(number)
    weight       = optional(number)
    lists = optional(list(object({
      assignee_id  = optional(number)
      iteration_id = optional(number)
      label_id     = optional(number)
      milestone_id = optional(number)
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.project_issue_boards : (
        v.weight == null || (v.weight >= 0 && v.weight <= 9)
      )
    ])
    error_message = "must be between 0 and 9"
  }
}

