def repo = "copy"
def dockerUser = "discoenv"

node {
    stage "Build"
    git url: "https://github.com/cyverse-de/${repo}", branch: "${env.BRANCH_NAME}"

    dockerRepo = "test-configurate"

    sh "docker build --rm -t ${dockerRepo} ."

    stage "Test"
	sh "docker run --rm ${dockerRepo}"

    stage "Clean"
    sh "docker rmi ${dockerRepo}"
}
