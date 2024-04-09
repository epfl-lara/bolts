; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36394 () Bool)

(assert start!36394)

(declare-fun b!363773 () Bool)

(declare-fun res!203089 () Bool)

(declare-fun e!222738 () Bool)

(assert (=> b!363773 (=> (not res!203089) (not e!222738))))

(declare-fun k0!2974 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!363773 (= res!203089 (validKeyInArray!0 k0!2974))))

(declare-fun b!363774 () Bool)

(declare-fun e!222739 () Bool)

(declare-fun e!222740 () Bool)

(assert (=> b!363774 (= e!222739 (not e!222740))))

(declare-fun res!203088 () Bool)

(assert (=> b!363774 (=> res!203088 e!222740)))

(declare-fun from!3650 () (_ BitVec 32))

(declare-fun lt!168087 () (_ BitVec 32))

(declare-fun i!1472 () (_ BitVec 32))

(declare-fun lt!168080 () (_ BitVec 32))

(declare-datatypes ((array!20636 0))(
  ( (array!20637 (arr!9794 (Array (_ BitVec 32) (_ BitVec 64))) (size!10146 (_ BitVec 32))) )
))
(declare-fun a!4289 () array!20636)

(assert (=> b!363774 (= res!203088 (or (bvsgt (bvsub from!3650 #b00000000000000000000000000000001) (size!10146 a!4289)) (bvslt i!1472 (bvsub from!3650 #b00000000000000000000000000000001)) (not (= lt!168087 (bvadd #b00000000000000000000000000000001 lt!168080)))))))

(declare-fun lt!168083 () (_ BitVec 32))

(declare-fun lt!168084 () (_ BitVec 32))

(assert (=> b!363774 (= (bvadd lt!168083 lt!168084) lt!168087)))

(declare-fun lt!168085 () array!20636)

(declare-fun arrayCountValidKeys!0 (array!20636 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!363774 (= lt!168087 (arrayCountValidKeys!0 lt!168085 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!363774 (= lt!168083 (arrayCountValidKeys!0 lt!168085 (bvsub from!3650 #b00000000000000000000000000000001) from!3650))))

(declare-datatypes ((Unit!11283 0))(
  ( (Unit!11284) )
))
(declare-fun lt!168086 () Unit!11283)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!20636 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!11283)

(assert (=> b!363774 (= lt!168086 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!168085 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(declare-fun lt!168089 () (_ BitVec 32))

(declare-fun lt!168082 () (_ BitVec 32))

(assert (=> b!363774 (= (bvadd lt!168089 lt!168082) lt!168080)))

(assert (=> b!363774 (= lt!168080 (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!363774 (= lt!168089 (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) from!3650))))

(declare-fun lt!168081 () Unit!11283)

(assert (=> b!363774 (= lt!168081 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(declare-fun b!363775 () Bool)

(declare-fun res!203084 () Bool)

(assert (=> b!363775 (=> (not res!203084) (not e!222738))))

(assert (=> b!363775 (= res!203084 (not (validKeyInArray!0 (select (arr!9794 a!4289) i!1472))))))

(declare-fun res!203086 () Bool)

(assert (=> start!36394 (=> (not res!203086) (not e!222738))))

(assert (=> start!36394 (= res!203086 (and (bvsge i!1472 #b00000000000000000000000000000000) (bvslt i!1472 (size!10146 a!4289))))))

(assert (=> start!36394 e!222738))

(assert (=> start!36394 true))

(declare-fun array_inv!7232 (array!20636) Bool)

(assert (=> start!36394 (array_inv!7232 a!4289)))

(declare-fun b!363776 () Bool)

(assert (=> b!363776 (= e!222738 e!222739)))

(declare-fun res!203087 () Bool)

(assert (=> b!363776 (=> (not res!203087) (not e!222739))))

(assert (=> b!363776 (= res!203087 (and (= lt!168084 (bvadd #b00000000000000000000000000000001 lt!168082)) (bvsgt from!3650 #b00000000000000000000000000000000)))))

(assert (=> b!363776 (= lt!168084 (arrayCountValidKeys!0 lt!168085 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!363776 (= lt!168082 (arrayCountValidKeys!0 a!4289 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!363776 (= lt!168085 (array!20637 (store (arr!9794 a!4289) i!1472 k0!2974) (size!10146 a!4289)))))

(declare-fun b!363777 () Bool)

(assert (=> b!363777 (= e!222740 (bvsle #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!363777 (= (arrayCountValidKeys!0 lt!168085 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1472)) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 a!4289 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1472))))))

(declare-fun lt!168088 () Unit!11283)

(declare-fun lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 (array!20636 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11283)

(assert (=> b!363777 (= lt!168088 (lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 a!4289 i!1472 k0!2974 (bvsub from!3650 #b00000000000000000000000000000001)))))

(declare-fun b!363778 () Bool)

(declare-fun res!203085 () Bool)

(assert (=> b!363778 (=> (not res!203085) (not e!222738))))

(assert (=> b!363778 (= res!203085 (and (bvslt (size!10146 a!4289) #b01111111111111111111111111111111) (bvsge from!3650 #b00000000000000000000000000000000) (bvsle from!3650 (size!10146 a!4289)) (bvsge i!1472 from!3650)))))

(assert (= (and start!36394 res!203086) b!363775))

(assert (= (and b!363775 res!203084) b!363773))

(assert (= (and b!363773 res!203089) b!363778))

(assert (= (and b!363778 res!203085) b!363776))

(assert (= (and b!363776 res!203087) b!363774))

(assert (= (and b!363774 (not res!203088)) b!363777))

(declare-fun m!361155 () Bool)

(assert (=> b!363773 m!361155))

(declare-fun m!361157 () Bool)

(assert (=> b!363775 m!361157))

(assert (=> b!363775 m!361157))

(declare-fun m!361159 () Bool)

(assert (=> b!363775 m!361159))

(declare-fun m!361161 () Bool)

(assert (=> start!36394 m!361161))

(declare-fun m!361163 () Bool)

(assert (=> b!363776 m!361163))

(declare-fun m!361165 () Bool)

(assert (=> b!363776 m!361165))

(declare-fun m!361167 () Bool)

(assert (=> b!363776 m!361167))

(declare-fun m!361169 () Bool)

(assert (=> b!363774 m!361169))

(declare-fun m!361171 () Bool)

(assert (=> b!363774 m!361171))

(declare-fun m!361173 () Bool)

(assert (=> b!363774 m!361173))

(declare-fun m!361175 () Bool)

(assert (=> b!363774 m!361175))

(declare-fun m!361177 () Bool)

(assert (=> b!363774 m!361177))

(declare-fun m!361179 () Bool)

(assert (=> b!363774 m!361179))

(declare-fun m!361181 () Bool)

(assert (=> b!363777 m!361181))

(declare-fun m!361183 () Bool)

(assert (=> b!363777 m!361183))

(declare-fun m!361185 () Bool)

(assert (=> b!363777 m!361185))

(check-sat (not b!363776) (not b!363774) (not b!363775) (not b!363777) (not start!36394) (not b!363773))
(check-sat)
