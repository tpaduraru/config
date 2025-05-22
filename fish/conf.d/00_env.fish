#!/usr/bin/env fish
# This is where all the enviroment variables will get set

## GLOBAL
set -g fish_prompt_pwd_dir_length 0

## LOCAL
## vars change depending on hostname
switch $hostname
	case poppy
		set -g LAN_IP '192.168.0.90'
		set -g IP '135.134.153.235'
		set -g eth 'enp42s0'
		set -g prompt_host_color white
		set -g prompt_symbol_color white
	case edna.paduraru.net
		set -g LAN_IP '192.168.0.99'
		set -g IP '135.134.153.235'
		set -g eth ''
		set -g prompt_host_color yellow
		set -g prompt_symbol_color yellow
	case hailey.paduraru.net
		set -g LAN_IP '192.168.0.95'
		set -g IP ''
		set -g eth ''
		set -g prompt_host_color yellow
		set -g prompt_symbol_color yellow
	case darter-pro
		set -g LAN_IP ''
		set -g IP '135.134.153.235'
		set -g eth ''
		set -g prompt_host_color yellow
		set -g prompt_symbol_color yellow
end

## vars change depending on user
switch $USER
	case tim
		set -g prompt_user_color green
	case timo
		set -g prompt_user_color green
	case root
		set -g prompt_user_color red
	case '*'
		set -g prompt_user_color yellow
end

