; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116910 () Bool)

(assert start!116910)

(declare-fun b!1377043 () Bool)

(declare-fun res!919952 () Bool)

(declare-fun e!780060 () Bool)

(assert (=> b!1377043 (=> (not res!919952) (not e!780060))))

(declare-fun k!2947 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1377043 (= res!919952 (not (validKeyInArray!0 k!2947)))))

(declare-fun b!1377044 () Bool)

(declare-datatypes ((Unit!45609 0))(
  ( (Unit!45610) )
))
(declare-fun e!780059 () Unit!45609)

(declare-fun lt!605684 () Unit!45609)

(assert (=> b!1377044 (= e!780059 lt!605684)))

(declare-fun i!1445 () (_ BitVec 32))

(declare-datatypes ((array!93497 0))(
  ( (array!93498 (arr!45147 (Array (_ BitVec 32) (_ BitVec 64))) (size!45698 (_ BitVec 32))) )
))
(declare-fun a!4032 () array!93497)

(declare-fun lt!605683 () Unit!45609)

(declare-fun to!206 () (_ BitVec 32))

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!93497 (_ BitVec 32) (_ BitVec 32)) Unit!45609)

(assert (=> b!1377044 (= lt!605683 (lemmaValidKeyIncreasesNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun call!65940 () (_ BitVec 32))

(declare-fun lt!605688 () (_ BitVec 32))

(assert (=> b!1377044 (= call!65940 (bvadd #b00000000000000000000000000000001 lt!605688))))

(declare-fun lt!605686 () array!93497)

(assert (=> b!1377044 (= lt!605684 (lemmaValidKeyIncreasesNumOfKeys!0 lt!605686 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun call!65939 () (_ BitVec 32))

(declare-fun lt!605685 () (_ BitVec 32))

(assert (=> b!1377044 (= call!65939 (bvadd #b00000000000000000000000000000001 lt!605685))))

(declare-fun bm!65936 () Bool)

(declare-fun arrayCountValidKeys!0 (array!93497 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> bm!65936 (= call!65939 (arrayCountValidKeys!0 lt!605686 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun b!1377045 () Bool)

(declare-fun e!780061 () Bool)

(assert (=> b!1377045 (= e!780060 e!780061)))

(declare-fun res!919956 () Bool)

(assert (=> b!1377045 (=> (not res!919956) (not e!780061))))

(assert (=> b!1377045 (= res!919956 (and (= lt!605685 lt!605688) (not (= to!206 (size!45698 a!4032)))))))

(assert (=> b!1377045 (= lt!605688 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1377045 (= lt!605685 (arrayCountValidKeys!0 lt!605686 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1377045 (= lt!605686 (array!93498 (store (arr!45147 a!4032) i!1445 k!2947) (size!45698 a!4032)))))

(declare-fun b!1377046 () Bool)

(declare-fun res!919953 () Bool)

(assert (=> b!1377046 (=> (not res!919953) (not e!780060))))

(assert (=> b!1377046 (= res!919953 (validKeyInArray!0 (select (arr!45147 a!4032) i!1445)))))

(declare-fun bm!65937 () Bool)

(assert (=> bm!65937 (= call!65940 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun b!1377047 () Bool)

(declare-fun res!919955 () Bool)

(assert (=> b!1377047 (=> (not res!919955) (not e!780060))))

(assert (=> b!1377047 (= res!919955 (and (bvslt (size!45698 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45698 a!4032)) (bvsgt to!206 i!1445)))))

(declare-fun res!919954 () Bool)

(assert (=> start!116910 (=> (not res!919954) (not e!780060))))

(assert (=> start!116910 (= res!919954 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45698 a!4032))))))

(assert (=> start!116910 e!780060))

(assert (=> start!116910 true))

(declare-fun array_inv!34092 (array!93497) Bool)

(assert (=> start!116910 (array_inv!34092 a!4032)))

(declare-fun b!1377048 () Bool)

(assert (=> b!1377048 (= e!780061 (or (bvslt (bvadd #b00000000000000000000000000000001 to!206) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 to!206) (size!45698 a!4032)) (bvsle (bvadd #b00000000000000000000000000000001 to!206) i!1445)))))

(declare-fun lt!605689 () Unit!45609)

(assert (=> b!1377048 (= lt!605689 e!780059)))

(declare-fun c!127988 () Bool)

(assert (=> b!1377048 (= c!127988 (validKeyInArray!0 (select (arr!45147 a!4032) to!206)))))

(declare-fun b!1377049 () Bool)

(declare-fun lt!605682 () Unit!45609)

(assert (=> b!1377049 (= e!780059 lt!605682)))

(declare-fun lt!605687 () Unit!45609)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!93497 (_ BitVec 32) (_ BitVec 32)) Unit!45609)

(assert (=> b!1377049 (= lt!605687 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1377049 (= call!65940 lt!605688)))

(assert (=> b!1377049 (= lt!605682 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 lt!605686 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1377049 (= call!65939 lt!605685)))

(assert (= (and start!116910 res!919954) b!1377046))

(assert (= (and b!1377046 res!919953) b!1377043))

(assert (= (and b!1377043 res!919952) b!1377047))

(assert (= (and b!1377047 res!919955) b!1377045))

(assert (= (and b!1377045 res!919956) b!1377048))

(assert (= (and b!1377048 c!127988) b!1377044))

(assert (= (and b!1377048 (not c!127988)) b!1377049))

(assert (= (or b!1377044 b!1377049) bm!65937))

(assert (= (or b!1377044 b!1377049) bm!65936))

(declare-fun m!1261319 () Bool)

(assert (=> b!1377043 m!1261319))

(declare-fun m!1261321 () Bool)

(assert (=> b!1377045 m!1261321))

(declare-fun m!1261323 () Bool)

(assert (=> b!1377045 m!1261323))

(declare-fun m!1261325 () Bool)

(assert (=> b!1377045 m!1261325))

(declare-fun m!1261327 () Bool)

(assert (=> start!116910 m!1261327))

(declare-fun m!1261329 () Bool)

(assert (=> b!1377044 m!1261329))

(declare-fun m!1261331 () Bool)

(assert (=> b!1377044 m!1261331))

(declare-fun m!1261333 () Bool)

(assert (=> bm!65936 m!1261333))

(declare-fun m!1261335 () Bool)

(assert (=> b!1377048 m!1261335))

(assert (=> b!1377048 m!1261335))

(declare-fun m!1261337 () Bool)

(assert (=> b!1377048 m!1261337))

(declare-fun m!1261339 () Bool)

(assert (=> b!1377049 m!1261339))

(declare-fun m!1261341 () Bool)

(assert (=> b!1377049 m!1261341))

(declare-fun m!1261343 () Bool)

(assert (=> bm!65937 m!1261343))

(declare-fun m!1261345 () Bool)

(assert (=> b!1377046 m!1261345))

(assert (=> b!1377046 m!1261345))

(declare-fun m!1261347 () Bool)

(assert (=> b!1377046 m!1261347))

(push 1)

(assert (not b!1377046))

(assert (not bm!65937))

(assert (not b!1377049))

(assert (not start!116910))

(assert (not b!1377044))

(assert (not b!1377045))

(assert (not b!1377043))

(assert (not bm!65936))

(assert (not b!1377048))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

