; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36170 () Bool)

(assert start!36170)

(declare-fun res!201850 () Bool)

(declare-fun e!221964 () Bool)

(assert (=> start!36170 (=> (not res!201850) (not e!221964))))

(declare-fun i!1478 () (_ BitVec 32))

(declare-datatypes ((array!20448 0))(
  ( (array!20449 (arr!9703 (Array (_ BitVec 32) (_ BitVec 64))) (size!10055 (_ BitVec 32))) )
))
(declare-fun a!4337 () array!20448)

(assert (=> start!36170 (= res!201850 (and (bvsge i!1478 #b00000000000000000000000000000000) (bvslt i!1478 (size!10055 a!4337))))))

(assert (=> start!36170 e!221964))

(assert (=> start!36170 true))

(declare-fun array_inv!7141 (array!20448) Bool)

(assert (=> start!36170 (array_inv!7141 a!4337)))

(declare-fun b!362406 () Bool)

(declare-fun e!221966 () Bool)

(assert (=> b!362406 (= e!221966 true)))

(declare-fun lt!166817 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!20448 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!362406 (= lt!166817 (arrayCountValidKeys!0 a!4337 (bvadd #b00000000000000000000000000000001 i!1478) (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun lt!166819 () (_ BitVec 32))

(declare-fun lt!166818 () array!20448)

(assert (=> b!362406 (= lt!166819 (arrayCountValidKeys!0 lt!166818 (bvadd #b00000000000000000000000000000001 i!1478) (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun b!362407 () Bool)

(declare-fun res!201849 () Bool)

(assert (=> b!362407 (=> (not res!201849) (not e!221964))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!362407 (= res!201849 (not (validKeyInArray!0 (select (arr!9703 a!4337) i!1478))))))

(declare-fun b!362408 () Bool)

(declare-fun res!201853 () Bool)

(assert (=> b!362408 (=> (not res!201853) (not e!221964))))

(declare-fun k!2980 () (_ BitVec 64))

(assert (=> b!362408 (= res!201853 (validKeyInArray!0 k!2980))))

(declare-fun b!362409 () Bool)

(declare-fun res!201852 () Bool)

(assert (=> b!362409 (=> (not res!201852) (not e!221964))))

(assert (=> b!362409 (= res!201852 (bvslt (size!10055 a!4337) #b01111111111111111111111111111111))))

(declare-fun b!362410 () Bool)

(assert (=> b!362410 (= e!221964 (not e!221966))))

(declare-fun res!201851 () Bool)

(assert (=> b!362410 (=> res!201851 e!221966)))

(assert (=> b!362410 (= res!201851 (or (bvslt (bvadd #b00000000000000000000000000000001 i!1478) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1478) i!1478)))))

(assert (=> b!362410 (= (arrayCountValidKeys!0 lt!166818 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478)) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 a!4337 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478))))))

(assert (=> b!362410 (= lt!166818 (array!20449 (store (arr!9703 a!4337) i!1478 k!2980) (size!10055 a!4337)))))

(declare-datatypes ((Unit!11131 0))(
  ( (Unit!11132) )
))
(declare-fun lt!166820 () Unit!11131)

(declare-fun lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 (array!20448 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11131)

(assert (=> b!362410 (= lt!166820 (lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 a!4337 i!1478 k!2980 i!1478))))

(assert (= (and start!36170 res!201850) b!362407))

(assert (= (and b!362407 res!201849) b!362408))

(assert (= (and b!362408 res!201853) b!362409))

(assert (= (and b!362409 res!201852) b!362410))

(assert (= (and b!362410 (not res!201851)) b!362406))

(declare-fun m!359035 () Bool)

(assert (=> b!362408 m!359035))

(declare-fun m!359037 () Bool)

(assert (=> b!362410 m!359037))

(declare-fun m!359039 () Bool)

(assert (=> b!362410 m!359039))

(declare-fun m!359041 () Bool)

(assert (=> b!362410 m!359041))

(declare-fun m!359043 () Bool)

(assert (=> b!362410 m!359043))

(declare-fun m!359045 () Bool)

(assert (=> b!362407 m!359045))

(assert (=> b!362407 m!359045))

(declare-fun m!359047 () Bool)

(assert (=> b!362407 m!359047))

(declare-fun m!359049 () Bool)

(assert (=> b!362406 m!359049))

(declare-fun m!359051 () Bool)

(assert (=> b!362406 m!359051))

(declare-fun m!359053 () Bool)

(assert (=> start!36170 m!359053))

(push 1)

(assert (not b!362408))

(assert (not b!362406))

(assert (not b!362407))

(assert (not start!36170))

(assert (not b!362410))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

