; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116922 () Bool)

(assert start!116922)

(declare-fun to!206 () (_ BitVec 32))

(declare-datatypes ((array!93509 0))(
  ( (array!93510 (arr!45153 (Array (_ BitVec 32) (_ BitVec 64))) (size!45704 (_ BitVec 32))) )
))
(declare-fun lt!605827 () array!93509)

(declare-fun call!65975 () (_ BitVec 32))

(declare-fun c!128006 () Bool)

(declare-fun i!1445 () (_ BitVec 32))

(declare-fun bm!65972 () Bool)

(declare-fun a!4032 () array!93509)

(declare-fun arrayCountValidKeys!0 (array!93509 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> bm!65972 (= call!65975 (arrayCountValidKeys!0 (ite c!128006 lt!605827 a!4032) (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun res!920068 () Bool)

(declare-fun e!780152 () Bool)

(assert (=> start!116922 (=> (not res!920068) (not e!780152))))

(assert (=> start!116922 (= res!920068 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45704 a!4032))))))

(assert (=> start!116922 e!780152))

(assert (=> start!116922 true))

(declare-fun array_inv!34098 (array!93509) Bool)

(assert (=> start!116922 (array_inv!34098 a!4032)))

(declare-fun b!1377194 () Bool)

(declare-datatypes ((Unit!45621 0))(
  ( (Unit!45622) )
))
(declare-fun e!780151 () Unit!45621)

(declare-fun lt!605831 () Unit!45621)

(assert (=> b!1377194 (= e!780151 lt!605831)))

(declare-fun lt!605833 () Unit!45621)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!93509 (_ BitVec 32) (_ BitVec 32)) Unit!45621)

