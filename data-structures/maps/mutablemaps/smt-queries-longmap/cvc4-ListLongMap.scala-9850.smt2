; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116832 () Bool)

(assert start!116832)

(declare-fun b!1376281 () Bool)

(declare-fun res!919281 () Bool)

(declare-fun e!779684 () Bool)

(assert (=> b!1376281 (=> (not res!919281) (not e!779684))))

(declare-datatypes ((array!93419 0))(
  ( (array!93420 (arr!45108 (Array (_ BitVec 32) (_ BitVec 64))) (size!45659 (_ BitVec 32))) )
))
(declare-fun a!4032 () array!93419)

(declare-fun i!1445 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1376281 (= res!919281 (validKeyInArray!0 (select (arr!45108 a!4032) i!1445)))))

(declare-fun b!1376284 () Bool)

(assert (=> b!1376284 (= e!779684 false)))

(declare-fun to!206 () (_ BitVec 32))

(declare-fun lt!605220 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93419 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1376284 (= lt!605220 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun k!2947 () (_ BitVec 64))

(declare-fun lt!605221 () (_ BitVec 32))

(assert (=> b!1376284 (= lt!605221 (arrayCountValidKeys!0 (array!93420 (store (arr!45108 a!4032) i!1445 k!2947) (size!45659 a!4032)) (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun b!1376283 () Bool)

(declare-fun res!919280 () Bool)

(assert (=> b!1376283 (=> (not res!919280) (not e!779684))))

(assert (=> b!1376283 (= res!919280 (and (bvslt (size!45659 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45659 a!4032)) (bvsgt to!206 i!1445)))))

(declare-fun res!919278 () Bool)

(assert (=> start!116832 (=> (not res!919278) (not e!779684))))

(assert (=> start!116832 (= res!919278 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45659 a!4032))))))

(assert (=> start!116832 e!779684))

(assert (=> start!116832 true))

(declare-fun array_inv!34053 (array!93419) Bool)

(assert (=> start!116832 (array_inv!34053 a!4032)))

(declare-fun b!1376282 () Bool)

(declare-fun res!919279 () Bool)

(assert (=> b!1376282 (=> (not res!919279) (not e!779684))))

(assert (=> b!1376282 (= res!919279 (not (validKeyInArray!0 k!2947)))))

(assert (= (and start!116832 res!919278) b!1376281))

(assert (= (and b!1376281 res!919281) b!1376282))

(assert (= (and b!1376282 res!919279) b!1376283))

(assert (= (and b!1376283 res!919280) b!1376284))

(declare-fun m!1260405 () Bool)

(assert (=> b!1376281 m!1260405))

(assert (=> b!1376281 m!1260405))

(declare-fun m!1260407 () Bool)

(assert (=> b!1376281 m!1260407))

(declare-fun m!1260409 () Bool)

(assert (=> b!1376284 m!1260409))

(declare-fun m!1260411 () Bool)

(assert (=> b!1376284 m!1260411))

(declare-fun m!1260413 () Bool)

(assert (=> b!1376284 m!1260413))

(declare-fun m!1260415 () Bool)

(assert (=> start!116832 m!1260415))

(declare-fun m!1260417 () Bool)

(assert (=> b!1376282 m!1260417))

(push 1)

(assert (not start!116832))

(assert (not b!1376281))

(assert (not b!1376282))

(assert (not b!1376284))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

