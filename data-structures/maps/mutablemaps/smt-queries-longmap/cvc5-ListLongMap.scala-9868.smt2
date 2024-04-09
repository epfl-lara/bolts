; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116936 () Bool)

(assert start!116936)

(declare-fun b!1377376 () Bool)

(declare-fun e!780248 () Bool)

(assert (=> b!1377376 (= e!780248 false)))

(declare-fun to!206 () (_ BitVec 32))

(declare-fun lt!606001 () (_ BitVec 32))

(declare-fun i!1445 () (_ BitVec 32))

(declare-datatypes ((array!93523 0))(
  ( (array!93524 (arr!45160 (Array (_ BitVec 32) (_ BitVec 64))) (size!45711 (_ BitVec 32))) )
))
(declare-fun a!4032 () array!93523)

(declare-fun arrayCountValidKeys!0 (array!93523 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1377376 (= lt!606001 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun k!2947 () (_ BitVec 64))

(declare-fun lt!606000 () (_ BitVec 32))

(assert (=> b!1377376 (= lt!606000 (arrayCountValidKeys!0 (array!93524 (store (arr!45160 a!4032) i!1445 k!2947) (size!45711 a!4032)) (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun b!1377375 () Bool)

(declare-fun res!920209 () Bool)

(assert (=> b!1377375 (=> (not res!920209) (not e!780248))))

(assert (=> b!1377375 (= res!920209 (and (bvslt (size!45711 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45711 a!4032)) (bvsgt to!206 i!1445)))))

(declare-fun b!1377374 () Bool)

(declare-fun res!920211 () Bool)

(assert (=> b!1377374 (=> (not res!920211) (not e!780248))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1377374 (= res!920211 (not (validKeyInArray!0 k!2947)))))

(declare-fun b!1377373 () Bool)

(declare-fun res!920210 () Bool)

(assert (=> b!1377373 (=> (not res!920210) (not e!780248))))

(assert (=> b!1377373 (= res!920210 (validKeyInArray!0 (select (arr!45160 a!4032) i!1445)))))

(declare-fun res!920208 () Bool)

(assert (=> start!116936 (=> (not res!920208) (not e!780248))))

(assert (=> start!116936 (= res!920208 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45711 a!4032))))))

(assert (=> start!116936 e!780248))

(assert (=> start!116936 true))

(declare-fun array_inv!34105 (array!93523) Bool)

(assert (=> start!116936 (array_inv!34105 a!4032)))

(assert (= (and start!116936 res!920208) b!1377373))

(assert (= (and b!1377373 res!920210) b!1377374))

(assert (= (and b!1377374 res!920211) b!1377375))

(assert (= (and b!1377375 res!920209) b!1377376))

(declare-fun m!1261749 () Bool)

(assert (=> b!1377376 m!1261749))

(declare-fun m!1261751 () Bool)

(assert (=> b!1377376 m!1261751))

(declare-fun m!1261753 () Bool)

(assert (=> b!1377376 m!1261753))

(declare-fun m!1261755 () Bool)

(assert (=> b!1377374 m!1261755))

(declare-fun m!1261757 () Bool)

(assert (=> b!1377373 m!1261757))

(assert (=> b!1377373 m!1261757))

(declare-fun m!1261759 () Bool)

(assert (=> b!1377373 m!1261759))

(declare-fun m!1261761 () Bool)

(assert (=> start!116936 m!1261761))

(push 1)

(assert (not b!1377376))

(assert (not start!116936))

(assert (not b!1377373))

(assert (not b!1377374))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

