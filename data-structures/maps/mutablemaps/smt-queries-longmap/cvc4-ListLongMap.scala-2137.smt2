; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36126 () Bool)

(assert start!36126)

(declare-fun b!362113 () Bool)

(declare-fun res!201559 () Bool)

(declare-fun e!221803 () Bool)

(assert (=> b!362113 (=> (not res!201559) (not e!221803))))

(declare-datatypes ((array!20404 0))(
  ( (array!20405 (arr!9681 (Array (_ BitVec 32) (_ BitVec 64))) (size!10033 (_ BitVec 32))) )
))
(declare-fun a!4337 () array!20404)

(declare-fun i!1478 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!362113 (= res!201559 (not (validKeyInArray!0 (select (arr!9681 a!4337) i!1478))))))

(declare-fun b!362116 () Bool)

(assert (=> b!362116 (= e!221803 false)))

(declare-fun lt!166628 () (_ BitVec 32))

(declare-fun k!2980 () (_ BitVec 64))

(declare-fun arrayCountValidKeys!0 (array!20404 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!362116 (= lt!166628 (arrayCountValidKeys!0 (array!20405 (store (arr!9681 a!4337) i!1478 k!2980) (size!10033 a!4337)) i!1478 (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun lt!166627 () (_ BitVec 32))

(assert (=> b!362116 (= lt!166627 (arrayCountValidKeys!0 a!4337 i!1478 (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun b!362114 () Bool)

(declare-fun res!201556 () Bool)

(assert (=> b!362114 (=> (not res!201556) (not e!221803))))

(assert (=> b!362114 (= res!201556 (validKeyInArray!0 k!2980))))

(declare-fun b!362115 () Bool)

(declare-fun res!201558 () Bool)

(assert (=> b!362115 (=> (not res!201558) (not e!221803))))

(assert (=> b!362115 (= res!201558 (and (bvslt (size!10033 a!4337) #b01111111111111111111111111111111) (bvsle i!1478 (size!10033 a!4337))))))

(declare-fun res!201557 () Bool)

(assert (=> start!36126 (=> (not res!201557) (not e!221803))))

(assert (=> start!36126 (= res!201557 (and (bvsge i!1478 #b00000000000000000000000000000000) (bvslt i!1478 (size!10033 a!4337))))))

(assert (=> start!36126 e!221803))

(assert (=> start!36126 true))

(declare-fun array_inv!7119 (array!20404) Bool)

(assert (=> start!36126 (array_inv!7119 a!4337)))

(assert (= (and start!36126 res!201557) b!362113))

(assert (= (and b!362113 res!201559) b!362114))

(assert (= (and b!362114 res!201556) b!362115))

(assert (= (and b!362115 res!201558) b!362116))

(declare-fun m!358673 () Bool)

(assert (=> b!362113 m!358673))

(assert (=> b!362113 m!358673))

(declare-fun m!358675 () Bool)

(assert (=> b!362113 m!358675))

(declare-fun m!358677 () Bool)

(assert (=> b!362116 m!358677))

(declare-fun m!358679 () Bool)

(assert (=> b!362116 m!358679))

(declare-fun m!358681 () Bool)

(assert (=> b!362116 m!358681))

(declare-fun m!358683 () Bool)

(assert (=> b!362114 m!358683))

(declare-fun m!358685 () Bool)

(assert (=> start!36126 m!358685))

(push 1)

(assert (not start!36126))

(assert (not b!362113))

(assert (not b!362114))

(assert (not b!362116))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

