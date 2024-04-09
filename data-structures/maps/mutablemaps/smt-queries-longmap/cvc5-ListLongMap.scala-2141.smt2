; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36146 () Bool)

(assert start!36146)

(declare-fun res!201676 () Bool)

(declare-fun e!221863 () Bool)

(assert (=> start!36146 (=> (not res!201676) (not e!221863))))

(declare-fun i!1478 () (_ BitVec 32))

(declare-datatypes ((array!20424 0))(
  ( (array!20425 (arr!9691 (Array (_ BitVec 32) (_ BitVec 64))) (size!10043 (_ BitVec 32))) )
))
(declare-fun a!4337 () array!20424)

(assert (=> start!36146 (= res!201676 (and (bvsge i!1478 #b00000000000000000000000000000000) (bvslt i!1478 (size!10043 a!4337))))))

(assert (=> start!36146 e!221863))

(assert (=> start!36146 true))

(declare-fun array_inv!7129 (array!20424) Bool)

(assert (=> start!36146 (array_inv!7129 a!4337)))

(declare-fun b!362234 () Bool)

(declare-fun res!201679 () Bool)

(assert (=> b!362234 (=> (not res!201679) (not e!221863))))

(declare-fun k!2980 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!362234 (= res!201679 (validKeyInArray!0 k!2980))))

(declare-fun b!362233 () Bool)

(declare-fun res!201678 () Bool)

(assert (=> b!362233 (=> (not res!201678) (not e!221863))))

(assert (=> b!362233 (= res!201678 (not (validKeyInArray!0 (select (arr!9691 a!4337) i!1478))))))

(declare-fun b!362236 () Bool)

(assert (=> b!362236 (= e!221863 false)))

(declare-fun lt!166688 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!20424 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!362236 (= lt!166688 (arrayCountValidKeys!0 (array!20425 (store (arr!9691 a!4337) i!1478 k!2980) (size!10043 a!4337)) i!1478 (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun lt!166687 () (_ BitVec 32))

(assert (=> b!362236 (= lt!166687 (arrayCountValidKeys!0 a!4337 i!1478 (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun b!362235 () Bool)

(declare-fun res!201677 () Bool)

(assert (=> b!362235 (=> (not res!201677) (not e!221863))))

(assert (=> b!362235 (= res!201677 (and (bvslt (size!10043 a!4337) #b01111111111111111111111111111111) (bvsle i!1478 (size!10043 a!4337))))))

(assert (= (and start!36146 res!201676) b!362233))

(assert (= (and b!362233 res!201678) b!362234))

(assert (= (and b!362234 res!201679) b!362235))

(assert (= (and b!362235 res!201677) b!362236))

(declare-fun m!358813 () Bool)

(assert (=> start!36146 m!358813))

(declare-fun m!358815 () Bool)

(assert (=> b!362234 m!358815))

(declare-fun m!358817 () Bool)

(assert (=> b!362233 m!358817))

(assert (=> b!362233 m!358817))

(declare-fun m!358819 () Bool)

(assert (=> b!362233 m!358819))

(declare-fun m!358821 () Bool)

(assert (=> b!362236 m!358821))

(declare-fun m!358823 () Bool)

(assert (=> b!362236 m!358823))

(declare-fun m!358825 () Bool)

(assert (=> b!362236 m!358825))

(push 1)

(assert (not start!36146))

(assert (not b!362236))

(assert (not b!362234))

(assert (not b!362233))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

