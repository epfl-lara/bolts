; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!116926 () Bool)

(assert start!116926)

(declare-fun b!1377248 () Bool)

(declare-fun res!920111 () Bool)

(declare-fun e!780182 () Bool)

(assert (=> b!1377248 (=> (not res!920111) (not e!780182))))

(declare-fun to!206 () (_ BitVec 32))

(declare-fun i!1445 () (_ BitVec 32))

(declare-datatypes ((array!93513 0))(
  ( (array!93514 (arr!45155 (Array (_ BitVec 32) (_ BitVec 64))) (size!45706 (_ BitVec 32))) )
))
(declare-fun a!4032 () array!93513)

(assert (=> b!1377248 (= res!920111 (and (bvslt (size!45706 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45706 a!4032)) (bvsgt to!206 i!1445)))))

(declare-fun res!920115 () Bool)

(assert (=> start!116926 (=> (not res!920115) (not e!780182))))

(assert (=> start!116926 (= res!920115 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45706 a!4032))))))

(assert (=> start!116926 e!780182))

(assert (=> start!116926 true))

(declare-fun array_inv!34100 (array!93513) Bool)

(assert (=> start!116926 (array_inv!34100 a!4032)))

(declare-fun b!1377249 () Bool)

(declare-datatypes ((Unit!45625 0))(
  ( (Unit!45626) )
))
(declare-fun e!780181 () Unit!45625)

(declare-fun lt!605884 () Unit!45625)

(assert (=> b!1377249 (= e!780181 lt!605884)))

(declare-fun lt!605881 () Unit!45625)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!93513 (_ BitVec 32) (_ BitVec 32)) Unit!45625)

