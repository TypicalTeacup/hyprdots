local function filetype(pattern, filetype)
	vim.filetype.add({
		pattern = { [pattern] = filetype },
	})
end

filetype(".*/hypr/.*%.conf", "hyprlang")
