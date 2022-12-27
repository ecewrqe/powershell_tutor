class Device{
    [string]$Brand
    [string]$Model
    [string]$VendorToken

    Device(
        [string]$brand,
        [string]$model,
        [string]$vendorToken
    ){
        $this.Brand = $brand
        $this.Model = $model
        $this.VendorToken = $vendorToken
    }

    [String]ToString(){
        return "{0}|{1}|{2}" -f $this.Brand, $this.Model, $this.VendorToken
    }
}

$d01_params = @{
    brand="Microsoft";
    model="Surface";
    vendorToken="010203001"
    
}
$d01_params.Add("color", "black")
$d01_params.Add("proc", (Get-Process Snagit32))

# $d01_params.Keys|foreach {if($_ -eq "proc"){$d01_params.$_.Handles}}
# Write-Output $d01_params.GetEnumerator()

# [Device]$d01 = [Device]::new(@d01_params)

$msg_map = @"
brand=Microsoft
model=Surface Pro
vendorToken=102030003
"@

ConvertTo-Json $d01_params
# enum Color {
#     rouge
#     naranja
#     amanan
#     negle
#     violet
#     blanc
# }

# [int][Color]::blanc
# [Color].GetEnumName(0)
# [Color].GetEnumNames()
# [Color].GetEnumValues()

function Get-PipelineBeginEnd
{
  begin {"Begin: The input is $input"}
#   process {"Processing:  $_ " }
  end {"End:   The input is $input" }
}

Add-Type @'
    using System;
    using System.Management.Automation;
    [Cmdlet("Get", "Date-Cmdlet")]
    public class GetFooCmdlet: Cmdlet{
        [Parameter(Position=0)]
        public DateTime Date{get; set;}

        protected override void ProcessRecord(){
            WriteObject(Date);
        }
    }
'@ -PassThru|%Assembly|Import-Module

function example_01{
    Param(
        [Parameter(Mandatory=$true, Position=0, ParameterSetName="computer name", 
    HelpMessage="Enter one or more computer names separated by commas.")] 
    # [SupportsWildcards()]
    # [Alias("CN", "MachineName")]
    # [AllowNull]
    # AllowNull, ValidateCount, ValidateLength, ValidatePattern, ValidateRange, ValidateScript({})
    # ValidateSet, ValidateNotNull, ValidateNotNullOrEmpty, valueFromPipeline, ValueFromPipelineByPropertyName

    [String[]] # hashtable
    $ComputerName
    )

    Write-Output "ComputerName: {0}" -f $ComputerName
}

function Send-Greeting
{
  [OutputType([String])]
  Param (
      [int]
      $Name
  )


}