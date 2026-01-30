# Service job is used because the application is expected
# to run continuously. Batch jobs are intended for one-time tasks.

job "hello-devops" {
  datacenters = ["dc1"]
  type = "service"

  group "hello-group" {
    task "hello-task" {
      driver = "docker"

      config {
        image = "hello-devops"
      }

      resources {
        cpu    = 100
        memory = 128
      }

      restart {
        attempts = 3
        interval = "5m"
        delay    = "30s"
        mode     = "fail"
      }
    }
  }
}
