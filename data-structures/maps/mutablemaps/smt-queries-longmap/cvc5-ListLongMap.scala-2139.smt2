; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36134 () Bool)

(assert start!36134)

(declare-fun b!362163 () Bool)

(declare-fun res!201606 () Bool)

(declare-fun e!221828 () Bool)

(assert (=> b!362163 (=> (not res!201606) (not e!221828))))

(declare-datatypes ((array!20412 0))(
  ( (array!20413 (arr!9685 (Array (_ BitVec 32) (_ BitVec 64))) (size!10037 (_ BitVec 32))) )
))
(declare-fun a!4337 () array!20412)

(declare-fun i!1478 () (_ BitVec 32))

(assert (=> b!362163 (= res!201606 (and (bvslt (size!10037 a!4337) #b01111111111111111111111111111111) (bvsle i!1478 (size!10037 a!4337))))))

(declare-fun res!201607 () Bool)

(assert (=> start!36134 (=> (not res!201607) (not e!221828))))

(assert (=> start!36134 (= res!201607 (and (bvsge i!1478 #b00000000000000000000000000000000) (bvslt i!1478 (size!10037 a!4337))))))

(assert (=> start!36134 e!221828))

(assert (=> start!36134 true))

(declare-fun array_inv!7123 (array!20412) Bool)

(assert (=> start!36134 (array_inv!7123 a!4337)))

(declare-fun b!362162 () Bool)

(declare-fun res!201605 () Bool)

(assert (=> b!362162 (=> (not res!201605) (not e!221828))))

(declare-fun k!2980 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!362162 (= res!201605 (validKeyInArray!0 k!2980))))

(declare-fun b!362164 () Bool)

(assert (=> b!362164 (= e!221828 false)))

(declare-fun lt!166652 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!20412 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!362164 (= lt!166652 (arrayCountValidKeys!0 (array!20413 (store (arr!9685 a!4337) i!1478 k!2980) (size!10037 a!4337)) i!1478 (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun lt!166651 () (_ BitVec 32))

(assert (=> b!362164 (= lt!166651 (arrayCountValidKeys!0 a!4337 i!1478 (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun b!362161 () Bool)

(declare-fun res!201604 () Bool)

(assert (=> b!362161 (=> (not res!201604) (not e!221828))))

(assert (=> b!362161 (= res!201604 (not (validKeyInArray!0 (select (arr!9685 a!4337) i!1478))))))

(assert (= (and start!36134 res!201607) b!362161))

(assert (= (and b!362161 res!201604) b!362162))

(assert (= (and b!362162 res!201605) b!362163))

(assert (= (and b!362163 res!201606) b!362164))

(declare-fun m!358729 () Bool)

(assert (=> start!36134 m!358729))

(declare-fun m!358731 () Bool)

(assert (=> b!362162 m!358731))

(declare-fun m!358733 () Bool)

(assert (=> b!362164 m!358733))

(declare-fun m!358735 () Bool)

(assert (=> b!362164 m!358735))

(declare-fun m!358737 () Bool)

(assert (=> b!362164 m!358737))

(declare-fun m!358739 () Bool)

(assert (=> b!362161 m!358739))

(assert (=> b!362161 m!358739))

(declare-fun m!358741 () Bool)

(assert (=> b!362161 m!358741))

(push 1)

(assert (not b!362162))

(assert (not b!362161))

(assert (not start!36134))

(assert (not b!362164))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

