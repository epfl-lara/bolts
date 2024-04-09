; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36368 () Bool)

(assert start!36368)

(declare-fun b!363573 () Bool)

(declare-fun res!202888 () Bool)

(declare-fun e!222617 () Bool)

(assert (=> b!363573 (=> (not res!202888) (not e!222617))))

(declare-fun from!3650 () (_ BitVec 32))

(declare-fun i!1472 () (_ BitVec 32))

(declare-datatypes ((array!20610 0))(
  ( (array!20611 (arr!9781 (Array (_ BitVec 32) (_ BitVec 64))) (size!10133 (_ BitVec 32))) )
))
(declare-fun a!4289 () array!20610)

(assert (=> b!363573 (= res!202888 (and (bvslt (size!10133 a!4289) #b01111111111111111111111111111111) (bvsge from!3650 #b00000000000000000000000000000000) (bvsle from!3650 (size!10133 a!4289)) (bvsge i!1472 from!3650)))))

(declare-fun b!363574 () Bool)

(declare-fun e!222616 () Bool)

(assert (=> b!363574 (= e!222616 (not true))))

(declare-fun lt!167863 () array!20610)

(declare-fun lt!167861 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!20610 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!363574 (= (bvadd (arrayCountValidKeys!0 lt!167863 (bvsub from!3650 #b00000000000000000000000000000001) from!3650) lt!167861) (arrayCountValidKeys!0 lt!167863 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-datatypes ((Unit!11257 0))(
  ( (Unit!11258) )
))
(declare-fun lt!167864 () Unit!11257)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!20610 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!11257)

(assert (=> b!363574 (= lt!167864 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!167863 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(declare-fun lt!167860 () (_ BitVec 32))

(assert (=> b!363574 (= (bvadd (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) from!3650) lt!167860) (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun lt!167862 () Unit!11257)

(assert (=> b!363574 (= lt!167862 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(declare-fun res!202885 () Bool)

(assert (=> start!36368 (=> (not res!202885) (not e!222617))))

(assert (=> start!36368 (= res!202885 (and (bvsge i!1472 #b00000000000000000000000000000000) (bvslt i!1472 (size!10133 a!4289))))))

(assert (=> start!36368 e!222617))

(assert (=> start!36368 true))

(declare-fun array_inv!7219 (array!20610) Bool)

(assert (=> start!36368 (array_inv!7219 a!4289)))

(declare-fun b!363575 () Bool)

(declare-fun res!202887 () Bool)

(assert (=> b!363575 (=> (not res!202887) (not e!222617))))

(declare-fun k!2974 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!363575 (= res!202887 (validKeyInArray!0 k!2974))))

(declare-fun b!363576 () Bool)

(declare-fun res!202884 () Bool)

(assert (=> b!363576 (=> (not res!202884) (not e!222617))))

(assert (=> b!363576 (= res!202884 (not (validKeyInArray!0 (select (arr!9781 a!4289) i!1472))))))

(declare-fun b!363577 () Bool)

(assert (=> b!363577 (= e!222617 e!222616)))

(declare-fun res!202886 () Bool)

(assert (=> b!363577 (=> (not res!202886) (not e!222616))))

(assert (=> b!363577 (= res!202886 (and (= lt!167861 (bvadd #b00000000000000000000000000000001 lt!167860)) (bvsgt from!3650 #b00000000000000000000000000000000)))))

(assert (=> b!363577 (= lt!167861 (arrayCountValidKeys!0 lt!167863 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!363577 (= lt!167860 (arrayCountValidKeys!0 a!4289 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!363577 (= lt!167863 (array!20611 (store (arr!9781 a!4289) i!1472 k!2974) (size!10133 a!4289)))))

(assert (= (and start!36368 res!202885) b!363576))

(assert (= (and b!363576 res!202884) b!363575))

(assert (= (and b!363575 res!202887) b!363573))

(assert (= (and b!363573 res!202888) b!363577))

(assert (= (and b!363577 res!202886) b!363574))

(declare-fun m!360811 () Bool)

(assert (=> b!363574 m!360811))

(declare-fun m!360813 () Bool)

(assert (=> b!363574 m!360813))

(declare-fun m!360815 () Bool)

(assert (=> b!363574 m!360815))

(declare-fun m!360817 () Bool)

(assert (=> b!363574 m!360817))

(declare-fun m!360819 () Bool)

(assert (=> b!363574 m!360819))

(declare-fun m!360821 () Bool)

(assert (=> b!363574 m!360821))

(declare-fun m!360823 () Bool)

(assert (=> b!363575 m!360823))

(declare-fun m!360825 () Bool)

(assert (=> b!363576 m!360825))

(assert (=> b!363576 m!360825))

(declare-fun m!360827 () Bool)

(assert (=> b!363576 m!360827))

(declare-fun m!360829 () Bool)

(assert (=> start!36368 m!360829))

(declare-fun m!360831 () Bool)

(assert (=> b!363577 m!360831))

(declare-fun m!360833 () Bool)

(assert (=> b!363577 m!360833))

(declare-fun m!360835 () Bool)

(assert (=> b!363577 m!360835))

(push 1)

