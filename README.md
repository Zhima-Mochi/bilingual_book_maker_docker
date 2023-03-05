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
## Run
```sh
# build image
docker image build --tag bilingual_book_maker .

# run container
# Windows PowerShell
docker container run --rm --name bilingual_book_maker --mount type=bind,source=$folder_path,target='/app/test_books' bilingual_book_maker --book_name "/app/test_books/$book_name.epub" --openai_key $openai_key --no_limit --language $language
# linux
docker container run --rm --name bilingual_book_maker --mount type=bind,source=${folder_path:-"$(pwd)/books"},target='/app/test_books' bilingual_book_maker --book_name "/app/test_books/${book_name:-animal_farm}.epub" --openai_key "${openai_key}" --no_limit --language "${language:-zh-hant}"
```