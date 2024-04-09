; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36264 () Bool)

(assert start!36264)

(declare-fun res!202351 () Bool)

(declare-fun e!222274 () Bool)

(assert (=> start!36264 (=> (not res!202351) (not e!222274))))

(declare-fun i!1478 () (_ BitVec 32))

(declare-datatypes ((array!20527 0))(
  ( (array!20528 (arr!9741 (Array (_ BitVec 32) (_ BitVec 64))) (size!10093 (_ BitVec 32))) )
))
(declare-fun a!4337 () array!20527)

(assert (=> start!36264 (= res!202351 (and (bvsge i!1478 #b00000000000000000000000000000000) (bvslt i!1478 (size!10093 a!4337))))))

(assert (=> start!36264 e!222274))

(assert (=> start!36264 true))

(declare-fun array_inv!7179 (array!20527) Bool)

(assert (=> start!36264 (array_inv!7179 a!4337)))

(declare-fun b!362965 () Bool)

(declare-fun res!202350 () Bool)

(assert (=> b!362965 (=> (not res!202350) (not e!222274))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!362965 (= res!202350 (not (validKeyInArray!0 (select (arr!9741 a!4337) i!1478))))))

(declare-fun b!362968 () Bool)

(assert (=> b!362968 (= e!222274 (not true))))

(declare-fun k!2980 () (_ BitVec 64))

(declare-fun arrayCountValidKeys!0 (array!20527 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!362968 (= (arrayCountValidKeys!0 (array!20528 (store (arr!9741 a!4337) i!1478 k!2980) (size!10093 a!4337)) #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478)) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 a!4337 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478))))))

(declare-datatypes ((Unit!11195 0))(
  ( (Unit!11196) )
))
(declare-fun lt!167336 () Unit!11195)

(declare-fun lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 (array!20527 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11195)

(assert (=> b!362968 (= lt!167336 (lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 a!4337 i!1478 k!2980 i!1478))))

(declare-fun b!362967 () Bool)

(declare-fun res!202348 () Bool)

(assert (=> b!362967 (=> (not res!202348) (not e!222274))))

(assert (=> b!362967 (= res!202348 (bvslt (size!10093 a!4337) #b01111111111111111111111111111111))))

(declare-fun b!362966 () Bool)

(declare-fun res!202349 () Bool)

(assert (=> b!362966 (=> (not res!202349) (not e!222274))))

(assert (=> b!362966 (= res!202349 (validKeyInArray!0 k!2980))))

(assert (= (and start!36264 res!202351) b!362965))

(assert (= (and b!362965 res!202350) b!362966))

(assert (= (and b!362966 res!202349) b!362967))

(assert (= (and b!362967 res!202348) b!362968))

(declare-fun m!359889 () Bool)

(assert (=> start!36264 m!359889))

(declare-fun m!359891 () Bool)

(assert (=> b!362965 m!359891))

(assert (=> b!362965 m!359891))

(declare-fun m!359893 () Bool)

(assert (=> b!362965 m!359893))

(declare-fun m!359895 () Bool)

(assert (=> b!362968 m!359895))

(declare-fun m!359897 () Bool)

(assert (=> b!362968 m!359897))

(declare-fun m!359899 () Bool)

(assert (=> b!362968 m!359899))

(declare-fun m!359901 () Bool)

(assert (=> b!362968 m!359901))

(declare-fun m!359903 () Bool)

(assert (=> b!362966 m!359903))

(push 1)

(assert (not start!36264))

(assert (not b!362968))

(assert (not b!362965))

(assert (not b!362966))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

