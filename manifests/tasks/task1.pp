class base_task::tasks::task1 inherits base_task::base {
  notify { "var1 is ${var1}" :}
}

notice('MODULAR: ::base_task::tasks::task1')
include ::base_task::tasks::task1
