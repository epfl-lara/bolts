; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116838 () Bool)

(assert start!116838)

(declare-fun b!1376325 () Bool)

(declare-fun e!779701 () Bool)

(declare-datatypes ((array!93425 0))(
  ( (array!93426 (arr!45111 (Array (_ BitVec 32) (_ BitVec 64))) (size!45662 (_ BitVec 32))) )
))
(declare-fun a!4032 () array!93425)

(declare-fun to!206 () (_ BitVec 32))

(assert (=> b!1376325 (= e!779701 (bvslt (bvsub (bvadd #b00000000000000000000000000000001 (size!45662 a!4032)) to!206) #b00000000000000000000000000000000))))

(declare-fun b!1376326 () Bool)

(declare-fun res!919326 () Bool)

(assert (=> b!1376326 (=> (not res!919326) (not e!779701))))

(declare-fun i!1445 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1376326 (= res!919326 (validKeyInArray!0 (select (arr!45111 a!4032) i!1445)))))

(declare-fun b!1376327 () Bool)

(declare-fun res!919323 () Bool)

(assert (=> b!1376327 (=> (not res!919323) (not e!779701))))

(assert (=> b!1376327 (= res!919323 (and (bvslt (size!45662 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45662 a!4032)) (bvsgt to!206 i!1445)))))

(declare-fun b!1376328 () Bool)

(declare-fun res!919324 () Bool)

(assert (=> b!1376328 (=> (not res!919324) (not e!779701))))

(declare-fun k!2947 () (_ BitVec 64))

(declare-fun arrayCountValidKeys!0 (array!93425 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1376328 (= res!919324 (= (arrayCountValidKeys!0 (array!93426 (store (arr!45111 a!4032) i!1445 k!2947) (size!45662 a!4032)) (bvadd #b00000000000000000000000000000001 i!1445) to!206) (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206)))))

(declare-fun res!919322 () Bool)

(assert (=> start!116838 (=> (not res!919322) (not e!779701))))

(assert (=> start!116838 (= res!919322 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45662 a!4032))))))

(assert (=> start!116838 e!779701))

(assert (=> start!116838 true))

(declare-fun array_inv!34056 (array!93425) Bool)

(assert (=> start!116838 (array_inv!34056 a!4032)))

(declare-fun b!1376329 () Bool)

(declare-fun res!919325 () Bool)

(assert (=> b!1376329 (=> (not res!919325) (not e!779701))))

(assert (=> b!1376329 (= res!919325 (not (validKeyInArray!0 k!2947)))))

(assert (= (and start!116838 res!919322) b!1376326))

(assert (= (and b!1376326 res!919326) b!1376329))

(assert (= (and b!1376329 res!919325) b!1376327))

(assert (= (and b!1376327 res!919323) b!1376328))

(assert (= (and b!1376328 res!919324) b!1376325))

(declare-fun m!1260447 () Bool)

(assert (=> b!1376326 m!1260447))

(assert (=> b!1376326 m!1260447))

(declare-fun m!1260449 () Bool)

(assert (=> b!1376326 m!1260449))

(declare-fun m!1260451 () Bool)

(assert (=> b!1376328 m!1260451))

(declare-fun m!1260453 () Bool)

(assert (=> b!1376328 m!1260453))

(declare-fun m!1260455 () Bool)

(assert (=> b!1376328 m!1260455))

(declare-fun m!1260457 () Bool)

(assert (=> start!116838 m!1260457))

(declare-fun m!1260459 () Bool)

(assert (=> b!1376329 m!1260459))

(push 1)

(assert (not start!116838))

(assert (not b!1376326))

(assert (not b!1376328))

(assert (not b!1376329))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

