; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71842 () Bool)

(assert start!71842)

(declare-fun b!834555 () Bool)

(declare-fun e!465664 () Bool)

(declare-fun e!465665 () Bool)

(assert (=> b!834555 (= e!465664 e!465665)))

(declare-fun res!567656 () Bool)

(assert (=> b!834555 (=> (not res!567656) (not e!465665))))

(declare-datatypes ((array!46696 0))(
  ( (array!46697 (arr!22378 (Array (_ BitVec 32) (_ BitVec 64))) (size!22799 (_ BitVec 32))) )
))
(declare-fun a!4227 () array!46696)

(declare-fun i!1466 () (_ BitVec 32))

(declare-fun to!390 () (_ BitVec 32))

(assert (=> b!834555 (= res!567656 (and (bvsge (bvadd #b00000000000000000000000000000001 to!390) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 to!390) (size!22799 a!4227)) (bvsgt (bvadd #b00000000000000000000000000000001 to!390) i!1466)))))

(declare-datatypes ((Unit!28682 0))(
  ( (Unit!28683) )
))
(declare-fun lt!379347 () Unit!28682)

(declare-fun e!465663 () Unit!28682)

(assert (=> b!834555 (= lt!379347 e!465663)))

(declare-fun c!90847 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!834555 (= c!90847 (validKeyInArray!0 (select (arr!22378 a!4227) to!390)))))

(declare-fun b!834556 () Bool)

(declare-fun res!567655 () Bool)

(declare-fun e!465661 () Bool)

(assert (=> b!834556 (=> (not res!567655) (not e!465661))))

(declare-fun k!2968 () (_ BitVec 64))

(assert (=> b!834556 (= res!567655 (validKeyInArray!0 k!2968))))

(declare-fun b!834557 () Bool)

(declare-fun res!567652 () Bool)

(assert (=> b!834557 (=> (not res!567652) (not e!465665))))

(declare-fun lt!379340 () array!46696)

(declare-fun arrayCountValidKeys!0 (array!46696 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!834557 (= res!567652 (= (arrayCountValidKeys!0 lt!379340 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)) (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390))))))

(declare-fun b!834558 () Bool)

(declare-fun lt!379346 () Unit!28682)

(assert (=> b!834558 (= e!465663 lt!379346)))

(declare-fun lt!379342 () Unit!28682)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!46696 (_ BitVec 32) (_ BitVec 32)) Unit!28682)

(assert (=> b!834558 (= lt!379342 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun call!36619 () (_ BitVec 32))

(declare-fun lt!379343 () (_ BitVec 32))

(assert (=> b!834558 (= call!36619 lt!379343)))

(assert (=> b!834558 (= lt!379346 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 lt!379340 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun call!36620 () (_ BitVec 32))

(declare-fun lt!379341 () (_ BitVec 32))

(assert (=> b!834558 (= call!36620 lt!379341)))

(declare-fun b!834559 () Bool)

(declare-fun res!567657 () Bool)

(assert (=> b!834559 (=> (not res!567657) (not e!465661))))

(assert (=> b!834559 (= res!567657 (and (bvslt (size!22799 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22799 a!4227)) (bvsgt to!390 i!1466)))))

(declare-fun b!834561 () Bool)

(assert (=> b!834561 (= e!465661 e!465664)))

(declare-fun res!567658 () Bool)

(assert (=> b!834561 (=> (not res!567658) (not e!465664))))

(assert (=> b!834561 (= res!567658 (and (= lt!379341 lt!379343) (not (= to!390 (size!22799 a!4227)))))))

(assert (=> b!834561 (= lt!379343 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!834561 (= lt!379341 (arrayCountValidKeys!0 lt!379340 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!834561 (= lt!379340 (array!46697 (store (arr!22378 a!4227) i!1466 k!2968) (size!22799 a!4227)))))

(declare-fun b!834562 () Bool)

(declare-fun lt!379339 () Unit!28682)

(assert (=> b!834562 (= e!465663 lt!379339)))

(declare-fun lt!379345 () Unit!28682)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!46696 (_ BitVec 32) (_ BitVec 32)) Unit!28682)

(assert (=> b!834562 (= lt!379345 (lemmaValidKeyIncreasesNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!834562 (= call!36619 (bvadd #b00000000000000000000000000000001 lt!379343))))

(assert (=> b!834562 (= lt!379339 (lemmaValidKeyIncreasesNumOfKeys!0 lt!379340 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!834562 (= call!36620 (bvadd #b00000000000000000000000000000001 lt!379341))))

(declare-fun bm!36616 () Bool)

(assert (=> bm!36616 (= call!36619 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun b!834563 () Bool)

(declare-fun res!567654 () Bool)

(assert (=> b!834563 (=> (not res!567654) (not e!465661))))

(assert (=> b!834563 (= res!567654 (not (validKeyInArray!0 (select (arr!22378 a!4227) i!1466))))))

(declare-fun bm!36617 () Bool)

(assert (=> bm!36617 (= call!36620 (arrayCountValidKeys!0 lt!379340 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun b!834560 () Bool)

(assert (=> b!834560 (= e!465665 (not true))))

(assert (=> b!834560 (= (arrayCountValidKeys!0 lt!379340 (bvadd #b00000000000000000000000000000001 i!1466) (size!22799 a!4227)) (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (size!22799 a!4227)))))

(declare-fun lt!379344 () Unit!28682)

(declare-fun lemmaAddValidKeyAndNumKeysToImpliesToALength!0 (array!46696 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!28682)

(assert (=> b!834560 (= lt!379344 (lemmaAddValidKeyAndNumKeysToImpliesToALength!0 a!4227 i!1466 k!2968 (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun res!567653 () Bool)

(assert (=> start!71842 (=> (not res!567653) (not e!465661))))

(assert (=> start!71842 (= res!567653 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22799 a!4227))))))

(assert (=> start!71842 e!465661))

(assert (=> start!71842 true))

(declare-fun array_inv!17801 (array!46696) Bool)

(assert (=> start!71842 (array_inv!17801 a!4227)))

(assert (= (and start!71842 res!567653) b!834563))

(assert (= (and b!834563 res!567654) b!834556))

(assert (= (and b!834556 res!567655) b!834559))

(assert (= (and b!834559 res!567657) b!834561))

(assert (= (and b!834561 res!567658) b!834555))

(assert (= (and b!834555 c!90847) b!834562))

(assert (= (and b!834555 (not c!90847)) b!834558))

(assert (= (or b!834562 b!834558) bm!36617))

(assert (= (or b!834562 b!834558) bm!36616))

(assert (= (and b!834555 res!567656) b!834557))

(assert (= (and b!834557 res!567652) b!834560))

(declare-fun m!779729 () Bool)

(assert (=> b!834563 m!779729))

(assert (=> b!834563 m!779729))

(declare-fun m!779731 () Bool)

(assert (=> b!834563 m!779731))

(declare-fun m!779733 () Bool)

(assert (=> b!834555 m!779733))

(assert (=> b!834555 m!779733))

(declare-fun m!779735 () Bool)

(assert (=> b!834555 m!779735))

(declare-fun m!779737 () Bool)

(assert (=> b!834557 m!779737))

(declare-fun m!779739 () Bool)

(assert (=> b!834557 m!779739))

(assert (=> bm!36617 m!779737))

(declare-fun m!779741 () Bool)

(assert (=> b!834562 m!779741))

(declare-fun m!779743 () Bool)

(assert (=> b!834562 m!779743))

(declare-fun m!779745 () Bool)

(assert (=> b!834561 m!779745))

(declare-fun m!779747 () Bool)

(assert (=> b!834561 m!779747))

(declare-fun m!779749 () Bool)

(assert (=> b!834561 m!779749))

(declare-fun m!779751 () Bool)

(assert (=> b!834560 m!779751))

(declare-fun m!779753 () Bool)

(assert (=> b!834560 m!779753))

(declare-fun m!779755 () Bool)

(assert (=> b!834560 m!779755))

(declare-fun m!779757 () Bool)

(assert (=> start!71842 m!779757))

(declare-fun m!779759 () Bool)

(assert (=> b!834558 m!779759))

(declare-fun m!779761 () Bool)

(assert (=> b!834558 m!779761))

(assert (=> bm!36616 m!779739))

(declare-fun m!779763 () Bool)

(assert (=> b!834556 m!779763))

(push 1)

