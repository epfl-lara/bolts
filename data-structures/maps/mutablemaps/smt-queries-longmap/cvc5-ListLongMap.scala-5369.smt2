; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71836 () Bool)

(assert start!71836)

(declare-fun b!834474 () Bool)

(declare-fun res!567593 () Bool)

(declare-fun e!465616 () Bool)

(assert (=> b!834474 (=> (not res!567593) (not e!465616))))

(declare-datatypes ((array!46690 0))(
  ( (array!46691 (arr!22375 (Array (_ BitVec 32) (_ BitVec 64))) (size!22796 (_ BitVec 32))) )
))
(declare-fun a!4227 () array!46690)

(declare-fun lt!379265 () array!46690)

(declare-fun i!1466 () (_ BitVec 32))

(declare-fun to!390 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!46690 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!834474 (= res!567593 (= (arrayCountValidKeys!0 lt!379265 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)) (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390))))))

(declare-fun b!834475 () Bool)

(declare-fun e!465618 () Bool)

(declare-fun e!465617 () Bool)

(assert (=> b!834475 (= e!465618 e!465617)))

(declare-fun res!567595 () Bool)

(assert (=> b!834475 (=> (not res!567595) (not e!465617))))

(declare-fun lt!379261 () (_ BitVec 32))

(declare-fun lt!379262 () (_ BitVec 32))

(assert (=> b!834475 (= res!567595 (and (= lt!379261 lt!379262) (not (= to!390 (size!22796 a!4227)))))))

