; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71846 () Bool)

(assert start!71846)

(declare-fun b!834609 () Bool)

(declare-fun e!465692 () Bool)

(assert (=> b!834609 (= e!465692 (not true))))

(declare-datatypes ((array!46700 0))(
  ( (array!46701 (arr!22380 (Array (_ BitVec 32) (_ BitVec 64))) (size!22801 (_ BitVec 32))) )
))
(declare-fun lt!379394 () array!46700)

(declare-fun i!1466 () (_ BitVec 32))

(declare-fun a!4227 () array!46700)

(declare-fun arrayCountValidKeys!0 (array!46700 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!834609 (= (arrayCountValidKeys!0 lt!379394 (bvadd #b00000000000000000000000000000001 i!1466) (size!22801 a!4227)) (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (size!22801 a!4227)))))

(declare-datatypes ((Unit!28686 0))(
  ( (Unit!28687) )
))
(declare-fun lt!379396 () Unit!28686)

(declare-fun to!390 () (_ BitVec 32))

(declare-fun k!2968 () (_ BitVec 64))

(declare-fun lemmaAddValidKeyAndNumKeysToImpliesToALength!0 (array!46700 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!28686)

(assert (=> b!834609 (= lt!379396 (lemmaAddValidKeyAndNumKeysToImpliesToALength!0 a!4227 i!1466 k!2968 (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun b!834610 () Bool)

(declare-fun e!465695 () Unit!28686)

(declare-fun lt!379401 () Unit!28686)

(assert (=> b!834610 (= e!465695 lt!379401)))

(declare-fun lt!379399 () Unit!28686)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!46700 (_ BitVec 32) (_ BitVec 32)) Unit!28686)

(assert (=> b!834610 (= lt!379399 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun call!36632 () (_ BitVec 32))

(declare-fun lt!379393 () (_ BitVec 32))

(assert (=> b!834610 (= call!36632 lt!379393)))

(assert (=> b!834610 (= lt!379401 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 lt!379394 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun call!36631 () (_ BitVec 32))

(declare-fun lt!379400 () (_ BitVec 32))

(assert (=> b!834610 (= call!36631 lt!379400)))

(declare-fun bm!36628 () Bool)

(assert (=> bm!36628 (= call!36632 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun bm!36629 () Bool)

(assert (=> bm!36629 (= call!36631 (arrayCountValidKeys!0 lt!379394 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun res!567699 () Bool)

(declare-fun e!465691 () Bool)

(assert (=> start!71846 (=> (not res!567699) (not e!465691))))

(assert (=> start!71846 (= res!567699 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22801 a!4227))))))

(assert (=> start!71846 e!465691))

(assert (=> start!71846 true))

(declare-fun array_inv!17803 (array!46700) Bool)

(assert (=> start!71846 (array_inv!17803 a!4227)))

(declare-fun b!834611 () Bool)

(declare-fun e!465693 () Bool)

(assert (=> b!834611 (= e!465691 e!465693)))

(declare-fun res!567695 () Bool)

(assert (=> b!834611 (=> (not res!567695) (not e!465693))))

(assert (=> b!834611 (= res!567695 (and (= lt!379400 lt!379393) (not (= to!390 (size!22801 a!4227)))))))

(assert (=> b!834611 (= lt!379393 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!834611 (= lt!379400 (arrayCountValidKeys!0 lt!379394 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!834611 (= lt!379394 (array!46701 (store (arr!22380 a!4227) i!1466 k!2968) (size!22801 a!4227)))))

(declare-fun b!834612 () Bool)

(assert (=> b!834612 (= e!465693 e!465692)))

(declare-fun res!567694 () Bool)

(assert (=> b!834612 (=> (not res!567694) (not e!465692))))

(assert (=> b!834612 (= res!567694 (and (bvsge (bvadd #b00000000000000000000000000000001 to!390) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 to!390) (size!22801 a!4227)) (bvsgt (bvadd #b00000000000000000000000000000001 to!390) i!1466)))))

(declare-fun lt!379397 () Unit!28686)

(assert (=> b!834612 (= lt!379397 e!465695)))

(declare-fun c!90853 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!834612 (= c!90853 (validKeyInArray!0 (select (arr!22380 a!4227) to!390)))))

(declare-fun b!834613 () Bool)

(declare-fun res!567697 () Bool)

(assert (=> b!834613 (=> (not res!567697) (not e!465692))))

(assert (=> b!834613 (= res!567697 (= (arrayCountValidKeys!0 lt!379394 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)) (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390))))))

(declare-fun b!834614 () Bool)

(declare-fun lt!379395 () Unit!28686)

(assert (=> b!834614 (= e!465695 lt!379395)))

(declare-fun lt!379398 () Unit!28686)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!46700 (_ BitVec 32) (_ BitVec 32)) Unit!28686)

(assert (=> b!834614 (= lt!379398 (lemmaValidKeyIncreasesNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!834614 (= call!36632 (bvadd #b00000000000000000000000000000001 lt!379393))))

(assert (=> b!834614 (= lt!379395 (lemmaValidKeyIncreasesNumOfKeys!0 lt!379394 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!834614 (= call!36631 (bvadd #b00000000000000000000000000000001 lt!379400))))

(declare-fun b!834615 () Bool)

(declare-fun res!567696 () Bool)

(assert (=> b!834615 (=> (not res!567696) (not e!465691))))

(assert (=> b!834615 (= res!567696 (validKeyInArray!0 k!2968))))

(declare-fun b!834616 () Bool)

(declare-fun res!567700 () Bool)

(assert (=> b!834616 (=> (not res!567700) (not e!465691))))

(assert (=> b!834616 (= res!567700 (and (bvslt (size!22801 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22801 a!4227)) (bvsgt to!390 i!1466)))))

(declare-fun b!834617 () Bool)

(declare-fun res!567698 () Bool)

(assert (=> b!834617 (=> (not res!567698) (not e!465691))))

(assert (=> b!834617 (= res!567698 (not (validKeyInArray!0 (select (arr!22380 a!4227) i!1466))))))

(assert (= (and start!71846 res!567699) b!834617))

(assert (= (and b!834617 res!567698) b!834615))

(assert (= (and b!834615 res!567696) b!834616))

(assert (= (and b!834616 res!567700) b!834611))

(assert (= (and b!834611 res!567695) b!834612))

(assert (= (and b!834612 c!90853) b!834614))

(assert (= (and b!834612 (not c!90853)) b!834610))

(assert (= (or b!834614 b!834610) bm!36629))

(assert (= (or b!834614 b!834610) bm!36628))

(assert (= (and b!834612 res!567694) b!834613))

(assert (= (and b!834613 res!567697) b!834609))

(declare-fun m!779801 () Bool)

(assert (=> b!834615 m!779801))

(declare-fun m!779803 () Bool)

(assert (=> b!834617 m!779803))

(assert (=> b!834617 m!779803))

(declare-fun m!779805 () Bool)

(assert (=> b!834617 m!779805))

(declare-fun m!779807 () Bool)

(assert (=> bm!36628 m!779807))

(declare-fun m!779809 () Bool)

(assert (=> b!834611 m!779809))

(declare-fun m!779811 () Bool)

(assert (=> b!834611 m!779811))

(declare-fun m!779813 () Bool)

(assert (=> b!834611 m!779813))

(declare-fun m!779815 () Bool)

(assert (=> b!834613 m!779815))

(assert (=> b!834613 m!779807))

(declare-fun m!779817 () Bool)

(assert (=> start!71846 m!779817))

(assert (=> bm!36629 m!779815))

(declare-fun m!779819 () Bool)

(assert (=> b!834612 m!779819))

(assert (=> b!834612 m!779819))

(declare-fun m!779821 () Bool)

(assert (=> b!834612 m!779821))

(declare-fun m!779823 () Bool)

(assert (=> b!834614 m!779823))

(declare-fun m!779825 () Bool)

(assert (=> b!834614 m!779825))

(declare-fun m!779827 () Bool)

(assert (=> b!834609 m!779827))

(declare-fun m!779829 () Bool)

(assert (=> b!834609 m!779829))

(declare-fun m!779831 () Bool)

(assert (=> b!834609 m!779831))

(declare-fun m!779833 () Bool)

(assert (=> b!834610 m!779833))

(declare-fun m!779835 () Bool)

(assert (=> b!834610 m!779835))

(push 1)

(assert (not b!834613))

(assert (not b!834610))

(assert (not b!834612))

(assert (not b!834614))

(assert (not bm!36629))

(assert (not bm!36628))

(assert (not start!71846))

(assert (not b!834611))

(assert (not b!834617))

(assert (not b!834615))

(assert (not b!834609))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

