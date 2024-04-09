; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116834 () Bool)

(assert start!116834)

(declare-fun b!1376295 () Bool)

(declare-fun res!919292 () Bool)

(declare-fun e!779689 () Bool)

(assert (=> b!1376295 (=> (not res!919292) (not e!779689))))

(declare-fun k!2947 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1376295 (= res!919292 (not (validKeyInArray!0 k!2947)))))

(declare-fun b!1376296 () Bool)

(declare-datatypes ((array!93421 0))(
  ( (array!93422 (arr!45109 (Array (_ BitVec 32) (_ BitVec 64))) (size!45660 (_ BitVec 32))) )
))
(declare-fun a!4032 () array!93421)

(declare-fun to!206 () (_ BitVec 32))

(assert (=> b!1376296 (= e!779689 (bvslt (bvsub (bvadd #b00000000000000000000000000000001 (size!45660 a!4032)) to!206) #b00000000000000000000000000000000))))

(declare-fun res!919293 () Bool)

(assert (=> start!116834 (=> (not res!919293) (not e!779689))))

(declare-fun i!1445 () (_ BitVec 32))

(assert (=> start!116834 (= res!919293 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45660 a!4032))))))

(assert (=> start!116834 e!779689))

(assert (=> start!116834 true))

(declare-fun array_inv!34054 (array!93421) Bool)

(assert (=> start!116834 (array_inv!34054 a!4032)))

(declare-fun b!1376297 () Bool)

(declare-fun res!919295 () Bool)

(assert (=> b!1376297 (=> (not res!919295) (not e!779689))))

(assert (=> b!1376297 (= res!919295 (validKeyInArray!0 (select (arr!45109 a!4032) i!1445)))))

(declare-fun b!1376298 () Bool)

(declare-fun res!919294 () Bool)

(assert (=> b!1376298 (=> (not res!919294) (not e!779689))))

(declare-fun arrayCountValidKeys!0 (array!93421 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1376298 (= res!919294 (= (arrayCountValidKeys!0 (array!93422 (store (arr!45109 a!4032) i!1445 k!2947) (size!45660 a!4032)) (bvadd #b00000000000000000000000000000001 i!1445) to!206) (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206)))))

(declare-fun b!1376299 () Bool)

(declare-fun res!919296 () Bool)

(assert (=> b!1376299 (=> (not res!919296) (not e!779689))))

(assert (=> b!1376299 (= res!919296 (and (bvslt (size!45660 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45660 a!4032)) (bvsgt to!206 i!1445)))))

(assert (= (and start!116834 res!919293) b!1376297))

(assert (= (and b!1376297 res!919295) b!1376295))

(assert (= (and b!1376295 res!919292) b!1376299))

(assert (= (and b!1376299 res!919296) b!1376298))

(assert (= (and b!1376298 res!919294) b!1376296))

(declare-fun m!1260419 () Bool)

(assert (=> b!1376295 m!1260419))

(declare-fun m!1260421 () Bool)

(assert (=> start!116834 m!1260421))

(declare-fun m!1260423 () Bool)

(assert (=> b!1376297 m!1260423))

(assert (=> b!1376297 m!1260423))

(declare-fun m!1260425 () Bool)

(assert (=> b!1376297 m!1260425))

(declare-fun m!1260427 () Bool)

(assert (=> b!1376298 m!1260427))

(declare-fun m!1260429 () Bool)

(assert (=> b!1376298 m!1260429))

(declare-fun m!1260431 () Bool)

(assert (=> b!1376298 m!1260431))

(push 1)

(assert (not b!1376297))

(assert (not b!1376298))

(assert (not start!116834))

(assert (not b!1376295))

(check-sat)

(pop 1)

(push 1)

(check-sat)

