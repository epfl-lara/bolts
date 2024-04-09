; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71952 () Bool)

(assert start!71952)

(declare-fun b!835616 () Bool)

(declare-fun res!568603 () Bool)

(declare-fun e!466185 () Bool)

(assert (=> b!835616 (=> (not res!568603) (not e!466185))))

(declare-datatypes ((array!46806 0))(
  ( (array!46807 (arr!22433 (Array (_ BitVec 32) (_ BitVec 64))) (size!22854 (_ BitVec 32))) )
))
(declare-fun a!4227 () array!46806)

(declare-fun i!1466 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!835616 (= res!568603 (not (validKeyInArray!0 (select (arr!22433 a!4227) i!1466))))))

(declare-fun b!835618 () Bool)

(declare-datatypes ((Unit!28744 0))(
  ( (Unit!28745) )
))
(declare-fun e!466186 () Unit!28744)

(declare-fun lt!379970 () Unit!28744)

(assert (=> b!835618 (= e!466186 lt!379970)))

(declare-fun lt!379967 () Unit!28744)

(declare-fun to!390 () (_ BitVec 32))

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!46806 (_ BitVec 32) (_ BitVec 32)) Unit!28744)

(assert (=> b!835618 (= lt!379967 (lemmaValidKeyIncreasesNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun call!36733 () (_ BitVec 32))

(declare-fun lt!379966 () (_ BitVec 32))

(assert (=> b!835618 (= call!36733 (bvadd #b00000000000000000000000000000001 lt!379966))))

(declare-fun lt!379968 () array!46806)

(assert (=> b!835618 (= lt!379970 (lemmaValidKeyIncreasesNumOfKeys!0 lt!379968 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun call!36734 () (_ BitVec 32))

(declare-fun lt!379964 () (_ BitVec 32))

(assert (=> b!835618 (= call!36734 (bvadd #b00000000000000000000000000000001 lt!379964))))

(declare-fun bm!36730 () Bool)

(declare-fun arrayCountValidKeys!0 (array!46806 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> bm!36730 (= call!36733 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun bm!36731 () Bool)

(assert (=> bm!36731 (= call!36734 (arrayCountValidKeys!0 lt!379968 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun b!835619 () Bool)

(declare-fun e!466184 () Bool)

(assert (=> b!835619 (= e!466184 (or (bvslt (bvadd #b00000000000000000000000000000001 to!390) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 to!390) (size!22854 a!4227)) (bvsle (bvadd #b00000000000000000000000000000001 to!390) i!1466)))))

(declare-fun lt!379965 () Unit!28744)

(assert (=> b!835619 (= lt!379965 e!466186)))

(declare-fun c!90904 () Bool)

(assert (=> b!835619 (= c!90904 (validKeyInArray!0 (select (arr!22433 a!4227) to!390)))))

(declare-fun b!835620 () Bool)

(declare-fun res!568602 () Bool)

(assert (=> b!835620 (=> (not res!568602) (not e!466185))))

(declare-fun k0!2968 () (_ BitVec 64))

(assert (=> b!835620 (= res!568602 (validKeyInArray!0 k0!2968))))

(declare-fun b!835621 () Bool)

(declare-fun lt!379971 () Unit!28744)

(assert (=> b!835621 (= e!466186 lt!379971)))

(declare-fun lt!379969 () Unit!28744)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!46806 (_ BitVec 32) (_ BitVec 32)) Unit!28744)

(assert (=> b!835621 (= lt!379969 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!835621 (= call!36733 lt!379966)))

(assert (=> b!835621 (= lt!379971 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 lt!379968 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!835621 (= call!36734 lt!379964)))

(declare-fun b!835622 () Bool)

(assert (=> b!835622 (= e!466185 e!466184)))

(declare-fun res!568601 () Bool)

(assert (=> b!835622 (=> (not res!568601) (not e!466184))))

(assert (=> b!835622 (= res!568601 (and (= lt!379964 lt!379966) (not (= to!390 (size!22854 a!4227)))))))

(assert (=> b!835622 (= lt!379966 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!835622 (= lt!379964 (arrayCountValidKeys!0 lt!379968 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!835622 (= lt!379968 (array!46807 (store (arr!22433 a!4227) i!1466 k0!2968) (size!22854 a!4227)))))

(declare-fun b!835617 () Bool)

(declare-fun res!568600 () Bool)

(assert (=> b!835617 (=> (not res!568600) (not e!466185))))

(assert (=> b!835617 (= res!568600 (and (bvslt (size!22854 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22854 a!4227)) (bvsgt to!390 i!1466)))))

(declare-fun res!568599 () Bool)

(assert (=> start!71952 (=> (not res!568599) (not e!466185))))

(assert (=> start!71952 (= res!568599 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22854 a!4227))))))

(assert (=> start!71952 e!466185))

(assert (=> start!71952 true))

(declare-fun array_inv!17856 (array!46806) Bool)

(assert (=> start!71952 (array_inv!17856 a!4227)))

(assert (= (and start!71952 res!568599) b!835616))

(assert (= (and b!835616 res!568603) b!835620))

(assert (= (and b!835620 res!568602) b!835617))

(assert (= (and b!835617 res!568600) b!835622))

(assert (= (and b!835622 res!568601) b!835619))

(assert (= (and b!835619 c!90904) b!835618))

(assert (= (and b!835619 (not c!90904)) b!835621))

(assert (= (or b!835618 b!835621) bm!36731))

(assert (= (or b!835618 b!835621) bm!36730))

(declare-fun m!781009 () Bool)

(assert (=> b!835620 m!781009))

(declare-fun m!781011 () Bool)

(assert (=> b!835616 m!781011))

(assert (=> b!835616 m!781011))

(declare-fun m!781013 () Bool)

(assert (=> b!835616 m!781013))

(declare-fun m!781015 () Bool)

(assert (=> b!835621 m!781015))

(declare-fun m!781017 () Bool)

(assert (=> b!835621 m!781017))

(declare-fun m!781019 () Bool)

(assert (=> bm!36731 m!781019))

(declare-fun m!781021 () Bool)

(assert (=> b!835622 m!781021))

(declare-fun m!781023 () Bool)

(assert (=> b!835622 m!781023))

(declare-fun m!781025 () Bool)

(assert (=> b!835622 m!781025))

(declare-fun m!781027 () Bool)

(assert (=> b!835618 m!781027))

(declare-fun m!781029 () Bool)

(assert (=> b!835618 m!781029))

(declare-fun m!781031 () Bool)

(assert (=> b!835619 m!781031))

(assert (=> b!835619 m!781031))

(declare-fun m!781033 () Bool)

(assert (=> b!835619 m!781033))

(declare-fun m!781035 () Bool)

(assert (=> start!71952 m!781035))

(declare-fun m!781037 () Bool)

(assert (=> bm!36730 m!781037))

(check-sat (not start!71952) (not bm!36730) (not b!835616) (not bm!36731) (not b!835619) (not b!835618) (not b!835622) (not b!835621) (not b!835620))
(check-sat)
