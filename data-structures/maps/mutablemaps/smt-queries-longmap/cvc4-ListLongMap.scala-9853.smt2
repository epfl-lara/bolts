; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116850 () Bool)

(assert start!116850)

(declare-fun b!1376431 () Bool)

(declare-fun res!919432 () Bool)

(declare-fun e!779737 () Bool)

(assert (=> b!1376431 (=> (not res!919432) (not e!779737))))

(declare-fun to!206 () (_ BitVec 32))

(declare-datatypes ((array!93437 0))(
  ( (array!93438 (arr!45117 (Array (_ BitVec 32) (_ BitVec 64))) (size!45668 (_ BitVec 32))) )
))
(declare-fun a!4032 () array!93437)

(assert (=> b!1376431 (= res!919432 (not (= to!206 (size!45668 a!4032))))))

(declare-fun b!1376433 () Bool)

(declare-fun res!919433 () Bool)

(assert (=> b!1376433 (=> (not res!919433) (not e!779737))))

(declare-fun k!2947 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1376433 (= res!919433 (not (validKeyInArray!0 k!2947)))))

(declare-fun b!1376434 () Bool)

(declare-fun res!919429 () Bool)

(assert (=> b!1376434 (=> (not res!919429) (not e!779737))))

(assert (=> b!1376434 (= res!919429 (validKeyInArray!0 (select (arr!45117 a!4032) to!206)))))

(declare-fun b!1376435 () Bool)

(declare-fun res!919434 () Bool)

(assert (=> b!1376435 (=> (not res!919434) (not e!779737))))

(declare-fun i!1445 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93437 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1376435 (= res!919434 (= (arrayCountValidKeys!0 (array!93438 (store (arr!45117 a!4032) i!1445 k!2947) (size!45668 a!4032)) (bvadd #b00000000000000000000000000000001 i!1445) to!206) (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206)))))

(declare-fun b!1376432 () Bool)

(declare-fun res!919430 () Bool)

(assert (=> b!1376432 (=> (not res!919430) (not e!779737))))

(assert (=> b!1376432 (= res!919430 (validKeyInArray!0 (select (arr!45117 a!4032) i!1445)))))

(declare-fun res!919428 () Bool)

(assert (=> start!116850 (=> (not res!919428) (not e!779737))))

(assert (=> start!116850 (= res!919428 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45668 a!4032))))))

(assert (=> start!116850 e!779737))

(assert (=> start!116850 true))

(declare-fun array_inv!34062 (array!93437) Bool)

(assert (=> start!116850 (array_inv!34062 a!4032)))

(declare-fun b!1376436 () Bool)

(declare-fun res!919431 () Bool)

(assert (=> b!1376436 (=> (not res!919431) (not e!779737))))

(assert (=> b!1376436 (= res!919431 (and (bvslt (size!45668 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45668 a!4032)) (bvsgt to!206 i!1445)))))

(declare-fun b!1376437 () Bool)

(assert (=> b!1376437 (= e!779737 (or (bvslt (bvadd #b00000000000000000000000000000001 i!1445) #b00000000000000000000000000000000) (bvsge to!206 (size!45668 a!4032))))))

(assert (= (and start!116850 res!919428) b!1376432))

(assert (= (and b!1376432 res!919430) b!1376433))

(assert (= (and b!1376433 res!919433) b!1376436))

(assert (= (and b!1376436 res!919431) b!1376435))

(assert (= (and b!1376435 res!919434) b!1376431))

(assert (= (and b!1376431 res!919432) b!1376434))

(assert (= (and b!1376434 res!919429) b!1376437))

(declare-fun m!1260539 () Bool)

(assert (=> b!1376435 m!1260539))

(declare-fun m!1260541 () Bool)

(assert (=> b!1376435 m!1260541))

(declare-fun m!1260543 () Bool)

(assert (=> b!1376435 m!1260543))

(declare-fun m!1260545 () Bool)

(assert (=> b!1376433 m!1260545))

(declare-fun m!1260547 () Bool)

(assert (=> b!1376432 m!1260547))

(assert (=> b!1376432 m!1260547))

(declare-fun m!1260549 () Bool)

(assert (=> b!1376432 m!1260549))

(declare-fun m!1260551 () Bool)

(assert (=> start!116850 m!1260551))

(declare-fun m!1260553 () Bool)

(assert (=> b!1376434 m!1260553))

(assert (=> b!1376434 m!1260553))

(declare-fun m!1260555 () Bool)

(assert (=> b!1376434 m!1260555))

(push 1)

(assert (not start!116850))

(assert (not b!1376433))

(assert (not b!1376434))

(assert (not b!1376435))

(assert (not b!1376432))

(check-sat)

(pop 1)

(push 1)

(check-sat)

