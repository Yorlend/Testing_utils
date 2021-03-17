# TESTING UTILS

## В репозитории находятся скрипты автоматизации создания лаб и тестирования, а также примеры заполнения файлов с функциональными тестами.  
### ***Тестирование корректно работает для программ без приглашений ко вводу/комментариев к выводу. Для корректного тестирования в ином случае необходимо видоизменять файлы *_*_out.txt***
 - скрипт `make_tests.sh` отвечает за создание тестовых файлов, для их последующего заполнения. Для корректной работы в папке, откуда запускается скрипт, должена быть создана папка func_tests
 - `makefile` - файл сборки. Для сборки и тестирования проекта необходимо прописать `make`, перед этим убедившись, что в папке есть файл main.c и test.sh
 - скрипт `makelab.sh` создает файл с лабой, положив в него все нужные файлы. Для корректной работы в папке, откуда запускается скрипт должны находится вышеперечисленные файлы


### Подробнее в readme func_tests
