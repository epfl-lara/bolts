; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71856 () Bool)

(assert start!71856)

(declare-fun b!834744 () Bool)

(declare-fun e!465768 () Bool)

(declare-fun e!465769 () Bool)

(assert (=> b!834744 (= e!465768 e!465769)))

(declare-fun res!567803 () Bool)

(assert (=> b!834744 (=> (not res!567803) (not e!465769))))

(declare-datatypes ((array!46710 0))(
  ( (array!46711 (arr!22385 (Array (_ BitVec 32) (_ BitVec 64))) (size!22806 (_ BitVec 32))) )
))
(declare-fun a!4227 () array!46710)

(declare-fun i!1466 () (_ BitVec 32))

(declare-fun to!390 () (_ BitVec 32))

(assert (=> b!834744 (= res!567803 (and (bvsge (bvadd #b00000000000000000000000000000001 to!390) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 to!390) (size!22806 a!4227)) (bvsgt (bvadd #b00000000000000000000000000000001 to!390) i!1466)))))

(declare-datatypes ((Unit!28696 0))(
  ( (Unit!28697) )
))
(declare-fun lt!379529 () Unit!28696)

(declare-fun e!465766 () Unit!28696)

(assert (=> b!834744 (= lt!379529 e!465766)))

(declare-fun c!90868 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!834744 (= c!90868 (validKeyInArray!0 (select (arr!22385 a!4227) to!390)))))

(declare-fun lt!379535 () array!46710)

(declare-fun call!36661 () (_ BitVec 32))

(declare-fun bm!36658 () Bool)

(declare-fun arrayCountValidKeys!0 (array!46710 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> bm!36658 (= call!36661 (arrayCountValidKeys!0 (ite c!90868 a!4227 lt!379535) (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun b!834745 () Bool)

(declare-fun res!567799 () Bool)

(declare-fun e!465767 () Bool)

(assert (=> b!834745 (=> (not res!567799) (not e!465767))))

(assert (=> b!834745 (= res!567799 (not (validKeyInArray!0 (select (arr!22385 a!4227) i!1466))))))

(declare-fun bm!36659 () Bool)

(declare-fun call!36662 () (_ BitVec 32))

(assert (=> bm!36659 (= call!36662 (arrayCountValidKeys!0 (ite c!90868 lt!379535 a!4227) (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun b!834746 () Bool)

(declare-fun lt!379533 () Unit!28696)

(assert (=> b!834746 (= e!465766 lt!379533)))

(declare-fun lt!379531 () Unit!28696)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!46710 (_ BitVec 32) (_ BitVec 32)) Unit!28696)

(assert (=> b!834746 (= lt!379531 (lemmaValidKeyIncreasesNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun lt!379536 () (_ BitVec 32))

(assert (=> b!834746 (= call!36661 (bvadd #b00000000000000000000000000000001 lt!379536))))

(assert (=> b!834746 (= lt!379533 (lemmaValidKeyIncreasesNumOfKeys!0 lt!379535 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun lt!379534 () (_ BitVec 32))

(assert (=> b!834746 (= call!36662 (bvadd #b00000000000000000000000000000001 lt!379534))))

(declare-fun b!834747 () Bool)

(assert (=> b!834747 (= e!465767 e!465768)))

(declare-fun res!567802 () Bool)

(assert (=> b!834747 (=> (not res!567802) (not e!465768))))

(assert (=> b!834747 (= res!567802 (and (= lt!379534 lt!379536) (not (= to!390 (size!22806 a!4227)))))))

(assert (=> b!834747 (= lt!379536 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!834747 (= lt!379534 (arrayCountValidKeys!0 lt!379535 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun k0!2968 () (_ BitVec 64))

(assert (=> b!834747 (= lt!379535 (array!46711 (store (arr!22385 a!4227) i!1466 k0!2968) (size!22806 a!4227)))))

(declare-fun b!834748 () Bool)

(declare-fun res!567804 () Bool)

(assert (=> b!834748 (=> (not res!567804) (not e!465767))))

(assert (=> b!834748 (= res!567804 (and (bvslt (size!22806 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22806 a!4227)) (bvsgt to!390 i!1466)))))

(declare-fun b!834749 () Bool)

(declare-fun res!567801 () Bool)

(assert (=> b!834749 (=> (not res!567801) (not e!465769))))

(assert (=> b!834749 (= res!567801 (= (arrayCountValidKeys!0 lt!379535 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)) (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390))))))

(declare-fun b!834750 () Bool)

(declare-fun lt!379528 () Unit!28696)

(assert (=> b!834750 (= e!465766 lt!379528)))

(declare-fun lt!379532 () Unit!28696)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!46710 (_ BitVec 32) (_ BitVec 32)) Unit!28696)

(assert (=> b!834750 (= lt!379532 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!834750 (= call!36662 lt!379536)))

(assert (=> b!834750 (= lt!379528 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 lt!379535 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!834750 (= call!36661 lt!379534)))

(declare-fun res!567805 () Bool)

(assert (=> start!71856 (=> (not res!567805) (not e!465767))))

(assert (=> start!71856 (= res!567805 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22806 a!4227))))))

(assert (=> start!71856 e!465767))

(assert (=> start!71856 true))

(declare-fun array_inv!17808 (array!46710) Bool)

(assert (=> start!71856 (array_inv!17808 a!4227)))

(declare-fun b!834751 () Bool)

(assert (=> b!834751 (= e!465769 (not true))))

(assert (=> b!834751 (= (arrayCountValidKeys!0 lt!379535 (bvadd #b00000000000000000000000000000001 i!1466) (size!22806 a!4227)) (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (size!22806 a!4227)))))

(declare-fun lt!379530 () Unit!28696)

(declare-fun lemmaAddValidKeyAndNumKeysToImpliesToALength!0 (array!46710 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!28696)

(assert (=> b!834751 (= lt!379530 (lemmaAddValidKeyAndNumKeysToImpliesToALength!0 a!4227 i!1466 k0!2968 (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun b!834752 () Bool)

(declare-fun res!567800 () Bool)

(assert (=> b!834752 (=> (not res!567800) (not e!465767))))

(assert (=> b!834752 (= res!567800 (validKeyInArray!0 k0!2968))))

(assert (= (and start!71856 res!567805) b!834745))

(assert (= (and b!834745 res!567799) b!834752))

(assert (= (and b!834752 res!567800) b!834748))

(assert (= (and b!834748 res!567804) b!834747))

(assert (= (and b!834747 res!567802) b!834744))

(assert (= (and b!834744 c!90868) b!834746))

(assert (= (and b!834744 (not c!90868)) b!834750))

(assert (= (or b!834746 b!834750) bm!36658))

(assert (= (or b!834746 b!834750) bm!36659))

(assert (= (and b!834744 res!567803) b!834749))

(assert (= (and b!834749 res!567801) b!834751))

(declare-fun m!779985 () Bool)

(assert (=> b!834745 m!779985))

(assert (=> b!834745 m!779985))

(declare-fun m!779987 () Bool)

(assert (=> b!834745 m!779987))

(declare-fun m!779989 () Bool)

(assert (=> start!71856 m!779989))

(declare-fun m!779991 () Bool)

(assert (=> b!834744 m!779991))

(assert (=> b!834744 m!779991))

(declare-fun m!779993 () Bool)

(assert (=> b!834744 m!779993))

(declare-fun m!779995 () Bool)

(assert (=> b!834747 m!779995))

(declare-fun m!779997 () Bool)

(assert (=> b!834747 m!779997))

(declare-fun m!779999 () Bool)

(assert (=> b!834747 m!779999))

(declare-fun m!780001 () Bool)

(assert (=> bm!36658 m!780001))

(declare-fun m!780003 () Bool)

(assert (=> bm!36659 m!780003))

(declare-fun m!780005 () Bool)

(assert (=> b!834751 m!780005))

(declare-fun m!780007 () Bool)

(assert (=> b!834751 m!780007))

(declare-fun m!780009 () Bool)

(assert (=> b!834751 m!780009))

(declare-fun m!780011 () Bool)

(assert (=> b!834746 m!780011))

(declare-fun m!780013 () Bool)

(assert (=> b!834746 m!780013))

(declare-fun m!780015 () Bool)

(assert (=> b!834749 m!780015))

(declare-fun m!780017 () Bool)

(assert (=> b!834749 m!780017))

(declare-fun m!780019 () Bool)

(assert (=> b!834750 m!780019))

(declare-fun m!780021 () Bool)

(assert (=> b!834750 m!780021))

(declare-fun m!780023 () Bool)

(assert (=> b!834752 m!780023))

(check-sat (not start!71856) (not b!834749) (not b!834747) (not b!834751) (not b!834746) (not bm!36659) (not b!834745) (not b!834752) (not bm!36658) (not b!834750) (not b!834744))
(check-sat)
