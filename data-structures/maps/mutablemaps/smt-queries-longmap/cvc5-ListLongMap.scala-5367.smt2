; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71824 () Bool)

(assert start!71824)

(declare-datatypes ((array!46678 0))(
  ( (array!46679 (arr!22369 (Array (_ BitVec 32) (_ BitVec 64))) (size!22790 (_ BitVec 32))) )
))
(declare-fun a!4227 () array!46678)

(declare-fun call!36565 () (_ BitVec 32))

(declare-fun c!90820 () Bool)

(declare-fun bm!36562 () Bool)

(declare-fun lt!379080 () array!46678)

(declare-fun i!1466 () (_ BitVec 32))

(declare-fun to!390 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!46678 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> bm!36562 (= call!36565 (arrayCountValidKeys!0 (ite c!90820 a!4227 lt!379080) (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun b!834329 () Bool)

(declare-fun e!465530 () Bool)

(assert (=> b!834329 (= e!465530 false)))

(declare-fun lt!379087 () (_ BitVec 32))

(assert (=> b!834329 (= lt!379087 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun lt!379082 () (_ BitVec 32))

(assert (=> b!834329 (= lt!379082 (arrayCountValidKeys!0 lt!379080 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun b!834330 () Bool)

(declare-fun res!567481 () Bool)

(declare-fun e!465526 () Bool)

(assert (=> b!834330 (=> (not res!567481) (not e!465526))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!834330 (= res!567481 (not (validKeyInArray!0 (select (arr!22369 a!4227) i!1466))))))

(declare-fun bm!36563 () Bool)

(declare-fun call!36566 () (_ BitVec 32))

(assert (=> bm!36563 (= call!36566 (arrayCountValidKeys!0 (ite c!90820 lt!379080 a!4227) (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun b!834331 () Bool)

(declare-datatypes ((Unit!28664 0))(
  ( (Unit!28665) )
))
(declare-fun e!465528 () Unit!28664)

(declare-fun lt!379084 () Unit!28664)

(assert (=> b!834331 (= e!465528 lt!379084)))

(declare-fun lt!379085 () Unit!28664)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!46678 (_ BitVec 32) (_ BitVec 32)) Unit!28664)

(assert (=> b!834331 (= lt!379085 (lemmaValidKeyIncreasesNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun lt!379083 () (_ BitVec 32))

(assert (=> b!834331 (= call!36565 (bvadd #b00000000000000000000000000000001 lt!379083))))

(assert (=> b!834331 (= lt!379084 (lemmaValidKeyIncreasesNumOfKeys!0 lt!379080 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun lt!379086 () (_ BitVec 32))

(assert (=> b!834331 (= call!36566 (bvadd #b00000000000000000000000000000001 lt!379086))))

(declare-fun b!834332 () Bool)

(declare-fun e!465529 () Bool)

(assert (=> b!834332 (= e!465529 e!465530)))

(declare-fun res!567482 () Bool)

(assert (=> b!834332 (=> (not res!567482) (not e!465530))))

(assert (=> b!834332 (= res!567482 (and (bvsge (bvadd #b00000000000000000000000000000001 to!390) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 to!390) (size!22790 a!4227)) (bvsgt (bvadd #b00000000000000000000000000000001 to!390) i!1466)))))

(declare-fun lt!379081 () Unit!28664)

(assert (=> b!834332 (= lt!379081 e!465528)))

(assert (=> b!834332 (= c!90820 (validKeyInArray!0 (select (arr!22369 a!4227) to!390)))))

(declare-fun b!834333 () Bool)

(assert (=> b!834333 (= e!465526 e!465529)))

(declare-fun res!567480 () Bool)

(assert (=> b!834333 (=> (not res!567480) (not e!465529))))

(assert (=> b!834333 (= res!567480 (and (= lt!379086 lt!379083) (not (= to!390 (size!22790 a!4227)))))))

(assert (=> b!834333 (= lt!379083 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!834333 (= lt!379086 (arrayCountValidKeys!0 lt!379080 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun k!2968 () (_ BitVec 64))

(assert (=> b!834333 (= lt!379080 (array!46679 (store (arr!22369 a!4227) i!1466 k!2968) (size!22790 a!4227)))))

(declare-fun b!834334 () Bool)

(declare-fun res!567483 () Bool)

(assert (=> b!834334 (=> (not res!567483) (not e!465526))))

(assert (=> b!834334 (= res!567483 (validKeyInArray!0 k!2968))))

(declare-fun b!834335 () Bool)

(declare-fun lt!379088 () Unit!28664)

(assert (=> b!834335 (= e!465528 lt!379088)))

(declare-fun lt!379089 () Unit!28664)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!46678 (_ BitVec 32) (_ BitVec 32)) Unit!28664)

(assert (=> b!834335 (= lt!379089 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!834335 (= call!36566 lt!379083)))

(assert (=> b!834335 (= lt!379088 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 lt!379080 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!834335 (= call!36565 lt!379086)))

(declare-fun res!567484 () Bool)

(assert (=> start!71824 (=> (not res!567484) (not e!465526))))

(assert (=> start!71824 (= res!567484 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22790 a!4227))))))

(assert (=> start!71824 e!465526))

(assert (=> start!71824 true))

(declare-fun array_inv!17792 (array!46678) Bool)

(assert (=> start!71824 (array_inv!17792 a!4227)))

(declare-fun b!834328 () Bool)

(declare-fun res!567479 () Bool)

(assert (=> b!834328 (=> (not res!567479) (not e!465526))))

(assert (=> b!834328 (= res!567479 (and (bvslt (size!22790 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22790 a!4227)) (bvsgt to!390 i!1466)))))

(assert (= (and start!71824 res!567484) b!834330))

(assert (= (and b!834330 res!567481) b!834334))

(assert (= (and b!834334 res!567483) b!834328))

(assert (= (and b!834328 res!567479) b!834333))

(assert (= (and b!834333 res!567480) b!834332))

(assert (= (and b!834332 c!90820) b!834331))

(assert (= (and b!834332 (not c!90820)) b!834335))

(assert (= (or b!834331 b!834335) bm!36562))

(assert (= (or b!834331 b!834335) bm!36563))

(assert (= (and b!834332 res!567482) b!834329))

(declare-fun m!779437 () Bool)

(assert (=> b!834333 m!779437))

(declare-fun m!779439 () Bool)

(assert (=> b!834333 m!779439))

(declare-fun m!779441 () Bool)

(assert (=> b!834333 m!779441))

(declare-fun m!779443 () Bool)

(assert (=> b!834334 m!779443))

(declare-fun m!779445 () Bool)

(assert (=> b!834330 m!779445))

(assert (=> b!834330 m!779445))

(declare-fun m!779447 () Bool)

(assert (=> b!834330 m!779447))

(declare-fun m!779449 () Bool)

(assert (=> b!834329 m!779449))

(declare-fun m!779451 () Bool)

(assert (=> b!834329 m!779451))

(declare-fun m!779453 () Bool)

(assert (=> b!834335 m!779453))

(declare-fun m!779455 () Bool)

(assert (=> b!834335 m!779455))

(declare-fun m!779457 () Bool)

(assert (=> b!834332 m!779457))

(assert (=> b!834332 m!779457))

(declare-fun m!779459 () Bool)

(assert (=> b!834332 m!779459))

(declare-fun m!779461 () Bool)

(assert (=> start!71824 m!779461))

(declare-fun m!779463 () Bool)

(assert (=> bm!36562 m!779463))

(declare-fun m!779465 () Bool)

(assert (=> b!834331 m!779465))

(declare-fun m!779467 () Bool)

(assert (=> b!834331 m!779467))

(declare-fun m!779469 () Bool)

(assert (=> bm!36563 m!779469))

(push 1)

