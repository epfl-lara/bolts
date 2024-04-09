; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116748 () Bool)

(assert start!116748)

(declare-fun b!1375361 () Bool)

(declare-fun res!918541 () Bool)

(declare-fun e!779160 () Bool)

(assert (=> b!1375361 (=> (not res!918541) (not e!779160))))

(declare-datatypes ((array!93335 0))(
  ( (array!93336 (arr!45066 (Array (_ BitVec 32) (_ BitVec 64))) (size!45617 (_ BitVec 32))) )
))
(declare-fun a!4032 () array!93335)

(declare-fun i!1445 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1375361 (= res!918541 (validKeyInArray!0 (select (arr!45066 a!4032) i!1445)))))

(declare-fun res!918542 () Bool)

(assert (=> start!116748 (=> (not res!918542) (not e!779160))))

(assert (=> start!116748 (= res!918542 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45617 a!4032))))))

(assert (=> start!116748 e!779160))

(assert (=> start!116748 true))

(declare-fun array_inv!34011 (array!93335) Bool)

(assert (=> start!116748 (array_inv!34011 a!4032)))

(declare-fun b!1375362 () Bool)

(declare-fun e!779161 () Bool)

(assert (=> b!1375362 (= e!779160 e!779161)))

(declare-fun res!918538 () Bool)

(assert (=> b!1375362 (=> (not res!918538) (not e!779161))))

(declare-fun lt!604319 () (_ BitVec 32))

(declare-fun to!206 () (_ BitVec 32))

(declare-fun lt!604321 () (_ BitVec 32))

(assert (=> b!1375362 (= res!918538 (and (= lt!604319 lt!604321) (not (= to!206 (size!45617 a!4032)))))))

(declare-fun arrayCountValidKeys!0 (array!93335 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1375362 (= lt!604321 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun k!2947 () (_ BitVec 64))

(assert (=> b!1375362 (= lt!604319 (arrayCountValidKeys!0 (array!93336 (store (arr!45066 a!4032) i!1445 k!2947) (size!45617 a!4032)) (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun b!1375363 () Bool)

(declare-fun res!918540 () Bool)

(assert (=> b!1375363 (=> (not res!918540) (not e!779160))))

(assert (=> b!1375363 (= res!918540 (and (bvslt (size!45617 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45617 a!4032)) (bvsgt to!206 i!1445)))))

(declare-fun b!1375364 () Bool)

(declare-fun res!918539 () Bool)

(assert (=> b!1375364 (=> (not res!918539) (not e!779160))))

(assert (=> b!1375364 (= res!918539 (not (validKeyInArray!0 k!2947)))))

(declare-fun b!1375365 () Bool)

(declare-fun res!918543 () Bool)

(assert (=> b!1375365 (=> (not res!918543) (not e!779161))))

(assert (=> b!1375365 (= res!918543 (not (validKeyInArray!0 (select (arr!45066 a!4032) to!206))))))

(declare-fun b!1375366 () Bool)

(assert (=> b!1375366 (= e!779161 (not true))))

(assert (=> b!1375366 (= (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)) lt!604321)))

(declare-datatypes ((Unit!45495 0))(
  ( (Unit!45496) )
))
(declare-fun lt!604320 () Unit!45495)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!93335 (_ BitVec 32) (_ BitVec 32)) Unit!45495)

(assert (=> b!1375366 (= lt!604320 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (= (and start!116748 res!918542) b!1375361))

(assert (= (and b!1375361 res!918541) b!1375364))

(assert (= (and b!1375364 res!918539) b!1375363))

(assert (= (and b!1375363 res!918540) b!1375362))

(assert (= (and b!1375362 res!918538) b!1375365))

(assert (= (and b!1375365 res!918543) b!1375366))

(declare-fun m!1259253 () Bool)

(assert (=> b!1375362 m!1259253))

(declare-fun m!1259255 () Bool)

(assert (=> b!1375362 m!1259255))

(declare-fun m!1259257 () Bool)

(assert (=> b!1375362 m!1259257))

(declare-fun m!1259259 () Bool)

(assert (=> b!1375361 m!1259259))

(assert (=> b!1375361 m!1259259))

(declare-fun m!1259261 () Bool)

(assert (=> b!1375361 m!1259261))

(declare-fun m!1259263 () Bool)

(assert (=> b!1375364 m!1259263))

(declare-fun m!1259265 () Bool)

(assert (=> start!116748 m!1259265))

(declare-fun m!1259267 () Bool)

(assert (=> b!1375365 m!1259267))

(assert (=> b!1375365 m!1259267))

(declare-fun m!1259269 () Bool)

(assert (=> b!1375365 m!1259269))

(declare-fun m!1259271 () Bool)

(assert (=> b!1375366 m!1259271))

(declare-fun m!1259273 () Bool)

(assert (=> b!1375366 m!1259273))

(push 1)

(assert (not b!1375366))

(assert (not b!1375361))

(assert (not start!116748))

(assert (not b!1375365))

(assert (not b!1375364))

