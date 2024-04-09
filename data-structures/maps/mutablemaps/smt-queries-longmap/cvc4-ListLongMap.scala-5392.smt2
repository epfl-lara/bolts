; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71978 () Bool)

(assert start!71978)

(declare-fun b!835950 () Bool)

(declare-fun res!568859 () Bool)

(declare-fun e!466375 () Bool)

(assert (=> b!835950 (=> (not res!568859) (not e!466375))))

(declare-fun k!2968 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!835950 (= res!568859 (validKeyInArray!0 k!2968))))

(declare-fun b!835951 () Bool)

(declare-fun e!466376 () Bool)

(assert (=> b!835951 (= e!466376 (not true))))

(declare-datatypes ((array!46832 0))(
  ( (array!46833 (arr!22446 (Array (_ BitVec 32) (_ BitVec 64))) (size!22867 (_ BitVec 32))) )
))
(declare-fun lt!380296 () array!46832)

(declare-fun i!1466 () (_ BitVec 32))

(declare-fun a!4227 () array!46832)

(declare-fun arrayCountValidKeys!0 (array!46832 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!835951 (= (arrayCountValidKeys!0 lt!380296 (bvadd #b00000000000000000000000000000001 i!1466) (size!22867 a!4227)) (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (size!22867 a!4227)))))

(declare-datatypes ((Unit!28770 0))(
  ( (Unit!28771) )
))
(declare-fun lt!380301 () Unit!28770)

(declare-fun to!390 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyAndNumKeysToImpliesToALength!0 (array!46832 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!28770)

(assert (=> b!835951 (= lt!380301 (lemmaAddValidKeyAndNumKeysToImpliesToALength!0 a!4227 i!1466 k!2968 (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun c!90943 () Bool)

(declare-fun bm!36808 () Bool)

(declare-fun call!36811 () (_ BitVec 32))

(assert (=> bm!36808 (= call!36811 (arrayCountValidKeys!0 (ite c!90943 a!4227 lt!380296) (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun b!835952 () Bool)

(declare-fun res!568857 () Bool)

(assert (=> b!835952 (=> (not res!568857) (not e!466375))))

(assert (=> b!835952 (= res!568857 (and (bvslt (size!22867 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22867 a!4227)) (bvsgt to!390 i!1466)))))

(declare-fun b!835953 () Bool)

(declare-fun e!466379 () Bool)

(assert (=> b!835953 (= e!466379 e!466376)))

(declare-fun res!568855 () Bool)

(assert (=> b!835953 (=> (not res!568855) (not e!466376))))

(assert (=> b!835953 (= res!568855 (and (bvsge (bvadd #b00000000000000000000000000000001 to!390) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 to!390) (size!22867 a!4227)) (bvsgt (bvadd #b00000000000000000000000000000001 to!390) i!1466)))))

(declare-fun lt!380294 () Unit!28770)

(declare-fun e!466378 () Unit!28770)

(assert (=> b!835953 (= lt!380294 e!466378)))

(assert (=> b!835953 (= c!90943 (validKeyInArray!0 (select (arr!22446 a!4227) to!390)))))

(declare-fun res!568860 () Bool)

(assert (=> start!71978 (=> (not res!568860) (not e!466375))))

(assert (=> start!71978 (= res!568860 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22867 a!4227))))))

(assert (=> start!71978 e!466375))

(assert (=> start!71978 true))

(declare-fun array_inv!17869 (array!46832) Bool)

(assert (=> start!71978 (array_inv!17869 a!4227)))

(declare-fun bm!36809 () Bool)

(declare-fun call!36812 () (_ BitVec 32))

(assert (=> bm!36809 (= call!36812 (arrayCountValidKeys!0 (ite c!90943 lt!380296 a!4227) (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun b!835954 () Bool)

(declare-fun res!568856 () Bool)

(assert (=> b!835954 (=> (not res!568856) (not e!466376))))

(assert (=> b!835954 (= res!568856 (= (arrayCountValidKeys!0 lt!380296 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)) (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390))))))

(declare-fun b!835955 () Bool)

(assert (=> b!835955 (= e!466375 e!466379)))

(declare-fun res!568858 () Bool)

(assert (=> b!835955 (=> (not res!568858) (not e!466379))))

(declare-fun lt!380295 () (_ BitVec 32))

(declare-fun lt!380300 () (_ BitVec 32))

(assert (=> b!835955 (= res!568858 (and (= lt!380300 lt!380295) (not (= to!390 (size!22867 a!4227)))))))

(assert (=> b!835955 (= lt!380295 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!835955 (= lt!380300 (arrayCountValidKeys!0 lt!380296 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!835955 (= lt!380296 (array!46833 (store (arr!22446 a!4227) i!1466 k!2968) (size!22867 a!4227)))))

(declare-fun b!835956 () Bool)

(declare-fun lt!380299 () Unit!28770)

(assert (=> b!835956 (= e!466378 lt!380299)))

(declare-fun lt!380297 () Unit!28770)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!46832 (_ BitVec 32) (_ BitVec 32)) Unit!28770)

(assert (=> b!835956 (= lt!380297 (lemmaValidKeyIncreasesNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!835956 (= call!36811 (bvadd #b00000000000000000000000000000001 lt!380295))))

(assert (=> b!835956 (= lt!380299 (lemmaValidKeyIncreasesNumOfKeys!0 lt!380296 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!835956 (= call!36812 (bvadd #b00000000000000000000000000000001 lt!380300))))

(declare-fun b!835957 () Bool)

(declare-fun res!568861 () Bool)

(assert (=> b!835957 (=> (not res!568861) (not e!466375))))

(assert (=> b!835957 (= res!568861 (not (validKeyInArray!0 (select (arr!22446 a!4227) i!1466))))))

(declare-fun b!835958 () Bool)

(declare-fun lt!380298 () Unit!28770)

(assert (=> b!835958 (= e!466378 lt!380298)))

(declare-fun lt!380293 () Unit!28770)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!46832 (_ BitVec 32) (_ BitVec 32)) Unit!28770)

(assert (=> b!835958 (= lt!380293 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!835958 (= call!36812 lt!380295)))

(assert (=> b!835958 (= lt!380298 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 lt!380296 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!835958 (= call!36811 lt!380300)))

(assert (= (and start!71978 res!568860) b!835957))

(assert (= (and b!835957 res!568861) b!835950))

(assert (= (and b!835950 res!568859) b!835952))

(assert (= (and b!835952 res!568857) b!835955))

(assert (= (and b!835955 res!568858) b!835953))

(assert (= (and b!835953 c!90943) b!835956))

(assert (= (and b!835953 (not c!90943)) b!835958))

(assert (= (or b!835956 b!835958) bm!36809))

(assert (= (or b!835956 b!835958) bm!36808))

(assert (= (and b!835953 res!568855) b!835954))

(assert (= (and b!835954 res!568856) b!835951))

(declare-fun m!781437 () Bool)

(assert (=> start!71978 m!781437))

(declare-fun m!781439 () Bool)

(assert (=> b!835956 m!781439))

(declare-fun m!781441 () Bool)

(assert (=> b!835956 m!781441))

(declare-fun m!781443 () Bool)

(assert (=> bm!36808 m!781443))

(declare-fun m!781445 () Bool)

(assert (=> b!835950 m!781445))

(declare-fun m!781447 () Bool)

(assert (=> b!835954 m!781447))

(declare-fun m!781449 () Bool)

(assert (=> b!835954 m!781449))

(declare-fun m!781451 () Bool)

(assert (=> b!835957 m!781451))

(assert (=> b!835957 m!781451))

(declare-fun m!781453 () Bool)

(assert (=> b!835957 m!781453))

(declare-fun m!781455 () Bool)

(assert (=> b!835951 m!781455))

(declare-fun m!781457 () Bool)

(assert (=> b!835951 m!781457))

(declare-fun m!781459 () Bool)

(assert (=> b!835951 m!781459))

(declare-fun m!781461 () Bool)

(assert (=> bm!36809 m!781461))

(declare-fun m!781463 () Bool)

(assert (=> b!835955 m!781463))

(declare-fun m!781465 () Bool)

(assert (=> b!835955 m!781465))

(declare-fun m!781467 () Bool)

(assert (=> b!835955 m!781467))

(declare-fun m!781469 () Bool)

(assert (=> b!835953 m!781469))

(assert (=> b!835953 m!781469))

(declare-fun m!781471 () Bool)

(assert (=> b!835953 m!781471))

(declare-fun m!781473 () Bool)

(assert (=> b!835958 m!781473))

(declare-fun m!781475 () Bool)

(assert (=> b!835958 m!781475))

(push 1)

