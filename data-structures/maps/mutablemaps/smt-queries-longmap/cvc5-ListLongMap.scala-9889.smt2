; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117122 () Bool)

(assert start!117122)

(declare-fun res!920799 () Bool)

(declare-fun e!780734 () Bool)

(assert (=> start!117122 (=> (not res!920799) (not e!780734))))

(declare-fun i!1451 () (_ BitVec 32))

(declare-datatypes ((array!93655 0))(
  ( (array!93656 (arr!45223 (Array (_ BitVec 32) (_ BitVec 64))) (size!45774 (_ BitVec 32))) )
))
(declare-fun a!4094 () array!93655)

(assert (=> start!117122 (= res!920799 (and (bvsge i!1451 #b00000000000000000000000000000000) (bvslt i!1451 (size!45774 a!4094))))))

(assert (=> start!117122 e!780734))

(assert (=> start!117122 true))

(declare-fun array_inv!34168 (array!93655) Bool)

(assert (=> start!117122 (array_inv!34168 a!4094)))

(declare-fun b!1378152 () Bool)

(declare-fun res!920796 () Bool)

(assert (=> b!1378152 (=> (not res!920796) (not e!780734))))

(declare-fun k!2953 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1378152 (= res!920796 (not (validKeyInArray!0 k!2953)))))

(declare-fun b!1378153 () Bool)

(declare-fun e!780732 () Bool)

(assert (=> b!1378153 (= e!780734 e!780732)))

(declare-fun res!920798 () Bool)

(assert (=> b!1378153 (=> (not res!920798) (not e!780732))))

(declare-fun lt!606327 () (_ BitVec 32))

(declare-fun lt!606325 () (_ BitVec 32))

(declare-fun from!3466 () (_ BitVec 32))

(assert (=> b!1378153 (= res!920798 (and (= lt!606327 (bvsub lt!606325 #b00000000000000000000000000000001)) (bvsgt from!3466 #b00000000000000000000000000000000)))))

(declare-fun lt!606326 () array!93655)

(declare-fun arrayCountValidKeys!0 (array!93655 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1378153 (= lt!606327 (arrayCountValidKeys!0 lt!606326 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1378153 (= lt!606325 (arrayCountValidKeys!0 a!4094 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1378153 (= lt!606326 (array!93656 (store (arr!45223 a!4094) i!1451 k!2953) (size!45774 a!4094)))))

(declare-fun b!1378154 () Bool)

(declare-fun res!920795 () Bool)

(assert (=> b!1378154 (=> (not res!920795) (not e!780734))))

(assert (=> b!1378154 (= res!920795 (and (bvslt (size!45774 a!4094) #b01111111111111111111111111111111) (bvsge from!3466 #b00000000000000000000000000000000) (bvsle from!3466 (size!45774 a!4094)) (bvsge i!1451 from!3466)))))

(declare-fun b!1378155 () Bool)

(declare-fun res!920797 () Bool)

(assert (=> b!1378155 (=> (not res!920797) (not e!780734))))

(assert (=> b!1378155 (= res!920797 (validKeyInArray!0 (select (arr!45223 a!4094) i!1451)))))

(declare-fun b!1378156 () Bool)

(assert (=> b!1378156 (= e!780732 (not true))))

(assert (=> b!1378156 (= (bvadd (arrayCountValidKeys!0 lt!606326 (bvsub from!3466 #b00000000000000000000000000000001) from!3466) lt!606327) (arrayCountValidKeys!0 lt!606326 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-datatypes ((Unit!45707 0))(
  ( (Unit!45708) )
))
(declare-fun lt!606324 () Unit!45707)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93655 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45707)

(assert (=> b!1378156 (= lt!606324 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!606326 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(assert (=> b!1378156 (= (bvadd (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) from!3466) lt!606325) (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun lt!606328 () Unit!45707)

(assert (=> b!1378156 (= lt!606328 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(assert (= (and start!117122 res!920799) b!1378155))

(assert (= (and b!1378155 res!920797) b!1378152))

(assert (= (and b!1378152 res!920796) b!1378154))

(assert (= (and b!1378154 res!920795) b!1378153))

(assert (= (and b!1378153 res!920798) b!1378156))

(declare-fun m!1262697 () Bool)

(assert (=> start!117122 m!1262697))

(declare-fun m!1262699 () Bool)

(assert (=> b!1378153 m!1262699))

(declare-fun m!1262701 () Bool)

(assert (=> b!1378153 m!1262701))

(declare-fun m!1262703 () Bool)

(assert (=> b!1378153 m!1262703))

(declare-fun m!1262705 () Bool)

(assert (=> b!1378156 m!1262705))

(declare-fun m!1262707 () Bool)

(assert (=> b!1378156 m!1262707))

(declare-fun m!1262709 () Bool)

(assert (=> b!1378156 m!1262709))

(declare-fun m!1262711 () Bool)

(assert (=> b!1378156 m!1262711))

(declare-fun m!1262713 () Bool)

(assert (=> b!1378156 m!1262713))

(declare-fun m!1262715 () Bool)

(assert (=> b!1378156 m!1262715))

(declare-fun m!1262717 () Bool)

(assert (=> b!1378152 m!1262717))

(declare-fun m!1262719 () Bool)

(assert (=> b!1378155 m!1262719))

(assert (=> b!1378155 m!1262719))

(declare-fun m!1262721 () Bool)

(assert (=> b!1378155 m!1262721))

(push 1)

(assert (not b!1378153))

(assert (not b!1378156))

(assert (not b!1378152))

(assert (not start!117122))

(assert (not b!1378155))

(check-sat)

