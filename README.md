# bilingual_book_maker_docker
Application is from https://github.com/yihong0618/bilingual_book_maker


## Set environment variable first
```sh
# Windows PowerShell
$folder_path=your_folder_path
$book_name=your_book_name
$openai_key=your_api_key
$language=your_language
# linux
export folder_path=${your_folder_path}
export book_name=${your_book_name}
export openai_key=${your_api_key}
export language=${your_language}
```
## Run script
```sh
# build image
# Windows PowerShell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
.\build.sh
# linux
chmod +777 build.sh
./build.sh

# run container
# Windows PowerShell
.\windows_run.sh
# linux
chmod +777 linux_run.sh
./linux_run.sh
```