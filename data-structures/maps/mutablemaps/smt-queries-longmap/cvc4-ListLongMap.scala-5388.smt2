; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71954 () Bool)

(assert start!71954)

(declare-datatypes ((array!46808 0))(
  ( (array!46809 (arr!22434 (Array (_ BitVec 32) (_ BitVec 64))) (size!22855 (_ BitVec 32))) )
))
(declare-fun a!4227 () array!46808)

(declare-fun e!466197 () Bool)

(declare-fun b!835637 () Bool)

(declare-fun i!1466 () (_ BitVec 32))

(declare-fun to!390 () (_ BitVec 32))

(assert (=> b!835637 (= e!466197 (or (bvslt (bvadd #b00000000000000000000000000000001 to!390) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 to!390) (size!22855 a!4227)) (bvsle (bvadd #b00000000000000000000000000000001 to!390) i!1466)))))

(declare-datatypes ((Unit!28746 0))(
  ( (Unit!28747) )
))
(declare-fun lt!379991 () Unit!28746)

(declare-fun e!466198 () Unit!28746)

(assert (=> b!835637 (= lt!379991 e!466198)))

(declare-fun c!90907 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!835637 (= c!90907 (validKeyInArray!0 (select (arr!22434 a!4227) to!390)))))

(declare-fun res!568615 () Bool)

(declare-fun e!466199 () Bool)

(assert (=> start!71954 (=> (not res!568615) (not e!466199))))

(assert (=> start!71954 (= res!568615 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22855 a!4227))))))

(assert (=> start!71954 e!466199))

(assert (=> start!71954 true))

(declare-fun array_inv!17857 (array!46808) Bool)

(assert (=> start!71954 (array_inv!17857 a!4227)))

(declare-fun b!835638 () Bool)

(declare-fun res!568618 () Bool)

(assert (=> b!835638 (=> (not res!568618) (not e!466199))))

(declare-fun k!2968 () (_ BitVec 64))

(assert (=> b!835638 (= res!568618 (validKeyInArray!0 k!2968))))

(declare-fun b!835639 () Bool)

(assert (=> b!835639 (= e!466199 e!466197)))

(declare-fun res!568617 () Bool)

(assert (=> b!835639 (=> (not res!568617) (not e!466197))))

(declare-fun lt!379994 () (_ BitVec 32))

(declare-fun lt!379992 () (_ BitVec 32))

(assert (=> b!835639 (= res!568617 (and (= lt!379994 lt!379992) (not (= to!390 (size!22855 a!4227)))))))

(declare-fun arrayCountValidKeys!0 (array!46808 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!835639 (= lt!379992 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun lt!379995 () array!46808)

(assert (=> b!835639 (= lt!379994 (arrayCountValidKeys!0 lt!379995 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!835639 (= lt!379995 (array!46809 (store (arr!22434 a!4227) i!1466 k!2968) (size!22855 a!4227)))))

(declare-fun b!835640 () Bool)

(declare-fun lt!379989 () Unit!28746)

(assert (=> b!835640 (= e!466198 lt!379989)))

(declare-fun lt!379990 () Unit!28746)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!46808 (_ BitVec 32) (_ BitVec 32)) Unit!28746)

(assert (=> b!835640 (= lt!379990 (lemmaValidKeyIncreasesNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun call!36740 () (_ BitVec 32))

(assert (=> b!835640 (= call!36740 (bvadd #b00000000000000000000000000000001 lt!379992))))

(assert (=> b!835640 (= lt!379989 (lemmaValidKeyIncreasesNumOfKeys!0 lt!379995 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun call!36739 () (_ BitVec 32))

(assert (=> b!835640 (= call!36739 (bvadd #b00000000000000000000000000000001 lt!379994))))

(declare-fun bm!36736 () Bool)

(assert (=> bm!36736 (= call!36740 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun b!835641 () Bool)

(declare-fun res!568614 () Bool)

(assert (=> b!835641 (=> (not res!568614) (not e!466199))))

(assert (=> b!835641 (= res!568614 (not (validKeyInArray!0 (select (arr!22434 a!4227) i!1466))))))

(declare-fun b!835642 () Bool)

(declare-fun lt!379988 () Unit!28746)

(assert (=> b!835642 (= e!466198 lt!379988)))

(declare-fun lt!379993 () Unit!28746)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!46808 (_ BitVec 32) (_ BitVec 32)) Unit!28746)

(assert (=> b!835642 (= lt!379993 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!835642 (= call!36740 lt!379992)))

(assert (=> b!835642 (= lt!379988 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 lt!379995 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!835642 (= call!36739 lt!379994)))

(declare-fun bm!36737 () Bool)

(assert (=> bm!36737 (= call!36739 (arrayCountValidKeys!0 lt!379995 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun b!835643 () Bool)

(declare-fun res!568616 () Bool)

(assert (=> b!835643 (=> (not res!568616) (not e!466199))))

(assert (=> b!835643 (= res!568616 (and (bvslt (size!22855 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22855 a!4227)) (bvsgt to!390 i!1466)))))

(assert (= (and start!71954 res!568615) b!835641))

(assert (= (and b!835641 res!568614) b!835638))

(assert (= (and b!835638 res!568618) b!835643))

(assert (= (and b!835643 res!568616) b!835639))

(assert (= (and b!835639 res!568617) b!835637))

(assert (= (and b!835637 c!90907) b!835640))

(assert (= (and b!835637 (not c!90907)) b!835642))

(assert (= (or b!835640 b!835642) bm!36737))

(assert (= (or b!835640 b!835642) bm!36736))

(declare-fun m!781039 () Bool)

(assert (=> b!835637 m!781039))

(assert (=> b!835637 m!781039))

(declare-fun m!781041 () Bool)

(assert (=> b!835637 m!781041))

(declare-fun m!781043 () Bool)

(assert (=> b!835638 m!781043))

(declare-fun m!781045 () Bool)

(assert (=> b!835639 m!781045))

(declare-fun m!781047 () Bool)

(assert (=> b!835639 m!781047))

(declare-fun m!781049 () Bool)

(assert (=> b!835639 m!781049))

(declare-fun m!781051 () Bool)

(assert (=> b!835640 m!781051))

(declare-fun m!781053 () Bool)

(assert (=> b!835640 m!781053))

(declare-fun m!781055 () Bool)

(assert (=> b!835642 m!781055))

(declare-fun m!781057 () Bool)

(assert (=> b!835642 m!781057))

(declare-fun m!781059 () Bool)

(assert (=> bm!36736 m!781059))

(declare-fun m!781061 () Bool)

(assert (=> b!835641 m!781061))

(assert (=> b!835641 m!781061))

(declare-fun m!781063 () Bool)

(assert (=> b!835641 m!781063))

(declare-fun m!781065 () Bool)

(assert (=> start!71954 m!781065))

(declare-fun m!781067 () Bool)

(assert (=> bm!36737 m!781067))

(push 1)

(assert (not bm!36737))

(assert (not b!835639))

(assert (not start!71954))

(assert (not b!835640))

(assert (not b!835638))

(assert (not bm!36736))

(assert (not b!835637))

(assert (not b!835642))

(assert (not b!835641))

(check-sat)

(pop 1)

(push 1)

(check-sat)

