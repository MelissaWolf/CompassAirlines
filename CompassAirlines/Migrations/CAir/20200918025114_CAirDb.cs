using System;
using Microsoft.EntityFrameworkCore.Migrations;

namespace CompassAirlines.Migrations.CAir
{
    public partial class CAirDb : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "Planes",
                columns: table => new
                {
                    PlaneID = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Model = table.Column<string>(maxLength: 30, nullable: false),
                    PlaneNum = table.Column<string>(maxLength: 10, nullable: false),
                    Fit4Flight = table.Column<bool>(nullable: false),
                    MaxPassengers = table.Column<int>(maxLength: 3, nullable: false),
                    MaxWeight = table.Column<int>(maxLength: 5, nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Planes", x => x.PlaneID);
                });

            migrationBuilder.CreateTable(
                name: "Staff",
                columns: table => new
                {
                    StaffID = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    FirstName = table.Column<string>(maxLength: 20, nullable: false),
                    LastName = table.Column<string>(maxLength: 20, nullable: false),
                    Role = table.Column<int>(nullable: false),
                    Phone = table.Column<string>(maxLength: 15, nullable: false),
                    Email = table.Column<string>(maxLength: 30, nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Staff", x => x.StaffID);
                });

            migrationBuilder.CreateTable(
                name: "Flights",
                columns: table => new
                {
                    FlightID = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    StaffID = table.Column<int>(nullable: false),
                    PlaneID = table.Column<int>(nullable: false),
                    Passengers = table.Column<int>(maxLength: 3, nullable: false),
                    Weight = table.Column<int>(maxLength: 5, nullable: false),
                    DepartDate = table.Column<DateTime>(nullable: false),
                    DepartTime = table.Column<DateTime>(nullable: false),
                    ArrivalDate = table.Column<DateTime>(nullable: false),
                    ArrivalTime = table.Column<DateTime>(nullable: false),
                    FlightStatus = table.Column<int>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Flights", x => x.FlightID);
                    table.ForeignKey(
                        name: "FK_Flights_Planes_PlaneID",
                        column: x => x.PlaneID,
                        principalTable: "Planes",
                        principalColumn: "PlaneID",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_Flights_Staff_StaffID",
                        column: x => x.StaffID,
                        principalTable: "Staff",
                        principalColumn: "StaffID",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateIndex(
                name: "IX_Flights_PlaneID",
                table: "Flights",
                column: "PlaneID");

            migrationBuilder.CreateIndex(
                name: "IX_Flights_StaffID",
                table: "Flights",
                column: "StaffID");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "Flights");

            migrationBuilder.DropTable(
                name: "Planes");

            migrationBuilder.DropTable(
                name: "Staff");
        }
    }
}
