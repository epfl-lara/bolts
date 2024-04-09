; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36366 () Bool)

(assert start!36366)

(declare-fun b!363558 () Bool)

(declare-fun e!222608 () Bool)

(assert (=> b!363558 (= e!222608 (not true))))

(declare-fun lt!167847 () (_ BitVec 32))

(declare-datatypes ((array!20608 0))(
  ( (array!20609 (arr!9780 (Array (_ BitVec 32) (_ BitVec 64))) (size!10132 (_ BitVec 32))) )
))
(declare-fun lt!167845 () array!20608)

(declare-fun from!3650 () (_ BitVec 32))

(declare-fun i!1472 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!20608 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!363558 (= (bvadd (arrayCountValidKeys!0 lt!167845 (bvsub from!3650 #b00000000000000000000000000000001) from!3650) lt!167847) (arrayCountValidKeys!0 lt!167845 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-datatypes ((Unit!11255 0))(
  ( (Unit!11256) )
))
(declare-fun lt!167849 () Unit!11255)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!20608 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!11255)

(assert (=> b!363558 (= lt!167849 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!167845 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(declare-fun lt!167848 () (_ BitVec 32))

(declare-fun a!4289 () array!20608)

(assert (=> b!363558 (= (bvadd (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) from!3650) lt!167848) (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun lt!167846 () Unit!11255)

(assert (=> b!363558 (= lt!167846 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(declare-fun b!363559 () Bool)

(declare-fun e!222607 () Bool)

(assert (=> b!363559 (= e!222607 e!222608)))

(declare-fun res!202873 () Bool)

(assert (=> b!363559 (=> (not res!202873) (not e!222608))))

(assert (=> b!363559 (= res!202873 (and (= lt!167847 (bvadd #b00000000000000000000000000000001 lt!167848)) (bvsgt from!3650 #b00000000000000000000000000000000)))))

(assert (=> b!363559 (= lt!167847 (arrayCountValidKeys!0 lt!167845 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!363559 (= lt!167848 (arrayCountValidKeys!0 a!4289 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun k!2974 () (_ BitVec 64))

(assert (=> b!363559 (= lt!167845 (array!20609 (store (arr!9780 a!4289) i!1472 k!2974) (size!10132 a!4289)))))

(declare-fun b!363560 () Bool)

(declare-fun res!202872 () Bool)

(assert (=> b!363560 (=> (not res!202872) (not e!222607))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!363560 (= res!202872 (not (validKeyInArray!0 (select (arr!9780 a!4289) i!1472))))))

(declare-fun b!363561 () Bool)

(declare-fun res!202870 () Bool)

(assert (=> b!363561 (=> (not res!202870) (not e!222607))))

(assert (=> b!363561 (= res!202870 (validKeyInArray!0 k!2974))))

(declare-fun res!202871 () Bool)

(assert (=> start!36366 (=> (not res!202871) (not e!222607))))

(assert (=> start!36366 (= res!202871 (and (bvsge i!1472 #b00000000000000000000000000000000) (bvslt i!1472 (size!10132 a!4289))))))

(assert (=> start!36366 e!222607))

(assert (=> start!36366 true))

(declare-fun array_inv!7218 (array!20608) Bool)

(assert (=> start!36366 (array_inv!7218 a!4289)))

(declare-fun b!363562 () Bool)

(declare-fun res!202869 () Bool)

(assert (=> b!363562 (=> (not res!202869) (not e!222607))))

(assert (=> b!363562 (= res!202869 (and (bvslt (size!10132 a!4289) #b01111111111111111111111111111111) (bvsge from!3650 #b00000000000000000000000000000000) (bvsle from!3650 (size!10132 a!4289)) (bvsge i!1472 from!3650)))))

(assert (= (and start!36366 res!202871) b!363560))

(assert (= (and b!363560 res!202872) b!363561))

(assert (= (and b!363561 res!202870) b!363562))

(assert (= (and b!363562 res!202869) b!363559))

(assert (= (and b!363559 res!202873) b!363558))

(declare-fun m!360785 () Bool)

(assert (=> b!363558 m!360785))

(declare-fun m!360787 () Bool)

(assert (=> b!363558 m!360787))

(declare-fun m!360789 () Bool)

(assert (=> b!363558 m!360789))

(declare-fun m!360791 () Bool)

(assert (=> b!363558 m!360791))

(declare-fun m!360793 () Bool)

(assert (=> b!363558 m!360793))

(declare-fun m!360795 () Bool)

(assert (=> b!363558 m!360795))

(declare-fun m!360797 () Bool)

(assert (=> b!363559 m!360797))

(declare-fun m!360799 () Bool)

(assert (=> b!363559 m!360799))

(declare-fun m!360801 () Bool)

(assert (=> b!363559 m!360801))

(declare-fun m!360803 () Bool)

(assert (=> start!36366 m!360803))

(declare-fun m!360805 () Bool)

(assert (=> b!363560 m!360805))

(assert (=> b!363560 m!360805))

(declare-fun m!360807 () Bool)

(assert (=> b!363560 m!360807))

(declare-fun m!360809 () Bool)

(assert (=> b!363561 m!360809))

(push 1)

(assert (not b!363560))

(assert (not b!363559))

(assert (not b!363558))

(assert (not start!36366))

(assert (not b!363561))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

