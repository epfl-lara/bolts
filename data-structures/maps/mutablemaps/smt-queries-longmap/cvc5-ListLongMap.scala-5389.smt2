; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71956 () Bool)

(assert start!71956)

(declare-datatypes ((array!46810 0))(
  ( (array!46811 (arr!22435 (Array (_ BitVec 32) (_ BitVec 64))) (size!22856 (_ BitVec 32))) )
))
(declare-fun lt!380012 () array!46810)

(declare-fun to!390 () (_ BitVec 32))

(declare-fun a!4227 () array!46810)

(declare-fun b!835660 () Bool)

(declare-fun i!1466 () (_ BitVec 32))

(declare-fun e!466214 () Bool)

(declare-fun arrayCountValidKeys!0 (array!46810 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!835660 (= e!466214 (not (= (arrayCountValidKeys!0 lt!380012 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)) (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))))

(declare-fun b!835661 () Bool)

(declare-datatypes ((Unit!28748 0))(
  ( (Unit!28749) )
))
(declare-fun e!466210 () Unit!28748)

(declare-fun lt!380013 () Unit!28748)

(assert (=> b!835661 (= e!466210 lt!380013)))

(declare-fun lt!380016 () Unit!28748)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!46810 (_ BitVec 32) (_ BitVec 32)) Unit!28748)

