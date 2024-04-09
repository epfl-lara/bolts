; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71972 () Bool)

(assert start!71972)

(declare-fun b!835869 () Bool)

(declare-datatypes ((Unit!28764 0))(
  ( (Unit!28765) )
))
(declare-fun e!466334 () Unit!28764)

(declare-fun lt!380218 () Unit!28764)

(assert (=> b!835869 (= e!466334 lt!380218)))

(declare-datatypes ((array!46826 0))(
  ( (array!46827 (arr!22443 (Array (_ BitVec 32) (_ BitVec 64))) (size!22864 (_ BitVec 32))) )
))
(declare-fun a!4227 () array!46826)

(declare-fun lt!380219 () Unit!28764)

(declare-fun i!1466 () (_ BitVec 32))

(declare-fun to!390 () (_ BitVec 32))

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!46826 (_ BitVec 32) (_ BitVec 32)) Unit!28764)

(assert (=> b!835869 (= lt!380219 (lemmaValidKeyIncreasesNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun call!36794 () (_ BitVec 32))

(declare-fun lt!380217 () (_ BitVec 32))

(assert (=> b!835869 (= call!36794 (bvadd #b00000000000000000000000000000001 lt!380217))))

(declare-fun lt!380220 () array!46826)

(assert (=> b!835869 (= lt!380218 (lemmaValidKeyIncreasesNumOfKeys!0 lt!380220 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun call!36793 () (_ BitVec 32))

(declare-fun lt!380216 () (_ BitVec 32))

(assert (=> b!835869 (= call!36793 (bvadd #b00000000000000000000000000000001 lt!380216))))

(declare-fun b!835870 () Bool)

(declare-fun e!466332 () Bool)

(assert (=> b!835870 (= e!466332 (not true))))

(declare-fun arrayCountValidKeys!0 (array!46826 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!835870 (= (arrayCountValidKeys!0 lt!380220 (bvadd #b00000000000000000000000000000001 i!1466) (size!22864 a!4227)) (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (size!22864 a!4227)))))

(declare-fun lt!380215 () Unit!28764)

(declare-fun k!2968 () (_ BitVec 64))

(declare-fun lemmaAddValidKeyAndNumKeysToImpliesToALength!0 (array!46826 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!28764)

(assert (=> b!835870 (= lt!380215 (lemmaAddValidKeyAndNumKeysToImpliesToALength!0 a!4227 i!1466 k!2968 (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun b!835871 () Bool)

(declare-fun res!568794 () Bool)

(assert (=> b!835871 (=> (not res!568794) (not e!466332))))

(assert (=> b!835871 (= res!568794 (= (arrayCountValidKeys!0 lt!380220 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)) (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390))))))

(declare-fun b!835872 () Bool)

(declare-fun res!568797 () Bool)

(declare-fun e!466330 () Bool)

(assert (=> b!835872 (=> (not res!568797) (not e!466330))))

(assert (=> b!835872 (= res!568797 (and (bvslt (size!22864 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22864 a!4227)) (bvsgt to!390 i!1466)))))

(declare-fun bm!36790 () Bool)

(assert (=> bm!36790 (= call!36794 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun b!835873 () Bool)

(declare-fun lt!380214 () Unit!28764)

(assert (=> b!835873 (= e!466334 lt!380214)))

(declare-fun lt!380212 () Unit!28764)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!46826 (_ BitVec 32) (_ BitVec 32)) Unit!28764)

(assert (=> b!835873 (= lt!380212 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!835873 (= call!36794 lt!380217)))

(assert (=> b!835873 (= lt!380214 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 lt!380220 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!835873 (= call!36793 lt!380216)))

(declare-fun b!835874 () Bool)

(declare-fun res!568795 () Bool)

(assert (=> b!835874 (=> (not res!568795) (not e!466330))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!835874 (= res!568795 (validKeyInArray!0 k!2968))))

(declare-fun b!835875 () Bool)

(declare-fun e!466333 () Bool)

(assert (=> b!835875 (= e!466333 e!466332)))

(declare-fun res!568796 () Bool)

(assert (=> b!835875 (=> (not res!568796) (not e!466332))))

(assert (=> b!835875 (= res!568796 (and (bvsge (bvadd #b00000000000000000000000000000001 to!390) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 to!390) (size!22864 a!4227)) (bvsgt (bvadd #b00000000000000000000000000000001 to!390) i!1466)))))

(declare-fun lt!380213 () Unit!28764)

(assert (=> b!835875 (= lt!380213 e!466334)))

(declare-fun c!90934 () Bool)

(assert (=> b!835875 (= c!90934 (validKeyInArray!0 (select (arr!22443 a!4227) to!390)))))

(declare-fun b!835876 () Bool)

(declare-fun res!568793 () Bool)

(assert (=> b!835876 (=> (not res!568793) (not e!466330))))

(assert (=> b!835876 (= res!568793 (not (validKeyInArray!0 (select (arr!22443 a!4227) i!1466))))))

(declare-fun bm!36791 () Bool)

(assert (=> bm!36791 (= call!36793 (arrayCountValidKeys!0 lt!380220 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun res!568798 () Bool)

(assert (=> start!71972 (=> (not res!568798) (not e!466330))))

(assert (=> start!71972 (= res!568798 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22864 a!4227))))))

(assert (=> start!71972 e!466330))

(assert (=> start!71972 true))

(declare-fun array_inv!17866 (array!46826) Bool)

(assert (=> start!71972 (array_inv!17866 a!4227)))

(declare-fun b!835877 () Bool)

(assert (=> b!835877 (= e!466330 e!466333)))

(declare-fun res!568792 () Bool)

(assert (=> b!835877 (=> (not res!568792) (not e!466333))))

(assert (=> b!835877 (= res!568792 (and (= lt!380216 lt!380217) (not (= to!390 (size!22864 a!4227)))))))

(assert (=> b!835877 (= lt!380217 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!835877 (= lt!380216 (arrayCountValidKeys!0 lt!380220 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!835877 (= lt!380220 (array!46827 (store (arr!22443 a!4227) i!1466 k!2968) (size!22864 a!4227)))))

(assert (= (and start!71972 res!568798) b!835876))

(assert (= (and b!835876 res!568793) b!835874))

(assert (= (and b!835874 res!568795) b!835872))

(assert (= (and b!835872 res!568797) b!835877))

(assert (= (and b!835877 res!568792) b!835875))

(assert (= (and b!835875 c!90934) b!835869))

(assert (= (and b!835875 (not c!90934)) b!835873))

(assert (= (or b!835869 b!835873) bm!36791))

(assert (= (or b!835869 b!835873) bm!36790))

(assert (= (and b!835875 res!568796) b!835871))

(assert (= (and b!835871 res!568794) b!835870))

(declare-fun m!781329 () Bool)

(assert (=> b!835871 m!781329))

(declare-fun m!781331 () Bool)

(assert (=> b!835871 m!781331))

(declare-fun m!781333 () Bool)

(assert (=> b!835869 m!781333))

(declare-fun m!781335 () Bool)

(assert (=> b!835869 m!781335))

(declare-fun m!781337 () Bool)

(assert (=> b!835874 m!781337))

(declare-fun m!781339 () Bool)

(assert (=> start!71972 m!781339))

(assert (=> bm!36791 m!781329))

(assert (=> bm!36790 m!781331))

(declare-fun m!781341 () Bool)

(assert (=> b!835876 m!781341))

(assert (=> b!835876 m!781341))

(declare-fun m!781343 () Bool)

(assert (=> b!835876 m!781343))

(declare-fun m!781345 () Bool)

(assert (=> b!835875 m!781345))

(assert (=> b!835875 m!781345))

(declare-fun m!781347 () Bool)

(assert (=> b!835875 m!781347))

(declare-fun m!781349 () Bool)

(assert (=> b!835870 m!781349))

(declare-fun m!781351 () Bool)

(assert (=> b!835870 m!781351))

(declare-fun m!781353 () Bool)

(assert (=> b!835870 m!781353))

(declare-fun m!781355 () Bool)

(assert (=> b!835877 m!781355))

(declare-fun m!781357 () Bool)

(assert (=> b!835877 m!781357))

(declare-fun m!781359 () Bool)

(assert (=> b!835877 m!781359))

(declare-fun m!781361 () Bool)

(assert (=> b!835873 m!781361))

(declare-fun m!781363 () Bool)

(assert (=> b!835873 m!781363))

(push 1)

(assert (not b!835873))

(assert (not b!835875))

(assert (not start!71972))

(assert (not b!835874))

(assert (not b!835877))

