; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36178 () Bool)

(assert start!36178)

(declare-fun b!362466 () Bool)

(declare-fun e!222001 () Bool)

(declare-fun e!222002 () Bool)

(assert (=> b!362466 (= e!222001 (not e!222002))))

(declare-fun res!201911 () Bool)

(assert (=> b!362466 (=> res!201911 e!222002)))

(declare-fun i!1478 () (_ BitVec 32))

(assert (=> b!362466 (= res!201911 (or (bvslt (bvadd #b00000000000000000000000000000001 i!1478) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1478) i!1478)))))

(declare-datatypes ((array!20456 0))(
  ( (array!20457 (arr!9707 (Array (_ BitVec 32) (_ BitVec 64))) (size!10059 (_ BitVec 32))) )
))
(declare-fun lt!166867 () array!20456)

(declare-fun a!4337 () array!20456)

(declare-fun arrayCountValidKeys!0 (array!20456 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!362466 (= (arrayCountValidKeys!0 lt!166867 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478)) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 a!4337 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478))))))

(declare-fun k0!2980 () (_ BitVec 64))

(assert (=> b!362466 (= lt!166867 (array!20457 (store (arr!9707 a!4337) i!1478 k0!2980) (size!10059 a!4337)))))

(declare-datatypes ((Unit!11139 0))(
  ( (Unit!11140) )
))
(declare-fun lt!166865 () Unit!11139)

(declare-fun lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 (array!20456 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11139)

(assert (=> b!362466 (= lt!166865 (lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 a!4337 i!1478 k0!2980 i!1478))))

(declare-fun b!362467 () Bool)

(declare-fun res!201910 () Bool)

(assert (=> b!362467 (=> (not res!201910) (not e!222001))))

(assert (=> b!362467 (= res!201910 (bvslt (size!10059 a!4337) #b01111111111111111111111111111111))))

(declare-fun b!362468 () Bool)

(assert (=> b!362468 (= e!222002 true)))

(declare-fun lt!166868 () (_ BitVec 32))

(assert (=> b!362468 (= lt!166868 (arrayCountValidKeys!0 a!4337 (bvadd #b00000000000000000000000000000001 i!1478) (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun lt!166866 () (_ BitVec 32))

(assert (=> b!362468 (= lt!166866 (arrayCountValidKeys!0 lt!166867 (bvadd #b00000000000000000000000000000001 i!1478) (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun b!362469 () Bool)

(declare-fun res!201913 () Bool)

(assert (=> b!362469 (=> (not res!201913) (not e!222001))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!362469 (= res!201913 (not (validKeyInArray!0 (select (arr!9707 a!4337) i!1478))))))

(declare-fun res!201912 () Bool)

(assert (=> start!36178 (=> (not res!201912) (not e!222001))))

(assert (=> start!36178 (= res!201912 (and (bvsge i!1478 #b00000000000000000000000000000000) (bvslt i!1478 (size!10059 a!4337))))))

(assert (=> start!36178 e!222001))

(assert (=> start!36178 true))

(declare-fun array_inv!7145 (array!20456) Bool)

(assert (=> start!36178 (array_inv!7145 a!4337)))

(declare-fun b!362470 () Bool)

(declare-fun res!201909 () Bool)

(assert (=> b!362470 (=> (not res!201909) (not e!222001))))

(assert (=> b!362470 (= res!201909 (validKeyInArray!0 k0!2980))))

(assert (= (and start!36178 res!201912) b!362469))

(assert (= (and b!362469 res!201913) b!362470))

(assert (= (and b!362470 res!201909) b!362467))

(assert (= (and b!362467 res!201910) b!362466))

(assert (= (and b!362466 (not res!201911)) b!362468))

(declare-fun m!359115 () Bool)

(assert (=> b!362466 m!359115))

(declare-fun m!359117 () Bool)

(assert (=> b!362466 m!359117))

(declare-fun m!359119 () Bool)

(assert (=> b!362466 m!359119))

(declare-fun m!359121 () Bool)

(assert (=> b!362466 m!359121))

(declare-fun m!359123 () Bool)

(assert (=> b!362468 m!359123))

(declare-fun m!359125 () Bool)

(assert (=> b!362468 m!359125))

(declare-fun m!359127 () Bool)

(assert (=> start!36178 m!359127))

(declare-fun m!359129 () Bool)

(assert (=> b!362469 m!359129))

(assert (=> b!362469 m!359129))

(declare-fun m!359131 () Bool)

(assert (=> b!362469 m!359131))

(declare-fun m!359133 () Bool)

(assert (=> b!362470 m!359133))

(check-sat (not b!362466) (not b!362468) (not b!362470) (not b!362469) (not start!36178))
