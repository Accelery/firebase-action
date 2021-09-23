# Deploy to Firebase Functions

A GitHub Action to deploy to Firebase Functions

- Make sure you have the `firebase.json` file in the repository
- Get the Firebase token by running `firebase login:ci` and [store it](https://help.github.com/en/actions/configuring-and-managing-workflows/creating-and-storing-encrypted-secrets) as the `FIREBASE_TOKEN` secret

Example workflow

```
name: Firebase
on:
  push:
    branches:
    - master
jobs:
  main:
    name: Deploy
    runs-on: ubuntu-latest
    steps:
    - name: Check out code
      uses: actions/checkout@master
    - name: Deploy to Firebase
      uses: BIGG-Kaymo/deploy-firebase-functions@v1.0.1
      env:
        FIREBASE_TOKEN: ${{ secrets.FIREBASE_TOKEN }}
```