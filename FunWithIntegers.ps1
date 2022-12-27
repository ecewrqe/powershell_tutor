class FunWithIntegers{
    [int[]]$Integers = 0..10

    [int[]]GetOddInteger(){
        # this line goes to the pipeline
        # pwsh ps1|Where-Object {($_ % 3) -eq 0}
        return $this.Integers.Where({($_ % 2)})
    }

    [int[]]GetEvenInteger(){
        return $this.Integers.Where({($_ % 2) -eq 0})
    }
}
$ints = [FunWithIntegers]::new()
$ints.GetOddInteger()