; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36128 () Bool)

(assert start!36128)

(declare-fun b!362128 () Bool)

(declare-fun e!221809 () Bool)

(assert (=> b!362128 (= e!221809 false)))

(declare-fun i!1478 () (_ BitVec 32))

(declare-fun lt!166633 () (_ BitVec 32))

(declare-fun k!2980 () (_ BitVec 64))

(declare-datatypes ((array!20406 0))(
  ( (array!20407 (arr!9682 (Array (_ BitVec 32) (_ BitVec 64))) (size!10034 (_ BitVec 32))) )
))
(declare-fun a!4337 () array!20406)

(declare-fun arrayCountValidKeys!0 (array!20406 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!362128 (= lt!166633 (arrayCountValidKeys!0 (array!20407 (store (arr!9682 a!4337) i!1478 k!2980) (size!10034 a!4337)) i!1478 (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun lt!166634 () (_ BitVec 32))

(assert (=> b!362128 (= lt!166634 (arrayCountValidKeys!0 a!4337 i!1478 (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun b!362127 () Bool)

(declare-fun res!201568 () Bool)

(assert (=> b!362127 (=> (not res!201568) (not e!221809))))

(assert (=> b!362127 (= res!201568 (and (bvslt (size!10034 a!4337) #b01111111111111111111111111111111) (bvsle i!1478 (size!10034 a!4337))))))

(declare-fun res!201571 () Bool)

(assert (=> start!36128 (=> (not res!201571) (not e!221809))))

(assert (=> start!36128 (= res!201571 (and (bvsge i!1478 #b00000000000000000000000000000000) (bvslt i!1478 (size!10034 a!4337))))))

(assert (=> start!36128 e!221809))

(assert (=> start!36128 true))

(declare-fun array_inv!7120 (array!20406) Bool)

(assert (=> start!36128 (array_inv!7120 a!4337)))

(declare-fun b!362125 () Bool)

(declare-fun res!201569 () Bool)

(assert (=> b!362125 (=> (not res!201569) (not e!221809))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!362125 (= res!201569 (not (validKeyInArray!0 (select (arr!9682 a!4337) i!1478))))))

(declare-fun b!362126 () Bool)

(declare-fun res!201570 () Bool)

(assert (=> b!362126 (=> (not res!201570) (not e!221809))))

(assert (=> b!362126 (= res!201570 (validKeyInArray!0 k!2980))))

(assert (= (and start!36128 res!201571) b!362125))

(assert (= (and b!362125 res!201569) b!362126))

(assert (= (and b!362126 res!201570) b!362127))

(assert (= (and b!362127 res!201568) b!362128))

(declare-fun m!358687 () Bool)

(assert (=> b!362128 m!358687))

(declare-fun m!358689 () Bool)

(assert (=> b!362128 m!358689))

(declare-fun m!358691 () Bool)

(assert (=> b!362128 m!358691))

(declare-fun m!358693 () Bool)

(assert (=> start!36128 m!358693))

(declare-fun m!358695 () Bool)

(assert (=> b!362125 m!358695))

(assert (=> b!362125 m!358695))

(declare-fun m!358697 () Bool)

(assert (=> b!362125 m!358697))

(declare-fun m!358699 () Bool)

(assert (=> b!362126 m!358699))

(push 1)

(assert (not start!36128))

(assert (not b!362125))

(assert (not b!362126))

(assert (not b!362128))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

