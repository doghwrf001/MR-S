return function(config, http, gethui, getcustomasset, makefolder, isfolder, isfile, writefile, coolrequest, getSyde)
	local music = {
		playlist = {},
		sound = nil,
		loaded = false
	}

	function music.Play(i)
		if i > #music.playlist then
			i = 1
		end

		if i < 1 then
			i = #music.playlist
		end

		local song = music.playlist[i]
		music.sound.SoundId = song.assetid
		config.wahtSong = i

		if config.musicOn then
			music.sound:Play()

			getSyde():Notify({
				Title = 'Now playing',
				Content = song.name,
				Duration = 3
			})
		end
	end

	function music.Next()
		music.Play(config.wahtSong + 1)
	end

	function music.Toggle(bool)
		config.musicOn = bool

		if bool then
			if not music.sound.IsPlaying then
				if music.sound.TimePosition > 0 then
					music.sound:Resume()
				else
					music.Play(config.wahtSong)
				end
			end
		else
			music.sound:Pause()
		end
	end

	function music.Init()
		if not isfolder(config.musicFolder) then
			makefolder(config.musicFolder)
		end

		music.sound = Instance.new('Sound') -- LEBRON JAMES SPOTTED NOT USING SECOND ARG OF Instance.new() 😲
		music.sound.Name = 'Слава Богу CBO🙏❤️СЛАВА ZOV🙏❤️АНГЕЛА ХРАНИТЕЛЯ CBO КАЖДОМУ ИЗ ВАС🙏❤️БОЖЕ ХРАНИ CBO🙏❤️СПАСИБО ВАМ НАШИ МАЛЬЧИКИ🙏🏼❤️🇷🇺 ХРАНИ ZOV✊🇷🇺💯Слава России ZOV Слава Богу Z🙏❤️СЛАВА CBO🙏❤️АНГЕЛА ХРАНИТЕЛЯ ZOV КАЖДОМУ ИЗ ВАС🇷🇺🙏НАШИ МАЛЬЧИКИ🙏❤️'
		music.sound.Volume = 0.5
		music.sound.Looped = false 
		music.sound.Parent = gethui()

		music.sound.Ended:Connect(function()
			if config.musicOn then
				music.Next()
			end
		end)

		local json = coolrequest(config.manifestURL)
		local manifest = http:JSONDecode(json)

		for _, v in ipairs(manifest) do
			local path = `{config.musicFolder}/{v.file}`

			if not isfile(path) then
				local audio = coolrequest(config.musicURL .. v.file)
				if audio then
					writefile(path, audio)
				end
			end

			table.insert(music.playlist, {
				name = v.name,
				assetid = getcustomasset(path)
			})
		end

		music.loaded = true

		if config.musicOn then
			music.Play(config.wahtSong)
		end
	end

	task.spawn(music.Init)

	return music
end