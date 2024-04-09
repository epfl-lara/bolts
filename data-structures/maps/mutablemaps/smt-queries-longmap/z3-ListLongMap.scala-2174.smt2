; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36388 () Bool)

(assert start!36388)

(declare-fun b!363723 () Bool)

(declare-fun res!203038 () Bool)

(declare-fun e!222706 () Bool)

(assert (=> b!363723 (=> (not res!203038) (not e!222706))))

(declare-datatypes ((array!20630 0))(
  ( (array!20631 (arr!9791 (Array (_ BitVec 32) (_ BitVec 64))) (size!10143 (_ BitVec 32))) )
))
(declare-fun a!4289 () array!20630)

(declare-fun i!1472 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!363723 (= res!203038 (not (validKeyInArray!0 (select (arr!9791 a!4289) i!1472))))))

(declare-fun b!363724 () Bool)

(declare-fun res!203035 () Bool)

(assert (=> b!363724 (=> (not res!203035) (not e!222706))))

(declare-fun from!3650 () (_ BitVec 32))

(assert (=> b!363724 (= res!203035 (and (bvslt (size!10143 a!4289) #b01111111111111111111111111111111) (bvsge from!3650 #b00000000000000000000000000000000) (bvsle from!3650 (size!10143 a!4289)) (bvsge i!1472 from!3650)))))

(declare-fun res!203036 () Bool)

(assert (=> start!36388 (=> (not res!203036) (not e!222706))))

(assert (=> start!36388 (= res!203036 (and (bvsge i!1472 #b00000000000000000000000000000000) (bvslt i!1472 (size!10143 a!4289))))))

(assert (=> start!36388 e!222706))

(assert (=> start!36388 true))

(declare-fun array_inv!7229 (array!20630) Bool)

(assert (=> start!36388 (array_inv!7229 a!4289)))

(declare-fun b!363725 () Bool)

(declare-fun e!222705 () Bool)

(assert (=> b!363725 (= e!222705 (not true))))

(declare-fun lt!168013 () array!20630)

(declare-fun lt!168011 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!20630 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!363725 (= (bvadd (arrayCountValidKeys!0 lt!168013 (bvsub from!3650 #b00000000000000000000000000000001) from!3650) lt!168011) (arrayCountValidKeys!0 lt!168013 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-datatypes ((Unit!11277 0))(
  ( (Unit!11278) )
))
(declare-fun lt!168012 () Unit!11277)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!20630 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!11277)

(assert (=> b!363725 (= lt!168012 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!168013 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(declare-fun lt!168014 () (_ BitVec 32))

(assert (=> b!363725 (= (bvadd (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) from!3650) lt!168014) (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun lt!168010 () Unit!11277)

(assert (=> b!363725 (= lt!168010 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(declare-fun b!363726 () Bool)

(assert (=> b!363726 (= e!222706 e!222705)))

(declare-fun res!203037 () Bool)

(assert (=> b!363726 (=> (not res!203037) (not e!222705))))

(assert (=> b!363726 (= res!203037 (and (= lt!168011 (bvadd #b00000000000000000000000000000001 lt!168014)) (bvsgt from!3650 #b00000000000000000000000000000000)))))

(assert (=> b!363726 (= lt!168011 (arrayCountValidKeys!0 lt!168013 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!363726 (= lt!168014 (arrayCountValidKeys!0 a!4289 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun k0!2974 () (_ BitVec 64))

(assert (=> b!363726 (= lt!168013 (array!20631 (store (arr!9791 a!4289) i!1472 k0!2974) (size!10143 a!4289)))))

(declare-fun b!363727 () Bool)

(declare-fun res!203034 () Bool)

(assert (=> b!363727 (=> (not res!203034) (not e!222706))))

(assert (=> b!363727 (= res!203034 (validKeyInArray!0 k0!2974))))

(assert (= (and start!36388 res!203036) b!363723))

(assert (= (and b!363723 res!203038) b!363727))

(assert (= (and b!363727 res!203034) b!363724))

(assert (= (and b!363724 res!203035) b!363726))

(assert (= (and b!363726 res!203037) b!363725))

(declare-fun m!361071 () Bool)

(assert (=> b!363725 m!361071))

(declare-fun m!361073 () Bool)

(assert (=> b!363725 m!361073))

(declare-fun m!361075 () Bool)

(assert (=> b!363725 m!361075))

(declare-fun m!361077 () Bool)

(assert (=> b!363725 m!361077))

(declare-fun m!361079 () Bool)

(assert (=> b!363725 m!361079))

(declare-fun m!361081 () Bool)

(assert (=> b!363725 m!361081))

(declare-fun m!361083 () Bool)

(assert (=> b!363727 m!361083))

(declare-fun m!361085 () Bool)

(assert (=> b!363726 m!361085))

(declare-fun m!361087 () Bool)

(assert (=> b!363726 m!361087))

(declare-fun m!361089 () Bool)

(assert (=> b!363726 m!361089))

(declare-fun m!361091 () Bool)

(assert (=> start!36388 m!361091))

(declare-fun m!361093 () Bool)

(assert (=> b!363723 m!361093))

(assert (=> b!363723 m!361093))

(declare-fun m!361095 () Bool)

(assert (=> b!363723 m!361095))

(check-sat (not b!363726) (not b!363725) (not b!363723) (not b!363727) (not start!36388))
(check-sat)
