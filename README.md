# nextjs-bootstrap
Next.js with Twitter Bootstrap

## build

```bash
docker build -t mathewt/nextjs-bootstrap .
```

```bash
docker run -ti -v $HOME/.aws:/root/.aws -v $HOME/.ssh:/root/.ssh  -v "$(pwd)"/pages:/usr/src/app/pages -v "$(pwd)"/build:/usr/src/app/out  -p 0.0.0.0:3000:3000  mathewt/nextjs-bootstrap
```