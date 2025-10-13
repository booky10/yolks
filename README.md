# Custom Pterodactyl Images

A custom collection of images than can be used with Pterodactyl's Egg system.

Pre-build images are hosted on docker hub at [`booky10/yolks`](https://hub.docker.com/r/booky10/yolks) for both amd64 and arm64.

## Building

Images are automatically build using GitHub actions. If you want to locally build images, you can use the `build.sh`-script, while specifying a specific tag:
```sh
./build.sh java-alpine/21 # (example)
```

## Licensing

Like [pterodactyl/yolks](https://github.com/pterodactyl/yolks), this repository is licensed under the terms of the MIT license. See [LICENSE](./LICENSE) for further information.

## Supported Images

Other images may be available in the repository, but will no longer be updated.
This list is sorted alphabetically, with ascending version numbers.

-   `bun`
    -   `booky10/yolks:bun1.0`
    -   `booky10/yolks:bun1.1`
    -   `booky10/yolks:bun1.2`
    -   `booky10/yolks:bun1.3`
-   `go`
    -   `booky10/yolks:go1.24`
    -   `booky10/yolks:go1.25`
-   `go-nodejs`
    -   `booky10/yolks:gonodejs1.24-20`
    -   `booky10/yolks:gonodejs1.24-22`
    -   `booky10/yolks:gonodejs1.24-24`
    -   `booky10/yolks:gonodejs1.25-20`
    -   `booky10/yolks:gonodejs1.25-22`
    -   `booky10/yolks:gonodejs1.25-24`
-   `java`
    -   `booky10/yolks:java8`
    -   `booky10/yolks:java11`
    -   `booky10/yolks:java17`
    -   `booky10/yolks:java21`
    -   `booky10/yolks:java25`
-   `java-alpine`
    -   `booky10/yolks:javaalpine8` (no `linux/arm64` variant)
    -   `booky10/yolks:javaalpine11` (no `linux/arm64` variant)
    -   `booky10/yolks:javaalpine17` (no `linux/arm64` variant)
    -   `booky10/yolks:javaalpine21`
    -   `booky10/yolks:javaalpine25`
-   `mariadb`
    -   `booky10/yolks:mariadb10.6`
    -   `booky10/yolks:mariadb10.11`
    -   `booky10/yolks:mariadb11.4`
    -   `booky10/yolks:mariadb11.8`
    -   `booky10/yolks:mariadb12.0`
-   `nodejs`
    -   `booky10/yolks:nodejs20`
    -   `booky10/yolks:nodejs22`
    -   `booky10/yolks:nodejs24`
-   `nodejs-gyp`
    -   `booky10/yolks:nodejsgyp20`
    -   `booky10/yolks:nodejsgyp22`
    -   `booky10/yolks:nodejsgyp24`
-   `php`
    -   `booky10/yolks:php8.1`
    -   `booky10/yolks:php8.2`
    -   `booky10/yolks:php8.3`
    -   `booky10/yolks:php8.4`
-   `php-nginx`
    -   `booky10/yolks:phpnginx8.1`
    -   `booky10/yolks:phpnginx8.2`
    -   `booky10/yolks:phpnginx8.3`
    -   `booky10/yolks:phpnginx8.4`
-   `python`
    -   `booky10/yolks:python3.9`
    -   `booky10/yolks:python3.10`
    -   `booky10/yolks:python3.11`
    -   `booky10/yolks:python3.12`
    -   `booky10/yolks:python3.13`
    -   `booky10/yolks:python3.14`
