class base_task::tasks::task3 inherits base_task::base {
  notify { "var3 is ${var3}" :}
}

notice('MODULAR: ::base_task::tasks::task3')
include ::base_task::tasks::task3


