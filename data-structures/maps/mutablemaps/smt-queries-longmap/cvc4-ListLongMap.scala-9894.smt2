; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117156 () Bool)

(assert start!117156)

(declare-fun b!1378415 () Bool)

(declare-fun res!921063 () Bool)

(declare-fun e!780893 () Bool)

(assert (=> b!1378415 (=> (not res!921063) (not e!780893))))

(declare-datatypes ((array!93689 0))(
  ( (array!93690 (arr!45240 (Array (_ BitVec 32) (_ BitVec 64))) (size!45791 (_ BitVec 32))) )
))
(declare-fun a!4094 () array!93689)

(declare-fun i!1451 () (_ BitVec 32))

(declare-fun from!3466 () (_ BitVec 32))

(assert (=> b!1378415 (= res!921063 (and (bvslt (size!45791 a!4094) #b01111111111111111111111111111111) (bvsge from!3466 #b00000000000000000000000000000000) (bvsle from!3466 (size!45791 a!4094)) (bvsge i!1451 from!3466)))))

(declare-fun b!1378416 () Bool)

(declare-fun e!780894 () Bool)

(assert (=> b!1378416 (= e!780893 e!780894)))

(declare-fun res!921058 () Bool)

(assert (=> b!1378416 (=> (not res!921058) (not e!780894))))

(declare-fun lt!606623 () (_ BitVec 32))

(declare-fun lt!606626 () (_ BitVec 32))

(assert (=> b!1378416 (= res!921058 (and (= lt!606626 (bvsub lt!606623 #b00000000000000000000000000000001)) (bvsgt from!3466 #b00000000000000000000000000000000)))))

(declare-fun lt!606628 () array!93689)

(declare-fun arrayCountValidKeys!0 (array!93689 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1378416 (= lt!606626 (arrayCountValidKeys!0 lt!606628 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1378416 (= lt!606623 (arrayCountValidKeys!0 a!4094 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun k!2953 () (_ BitVec 64))

(assert (=> b!1378416 (= lt!606628 (array!93690 (store (arr!45240 a!4094) i!1451 k!2953) (size!45791 a!4094)))))

(declare-fun b!1378417 () Bool)

(declare-fun e!780896 () Bool)

(assert (=> b!1378417 (= e!780894 (not e!780896))))

(declare-fun res!921061 () Bool)

(assert (=> b!1378417 (=> res!921061 e!780896)))

(declare-fun lt!606620 () (_ BitVec 32))

(declare-fun lt!606625 () (_ BitVec 32))

(assert (=> b!1378417 (= res!921061 (or (bvsgt (bvsub from!3466 #b00000000000000000000000000000001) (size!45791 a!4094)) (bvslt i!1451 (bvsub from!3466 #b00000000000000000000000000000001)) (not (= lt!606620 (bvsub lt!606625 #b00000000000000000000000000000001)))))))

(declare-fun lt!606622 () (_ BitVec 32))

(assert (=> b!1378417 (= (bvadd lt!606622 lt!606626) lt!606620)))

(assert (=> b!1378417 (= lt!606620 (arrayCountValidKeys!0 lt!606628 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1378417 (= lt!606622 (arrayCountValidKeys!0 lt!606628 (bvsub from!3466 #b00000000000000000000000000000001) from!3466))))

(declare-datatypes ((Unit!45741 0))(
  ( (Unit!45742) )
))
(declare-fun lt!606621 () Unit!45741)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93689 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45741)

(assert (=> b!1378417 (= lt!606621 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!606628 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(declare-fun lt!606619 () (_ BitVec 32))

(assert (=> b!1378417 (= (bvadd lt!606619 lt!606623) lt!606625)))

(assert (=> b!1378417 (= lt!606625 (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1378417 (= lt!606619 (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) from!3466))))

(declare-fun lt!606624 () Unit!45741)

(assert (=> b!1378417 (= lt!606624 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(declare-fun res!921060 () Bool)

(assert (=> start!117156 (=> (not res!921060) (not e!780893))))

(assert (=> start!117156 (= res!921060 (and (bvsge i!1451 #b00000000000000000000000000000000) (bvslt i!1451 (size!45791 a!4094))))))

(assert (=> start!117156 e!780893))

(assert (=> start!117156 true))

(declare-fun array_inv!34185 (array!93689) Bool)

(assert (=> start!117156 (array_inv!34185 a!4094)))

(declare-fun b!1378418 () Bool)

(declare-fun res!921062 () Bool)

(assert (=> b!1378418 (=> (not res!921062) (not e!780893))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1378418 (= res!921062 (not (validKeyInArray!0 k!2953)))))

(declare-fun b!1378419 () Bool)

(declare-fun res!921059 () Bool)

(assert (=> b!1378419 (=> (not res!921059) (not e!780893))))

(assert (=> b!1378419 (= res!921059 (validKeyInArray!0 (select (arr!45240 a!4094) i!1451)))))

(declare-fun b!1378420 () Bool)

(assert (=> b!1378420 (= e!780896 (bvsle #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1378420 (= (arrayCountValidKeys!0 lt!606628 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1451)) (bvsub (arrayCountValidKeys!0 a!4094 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1451)) #b00000000000000000000000000000001))))

(declare-fun lt!606627 () Unit!45741)

(declare-fun lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 (array!93689 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45741)

(assert (=> b!1378420 (= lt!606627 (lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 a!4094 i!1451 k!2953 (bvsub from!3466 #b00000000000000000000000000000001)))))

(assert (= (and start!117156 res!921060) b!1378419))

(assert (= (and b!1378419 res!921059) b!1378418))

(assert (= (and b!1378418 res!921062) b!1378415))

(assert (= (and b!1378415 res!921063) b!1378416))

(assert (= (and b!1378416 res!921058) b!1378417))

(assert (= (and b!1378417 (not res!921061)) b!1378420))

(declare-fun m!1263151 () Bool)

(assert (=> start!117156 m!1263151))

(declare-fun m!1263153 () Bool)

(assert (=> b!1378418 m!1263153))

(declare-fun m!1263155 () Bool)

(assert (=> b!1378420 m!1263155))

(declare-fun m!1263157 () Bool)

(assert (=> b!1378420 m!1263157))

(declare-fun m!1263159 () Bool)

(assert (=> b!1378420 m!1263159))

(declare-fun m!1263161 () Bool)

(assert (=> b!1378417 m!1263161))

(declare-fun m!1263163 () Bool)

(assert (=> b!1378417 m!1263163))

(declare-fun m!1263165 () Bool)

(assert (=> b!1378417 m!1263165))

(declare-fun m!1263167 () Bool)

(assert (=> b!1378417 m!1263167))

(declare-fun m!1263169 () Bool)

(assert (=> b!1378417 m!1263169))

(declare-fun m!1263171 () Bool)

(assert (=> b!1378417 m!1263171))

(declare-fun m!1263173 () Bool)

(assert (=> b!1378416 m!1263173))

(declare-fun m!1263175 () Bool)

(assert (=> b!1378416 m!1263175))

(declare-fun m!1263177 () Bool)

(assert (=> b!1378416 m!1263177))

(declare-fun m!1263179 () Bool)

(assert (=> b!1378419 m!1263179))

(assert (=> b!1378419 m!1263179))

(declare-fun m!1263181 () Bool)

(assert (=> b!1378419 m!1263181))

(push 1)

(assert (not b!1378419))

(assert (not start!117156))

(assert (not b!1378416))

(assert (not b!1378420))

(assert (not b!1378418))

(assert (not b!1378417))

(check-sat)

(pop 1)

(push 1)

(check-sat)

