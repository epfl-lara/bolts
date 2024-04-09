; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36386 () Bool)

(assert start!36386)

(declare-fun b!363708 () Bool)

(declare-fun res!203022 () Bool)

(declare-fun e!222697 () Bool)

(assert (=> b!363708 (=> (not res!203022) (not e!222697))))

(declare-fun from!3650 () (_ BitVec 32))

(declare-fun i!1472 () (_ BitVec 32))

(declare-datatypes ((array!20628 0))(
  ( (array!20629 (arr!9790 (Array (_ BitVec 32) (_ BitVec 64))) (size!10142 (_ BitVec 32))) )
))
(declare-fun a!4289 () array!20628)

(assert (=> b!363708 (= res!203022 (and (bvslt (size!10142 a!4289) #b01111111111111111111111111111111) (bvsge from!3650 #b00000000000000000000000000000000) (bvsle from!3650 (size!10142 a!4289)) (bvsge i!1472 from!3650)))))

(declare-fun b!363709 () Bool)

(declare-fun res!203021 () Bool)

(assert (=> b!363709 (=> (not res!203021) (not e!222697))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!363709 (= res!203021 (not (validKeyInArray!0 (select (arr!9790 a!4289) i!1472))))))

(declare-fun res!203019 () Bool)

(assert (=> start!36386 (=> (not res!203019) (not e!222697))))

(assert (=> start!36386 (= res!203019 (and (bvsge i!1472 #b00000000000000000000000000000000) (bvslt i!1472 (size!10142 a!4289))))))

(assert (=> start!36386 e!222697))

(assert (=> start!36386 true))

(declare-fun array_inv!7228 (array!20628) Bool)

(assert (=> start!36386 (array_inv!7228 a!4289)))

(declare-fun b!363710 () Bool)

(declare-fun e!222698 () Bool)

(assert (=> b!363710 (= e!222698 (not true))))

(declare-fun lt!167995 () array!20628)

(declare-fun lt!167999 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!20628 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!363710 (= (bvadd (arrayCountValidKeys!0 lt!167995 (bvsub from!3650 #b00000000000000000000000000000001) from!3650) lt!167999) (arrayCountValidKeys!0 lt!167995 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-datatypes ((Unit!11275 0))(
  ( (Unit!11276) )
))
(declare-fun lt!167998 () Unit!11275)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!20628 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!11275)

(assert (=> b!363710 (= lt!167998 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!167995 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(declare-fun lt!167997 () (_ BitVec 32))

(assert (=> b!363710 (= (bvadd (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) from!3650) lt!167997) (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun lt!167996 () Unit!11275)

(assert (=> b!363710 (= lt!167996 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(declare-fun b!363711 () Bool)

(declare-fun res!203020 () Bool)

(assert (=> b!363711 (=> (not res!203020) (not e!222697))))

(declare-fun k!2974 () (_ BitVec 64))

(assert (=> b!363711 (= res!203020 (validKeyInArray!0 k!2974))))

(declare-fun b!363712 () Bool)

(assert (=> b!363712 (= e!222697 e!222698)))

(declare-fun res!203023 () Bool)

(assert (=> b!363712 (=> (not res!203023) (not e!222698))))

(assert (=> b!363712 (= res!203023 (and (= lt!167999 (bvadd #b00000000000000000000000000000001 lt!167997)) (bvsgt from!3650 #b00000000000000000000000000000000)))))

(assert (=> b!363712 (= lt!167999 (arrayCountValidKeys!0 lt!167995 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!363712 (= lt!167997 (arrayCountValidKeys!0 a!4289 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!363712 (= lt!167995 (array!20629 (store (arr!9790 a!4289) i!1472 k!2974) (size!10142 a!4289)))))

(assert (= (and start!36386 res!203019) b!363709))

(assert (= (and b!363709 res!203021) b!363711))

(assert (= (and b!363711 res!203020) b!363708))

(assert (= (and b!363708 res!203022) b!363712))

(assert (= (and b!363712 res!203023) b!363710))

(declare-fun m!361045 () Bool)

(assert (=> b!363710 m!361045))

(declare-fun m!361047 () Bool)

(assert (=> b!363710 m!361047))

(declare-fun m!361049 () Bool)

(assert (=> b!363710 m!361049))

(declare-fun m!361051 () Bool)

(assert (=> b!363710 m!361051))

(declare-fun m!361053 () Bool)

(assert (=> b!363710 m!361053))

(declare-fun m!361055 () Bool)

(assert (=> b!363710 m!361055))

(declare-fun m!361057 () Bool)

(assert (=> b!363709 m!361057))

(assert (=> b!363709 m!361057))

(declare-fun m!361059 () Bool)

(assert (=> b!363709 m!361059))

(declare-fun m!361061 () Bool)

(assert (=> b!363711 m!361061))

(declare-fun m!361063 () Bool)

(assert (=> b!363712 m!361063))

(declare-fun m!361065 () Bool)

(assert (=> b!363712 m!361065))

(declare-fun m!361067 () Bool)

(assert (=> b!363712 m!361067))

(declare-fun m!361069 () Bool)

(assert (=> start!36386 m!361069))

(push 1)

(assert (not b!363709))

(assert (not b!363711))

(assert (not b!363712))

(assert (not b!363710))

(assert (not start!36386))

(check-sat)

(pop 1)

