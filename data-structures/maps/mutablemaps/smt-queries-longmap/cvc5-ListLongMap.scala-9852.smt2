; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116840 () Bool)

(assert start!116840)

(declare-fun res!919339 () Bool)

(declare-fun e!779707 () Bool)

(assert (=> start!116840 (=> (not res!919339) (not e!779707))))

(declare-fun i!1445 () (_ BitVec 32))

(declare-datatypes ((array!93427 0))(
  ( (array!93428 (arr!45112 (Array (_ BitVec 32) (_ BitVec 64))) (size!45663 (_ BitVec 32))) )
))
(declare-fun a!4032 () array!93427)

(assert (=> start!116840 (= res!919339 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45663 a!4032))))))

(assert (=> start!116840 e!779707))

(assert (=> start!116840 true))

(declare-fun array_inv!34057 (array!93427) Bool)

(assert (=> start!116840 (array_inv!34057 a!4032)))

(declare-fun b!1376340 () Bool)

(declare-fun res!919340 () Bool)

(assert (=> b!1376340 (=> (not res!919340) (not e!779707))))

(declare-fun to!206 () (_ BitVec 32))

(declare-fun k!2947 () (_ BitVec 64))

(declare-fun arrayCountValidKeys!0 (array!93427 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1376340 (= res!919340 (= (arrayCountValidKeys!0 (array!93428 (store (arr!45112 a!4032) i!1445 k!2947) (size!45663 a!4032)) (bvadd #b00000000000000000000000000000001 i!1445) to!206) (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206)))))

(declare-fun b!1376341 () Bool)

(assert (=> b!1376341 (= e!779707 (and (not (= to!206 (size!45663 a!4032))) (bvsge to!206 (size!45663 a!4032))))))

(declare-fun b!1376342 () Bool)

(declare-fun res!919337 () Bool)

(assert (=> b!1376342 (=> (not res!919337) (not e!779707))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1376342 (= res!919337 (not (validKeyInArray!0 k!2947)))))

(declare-fun b!1376343 () Bool)

(declare-fun res!919338 () Bool)

(assert (=> b!1376343 (=> (not res!919338) (not e!779707))))

(assert (=> b!1376343 (= res!919338 (and (bvslt (size!45663 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45663 a!4032)) (bvsgt to!206 i!1445)))))

(declare-fun b!1376344 () Bool)

(declare-fun res!919341 () Bool)

(assert (=> b!1376344 (=> (not res!919341) (not e!779707))))

(assert (=> b!1376344 (= res!919341 (validKeyInArray!0 (select (arr!45112 a!4032) i!1445)))))

(assert (= (and start!116840 res!919339) b!1376344))

(assert (= (and b!1376344 res!919341) b!1376342))

(assert (= (and b!1376342 res!919337) b!1376343))

(assert (= (and b!1376343 res!919338) b!1376340))

(assert (= (and b!1376340 res!919340) b!1376341))

(declare-fun m!1260461 () Bool)

(assert (=> start!116840 m!1260461))

(declare-fun m!1260463 () Bool)

(assert (=> b!1376340 m!1260463))

(declare-fun m!1260465 () Bool)

(assert (=> b!1376340 m!1260465))

(declare-fun m!1260467 () Bool)

(assert (=> b!1376340 m!1260467))

(declare-fun m!1260469 () Bool)

(assert (=> b!1376342 m!1260469))

(declare-fun m!1260471 () Bool)

(assert (=> b!1376344 m!1260471))

(assert (=> b!1376344 m!1260471))

(declare-fun m!1260473 () Bool)

(assert (=> b!1376344 m!1260473))

(push 1)

(assert (not b!1376342))

(assert (not b!1376344))

(assert (not b!1376340))

(assert (not start!116840))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

