; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117124 () Bool)

(assert start!117124)

(declare-fun b!1378167 () Bool)

(declare-fun res!920812 () Bool)

(declare-fun e!780742 () Bool)

(assert (=> b!1378167 (=> (not res!920812) (not e!780742))))

(declare-fun k0!2953 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1378167 (= res!920812 (not (validKeyInArray!0 k0!2953)))))

(declare-fun b!1378168 () Bool)

(declare-fun res!920811 () Bool)

(assert (=> b!1378168 (=> (not res!920811) (not e!780742))))

(declare-datatypes ((array!93657 0))(
  ( (array!93658 (arr!45224 (Array (_ BitVec 32) (_ BitVec 64))) (size!45775 (_ BitVec 32))) )
))
(declare-fun a!4094 () array!93657)

(declare-fun i!1451 () (_ BitVec 32))

(assert (=> b!1378168 (= res!920811 (validKeyInArray!0 (select (arr!45224 a!4094) i!1451)))))

(declare-fun res!920814 () Bool)

(assert (=> start!117124 (=> (not res!920814) (not e!780742))))

(assert (=> start!117124 (= res!920814 (and (bvsge i!1451 #b00000000000000000000000000000000) (bvslt i!1451 (size!45775 a!4094))))))

(assert (=> start!117124 e!780742))

(assert (=> start!117124 true))

(declare-fun array_inv!34169 (array!93657) Bool)

(assert (=> start!117124 (array_inv!34169 a!4094)))

(declare-fun b!1378169 () Bool)

(declare-fun e!780741 () Bool)

(assert (=> b!1378169 (= e!780742 e!780741)))

(declare-fun res!920810 () Bool)

(assert (=> b!1378169 (=> (not res!920810) (not e!780741))))

(declare-fun lt!606343 () (_ BitVec 32))

(declare-fun from!3466 () (_ BitVec 32))

(declare-fun lt!606339 () (_ BitVec 32))

(assert (=> b!1378169 (= res!920810 (and (= lt!606339 (bvsub lt!606343 #b00000000000000000000000000000001)) (bvsgt from!3466 #b00000000000000000000000000000000)))))

(declare-fun lt!606341 () array!93657)

(declare-fun arrayCountValidKeys!0 (array!93657 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1378169 (= lt!606339 (arrayCountValidKeys!0 lt!606341 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1378169 (= lt!606343 (arrayCountValidKeys!0 a!4094 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1378169 (= lt!606341 (array!93658 (store (arr!45224 a!4094) i!1451 k0!2953) (size!45775 a!4094)))))

(declare-fun b!1378170 () Bool)

(declare-fun res!920813 () Bool)

(assert (=> b!1378170 (=> (not res!920813) (not e!780742))))

(assert (=> b!1378170 (= res!920813 (and (bvslt (size!45775 a!4094) #b01111111111111111111111111111111) (bvsge from!3466 #b00000000000000000000000000000000) (bvsle from!3466 (size!45775 a!4094)) (bvsge i!1451 from!3466)))))

(declare-fun b!1378171 () Bool)

(assert (=> b!1378171 (= e!780741 (not true))))

(assert (=> b!1378171 (= (bvadd (arrayCountValidKeys!0 lt!606341 (bvsub from!3466 #b00000000000000000000000000000001) from!3466) lt!606339) (arrayCountValidKeys!0 lt!606341 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-datatypes ((Unit!45709 0))(
  ( (Unit!45710) )
))
(declare-fun lt!606340 () Unit!45709)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93657 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45709)

(assert (=> b!1378171 (= lt!606340 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!606341 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(assert (=> b!1378171 (= (bvadd (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) from!3466) lt!606343) (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun lt!606342 () Unit!45709)

(assert (=> b!1378171 (= lt!606342 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(assert (= (and start!117124 res!920814) b!1378168))

(assert (= (and b!1378168 res!920811) b!1378167))

(assert (= (and b!1378167 res!920812) b!1378170))

(assert (= (and b!1378170 res!920813) b!1378169))

(assert (= (and b!1378169 res!920810) b!1378171))

(declare-fun m!1262723 () Bool)

(assert (=> start!117124 m!1262723))

(declare-fun m!1262725 () Bool)

(assert (=> b!1378171 m!1262725))

(declare-fun m!1262727 () Bool)

(assert (=> b!1378171 m!1262727))

(declare-fun m!1262729 () Bool)

(assert (=> b!1378171 m!1262729))

(declare-fun m!1262731 () Bool)

(assert (=> b!1378171 m!1262731))

(declare-fun m!1262733 () Bool)

(assert (=> b!1378171 m!1262733))

(declare-fun m!1262735 () Bool)

(assert (=> b!1378171 m!1262735))

(declare-fun m!1262737 () Bool)

(assert (=> b!1378169 m!1262737))

(declare-fun m!1262739 () Bool)

(assert (=> b!1378169 m!1262739))

(declare-fun m!1262741 () Bool)

(assert (=> b!1378169 m!1262741))

(declare-fun m!1262743 () Bool)

(assert (=> b!1378168 m!1262743))

(assert (=> b!1378168 m!1262743))

(declare-fun m!1262745 () Bool)

(assert (=> b!1378168 m!1262745))

(declare-fun m!1262747 () Bool)

(assert (=> b!1378167 m!1262747))

(check-sat (not b!1378168) (not b!1378171) (not b!1378167) (not b!1378169) (not start!117124))
