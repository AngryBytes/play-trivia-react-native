# PlayTrivia React Native example

This is an example implementation of PlayTrivia in React Native using Livery
for video.

## Getting started

If you haven't yet setup your system for React Native development, follow the
[Getting Started](https://facebook.github.io/react-native/docs/getting-started)
guide of React Native. Make sure to follow 'React Native CLI Quickstart' steps
(not the Expo steps), and pick whichever development/target OS you wish to use.
It's useful to verify a new empty React Native project is working on your
system, before continuing with this project.

Note that this project uses [Yarn](https://yarnpkg.com/en/), which you'll also
need to install.

You'll also need the credentials for the Livery repositories configured on your
machine. See the "Required credentials" section in:
https://bitbucket.org/exmachina/livery-sdk-react-native

To start using this project, first install the dependencies.

```bash
yarn
```

For iOS development, you'll also need to install pods:

```bash
cd ios/
pod install
```

You can now open the `android` project in Android Studio, or the
`ios/PlayTriviaReactNative.xcworkspace` workspace in Xcode, and simply build
and run the project.

Alternatively, you can run either app using these commands:

```bash
yarn android
yarn ios
```

Any of these methods of running the app will start a Metro bundler in a
separate terminal window. If you'd rather have Metro run in a terminal window
of your choosing, start it separately beforehand with:

```bash
yarn start
```

## Configuration

In `src/App.tsx` a hardcoded constant `FRONTEND_ORIGIN` determines what is
loaded in the webview.
