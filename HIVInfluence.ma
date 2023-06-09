[top]
components : HIVInfluence

[HIVInfluence]

type : cell
dim : (10,10)
delay : inertial
defaultDelayTime  : 100
border : wrapped
neighbors : HIVSpread(-1,-1) HIVSpread(-1,0) HIVSpread(-1,1)
neighbors : HIVSpread(0,-1)  HIVSpread(0,0)  HIVSpread(0,1)
neighbors : HIVSpread(1,-1)  HIVSpread(1,0)  HIVSpread(1,1)
initialvalue : 0
initialCellsValue : HIVInfluence.val
localtransition : HIVBehavior

[HIVBehavior]
rule : 10 750{ (0,0) = 0 }
rule : 2 10 { (0,0) = 1 and (statecount(0)+statecount(1)*randomsign+statecount(2)*randomsign+statecount(3)*randomsign+statecount(4)*randomsign) <= -1 }
rule : 10 750 { (0,0) = 1 }
rule : 3 10 { (0,0) = 2 and (statecount(3)*uniform(0,1)>0.67) }
rule : 1 10 { (0,0) = 2 and (statecount(0)+statecount(1)*randomsign+statecount(2)*randomsign+statecount(3)*randomsign+statecount(4)*randomsign) >= 1 } 
rule : 10 750 { (0,0) = 2 }
rule : 4 10 { (0,0) = 3 and (statecount(0)+statecount(1)*randomsign+statecount(2)*randomsign+statecount(3)*randomsign+statecount(4)*randomsign) >= 1 }
rule : 10 50 { (0,0) = 4 }
rule : 3 10 { (0,0) = 4 and (statecount(0)+statecount(1)*randomsign+statecount(2)*randomsign+statecount(3)*randomsign+statecount(4)*randomsign) <= -1 }
rule : 10 50 { (0,0) = 3 }
rule : {randInt(4)} 10 {(0,0)=10}
rule : 10 5 { t }