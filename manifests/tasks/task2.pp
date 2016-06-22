class base_task::tasks::task2 inherits base_task::base {
  notify { "var2 is ${var2}" :}
}

notice('MODULAR: ::base_task::tasks::task2')
include ::base_task::tasks::task2
