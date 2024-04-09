; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36304 () Bool)

(assert start!36304)

(declare-fun b!363154 () Bool)

(declare-fun e!222377 () Bool)

(declare-datatypes ((array!20546 0))(
  ( (array!20547 (arr!9749 (Array (_ BitVec 32) (_ BitVec 64))) (size!10101 (_ BitVec 32))) )
))
(declare-fun a!4337 () array!20546)

(declare-fun i!1478 () (_ BitVec 32))

(assert (=> b!363154 (= e!222377 (not (and (bvsge (size!10101 a!4337) #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 i!1478) #b00000000000000000000000000000000))))))

(declare-fun lt!167408 () array!20546)

(declare-fun arrayCountValidKeys!0 (array!20546 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!363154 (= (arrayCountValidKeys!0 lt!167408 (bvadd #b00000000000000000000000000000001 i!1478) (size!10101 a!4337)) (arrayCountValidKeys!0 a!4337 (bvadd #b00000000000000000000000000000001 i!1478) (size!10101 a!4337)))))

(declare-datatypes ((Unit!11211 0))(
  ( (Unit!11212) )
))
(declare-fun lt!167407 () Unit!11211)

(declare-fun k0!2980 () (_ BitVec 64))

(declare-fun lemmaAddValidKeyAndNumKeysToImpliesToALength!0 (array!20546 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11211)

(assert (=> b!363154 (= lt!167407 (lemmaAddValidKeyAndNumKeysToImpliesToALength!0 a!4337 i!1478 k0!2980 (bvadd #b00000000000000000000000000000001 i!1478)))))

(assert (=> b!363154 (= (arrayCountValidKeys!0 lt!167408 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478)) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 a!4337 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478))))))

(assert (=> b!363154 (= lt!167408 (array!20547 (store (arr!9749 a!4337) i!1478 k0!2980) (size!10101 a!4337)))))

(declare-fun lt!167406 () Unit!11211)

(declare-fun lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 (array!20546 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11211)

(assert (=> b!363154 (= lt!167406 (lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 a!4337 i!1478 k0!2980 i!1478))))

(declare-fun b!363151 () Bool)

(declare-fun res!202464 () Bool)

(assert (=> b!363151 (=> (not res!202464) (not e!222377))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!363151 (= res!202464 (not (validKeyInArray!0 (select (arr!9749 a!4337) i!1478))))))

(declare-fun res!202465 () Bool)

(assert (=> start!36304 (=> (not res!202465) (not e!222377))))

(assert (=> start!36304 (= res!202465 (and (bvsge i!1478 #b00000000000000000000000000000000) (bvslt i!1478 (size!10101 a!4337))))))

(assert (=> start!36304 e!222377))

(assert (=> start!36304 true))

(declare-fun array_inv!7187 (array!20546) Bool)

(assert (=> start!36304 (array_inv!7187 a!4337)))

(declare-fun b!363152 () Bool)

(declare-fun res!202462 () Bool)

(assert (=> b!363152 (=> (not res!202462) (not e!222377))))

(assert (=> b!363152 (= res!202462 (validKeyInArray!0 k0!2980))))

(declare-fun b!363153 () Bool)

(declare-fun res!202463 () Bool)

(assert (=> b!363153 (=> (not res!202463) (not e!222377))))

(assert (=> b!363153 (= res!202463 (bvslt (size!10101 a!4337) #b01111111111111111111111111111111))))

(assert (= (and start!36304 res!202465) b!363151))

(assert (= (and b!363151 res!202464) b!363152))

(assert (= (and b!363152 res!202462) b!363153))

(assert (= (and b!363153 res!202463) b!363154))

(declare-fun m!360125 () Bool)

(assert (=> b!363154 m!360125))

(declare-fun m!360127 () Bool)

(assert (=> b!363154 m!360127))

(declare-fun m!360129 () Bool)

(assert (=> b!363154 m!360129))

(declare-fun m!360131 () Bool)

(assert (=> b!363154 m!360131))

(declare-fun m!360133 () Bool)

(assert (=> b!363154 m!360133))

(declare-fun m!360135 () Bool)

(assert (=> b!363154 m!360135))

(declare-fun m!360137 () Bool)

(assert (=> b!363154 m!360137))

(declare-fun m!360139 () Bool)

(assert (=> b!363151 m!360139))

(assert (=> b!363151 m!360139))

(declare-fun m!360141 () Bool)

(assert (=> b!363151 m!360141))

(declare-fun m!360143 () Bool)

(assert (=> start!36304 m!360143))

(declare-fun m!360145 () Bool)

(assert (=> b!363152 m!360145))

(check-sat (not b!363154) (not start!36304) (not b!363152) (not b!363151))
(check-sat)
