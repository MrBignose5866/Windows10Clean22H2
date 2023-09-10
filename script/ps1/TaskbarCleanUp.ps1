function UnPin-App { param(
        [string]$appname
    )
    try {
        ((New-Object -Com Shell.Application).NameSpace('shell:::{4234d49b-0245-4df3-b780-3893943456e1}').Items() | ?{$_.Name -eq $appname}).Verbs() | ?{$_.Name.replace('&','') -match 'Unpin from taskbar'} | %{$_.DoIt()}
        return "App '$appname' unpinned from Taskbar"
    } catch {
        Write-Error "Error Unpinning App! (App-Name correct?)"
    }
}

UnPin-App "Microsoft Store"

stop-process -name explorer –force

function UnPin-App { param(
        [string]$appname
    )
    try {
        ((New-Object -Com Shell.Application).NameSpace('shell:::{4234d49b-0245-4df3-b780-3893943456e1}').Items() | ?{$_.Name -eq $appname}).Verbs() | ?{$_.Name.replace('&','') -match 'Unpin from taskbar'} | %{$_.DoIt()}
        return "App '$appname' unpinned from Taskbar"
    } catch {
        Write-Error "Error Unpinning App! (App-Name correct?)"
    }
}

UnPin-App "Microsoft Edge"

stop-process -name explorer –force

function UnPin-App { param(
        [string]$appname
    )
    try {
        ((New-Object -Com Shell.Application).NameSpace('shell:::{4234d49b-0245-4df3-b780-3893943456e1}').Items() | ?{$_.Name -eq $appname}).Verbs() | ?{$_.Name.replace('&','') -match 'Unpin from taskbar'} | %{$_.DoIt()}
        return "App '$appname' unpinned from Taskbar"
    } catch {
        Write-Error "Error Unpinning App! (App-Name correct?)"
    }
}

UnPin-App "Mail"

stop-process -name explorer –force

function UnPin-App { param(
        [string]$appname
    )
    try {
        ((New-Object -Com Shell.Application).NameSpace('shell:::{4234d49b-0245-4df3-b780-3893943456e1}').Items() | ?{$_.Name -eq $appname}).Verbs() | ?{$_.Name.replace('&','') -match 'Unpin from taskbar'} | %{$_.DoIt()}
        return "App '$appname' unpinned from Taskbar"
    } catch {
        Write-Error "Error Unpinning App! (App-Name correct?)"
    }
}

UnPin-App "Office"

stop-process -name explorer –force