; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71834 () Bool)

(assert start!71834)

(declare-fun b!834448 () Bool)

(declare-fun e!465602 () Bool)

(declare-fun e!465604 () Bool)

(assert (=> b!834448 (= e!465602 e!465604)))

(declare-fun res!567569 () Bool)

(assert (=> b!834448 (=> (not res!567569) (not e!465604))))

(declare-datatypes ((array!46688 0))(
  ( (array!46689 (arr!22374 (Array (_ BitVec 32) (_ BitVec 64))) (size!22795 (_ BitVec 32))) )
))
(declare-fun a!4227 () array!46688)

(declare-fun to!390 () (_ BitVec 32))

(declare-fun lt!379239 () (_ BitVec 32))

(declare-fun lt!379232 () (_ BitVec 32))

(assert (=> b!834448 (= res!567569 (and (= lt!379239 lt!379232) (not (= to!390 (size!22795 a!4227)))))))

(declare-fun i!1466 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!46688 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!834448 (= lt!379232 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun lt!379236 () array!46688)

(assert (=> b!834448 (= lt!379239 (arrayCountValidKeys!0 lt!379236 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun k!2968 () (_ BitVec 64))

(assert (=> b!834448 (= lt!379236 (array!46689 (store (arr!22374 a!4227) i!1466 k!2968) (size!22795 a!4227)))))

(declare-fun bm!36592 () Bool)

(declare-fun call!36596 () (_ BitVec 32))

(assert (=> bm!36592 (= call!36596 (arrayCountValidKeys!0 lt!379236 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun b!834449 () Bool)

(declare-fun res!567572 () Bool)

(assert (=> b!834449 (=> (not res!567572) (not e!465602))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!834449 (= res!567572 (validKeyInArray!0 k!2968))))

(declare-fun call!36595 () (_ BitVec 32))

(declare-fun bm!36593 () Bool)

(assert (=> bm!36593 (= call!36595 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun b!834451 () Bool)

(declare-fun res!567574 () Bool)

(assert (=> b!834451 (=> (not res!567574) (not e!465602))))

(assert (=> b!834451 (= res!567574 (not (validKeyInArray!0 (select (arr!22374 a!4227) i!1466))))))

(declare-fun b!834452 () Bool)

(declare-fun res!567573 () Bool)

(assert (=> b!834452 (=> (not res!567573) (not e!465602))))

(assert (=> b!834452 (= res!567573 (and (bvslt (size!22795 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22795 a!4227)) (bvsgt to!390 i!1466)))))

(declare-fun b!834453 () Bool)

(declare-datatypes ((Unit!28674 0))(
  ( (Unit!28675) )
))
(declare-fun e!465605 () Unit!28674)

(declare-fun lt!379237 () Unit!28674)

(assert (=> b!834453 (= e!465605 lt!379237)))

(declare-fun lt!379233 () Unit!28674)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!46688 (_ BitVec 32) (_ BitVec 32)) Unit!28674)

(assert (=> b!834453 (= lt!379233 (lemmaValidKeyIncreasesNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!834453 (= call!36595 (bvadd #b00000000000000000000000000000001 lt!379232))))

(assert (=> b!834453 (= lt!379237 (lemmaValidKeyIncreasesNumOfKeys!0 lt!379236 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!834453 (= call!36596 (bvadd #b00000000000000000000000000000001 lt!379239))))

(declare-fun b!834450 () Bool)

(declare-fun lt!379234 () Unit!28674)

(assert (=> b!834450 (= e!465605 lt!379234)))

(declare-fun lt!379230 () Unit!28674)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!46688 (_ BitVec 32) (_ BitVec 32)) Unit!28674)

(assert (=> b!834450 (= lt!379230 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!834450 (= call!36595 lt!379232)))

(assert (=> b!834450 (= lt!379234 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 lt!379236 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!834450 (= call!36596 lt!379239)))

(declare-fun res!567570 () Bool)

(assert (=> start!71834 (=> (not res!567570) (not e!465602))))

(assert (=> start!71834 (= res!567570 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22795 a!4227))))))

(assert (=> start!71834 e!465602))

(assert (=> start!71834 true))

(declare-fun array_inv!17797 (array!46688) Bool)

(assert (=> start!71834 (array_inv!17797 a!4227)))

(declare-fun b!834454 () Bool)

(declare-fun e!465601 () Bool)

(assert (=> b!834454 (= e!465601 false)))

(declare-fun lt!379231 () (_ BitVec 32))

(assert (=> b!834454 (= lt!379231 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun lt!379235 () (_ BitVec 32))

(assert (=> b!834454 (= lt!379235 (arrayCountValidKeys!0 lt!379236 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun b!834455 () Bool)

(assert (=> b!834455 (= e!465604 e!465601)))

(declare-fun res!567571 () Bool)

(assert (=> b!834455 (=> (not res!567571) (not e!465601))))

(assert (=> b!834455 (= res!567571 (and (bvsge (bvadd #b00000000000000000000000000000001 to!390) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 to!390) (size!22795 a!4227)) (bvsgt (bvadd #b00000000000000000000000000000001 to!390) i!1466)))))

(declare-fun lt!379238 () Unit!28674)

(assert (=> b!834455 (= lt!379238 e!465605)))

(declare-fun c!90835 () Bool)

(assert (=> b!834455 (= c!90835 (validKeyInArray!0 (select (arr!22374 a!4227) to!390)))))

(assert (= (and start!71834 res!567570) b!834451))

(assert (= (and b!834451 res!567574) b!834449))

(assert (= (and b!834449 res!567572) b!834452))

(assert (= (and b!834452 res!567573) b!834448))

(assert (= (and b!834448 res!567569) b!834455))

(assert (= (and b!834455 c!90835) b!834453))

(assert (= (and b!834455 (not c!90835)) b!834450))

(assert (= (or b!834453 b!834450) bm!36592))

(assert (= (or b!834453 b!834450) bm!36593))

(assert (= (and b!834455 res!567571) b!834454))

(declare-fun m!779591 () Bool)

(assert (=> b!834451 m!779591))

(assert (=> b!834451 m!779591))

(declare-fun m!779593 () Bool)

(assert (=> b!834451 m!779593))

(declare-fun m!779595 () Bool)

(assert (=> bm!36592 m!779595))

(declare-fun m!779597 () Bool)

(assert (=> b!834449 m!779597))

(declare-fun m!779599 () Bool)

(assert (=> b!834450 m!779599))

(declare-fun m!779601 () Bool)

(assert (=> b!834450 m!779601))

(declare-fun m!779603 () Bool)

(assert (=> b!834448 m!779603))

(declare-fun m!779605 () Bool)

(assert (=> b!834448 m!779605))

(declare-fun m!779607 () Bool)

(assert (=> b!834448 m!779607))

(declare-fun m!779609 () Bool)

(assert (=> b!834453 m!779609))

(declare-fun m!779611 () Bool)

(assert (=> b!834453 m!779611))

(declare-fun m!779613 () Bool)

(assert (=> b!834455 m!779613))

(assert (=> b!834455 m!779613))

(declare-fun m!779615 () Bool)

(assert (=> b!834455 m!779615))

(declare-fun m!779617 () Bool)

(assert (=> bm!36593 m!779617))

(declare-fun m!779619 () Bool)

(assert (=> start!71834 m!779619))

(assert (=> b!834454 m!779617))

(assert (=> b!834454 m!779595))

(push 1)

(assert (not b!834451))

(assert (not b!834455))

(assert (not bm!36593))

(assert (not b!834450))

(assert (not b!834453))

