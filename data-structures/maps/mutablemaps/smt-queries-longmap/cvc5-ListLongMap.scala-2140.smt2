; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36140 () Bool)

(assert start!36140)

(declare-fun res!201642 () Bool)

(declare-fun e!221845 () Bool)

(assert (=> start!36140 (=> (not res!201642) (not e!221845))))

(declare-fun i!1478 () (_ BitVec 32))

(declare-datatypes ((array!20418 0))(
  ( (array!20419 (arr!9688 (Array (_ BitVec 32) (_ BitVec 64))) (size!10040 (_ BitVec 32))) )
))
(declare-fun a!4337 () array!20418)

(assert (=> start!36140 (= res!201642 (and (bvsge i!1478 #b00000000000000000000000000000000) (bvslt i!1478 (size!10040 a!4337))))))

(assert (=> start!36140 e!221845))

(assert (=> start!36140 true))

(declare-fun array_inv!7126 (array!20418) Bool)

(assert (=> start!36140 (array_inv!7126 a!4337)))

(declare-fun b!362198 () Bool)

(declare-fun res!201643 () Bool)

(assert (=> b!362198 (=> (not res!201643) (not e!221845))))

(declare-fun k!2980 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!362198 (= res!201643 (validKeyInArray!0 k!2980))))

(declare-fun b!362199 () Bool)

(declare-fun res!201640 () Bool)

(assert (=> b!362199 (=> (not res!201640) (not e!221845))))

(assert (=> b!362199 (= res!201640 (and (bvslt (size!10040 a!4337) #b01111111111111111111111111111111) (bvsle i!1478 (size!10040 a!4337))))))

(declare-fun b!362200 () Bool)

(assert (=> b!362200 (= e!221845 false)))

(declare-fun lt!166669 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!20418 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!362200 (= lt!166669 (arrayCountValidKeys!0 (array!20419 (store (arr!9688 a!4337) i!1478 k!2980) (size!10040 a!4337)) i!1478 (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun lt!166670 () (_ BitVec 32))

(assert (=> b!362200 (= lt!166670 (arrayCountValidKeys!0 a!4337 i!1478 (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun b!362197 () Bool)

(declare-fun res!201641 () Bool)

(assert (=> b!362197 (=> (not res!201641) (not e!221845))))

(assert (=> b!362197 (= res!201641 (not (validKeyInArray!0 (select (arr!9688 a!4337) i!1478))))))

(assert (= (and start!36140 res!201642) b!362197))

(assert (= (and b!362197 res!201641) b!362198))

(assert (= (and b!362198 res!201643) b!362199))

(assert (= (and b!362199 res!201640) b!362200))

(declare-fun m!358771 () Bool)

(assert (=> start!36140 m!358771))

(declare-fun m!358773 () Bool)

(assert (=> b!362198 m!358773))

(declare-fun m!358775 () Bool)

(assert (=> b!362200 m!358775))

(declare-fun m!358777 () Bool)

(assert (=> b!362200 m!358777))

(declare-fun m!358779 () Bool)

(assert (=> b!362200 m!358779))

(declare-fun m!358781 () Bool)

(assert (=> b!362197 m!358781))

(assert (=> b!362197 m!358781))

(declare-fun m!358783 () Bool)

(assert (=> b!362197 m!358783))

(push 1)

(assert (not b!362197))

(assert (not start!36140))

(assert (not b!362200))

(assert (not b!362198))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

