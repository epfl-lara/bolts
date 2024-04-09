; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71940 () Bool)

(assert start!71940)

(declare-fun b!835490 () Bool)

(declare-fun res!568509 () Bool)

(declare-fun e!466112 () Bool)

(assert (=> b!835490 (=> (not res!568509) (not e!466112))))

(declare-datatypes ((array!46794 0))(
  ( (array!46795 (arr!22427 (Array (_ BitVec 32) (_ BitVec 64))) (size!22848 (_ BitVec 32))) )
))
(declare-fun a!4227 () array!46794)

(declare-fun i!1466 () (_ BitVec 32))

(declare-fun to!390 () (_ BitVec 32))

(assert (=> b!835490 (= res!568509 (and (bvslt (size!22848 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22848 a!4227)) (bvsgt to!390 i!1466)))))

(declare-fun b!835491 () Bool)

(declare-datatypes ((Unit!28732 0))(
  ( (Unit!28733) )
))
(declare-fun e!466113 () Unit!28732)

(declare-fun lt!379820 () Unit!28732)

(assert (=> b!835491 (= e!466113 lt!379820)))

(declare-fun lt!379827 () Unit!28732)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!46794 (_ BitVec 32) (_ BitVec 32)) Unit!28732)

(assert (=> b!835491 (= lt!379827 (lemmaValidKeyIncreasesNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun call!36698 () (_ BitVec 32))

(declare-fun lt!379826 () (_ BitVec 32))

(assert (=> b!835491 (= call!36698 (bvadd #b00000000000000000000000000000001 lt!379826))))

(declare-fun lt!379824 () array!46794)

(assert (=> b!835491 (= lt!379820 (lemmaValidKeyIncreasesNumOfKeys!0 lt!379824 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun call!36697 () (_ BitVec 32))

(declare-fun lt!379821 () (_ BitVec 32))

(assert (=> b!835491 (= call!36697 (bvadd #b00000000000000000000000000000001 lt!379821))))

(declare-fun res!568511 () Bool)

(assert (=> start!71940 (=> (not res!568511) (not e!466112))))

(assert (=> start!71940 (= res!568511 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22848 a!4227))))))

(assert (=> start!71940 e!466112))

(assert (=> start!71940 true))

(declare-fun array_inv!17850 (array!46794) Bool)

(assert (=> start!71940 (array_inv!17850 a!4227)))

(declare-fun b!835492 () Bool)

(declare-fun e!466115 () Bool)

(assert (=> b!835492 (= e!466112 e!466115)))

(declare-fun res!568513 () Bool)

(assert (=> b!835492 (=> (not res!568513) (not e!466115))))

(assert (=> b!835492 (= res!568513 (and (= lt!379821 lt!379826) (not (= to!390 (size!22848 a!4227)))))))

(declare-fun arrayCountValidKeys!0 (array!46794 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!835492 (= lt!379826 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!835492 (= lt!379821 (arrayCountValidKeys!0 lt!379824 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun k0!2968 () (_ BitVec 64))

(assert (=> b!835492 (= lt!379824 (array!46795 (store (arr!22427 a!4227) i!1466 k0!2968) (size!22848 a!4227)))))

(declare-fun bm!36694 () Bool)

(declare-fun c!90886 () Bool)

(assert (=> bm!36694 (= call!36698 (arrayCountValidKeys!0 (ite c!90886 a!4227 lt!379824) (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun b!835493 () Bool)

(declare-fun lt!379822 () Unit!28732)

(assert (=> b!835493 (= e!466113 lt!379822)))

(declare-fun lt!379823 () Unit!28732)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!46794 (_ BitVec 32) (_ BitVec 32)) Unit!28732)

(assert (=> b!835493 (= lt!379823 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!835493 (= call!36697 lt!379826)))

(assert (=> b!835493 (= lt!379822 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 lt!379824 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!835493 (= call!36698 lt!379821)))

(declare-fun b!835494 () Bool)

(declare-fun res!568510 () Bool)

(assert (=> b!835494 (=> (not res!568510) (not e!466112))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!835494 (= res!568510 (not (validKeyInArray!0 (select (arr!22427 a!4227) i!1466))))))

(declare-fun bm!36695 () Bool)

(assert (=> bm!36695 (= call!36697 (arrayCountValidKeys!0 (ite c!90886 lt!379824 a!4227) (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun b!835495 () Bool)

(declare-fun res!568512 () Bool)

(assert (=> b!835495 (=> (not res!568512) (not e!466112))))

(assert (=> b!835495 (= res!568512 (validKeyInArray!0 k0!2968))))

(declare-fun b!835496 () Bool)

(assert (=> b!835496 (= e!466115 false)))

(declare-fun lt!379825 () Unit!28732)

(assert (=> b!835496 (= lt!379825 e!466113)))

(assert (=> b!835496 (= c!90886 (validKeyInArray!0 (select (arr!22427 a!4227) to!390)))))

(assert (= (and start!71940 res!568511) b!835494))

(assert (= (and b!835494 res!568510) b!835495))

(assert (= (and b!835495 res!568512) b!835490))

(assert (= (and b!835490 res!568509) b!835492))

(assert (= (and b!835492 res!568513) b!835496))

(assert (= (and b!835496 c!90886) b!835491))

(assert (= (and b!835496 (not c!90886)) b!835493))

(assert (= (or b!835491 b!835493) bm!36694))

(assert (= (or b!835491 b!835493) bm!36695))

(declare-fun m!780829 () Bool)

(assert (=> bm!36695 m!780829))

(declare-fun m!780831 () Bool)

(assert (=> start!71940 m!780831))

(declare-fun m!780833 () Bool)

(assert (=> b!835492 m!780833))

(declare-fun m!780835 () Bool)

(assert (=> b!835492 m!780835))

(declare-fun m!780837 () Bool)

(assert (=> b!835492 m!780837))

(declare-fun m!780839 () Bool)

(assert (=> b!835496 m!780839))

(assert (=> b!835496 m!780839))

(declare-fun m!780841 () Bool)

(assert (=> b!835496 m!780841))

(declare-fun m!780843 () Bool)

(assert (=> b!835491 m!780843))

(declare-fun m!780845 () Bool)

(assert (=> b!835491 m!780845))

(declare-fun m!780847 () Bool)

(assert (=> b!835494 m!780847))

(assert (=> b!835494 m!780847))

(declare-fun m!780849 () Bool)

(assert (=> b!835494 m!780849))

(declare-fun m!780851 () Bool)

(assert (=> b!835495 m!780851))

(declare-fun m!780853 () Bool)

(assert (=> bm!36694 m!780853))

(declare-fun m!780855 () Bool)

(assert (=> b!835493 m!780855))

(declare-fun m!780857 () Bool)

(assert (=> b!835493 m!780857))

(check-sat (not bm!36695) (not b!835495) (not b!835496) (not bm!36694) (not start!71940) (not b!835494) (not b!835493) (not b!835492) (not b!835491))
(check-sat)
