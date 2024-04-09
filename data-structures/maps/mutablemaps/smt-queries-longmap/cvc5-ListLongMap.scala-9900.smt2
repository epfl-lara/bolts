; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117188 () Bool)

(assert start!117188)

(declare-fun b!1378674 () Bool)

(declare-fun res!921320 () Bool)

(declare-fun e!781046 () Bool)

(assert (=> b!1378674 (=> (not res!921320) (not e!781046))))

(declare-datatypes ((array!93721 0))(
  ( (array!93722 (arr!45256 (Array (_ BitVec 32) (_ BitVec 64))) (size!45807 (_ BitVec 32))) )
))
(declare-fun a!4094 () array!93721)

(declare-fun i!1451 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1378674 (= res!921320 (validKeyInArray!0 (select (arr!45256 a!4094) i!1451)))))

(declare-fun b!1378675 () Bool)

(declare-fun res!921319 () Bool)

(assert (=> b!1378675 (=> (not res!921319) (not e!781046))))

(declare-fun from!3466 () (_ BitVec 32))

(assert (=> b!1378675 (= res!921319 (and (bvslt (size!45807 a!4094) #b01111111111111111111111111111111) (bvsge from!3466 #b00000000000000000000000000000000) (bvsle from!3466 (size!45807 a!4094)) (bvsge i!1451 from!3466)))))

(declare-fun res!921321 () Bool)

(assert (=> start!117188 (=> (not res!921321) (not e!781046))))

(assert (=> start!117188 (= res!921321 (and (bvsge i!1451 #b00000000000000000000000000000000) (bvslt i!1451 (size!45807 a!4094))))))

(assert (=> start!117188 e!781046))

(assert (=> start!117188 true))

(declare-fun array_inv!34201 (array!93721) Bool)

(assert (=> start!117188 (array_inv!34201 a!4094)))

(declare-fun b!1378676 () Bool)

(declare-fun res!921318 () Bool)

(assert (=> b!1378676 (=> (not res!921318) (not e!781046))))

(declare-fun k!2953 () (_ BitVec 64))

(assert (=> b!1378676 (= res!921318 (not (validKeyInArray!0 k!2953)))))

(declare-fun b!1378677 () Bool)

(declare-fun res!921317 () Bool)

(assert (=> b!1378677 (=> (not res!921317) (not e!781046))))

(declare-fun arrayCountValidKeys!0 (array!93721 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1378677 (= res!921317 (= (arrayCountValidKeys!0 (array!93722 (store (arr!45256 a!4094) i!1451 k!2953) (size!45807 a!4094)) from!3466 (bvadd #b00000000000000000000000000000001 i!1451)) (bvsub (arrayCountValidKeys!0 a!4094 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)) #b00000000000000000000000000000001)))))

(declare-fun b!1378678 () Bool)

(assert (=> b!1378678 (= e!781046 (and (bvsle from!3466 #b00000000000000000000000000000000) (bvsgt #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1451))))))

(assert (= (and start!117188 res!921321) b!1378674))

(assert (= (and b!1378674 res!921320) b!1378676))

(assert (= (and b!1378676 res!921318) b!1378675))

(assert (= (and b!1378675 res!921319) b!1378677))

(assert (= (and b!1378677 res!921317) b!1378678))

(declare-fun m!1263555 () Bool)

(assert (=> b!1378674 m!1263555))

(assert (=> b!1378674 m!1263555))

(declare-fun m!1263557 () Bool)

(assert (=> b!1378674 m!1263557))

(declare-fun m!1263559 () Bool)

(assert (=> start!117188 m!1263559))

(declare-fun m!1263561 () Bool)

(assert (=> b!1378676 m!1263561))

(declare-fun m!1263563 () Bool)

(assert (=> b!1378677 m!1263563))

(declare-fun m!1263565 () Bool)

(assert (=> b!1378677 m!1263565))

(declare-fun m!1263567 () Bool)

(assert (=> b!1378677 m!1263567))

(push 1)

(assert (not b!1378677))

(assert (not b!1378676))

(assert (not start!117188))

(assert (not b!1378674))

(check-sat)

(pop 1)

