; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36138 () Bool)

(assert start!36138)

(declare-fun b!362186 () Bool)

(declare-fun res!201631 () Bool)

(declare-fun e!221839 () Bool)

(assert (=> b!362186 (=> (not res!201631) (not e!221839))))

(declare-fun k!2980 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!362186 (= res!201631 (validKeyInArray!0 k!2980))))

(declare-fun res!201628 () Bool)

(assert (=> start!36138 (=> (not res!201628) (not e!221839))))

(declare-fun i!1478 () (_ BitVec 32))

(declare-datatypes ((array!20416 0))(
  ( (array!20417 (arr!9687 (Array (_ BitVec 32) (_ BitVec 64))) (size!10039 (_ BitVec 32))) )
))
(declare-fun a!4337 () array!20416)

(assert (=> start!36138 (= res!201628 (and (bvsge i!1478 #b00000000000000000000000000000000) (bvslt i!1478 (size!10039 a!4337))))))

(assert (=> start!36138 e!221839))

(assert (=> start!36138 true))

(declare-fun array_inv!7125 (array!20416) Bool)

(assert (=> start!36138 (array_inv!7125 a!4337)))

(declare-fun b!362188 () Bool)

(assert (=> b!362188 (= e!221839 false)))

(declare-fun lt!166663 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!20416 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!362188 (= lt!166663 (arrayCountValidKeys!0 (array!20417 (store (arr!9687 a!4337) i!1478 k!2980) (size!10039 a!4337)) i!1478 (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun lt!166664 () (_ BitVec 32))

(assert (=> b!362188 (= lt!166664 (arrayCountValidKeys!0 a!4337 i!1478 (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun b!362185 () Bool)

(declare-fun res!201630 () Bool)

(assert (=> b!362185 (=> (not res!201630) (not e!221839))))

(assert (=> b!362185 (= res!201630 (not (validKeyInArray!0 (select (arr!9687 a!4337) i!1478))))))

(declare-fun b!362187 () Bool)

(declare-fun res!201629 () Bool)

(assert (=> b!362187 (=> (not res!201629) (not e!221839))))

(assert (=> b!362187 (= res!201629 (and (bvslt (size!10039 a!4337) #b01111111111111111111111111111111) (bvsle i!1478 (size!10039 a!4337))))))

(assert (= (and start!36138 res!201628) b!362185))

(assert (= (and b!362185 res!201630) b!362186))

(assert (= (and b!362186 res!201631) b!362187))

(assert (= (and b!362187 res!201629) b!362188))

(declare-fun m!358757 () Bool)

(assert (=> b!362186 m!358757))

(declare-fun m!358759 () Bool)

(assert (=> start!36138 m!358759))

(declare-fun m!358761 () Bool)

(assert (=> b!362188 m!358761))

(declare-fun m!358763 () Bool)

(assert (=> b!362188 m!358763))

(declare-fun m!358765 () Bool)

(assert (=> b!362188 m!358765))

(declare-fun m!358767 () Bool)

(assert (=> b!362185 m!358767))

(assert (=> b!362185 m!358767))

(declare-fun m!358769 () Bool)

(assert (=> b!362185 m!358769))

(push 1)

(assert (not b!362185))

(assert (not start!36138))

(assert (not b!362188))

(assert (not b!362186))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

