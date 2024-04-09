; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71974 () Bool)

(assert start!71974)

(declare-fun b!835896 () Bool)

(declare-fun e!466349 () Bool)

(declare-fun e!466345 () Bool)

(assert (=> b!835896 (= e!466349 e!466345)))

(declare-fun res!568816 () Bool)

(assert (=> b!835896 (=> (not res!568816) (not e!466345))))

(declare-datatypes ((array!46828 0))(
  ( (array!46829 (arr!22444 (Array (_ BitVec 32) (_ BitVec 64))) (size!22865 (_ BitVec 32))) )
))
(declare-fun a!4227 () array!46828)

(declare-fun lt!380240 () (_ BitVec 32))

(declare-fun lt!380243 () (_ BitVec 32))

(declare-fun to!390 () (_ BitVec 32))

(assert (=> b!835896 (= res!568816 (and (= lt!380243 lt!380240) (not (= to!390 (size!22865 a!4227)))))))

(declare-fun i!1466 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!46828 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!835896 (= lt!380240 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun lt!380239 () array!46828)

(assert (=> b!835896 (= lt!380243 (arrayCountValidKeys!0 lt!380239 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun k!2968 () (_ BitVec 64))

(assert (=> b!835896 (= lt!380239 (array!46829 (store (arr!22444 a!4227) i!1466 k!2968) (size!22865 a!4227)))))

(declare-fun b!835897 () Bool)

(declare-datatypes ((Unit!28766 0))(
  ( (Unit!28767) )
))
(declare-fun e!466346 () Unit!28766)

(declare-fun lt!380247 () Unit!28766)

(assert (=> b!835897 (= e!466346 lt!380247)))

(declare-fun lt!380245 () Unit!28766)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!46828 (_ BitVec 32) (_ BitVec 32)) Unit!28766)

(assert (=> b!835897 (= lt!380245 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun call!36799 () (_ BitVec 32))

(assert (=> b!835897 (= call!36799 lt!380240)))

(assert (=> b!835897 (= lt!380247 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 lt!380239 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun call!36800 () (_ BitVec 32))

(assert (=> b!835897 (= call!36800 lt!380243)))

(declare-fun b!835899 () Bool)

(declare-fun e!466347 () Bool)

(assert (=> b!835899 (= e!466347 (not true))))

(assert (=> b!835899 (= (arrayCountValidKeys!0 lt!380239 (bvadd #b00000000000000000000000000000001 i!1466) (size!22865 a!4227)) (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (size!22865 a!4227)))))

(declare-fun lt!380242 () Unit!28766)

(declare-fun lemmaAddValidKeyAndNumKeysToImpliesToALength!0 (array!46828 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!28766)

(assert (=> b!835899 (= lt!380242 (lemmaAddValidKeyAndNumKeysToImpliesToALength!0 a!4227 i!1466 k!2968 (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun b!835900 () Bool)

(declare-fun res!568813 () Bool)

(assert (=> b!835900 (=> (not res!568813) (not e!466349))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!835900 (= res!568813 (validKeyInArray!0 k!2968))))

(declare-fun bm!36796 () Bool)

(assert (=> bm!36796 (= call!36800 (arrayCountValidKeys!0 lt!380239 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun b!835901 () Bool)

(declare-fun res!568814 () Bool)

(assert (=> b!835901 (=> (not res!568814) (not e!466347))))

(assert (=> b!835901 (= res!568814 (= (arrayCountValidKeys!0 lt!380239 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)) (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390))))))

(declare-fun b!835902 () Bool)

(declare-fun res!568815 () Bool)

(assert (=> b!835902 (=> (not res!568815) (not e!466349))))

(assert (=> b!835902 (= res!568815 (and (bvslt (size!22865 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22865 a!4227)) (bvsgt to!390 i!1466)))))

(declare-fun b!835903 () Bool)

(declare-fun lt!380244 () Unit!28766)

(assert (=> b!835903 (= e!466346 lt!380244)))

(declare-fun lt!380241 () Unit!28766)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!46828 (_ BitVec 32) (_ BitVec 32)) Unit!28766)

(assert (=> b!835903 (= lt!380241 (lemmaValidKeyIncreasesNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!835903 (= call!36799 (bvadd #b00000000000000000000000000000001 lt!380240))))

(assert (=> b!835903 (= lt!380244 (lemmaValidKeyIncreasesNumOfKeys!0 lt!380239 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!835903 (= call!36800 (bvadd #b00000000000000000000000000000001 lt!380243))))

(declare-fun res!568819 () Bool)

(assert (=> start!71974 (=> (not res!568819) (not e!466349))))

(assert (=> start!71974 (= res!568819 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22865 a!4227))))))

(assert (=> start!71974 e!466349))

(assert (=> start!71974 true))

(declare-fun array_inv!17867 (array!46828) Bool)

(assert (=> start!71974 (array_inv!17867 a!4227)))

(declare-fun b!835898 () Bool)

(assert (=> b!835898 (= e!466345 e!466347)))

(declare-fun res!568818 () Bool)

(assert (=> b!835898 (=> (not res!568818) (not e!466347))))

(assert (=> b!835898 (= res!568818 (and (bvsge (bvadd #b00000000000000000000000000000001 to!390) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 to!390) (size!22865 a!4227)) (bvsgt (bvadd #b00000000000000000000000000000001 to!390) i!1466)))))

(declare-fun lt!380246 () Unit!28766)

(assert (=> b!835898 (= lt!380246 e!466346)))

(declare-fun c!90937 () Bool)

(assert (=> b!835898 (= c!90937 (validKeyInArray!0 (select (arr!22444 a!4227) to!390)))))

(declare-fun bm!36797 () Bool)

(assert (=> bm!36797 (= call!36799 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun b!835904 () Bool)

(declare-fun res!568817 () Bool)

(assert (=> b!835904 (=> (not res!568817) (not e!466349))))

(assert (=> b!835904 (= res!568817 (not (validKeyInArray!0 (select (arr!22444 a!4227) i!1466))))))

(assert (= (and start!71974 res!568819) b!835904))

(assert (= (and b!835904 res!568817) b!835900))

(assert (= (and b!835900 res!568813) b!835902))

(assert (= (and b!835902 res!568815) b!835896))

(assert (= (and b!835896 res!568816) b!835898))

(assert (= (and b!835898 c!90937) b!835903))

(assert (= (and b!835898 (not c!90937)) b!835897))

(assert (= (or b!835903 b!835897) bm!36797))

(assert (= (or b!835903 b!835897) bm!36796))

(assert (= (and b!835898 res!568818) b!835901))

(assert (= (and b!835901 res!568814) b!835899))

(declare-fun m!781365 () Bool)

(assert (=> b!835900 m!781365))

(declare-fun m!781367 () Bool)

(assert (=> bm!36796 m!781367))

(declare-fun m!781369 () Bool)

(assert (=> bm!36797 m!781369))

(declare-fun m!781371 () Bool)

(assert (=> b!835899 m!781371))

(declare-fun m!781373 () Bool)

(assert (=> b!835899 m!781373))

(declare-fun m!781375 () Bool)

(assert (=> b!835899 m!781375))

(declare-fun m!781377 () Bool)

(assert (=> b!835898 m!781377))

(assert (=> b!835898 m!781377))

(declare-fun m!781379 () Bool)

(assert (=> b!835898 m!781379))

(declare-fun m!781381 () Bool)

(assert (=> b!835896 m!781381))

(declare-fun m!781383 () Bool)

(assert (=> b!835896 m!781383))

(declare-fun m!781385 () Bool)

(assert (=> b!835896 m!781385))

(declare-fun m!781387 () Bool)

(assert (=> start!71974 m!781387))

(declare-fun m!781389 () Bool)

(assert (=> b!835903 m!781389))

(declare-fun m!781391 () Bool)

(assert (=> b!835903 m!781391))

(assert (=> b!835901 m!781367))

(assert (=> b!835901 m!781369))

(declare-fun m!781393 () Bool)

(assert (=> b!835897 m!781393))

(declare-fun m!781395 () Bool)

(assert (=> b!835897 m!781395))

(declare-fun m!781397 () Bool)

(assert (=> b!835904 m!781397))

(assert (=> b!835904 m!781397))

(declare-fun m!781399 () Bool)

(assert (=> b!835904 m!781399))

(push 1)

