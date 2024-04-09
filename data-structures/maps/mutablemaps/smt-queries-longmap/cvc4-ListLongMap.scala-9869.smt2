; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116946 () Bool)

(assert start!116946)

(declare-fun b!1377449 () Bool)

(declare-fun res!920289 () Bool)

(declare-fun e!780286 () Bool)

(assert (=> b!1377449 (=> (not res!920289) (not e!780286))))

(declare-fun i!1445 () (_ BitVec 32))

(declare-datatypes ((array!93533 0))(
  ( (array!93534 (arr!45165 (Array (_ BitVec 32) (_ BitVec 64))) (size!45716 (_ BitVec 32))) )
))
(declare-fun a!4032 () array!93533)

(declare-fun to!206 () (_ BitVec 32))

(assert (=> b!1377449 (= res!920289 (and (bvslt (size!45716 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45716 a!4032)) (bvsgt to!206 i!1445)))))

(declare-fun b!1377451 () Bool)

(declare-fun res!920284 () Bool)

(declare-fun e!780285 () Bool)

(assert (=> b!1377451 (=> (not res!920284) (not e!780285))))

(assert (=> b!1377451 (= res!920284 (= to!206 (size!45716 a!4032)))))

(declare-fun b!1377452 () Bool)

(declare-fun res!920285 () Bool)

(assert (=> b!1377452 (=> (not res!920285) (not e!780286))))

(declare-fun k!2947 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1377452 (= res!920285 (not (validKeyInArray!0 k!2947)))))

(declare-fun b!1377453 () Bool)

(declare-fun res!920286 () Bool)

(assert (=> b!1377453 (=> (not res!920286) (not e!780286))))

(assert (=> b!1377453 (= res!920286 (validKeyInArray!0 (select (arr!45165 a!4032) i!1445)))))

(declare-fun lt!606022 () array!93533)

(declare-fun b!1377454 () Bool)

(declare-fun arrayCountValidKeys!0 (array!93533 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1377454 (= e!780285 (not (= (arrayCountValidKeys!0 lt!606022 (bvadd #b00000000000000000000000000000001 i!1445) (size!45716 a!4032)) (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (size!45716 a!4032)))))))

(declare-fun b!1377450 () Bool)

(assert (=> b!1377450 (= e!780286 e!780285)))

(declare-fun res!920288 () Bool)

(assert (=> b!1377450 (=> (not res!920288) (not e!780285))))

(assert (=> b!1377450 (= res!920288 (= (arrayCountValidKeys!0 lt!606022 (bvadd #b00000000000000000000000000000001 i!1445) to!206) (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206)))))

(assert (=> b!1377450 (= lt!606022 (array!93534 (store (arr!45165 a!4032) i!1445 k!2947) (size!45716 a!4032)))))

(declare-fun res!920287 () Bool)

(assert (=> start!116946 (=> (not res!920287) (not e!780286))))

(assert (=> start!116946 (= res!920287 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45716 a!4032))))))

(assert (=> start!116946 e!780286))

(assert (=> start!116946 true))

(declare-fun array_inv!34110 (array!93533) Bool)

(assert (=> start!116946 (array_inv!34110 a!4032)))

(assert (= (and start!116946 res!920287) b!1377453))

(assert (= (and b!1377453 res!920286) b!1377452))

(assert (= (and b!1377452 res!920285) b!1377449))

(assert (= (and b!1377449 res!920289) b!1377450))

(assert (= (and b!1377450 res!920288) b!1377451))

(assert (= (and b!1377451 res!920284) b!1377454))

(declare-fun m!1261827 () Bool)

(assert (=> b!1377450 m!1261827))

(declare-fun m!1261829 () Bool)

(assert (=> b!1377450 m!1261829))

(declare-fun m!1261831 () Bool)

(assert (=> b!1377450 m!1261831))

(declare-fun m!1261833 () Bool)

(assert (=> b!1377452 m!1261833))

(declare-fun m!1261835 () Bool)

(assert (=> b!1377453 m!1261835))

(assert (=> b!1377453 m!1261835))

(declare-fun m!1261837 () Bool)

(assert (=> b!1377453 m!1261837))

(declare-fun m!1261839 () Bool)

(assert (=> b!1377454 m!1261839))

(declare-fun m!1261841 () Bool)

(assert (=> b!1377454 m!1261841))

(declare-fun m!1261843 () Bool)

(assert (=> start!116946 m!1261843))

(push 1)

(assert (not start!116946))

(assert (not b!1377453))

(assert (not b!1377450))

(assert (not b!1377454))

(assert (not b!1377452))

(check-sat)

