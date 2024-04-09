; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117112 () Bool)

(assert start!117112)

(declare-fun b!1378073 () Bool)

(declare-fun e!780688 () Bool)

(declare-fun e!780687 () Bool)

(assert (=> b!1378073 (= e!780688 e!780687)))

(declare-fun res!920720 () Bool)

(assert (=> b!1378073 (=> (not res!920720) (not e!780687))))

(declare-fun k0!2953 () (_ BitVec 64))

(declare-fun from!3466 () (_ BitVec 32))

(declare-fun lt!606262 () (_ BitVec 32))

(declare-fun i!1451 () (_ BitVec 32))

(declare-datatypes ((array!93645 0))(
  ( (array!93646 (arr!45218 (Array (_ BitVec 32) (_ BitVec 64))) (size!45769 (_ BitVec 32))) )
))
(declare-fun a!4094 () array!93645)

(declare-fun arrayCountValidKeys!0 (array!93645 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1378073 (= res!920720 (= (arrayCountValidKeys!0 (array!93646 (store (arr!45218 a!4094) i!1451 k0!2953) (size!45769 a!4094)) from!3466 (bvadd #b00000000000000000000000000000001 i!1451)) (bvsub lt!606262 #b00000000000000000000000000000001)))))

(assert (=> b!1378073 (= lt!606262 (arrayCountValidKeys!0 a!4094 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun b!1378074 () Bool)

(declare-fun res!920716 () Bool)

(assert (=> b!1378074 (=> (not res!920716) (not e!780688))))

(assert (=> b!1378074 (= res!920716 (and (bvslt (size!45769 a!4094) #b01111111111111111111111111111111) (bvsge from!3466 #b00000000000000000000000000000000) (bvsle from!3466 (size!45769 a!4094)) (bvsge i!1451 from!3466)))))

(declare-fun b!1378076 () Bool)

(assert (=> b!1378076 (= e!780687 (not true))))

(assert (=> b!1378076 (= (bvadd (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) from!3466) lt!606262) (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-datatypes ((Unit!45697 0))(
  ( (Unit!45698) )
))
(declare-fun lt!606261 () Unit!45697)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93645 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45697)

(assert (=> b!1378076 (= lt!606261 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(declare-fun b!1378077 () Bool)

(declare-fun res!920719 () Bool)

(assert (=> b!1378077 (=> (not res!920719) (not e!780688))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1378077 (= res!920719 (validKeyInArray!0 (select (arr!45218 a!4094) i!1451)))))

(declare-fun b!1378078 () Bool)

(declare-fun res!920717 () Bool)

(assert (=> b!1378078 (=> (not res!920717) (not e!780687))))

(assert (=> b!1378078 (= res!920717 (bvsgt from!3466 #b00000000000000000000000000000000))))

(declare-fun b!1378075 () Bool)

(declare-fun res!920718 () Bool)

(assert (=> b!1378075 (=> (not res!920718) (not e!780688))))

(assert (=> b!1378075 (= res!920718 (not (validKeyInArray!0 k0!2953)))))

(declare-fun res!920721 () Bool)

(assert (=> start!117112 (=> (not res!920721) (not e!780688))))

(assert (=> start!117112 (= res!920721 (and (bvsge i!1451 #b00000000000000000000000000000000) (bvslt i!1451 (size!45769 a!4094))))))

(assert (=> start!117112 e!780688))

(assert (=> start!117112 true))

(declare-fun array_inv!34163 (array!93645) Bool)

(assert (=> start!117112 (array_inv!34163 a!4094)))

(assert (= (and start!117112 res!920721) b!1378077))

(assert (= (and b!1378077 res!920719) b!1378075))

(assert (= (and b!1378075 res!920718) b!1378074))

(assert (= (and b!1378074 res!920716) b!1378073))

(assert (= (and b!1378073 res!920720) b!1378078))

(assert (= (and b!1378078 res!920717) b!1378076))

(declare-fun m!1262579 () Bool)

(assert (=> b!1378073 m!1262579))

(declare-fun m!1262581 () Bool)

(assert (=> b!1378073 m!1262581))

(declare-fun m!1262583 () Bool)

(assert (=> b!1378073 m!1262583))

(declare-fun m!1262585 () Bool)

(assert (=> b!1378077 m!1262585))

(assert (=> b!1378077 m!1262585))

(declare-fun m!1262587 () Bool)

(assert (=> b!1378077 m!1262587))

(declare-fun m!1262589 () Bool)

(assert (=> b!1378075 m!1262589))

(declare-fun m!1262591 () Bool)

(assert (=> start!117112 m!1262591))

(declare-fun m!1262593 () Bool)

(assert (=> b!1378076 m!1262593))

(declare-fun m!1262595 () Bool)

(assert (=> b!1378076 m!1262595))

(declare-fun m!1262597 () Bool)

(assert (=> b!1378076 m!1262597))

(check-sat (not start!117112) (not b!1378077) (not b!1378075) (not b!1378076) (not b!1378073))
(check-sat)
