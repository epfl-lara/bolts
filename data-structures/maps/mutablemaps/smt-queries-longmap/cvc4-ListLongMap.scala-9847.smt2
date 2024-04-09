; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116814 () Bool)

(assert start!116814)

(declare-fun to!206 () (_ BitVec 32))

(declare-fun i!1445 () (_ BitVec 32))

(declare-datatypes ((array!93401 0))(
  ( (array!93402 (arr!45099 (Array (_ BitVec 32) (_ BitVec 64))) (size!45650 (_ BitVec 32))) )
))
(declare-fun a!4032 () array!93401)

(declare-fun b!1376163 () Bool)

(declare-fun e!779629 () Bool)

(assert (=> b!1376163 (= e!779629 (and (= to!206 (size!45650 a!4032)) (bvslt (bvadd #b00000000000000000000000000000001 i!1445) #b00000000000000000000000000000000)))))

(declare-fun b!1376164 () Bool)

(declare-fun res!919162 () Bool)

(assert (=> b!1376164 (=> (not res!919162) (not e!779629))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1376164 (= res!919162 (validKeyInArray!0 (select (arr!45099 a!4032) i!1445)))))

(declare-fun b!1376165 () Bool)

(declare-fun res!919160 () Bool)

(assert (=> b!1376165 (=> (not res!919160) (not e!779629))))

(declare-fun k!2947 () (_ BitVec 64))

(declare-fun arrayCountValidKeys!0 (array!93401 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1376165 (= res!919160 (= (arrayCountValidKeys!0 (array!93402 (store (arr!45099 a!4032) i!1445 k!2947) (size!45650 a!4032)) (bvadd #b00000000000000000000000000000001 i!1445) to!206) (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206)))))

(declare-fun res!919163 () Bool)

(assert (=> start!116814 (=> (not res!919163) (not e!779629))))

(assert (=> start!116814 (= res!919163 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45650 a!4032))))))

(assert (=> start!116814 e!779629))

(assert (=> start!116814 true))

(declare-fun array_inv!34044 (array!93401) Bool)

(assert (=> start!116814 (array_inv!34044 a!4032)))

(declare-fun b!1376166 () Bool)

(declare-fun res!919161 () Bool)

(assert (=> b!1376166 (=> (not res!919161) (not e!779629))))

(assert (=> b!1376166 (= res!919161 (not (validKeyInArray!0 k!2947)))))

(declare-fun b!1376167 () Bool)

(declare-fun res!919164 () Bool)

(assert (=> b!1376167 (=> (not res!919164) (not e!779629))))

(assert (=> b!1376167 (= res!919164 (and (bvslt (size!45650 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45650 a!4032)) (bvsgt to!206 i!1445)))))

(assert (= (and start!116814 res!919163) b!1376164))

(assert (= (and b!1376164 res!919162) b!1376166))

(assert (= (and b!1376166 res!919161) b!1376167))

(assert (= (and b!1376167 res!919164) b!1376165))

(assert (= (and b!1376165 res!919160) b!1376163))

(declare-fun m!1260279 () Bool)

(assert (=> b!1376164 m!1260279))

(assert (=> b!1376164 m!1260279))

(declare-fun m!1260281 () Bool)

(assert (=> b!1376164 m!1260281))

(declare-fun m!1260283 () Bool)

(assert (=> b!1376165 m!1260283))

(declare-fun m!1260285 () Bool)

(assert (=> b!1376165 m!1260285))

(declare-fun m!1260287 () Bool)

(assert (=> b!1376165 m!1260287))

(declare-fun m!1260289 () Bool)

(assert (=> start!116814 m!1260289))

(declare-fun m!1260291 () Bool)

(assert (=> b!1376166 m!1260291))

(push 1)

(assert (not b!1376166))

(assert (not b!1376165))

(assert (not start!116814))

(assert (not b!1376164))

(check-sat)

(pop 1)

