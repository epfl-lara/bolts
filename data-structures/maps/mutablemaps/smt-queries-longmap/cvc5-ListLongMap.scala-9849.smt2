; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116822 () Bool)

(assert start!116822)

(declare-fun res!919212 () Bool)

(declare-fun e!779653 () Bool)

(assert (=> start!116822 (=> (not res!919212) (not e!779653))))

(declare-fun i!1445 () (_ BitVec 32))

(declare-datatypes ((array!93409 0))(
  ( (array!93410 (arr!45103 (Array (_ BitVec 32) (_ BitVec 64))) (size!45654 (_ BitVec 32))) )
))
(declare-fun a!4032 () array!93409)

(assert (=> start!116822 (= res!919212 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45654 a!4032))))))

(assert (=> start!116822 e!779653))

(assert (=> start!116822 true))

(declare-fun array_inv!34048 (array!93409) Bool)

(assert (=> start!116822 (array_inv!34048 a!4032)))

(declare-fun b!1376214 () Bool)

(declare-fun res!919213 () Bool)

(assert (=> b!1376214 (=> (not res!919213) (not e!779653))))

(declare-fun k!2947 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1376214 (= res!919213 (not (validKeyInArray!0 k!2947)))))

(declare-fun to!206 () (_ BitVec 32))

(declare-fun b!1376215 () Bool)

(assert (=> b!1376215 (= e!779653 (and (= to!206 (size!45654 a!4032)) (bvslt (bvadd #b00000000000000000000000000000001 i!1445) #b00000000000000000000000000000000)))))

(declare-fun b!1376216 () Bool)

(declare-fun res!919211 () Bool)

(assert (=> b!1376216 (=> (not res!919211) (not e!779653))))

(assert (=> b!1376216 (= res!919211 (and (bvslt (size!45654 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45654 a!4032)) (bvsgt to!206 i!1445)))))

(declare-fun b!1376217 () Bool)

(declare-fun res!919215 () Bool)

(assert (=> b!1376217 (=> (not res!919215) (not e!779653))))

(declare-fun arrayCountValidKeys!0 (array!93409 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1376217 (= res!919215 (= (arrayCountValidKeys!0 (array!93410 (store (arr!45103 a!4032) i!1445 k!2947) (size!45654 a!4032)) (bvadd #b00000000000000000000000000000001 i!1445) to!206) (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206)))))

(declare-fun b!1376218 () Bool)

(declare-fun res!919214 () Bool)

(assert (=> b!1376218 (=> (not res!919214) (not e!779653))))

(assert (=> b!1376218 (= res!919214 (validKeyInArray!0 (select (arr!45103 a!4032) i!1445)))))

(assert (= (and start!116822 res!919212) b!1376218))

(assert (= (and b!1376218 res!919214) b!1376214))

(assert (= (and b!1376214 res!919213) b!1376216))

(assert (= (and b!1376216 res!919211) b!1376217))

(assert (= (and b!1376217 res!919215) b!1376215))

(declare-fun m!1260335 () Bool)

(assert (=> start!116822 m!1260335))

(declare-fun m!1260337 () Bool)

(assert (=> b!1376214 m!1260337))

(declare-fun m!1260339 () Bool)

(assert (=> b!1376217 m!1260339))

(declare-fun m!1260341 () Bool)

(assert (=> b!1376217 m!1260341))

(declare-fun m!1260343 () Bool)

(assert (=> b!1376217 m!1260343))

(declare-fun m!1260345 () Bool)

(assert (=> b!1376218 m!1260345))

(assert (=> b!1376218 m!1260345))

(declare-fun m!1260347 () Bool)

(assert (=> b!1376218 m!1260347))

(push 1)

(assert (not b!1376217))

(assert (not b!1376218))

(assert (not start!116822))

(assert (not b!1376214))

(check-sat)

