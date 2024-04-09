; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36250 () Bool)

(assert start!36250)

(declare-fun b!362882 () Bool)

(declare-fun res!202267 () Bool)

(declare-fun e!222232 () Bool)

(assert (=> b!362882 (=> (not res!202267) (not e!222232))))

(declare-fun k0!2980 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!362882 (= res!202267 (validKeyInArray!0 k0!2980))))

(declare-fun b!362883 () Bool)

(declare-fun res!202266 () Bool)

(assert (=> b!362883 (=> (not res!202266) (not e!222232))))

(declare-datatypes ((array!20513 0))(
  ( (array!20514 (arr!9734 (Array (_ BitVec 32) (_ BitVec 64))) (size!10086 (_ BitVec 32))) )
))
(declare-fun a!4337 () array!20513)

(assert (=> b!362883 (= res!202266 (bvslt (size!10086 a!4337) #b01111111111111111111111111111111))))

(declare-fun res!202265 () Bool)

(assert (=> start!36250 (=> (not res!202265) (not e!222232))))

(declare-fun i!1478 () (_ BitVec 32))

(assert (=> start!36250 (= res!202265 (and (bvsge i!1478 #b00000000000000000000000000000000) (bvslt i!1478 (size!10086 a!4337))))))

(assert (=> start!36250 e!222232))

(assert (=> start!36250 true))

(declare-fun array_inv!7172 (array!20513) Bool)

(assert (=> start!36250 (array_inv!7172 a!4337)))

(declare-fun b!362881 () Bool)

(declare-fun res!202264 () Bool)

(assert (=> b!362881 (=> (not res!202264) (not e!222232))))

(assert (=> b!362881 (= res!202264 (not (validKeyInArray!0 (select (arr!9734 a!4337) i!1478))))))

(declare-fun b!362884 () Bool)

(assert (=> b!362884 (= e!222232 (not true))))

(declare-fun arrayCountValidKeys!0 (array!20513 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!362884 (= (arrayCountValidKeys!0 (array!20514 (store (arr!9734 a!4337) i!1478 k0!2980) (size!10086 a!4337)) #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478)) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 a!4337 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478))))))

(declare-datatypes ((Unit!11181 0))(
  ( (Unit!11182) )
))
(declare-fun lt!167315 () Unit!11181)

(declare-fun lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 (array!20513 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11181)

(assert (=> b!362884 (= lt!167315 (lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 a!4337 i!1478 k0!2980 i!1478))))

(assert (= (and start!36250 res!202265) b!362881))

(assert (= (and b!362881 res!202264) b!362882))

(assert (= (and b!362882 res!202267) b!362883))

(assert (= (and b!362883 res!202266) b!362884))

(declare-fun m!359777 () Bool)

(assert (=> b!362882 m!359777))

(declare-fun m!359779 () Bool)

(assert (=> start!36250 m!359779))

(declare-fun m!359781 () Bool)

(assert (=> b!362881 m!359781))

(assert (=> b!362881 m!359781))

(declare-fun m!359783 () Bool)

(assert (=> b!362881 m!359783))

(declare-fun m!359785 () Bool)

(assert (=> b!362884 m!359785))

(declare-fun m!359787 () Bool)

(assert (=> b!362884 m!359787))

(declare-fun m!359789 () Bool)

(assert (=> b!362884 m!359789))

(declare-fun m!359791 () Bool)

(assert (=> b!362884 m!359791))

(check-sat (not b!362884) (not b!362881) (not b!362882) (not start!36250))
(check-sat)
