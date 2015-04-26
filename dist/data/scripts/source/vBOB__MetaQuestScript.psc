Scriptname vBOB__MetaQuestScript extends Quest  
{Do initialization and track variables for scripts.}

;=== Imports ===--

Import Utility
Import Game

;=== Properties ===--

Actor Property PlayerRef Auto

Bool Property Ready = False Auto

Float Property ModVersion Auto Hidden
Int Property ModVersionInt Auto Hidden

Int Property ModVersionMajor Auto Hidden
Int Property ModVersionMinor Auto Hidden
Int Property ModVersionPatch Auto Hidden

String Property ModName = "Bobblehead" Auto Hidden

;=== Properties ===--

Quest Property vBOB_ActorPollingQuest Auto

;Message Property vMYC_ModLoadedMSG Auto
;Message Property vMYC_ModUpdatedMSG Auto
;Message Property vMYC_ModShutdownMSG Auto

;=== Config variables ===--

;=== Variables ===--

Event OnInit()
	;If IsRunning()
		RegisterForSingleUpdate(5)
	;EndIf
EndEvent

Event OnUpdate()
	;While vBOB_ApplyBobbleheadSpell.IsRunning()
	;	vBOB_ApplyBobbleheadSpell.Stop()
	;	Wait(0.1)
	;EndWhile
	If !vBOB_ActorPollingQuest.IsRunning()
		vBOB_ActorPollingQuest.Start()
	EndIf
EndEvent