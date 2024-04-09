; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36400 () Bool)

(assert start!36400)

(declare-fun res!203140 () Bool)

(declare-fun e!222776 () Bool)

(assert (=> start!36400 (=> (not res!203140) (not e!222776))))

(declare-fun i!1472 () (_ BitVec 32))

(declare-datatypes ((array!20642 0))(
  ( (array!20643 (arr!9797 (Array (_ BitVec 32) (_ BitVec 64))) (size!10149 (_ BitVec 32))) )
))
(declare-fun a!4289 () array!20642)

(assert (=> start!36400 (= res!203140 (and (bvsge i!1472 #b00000000000000000000000000000000) (bvslt i!1472 (size!10149 a!4289))))))

(assert (=> start!36400 e!222776))

(assert (=> start!36400 true))

(declare-fun array_inv!7235 (array!20642) Bool)

(assert (=> start!36400 (array_inv!7235 a!4289)))

(declare-fun b!363827 () Bool)

(declare-fun res!203138 () Bool)

(assert (=> b!363827 (=> (not res!203138) (not e!222776))))

(declare-fun k0!2974 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!363827 (= res!203138 (validKeyInArray!0 k0!2974))))

(declare-fun b!363828 () Bool)

(declare-fun res!203141 () Bool)

(assert (=> b!363828 (=> (not res!203141) (not e!222776))))

(declare-fun from!3650 () (_ BitVec 32))

(assert (=> b!363828 (= res!203141 (and (bvslt (size!10149 a!4289) #b01111111111111111111111111111111) (bvsge from!3650 #b00000000000000000000000000000000) (bvsle from!3650 (size!10149 a!4289)) (bvsge i!1472 from!3650)))))

(declare-fun b!363829 () Bool)

(declare-fun e!222774 () Bool)

(assert (=> b!363829 (= e!222774 true)))

(declare-fun lt!168170 () array!20642)

(declare-fun arrayCountValidKeys!0 (array!20642 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!363829 (= (arrayCountValidKeys!0 lt!168170 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1472)) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 a!4289 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1472))))))

(declare-datatypes ((Unit!11289 0))(
  ( (Unit!11290) )
))
(declare-fun lt!168179 () Unit!11289)

(declare-fun lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 (array!20642 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11289)

(assert (=> b!363829 (= lt!168179 (lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 a!4289 i!1472 k0!2974 (bvsub from!3650 #b00000000000000000000000000000001)))))

(declare-fun b!363830 () Bool)

(declare-fun e!222773 () Bool)

(assert (=> b!363830 (= e!222776 e!222773)))

(declare-fun res!203139 () Bool)

(assert (=> b!363830 (=> (not res!203139) (not e!222773))))

(declare-fun lt!168171 () (_ BitVec 32))

(declare-fun lt!168178 () (_ BitVec 32))

(assert (=> b!363830 (= res!203139 (and (= lt!168178 (bvadd #b00000000000000000000000000000001 lt!168171)) (bvsgt from!3650 #b00000000000000000000000000000000)))))

(assert (=> b!363830 (= lt!168178 (arrayCountValidKeys!0 lt!168170 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!363830 (= lt!168171 (arrayCountValidKeys!0 a!4289 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!363830 (= lt!168170 (array!20643 (store (arr!9797 a!4289) i!1472 k0!2974) (size!10149 a!4289)))))

(declare-fun b!363831 () Bool)

(declare-fun res!203143 () Bool)

(assert (=> b!363831 (=> (not res!203143) (not e!222776))))

(assert (=> b!363831 (= res!203143 (not (validKeyInArray!0 (select (arr!9797 a!4289) i!1472))))))

(declare-fun b!363832 () Bool)

(assert (=> b!363832 (= e!222773 (not e!222774))))

(declare-fun res!203142 () Bool)

(assert (=> b!363832 (=> res!203142 e!222774)))

(declare-fun lt!168172 () (_ BitVec 32))

(declare-fun lt!168175 () (_ BitVec 32))

(assert (=> b!363832 (= res!203142 (or (bvsgt (bvsub from!3650 #b00000000000000000000000000000001) (size!10149 a!4289)) (bvslt i!1472 (bvsub from!3650 #b00000000000000000000000000000001)) (not (= lt!168172 (bvadd #b00000000000000000000000000000001 lt!168175)))))))

(declare-fun lt!168176 () (_ BitVec 32))

(assert (=> b!363832 (= (bvadd lt!168176 lt!168178) lt!168172)))

(assert (=> b!363832 (= lt!168172 (arrayCountValidKeys!0 lt!168170 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!363832 (= lt!168176 (arrayCountValidKeys!0 lt!168170 (bvsub from!3650 #b00000000000000000000000000000001) from!3650))))

(declare-fun lt!168177 () Unit!11289)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!20642 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!11289)

(assert (=> b!363832 (= lt!168177 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!168170 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(declare-fun lt!168174 () (_ BitVec 32))

(assert (=> b!363832 (= (bvadd lt!168174 lt!168171) lt!168175)))

(assert (=> b!363832 (= lt!168175 (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!363832 (= lt!168174 (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) from!3650))))

(declare-fun lt!168173 () Unit!11289)

(assert (=> b!363832 (= lt!168173 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(assert (= (and start!36400 res!203140) b!363831))

(assert (= (and b!363831 res!203143) b!363827))

(assert (= (and b!363827 res!203138) b!363828))

(assert (= (and b!363828 res!203141) b!363830))

(assert (= (and b!363830 res!203139) b!363832))

(assert (= (and b!363832 (not res!203142)) b!363829))

(declare-fun m!361251 () Bool)

(assert (=> b!363832 m!361251))

(declare-fun m!361253 () Bool)

(assert (=> b!363832 m!361253))

(declare-fun m!361255 () Bool)

(assert (=> b!363832 m!361255))

(declare-fun m!361257 () Bool)

(assert (=> b!363832 m!361257))

(declare-fun m!361259 () Bool)

(assert (=> b!363832 m!361259))

(declare-fun m!361261 () Bool)

(assert (=> b!363832 m!361261))

(declare-fun m!361263 () Bool)

(assert (=> b!363830 m!361263))

(declare-fun m!361265 () Bool)

(assert (=> b!363830 m!361265))

(declare-fun m!361267 () Bool)

(assert (=> b!363830 m!361267))

(declare-fun m!361269 () Bool)

(assert (=> b!363831 m!361269))

(assert (=> b!363831 m!361269))

(declare-fun m!361271 () Bool)

(assert (=> b!363831 m!361271))

(declare-fun m!361273 () Bool)

(assert (=> b!363829 m!361273))

(declare-fun m!361275 () Bool)

(assert (=> b!363829 m!361275))

(declare-fun m!361277 () Bool)

(assert (=> b!363829 m!361277))

(declare-fun m!361279 () Bool)

(assert (=> start!36400 m!361279))

(declare-fun m!361281 () Bool)

(assert (=> b!363827 m!361281))

(check-sat (not start!36400) (not b!363830) (not b!363829) (not b!363832) (not b!363827) (not b!363831))
(check-sat)
