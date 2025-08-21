#!/bin/bash

# Flutter compilation check script
echo "Flutter Compilation Check for ZenStride"
echo "========================================"

cd "$(dirname "$0")"

# Check if Flutter is available
if ! command -v flutter &> /dev/null; then
    echo "❌ Flutter is not installed or not in PATH"
    echo "Please install Flutter to compile the project"
    exit 1
fi

echo "✅ Flutter found"

# Check Flutter doctor
echo ""
echo "Running Flutter doctor..."
flutter doctor

# Check dependencies
echo ""
echo "Getting dependencies..."
flutter pub get

if [ $? -ne 0 ]; then
    echo "❌ Failed to get dependencies"
    exit 1
fi

echo "✅ Dependencies resolved successfully"

# Try to analyze the project
echo ""
echo "Running Flutter analyze..."
flutter analyze

if [ $? -ne 0 ]; then
    echo "❌ Static analysis found issues"
    echo "Please fix the analysis issues before building"
    exit 1
fi

echo "✅ Static analysis passed"

# Try to build for Android
echo ""
echo "Building for Android..."
flutter build apk --debug

if [ $? -eq 0 ]; then
    echo "✅ Android build successful!"
else
    echo "❌ Android build failed"
    exit 1
fi

echo ""
echo "🎉 All compilation checks passed!"
echo "The footer widget integration appears to be working correctly."