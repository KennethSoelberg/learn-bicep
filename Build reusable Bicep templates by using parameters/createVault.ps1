$keyVaultName = 'Test1234-poc' # A unique name for the key vault.
$login = 'test1234' # The login that you used in the previous step.
$password = 'supersecret!' # The password that you used in the previous step.

$sqlServerAdministratorLogin = ConvertTo-SecureString $login -AsPlainText -Force
$sqlServerAdministratorPassword = ConvertTo-SecureString $password -AsPlainText -Force

New-AzKeyVault -VaultName $keyVaultName -Location westus -EnabledForTemplateDeployment
Set-AzKeyVaultSecret -VaultName $keyVaultName -Name 'sqlServerAdministratorLogin' -SecretValue $sqlServerAdministratorLogin
Set-AzKeyVaultSecret -VaultName $keyVaultName -Name 'sqlServerAdministratorPassword' -SecretValue $sqlServerAdministratorPassword