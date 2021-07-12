# Babashka Docker Image

This is a simple Docker image based on Alpine to bootstrap [Babashka](https://book.babashka.org/#introduction), a super fast interpreter for Clojure.

Here the script is a simple http server allowing to browse the container's filesystem from [localhost:8090](http://localhost:8090/).  

It is copied from this [snippet](https://gist.github.com/holyjak/36c6284c047ffb7573e8a34399de27d8) (kudos to [holyjack](https://gist.github.com/holyjak)). I had to remove the auto-opening since it required to install `xdg-utils`.

To use, simply run

```bash
docker build . -t bb &&
docker run --rm -p 8090:8090 bb
```

This is the start of an expriment to use babashka as a way to run serverless functions on Heroku and avoid looong JVM startup times.

Nota : the script is actually present both as Clojure `.clj` file, and as a specific `.bb` file, but this is only for testing purpose.