(assert (=> b!1377194 (= lt!605833 (lemmaValidKeyIncreasesNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun call!65976 () (_ BitVec 32))

(declare-fun lt!605829 () (_ BitVec 32))

(assert (=> b!1377194 (= call!65976 (bvadd #b00000000000000000000000000000001 lt!605829))))

(assert (=> b!1377194 (= lt!605831 (lemmaValidKeyIncreasesNumOfKeys!0 lt!605827 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun lt!605828 () (_ BitVec 32))

(assert (=> b!1377194 (= call!65975 (bvadd #b00000000000000000000000000000001 lt!605828))))

(declare-fun b!1377195 () Bool)

(declare-fun lt!605826 () Unit!45621)

(assert (=> b!1377195 (= e!780151 lt!605826)))

(declare-fun lt!605832 () Unit!45621)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!93509 (_ BitVec 32) (_ BitVec 32)) Unit!45621)

(assert (=> b!1377195 (= lt!605832 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1377195 (= call!65975 lt!605829)))

(assert (=> b!1377195 (= lt!605826 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 lt!605827 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1377195 (= call!65976 lt!605828)))

(declare-fun b!1377196 () Bool)

(declare-fun e!780150 () Bool)

(declare-fun e!780149 () Bool)

(assert (=> b!1377196 (= e!780150 e!780149)))

(declare-fun res!920070 () Bool)

(assert (=> b!1377196 (=> (not res!920070) (not e!780149))))

(assert (=> b!1377196 (= res!920070 (and (bvsge (bvadd #b00000000000000000000000000000001 to!206) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 to!206) (size!45704 a!4032)) (bvsgt (bvadd #b00000000000000000000000000000001 to!206) i!1445)))))

(declare-fun lt!605830 () Unit!45621)

(assert (=> b!1377196 (= lt!605830 e!780151)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1377196 (= c!128006 (validKeyInArray!0 (select (arr!45153 a!4032) to!206)))))

(declare-fun b!1377197 () Bool)

(declare-fun res!920072 () Bool)

(assert (=> b!1377197 (=> (not res!920072) (not e!780152))))

(assert (=> b!1377197 (= res!920072 (and (bvslt (size!45704 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45704 a!4032)) (bvsgt to!206 i!1445)))))

(declare-fun b!1377198 () Bool)

(assert (=> b!1377198 (= e!780152 e!780150)))

(declare-fun res!920073 () Bool)

(assert (=> b!1377198 (=> (not res!920073) (not e!780150))))

(assert (=> b!1377198 (= res!920073 (and (= lt!605828 lt!605829) (not (= to!206 (size!45704 a!4032)))))))

(assert (=> b!1377198 (= lt!605829 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1377198 (= lt!605828 (arrayCountValidKeys!0 lt!605827 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun k!2947 () (_ BitVec 64))

(assert (=> b!1377198 (= lt!605827 (array!93510 (store (arr!45153 a!4032) i!1445 k!2947) (size!45704 a!4032)))))

(declare-fun b!1377199 () Bool)

(declare-fun res!920071 () Bool)

(assert (=> b!1377199 (=> (not res!920071) (not e!780149))))

(assert (=> b!1377199 (= res!920071 (= (arrayCountValidKeys!0 lt!605827 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)) (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206))))))

(declare-fun b!1377200 () Bool)

(assert (=> b!1377200 (= e!780149 (bvsge (bvsub (size!45704 a!4032) to!206) (bvsub (bvadd #b00000000000000000000000000000001 (size!45704 a!4032)) to!206)))))

(declare-fun b!1377201 () Bool)

(declare-fun res!920067 () Bool)

(assert (=> b!1377201 (=> (not res!920067) (not e!780152))))

(assert (=> b!1377201 (= res!920067 (validKeyInArray!0 (select (arr!45153 a!4032) i!1445)))))

(declare-fun b!1377202 () Bool)

(declare-fun res!920069 () Bool)

(assert (=> b!1377202 (=> (not res!920069) (not e!780152))))

(assert (=> b!1377202 (= res!920069 (not (validKeyInArray!0 k!2947)))))

(declare-fun bm!65973 () Bool)

(assert (=> bm!65973 (= call!65976 (arrayCountValidKeys!0 (ite c!128006 a!4032 lt!605827) (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(assert (= (and start!116922 res!920068) b!1377201))

(assert (= (and b!1377201 res!920067) b!1377202))

(assert (= (and b!1377202 res!920069) b!1377197))

(assert (= (and b!1377197 res!920072) b!1377198))

(assert (= (and b!1377198 res!920073) b!1377196))

(assert (= (and b!1377196 c!128006) b!1377194))

(assert (= (and b!1377196 (not c!128006)) b!1377195))

(assert (= (or b!1377194 b!1377195) bm!65973))

(assert (= (or b!1377194 b!1377195) bm!65972))

(assert (= (and b!1377196 res!920070) b!1377199))

(assert (= (and b!1377199 res!920071) b!1377200))

(declare-fun m!1261499 () Bool)

(assert (=> b!1377195 m!1261499))

(declare-fun m!1261501 () Bool)

(assert (=> b!1377195 m!1261501))

(declare-fun m!1261503 () Bool)

(assert (=> b!1377199 m!1261503))

(declare-fun m!1261505 () Bool)

(assert (=> b!1377199 m!1261505))

(declare-fun m!1261507 () Bool)

(assert (=> b!1377201 m!1261507))

(assert (=> b!1377201 m!1261507))

(declare-fun m!1261509 () Bool)

(assert (=> b!1377201 m!1261509))

(declare-fun m!1261511 () Bool)

(assert (=> bm!65973 m!1261511))

(declare-fun m!1261513 () Bool)

(assert (=> start!116922 m!1261513))

(declare-fun m!1261515 () Bool)

(assert (=> b!1377196 m!1261515))

(assert (=> b!1377196 m!1261515))

(declare-fun m!1261517 () Bool)

(assert (=> b!1377196 m!1261517))

(declare-fun m!1261519 () Bool)

(assert (=> b!1377198 m!1261519))

(declare-fun m!1261521 () Bool)

(assert (=> b!1377198 m!1261521))

(declare-fun m!1261523 () Bool)

(assert (=> b!1377198 m!1261523))

(declare-fun m!1261525 () Bool)

(assert (=> b!1377202 m!1261525))

(declare-fun m!1261527 () Bool)

(assert (=> b!1377194 m!1261527))

(declare-fun m!1261529 () Bool)

(assert (=> b!1377194 m!1261529))

(declare-fun m!1261531 () Bool)

(assert (=> bm!65972 m!1261531))

(push 1)

(assert (not b!1377195))

(assert (not b!1377196))

(assert (not b!1377201))

(assert (not bm!65972))

(assert (not b!1377199))

(assert (not b!1377194))

(assert (not bm!65973))

(assert (not b!1377202))

(assert (not start!116922))

(assert (not b!1377198))

(check-sat)

(pop 1)

(push 1)

(check-sat)

