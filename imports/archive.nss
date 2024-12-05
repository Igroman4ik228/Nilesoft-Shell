menu(mode="multiple" title='Архивация' type='file|dir|desktop|namespace' sep=sep.bottom image=\uE26E)
{
    menu(mode="single" type='desktop|namespace' title='Создать архив' image=\uE160)
    {
        item(title='ZIP архив' cmd='tar' args=`-a -c -f "@sel.name".zip "@sel.path"` image=\uE90A)
        item(title='RAR архив' cmd='tar' args='-a -c -f "@sel.name".rar "@sel.path"' image=\uE90A)
    }
    menu(mode="single" type='dir|file' title='Добавить в архив' image=\uE160)
    {
        item(title='Добавить в ZIP' cmd='tar' args='-a -r -f "@sel.name".zip "@sel.path"' image=\uE90A)
        item(title='Добавить в RAR' cmd='tar' args='-a -r -f "@sel.name".rar "@sel.path"' image=\uE90A)
    }
    item(title='Распаковать здесь' find='.rar|.zip|.7z' type='file' cmd='tar' args='-xf "@sel.path" -C "@sel.dir"' image=\uE90A)
}
item(title='Распаковать здесь' find='.rar|.zip|.7z' type='file' cmd='tar' args='-xf "@sel.path" -C "@sel.dir"' image=\uE90A  menu=title.create)

