; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117220 () Bool)

(assert start!117220)

(declare-fun b!1378910 () Bool)

(declare-fun res!921553 () Bool)

(declare-fun e!781157 () Bool)

(assert (=> b!1378910 (=> (not res!921553) (not e!781157))))

(declare-datatypes ((array!93753 0))(
  ( (array!93754 (arr!45272 (Array (_ BitVec 32) (_ BitVec 64))) (size!45823 (_ BitVec 32))) )
))
(declare-fun a!4094 () array!93753)

(declare-fun i!1451 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1378910 (= res!921553 (validKeyInArray!0 (select (arr!45272 a!4094) i!1451)))))

(declare-fun b!1378911 () Bool)

(declare-fun res!921556 () Bool)

(assert (=> b!1378911 (=> (not res!921556) (not e!781157))))

(declare-fun k0!2953 () (_ BitVec 64))

(assert (=> b!1378911 (= res!921556 (not (validKeyInArray!0 k0!2953)))))

(declare-fun b!1378912 () Bool)

(declare-fun e!781155 () Bool)

(assert (=> b!1378912 (= e!781157 e!781155)))

(declare-fun res!921554 () Bool)

(assert (=> b!1378912 (=> (not res!921554) (not e!781155))))

(declare-fun from!3466 () (_ BitVec 32))

(declare-fun lt!606982 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93753 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1378912 (= res!921554 (= (arrayCountValidKeys!0 (array!93754 (store (arr!45272 a!4094) i!1451 k0!2953) (size!45823 a!4094)) from!3466 (bvadd #b00000000000000000000000000000001 i!1451)) (bvsub lt!606982 #b00000000000000000000000000000001)))))

(assert (=> b!1378912 (= lt!606982 (arrayCountValidKeys!0 a!4094 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun b!1378913 () Bool)

(declare-fun res!921558 () Bool)

(assert (=> b!1378913 (=> (not res!921558) (not e!781155))))

(assert (=> b!1378913 (= res!921558 (bvsgt from!3466 #b00000000000000000000000000000000))))

(declare-fun b!1378914 () Bool)

(declare-fun res!921557 () Bool)

(assert (=> b!1378914 (=> (not res!921557) (not e!781157))))

(assert (=> b!1378914 (= res!921557 (and (bvslt (size!45823 a!4094) #b01111111111111111111111111111111) (bvsge from!3466 #b00000000000000000000000000000000) (bvsle from!3466 (size!45823 a!4094)) (bvsge i!1451 from!3466)))))

(declare-fun res!921555 () Bool)

(assert (=> start!117220 (=> (not res!921555) (not e!781157))))

(assert (=> start!117220 (= res!921555 (and (bvsge i!1451 #b00000000000000000000000000000000) (bvslt i!1451 (size!45823 a!4094))))))

(assert (=> start!117220 e!781157))

(assert (=> start!117220 true))

(declare-fun array_inv!34217 (array!93753) Bool)

(assert (=> start!117220 (array_inv!34217 a!4094)))

(declare-fun b!1378915 () Bool)

(assert (=> b!1378915 (= e!781155 (not (and (bvsge (bvadd #b00000000000000000000000000000001 i!1451) (bvsub from!3466 #b00000000000000000000000000000001)) (bvsge from!3466 (bvsub from!3466 #b00000000000000000000000000000001)) (bvsle from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))))

(assert (=> b!1378915 (= (bvadd (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) from!3466) lt!606982) (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-datatypes ((Unit!45769 0))(
  ( (Unit!45770) )
))
(declare-fun lt!606981 () Unit!45769)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93753 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45769)

(assert (=> b!1378915 (= lt!606981 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(assert (= (and start!117220 res!921555) b!1378910))

(assert (= (and b!1378910 res!921553) b!1378911))

(assert (= (and b!1378911 res!921556) b!1378914))

(assert (= (and b!1378914 res!921557) b!1378912))

(assert (= (and b!1378912 res!921554) b!1378913))

(assert (= (and b!1378913 res!921558) b!1378915))

(declare-fun m!1263803 () Bool)

(assert (=> b!1378912 m!1263803))

(declare-fun m!1263805 () Bool)

(assert (=> b!1378912 m!1263805))

(declare-fun m!1263807 () Bool)

(assert (=> b!1378912 m!1263807))

(declare-fun m!1263809 () Bool)

(assert (=> b!1378911 m!1263809))

(declare-fun m!1263811 () Bool)

(assert (=> start!117220 m!1263811))

(declare-fun m!1263813 () Bool)

(assert (=> b!1378910 m!1263813))

(assert (=> b!1378910 m!1263813))

(declare-fun m!1263815 () Bool)

(assert (=> b!1378910 m!1263815))

(declare-fun m!1263817 () Bool)

(assert (=> b!1378915 m!1263817))

(declare-fun m!1263819 () Bool)

(assert (=> b!1378915 m!1263819))

(declare-fun m!1263821 () Bool)

(assert (=> b!1378915 m!1263821))

(check-sat (not start!117220) (not b!1378915) (not b!1378911) (not b!1378910) (not b!1378912))
(check-sat)
