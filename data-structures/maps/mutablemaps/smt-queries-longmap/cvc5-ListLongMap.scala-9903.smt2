; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117206 () Bool)

(assert start!117206)

(declare-fun res!921437 () Bool)

(declare-fun e!781099 () Bool)

(assert (=> start!117206 (=> (not res!921437) (not e!781099))))

(declare-fun i!1451 () (_ BitVec 32))

(declare-datatypes ((array!93739 0))(
  ( (array!93740 (arr!45265 (Array (_ BitVec 32) (_ BitVec 64))) (size!45816 (_ BitVec 32))) )
))
(declare-fun a!4094 () array!93739)

(assert (=> start!117206 (= res!921437 (and (bvsge i!1451 #b00000000000000000000000000000000) (bvslt i!1451 (size!45816 a!4094))))))

(assert (=> start!117206 e!781099))

(assert (=> start!117206 true))

(declare-fun array_inv!34210 (array!93739) Bool)

(assert (=> start!117206 (array_inv!34210 a!4094)))

(declare-fun b!1378791 () Bool)

(declare-fun res!921434 () Bool)

(assert (=> b!1378791 (=> (not res!921434) (not e!781099))))

(declare-fun k!2953 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1378791 (= res!921434 (not (validKeyInArray!0 k!2953)))))

(declare-fun b!1378792 () Bool)

(declare-fun res!921436 () Bool)

(assert (=> b!1378792 (=> (not res!921436) (not e!781099))))

(declare-fun from!3466 () (_ BitVec 32))

(assert (=> b!1378792 (= res!921436 (and (bvslt (size!45816 a!4094) #b01111111111111111111111111111111) (bvsge from!3466 #b00000000000000000000000000000000) (bvsle from!3466 (size!45816 a!4094)) (bvsge i!1451 from!3466)))))

(declare-fun b!1378793 () Bool)

(declare-fun res!921435 () Bool)

(assert (=> b!1378793 (=> (not res!921435) (not e!781099))))

(declare-fun arrayCountValidKeys!0 (array!93739 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1378793 (= res!921435 (= (arrayCountValidKeys!0 (array!93740 (store (arr!45265 a!4094) i!1451 k!2953) (size!45816 a!4094)) from!3466 (bvadd #b00000000000000000000000000000001 i!1451)) (bvsub (arrayCountValidKeys!0 a!4094 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)) #b00000000000000000000000000000001)))))

(declare-fun b!1378794 () Bool)

(declare-fun res!921438 () Bool)

(assert (=> b!1378794 (=> (not res!921438) (not e!781099))))

(assert (=> b!1378794 (= res!921438 (validKeyInArray!0 (select (arr!45265 a!4094) i!1451)))))

(declare-fun b!1378795 () Bool)

(assert (=> b!1378795 (= e!781099 (and (bvsgt from!3466 #b00000000000000000000000000000000) (or (bvslt (bvadd #b00000000000000000000000000000001 i!1451) (bvsub from!3466 #b00000000000000000000000000000001)) (bvslt from!3466 (bvsub from!3466 #b00000000000000000000000000000001)) (bvsgt from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))))

(assert (= (and start!117206 res!921437) b!1378794))

(assert (= (and b!1378794 res!921438) b!1378791))

(assert (= (and b!1378791 res!921434) b!1378792))

(assert (= (and b!1378792 res!921436) b!1378793))

(assert (= (and b!1378793 res!921435) b!1378795))

(declare-fun m!1263681 () Bool)

(assert (=> start!117206 m!1263681))

(declare-fun m!1263683 () Bool)

(assert (=> b!1378791 m!1263683))

(declare-fun m!1263685 () Bool)

(assert (=> b!1378793 m!1263685))

(declare-fun m!1263687 () Bool)

(assert (=> b!1378793 m!1263687))

(declare-fun m!1263689 () Bool)

(assert (=> b!1378793 m!1263689))

(declare-fun m!1263691 () Bool)

(assert (=> b!1378794 m!1263691))

(assert (=> b!1378794 m!1263691))

(declare-fun m!1263693 () Bool)

(assert (=> b!1378794 m!1263693))

(push 1)

(assert (not start!117206))

(assert (not b!1378791))

(assert (not b!1378794))

(assert (not b!1378793))

(check-sat)

(pop 1)

(push 1)

(check-sat)

