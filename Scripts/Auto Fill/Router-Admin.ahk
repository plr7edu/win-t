;-------------------------------
;-- Change these parameters :
AA=administrator  ;- Email
BB=administrator  ;- Password
;-------------------------------
sleep,500
clipboard=%aa%
send,^v                         ;- Send username or email adress
sleep,500
send,{TAB}                      ;- Skip to next input field
clipboard=%bb%
send,^v                         ;- Send password          
sleep,500
send,{TAB}                      ;- Skip to next input field
sleep,500
send,{ENTER}                    ;- Start LOGIN
clipboard=
ExitApp
;============================================================
