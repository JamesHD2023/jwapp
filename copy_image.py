#!/usr/bin/env python3
import shutil
import os

def copy_image():
    source = "/hologram/data/project/zenstride/.prompt_attachments/4b34d2b7-5031-4a49-8991-c986c981d4b2.jpg"
    destination = "/hologram/data/project/zenstride/assets/images/labeliq_logo.jpg"
    
    print("Copying labeliq_logo.jpg...")
    
    try:
        # Ensure the destination directory exists
        os.makedirs(os.path.dirname(destination), exist_ok=True)
        
        # Copy the file
        shutil.copy2(source, destination)
        
        # Verify the copy was successful
        if os.path.exists(destination):
            file_size = os.path.getsize(destination)
            print(f" Image successfully copied to assets/images/labeliq_logo.jpg")
            print(f"File size: {file_size} bytes")
        else:
            print(" Failed to copy image")
            return False
            
    except Exception as e:
        print(f" Error copying file: {e}")
        return False
    
    print("Copy operation complete!")
    return True

if __name__ == "__main__":
    copy_image()