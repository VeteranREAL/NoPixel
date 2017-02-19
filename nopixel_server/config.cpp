class CfgPatches {
    class NoPixel_Server {
        units[] = {};
        weapons[] = {};
        requiredVersion = 1.0;
        requiredAddons[] = {};
    };
};
class CfgFunctions {
    class Server {
        class Save {
            file = "NoPixel_Server\server\core\Save";
            class autolock {};
            class initStats {};
            class SetVariable {};
			class insertLog {};
        };
        class Sync {
            file = "NoPixel_Server\server\core\Sync";
            class invSave {};
            class statSaveDisconnect {};
            class statSaveLoop {};
            class steppedSync {};
            class statSave {};
        };
        class Mafia {
            file = "NoPixel_Server\server\core\Mafia";
            class updateMafiaOwed {};
            class updatemafiabank {};
            class mafiabank {};
            class MafiaOwed {};
        };
        class EventHandlers {
            file = "NoPixel_Server\server\core\EventHandlers";
            class handleDisconnect {};
            class connected {};
            class cleanup {};
        };
        class Init {
            file = "NoPixel_Server\server\core\Init";
            class setupVariablesServer {};
            class resetConnected {};
            class cleanup {};
        };
        class Race {
            file = "NoPixel_Server\server\core\Race";
            class updatefastest {};
            class updatefastestRally {};
            class racetimes {};
            class rallyracetimes {};
        };
        class Misc {
            file = "NoPixel_Server\server\core\Misc";
            class deleteDeadPlayers {};
            class promote {};
            class paintball {};
        };
        class Phone {
            file = "NoPixel_Server\server\core\Phone";
            class sendMessage {};
            class sendMail {};
            class retreivePhonebook {};
        };
        class Shopping {
            file = "NoPixel_Server\server\core\Shopping";
            class retreiveStore {};
            class retreiveStoreShopper {};
            class shopPurchase {};
            class storeUpdateName {};
            class finishStoreUpdate {};
			class closeshop {};
			class vehBuy {};
            class economyEvents {};
        };
        class Wanted {
            file = "NoPixel_Server\server\core\Wanted";
            class wantedList {};
            class wantedRemove {};
			class wantedRemove2 {};
            class addcriminal {};
            class wantedAdd {};
            class jailsetup {};
            class robberyCall {};
            class robberyCallBank {};
        };
        class Housing {
            file = "NoPixel_Server\server\core\Housing";
            class retreiveHouse {};
        };
        class Logs {
            file = "NoPixel_Server\server\core\Logs";
            class actionLog {};
            class moneyLog {};
            class vehicleLog {};
            class copLog {};
            class deathLog {};
            class economyLog {};
            class adminLog {};
            class connectionLog {};
            class craftLog {};
        };
        class Admin {
            file = "NoPixel_Server\server\core\Admin";
            class rconServerCommand {};
            class rconExtdb {};
        };
        class Mayor {
            file = "NoPixel_Server\server\core\Mayor";
            class paymayor {};
            class mayorsetup {};
            class mayorupdate {};
			class taxupdate {};
        };
        class Garage {
            file = "NoPixel_Server\server\core\Garage";
            class upgradeVehicle {};
            class getVehInfo {};
            class policechecklicense {};
            class platechange {};
            class garageUpdate {};
            class updateCarStatus {};
            class lock {};
            class raceenter {};
			class srvholmsg {};
            class fuelVehicle {};
			class updateVehicleColor {};
        };
        class Jobs {
            file = "NoPixel_Server\server\core\Jobs";
            class refreshjobs {};
            class drugjob {};
            class firestart {};
            class rentoffice {};
            class requestmedic {};
            class quitJob {};
            class requestJobs {};
            class addJob {};
            class jobAction {};
            class jobStart {};
            class quitDispatch {};
            class giveTask {};
        };
    };
    class ExternalS {
        class ExtDB {
            file = "NoPixel_Server\External\ExtDB";
            class ExtDBasync {};
            class ExtDBinit {};
            class ExtDBstrip {};
            class ExtDBquery {};
        };
    };
};