(assert (=> b!835661 (= lt!380016 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun call!36745 () (_ BitVec 32))

(declare-fun lt!380014 () (_ BitVec 32))

(assert (=> b!835661 (= call!36745 lt!380014)))

(assert (=> b!835661 (= lt!380013 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 lt!380012 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun call!36746 () (_ BitVec 32))

(declare-fun lt!380017 () (_ BitVec 32))

(assert (=> b!835661 (= call!36746 lt!380017)))

(declare-fun b!835662 () Bool)

(declare-fun res!568633 () Bool)

(declare-fun e!466212 () Bool)

(assert (=> b!835662 (=> (not res!568633) (not e!466212))))

(assert (=> b!835662 (= res!568633 (and (bvslt (size!22856 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22856 a!4227)) (bvsgt to!390 i!1466)))))

(declare-fun bm!36742 () Bool)

(assert (=> bm!36742 (= call!36746 (arrayCountValidKeys!0 lt!380012 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun b!835663 () Bool)

(declare-fun e!466213 () Bool)

(assert (=> b!835663 (= e!466213 e!466214)))

(declare-fun res!568632 () Bool)

(assert (=> b!835663 (=> (not res!568632) (not e!466214))))

(assert (=> b!835663 (= res!568632 (and (bvsge (bvadd #b00000000000000000000000000000001 to!390) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 to!390) (size!22856 a!4227)) (bvsgt (bvadd #b00000000000000000000000000000001 to!390) i!1466)))))

(declare-fun lt!380019 () Unit!28748)

(assert (=> b!835663 (= lt!380019 e!466210)))

(declare-fun c!90910 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!835663 (= c!90910 (validKeyInArray!0 (select (arr!22435 a!4227) to!390)))))

(declare-fun bm!36743 () Bool)

(assert (=> bm!36743 (= call!36745 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun b!835664 () Bool)

(assert (=> b!835664 (= e!466212 e!466213)))

(declare-fun res!568636 () Bool)

(assert (=> b!835664 (=> (not res!568636) (not e!466213))))

(assert (=> b!835664 (= res!568636 (and (= lt!380017 lt!380014) (not (= to!390 (size!22856 a!4227)))))))

(assert (=> b!835664 (= lt!380014 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!835664 (= lt!380017 (arrayCountValidKeys!0 lt!380012 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun k!2968 () (_ BitVec 64))

(assert (=> b!835664 (= lt!380012 (array!46811 (store (arr!22435 a!4227) i!1466 k!2968) (size!22856 a!4227)))))

(declare-fun b!835665 () Bool)

(declare-fun lt!380015 () Unit!28748)

(assert (=> b!835665 (= e!466210 lt!380015)))

(declare-fun lt!380018 () Unit!28748)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!46810 (_ BitVec 32) (_ BitVec 32)) Unit!28748)

(assert (=> b!835665 (= lt!380018 (lemmaValidKeyIncreasesNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!835665 (= call!36745 (bvadd #b00000000000000000000000000000001 lt!380014))))

(assert (=> b!835665 (= lt!380015 (lemmaValidKeyIncreasesNumOfKeys!0 lt!380012 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!835665 (= call!36746 (bvadd #b00000000000000000000000000000001 lt!380017))))

(declare-fun b!835666 () Bool)

(declare-fun res!568634 () Bool)

(assert (=> b!835666 (=> (not res!568634) (not e!466212))))

(assert (=> b!835666 (= res!568634 (validKeyInArray!0 k!2968))))

(declare-fun res!568631 () Bool)

(assert (=> start!71956 (=> (not res!568631) (not e!466212))))

(assert (=> start!71956 (= res!568631 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22856 a!4227))))))

(assert (=> start!71956 e!466212))

(assert (=> start!71956 true))

(declare-fun array_inv!17858 (array!46810) Bool)

(assert (=> start!71956 (array_inv!17858 a!4227)))

(declare-fun b!835667 () Bool)

(declare-fun res!568635 () Bool)

(assert (=> b!835667 (=> (not res!568635) (not e!466212))))

(assert (=> b!835667 (= res!568635 (not (validKeyInArray!0 (select (arr!22435 a!4227) i!1466))))))

(assert (= (and start!71956 res!568631) b!835667))

(assert (= (and b!835667 res!568635) b!835666))

(assert (= (and b!835666 res!568634) b!835662))

(assert (= (and b!835662 res!568633) b!835664))

(assert (= (and b!835664 res!568636) b!835663))

(assert (= (and b!835663 c!90910) b!835665))

(assert (= (and b!835663 (not c!90910)) b!835661))

(assert (= (or b!835665 b!835661) bm!36742))

(assert (= (or b!835665 b!835661) bm!36743))

(assert (= (and b!835663 res!568632) b!835660))

(declare-fun m!781069 () Bool)

(assert (=> b!835666 m!781069))

(declare-fun m!781071 () Bool)

(assert (=> b!835665 m!781071))

(declare-fun m!781073 () Bool)

(assert (=> b!835665 m!781073))

(declare-fun m!781075 () Bool)

(assert (=> b!835660 m!781075))

(declare-fun m!781077 () Bool)

(assert (=> b!835660 m!781077))

(assert (=> bm!36742 m!781075))

(assert (=> bm!36743 m!781077))

(declare-fun m!781079 () Bool)

(assert (=> start!71956 m!781079))

(declare-fun m!781081 () Bool)

(assert (=> b!835663 m!781081))

(assert (=> b!835663 m!781081))

(declare-fun m!781083 () Bool)

(assert (=> b!835663 m!781083))

(declare-fun m!781085 () Bool)

(assert (=> b!835664 m!781085))

(declare-fun m!781087 () Bool)

(assert (=> b!835664 m!781087))

(declare-fun m!781089 () Bool)

(assert (=> b!835664 m!781089))

(declare-fun m!781091 () Bool)

(assert (=> b!835661 m!781091))

(declare-fun m!781093 () Bool)

(assert (=> b!835661 m!781093))

(declare-fun m!781095 () Bool)

(assert (=> b!835667 m!781095))

(assert (=> b!835667 m!781095))

(declare-fun m!781097 () Bool)

(assert (=> b!835667 m!781097))

(push 1)

(assert (not b!835667))

(assert (not b!835661))

(assert (not b!835660))

(assert (not bm!36743))

(assert (not bm!36742))

(assert (not b!835663))

(assert (not b!835666))

(assert (not b!835664))

(assert (not b!835665))

(assert (not start!71956))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

