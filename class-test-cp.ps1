class Device{
    [string] hidden $Brand
    [string] hidden $Model
    [string] hidden $VendorSku
    Device(){
        $this.Brand = "undefined"
    }
    Device(
        [string]$b,
        [string]$m,
        [string]$vs
    ){
        $this.Brand = $b
        $this.Model = $m
        $this.VendorSku = $vs
    }
    [string]ToString(){
        return ("{0}|{1}|{2}" -f $this.Brand, $this.Model, $this.VendorSku)
    }
}

class Rack{
    [int]$Slots = 8
    [string]$Brand
    [string]$Model
    [string]$VendorSku
    [string]$AssetId
    [Device[]]$Devices = [Device[]]::new($this.Slots)

    [void]AddDevice([Device]$dev, [int]$slot){
        $this.Devices[$slot] = $dev
    }

    [void]RemoveDevice([int]$slot){
        $this.Devices[$slot] = $null
    }

    [int[]]GetAvailableSlots(){
        [int]$i = 0
        return @($this.Devices.foreach{if($_ -eq $null){$i}; $i++})
    }

}


$rack = [Rack]::new()
# $surface = [Device]::new()
$surface = [Device]::new(
    "Microsoft", 
    "Surface Pro 4", 
    "5072641000"
)


$rack.AddDevice($surface, 2)

$macbook = [Device]::new()
$macbook.Brand = "Apple"
$macbook.Model = "macbook Pro 4"
$macbook.VendorSku = "507264100123"

