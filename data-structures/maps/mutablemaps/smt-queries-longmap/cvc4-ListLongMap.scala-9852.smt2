; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116844 () Bool)

(assert start!116844)

(declare-fun b!1376370 () Bool)

(declare-fun res!919368 () Bool)

(declare-fun e!779719 () Bool)

(assert (=> b!1376370 (=> (not res!919368) (not e!779719))))

(declare-fun k!2947 () (_ BitVec 64))

(declare-fun i!1445 () (_ BitVec 32))

(declare-datatypes ((array!93431 0))(
  ( (array!93432 (arr!45114 (Array (_ BitVec 32) (_ BitVec 64))) (size!45665 (_ BitVec 32))) )
))
(declare-fun a!4032 () array!93431)

(declare-fun to!206 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93431 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1376370 (= res!919368 (= (arrayCountValidKeys!0 (array!93432 (store (arr!45114 a!4032) i!1445 k!2947) (size!45665 a!4032)) (bvadd #b00000000000000000000000000000001 i!1445) to!206) (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206)))))

(declare-fun res!919370 () Bool)

(assert (=> start!116844 (=> (not res!919370) (not e!779719))))

(assert (=> start!116844 (= res!919370 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45665 a!4032))))))

(assert (=> start!116844 e!779719))

(assert (=> start!116844 true))

(declare-fun array_inv!34059 (array!93431) Bool)

(assert (=> start!116844 (array_inv!34059 a!4032)))

(declare-fun b!1376371 () Bool)

(declare-fun res!919367 () Bool)

(assert (=> b!1376371 (=> (not res!919367) (not e!779719))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1376371 (= res!919367 (not (validKeyInArray!0 k!2947)))))

(declare-fun b!1376372 () Bool)

(assert (=> b!1376372 (= e!779719 (and (not (= to!206 (size!45665 a!4032))) (bvsge to!206 (size!45665 a!4032))))))

(declare-fun b!1376373 () Bool)

(declare-fun res!919369 () Bool)

(assert (=> b!1376373 (=> (not res!919369) (not e!779719))))

(assert (=> b!1376373 (= res!919369 (and (bvslt (size!45665 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45665 a!4032)) (bvsgt to!206 i!1445)))))

(declare-fun b!1376374 () Bool)

(declare-fun res!919371 () Bool)

(assert (=> b!1376374 (=> (not res!919371) (not e!779719))))

(assert (=> b!1376374 (= res!919371 (validKeyInArray!0 (select (arr!45114 a!4032) i!1445)))))

(assert (= (and start!116844 res!919370) b!1376374))

(assert (= (and b!1376374 res!919371) b!1376371))

(assert (= (and b!1376371 res!919367) b!1376373))

(assert (= (and b!1376373 res!919369) b!1376370))

(assert (= (and b!1376370 res!919368) b!1376372))

(declare-fun m!1260489 () Bool)

(assert (=> b!1376370 m!1260489))

(declare-fun m!1260491 () Bool)

(assert (=> b!1376370 m!1260491))

(declare-fun m!1260493 () Bool)

(assert (=> b!1376370 m!1260493))

(declare-fun m!1260495 () Bool)

(assert (=> start!116844 m!1260495))

(declare-fun m!1260497 () Bool)

(assert (=> b!1376371 m!1260497))

(declare-fun m!1260499 () Bool)

(assert (=> b!1376374 m!1260499))

(assert (=> b!1376374 m!1260499))

(declare-fun m!1260501 () Bool)

(assert (=> b!1376374 m!1260501))

(push 1)

(assert (not start!116844))

(assert (not b!1376370))

(assert (not b!1376371))

(assert (not b!1376374))

(check-sat)

(pop 1)

(push 1)

(check-sat)

