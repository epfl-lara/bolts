; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71966 () Bool)

(assert start!71966)

(declare-fun b!835788 () Bool)

(declare-fun res!568729 () Bool)

(declare-fun e!466286 () Bool)

(assert (=> b!835788 (=> (not res!568729) (not e!466286))))

(declare-datatypes ((array!46820 0))(
  ( (array!46821 (arr!22440 (Array (_ BitVec 32) (_ BitVec 64))) (size!22861 (_ BitVec 32))) )
))
(declare-fun a!4227 () array!46820)

(declare-fun i!1466 () (_ BitVec 32))

(declare-fun to!390 () (_ BitVec 32))

(assert (=> b!835788 (= res!568729 (and (bvslt (size!22861 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22861 a!4227)) (bvsgt to!390 i!1466)))))

(declare-fun b!835789 () Bool)

(declare-fun res!568730 () Bool)

(declare-fun e!466288 () Bool)

(assert (=> b!835789 (=> (not res!568730) (not e!466288))))

(declare-fun lt!380135 () array!46820)

(declare-fun arrayCountValidKeys!0 (array!46820 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!835789 (= res!568730 (= (arrayCountValidKeys!0 lt!380135 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)) (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390))))))

(declare-fun b!835790 () Bool)

(declare-fun e!466285 () Bool)

(assert (=> b!835790 (= e!466285 e!466288)))

(declare-fun res!568733 () Bool)

(assert (=> b!835790 (=> (not res!568733) (not e!466288))))

