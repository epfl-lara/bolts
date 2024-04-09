; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116930 () Bool)

(assert start!116930)

(declare-fun b!1377302 () Bool)

(declare-datatypes ((Unit!45629 0))(
  ( (Unit!45630) )
))
(declare-fun e!780211 () Unit!45629)

(declare-fun lt!605934 () Unit!45629)

(assert (=> b!1377302 (= e!780211 lt!605934)))

(declare-fun lt!605936 () Unit!45629)

(declare-fun to!206 () (_ BitVec 32))

(declare-datatypes ((array!93517 0))(
  ( (array!93518 (arr!45157 (Array (_ BitVec 32) (_ BitVec 64))) (size!45708 (_ BitVec 32))) )
))
(declare-fun a!4032 () array!93517)

(declare-fun i!1445 () (_ BitVec 32))

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!93517 (_ BitVec 32) (_ BitVec 32)) Unit!45629)

(assert (=> b!1377302 (= lt!605936 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun call!65999 () (_ BitVec 32))

(declare-fun lt!605935 () (_ BitVec 32))

(assert (=> b!1377302 (= call!65999 lt!605935)))

(declare-fun lt!605940 () array!93517)

(assert (=> b!1377302 (= lt!605934 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 lt!605940 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun call!66000 () (_ BitVec 32))

(declare-fun lt!605933 () (_ BitVec 32))

(assert (=> b!1377302 (= call!66000 lt!605933)))

(declare-fun res!920153 () Bool)

(declare-fun e!780209 () Bool)

(assert (=> start!116930 (=> (not res!920153) (not e!780209))))

(assert (=> start!116930 (= res!920153 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45708 a!4032))))))

(assert (=> start!116930 e!780209))

(assert (=> start!116930 true))

(declare-fun array_inv!34102 (array!93517) Bool)

(assert (=> start!116930 (array_inv!34102 a!4032)))

(declare-fun b!1377303 () Bool)

(declare-fun res!920151 () Bool)

(assert (=> b!1377303 (=> (not res!920151) (not e!780209))))

(assert (=> b!1377303 (= res!920151 (and (bvslt (size!45708 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45708 a!4032)) (bvsgt to!206 i!1445)))))

(declare-fun b!1377304 () Bool)

(declare-fun e!780210 () Bool)

(declare-fun e!780208 () Bool)

(assert (=> b!1377304 (= e!780210 e!780208)))

(declare-fun res!920154 () Bool)

(assert (=> b!1377304 (=> (not res!920154) (not e!780208))))

(assert (=> b!1377304 (= res!920154 (and (bvsge (bvadd #b00000000000000000000000000000001 to!206) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 to!206) (size!45708 a!4032)) (bvsgt (bvadd #b00000000000000000000000000000001 to!206) i!1445)))))

(declare-fun lt!605938 () Unit!45629)

(assert (=> b!1377304 (= lt!605938 e!780211)))

(declare-fun c!128018 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1377304 (= c!128018 (validKeyInArray!0 (select (arr!45157 a!4032) to!206)))))

(declare-fun b!1377305 () Bool)

(declare-fun lt!605939 () Unit!45629)

(assert (=> b!1377305 (= e!780211 lt!605939)))

(declare-fun lt!605937 () Unit!45629)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!93517 (_ BitVec 32) (_ BitVec 32)) Unit!45629)

(assert (=> b!1377305 (= lt!605937 (lemmaValidKeyIncreasesNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1377305 (= call!65999 (bvadd #b00000000000000000000000000000001 lt!605935))))

(assert (=> b!1377305 (= lt!605939 (lemmaValidKeyIncreasesNumOfKeys!0 lt!605940 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1377305 (= call!66000 (bvadd #b00000000000000000000000000000001 lt!605933))))

(declare-fun b!1377306 () Bool)

(assert (=> b!1377306 (= e!780209 e!780210)))

(declare-fun res!920155 () Bool)

(assert (=> b!1377306 (=> (not res!920155) (not e!780210))))

(assert (=> b!1377306 (= res!920155 (and (= lt!605933 lt!605935) (not (= to!206 (size!45708 a!4032)))))))

(declare-fun arrayCountValidKeys!0 (array!93517 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1377306 (= lt!605935 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1377306 (= lt!605933 (arrayCountValidKeys!0 lt!605940 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun k!2947 () (_ BitVec 64))

(assert (=> b!1377306 (= lt!605940 (array!93518 (store (arr!45157 a!4032) i!1445 k!2947) (size!45708 a!4032)))))

(declare-fun b!1377307 () Bool)

(declare-fun res!920157 () Bool)

(assert (=> b!1377307 (=> (not res!920157) (not e!780209))))

(assert (=> b!1377307 (= res!920157 (validKeyInArray!0 (select (arr!45157 a!4032) i!1445)))))

(declare-fun bm!65996 () Bool)

(assert (=> bm!65996 (= call!65999 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun b!1377308 () Bool)

(declare-fun res!920156 () Bool)

(assert (=> b!1377308 (=> (not res!920156) (not e!780209))))

(assert (=> b!1377308 (= res!920156 (not (validKeyInArray!0 k!2947)))))

(declare-fun bm!65997 () Bool)

(assert (=> bm!65997 (= call!66000 (arrayCountValidKeys!0 lt!605940 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun b!1377309 () Bool)

(assert (=> b!1377309 (= e!780208 (not true))))

(assert (=> b!1377309 (= (arrayCountValidKeys!0 lt!605940 (bvadd #b00000000000000000000000000000001 i!1445) (size!45708 a!4032)) (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (size!45708 a!4032)))))

(declare-fun lt!605941 () Unit!45629)

(declare-fun lemmaRemoveValidKeyAndNumKeysToImpliesToALength!0 (array!93517 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45629)

(assert (=> b!1377309 (= lt!605941 (lemmaRemoveValidKeyAndNumKeysToImpliesToALength!0 a!4032 i!1445 k!2947 (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun b!1377310 () Bool)

(declare-fun res!920152 () Bool)

(assert (=> b!1377310 (=> (not res!920152) (not e!780208))))

(assert (=> b!1377310 (= res!920152 (= (arrayCountValidKeys!0 lt!605940 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)) (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206))))))

(assert (= (and start!116930 res!920153) b!1377307))

(assert (= (and b!1377307 res!920157) b!1377308))

(assert (= (and b!1377308 res!920156) b!1377303))

(assert (= (and b!1377303 res!920151) b!1377306))

(assert (= (and b!1377306 res!920155) b!1377304))

(assert (= (and b!1377304 c!128018) b!1377305))

(assert (= (and b!1377304 (not c!128018)) b!1377302))

(assert (= (or b!1377305 b!1377302) bm!65997))

(assert (= (or b!1377305 b!1377302) bm!65996))

(assert (= (and b!1377304 res!920154) b!1377310))

(assert (= (and b!1377310 res!920152) b!1377309))

(declare-fun m!1261641 () Bool)

(assert (=> b!1377308 m!1261641))

(declare-fun m!1261643 () Bool)

(assert (=> b!1377302 m!1261643))

(declare-fun m!1261645 () Bool)

(assert (=> b!1377302 m!1261645))

(declare-fun m!1261647 () Bool)

(assert (=> bm!65997 m!1261647))

(declare-fun m!1261649 () Bool)

(assert (=> b!1377305 m!1261649))

(declare-fun m!1261651 () Bool)

(assert (=> b!1377305 m!1261651))

(declare-fun m!1261653 () Bool)

(assert (=> b!1377306 m!1261653))

(declare-fun m!1261655 () Bool)

(assert (=> b!1377306 m!1261655))

(declare-fun m!1261657 () Bool)

(assert (=> b!1377306 m!1261657))

(assert (=> b!1377310 m!1261647))

(declare-fun m!1261659 () Bool)

(assert (=> b!1377310 m!1261659))

(declare-fun m!1261661 () Bool)

(assert (=> b!1377309 m!1261661))

(declare-fun m!1261663 () Bool)

(assert (=> b!1377309 m!1261663))

(declare-fun m!1261665 () Bool)

(assert (=> b!1377309 m!1261665))

(assert (=> bm!65996 m!1261659))

(declare-fun m!1261667 () Bool)

(assert (=> b!1377307 m!1261667))

(assert (=> b!1377307 m!1261667))

(declare-fun m!1261669 () Bool)

(assert (=> b!1377307 m!1261669))

(declare-fun m!1261671 () Bool)

(assert (=> b!1377304 m!1261671))

(assert (=> b!1377304 m!1261671))

(declare-fun m!1261673 () Bool)

(assert (=> b!1377304 m!1261673))

(declare-fun m!1261675 () Bool)

(assert (=> start!116930 m!1261675))

(push 1)

