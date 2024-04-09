; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116942 () Bool)

(assert start!116942)

(declare-fun b!1377413 () Bool)

(declare-fun res!920249 () Bool)

(declare-fun e!780269 () Bool)

(assert (=> b!1377413 (=> (not res!920249) (not e!780269))))

(declare-fun k!2947 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1377413 (= res!920249 (not (validKeyInArray!0 k!2947)))))

(declare-fun b!1377414 () Bool)

(declare-fun res!920251 () Bool)

(assert (=> b!1377414 (=> (not res!920251) (not e!780269))))

(declare-fun to!206 () (_ BitVec 32))

(declare-datatypes ((array!93529 0))(
  ( (array!93530 (arr!45163 (Array (_ BitVec 32) (_ BitVec 64))) (size!45714 (_ BitVec 32))) )
))
(declare-fun a!4032 () array!93529)

(declare-fun i!1445 () (_ BitVec 32))

(assert (=> b!1377414 (= res!920251 (and (bvslt (size!45714 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45714 a!4032)) (bvsgt to!206 i!1445)))))

(declare-fun lt!606016 () array!93529)

(declare-fun e!780267 () Bool)

(declare-fun b!1377415 () Bool)

(declare-fun arrayCountValidKeys!0 (array!93529 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1377415 (= e!780267 (not (= (arrayCountValidKeys!0 lt!606016 (bvadd #b00000000000000000000000000000001 i!1445) (size!45714 a!4032)) (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (size!45714 a!4032)))))))

(declare-fun res!920253 () Bool)

(assert (=> start!116942 (=> (not res!920253) (not e!780269))))

(assert (=> start!116942 (= res!920253 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45714 a!4032))))))

(assert (=> start!116942 e!780269))

(assert (=> start!116942 true))

(declare-fun array_inv!34108 (array!93529) Bool)

(assert (=> start!116942 (array_inv!34108 a!4032)))

(declare-fun b!1377416 () Bool)

(declare-fun res!920248 () Bool)

(assert (=> b!1377416 (=> (not res!920248) (not e!780269))))

(assert (=> b!1377416 (= res!920248 (validKeyInArray!0 (select (arr!45163 a!4032) i!1445)))))

(declare-fun b!1377417 () Bool)

(declare-fun res!920250 () Bool)

(assert (=> b!1377417 (=> (not res!920250) (not e!780267))))

(assert (=> b!1377417 (= res!920250 (= to!206 (size!45714 a!4032)))))

(declare-fun b!1377418 () Bool)

(assert (=> b!1377418 (= e!780269 e!780267)))

(declare-fun res!920252 () Bool)

(assert (=> b!1377418 (=> (not res!920252) (not e!780267))))

(assert (=> b!1377418 (= res!920252 (= (arrayCountValidKeys!0 lt!606016 (bvadd #b00000000000000000000000000000001 i!1445) to!206) (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206)))))

(assert (=> b!1377418 (= lt!606016 (array!93530 (store (arr!45163 a!4032) i!1445 k!2947) (size!45714 a!4032)))))

(assert (= (and start!116942 res!920253) b!1377416))

(assert (= (and b!1377416 res!920248) b!1377413))

(assert (= (and b!1377413 res!920249) b!1377414))

(assert (= (and b!1377414 res!920251) b!1377418))

(assert (= (and b!1377418 res!920252) b!1377417))

(assert (= (and b!1377417 res!920250) b!1377415))

(declare-fun m!1261791 () Bool)

(assert (=> start!116942 m!1261791))

(declare-fun m!1261793 () Bool)

(assert (=> b!1377416 m!1261793))

(assert (=> b!1377416 m!1261793))

(declare-fun m!1261795 () Bool)

(assert (=> b!1377416 m!1261795))

(declare-fun m!1261797 () Bool)

(assert (=> b!1377418 m!1261797))

(declare-fun m!1261799 () Bool)

(assert (=> b!1377418 m!1261799))

(declare-fun m!1261801 () Bool)

(assert (=> b!1377418 m!1261801))

(declare-fun m!1261803 () Bool)

(assert (=> b!1377413 m!1261803))

(declare-fun m!1261805 () Bool)

(assert (=> b!1377415 m!1261805))

(declare-fun m!1261807 () Bool)

(assert (=> b!1377415 m!1261807))

(push 1)

(assert (not b!1377413))

(assert (not b!1377418))

(assert (not b!1377416))

(assert (not start!116942))

(assert (not b!1377415))

