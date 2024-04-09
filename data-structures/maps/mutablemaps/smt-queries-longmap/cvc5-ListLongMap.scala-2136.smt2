; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36116 () Bool)

(assert start!36116)

(declare-fun res!201496 () Bool)

(declare-fun e!221773 () Bool)

(assert (=> start!36116 (=> (not res!201496) (not e!221773))))

(declare-fun i!1478 () (_ BitVec 32))

(declare-datatypes ((array!20394 0))(
  ( (array!20395 (arr!9676 (Array (_ BitVec 32) (_ BitVec 64))) (size!10028 (_ BitVec 32))) )
))
(declare-fun a!4337 () array!20394)

(assert (=> start!36116 (= res!201496 (and (bvsge i!1478 #b00000000000000000000000000000000) (bvslt i!1478 (size!10028 a!4337))))))

(assert (=> start!36116 e!221773))

(assert (=> start!36116 true))

(declare-fun array_inv!7114 (array!20394) Bool)

(assert (=> start!36116 (array_inv!7114 a!4337)))

(declare-fun b!362053 () Bool)

(declare-fun res!201498 () Bool)

(assert (=> b!362053 (=> (not res!201498) (not e!221773))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!362053 (= res!201498 (not (validKeyInArray!0 (select (arr!9676 a!4337) i!1478))))))

(declare-fun b!362055 () Bool)

(declare-fun res!201499 () Bool)

(assert (=> b!362055 (=> (not res!201499) (not e!221773))))

(assert (=> b!362055 (= res!201499 (and (bvslt (size!10028 a!4337) #b01111111111111111111111111111111) (bvsle i!1478 (size!10028 a!4337))))))

(declare-fun b!362056 () Bool)

(assert (=> b!362056 (= e!221773 false)))

(declare-fun lt!166598 () (_ BitVec 32))

(declare-fun k!2980 () (_ BitVec 64))

(declare-fun arrayCountValidKeys!0 (array!20394 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!362056 (= lt!166598 (arrayCountValidKeys!0 (array!20395 (store (arr!9676 a!4337) i!1478 k!2980) (size!10028 a!4337)) i!1478 (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun lt!166597 () (_ BitVec 32))

(assert (=> b!362056 (= lt!166597 (arrayCountValidKeys!0 a!4337 i!1478 (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun b!362054 () Bool)

(declare-fun res!201497 () Bool)

(assert (=> b!362054 (=> (not res!201497) (not e!221773))))

(assert (=> b!362054 (= res!201497 (validKeyInArray!0 k!2980))))

(assert (= (and start!36116 res!201496) b!362053))

(assert (= (and b!362053 res!201498) b!362054))

(assert (= (and b!362054 res!201497) b!362055))

(assert (= (and b!362055 res!201499) b!362056))

(declare-fun m!358603 () Bool)

(assert (=> start!36116 m!358603))

(declare-fun m!358605 () Bool)

(assert (=> b!362053 m!358605))

(assert (=> b!362053 m!358605))

(declare-fun m!358607 () Bool)

(assert (=> b!362053 m!358607))

(declare-fun m!358609 () Bool)

(assert (=> b!362056 m!358609))

(declare-fun m!358611 () Bool)

(assert (=> b!362056 m!358611))

(declare-fun m!358613 () Bool)

(assert (=> b!362056 m!358613))

(declare-fun m!358615 () Bool)

(assert (=> b!362054 m!358615))

(push 1)

(assert (not b!362056))

(assert (not start!36116))

(assert (not b!362053))

(assert (not b!362054))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

