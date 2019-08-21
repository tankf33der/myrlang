function runme()
    local buf = CurView().Buf -- The current buffer
	buf:Save()
    if buf:FileType() == "python" then
        HandleShellCommand("python3 " .. buf.Path, true, true)
    end
    if buf:FileType() == "myrddin" then
        HandleShellCommand("mbld -R " .. buf.Path, true, true)
    end
end

BindKey("CtrlR", "init.runme")
