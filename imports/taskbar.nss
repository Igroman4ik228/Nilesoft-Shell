menu(where=@(this.count == 0) type='taskbar' image=icon.settings expanded=true)
{	
	item(title="Диспетчер задач" image=icon.task_manager cmd='taskmgr.exe')
	item(title="Панель задач" image=inherit cmd='ms-settings:taskbar')
	item(vis=key.shift() image=\uE1AA title="Перезапуск проводника" cmd=command.restart_explorer)
	item(vis=key.shift() image=\uE0D0 title="Открыть папку с shell" cmd='explorer' args='F:\Nilesoft Shell')
}