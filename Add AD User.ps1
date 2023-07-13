$Attributes = @{

    Enabled = $true
    ChangePasswordAtLogon = $true
 
    UserPrincipalName = "test.man@testman.org"
    Name = "Test.man"
    GivenName = "Test"
    Surname = "Testie"
    DisplayName = "Test man nmr 5"
    Description = "Test man voor mijn projectje."
    Office = "Jammer man."
 
    Company = "Testman.org"
    Department = "IT"
    Title = "Een test gast"
    City = "Amsterdam"
    State = "Apeldoorn"
 
    AccountPassword = "TotallyFakePassword123" | ConvertTo-SecureString -AsPlainText -Force
 
 }
 
 New-ADUser @Attributes
 