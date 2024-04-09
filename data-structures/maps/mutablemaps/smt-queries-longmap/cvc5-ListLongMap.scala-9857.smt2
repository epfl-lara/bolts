; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116870 () Bool)

(assert start!116870)

(declare-fun b!1376631 () Bool)

(declare-fun res!919628 () Bool)

(declare-fun e!779826 () Bool)

(assert (=> b!1376631 (=> (not res!919628) (not e!779826))))

(declare-datatypes ((array!93457 0))(
  ( (array!93458 (arr!45127 (Array (_ BitVec 32) (_ BitVec 64))) (size!45678 (_ BitVec 32))) )
))
(declare-fun a!4032 () array!93457)

(declare-fun i!1445 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1376631 (= res!919628 (validKeyInArray!0 (select (arr!45127 a!4032) i!1445)))))

(declare-fun b!1376632 () Bool)

(declare-fun e!779827 () Bool)

(assert (=> b!1376632 (= e!779826 e!779827)))

(declare-fun res!919630 () Bool)

(assert (=> b!1376632 (=> (not res!919630) (not e!779827))))

(declare-fun lt!605283 () (_ BitVec 32))

(declare-fun lt!605282 () (_ BitVec 32))

(declare-fun to!206 () (_ BitVec 32))

(assert (=> b!1376632 (= res!919630 (and (= lt!605283 lt!605282) (not (= to!206 (size!45678 a!4032)))))))

(declare-fun arrayCountValidKeys!0 (array!93457 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1376632 (= lt!605282 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun k!2947 () (_ BitVec 64))

(assert (=> b!1376632 (= lt!605283 (arrayCountValidKeys!0 (array!93458 (store (arr!45127 a!4032) i!1445 k!2947) (size!45678 a!4032)) (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun b!1376633 () Bool)

(declare-fun res!919632 () Bool)

(assert (=> b!1376633 (=> (not res!919632) (not e!779826))))

(assert (=> b!1376633 (= res!919632 (and (bvslt (size!45678 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45678 a!4032)) (bvsgt to!206 i!1445)))))

(declare-fun b!1376634 () Bool)

(declare-fun res!919629 () Bool)

(assert (=> b!1376634 (=> (not res!919629) (not e!779826))))

(assert (=> b!1376634 (= res!919629 (not (validKeyInArray!0 k!2947)))))

(declare-fun b!1376635 () Bool)

(assert (=> b!1376635 (= e!779827 (not true))))

(assert (=> b!1376635 (= (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)) lt!605282)))

(declare-datatypes ((Unit!45569 0))(
  ( (Unit!45570) )
))
(declare-fun lt!605284 () Unit!45569)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!93457 (_ BitVec 32) (_ BitVec 32)) Unit!45569)

(assert (=> b!1376635 (= lt!605284 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun res!919627 () Bool)

(assert (=> start!116870 (=> (not res!919627) (not e!779826))))

(assert (=> start!116870 (= res!919627 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45678 a!4032))))))

(assert (=> start!116870 e!779826))

(assert (=> start!116870 true))

(declare-fun array_inv!34072 (array!93457) Bool)

(assert (=> start!116870 (array_inv!34072 a!4032)))

(declare-fun b!1376630 () Bool)

(declare-fun res!919631 () Bool)

(assert (=> b!1376630 (=> (not res!919631) (not e!779827))))

(assert (=> b!1376630 (= res!919631 (not (validKeyInArray!0 (select (arr!45127 a!4032) to!206))))))

(assert (= (and start!116870 res!919627) b!1376631))

(assert (= (and b!1376631 res!919628) b!1376634))

(assert (= (and b!1376634 res!919629) b!1376633))

(assert (= (and b!1376633 res!919632) b!1376632))

(assert (= (and b!1376632 res!919630) b!1376630))

(assert (= (and b!1376630 res!919631) b!1376635))

(declare-fun m!1260755 () Bool)

(assert (=> b!1376632 m!1260755))

(declare-fun m!1260757 () Bool)

(assert (=> b!1376632 m!1260757))

(declare-fun m!1260759 () Bool)

(assert (=> b!1376632 m!1260759))

(declare-fun m!1260761 () Bool)

(assert (=> b!1376630 m!1260761))

(assert (=> b!1376630 m!1260761))

(declare-fun m!1260763 () Bool)

(assert (=> b!1376630 m!1260763))

(declare-fun m!1260765 () Bool)

(assert (=> start!116870 m!1260765))

(declare-fun m!1260767 () Bool)

(assert (=> b!1376635 m!1260767))

(declare-fun m!1260769 () Bool)

(assert (=> b!1376635 m!1260769))

(declare-fun m!1260771 () Bool)

(assert (=> b!1376634 m!1260771))

(declare-fun m!1260773 () Bool)

(assert (=> b!1376631 m!1260773))

(assert (=> b!1376631 m!1260773))

(declare-fun m!1260775 () Bool)

(assert (=> b!1376631 m!1260775))

(push 1)

