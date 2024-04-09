; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116924 () Bool)

(assert start!116924)

(declare-fun b!1377221 () Bool)

(declare-fun res!920088 () Bool)

(declare-fun e!780165 () Bool)

(assert (=> b!1377221 (=> (not res!920088) (not e!780165))))

(declare-fun to!206 () (_ BitVec 32))

(declare-fun i!1445 () (_ BitVec 32))

(declare-datatypes ((array!93511 0))(
  ( (array!93512 (arr!45154 (Array (_ BitVec 32) (_ BitVec 64))) (size!45705 (_ BitVec 32))) )
))
(declare-fun a!4032 () array!93511)

(declare-fun lt!605858 () array!93511)

(declare-fun arrayCountValidKeys!0 (array!93511 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1377221 (= res!920088 (= (arrayCountValidKeys!0 lt!605858 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)) (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206))))))

(declare-fun b!1377222 () Bool)

(declare-fun res!920089 () Bool)

(declare-fun e!780164 () Bool)

(assert (=> b!1377222 (=> (not res!920089) (not e!780164))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1377222 (= res!920089 (validKeyInArray!0 (select (arr!45154 a!4032) i!1445)))))

(declare-fun b!1377223 () Bool)

(declare-fun res!920092 () Bool)

(assert (=> b!1377223 (=> (not res!920092) (not e!780164))))

(declare-fun k!2947 () (_ BitVec 64))

(assert (=> b!1377223 (= res!920092 (not (validKeyInArray!0 k!2947)))))

(declare-fun b!1377224 () Bool)

(declare-fun e!780163 () Bool)

(assert (=> b!1377224 (= e!780164 e!780163)))

(declare-fun res!920093 () Bool)

(assert (=> b!1377224 (=> (not res!920093) (not e!780163))))

(declare-fun lt!605854 () (_ BitVec 32))

(declare-fun lt!605859 () (_ BitVec 32))

(assert (=> b!1377224 (= res!920093 (and (= lt!605859 lt!605854) (not (= to!206 (size!45705 a!4032)))))))

