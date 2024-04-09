; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117104 () Bool)

(assert start!117104)

(declare-fun b!1378016 () Bool)

(declare-fun res!920660 () Bool)

(declare-fun e!780659 () Bool)

(assert (=> b!1378016 (=> (not res!920660) (not e!780659))))

(declare-fun k!2953 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1378016 (= res!920660 (not (validKeyInArray!0 k!2953)))))

(declare-fun b!1378018 () Bool)

(assert (=> b!1378018 (= e!780659 false)))

(declare-fun lt!606237 () (_ BitVec 32))

(declare-fun from!3466 () (_ BitVec 32))

(declare-fun i!1451 () (_ BitVec 32))

(declare-datatypes ((array!93637 0))(
  ( (array!93638 (arr!45214 (Array (_ BitVec 32) (_ BitVec 64))) (size!45765 (_ BitVec 32))) )
))
(declare-fun a!4094 () array!93637)

(declare-fun arrayCountValidKeys!0 (array!93637 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1378018 (= lt!606237 (arrayCountValidKeys!0 (array!93638 (store (arr!45214 a!4094) i!1451 k!2953) (size!45765 a!4094)) from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun lt!606238 () (_ BitVec 32))

(assert (=> b!1378018 (= lt!606238 (arrayCountValidKeys!0 a!4094 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun res!920659 () Bool)

(assert (=> start!117104 (=> (not res!920659) (not e!780659))))

(assert (=> start!117104 (= res!920659 (and (bvsge i!1451 #b00000000000000000000000000000000) (bvslt i!1451 (size!45765 a!4094))))))

(assert (=> start!117104 e!780659))

(assert (=> start!117104 true))

(declare-fun array_inv!34159 (array!93637) Bool)

(assert (=> start!117104 (array_inv!34159 a!4094)))

(declare-fun b!1378017 () Bool)

(declare-fun res!920658 () Bool)

(assert (=> b!1378017 (=> (not res!920658) (not e!780659))))

(assert (=> b!1378017 (= res!920658 (and (bvslt (size!45765 a!4094) #b01111111111111111111111111111111) (bvsge from!3466 #b00000000000000000000000000000000) (bvsle from!3466 (size!45765 a!4094)) (bvsge i!1451 from!3466)))))

(declare-fun b!1378015 () Bool)

(declare-fun res!920661 () Bool)

(assert (=> b!1378015 (=> (not res!920661) (not e!780659))))

(assert (=> b!1378015 (= res!920661 (validKeyInArray!0 (select (arr!45214 a!4094) i!1451)))))

(assert (= (and start!117104 res!920659) b!1378015))

(assert (= (and b!1378015 res!920661) b!1378016))

(assert (= (and b!1378016 res!920660) b!1378017))

(assert (= (and b!1378017 res!920658) b!1378018))

(declare-fun m!1262517 () Bool)

(assert (=> b!1378016 m!1262517))

(declare-fun m!1262519 () Bool)

(assert (=> b!1378018 m!1262519))

(declare-fun m!1262521 () Bool)

(assert (=> b!1378018 m!1262521))

(declare-fun m!1262523 () Bool)

(assert (=> b!1378018 m!1262523))

(declare-fun m!1262525 () Bool)

(assert (=> start!117104 m!1262525))

(declare-fun m!1262527 () Bool)

(assert (=> b!1378015 m!1262527))

(assert (=> b!1378015 m!1262527))

(declare-fun m!1262529 () Bool)

(assert (=> b!1378015 m!1262529))

(push 1)

(assert (not b!1378015))

(assert (not b!1378016))

(assert (not start!117104))

(assert (not b!1378018))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

