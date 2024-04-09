; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71968 () Bool)

(assert start!71968)

(declare-fun b!835815 () Bool)

(declare-fun res!568751 () Bool)

(declare-fun e!466301 () Bool)

(assert (=> b!835815 (=> (not res!568751) (not e!466301))))

(declare-datatypes ((array!46822 0))(
  ( (array!46823 (arr!22441 (Array (_ BitVec 32) (_ BitVec 64))) (size!22862 (_ BitVec 32))) )
))
(declare-fun a!4227 () array!46822)

(declare-fun i!1466 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!835815 (= res!568751 (not (validKeyInArray!0 (select (arr!22441 a!4227) i!1466))))))

(declare-fun b!835816 () Bool)

(declare-datatypes ((Unit!28760 0))(
  ( (Unit!28761) )
))
(declare-fun e!466303 () Unit!28760)

(declare-fun lt!380161 () Unit!28760)

(assert (=> b!835816 (= e!466303 lt!380161)))

(declare-fun lt!380158 () Unit!28760)

(declare-fun to!390 () (_ BitVec 32))

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!46822 (_ BitVec 32) (_ BitVec 32)) Unit!28760)

(assert (=> b!835816 (= lt!380158 (lemmaValidKeyIncreasesNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun call!36782 () (_ BitVec 32))

(declare-fun lt!380160 () (_ BitVec 32))

(assert (=> b!835816 (= call!36782 (bvadd #b00000000000000000000000000000001 lt!380160))))

(declare-fun lt!380166 () array!46822)

(assert (=> b!835816 (= lt!380161 (lemmaValidKeyIncreasesNumOfKeys!0 lt!380166 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun call!36781 () (_ BitVec 32))

(declare-fun lt!380165 () (_ BitVec 32))

(assert (=> b!835816 (= call!36781 (bvadd #b00000000000000000000000000000001 lt!380165))))

(declare-fun b!835818 () Bool)

(declare-fun e!466302 () Bool)

(assert (=> b!835818 (= e!466301 e!466302)))

(declare-fun res!568752 () Bool)

(assert (=> b!835818 (=> (not res!568752) (not e!466302))))

(assert (=> b!835818 (= res!568752 (and (= lt!380165 lt!380160) (not (= to!390 (size!22862 a!4227)))))))

(declare-fun arrayCountValidKeys!0 (array!46822 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!835818 (= lt!380160 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!835818 (= lt!380165 (arrayCountValidKeys!0 lt!380166 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun k!2968 () (_ BitVec 64))

(assert (=> b!835818 (= lt!380166 (array!46823 (store (arr!22441 a!4227) i!1466 k!2968) (size!22862 a!4227)))))

(declare-fun b!835819 () Bool)

(declare-fun res!568753 () Bool)

(assert (=> b!835819 (=> (not res!568753) (not e!466301))))

(assert (=> b!835819 (= res!568753 (and (bvslt (size!22862 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22862 a!4227)) (bvsgt to!390 i!1466)))))

(declare-fun bm!36778 () Bool)

(assert (=> bm!36778 (= call!36782 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun b!835820 () Bool)

(declare-fun res!568750 () Bool)

(assert (=> b!835820 (=> (not res!568750) (not e!466301))))

(assert (=> b!835820 (= res!568750 (validKeyInArray!0 k!2968))))

(declare-fun b!835821 () Bool)

(declare-fun e!466300 () Bool)

(assert (=> b!835821 (= e!466300 (not true))))

(assert (=> b!835821 (= (arrayCountValidKeys!0 lt!380166 (bvadd #b00000000000000000000000000000001 i!1466) (size!22862 a!4227)) (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (size!22862 a!4227)))))

(declare-fun lt!380163 () Unit!28760)

(declare-fun lemmaAddValidKeyAndNumKeysToImpliesToALength!0 (array!46822 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!28760)

(assert (=> b!835821 (= lt!380163 (lemmaAddValidKeyAndNumKeysToImpliesToALength!0 a!4227 i!1466 k!2968 (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun b!835822 () Bool)

(assert (=> b!835822 (= e!466302 e!466300)))

(declare-fun res!568755 () Bool)

(assert (=> b!835822 (=> (not res!568755) (not e!466300))))

(assert (=> b!835822 (= res!568755 (and (bvsge (bvadd #b00000000000000000000000000000001 to!390) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 to!390) (size!22862 a!4227)) (bvsgt (bvadd #b00000000000000000000000000000001 to!390) i!1466)))))

(declare-fun lt!380162 () Unit!28760)

(assert (=> b!835822 (= lt!380162 e!466303)))

(declare-fun c!90928 () Bool)

(assert (=> b!835822 (= c!90928 (validKeyInArray!0 (select (arr!22441 a!4227) to!390)))))

(declare-fun res!568754 () Bool)

(assert (=> start!71968 (=> (not res!568754) (not e!466301))))

(assert (=> start!71968 (= res!568754 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22862 a!4227))))))

(assert (=> start!71968 e!466301))

(assert (=> start!71968 true))

(declare-fun array_inv!17864 (array!46822) Bool)

(assert (=> start!71968 (array_inv!17864 a!4227)))

(declare-fun b!835817 () Bool)

(declare-fun lt!380159 () Unit!28760)

(assert (=> b!835817 (= e!466303 lt!380159)))

(declare-fun lt!380164 () Unit!28760)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!46822 (_ BitVec 32) (_ BitVec 32)) Unit!28760)

(assert (=> b!835817 (= lt!380164 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!835817 (= call!36782 lt!380160)))

(assert (=> b!835817 (= lt!380159 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 lt!380166 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!835817 (= call!36781 lt!380165)))

(declare-fun b!835823 () Bool)

(declare-fun res!568756 () Bool)

(assert (=> b!835823 (=> (not res!568756) (not e!466300))))

(assert (=> b!835823 (= res!568756 (= (arrayCountValidKeys!0 lt!380166 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)) (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390))))))

(declare-fun bm!36779 () Bool)

(assert (=> bm!36779 (= call!36781 (arrayCountValidKeys!0 lt!380166 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(assert (= (and start!71968 res!568754) b!835815))

(assert (= (and b!835815 res!568751) b!835820))

(assert (= (and b!835820 res!568750) b!835819))

(assert (= (and b!835819 res!568753) b!835818))

(assert (= (and b!835818 res!568752) b!835822))

(assert (= (and b!835822 c!90928) b!835816))

(assert (= (and b!835822 (not c!90928)) b!835817))

(assert (= (or b!835816 b!835817) bm!36779))

(assert (= (or b!835816 b!835817) bm!36778))

(assert (= (and b!835822 res!568755) b!835823))

(assert (= (and b!835823 res!568756) b!835821))

(declare-fun m!781257 () Bool)

(assert (=> b!835818 m!781257))

(declare-fun m!781259 () Bool)

(assert (=> b!835818 m!781259))

(declare-fun m!781261 () Bool)

(assert (=> b!835818 m!781261))

(declare-fun m!781263 () Bool)

(assert (=> bm!36778 m!781263))

(declare-fun m!781265 () Bool)

(assert (=> bm!36779 m!781265))

(declare-fun m!781267 () Bool)

(assert (=> b!835820 m!781267))

(declare-fun m!781269 () Bool)

(assert (=> b!835821 m!781269))

(declare-fun m!781271 () Bool)

(assert (=> b!835821 m!781271))

(declare-fun m!781273 () Bool)

(assert (=> b!835821 m!781273))

(declare-fun m!781275 () Bool)

(assert (=> b!835815 m!781275))

(assert (=> b!835815 m!781275))

(declare-fun m!781277 () Bool)

(assert (=> b!835815 m!781277))

(assert (=> b!835823 m!781265))

(assert (=> b!835823 m!781263))

(declare-fun m!781279 () Bool)

(assert (=> start!71968 m!781279))

(declare-fun m!781281 () Bool)

(assert (=> b!835816 m!781281))

(declare-fun m!781283 () Bool)

(assert (=> b!835816 m!781283))

(declare-fun m!781285 () Bool)

(assert (=> b!835822 m!781285))

(assert (=> b!835822 m!781285))

(declare-fun m!781287 () Bool)

(assert (=> b!835822 m!781287))

(declare-fun m!781289 () Bool)

(assert (=> b!835817 m!781289))

(declare-fun m!781291 () Bool)

(assert (=> b!835817 m!781291))

(push 1)

