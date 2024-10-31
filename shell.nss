settings
{
	priority=1
	exclude.where = !process.is_explorer
	showdelay = 100
	// Options to allow modification of system items
	modify.remove.duplicate=1
	tip.enabled=true
}

item(vis=key.shift() title="Переключить видимость скрытого" image=icon.show_hidden_files cmd='@command.togglehidden')

import 'imports/theme.nss'
import 'imports/images.nss'
import 'imports/modify.nss'

menu(mode="multiple" title="Закрепить/открепить" image=icon.pin)
{
}

menu(mode="multiple" title=title.more_options image=icon.more_options)
{
}

import 'imports/taskbar.nss'
