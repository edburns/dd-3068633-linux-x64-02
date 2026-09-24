BeforeAll {
    $script:ScriptPath = Join-Path $PSScriptRoot 'math-tool.ps1'
    . $script:ScriptPath -N 0
}

Describe 'Get-Fibonacci' {
    It 'returns 0 for N=0' {
        Get-Fibonacci -N 0 | Should -Be 0
    }

    It 'returns 1 for N=1' {
        Get-Fibonacci -N 1 | Should -Be 1
    }

    It 'returns the correct value for a representative N' {
        Get-Fibonacci -N 10 | Should -Be 55
    }

    It 'returns values beyond the signed 64-bit range' {
        Get-Fibonacci -N 93 | Should -Be ([System.Numerics.BigInteger]::Parse('12200160415121876738'))
    }
}

Describe 'math-tool.ps1 direct CLI execution' {
    It 'prints exactly one result line for N=0' {
        $output = & pwsh -NoLogo -NoProfile -File $script:ScriptPath -N 0
        $LASTEXITCODE | Should -Be 0
        @($output).Count | Should -Be 1
        @($output)[0] | Should -Be 'Fibonacci(0) = 0'
    }

    It 'prints exactly one result line for N=1' {
        $output = & pwsh -NoLogo -NoProfile -File $script:ScriptPath -N 1
        $LASTEXITCODE | Should -Be 0
        @($output).Count | Should -Be 1
        @($output)[0] | Should -Be 'Fibonacci(1) = 1'
    }

    It 'prints exactly one result line for a representative N' {
        $output = & pwsh -NoLogo -NoProfile -File $script:ScriptPath -N 10
        $LASTEXITCODE | Should -Be 0
        @($output).Count | Should -Be 1
        @($output)[0] | Should -Be 'Fibonacci(10) = 55'
    }

    It 'prints a result beyond the signed 64-bit range' {
        $output = & pwsh -NoLogo -NoProfile -File $script:ScriptPath -N 93
        $LASTEXITCODE | Should -Be 0
        @($output).Count | Should -Be 1
        @($output)[0] | Should -Be 'Fibonacci(93) = 12200160415121876738'
    }
}