(assert (=> b!834475 (= lt!379262 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!834475 (= lt!379261 (arrayCountValidKeys!0 lt!379265 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun k!2968 () (_ BitVec 64))

(assert (=> b!834475 (= lt!379265 (array!46691 (store (arr!22375 a!4227) i!1466 k!2968) (size!22796 a!4227)))))

(declare-fun bm!36598 () Bool)

(declare-fun call!36602 () (_ BitVec 32))

(assert (=> bm!36598 (= call!36602 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun b!834476 () Bool)

(declare-datatypes ((Unit!28676 0))(
  ( (Unit!28677) )
))
(declare-fun e!465620 () Unit!28676)

(declare-fun lt!379259 () Unit!28676)

(assert (=> b!834476 (= e!465620 lt!379259)))

(declare-fun lt!379264 () Unit!28676)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!46690 (_ BitVec 32) (_ BitVec 32)) Unit!28676)

(assert (=> b!834476 (= lt!379264 (lemmaValidKeyIncreasesNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!834476 (= call!36602 (bvadd #b00000000000000000000000000000001 lt!379262))))

(assert (=> b!834476 (= lt!379259 (lemmaValidKeyIncreasesNumOfKeys!0 lt!379265 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun call!36601 () (_ BitVec 32))

(assert (=> b!834476 (= call!36601 (bvadd #b00000000000000000000000000000001 lt!379261))))

(declare-fun b!834477 () Bool)

(declare-fun lt!379263 () Unit!28676)

(assert (=> b!834477 (= e!465620 lt!379263)))

(declare-fun lt!379260 () Unit!28676)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!46690 (_ BitVec 32) (_ BitVec 32)) Unit!28676)

(assert (=> b!834477 (= lt!379260 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!834477 (= call!36602 lt!379262)))

(assert (=> b!834477 (= lt!379263 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 lt!379265 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!834477 (= call!36601 lt!379261)))

(declare-fun b!834478 () Bool)

(declare-fun res!567590 () Bool)

(assert (=> b!834478 (=> (not res!567590) (not e!465618))))

(assert (=> b!834478 (= res!567590 (and (bvslt (size!22796 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22796 a!4227)) (bvsgt to!390 i!1466)))))

(declare-fun res!567592 () Bool)

(assert (=> start!71836 (=> (not res!567592) (not e!465618))))

(assert (=> start!71836 (= res!567592 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22796 a!4227))))))

(assert (=> start!71836 e!465618))

(assert (=> start!71836 true))

(declare-fun array_inv!17798 (array!46690) Bool)

(assert (=> start!71836 (array_inv!17798 a!4227)))

(declare-fun bm!36599 () Bool)

(assert (=> bm!36599 (= call!36601 (arrayCountValidKeys!0 lt!379265 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun b!834479 () Bool)

(assert (=> b!834479 (= e!465617 e!465616)))

(declare-fun res!567594 () Bool)

(assert (=> b!834479 (=> (not res!567594) (not e!465616))))

(assert (=> b!834479 (= res!567594 (and (bvsge (bvadd #b00000000000000000000000000000001 to!390) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 to!390) (size!22796 a!4227)) (bvsgt (bvadd #b00000000000000000000000000000001 to!390) i!1466)))))

(declare-fun lt!379266 () Unit!28676)

(assert (=> b!834479 (= lt!379266 e!465620)))

(declare-fun c!90838 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!834479 (= c!90838 (validKeyInArray!0 (select (arr!22375 a!4227) to!390)))))

(declare-fun b!834480 () Bool)

(declare-fun res!567589 () Bool)

(assert (=> b!834480 (=> (not res!567589) (not e!465618))))

(assert (=> b!834480 (= res!567589 (not (validKeyInArray!0 (select (arr!22375 a!4227) i!1466))))))

(declare-fun b!834481 () Bool)

(declare-fun res!567591 () Bool)

(assert (=> b!834481 (=> (not res!567591) (not e!465618))))

(assert (=> b!834481 (= res!567591 (validKeyInArray!0 k!2968))))

(declare-fun b!834482 () Bool)

(assert (=> b!834482 (= e!465616 (not (bvsge (bvadd #b00000000000000000000000000000001 i!1466) #b00000000000000000000000000000000)))))

(assert (=> b!834482 (= (arrayCountValidKeys!0 lt!379265 (bvadd #b00000000000000000000000000000001 i!1466) (size!22796 a!4227)) (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (size!22796 a!4227)))))

(declare-fun lt!379258 () Unit!28676)

(declare-fun lemmaAddValidKeyAndNumKeysToImpliesToALength!0 (array!46690 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!28676)

(assert (=> b!834482 (= lt!379258 (lemmaAddValidKeyAndNumKeysToImpliesToALength!0 a!4227 i!1466 k!2968 (bvadd #b00000000000000000000000000000001 to!390)))))

(assert (= (and start!71836 res!567592) b!834480))

(assert (= (and b!834480 res!567589) b!834481))

(assert (= (and b!834481 res!567591) b!834478))

(assert (= (and b!834478 res!567590) b!834475))

(assert (= (and b!834475 res!567595) b!834479))

(assert (= (and b!834479 c!90838) b!834476))

(assert (= (and b!834479 (not c!90838)) b!834477))

(assert (= (or b!834476 b!834477) bm!36599))

(assert (= (or b!834476 b!834477) bm!36598))

(assert (= (and b!834479 res!567594) b!834474))

(assert (= (and b!834474 res!567593) b!834482))

(declare-fun m!779621 () Bool)

(assert (=> b!834475 m!779621))

(declare-fun m!779623 () Bool)

(assert (=> b!834475 m!779623))

(declare-fun m!779625 () Bool)

(assert (=> b!834475 m!779625))

(declare-fun m!779627 () Bool)

(assert (=> b!834482 m!779627))

(declare-fun m!779629 () Bool)

(assert (=> b!834482 m!779629))

(declare-fun m!779631 () Bool)

(assert (=> b!834482 m!779631))

(declare-fun m!779633 () Bool)

(assert (=> bm!36598 m!779633))

(declare-fun m!779635 () Bool)

(assert (=> start!71836 m!779635))

(declare-fun m!779637 () Bool)

(assert (=> b!834480 m!779637))

(assert (=> b!834480 m!779637))

(declare-fun m!779639 () Bool)

(assert (=> b!834480 m!779639))

(declare-fun m!779641 () Bool)

(assert (=> bm!36599 m!779641))

(declare-fun m!779643 () Bool)

(assert (=> b!834479 m!779643))

(assert (=> b!834479 m!779643))

(declare-fun m!779645 () Bool)

(assert (=> b!834479 m!779645))

(assert (=> b!834474 m!779641))

(assert (=> b!834474 m!779633))

(declare-fun m!779647 () Bool)

(assert (=> b!834476 m!779647))

(declare-fun m!779649 () Bool)

(assert (=> b!834476 m!779649))

(declare-fun m!779651 () Bool)

(assert (=> b!834481 m!779651))

(declare-fun m!779653 () Bool)

(assert (=> b!834477 m!779653))

(declare-fun m!779655 () Bool)

(assert (=> b!834477 m!779655))

(push 1)

