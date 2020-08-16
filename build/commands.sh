dotnet add package Microsoft.AspNetCore.Authentication.MicrosoftAccount --version 3.1.2
dotnet add package Microsoft.AspNetCore.Authentication.JwtBearer --version 3.1.2

dotnet add package Microsoft.EntityFrameworkCore.SqlServer --version 3.1.1
dotnet add reference ../Inspiration/Inspiration.csproj
dotnet tool install --global dotnet-ef
dotnet add package Microsoft.EntityFrameworkCore.Design

dotnet ef migrations add InitialCreate -o Data/Migrations

dotnet ef migrations add AddedTag
dotnet ef database update
dotnet ef migrations remove

dotnet ef migrations script --project "src\Infrastructure\Infrastructure.csproj" --output "src\Infrastructure\bin\db.sql"