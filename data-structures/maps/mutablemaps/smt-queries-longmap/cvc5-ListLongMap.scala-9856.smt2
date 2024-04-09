; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116864 () Bool)

(assert start!116864)

(declare-fun b!1376569 () Bool)

(declare-fun res!919566 () Bool)

(declare-fun e!779806 () Bool)

(assert (=> b!1376569 (=> (not res!919566) (not e!779806))))

(declare-fun to!206 () (_ BitVec 32))

(declare-fun i!1445 () (_ BitVec 32))

(declare-datatypes ((array!93451 0))(
  ( (array!93452 (arr!45124 (Array (_ BitVec 32) (_ BitVec 64))) (size!45675 (_ BitVec 32))) )
))
(declare-fun a!4032 () array!93451)

(declare-fun k!2947 () (_ BitVec 64))

(declare-fun arrayCountValidKeys!0 (array!93451 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1376569 (= res!919566 (= (arrayCountValidKeys!0 (array!93452 (store (arr!45124 a!4032) i!1445 k!2947) (size!45675 a!4032)) (bvadd #b00000000000000000000000000000001 i!1445) to!206) (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206)))))

(declare-fun b!1376570 () Bool)

(assert (=> b!1376570 (= e!779806 (or (bvslt (bvadd #b00000000000000000000000000000001 i!1445) #b00000000000000000000000000000000) (bvsge to!206 (size!45675 a!4032))))))

(declare-fun b!1376571 () Bool)

(declare-fun res!919570 () Bool)

(assert (=> b!1376571 (=> (not res!919570) (not e!779806))))

(assert (=> b!1376571 (= res!919570 (not (= to!206 (size!45675 a!4032))))))

(declare-fun b!1376572 () Bool)

(declare-fun res!919571 () Bool)

(assert (=> b!1376572 (=> (not res!919571) (not e!779806))))

(assert (=> b!1376572 (= res!919571 (and (bvslt (size!45675 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45675 a!4032)) (bvsgt to!206 i!1445)))))

(declare-fun b!1376573 () Bool)

(declare-fun res!919569 () Bool)

(assert (=> b!1376573 (=> (not res!919569) (not e!779806))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1376573 (= res!919569 (not (validKeyInArray!0 (select (arr!45124 a!4032) to!206))))))

(declare-fun res!919572 () Bool)

(assert (=> start!116864 (=> (not res!919572) (not e!779806))))

(assert (=> start!116864 (= res!919572 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45675 a!4032))))))

(assert (=> start!116864 e!779806))

(assert (=> start!116864 true))

(declare-fun array_inv!34069 (array!93451) Bool)

(assert (=> start!116864 (array_inv!34069 a!4032)))

(declare-fun b!1376574 () Bool)

(declare-fun res!919568 () Bool)

(assert (=> b!1376574 (=> (not res!919568) (not e!779806))))

(assert (=> b!1376574 (= res!919568 (not (validKeyInArray!0 k!2947)))))

(declare-fun b!1376575 () Bool)

(declare-fun res!919567 () Bool)

(assert (=> b!1376575 (=> (not res!919567) (not e!779806))))

(assert (=> b!1376575 (= res!919567 (validKeyInArray!0 (select (arr!45124 a!4032) i!1445)))))

(assert (= (and start!116864 res!919572) b!1376575))

(assert (= (and b!1376575 res!919567) b!1376574))

(assert (= (and b!1376574 res!919568) b!1376572))

(assert (= (and b!1376572 res!919571) b!1376569))

(assert (= (and b!1376569 res!919566) b!1376571))

(assert (= (and b!1376571 res!919570) b!1376573))

(assert (= (and b!1376573 res!919569) b!1376570))

(declare-fun m!1260701 () Bool)

(assert (=> start!116864 m!1260701))

(declare-fun m!1260703 () Bool)

(assert (=> b!1376573 m!1260703))

(assert (=> b!1376573 m!1260703))

(declare-fun m!1260705 () Bool)

(assert (=> b!1376573 m!1260705))

(declare-fun m!1260707 () Bool)

(assert (=> b!1376574 m!1260707))

(declare-fun m!1260709 () Bool)

(assert (=> b!1376569 m!1260709))

(declare-fun m!1260711 () Bool)

(assert (=> b!1376569 m!1260711))

(declare-fun m!1260713 () Bool)

(assert (=> b!1376569 m!1260713))

(declare-fun m!1260715 () Bool)

(assert (=> b!1376575 m!1260715))

(assert (=> b!1376575 m!1260715))

(declare-fun m!1260717 () Bool)

(assert (=> b!1376575 m!1260717))

(push 1)

(assert (not b!1376573))

(assert (not b!1376575))

(assert (not start!116864))

(assert (not b!1376574))

(assert (not b!1376569))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

