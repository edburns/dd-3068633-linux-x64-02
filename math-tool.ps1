[CmdletBinding()]
param(
    [Parameter(Mandatory = $true)]
    [ValidateRange(0, [int]::MaxValue)]
    [int]$N
)

function Get-Fibonacci {
    [CmdletBinding()]
    [OutputType([long])]
    param(
        [Parameter(Mandatory = $true)]
        [ValidateRange(0, [int]::MaxValue)]
        [int]$N
    )

    [long]$previous = 0
    [long]$current = 1

    if ($N -eq 0) {
        return [long]0
    }

    for ($i = 1; $i -lt $N; $i++) {
        $next = $previous + $current
        $previous = $current
        $current = $next
    }

    return $current
}

if ($MyInvocation.InvocationName -ne '.') {
    $value = Get-Fibonacci -N $N
    Write-Output "Fibonacci($N) = $value"
}
