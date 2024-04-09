; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116810 () Bool)

(assert start!116810)

(declare-fun b!1376133 () Bool)

(declare-fun res!919133 () Bool)

(declare-fun e!779617 () Bool)

(assert (=> b!1376133 (=> (not res!919133) (not e!779617))))

(declare-fun to!206 () (_ BitVec 32))

(declare-fun i!1445 () (_ BitVec 32))

(declare-datatypes ((array!93397 0))(
  ( (array!93398 (arr!45097 (Array (_ BitVec 32) (_ BitVec 64))) (size!45648 (_ BitVec 32))) )
))
(declare-fun a!4032 () array!93397)

(assert (=> b!1376133 (= res!919133 (and (bvslt (size!45648 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45648 a!4032)) (bvsgt to!206 i!1445)))))

(declare-fun b!1376134 () Bool)

(declare-fun res!919130 () Bool)

(assert (=> b!1376134 (=> (not res!919130) (not e!779617))))

(declare-fun k!2947 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1376134 (= res!919130 (not (validKeyInArray!0 k!2947)))))

(declare-fun res!919131 () Bool)

(assert (=> start!116810 (=> (not res!919131) (not e!779617))))

(assert (=> start!116810 (= res!919131 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45648 a!4032))))))

(assert (=> start!116810 e!779617))

(assert (=> start!116810 true))

(declare-fun array_inv!34042 (array!93397) Bool)

(assert (=> start!116810 (array_inv!34042 a!4032)))

(declare-fun b!1376135 () Bool)

(declare-fun res!919134 () Bool)

(assert (=> b!1376135 (=> (not res!919134) (not e!779617))))

(assert (=> b!1376135 (= res!919134 (validKeyInArray!0 (select (arr!45097 a!4032) i!1445)))))

(declare-fun b!1376136 () Bool)

(declare-fun res!919132 () Bool)

(assert (=> b!1376136 (=> (not res!919132) (not e!779617))))

(declare-fun arrayCountValidKeys!0 (array!93397 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1376136 (= res!919132 (= (arrayCountValidKeys!0 (array!93398 (store (arr!45097 a!4032) i!1445 k!2947) (size!45648 a!4032)) (bvadd #b00000000000000000000000000000001 i!1445) to!206) (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206)))))

(declare-fun b!1376137 () Bool)

(assert (=> b!1376137 (= e!779617 (and (= to!206 (size!45648 a!4032)) (bvslt (bvadd #b00000000000000000000000000000001 i!1445) #b00000000000000000000000000000000)))))

(assert (= (and start!116810 res!919131) b!1376135))

(assert (= (and b!1376135 res!919134) b!1376134))

(assert (= (and b!1376134 res!919130) b!1376133))

(assert (= (and b!1376133 res!919133) b!1376136))

(assert (= (and b!1376136 res!919132) b!1376137))

(declare-fun m!1260251 () Bool)

(assert (=> b!1376134 m!1260251))

(declare-fun m!1260253 () Bool)

(assert (=> start!116810 m!1260253))

(declare-fun m!1260255 () Bool)

(assert (=> b!1376135 m!1260255))

(assert (=> b!1376135 m!1260255))

(declare-fun m!1260257 () Bool)

(assert (=> b!1376135 m!1260257))

(declare-fun m!1260259 () Bool)

(assert (=> b!1376136 m!1260259))

(declare-fun m!1260261 () Bool)

(assert (=> b!1376136 m!1260261))

(declare-fun m!1260263 () Bool)

(assert (=> b!1376136 m!1260263))

(push 1)

(assert (not b!1376134))

(assert (not start!116810))

(assert (not b!1376135))

(assert (not b!1376136))

(check-sat)

