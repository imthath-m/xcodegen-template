APP_NAME="Template"

echo "โ ๏ธ  Killing Xcode..."
killall Xcode 2>/dev/null

echo "๐งน Removing project..."
rm -rf $APP_NAME.xcodeproj

echo "๐   Regenerating project..."
xcodegen

echo "๐ง Resolving dependencies"
xcodebuild -resolvePackageDependencies

# echo "๐ Opening project!"
open $APP_NAME.xcodeproj
# open -a "AppCode" $APP_NAME.xcodeproj