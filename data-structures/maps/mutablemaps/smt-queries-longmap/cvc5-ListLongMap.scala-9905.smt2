; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117218 () Bool)

(assert start!117218)

(declare-fun b!1378892 () Bool)

(declare-fun res!921540 () Bool)

(declare-fun e!781148 () Bool)

(assert (=> b!1378892 (=> (not res!921540) (not e!781148))))

(declare-fun k!2953 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1378892 (= res!921540 (not (validKeyInArray!0 k!2953)))))

(declare-fun b!1378893 () Bool)

(declare-fun res!921538 () Bool)

(assert (=> b!1378893 (=> (not res!921538) (not e!781148))))

(declare-datatypes ((array!93751 0))(
  ( (array!93752 (arr!45271 (Array (_ BitVec 32) (_ BitVec 64))) (size!45822 (_ BitVec 32))) )
))
(declare-fun a!4094 () array!93751)

(declare-fun i!1451 () (_ BitVec 32))

(assert (=> b!1378893 (= res!921538 (validKeyInArray!0 (select (arr!45271 a!4094) i!1451)))))

(declare-fun b!1378894 () Bool)

(declare-fun res!921536 () Bool)

(assert (=> b!1378894 (=> (not res!921536) (not e!781148))))

(declare-fun from!3466 () (_ BitVec 32))

(assert (=> b!1378894 (= res!921536 (and (bvslt (size!45822 a!4094) #b01111111111111111111111111111111) (bvsge from!3466 #b00000000000000000000000000000000) (bvsle from!3466 (size!45822 a!4094)) (bvsge i!1451 from!3466)))))

(declare-fun res!921537 () Bool)

(assert (=> start!117218 (=> (not res!921537) (not e!781148))))

(assert (=> start!117218 (= res!921537 (and (bvsge i!1451 #b00000000000000000000000000000000) (bvslt i!1451 (size!45822 a!4094))))))

(assert (=> start!117218 e!781148))

(assert (=> start!117218 true))

(declare-fun array_inv!34216 (array!93751) Bool)

(assert (=> start!117218 (array_inv!34216 a!4094)))

(declare-fun b!1378895 () Bool)

(declare-fun e!781146 () Bool)

(assert (=> b!1378895 (= e!781146 (not (and (bvsge (bvadd #b00000000000000000000000000000001 i!1451) (bvsub from!3466 #b00000000000000000000000000000001)) (bvsge from!3466 (bvsub from!3466 #b00000000000000000000000000000001)) (bvsle from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))))

(declare-fun lt!606975 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93751 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1378895 (= (bvadd (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) from!3466) lt!606975) (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-datatypes ((Unit!45767 0))(
  ( (Unit!45768) )
))
(declare-fun lt!606976 () Unit!45767)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93751 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45767)

(assert (=> b!1378895 (= lt!606976 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(declare-fun b!1378896 () Bool)

(assert (=> b!1378896 (= e!781148 e!781146)))

(declare-fun res!921535 () Bool)

(assert (=> b!1378896 (=> (not res!921535) (not e!781146))))

(assert (=> b!1378896 (= res!921535 (= (arrayCountValidKeys!0 (array!93752 (store (arr!45271 a!4094) i!1451 k!2953) (size!45822 a!4094)) from!3466 (bvadd #b00000000000000000000000000000001 i!1451)) (bvsub lt!606975 #b00000000000000000000000000000001)))))

(assert (=> b!1378896 (= lt!606975 (arrayCountValidKeys!0 a!4094 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun b!1378897 () Bool)

(declare-fun res!921539 () Bool)

(assert (=> b!1378897 (=> (not res!921539) (not e!781146))))

(assert (=> b!1378897 (= res!921539 (bvsgt from!3466 #b00000000000000000000000000000000))))

(assert (= (and start!117218 res!921537) b!1378893))

(assert (= (and b!1378893 res!921538) b!1378892))

(assert (= (and b!1378892 res!921540) b!1378894))

(assert (= (and b!1378894 res!921536) b!1378896))

(assert (= (and b!1378896 res!921535) b!1378897))

(assert (= (and b!1378897 res!921539) b!1378895))

(declare-fun m!1263783 () Bool)

(assert (=> b!1378893 m!1263783))

(assert (=> b!1378893 m!1263783))

(declare-fun m!1263785 () Bool)

(assert (=> b!1378893 m!1263785))

(declare-fun m!1263787 () Bool)

(assert (=> b!1378895 m!1263787))

(declare-fun m!1263789 () Bool)

(assert (=> b!1378895 m!1263789))

(declare-fun m!1263791 () Bool)

(assert (=> b!1378895 m!1263791))

(declare-fun m!1263793 () Bool)

(assert (=> b!1378896 m!1263793))

(declare-fun m!1263795 () Bool)

(assert (=> b!1378896 m!1263795))

(declare-fun m!1263797 () Bool)

(assert (=> b!1378896 m!1263797))

(declare-fun m!1263799 () Bool)

(assert (=> b!1378892 m!1263799))

(declare-fun m!1263801 () Bool)

(assert (=> start!117218 m!1263801))

(push 1)

(assert (not b!1378893))

(assert (not b!1378896))

(assert (not start!117218))

(assert (not b!1378892))

(assert (not b!1378895))

(check-sat)

(pop 1)

(push 1)

(check-sat)

