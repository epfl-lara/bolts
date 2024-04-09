; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116852 () Bool)

(assert start!116852)

(declare-fun b!1376450 () Bool)

(declare-fun res!919447 () Bool)

(declare-fun e!779746 () Bool)

(assert (=> b!1376450 (=> (not res!919447) (not e!779746))))

(declare-fun k!2947 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1376450 (= res!919447 (not (validKeyInArray!0 k!2947)))))

(declare-fun b!1376451 () Bool)

(declare-fun e!779745 () Bool)

(assert (=> b!1376451 (= e!779746 e!779745)))

(declare-fun res!919450 () Bool)

(assert (=> b!1376451 (=> (not res!919450) (not e!779745))))

(declare-fun to!206 () (_ BitVec 32))

(declare-fun lt!605230 () (_ BitVec 32))

(declare-datatypes ((array!93439 0))(
  ( (array!93440 (arr!45118 (Array (_ BitVec 32) (_ BitVec 64))) (size!45669 (_ BitVec 32))) )
))
(declare-fun a!4032 () array!93439)

(declare-fun lt!605228 () (_ BitVec 32))

(assert (=> b!1376451 (= res!919450 (and (= lt!605228 lt!605230) (not (= to!206 (size!45669 a!4032)))))))

(declare-fun i!1445 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93439 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1376451 (= lt!605230 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1376451 (= lt!605228 (arrayCountValidKeys!0 (array!93440 (store (arr!45118 a!4032) i!1445 k!2947) (size!45669 a!4032)) (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun b!1376452 () Bool)

(declare-fun res!919451 () Bool)

(assert (=> b!1376452 (=> (not res!919451) (not e!779746))))

(assert (=> b!1376452 (= res!919451 (validKeyInArray!0 (select (arr!45118 a!4032) i!1445)))))

(declare-fun b!1376453 () Bool)

(declare-fun res!919452 () Bool)

(assert (=> b!1376453 (=> (not res!919452) (not e!779745))))

(assert (=> b!1376453 (= res!919452 (validKeyInArray!0 (select (arr!45118 a!4032) to!206)))))

(declare-fun b!1376454 () Bool)

(declare-fun res!919448 () Bool)

(assert (=> b!1376454 (=> (not res!919448) (not e!779746))))

(assert (=> b!1376454 (= res!919448 (and (bvslt (size!45669 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45669 a!4032)) (bvsgt to!206 i!1445)))))

(declare-fun b!1376455 () Bool)

(assert (=> b!1376455 (= e!779745 (not true))))

(assert (=> b!1376455 (= (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)) (bvadd #b00000000000000000000000000000001 lt!605230))))

(declare-datatypes ((Unit!45557 0))(
  ( (Unit!45558) )
))
(declare-fun lt!605229 () Unit!45557)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!93439 (_ BitVec 32) (_ BitVec 32)) Unit!45557)

(assert (=> b!1376455 (= lt!605229 (lemmaValidKeyIncreasesNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun res!919449 () Bool)

(assert (=> start!116852 (=> (not res!919449) (not e!779746))))

(assert (=> start!116852 (= res!919449 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45669 a!4032))))))

(assert (=> start!116852 e!779746))

(assert (=> start!116852 true))

(declare-fun array_inv!34063 (array!93439) Bool)

(assert (=> start!116852 (array_inv!34063 a!4032)))

(assert (= (and start!116852 res!919449) b!1376452))

(assert (= (and b!1376452 res!919451) b!1376450))

(assert (= (and b!1376450 res!919447) b!1376454))

(assert (= (and b!1376454 res!919448) b!1376451))

(assert (= (and b!1376451 res!919450) b!1376453))

(assert (= (and b!1376453 res!919452) b!1376455))

(declare-fun m!1260557 () Bool)

(assert (=> b!1376452 m!1260557))

(assert (=> b!1376452 m!1260557))

(declare-fun m!1260559 () Bool)

(assert (=> b!1376452 m!1260559))

(declare-fun m!1260561 () Bool)

(assert (=> b!1376451 m!1260561))

(declare-fun m!1260563 () Bool)

(assert (=> b!1376451 m!1260563))

(declare-fun m!1260565 () Bool)

(assert (=> b!1376451 m!1260565))

(declare-fun m!1260567 () Bool)

(assert (=> b!1376455 m!1260567))

(declare-fun m!1260569 () Bool)

(assert (=> b!1376455 m!1260569))

(declare-fun m!1260571 () Bool)

(assert (=> b!1376453 m!1260571))

(assert (=> b!1376453 m!1260571))

(declare-fun m!1260573 () Bool)

(assert (=> b!1376453 m!1260573))

(declare-fun m!1260575 () Bool)

(assert (=> start!116852 m!1260575))

(declare-fun m!1260577 () Bool)

(assert (=> b!1376450 m!1260577))

(push 1)

(assert (not start!116852))

(assert (not b!1376451))

(assert (not b!1376455))

(assert (not b!1376453))

(assert (not b!1376450))

(assert (not b!1376452))

(check-sat)

(pop 1)

