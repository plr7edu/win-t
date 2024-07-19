CredWrite("Name")

CredDelete(name)
{
    return DllCall("Advapi32.dll\CredDeleteW"
    , "WStr", name ; [in] LPCWSTR TargetName
    , "UInt", 1    ; [in] DWORD   Type,
    , "UInt", 0    ; [in] DWORD   Flags
    , "UInt") ; BOOL
}
