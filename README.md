# Docker and AWS CLI on Alpine:3.11.5

[![GitHub](https://img.shields.io/badge/GitHub-romarcablao-lightgrey)](https://github.com/romarcablao)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-romarcablao-blue)](https://linkedin.com/in/romarcablao)

Custom image where you can run docker and aws-cli for your ci/cd pipeline.

# How to use?

Simply build the image using `docker build -t alpine-docker-awscli .`

and run it with all needed parameter:

```console
docker run --rm \
    -v /path/to/readme.md:/data/README.md \
    -e DOCKERHUB_USERNAME=myhubuser \
    -e DOCKERHUB_PASSWORD=myhubpassword \
    -e DOCKERHUB_REPO_PREFIX=myorga \
    -e DOCKERHUB_REPO_NAME=myrepo \
     alpine-docker-awscli
```

That's it.

# Updates and updating

To update your setup simply pull the newest image version from docker hub and run it.

# User Feedback

## Issues

If you have any problems with or questions about this image, please contact us through a [GitHub issue](https://github.com/romarcablao/alpine-docker-awscli/issues).

## Contributing

You are invited to contribute new features, fixes, or updates, large or small. Here's the [GitHub repo](https://github.com/romarcablao/alpine-docker-awscli).
