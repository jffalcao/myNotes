# CDSB - Presentation 22 march

1.  Minimal Install
    - What's on the computer
        - Debian 10 Buster (Why?)
        - Outlook Web
        - Teams
        - Yammer
        - Sharepoint
        - Word
        - Excel
        - Etc.
        - OneDrive
        - File Shares
    - To Come
        - Part o the Domain
        - Connexion to Corporate Wifi
        - PulseSecure
        - SCCM
        - Nexxpose
        - McAfee

    2. Customization Apps
        - BitBucket Project
        - Building Blocks (In Sourcing)
        - SetUp - Scripts
        - QA - Validate Install and Update

    3. Java Use Cases

    4. DotNet Core Use Cases
        - Install vim
        - Install Git
        - [Install dotnet core 2.2 sdk](..Debian10-buster.md)
        - verify installation
        ```
        dotnet
        ```
        - Create a new console App

        ```
        67  dotnet new console -o dnc-consoleApp
        68  ls
        69  cd dn-consoleApp/
        70  ls
        71  cat Program.cs 
        72  dotnet run
        73  cat dn-consoleApp.csproj  
        ```
        - Enter a new line in Program.cs using vi(m)

        ```
        74  vi Program.cs
        ----- Program.cs
        ...
        Console.WriteLine("Hello World!");
        Console.WriteLine($"The current time is: {DateTime.Now}");
        ...
        -----
        75  cat Program.cs 
        76  dotnet run
        77  vi Program.cs 
        78  cat Program.cs 
        79  dotnet run
        80  vi Program.cs 
        81  dotnet run
        ```
        - Install VS Code
        - Start VS code in ~
        - Show internal-terminal (InTerm) in VS Code
        - Open cn-consoleApp in VS Code from InTerm
        - Create a ne webapp project

        ```
        dotnet new webApp -o dnc-webApp --no-https
        cd myWebApp
        ```
        - Run in terminal
        - Run with ctrl-F5 / F5
        - Add another line: The Time on the server is @DateTime.Now in index.cstml
        - Push code to Bitbucket /AzureDevOps
        - Create the project on the server
        
        ```
   24  git init
   25  git status
   26  git remote add origin https://github.com/jffalcao/dnc-todoApi.git
   27  git remote -v
   31  git pull origin master --allow-unrelated-histories
   28  git push origin master
   32  history
   ```

## Varia
- [Tutorial: Create a web API with ASP.NET Core MVC](https://docs.microsoft.com/en-us/aspnet/core/tutorials/first-web-api?view=aspnetcore-2.2&tabs=visual-studio-code)







    