(assert (=> b!835790 (= res!568733 (and (bvsge (bvadd #b00000000000000000000000000000001 to!390) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 to!390) (size!22861 a!4227)) (bvsgt (bvadd #b00000000000000000000000000000001 to!390) i!1466)))))

(declare-datatypes ((Unit!28758 0))(
  ( (Unit!28759) )
))
(declare-fun lt!380137 () Unit!28758)

(declare-fun e!466289 () Unit!28758)

(assert (=> b!835790 (= lt!380137 e!466289)))

(declare-fun c!90925 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!835790 (= c!90925 (validKeyInArray!0 (select (arr!22440 a!4227) to!390)))))

(declare-fun b!835791 () Bool)

(assert (=> b!835791 (= e!466286 e!466285)))

(declare-fun res!568731 () Bool)

(assert (=> b!835791 (=> (not res!568731) (not e!466285))))

(declare-fun lt!380136 () (_ BitVec 32))

(declare-fun lt!380139 () (_ BitVec 32))

(assert (=> b!835791 (= res!568731 (and (= lt!380139 lt!380136) (not (= to!390 (size!22861 a!4227)))))))

(assert (=> b!835791 (= lt!380136 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!835791 (= lt!380139 (arrayCountValidKeys!0 lt!380135 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun k!2968 () (_ BitVec 64))

(assert (=> b!835791 (= lt!380135 (array!46821 (store (arr!22440 a!4227) i!1466 k!2968) (size!22861 a!4227)))))

(declare-fun res!568732 () Bool)

(assert (=> start!71966 (=> (not res!568732) (not e!466286))))

(assert (=> start!71966 (= res!568732 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22861 a!4227))))))

(assert (=> start!71966 e!466286))

(assert (=> start!71966 true))

(declare-fun array_inv!17863 (array!46820) Bool)

(assert (=> start!71966 (array_inv!17863 a!4227)))

(declare-fun b!835792 () Bool)

(declare-fun lt!380138 () Unit!28758)

(assert (=> b!835792 (= e!466289 lt!380138)))

(declare-fun lt!380132 () Unit!28758)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!46820 (_ BitVec 32) (_ BitVec 32)) Unit!28758)

(assert (=> b!835792 (= lt!380132 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun call!36775 () (_ BitVec 32))

(assert (=> b!835792 (= call!36775 lt!380136)))

(assert (=> b!835792 (= lt!380138 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 lt!380135 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun call!36776 () (_ BitVec 32))

(assert (=> b!835792 (= call!36776 lt!380139)))

(declare-fun bm!36772 () Bool)

(assert (=> bm!36772 (= call!36775 (arrayCountValidKeys!0 (ite c!90925 lt!380135 a!4227) (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun b!835793 () Bool)

(declare-fun lt!380134 () Unit!28758)

(assert (=> b!835793 (= e!466289 lt!380134)))

(declare-fun lt!380133 () Unit!28758)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!46820 (_ BitVec 32) (_ BitVec 32)) Unit!28758)

(assert (=> b!835793 (= lt!380133 (lemmaValidKeyIncreasesNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!835793 (= call!36776 (bvadd #b00000000000000000000000000000001 lt!380136))))

(assert (=> b!835793 (= lt!380134 (lemmaValidKeyIncreasesNumOfKeys!0 lt!380135 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!835793 (= call!36775 (bvadd #b00000000000000000000000000000001 lt!380139))))

(declare-fun b!835794 () Bool)

(assert (=> b!835794 (= e!466288 (bvsge (bvsub (size!22861 a!4227) to!390) (bvsub (bvadd #b00000000000000000000000000000001 (size!22861 a!4227)) to!390)))))

(declare-fun b!835795 () Bool)

(declare-fun res!568735 () Bool)

(assert (=> b!835795 (=> (not res!568735) (not e!466286))))

(assert (=> b!835795 (= res!568735 (not (validKeyInArray!0 (select (arr!22440 a!4227) i!1466))))))

(declare-fun b!835796 () Bool)

(declare-fun res!568734 () Bool)

(assert (=> b!835796 (=> (not res!568734) (not e!466286))))

(assert (=> b!835796 (= res!568734 (validKeyInArray!0 k!2968))))

(declare-fun bm!36773 () Bool)

(assert (=> bm!36773 (= call!36776 (arrayCountValidKeys!0 (ite c!90925 a!4227 lt!380135) (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(assert (= (and start!71966 res!568732) b!835795))

(assert (= (and b!835795 res!568735) b!835796))

(assert (= (and b!835796 res!568734) b!835788))

(assert (= (and b!835788 res!568729) b!835791))

(assert (= (and b!835791 res!568731) b!835790))

(assert (= (and b!835790 c!90925) b!835793))

(assert (= (and b!835790 (not c!90925)) b!835792))

(assert (= (or b!835793 b!835792) bm!36773))

(assert (= (or b!835793 b!835792) bm!36772))

(assert (= (and b!835790 res!568733) b!835789))

(assert (= (and b!835789 res!568730) b!835794))

(declare-fun m!781223 () Bool)

(assert (=> b!835795 m!781223))

(assert (=> b!835795 m!781223))

(declare-fun m!781225 () Bool)

(assert (=> b!835795 m!781225))

(declare-fun m!781227 () Bool)

(assert (=> b!835792 m!781227))

(declare-fun m!781229 () Bool)

(assert (=> b!835792 m!781229))

(declare-fun m!781231 () Bool)

(assert (=> bm!36773 m!781231))

(declare-fun m!781233 () Bool)

(assert (=> start!71966 m!781233))

(declare-fun m!781235 () Bool)

(assert (=> b!835793 m!781235))

(declare-fun m!781237 () Bool)

(assert (=> b!835793 m!781237))

(declare-fun m!781239 () Bool)

(assert (=> bm!36772 m!781239))

(declare-fun m!781241 () Bool)

(assert (=> b!835791 m!781241))

(declare-fun m!781243 () Bool)

(assert (=> b!835791 m!781243))

(declare-fun m!781245 () Bool)

(assert (=> b!835791 m!781245))

(declare-fun m!781247 () Bool)

(assert (=> b!835790 m!781247))

(assert (=> b!835790 m!781247))

(declare-fun m!781249 () Bool)

(assert (=> b!835790 m!781249))

(declare-fun m!781251 () Bool)

(assert (=> b!835796 m!781251))

(declare-fun m!781253 () Bool)

(assert (=> b!835789 m!781253))

(declare-fun m!781255 () Bool)

(assert (=> b!835789 m!781255))

(push 1)

(assert (not b!835791))

(assert (not b!835795))

(assert (not b!835790))

(assert (not b!835792))

(assert (not bm!36773))

(assert (not bm!36772))

(assert (not b!835796))

(assert (not b!835789))

(assert (not start!71966))

(assert (not b!835793))

(check-sat)

(pop 1)

(push 1)

(check-sat)

