; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36362 () Bool)

(assert start!36362)

(declare-fun res!202839 () Bool)

(declare-fun e!222589 () Bool)

(assert (=> start!36362 (=> (not res!202839) (not e!222589))))

(declare-fun i!1472 () (_ BitVec 32))

(declare-datatypes ((array!20604 0))(
  ( (array!20605 (arr!9778 (Array (_ BitVec 32) (_ BitVec 64))) (size!10130 (_ BitVec 32))) )
))
(declare-fun a!4289 () array!20604)

(assert (=> start!36362 (= res!202839 (and (bvsge i!1472 #b00000000000000000000000000000000) (bvslt i!1472 (size!10130 a!4289))))))

(assert (=> start!36362 e!222589))

(assert (=> start!36362 true))

(declare-fun array_inv!7216 (array!20604) Bool)

(assert (=> start!36362 (array_inv!7216 a!4289)))

(declare-fun b!363528 () Bool)

(declare-fun e!222588 () Bool)

(assert (=> b!363528 (= e!222589 e!222588)))

(declare-fun res!202841 () Bool)

(assert (=> b!363528 (=> (not res!202841) (not e!222588))))

(declare-fun lt!167818 () (_ BitVec 32))

(declare-fun from!3650 () (_ BitVec 32))

(declare-fun lt!167816 () (_ BitVec 32))

(assert (=> b!363528 (= res!202841 (and (= lt!167818 (bvadd #b00000000000000000000000000000001 lt!167816)) (bvsgt from!3650 #b00000000000000000000000000000000)))))

(declare-fun lt!167819 () array!20604)

(declare-fun arrayCountValidKeys!0 (array!20604 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!363528 (= lt!167818 (arrayCountValidKeys!0 lt!167819 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!363528 (= lt!167816 (arrayCountValidKeys!0 a!4289 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun k!2974 () (_ BitVec 64))

(assert (=> b!363528 (= lt!167819 (array!20605 (store (arr!9778 a!4289) i!1472 k!2974) (size!10130 a!4289)))))

(declare-fun b!363529 () Bool)

(assert (=> b!363529 (= e!222588 (not true))))

(assert (=> b!363529 (= (bvadd (arrayCountValidKeys!0 lt!167819 (bvsub from!3650 #b00000000000000000000000000000001) from!3650) lt!167818) (arrayCountValidKeys!0 lt!167819 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-datatypes ((Unit!11251 0))(
  ( (Unit!11252) )
))
(declare-fun lt!167817 () Unit!11251)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!20604 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!11251)

(assert (=> b!363529 (= lt!167817 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!167819 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(assert (=> b!363529 (= (bvadd (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) from!3650) lt!167816) (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun lt!167815 () Unit!11251)

(assert (=> b!363529 (= lt!167815 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(declare-fun b!363530 () Bool)

(declare-fun res!202842 () Bool)

(assert (=> b!363530 (=> (not res!202842) (not e!222589))))

(assert (=> b!363530 (= res!202842 (and (bvslt (size!10130 a!4289) #b01111111111111111111111111111111) (bvsge from!3650 #b00000000000000000000000000000000) (bvsle from!3650 (size!10130 a!4289)) (bvsge i!1472 from!3650)))))

(declare-fun b!363531 () Bool)

(declare-fun res!202840 () Bool)

(assert (=> b!363531 (=> (not res!202840) (not e!222589))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!363531 (= res!202840 (not (validKeyInArray!0 (select (arr!9778 a!4289) i!1472))))))

(declare-fun b!363532 () Bool)

(declare-fun res!202843 () Bool)

(assert (=> b!363532 (=> (not res!202843) (not e!222589))))

(assert (=> b!363532 (= res!202843 (validKeyInArray!0 k!2974))))

(assert (= (and start!36362 res!202839) b!363531))

(assert (= (and b!363531 res!202840) b!363532))

(assert (= (and b!363532 res!202843) b!363530))

(assert (= (and b!363530 res!202842) b!363528))

(assert (= (and b!363528 res!202841) b!363529))

(declare-fun m!360733 () Bool)

(assert (=> start!36362 m!360733))

(declare-fun m!360735 () Bool)

(assert (=> b!363532 m!360735))

(declare-fun m!360737 () Bool)

(assert (=> b!363528 m!360737))

(declare-fun m!360739 () Bool)

(assert (=> b!363528 m!360739))

(declare-fun m!360741 () Bool)

(assert (=> b!363528 m!360741))

(declare-fun m!360743 () Bool)

(assert (=> b!363531 m!360743))

(assert (=> b!363531 m!360743))

(declare-fun m!360745 () Bool)

(assert (=> b!363531 m!360745))

(declare-fun m!360747 () Bool)

(assert (=> b!363529 m!360747))

(declare-fun m!360749 () Bool)

(assert (=> b!363529 m!360749))

(declare-fun m!360751 () Bool)

(assert (=> b!363529 m!360751))

(declare-fun m!360753 () Bool)

(assert (=> b!363529 m!360753))

(declare-fun m!360755 () Bool)

(assert (=> b!363529 m!360755))

(declare-fun m!360757 () Bool)

(assert (=> b!363529 m!360757))

(push 1)

(assert (not b!363531))

(assert (not b!363529))

(assert (not start!36362))

(assert (not b!363528))

(assert (not b!363532))

(check-sat)

(pop 1)

