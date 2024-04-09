; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116912 () Bool)

(assert start!116912)

(declare-fun b!1377066 () Bool)

(declare-datatypes ((Unit!45611 0))(
  ( (Unit!45612) )
))
(declare-fun e!780075 () Unit!45611)

(declare-fun lt!605707 () Unit!45611)

(assert (=> b!1377066 (= e!780075 lt!605707)))

(declare-fun to!206 () (_ BitVec 32))

(declare-fun i!1445 () (_ BitVec 32))

(declare-datatypes ((array!93499 0))(
  ( (array!93500 (arr!45148 (Array (_ BitVec 32) (_ BitVec 64))) (size!45699 (_ BitVec 32))) )
))
(declare-fun a!4032 () array!93499)

(declare-fun lt!605706 () Unit!45611)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!93499 (_ BitVec 32) (_ BitVec 32)) Unit!45611)

(assert (=> b!1377066 (= lt!605706 (lemmaValidKeyIncreasesNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun call!65946 () (_ BitVec 32))

(declare-fun lt!605708 () (_ BitVec 32))

(assert (=> b!1377066 (= call!65946 (bvadd #b00000000000000000000000000000001 lt!605708))))

(declare-fun lt!605709 () array!93499)

(assert (=> b!1377066 (= lt!605707 (lemmaValidKeyIncreasesNumOfKeys!0 lt!605709 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun call!65945 () (_ BitVec 32))

(declare-fun lt!605713 () (_ BitVec 32))

(assert (=> b!1377066 (= call!65945 (bvadd #b00000000000000000000000000000001 lt!605713))))

(declare-fun bm!65942 () Bool)

(declare-fun arrayCountValidKeys!0 (array!93499 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> bm!65942 (= call!65945 (arrayCountValidKeys!0 lt!605709 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun b!1377067 () Bool)

(declare-fun res!919969 () Bool)

(declare-fun e!780073 () Bool)

(assert (=> b!1377067 (=> (not res!919969) (not e!780073))))

(assert (=> b!1377067 (= res!919969 (and (bvslt (size!45699 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45699 a!4032)) (bvsgt to!206 i!1445)))))

(declare-fun res!919972 () Bool)

(assert (=> start!116912 (=> (not res!919972) (not e!780073))))

(assert (=> start!116912 (= res!919972 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45699 a!4032))))))

(assert (=> start!116912 e!780073))

(assert (=> start!116912 true))

(declare-fun array_inv!34093 (array!93499) Bool)

(assert (=> start!116912 (array_inv!34093 a!4032)))

(declare-fun b!1377068 () Bool)

(declare-fun e!780076 () Bool)

(assert (=> b!1377068 (= e!780073 e!780076)))

(declare-fun res!919973 () Bool)

(assert (=> b!1377068 (=> (not res!919973) (not e!780076))))

(assert (=> b!1377068 (= res!919973 (and (= lt!605713 lt!605708) (not (= to!206 (size!45699 a!4032)))))))

(assert (=> b!1377068 (= lt!605708 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1377068 (= lt!605713 (arrayCountValidKeys!0 lt!605709 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun k!2947 () (_ BitVec 64))

(assert (=> b!1377068 (= lt!605709 (array!93500 (store (arr!45148 a!4032) i!1445 k!2947) (size!45699 a!4032)))))

(declare-fun b!1377069 () Bool)

(declare-fun e!780074 () Bool)

(assert (=> b!1377069 (= e!780076 e!780074)))

(declare-fun res!919970 () Bool)

(assert (=> b!1377069 (=> (not res!919970) (not e!780074))))

(assert (=> b!1377069 (= res!919970 (and (bvsge (bvadd #b00000000000000000000000000000001 to!206) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 to!206) (size!45699 a!4032)) (bvsgt (bvadd #b00000000000000000000000000000001 to!206) i!1445)))))

(declare-fun lt!605712 () Unit!45611)

(assert (=> b!1377069 (= lt!605712 e!780075)))

(declare-fun c!127991 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1377069 (= c!127991 (validKeyInArray!0 (select (arr!45148 a!4032) to!206)))))

(declare-fun b!1377070 () Bool)

(declare-fun res!919971 () Bool)

(assert (=> b!1377070 (=> (not res!919971) (not e!780073))))

(assert (=> b!1377070 (= res!919971 (validKeyInArray!0 (select (arr!45148 a!4032) i!1445)))))

(declare-fun b!1377071 () Bool)

(declare-fun res!919974 () Bool)

(assert (=> b!1377071 (=> (not res!919974) (not e!780073))))

(assert (=> b!1377071 (= res!919974 (not (validKeyInArray!0 k!2947)))))

(declare-fun b!1377072 () Bool)

(assert (=> b!1377072 (= e!780074 (not (= (arrayCountValidKeys!0 lt!605709 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)) (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))))

(declare-fun bm!65943 () Bool)

(assert (=> bm!65943 (= call!65946 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun b!1377073 () Bool)

(declare-fun lt!605711 () Unit!45611)

(assert (=> b!1377073 (= e!780075 lt!605711)))

(declare-fun lt!605710 () Unit!45611)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!93499 (_ BitVec 32) (_ BitVec 32)) Unit!45611)

(assert (=> b!1377073 (= lt!605710 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1377073 (= call!65946 lt!605708)))

(assert (=> b!1377073 (= lt!605711 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 lt!605709 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1377073 (= call!65945 lt!605713)))

(assert (= (and start!116912 res!919972) b!1377070))

(assert (= (and b!1377070 res!919971) b!1377071))

(assert (= (and b!1377071 res!919974) b!1377067))

(assert (= (and b!1377067 res!919969) b!1377068))

(assert (= (and b!1377068 res!919973) b!1377069))

(assert (= (and b!1377069 c!127991) b!1377066))

(assert (= (and b!1377069 (not c!127991)) b!1377073))

(assert (= (or b!1377066 b!1377073) bm!65943))

(assert (= (or b!1377066 b!1377073) bm!65942))

(assert (= (and b!1377069 res!919970) b!1377072))

(declare-fun m!1261349 () Bool)

(assert (=> b!1377073 m!1261349))

(declare-fun m!1261351 () Bool)

(assert (=> b!1377073 m!1261351))

(declare-fun m!1261353 () Bool)

(assert (=> bm!65942 m!1261353))

(declare-fun m!1261355 () Bool)

(assert (=> b!1377070 m!1261355))

(assert (=> b!1377070 m!1261355))

(declare-fun m!1261357 () Bool)

(assert (=> b!1377070 m!1261357))

(declare-fun m!1261359 () Bool)

(assert (=> b!1377071 m!1261359))

(declare-fun m!1261361 () Bool)

(assert (=> start!116912 m!1261361))

(declare-fun m!1261363 () Bool)

(assert (=> b!1377066 m!1261363))

(declare-fun m!1261365 () Bool)

(assert (=> b!1377066 m!1261365))

(declare-fun m!1261367 () Bool)

(assert (=> b!1377069 m!1261367))

(assert (=> b!1377069 m!1261367))

(declare-fun m!1261369 () Bool)

(assert (=> b!1377069 m!1261369))

(assert (=> b!1377072 m!1261353))

(declare-fun m!1261371 () Bool)

(assert (=> b!1377072 m!1261371))

(assert (=> bm!65943 m!1261371))

(declare-fun m!1261373 () Bool)

(assert (=> b!1377068 m!1261373))

(declare-fun m!1261375 () Bool)

(assert (=> b!1377068 m!1261375))

(declare-fun m!1261377 () Bool)

(assert (=> b!1377068 m!1261377))

(push 1)

(assert (not b!1377068))

(assert (not b!1377070))

(assert (not b!1377069))

(assert (not start!116912))

(assert (not bm!65943))

(assert (not b!1377066))

(assert (not b!1377071))

(assert (not b!1377072))

(assert (not bm!65942))

(assert (not b!1377073))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

