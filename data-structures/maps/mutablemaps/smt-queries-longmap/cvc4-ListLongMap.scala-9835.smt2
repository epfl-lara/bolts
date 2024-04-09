; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116742 () Bool)

(assert start!116742)

(declare-fun b!1375311 () Bool)

(declare-fun res!918486 () Bool)

(declare-fun e!779135 () Bool)

(assert (=> b!1375311 (=> (not res!918486) (not e!779135))))

(declare-fun i!1445 () (_ BitVec 32))

(declare-datatypes ((array!93329 0))(
  ( (array!93330 (arr!45063 (Array (_ BitVec 32) (_ BitVec 64))) (size!45614 (_ BitVec 32))) )
))
(declare-fun a!4032 () array!93329)

(declare-fun to!206 () (_ BitVec 32))

(assert (=> b!1375311 (= res!918486 (and (bvslt (size!45614 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45614 a!4032)) (bvsgt to!206 i!1445)))))

(declare-fun b!1375310 () Bool)

(declare-fun res!918488 () Bool)

(assert (=> b!1375310 (=> (not res!918488) (not e!779135))))

(declare-fun k!2947 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1375310 (= res!918488 (not (validKeyInArray!0 k!2947)))))

(declare-fun res!918489 () Bool)

(assert (=> start!116742 (=> (not res!918489) (not e!779135))))

(assert (=> start!116742 (= res!918489 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45614 a!4032))))))

(assert (=> start!116742 e!779135))

(assert (=> start!116742 true))

(declare-fun array_inv!34008 (array!93329) Bool)

(assert (=> start!116742 (array_inv!34008 a!4032)))

(declare-fun b!1375312 () Bool)

(assert (=> b!1375312 (= e!779135 false)))

(declare-fun lt!604294 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93329 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1375312 (= lt!604294 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun lt!604293 () (_ BitVec 32))

(assert (=> b!1375312 (= lt!604293 (arrayCountValidKeys!0 (array!93330 (store (arr!45063 a!4032) i!1445 k!2947) (size!45614 a!4032)) (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun b!1375309 () Bool)

(declare-fun res!918487 () Bool)

(assert (=> b!1375309 (=> (not res!918487) (not e!779135))))

(assert (=> b!1375309 (= res!918487 (validKeyInArray!0 (select (arr!45063 a!4032) i!1445)))))

(assert (= (and start!116742 res!918489) b!1375309))

(assert (= (and b!1375309 res!918487) b!1375310))

(assert (= (and b!1375310 res!918488) b!1375311))

(assert (= (and b!1375311 res!918486) b!1375312))

(declare-fun m!1259195 () Bool)

(assert (=> b!1375310 m!1259195))

(declare-fun m!1259197 () Bool)

(assert (=> start!116742 m!1259197))

(declare-fun m!1259199 () Bool)

(assert (=> b!1375312 m!1259199))

(declare-fun m!1259201 () Bool)

(assert (=> b!1375312 m!1259201))

(declare-fun m!1259203 () Bool)

(assert (=> b!1375312 m!1259203))

(declare-fun m!1259205 () Bool)

(assert (=> b!1375309 m!1259205))

(assert (=> b!1375309 m!1259205))

(declare-fun m!1259207 () Bool)

(assert (=> b!1375309 m!1259207))

(push 1)

(assert (not start!116742))

(assert (not b!1375309))

(assert (not b!1375310))

(assert (not b!1375312))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

