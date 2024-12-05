$notepads_app_path='@appx.path("Notepads")'
$notepad_path=@if(package.exists("Notepads"), '@notepads_app_path\Notepads.exe', 'notepad')
item(type='file' find='.bat|.reg' title=id.edit.title image=icon.edit pos=1 cmd='@notepad_path' args='@sel.path')

item(vis=key.shift() title="Переключить видимость скрытого" image=icon.show_hidden_files cmd='@command.togglehidden')


remove(find='Добавить в избранное')
remove(find='Add to Favorites')
remove(find='3D Edit')
remove(find='Правка')
remove(find='Edit')


remove(where=this.id==id.troubleshoot_compatibility)
remove(where=this.id==id.open_powershell_window_here)
remove(where=this.id==id.edit)
remove(where=this.id==id.send_to)
remove(where=this.id==id.extract_all)

modify(where=this.id==id.open image=image.default)
modify(where=this.id==id.open_autoplay image=image.default)

modify(mode=mode.multiple
	where=this.id(id.restore_previous_versions,id.cast_to_device)
	vis=vis.remove)
	
modify(type="recyclebin" where=window.is_desktop and this.id==id.empty_recycle_bin pos=1 sep)

modify(find="Открепить*" pos="bottom" menu="Закрепить/открепить")
modify(find="Unpin*" pos="bottom" menu="Pin/Unpin")
modify(find="Закрепить*" pos="top" menu="Закрепить/открепить")
modify(find="Pin*" pos="top" menu="Pin/Unpin")


modify(mode=mode.multiple
	where=this.id(
		id.copy_as_path,
		id.open_autoplay,
		id.turn_off_bitlocker,
		id.turn_on_bitlocker,
		id.share,
		id.set_as_desktop_background,
		id.rotate_left,
		id.rotate_right,
		id.map_network_drive,
		id.disconnect_network_drive,
		id.format,
		id.give_access_to,
		id.include_in_library)
	pos=1 menu=title.more_options)
