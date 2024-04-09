; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71976 () Bool)

(assert start!71976)

(declare-datatypes ((array!46830 0))(
  ( (array!46831 (arr!22445 (Array (_ BitVec 32) (_ BitVec 64))) (size!22866 (_ BitVec 32))) )
))
(declare-fun a!4227 () array!46830)

(declare-fun call!36805 () (_ BitVec 32))

(declare-fun i!1466 () (_ BitVec 32))

(declare-fun to!390 () (_ BitVec 32))

(declare-fun bm!36802 () Bool)

(declare-fun arrayCountValidKeys!0 (array!46830 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> bm!36802 (= call!36805 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun call!36806 () (_ BitVec 32))

(declare-fun lt!380271 () array!46830)

(declare-fun bm!36803 () Bool)

(assert (=> bm!36803 (= call!36806 (arrayCountValidKeys!0 lt!380271 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun b!835923 () Bool)

(declare-fun e!466361 () Bool)

(declare-fun e!466360 () Bool)

(assert (=> b!835923 (= e!466361 e!466360)))

(declare-fun res!568839 () Bool)

(assert (=> b!835923 (=> (not res!568839) (not e!466360))))

(declare-fun lt!380272 () (_ BitVec 32))

(declare-fun lt!380266 () (_ BitVec 32))

(assert (=> b!835923 (= res!568839 (and (= lt!380272 lt!380266) (not (= to!390 (size!22866 a!4227)))))))

(assert (=> b!835923 (= lt!380266 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!835923 (= lt!380272 (arrayCountValidKeys!0 lt!380271 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun k0!2968 () (_ BitVec 64))

(assert (=> b!835923 (= lt!380271 (array!46831 (store (arr!22445 a!4227) i!1466 k0!2968) (size!22866 a!4227)))))

(declare-fun b!835924 () Bool)

(declare-fun res!568834 () Bool)

(assert (=> b!835924 (=> (not res!568834) (not e!466361))))

(assert (=> b!835924 (= res!568834 (and (bvslt (size!22866 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22866 a!4227)) (bvsgt to!390 i!1466)))))

(declare-fun b!835925 () Bool)

(declare-datatypes ((Unit!28768 0))(
  ( (Unit!28769) )
))
(declare-fun e!466364 () Unit!28768)

(declare-fun lt!380274 () Unit!28768)

(assert (=> b!835925 (= e!466364 lt!380274)))

(declare-fun lt!380273 () Unit!28768)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!46830 (_ BitVec 32) (_ BitVec 32)) Unit!28768)

(assert (=> b!835925 (= lt!380273 (lemmaValidKeyIncreasesNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!835925 (= call!36805 (bvadd #b00000000000000000000000000000001 lt!380266))))

(assert (=> b!835925 (= lt!380274 (lemmaValidKeyIncreasesNumOfKeys!0 lt!380271 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!835925 (= call!36806 (bvadd #b00000000000000000000000000000001 lt!380272))))

(declare-fun b!835926 () Bool)

(declare-fun res!568835 () Bool)

(declare-fun e!466362 () Bool)

(assert (=> b!835926 (=> (not res!568835) (not e!466362))))

(assert (=> b!835926 (= res!568835 (= (arrayCountValidKeys!0 lt!380271 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)) (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390))))))

(declare-fun res!568840 () Bool)

(assert (=> start!71976 (=> (not res!568840) (not e!466361))))

(assert (=> start!71976 (= res!568840 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22866 a!4227))))))

(assert (=> start!71976 e!466361))

(assert (=> start!71976 true))

(declare-fun array_inv!17868 (array!46830) Bool)

(assert (=> start!71976 (array_inv!17868 a!4227)))

(declare-fun b!835927 () Bool)

(declare-fun res!568836 () Bool)

(assert (=> b!835927 (=> (not res!568836) (not e!466361))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!835927 (= res!568836 (not (validKeyInArray!0 (select (arr!22445 a!4227) i!1466))))))

(declare-fun b!835928 () Bool)

(assert (=> b!835928 (= e!466362 (not true))))

(assert (=> b!835928 (= (arrayCountValidKeys!0 lt!380271 (bvadd #b00000000000000000000000000000001 i!1466) (size!22866 a!4227)) (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (size!22866 a!4227)))))

(declare-fun lt!380267 () Unit!28768)

(declare-fun lemmaAddValidKeyAndNumKeysToImpliesToALength!0 (array!46830 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!28768)

(assert (=> b!835928 (= lt!380267 (lemmaAddValidKeyAndNumKeysToImpliesToALength!0 a!4227 i!1466 k0!2968 (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun b!835929 () Bool)

(declare-fun res!568838 () Bool)

(assert (=> b!835929 (=> (not res!568838) (not e!466361))))

(assert (=> b!835929 (= res!568838 (validKeyInArray!0 k0!2968))))

(declare-fun b!835930 () Bool)

(assert (=> b!835930 (= e!466360 e!466362)))

(declare-fun res!568837 () Bool)

(assert (=> b!835930 (=> (not res!568837) (not e!466362))))

(assert (=> b!835930 (= res!568837 (and (bvsge (bvadd #b00000000000000000000000000000001 to!390) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 to!390) (size!22866 a!4227)) (bvsgt (bvadd #b00000000000000000000000000000001 to!390) i!1466)))))

(declare-fun lt!380270 () Unit!28768)

(assert (=> b!835930 (= lt!380270 e!466364)))

(declare-fun c!90940 () Bool)

(assert (=> b!835930 (= c!90940 (validKeyInArray!0 (select (arr!22445 a!4227) to!390)))))

(declare-fun b!835931 () Bool)

(declare-fun lt!380268 () Unit!28768)

(assert (=> b!835931 (= e!466364 lt!380268)))

(declare-fun lt!380269 () Unit!28768)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!46830 (_ BitVec 32) (_ BitVec 32)) Unit!28768)

(assert (=> b!835931 (= lt!380269 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!835931 (= call!36805 lt!380266)))

(assert (=> b!835931 (= lt!380268 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 lt!380271 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!835931 (= call!36806 lt!380272)))

(assert (= (and start!71976 res!568840) b!835927))

(assert (= (and b!835927 res!568836) b!835929))

(assert (= (and b!835929 res!568838) b!835924))

(assert (= (and b!835924 res!568834) b!835923))

(assert (= (and b!835923 res!568839) b!835930))

(assert (= (and b!835930 c!90940) b!835925))

(assert (= (and b!835930 (not c!90940)) b!835931))

(assert (= (or b!835925 b!835931) bm!36803))

(assert (= (or b!835925 b!835931) bm!36802))

(assert (= (and b!835930 res!568837) b!835926))

(assert (= (and b!835926 res!568835) b!835928))

(declare-fun m!781401 () Bool)

(assert (=> b!835928 m!781401))

(declare-fun m!781403 () Bool)

(assert (=> b!835928 m!781403))

(declare-fun m!781405 () Bool)

(assert (=> b!835928 m!781405))

(declare-fun m!781407 () Bool)

(assert (=> b!835930 m!781407))

(assert (=> b!835930 m!781407))

(declare-fun m!781409 () Bool)

(assert (=> b!835930 m!781409))

(declare-fun m!781411 () Bool)

(assert (=> b!835923 m!781411))

(declare-fun m!781413 () Bool)

(assert (=> b!835923 m!781413))

(declare-fun m!781415 () Bool)

(assert (=> b!835923 m!781415))

(declare-fun m!781417 () Bool)

(assert (=> b!835931 m!781417))

(declare-fun m!781419 () Bool)

(assert (=> b!835931 m!781419))

(declare-fun m!781421 () Bool)

(assert (=> start!71976 m!781421))

(declare-fun m!781423 () Bool)

(assert (=> b!835926 m!781423))

(declare-fun m!781425 () Bool)

(assert (=> b!835926 m!781425))

(declare-fun m!781427 () Bool)

(assert (=> b!835929 m!781427))

(declare-fun m!781429 () Bool)

(assert (=> b!835927 m!781429))

(assert (=> b!835927 m!781429))

(declare-fun m!781431 () Bool)

(assert (=> b!835927 m!781431))

(declare-fun m!781433 () Bool)

(assert (=> b!835925 m!781433))

(declare-fun m!781435 () Bool)

(assert (=> b!835925 m!781435))

(assert (=> bm!36803 m!781423))

(assert (=> bm!36802 m!781425))

(check-sat (not b!835925) (not b!835931) (not b!835923) (not b!835926) (not bm!36802) (not b!835929) (not bm!36803) (not start!71976) (not b!835930) (not b!835928) (not b!835927))
(check-sat)
