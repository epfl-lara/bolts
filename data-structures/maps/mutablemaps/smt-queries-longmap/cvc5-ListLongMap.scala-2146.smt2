; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36176 () Bool)

(assert start!36176)

(declare-fun b!362451 () Bool)

(declare-fun e!221992 () Bool)

(declare-fun e!221993 () Bool)

(assert (=> b!362451 (= e!221992 (not e!221993))))

(declare-fun res!201898 () Bool)

(assert (=> b!362451 (=> res!201898 e!221993)))

(declare-fun i!1478 () (_ BitVec 32))

(assert (=> b!362451 (= res!201898 (or (bvslt (bvadd #b00000000000000000000000000000001 i!1478) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1478) i!1478)))))

(declare-datatypes ((array!20454 0))(
  ( (array!20455 (arr!9706 (Array (_ BitVec 32) (_ BitVec 64))) (size!10058 (_ BitVec 32))) )
))
(declare-fun lt!166853 () array!20454)

(declare-fun a!4337 () array!20454)

(declare-fun arrayCountValidKeys!0 (array!20454 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!362451 (= (arrayCountValidKeys!0 lt!166853 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478)) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 a!4337 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478))))))

(declare-fun k!2980 () (_ BitVec 64))

(assert (=> b!362451 (= lt!166853 (array!20455 (store (arr!9706 a!4337) i!1478 k!2980) (size!10058 a!4337)))))

(declare-datatypes ((Unit!11137 0))(
  ( (Unit!11138) )
))
(declare-fun lt!166855 () Unit!11137)

(declare-fun lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 (array!20454 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11137)

(assert (=> b!362451 (= lt!166855 (lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 a!4337 i!1478 k!2980 i!1478))))

(declare-fun res!201895 () Bool)

(assert (=> start!36176 (=> (not res!201895) (not e!221992))))

(assert (=> start!36176 (= res!201895 (and (bvsge i!1478 #b00000000000000000000000000000000) (bvslt i!1478 (size!10058 a!4337))))))

(assert (=> start!36176 e!221992))

(assert (=> start!36176 true))

(declare-fun array_inv!7144 (array!20454) Bool)

(assert (=> start!36176 (array_inv!7144 a!4337)))

(declare-fun b!362452 () Bool)

(declare-fun res!201894 () Bool)

(assert (=> b!362452 (=> (not res!201894) (not e!221992))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!362452 (= res!201894 (validKeyInArray!0 k!2980))))

(declare-fun b!362453 () Bool)

(declare-fun res!201896 () Bool)

(assert (=> b!362453 (=> (not res!201896) (not e!221992))))

(assert (=> b!362453 (= res!201896 (not (validKeyInArray!0 (select (arr!9706 a!4337) i!1478))))))

(declare-fun b!362454 () Bool)

(declare-fun res!201897 () Bool)

(assert (=> b!362454 (=> (not res!201897) (not e!221992))))

(assert (=> b!362454 (= res!201897 (bvslt (size!10058 a!4337) #b01111111111111111111111111111111))))

(declare-fun b!362455 () Bool)

(assert (=> b!362455 (= e!221993 true)))

(declare-fun lt!166856 () (_ BitVec 32))

(assert (=> b!362455 (= lt!166856 (arrayCountValidKeys!0 a!4337 (bvadd #b00000000000000000000000000000001 i!1478) (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun lt!166854 () (_ BitVec 32))

(assert (=> b!362455 (= lt!166854 (arrayCountValidKeys!0 lt!166853 (bvadd #b00000000000000000000000000000001 i!1478) (bvadd #b00000000000000000000000000000001 i!1478)))))

(assert (= (and start!36176 res!201895) b!362453))

(assert (= (and b!362453 res!201896) b!362452))

(assert (= (and b!362452 res!201894) b!362454))

(assert (= (and b!362454 res!201897) b!362451))

(assert (= (and b!362451 (not res!201898)) b!362455))

(declare-fun m!359095 () Bool)

(assert (=> b!362453 m!359095))

(assert (=> b!362453 m!359095))

(declare-fun m!359097 () Bool)

(assert (=> b!362453 m!359097))

(declare-fun m!359099 () Bool)

(assert (=> b!362452 m!359099))

(declare-fun m!359101 () Bool)

(assert (=> start!36176 m!359101))

(declare-fun m!359103 () Bool)

(assert (=> b!362451 m!359103))

(declare-fun m!359105 () Bool)

(assert (=> b!362451 m!359105))

(declare-fun m!359107 () Bool)

(assert (=> b!362451 m!359107))

(declare-fun m!359109 () Bool)

(assert (=> b!362451 m!359109))

(declare-fun m!359111 () Bool)

(assert (=> b!362455 m!359111))

(declare-fun m!359113 () Bool)

(assert (=> b!362455 m!359113))

(push 1)

(assert (not b!362451))

(assert (not b!362455))

(assert (not b!362452))

(assert (not start!36176))

(assert (not b!362453))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

