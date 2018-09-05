* [Create a react hybrid app](https://medium.com/@yannickdot/write-once-run-anywhere-with-create-react-native-app-and-react-native-web-ad40db63eed0)
    * [Create react app - Github](https://github.com/facebook/create-react-app)
    * npm init react-app my-app
* To start the app:
    * npm run start-web
    * npm run start-native
        * to get QR code to run using iPhone/ Android in [Expo](https://expo.io/)
            * q
    * npm run ios
* [Create React Native App](https://facebook.github.io/react-native/blog/2017/03/13/introducing-create-react-native-app)
$ npm install -g create-react-native-app
$ create-react-native-app my-app
$ cd my-app/
$ npm start

* if npm install -g less does not work, run:
    * sudo chown -R $(whoami) ~/.npm
    * [to update the own of the ~/.npm directory](https://stackoverflow.com/questions/33725639/npm-install-g-less-does-not-work)


* Debugging
    * [React Native Stuck starting packager](https://stackoverflow.com/questions/50724521/react-native-stuck-starting-packager)
        * npm install react-native@0.55.0
    * version checking:
        * npm view react-native version
    * React Native version mismatch
        * watchman watch-del-all
        * watchman shutdown-server
        * npm cache clean --force


        * Node.js not linked error
        sudo brew uninstall node  
        brew update  
        brew upgrade  
        brew cleanup  
        brew install node  
        sudo chown -R $(whoami) $(brew --prefix)  
        brew link --overwrite node  
        brew postinstall node  
        * [Fixing npm On Mac OS X for Homebrew Users](https://gist.github.com/DanHerbert/9520689)
