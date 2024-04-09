; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!116854 () Bool)

(assert start!116854)

(declare-fun b!1376468 () Bool)

(declare-fun res!919466 () Bool)

(declare-fun e!779754 () Bool)

(assert (=> b!1376468 (=> (not res!919466) (not e!779754))))

(declare-fun to!206 () (_ BitVec 32))

(declare-fun i!1445 () (_ BitVec 32))

(declare-datatypes ((array!93441 0))(
  ( (array!93442 (arr!45119 (Array (_ BitVec 32) (_ BitVec 64))) (size!45670 (_ BitVec 32))) )
))
(declare-fun a!4032 () array!93441)

(assert (=> b!1376468 (= res!919466 (and (bvslt (size!45670 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45670 a!4032)) (bvsgt to!206 i!1445)))))

(declare-fun b!1376469 () Bool)

(declare-fun res!919467 () Bool)

(assert (=> b!1376469 (=> (not res!919467) (not e!779754))))

(declare-fun k0!2947 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1376469 (= res!919467 (not (validKeyInArray!0 k0!2947)))))

(declare-fun b!1376470 () Bool)

(declare-fun e!779755 () Bool)

(assert (=> b!1376470 (= e!779755 (not true))))

(declare-fun lt!605238 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93441 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1376470 (= (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)) (bvadd #b00000000000000000000000000000001 lt!605238))))

(declare-datatypes ((Unit!45559 0))(
  ( (Unit!45560) )
))
(declare-fun lt!605239 () Unit!45559)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!93441 (_ BitVec 32) (_ BitVec 32)) Unit!45559)

(assert (=> b!1376470 (= lt!605239 (lemmaValidKeyIncreasesNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun res!919469 () Bool)

(assert (=> start!116854 (=> (not res!919469) (not e!779754))))

(assert (=> start!116854 (= res!919469 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45670 a!4032))))))

(assert (=> start!116854 e!779754))

(assert (=> start!116854 true))

(declare-fun array_inv!34064 (array!93441) Bool)

(assert (=> start!116854 (array_inv!34064 a!4032)))

(declare-fun b!1376471 () Bool)

(declare-fun res!919470 () Bool)

(assert (=> b!1376471 (=> (not res!919470) (not e!779754))))

(assert (=> b!1376471 (= res!919470 (validKeyInArray!0 (select (arr!45119 a!4032) i!1445)))))

(declare-fun b!1376472 () Bool)

(declare-fun res!919465 () Bool)

(assert (=> b!1376472 (=> (not res!919465) (not e!779755))))

(assert (=> b!1376472 (= res!919465 (validKeyInArray!0 (select (arr!45119 a!4032) to!206)))))

(declare-fun b!1376473 () Bool)

(assert (=> b!1376473 (= e!779754 e!779755)))

(declare-fun res!919468 () Bool)

(assert (=> b!1376473 (=> (not res!919468) (not e!779755))))

(declare-fun lt!605237 () (_ BitVec 32))

(assert (=> b!1376473 (= res!919468 (and (= lt!605237 lt!605238) (not (= to!206 (size!45670 a!4032)))))))

(assert (=> b!1376473 (= lt!605238 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1376473 (= lt!605237 (arrayCountValidKeys!0 (array!93442 (store (arr!45119 a!4032) i!1445 k0!2947) (size!45670 a!4032)) (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (= (and start!116854 res!919469) b!1376471))

(assert (= (and b!1376471 res!919470) b!1376469))

(assert (= (and b!1376469 res!919467) b!1376468))

(assert (= (and b!1376468 res!919466) b!1376473))

(assert (= (and b!1376473 res!919468) b!1376472))

(assert (= (and b!1376472 res!919465) b!1376470))

(declare-fun m!1260579 () Bool)

(assert (=> b!1376472 m!1260579))

(assert (=> b!1376472 m!1260579))

(declare-fun m!1260581 () Bool)

(assert (=> b!1376472 m!1260581))

(declare-fun m!1260583 () Bool)

(assert (=> b!1376473 m!1260583))

(declare-fun m!1260585 () Bool)

(assert (=> b!1376473 m!1260585))

(declare-fun m!1260587 () Bool)

(assert (=> b!1376473 m!1260587))

(declare-fun m!1260589 () Bool)

(assert (=> b!1376470 m!1260589))

(declare-fun m!1260591 () Bool)

(assert (=> b!1376470 m!1260591))

(declare-fun m!1260593 () Bool)

(assert (=> b!1376469 m!1260593))

(declare-fun m!1260595 () Bool)

(assert (=> start!116854 m!1260595))

(declare-fun m!1260597 () Bool)

(assert (=> b!1376471 m!1260597))

(assert (=> b!1376471 m!1260597))

(declare-fun m!1260599 () Bool)

(assert (=> b!1376471 m!1260599))

(check-sat (not start!116854) (not b!1376471) (not b!1376470) (not b!1376472) (not b!1376469) (not b!1376473))
(check-sat)