(assert (=> b!1377224 (= lt!605854 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1377224 (= lt!605859 (arrayCountValidKeys!0 lt!605858 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1377224 (= lt!605858 (array!93512 (store (arr!45154 a!4032) i!1445 k!2947) (size!45705 a!4032)))))

(declare-fun bm!65978 () Bool)

(declare-fun call!65982 () (_ BitVec 32))

(assert (=> bm!65978 (= call!65982 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun b!1377225 () Bool)

(declare-datatypes ((Unit!45623 0))(
  ( (Unit!45624) )
))
(declare-fun e!780166 () Unit!45623)

(declare-fun lt!605857 () Unit!45623)

(assert (=> b!1377225 (= e!780166 lt!605857)))

(declare-fun lt!605855 () Unit!45623)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!93511 (_ BitVec 32) (_ BitVec 32)) Unit!45623)

(assert (=> b!1377225 (= lt!605855 (lemmaValidKeyIncreasesNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1377225 (= call!65982 (bvadd #b00000000000000000000000000000001 lt!605854))))

(assert (=> b!1377225 (= lt!605857 (lemmaValidKeyIncreasesNumOfKeys!0 lt!605858 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun call!65981 () (_ BitVec 32))

(assert (=> b!1377225 (= call!65981 (bvadd #b00000000000000000000000000000001 lt!605859))))

(declare-fun b!1377226 () Bool)

(assert (=> b!1377226 (= e!780163 e!780165)))

(declare-fun res!920091 () Bool)

(assert (=> b!1377226 (=> (not res!920091) (not e!780165))))

(assert (=> b!1377226 (= res!920091 (and (bvsge (bvadd #b00000000000000000000000000000001 to!206) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 to!206) (size!45705 a!4032)) (bvsgt (bvadd #b00000000000000000000000000000001 to!206) i!1445)))))

(declare-fun lt!605852 () Unit!45623)

(assert (=> b!1377226 (= lt!605852 e!780166)))

(declare-fun c!128009 () Bool)

(assert (=> b!1377226 (= c!128009 (validKeyInArray!0 (select (arr!45154 a!4032) to!206)))))

(declare-fun bm!65979 () Bool)

(assert (=> bm!65979 (= call!65981 (arrayCountValidKeys!0 lt!605858 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun res!920090 () Bool)

(assert (=> start!116924 (=> (not res!920090) (not e!780164))))

(assert (=> start!116924 (= res!920090 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45705 a!4032))))))

(assert (=> start!116924 e!780164))

(assert (=> start!116924 true))

(declare-fun array_inv!34099 (array!93511) Bool)

(assert (=> start!116924 (array_inv!34099 a!4032)))

(declare-fun b!1377227 () Bool)

(declare-fun lt!605853 () Unit!45623)

(assert (=> b!1377227 (= e!780166 lt!605853)))

(declare-fun lt!605860 () Unit!45623)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!93511 (_ BitVec 32) (_ BitVec 32)) Unit!45623)

(assert (=> b!1377227 (= lt!605860 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1377227 (= call!65982 lt!605854)))

(assert (=> b!1377227 (= lt!605853 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 lt!605858 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1377227 (= call!65981 lt!605859)))

(declare-fun b!1377228 () Bool)

(declare-fun res!920094 () Bool)

(assert (=> b!1377228 (=> (not res!920094) (not e!780164))))

(assert (=> b!1377228 (= res!920094 (and (bvslt (size!45705 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45705 a!4032)) (bvsgt to!206 i!1445)))))

(declare-fun b!1377229 () Bool)

(assert (=> b!1377229 (= e!780165 (not true))))

(assert (=> b!1377229 (= (arrayCountValidKeys!0 lt!605858 (bvadd #b00000000000000000000000000000001 i!1445) (size!45705 a!4032)) (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (size!45705 a!4032)))))

(declare-fun lt!605856 () Unit!45623)

(declare-fun lemmaRemoveValidKeyAndNumKeysToImpliesToALength!0 (array!93511 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45623)

(assert (=> b!1377229 (= lt!605856 (lemmaRemoveValidKeyAndNumKeysToImpliesToALength!0 a!4032 i!1445 k!2947 (bvadd #b00000000000000000000000000000001 to!206)))))

(assert (= (and start!116924 res!920090) b!1377222))

(assert (= (and b!1377222 res!920089) b!1377223))

(assert (= (and b!1377223 res!920092) b!1377228))

(assert (= (and b!1377228 res!920094) b!1377224))

(assert (= (and b!1377224 res!920093) b!1377226))

(assert (= (and b!1377226 c!128009) b!1377225))

(assert (= (and b!1377226 (not c!128009)) b!1377227))

(assert (= (or b!1377225 b!1377227) bm!65978))

(assert (= (or b!1377225 b!1377227) bm!65979))

(assert (= (and b!1377226 res!920091) b!1377221))

(assert (= (and b!1377221 res!920088) b!1377229))

(declare-fun m!1261533 () Bool)

(assert (=> b!1377221 m!1261533))

(declare-fun m!1261535 () Bool)

(assert (=> b!1377221 m!1261535))

(declare-fun m!1261537 () Bool)

(assert (=> b!1377227 m!1261537))

(declare-fun m!1261539 () Bool)

(assert (=> b!1377227 m!1261539))

(assert (=> bm!65979 m!1261533))

(declare-fun m!1261541 () Bool)

(assert (=> start!116924 m!1261541))

(declare-fun m!1261543 () Bool)

(assert (=> b!1377222 m!1261543))

(assert (=> b!1377222 m!1261543))

(declare-fun m!1261545 () Bool)

(assert (=> b!1377222 m!1261545))

(declare-fun m!1261547 () Bool)

(assert (=> b!1377225 m!1261547))

(declare-fun m!1261549 () Bool)

(assert (=> b!1377225 m!1261549))

(declare-fun m!1261551 () Bool)

(assert (=> b!1377229 m!1261551))

(declare-fun m!1261553 () Bool)

(assert (=> b!1377229 m!1261553))

(declare-fun m!1261555 () Bool)

(assert (=> b!1377229 m!1261555))

(assert (=> bm!65978 m!1261535))

(declare-fun m!1261557 () Bool)

(assert (=> b!1377223 m!1261557))

(declare-fun m!1261559 () Bool)

(assert (=> b!1377224 m!1261559))

(declare-fun m!1261561 () Bool)

(assert (=> b!1377224 m!1261561))

(declare-fun m!1261563 () Bool)

(assert (=> b!1377224 m!1261563))

(declare-fun m!1261565 () Bool)

(assert (=> b!1377226 m!1261565))

(assert (=> b!1377226 m!1261565))

(declare-fun m!1261567 () Bool)

(assert (=> b!1377226 m!1261567))

(push 1)

