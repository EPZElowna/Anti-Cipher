# 🔓 Cipher Removal Resource for FiveM

This resource ensures your FiveM server is clean from Cipher-related code and resets any unwanted font modifications in the server console.



## 📦 Installation

### Step 1: Add Permissions to `server.cfg`

Open your `server.cfg` and add the following lines:

```cfg
add_ace resource.cipher_cleanup command allow
add_ace resource.cipher_cleanup command.stop allow
```



### Step 2: Run the Cleanup Script (For Windows VPS)

1. Right-click the `.bat` file.
2. Click **"Run as Administrator"**.
3. Wait until the script finishes. It will close automatically or display a "Finished" message.



## 🧼 Restore Default Console Font (Optional)

If your server console font is still modified and you want to reset it:

### 1. Download the Latest Server Build

Visit the official FiveM runtime build page and download the latest version:

🔗 https://runtime.fivem.net/artifacts/fivem/build_server_windows/master/



### 2. Replace Your FXServer Build

- Delete your current FXServer build.
- Extract and place the new downloaded build into your server directory.



### 3. Clear the Cache

Navigate to your server cache directory:

```txt
C:\Users\Administrator\Desktop\server\txData\MyServer\cache
```

Delete **everything inside**, including the `files` folder.



### 4. (Optional) Clear FiveM Temp Folder

Navigate to your Windows + R %temp% folder:

```txt
C:\Users\Administrator\AppData\Local\Temp\2
```

> If this folder does not exist, skip this step.

Delete any leftover folders like `monitor` or anything else related to FiveM.



## ✅ Success

Your server is now clean, and any font or Cipher backdoors have been removed.

Enjoy a fresh and secure FiveM experience!
