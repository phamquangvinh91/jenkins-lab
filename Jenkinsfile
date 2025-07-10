pipeline {
    agent any

    matrix {
        axes {
            axis {
                name 'ENV'
                values 'dev', 'test', 'prod'
            }
        }

        stages {
            stage('Chuẩn bị') {
                steps {
                    echo "Chuẩn bị môi trường $ENV"
                }
            }

            stage('Triển khai') {
                steps {
                    script {
                        if (ENV == 'dev') {
                            echo "Triển khai môi trường Dev"
                        } else if (ENV == 'test') {
                            echo "Chạy test cho môi trường Test"
                        } else if (ENV == 'prod') {
                            echo "Triển khai môi trường PROD - cần phê duyệt!"
                        }
                    }
                }
            }

            stage('Kết thúc') {
                steps {
                    echo "Hoàn tất xử lý môi trường $ENV"
                }
            }
        }
    }
}