(assert (=> b!1377249 (= lt!605881 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun call!65988 () (_ BitVec 32))

(declare-fun lt!605887 () (_ BitVec 32))

(assert (=> b!1377249 (= call!65988 lt!605887)))

(declare-fun lt!605885 () array!93513)

(assert (=> b!1377249 (= lt!605884 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 lt!605885 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun call!65987 () (_ BitVec 32))

(declare-fun lt!605883 () (_ BitVec 32))

(assert (=> b!1377249 (= call!65987 lt!605883)))

(declare-fun bm!65984 () Bool)

(declare-fun arrayCountValidKeys!0 (array!93513 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> bm!65984 (= call!65988 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun b!1377250 () Bool)

(declare-fun res!920114 () Bool)

(assert (=> b!1377250 (=> (not res!920114) (not e!780182))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1377250 (= res!920114 (validKeyInArray!0 (select (arr!45155 a!4032) i!1445)))))

(declare-fun b!1377251 () Bool)

(declare-fun e!780178 () Bool)

(assert (=> b!1377251 (= e!780178 (not true))))

(assert (=> b!1377251 (= (arrayCountValidKeys!0 lt!605885 (bvadd #b00000000000000000000000000000001 i!1445) (size!45706 a!4032)) (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (size!45706 a!4032)))))

(declare-fun k0!2947 () (_ BitVec 64))

(declare-fun lt!605880 () Unit!45625)

(declare-fun lemmaRemoveValidKeyAndNumKeysToImpliesToALength!0 (array!93513 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45625)

(assert (=> b!1377251 (= lt!605880 (lemmaRemoveValidKeyAndNumKeysToImpliesToALength!0 a!4032 i!1445 k0!2947 (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun b!1377252 () Bool)

(declare-fun e!780180 () Bool)

(assert (=> b!1377252 (= e!780182 e!780180)))

(declare-fun res!920112 () Bool)

(assert (=> b!1377252 (=> (not res!920112) (not e!780180))))

(assert (=> b!1377252 (= res!920112 (and (= lt!605883 lt!605887) (not (= to!206 (size!45706 a!4032)))))))

(assert (=> b!1377252 (= lt!605887 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1377252 (= lt!605883 (arrayCountValidKeys!0 lt!605885 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1377252 (= lt!605885 (array!93514 (store (arr!45155 a!4032) i!1445 k0!2947) (size!45706 a!4032)))))

(declare-fun b!1377253 () Bool)

(declare-fun lt!605886 () Unit!45625)

(assert (=> b!1377253 (= e!780181 lt!605886)))

(declare-fun lt!605882 () Unit!45625)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!93513 (_ BitVec 32) (_ BitVec 32)) Unit!45625)

(assert (=> b!1377253 (= lt!605882 (lemmaValidKeyIncreasesNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1377253 (= call!65988 (bvadd #b00000000000000000000000000000001 lt!605887))))

(assert (=> b!1377253 (= lt!605886 (lemmaValidKeyIncreasesNumOfKeys!0 lt!605885 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1377253 (= call!65987 (bvadd #b00000000000000000000000000000001 lt!605883))))

(declare-fun bm!65985 () Bool)

(assert (=> bm!65985 (= call!65987 (arrayCountValidKeys!0 lt!605885 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun b!1377254 () Bool)

(declare-fun res!920113 () Bool)

(assert (=> b!1377254 (=> (not res!920113) (not e!780182))))

(assert (=> b!1377254 (= res!920113 (not (validKeyInArray!0 k0!2947)))))

(declare-fun b!1377255 () Bool)

(assert (=> b!1377255 (= e!780180 e!780178)))

(declare-fun res!920109 () Bool)

(assert (=> b!1377255 (=> (not res!920109) (not e!780178))))

(assert (=> b!1377255 (= res!920109 (and (bvsge (bvadd #b00000000000000000000000000000001 to!206) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 to!206) (size!45706 a!4032)) (bvsgt (bvadd #b00000000000000000000000000000001 to!206) i!1445)))))

(declare-fun lt!605879 () Unit!45625)

(assert (=> b!1377255 (= lt!605879 e!780181)))

(declare-fun c!128012 () Bool)

(assert (=> b!1377255 (= c!128012 (validKeyInArray!0 (select (arr!45155 a!4032) to!206)))))

(declare-fun b!1377256 () Bool)

(declare-fun res!920110 () Bool)

(assert (=> b!1377256 (=> (not res!920110) (not e!780178))))

(assert (=> b!1377256 (= res!920110 (= (arrayCountValidKeys!0 lt!605885 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)) (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206))))))

(assert (= (and start!116926 res!920115) b!1377250))

(assert (= (and b!1377250 res!920114) b!1377254))

(assert (= (and b!1377254 res!920113) b!1377248))

(assert (= (and b!1377248 res!920111) b!1377252))

(assert (= (and b!1377252 res!920112) b!1377255))

(assert (= (and b!1377255 c!128012) b!1377253))

(assert (= (and b!1377255 (not c!128012)) b!1377249))

(assert (= (or b!1377253 b!1377249) bm!65984))

(assert (= (or b!1377253 b!1377249) bm!65985))

(assert (= (and b!1377255 res!920109) b!1377256))

(assert (= (and b!1377256 res!920110) b!1377251))

(declare-fun m!1261569 () Bool)

(assert (=> b!1377254 m!1261569))

(declare-fun m!1261571 () Bool)

(assert (=> b!1377253 m!1261571))

(declare-fun m!1261573 () Bool)

(assert (=> b!1377253 m!1261573))

(declare-fun m!1261575 () Bool)

(assert (=> bm!65984 m!1261575))

(declare-fun m!1261577 () Bool)

(assert (=> b!1377250 m!1261577))

(assert (=> b!1377250 m!1261577))

(declare-fun m!1261579 () Bool)

(assert (=> b!1377250 m!1261579))

(declare-fun m!1261581 () Bool)

(assert (=> b!1377256 m!1261581))

(assert (=> b!1377256 m!1261575))

(declare-fun m!1261583 () Bool)

(assert (=> b!1377255 m!1261583))

(assert (=> b!1377255 m!1261583))

(declare-fun m!1261585 () Bool)

(assert (=> b!1377255 m!1261585))

(declare-fun m!1261587 () Bool)

(assert (=> start!116926 m!1261587))

(declare-fun m!1261589 () Bool)

(assert (=> b!1377252 m!1261589))

(declare-fun m!1261591 () Bool)

(assert (=> b!1377252 m!1261591))

(declare-fun m!1261593 () Bool)

(assert (=> b!1377252 m!1261593))

(assert (=> bm!65985 m!1261581))

(declare-fun m!1261595 () Bool)

(assert (=> b!1377249 m!1261595))

(declare-fun m!1261597 () Bool)

(assert (=> b!1377249 m!1261597))

(declare-fun m!1261599 () Bool)

(assert (=> b!1377251 m!1261599))

(declare-fun m!1261601 () Bool)

(assert (=> b!1377251 m!1261601))

(declare-fun m!1261603 () Bool)

(assert (=> b!1377251 m!1261603))

(check-sat (not b!1377251) (not b!1377254) (not b!1377253) (not b!1377249) (not b!1377256) (not b!1377252) (not start!116926) (not bm!65984) (not b!1377255) (not b!1377250) (not bm!65985))
(check-sat)
