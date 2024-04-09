; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36392 () Bool)

(assert start!36392)

(declare-fun b!363755 () Bool)

(declare-fun res!203069 () Bool)

(declare-fun e!222725 () Bool)

(assert (=> b!363755 (=> (not res!203069) (not e!222725))))

(declare-fun from!3650 () (_ BitVec 32))

(declare-fun i!1472 () (_ BitVec 32))

(declare-datatypes ((array!20634 0))(
  ( (array!20635 (arr!9793 (Array (_ BitVec 32) (_ BitVec 64))) (size!10145 (_ BitVec 32))) )
))
(declare-fun a!4289 () array!20634)

(assert (=> b!363755 (= res!203069 (and (bvslt (size!10145 a!4289) #b01111111111111111111111111111111) (bvsge from!3650 #b00000000000000000000000000000000) (bvsle from!3650 (size!10145 a!4289)) (bvsge i!1472 from!3650)))))

(declare-fun b!363756 () Bool)

(declare-fun e!222726 () Bool)

(declare-fun e!222727 () Bool)

(assert (=> b!363756 (= e!222726 (not e!222727))))

(declare-fun res!203071 () Bool)

(assert (=> b!363756 (=> res!203071 e!222727)))

(declare-fun lt!168059 () (_ BitVec 32))

(declare-fun lt!168057 () (_ BitVec 32))

(assert (=> b!363756 (= res!203071 (or (bvsgt (bvsub from!3650 #b00000000000000000000000000000001) (size!10145 a!4289)) (bvslt i!1472 (bvsub from!3650 #b00000000000000000000000000000001)) (not (= lt!168059 (bvadd #b00000000000000000000000000000001 lt!168057)))))))

(declare-fun lt!168052 () (_ BitVec 32))

(declare-fun lt!168056 () (_ BitVec 32))

(assert (=> b!363756 (= (bvadd lt!168052 lt!168056) lt!168059)))

(declare-fun lt!168055 () array!20634)

(declare-fun arrayCountValidKeys!0 (array!20634 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!363756 (= lt!168059 (arrayCountValidKeys!0 lt!168055 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!363756 (= lt!168052 (arrayCountValidKeys!0 lt!168055 (bvsub from!3650 #b00000000000000000000000000000001) from!3650))))

(declare-datatypes ((Unit!11281 0))(
  ( (Unit!11282) )
))
(declare-fun lt!168053 () Unit!11281)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!20634 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!11281)

(assert (=> b!363756 (= lt!168053 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!168055 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(declare-fun lt!168051 () (_ BitVec 32))

(declare-fun lt!168058 () (_ BitVec 32))

(assert (=> b!363756 (= (bvadd lt!168051 lt!168058) lt!168057)))

(assert (=> b!363756 (= lt!168057 (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!363756 (= lt!168051 (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) from!3650))))

(declare-fun lt!168050 () Unit!11281)

(assert (=> b!363756 (= lt!168050 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(declare-fun b!363757 () Bool)

(assert (=> b!363757 (= e!222725 e!222726)))

(declare-fun res!203067 () Bool)

(assert (=> b!363757 (=> (not res!203067) (not e!222726))))

(assert (=> b!363757 (= res!203067 (and (= lt!168056 (bvadd #b00000000000000000000000000000001 lt!168058)) (bvsgt from!3650 #b00000000000000000000000000000000)))))

(assert (=> b!363757 (= lt!168056 (arrayCountValidKeys!0 lt!168055 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!363757 (= lt!168058 (arrayCountValidKeys!0 a!4289 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun k!2974 () (_ BitVec 64))

(assert (=> b!363757 (= lt!168055 (array!20635 (store (arr!9793 a!4289) i!1472 k!2974) (size!10145 a!4289)))))

(declare-fun b!363758 () Bool)

(declare-fun res!203070 () Bool)

(assert (=> b!363758 (=> (not res!203070) (not e!222725))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!363758 (= res!203070 (not (validKeyInArray!0 (select (arr!9793 a!4289) i!1472))))))

(declare-fun b!363759 () Bool)

(declare-fun res!203068 () Bool)

(assert (=> b!363759 (=> (not res!203068) (not e!222725))))

(assert (=> b!363759 (= res!203068 (validKeyInArray!0 k!2974))))

(declare-fun res!203066 () Bool)

(assert (=> start!36392 (=> (not res!203066) (not e!222725))))

(assert (=> start!36392 (= res!203066 (and (bvsge i!1472 #b00000000000000000000000000000000) (bvslt i!1472 (size!10145 a!4289))))))

(assert (=> start!36392 e!222725))

(assert (=> start!36392 true))

(declare-fun array_inv!7231 (array!20634) Bool)

(assert (=> start!36392 (array_inv!7231 a!4289)))

(declare-fun b!363760 () Bool)

(assert (=> b!363760 (= e!222727 (bvsle #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!363760 (= (arrayCountValidKeys!0 lt!168055 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1472)) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 a!4289 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1472))))))

(declare-fun lt!168054 () Unit!11281)

(declare-fun lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 (array!20634 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11281)

(assert (=> b!363760 (= lt!168054 (lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 a!4289 i!1472 k!2974 (bvsub from!3650 #b00000000000000000000000000000001)))))

(assert (= (and start!36392 res!203066) b!363758))

(assert (= (and b!363758 res!203070) b!363759))

(assert (= (and b!363759 res!203068) b!363755))

(assert (= (and b!363755 res!203069) b!363757))

(assert (= (and b!363757 res!203067) b!363756))

(assert (= (and b!363756 (not res!203071)) b!363760))

(declare-fun m!361123 () Bool)

(assert (=> b!363756 m!361123))

(declare-fun m!361125 () Bool)

(assert (=> b!363756 m!361125))

(declare-fun m!361127 () Bool)

(assert (=> b!363756 m!361127))

(declare-fun m!361129 () Bool)

(assert (=> b!363756 m!361129))

(declare-fun m!361131 () Bool)

(assert (=> b!363756 m!361131))

(declare-fun m!361133 () Bool)

(assert (=> b!363756 m!361133))

(declare-fun m!361135 () Bool)

(assert (=> b!363758 m!361135))

(assert (=> b!363758 m!361135))

(declare-fun m!361137 () Bool)

(assert (=> b!363758 m!361137))

(declare-fun m!361139 () Bool)

(assert (=> b!363757 m!361139))

(declare-fun m!361141 () Bool)

(assert (=> b!363757 m!361141))

(declare-fun m!361143 () Bool)

(assert (=> b!363757 m!361143))

(declare-fun m!361145 () Bool)

(assert (=> b!363759 m!361145))

(declare-fun m!361147 () Bool)

(assert (=> b!363760 m!361147))

(declare-fun m!361149 () Bool)

(assert (=> b!363760 m!361149))

(declare-fun m!361151 () Bool)

(assert (=> b!363760 m!361151))

(declare-fun m!361153 () Bool)

(assert (=> start!36392 m!361153))

(push 1)

(assert (not b!363758))

(assert (not start!36392))

(assert (not b!363759))

(assert (not b!363756))

(assert (not b!363760))

(assert (not b!363757))

(check-sat)

(pop 1)

(push 1)

(check-sat)

