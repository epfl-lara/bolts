; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62520 () Bool)

(assert start!62520)

(declare-fun b!703599 () Bool)

(declare-fun res!467599 () Bool)

(declare-fun e!397539 () Bool)

(assert (=> b!703599 (=> (not res!467599) (not e!397539))))

(declare-datatypes ((array!40155 0))(
  ( (array!40156 (arr!19230 (Array (_ BitVec 32) (_ BitVec 64))) (size!19613 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40155)

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun from!2969 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!40155 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!703599 (= res!467599 (not (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!703600 () Bool)

(declare-fun res!467598 () Bool)

(assert (=> b!703600 (=> (not res!467598) (not e!397539))))

(declare-datatypes ((List!13324 0))(
  ( (Nil!13321) (Cons!13320 (h!14365 (_ BitVec 64)) (t!19614 List!13324)) )
))
(declare-fun acc!652 () List!13324)

(declare-fun arrayNoDuplicates!0 (array!40155 (_ BitVec 32) List!13324) Bool)

(assert (=> b!703600 (= res!467598 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!703601 () Bool)

(declare-fun res!467592 () Bool)

(assert (=> b!703601 (=> (not res!467592) (not e!397539))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!703601 (= res!467592 (validKeyInArray!0 k!2824))))

(declare-fun b!703602 () Bool)

(declare-fun res!467591 () Bool)

(assert (=> b!703602 (=> (not res!467591) (not e!397539))))

(declare-fun newAcc!49 () List!13324)

(declare-fun -!276 (List!13324 (_ BitVec 64)) List!13324)

(assert (=> b!703602 (= res!467591 (= (-!276 newAcc!49 k!2824) acc!652))))

(declare-fun b!703603 () Bool)

(declare-fun res!467594 () Bool)

(assert (=> b!703603 (=> (not res!467594) (not e!397539))))

(declare-fun contains!3867 (List!13324 (_ BitVec 64)) Bool)

(assert (=> b!703603 (= res!467594 (contains!3867 newAcc!49 k!2824))))

(declare-fun b!703604 () Bool)

(declare-fun res!467584 () Bool)

(assert (=> b!703604 (=> (not res!467584) (not e!397539))))

(assert (=> b!703604 (= res!467584 (not (contains!3867 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!703605 () Bool)

(declare-fun res!467600 () Bool)

(assert (=> b!703605 (=> (not res!467600) (not e!397539))))

(declare-fun noDuplicate!1114 (List!13324) Bool)

(assert (=> b!703605 (= res!467600 (noDuplicate!1114 newAcc!49))))

(declare-fun b!703607 () Bool)

(declare-fun res!467585 () Bool)

(assert (=> b!703607 (=> (not res!467585) (not e!397539))))

(assert (=> b!703607 (= res!467585 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19613 a!3591)))))

(declare-fun b!703608 () Bool)

(declare-fun res!467583 () Bool)

(assert (=> b!703608 (=> (not res!467583) (not e!397539))))

(assert (=> b!703608 (= res!467583 (not (contains!3867 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!703609 () Bool)

(declare-fun res!467588 () Bool)

(assert (=> b!703609 (=> (not res!467588) (not e!397539))))

(assert (=> b!703609 (= res!467588 (not (contains!3867 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!703610 () Bool)

(assert (=> b!703610 (= e!397539 false)))

(declare-fun lt!317751 () Bool)

(assert (=> b!703610 (= lt!317751 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) acc!652))))

(declare-fun b!703611 () Bool)

(declare-fun res!467595 () Bool)

(assert (=> b!703611 (=> (not res!467595) (not e!397539))))

(assert (=> b!703611 (= res!467595 (not (contains!3867 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!703612 () Bool)

(declare-fun res!467593 () Bool)

(assert (=> b!703612 (=> (not res!467593) (not e!397539))))

(assert (=> b!703612 (= res!467593 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!703613 () Bool)

(declare-fun res!467597 () Bool)

(assert (=> b!703613 (=> (not res!467597) (not e!397539))))

(assert (=> b!703613 (= res!467597 (not (contains!3867 acc!652 k!2824)))))

(declare-fun b!703614 () Bool)

(declare-fun res!467587 () Bool)

(assert (=> b!703614 (=> (not res!467587) (not e!397539))))

(declare-fun subseq!311 (List!13324 List!13324) Bool)

(assert (=> b!703614 (= res!467587 (subseq!311 acc!652 newAcc!49))))

(declare-fun b!703615 () Bool)

(declare-fun res!467589 () Bool)

(assert (=> b!703615 (=> (not res!467589) (not e!397539))))

(assert (=> b!703615 (= res!467589 (not (validKeyInArray!0 (select (arr!19230 a!3591) from!2969))))))

(declare-fun b!703616 () Bool)

(declare-fun res!467596 () Bool)

(assert (=> b!703616 (=> (not res!467596) (not e!397539))))

(assert (=> b!703616 (= res!467596 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun res!467586 () Bool)

(assert (=> start!62520 (=> (not res!467586) (not e!397539))))

(assert (=> start!62520 (= res!467586 (and (bvslt (size!19613 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19613 a!3591))))))

(assert (=> start!62520 e!397539))

(assert (=> start!62520 true))

(declare-fun array_inv!15004 (array!40155) Bool)

(assert (=> start!62520 (array_inv!15004 a!3591)))

(declare-fun b!703606 () Bool)

(declare-fun res!467590 () Bool)

(assert (=> b!703606 (=> (not res!467590) (not e!397539))))

(assert (=> b!703606 (= res!467590 (noDuplicate!1114 acc!652))))

(assert (= (and start!62520 res!467586) b!703606))

(assert (= (and b!703606 res!467590) b!703605))

(assert (= (and b!703605 res!467600) b!703608))

(assert (= (and b!703608 res!467583) b!703604))

(assert (= (and b!703604 res!467584) b!703612))

(assert (= (and b!703612 res!467593) b!703613))

(assert (= (and b!703613 res!467597) b!703601))

(assert (= (and b!703601 res!467592) b!703600))

(assert (= (and b!703600 res!467598) b!703614))

(assert (= (and b!703614 res!467587) b!703603))

(assert (= (and b!703603 res!467594) b!703602))

(assert (= (and b!703602 res!467591) b!703611))

(assert (= (and b!703611 res!467595) b!703609))

(assert (= (and b!703609 res!467588) b!703607))

(assert (= (and b!703607 res!467585) b!703615))

(assert (= (and b!703615 res!467589) b!703616))

(assert (= (and b!703616 res!467596) b!703599))

(assert (= (and b!703599 res!467599) b!703610))

(declare-fun m!662391 () Bool)

(assert (=> b!703610 m!662391))

(declare-fun m!662393 () Bool)

(assert (=> start!62520 m!662393))

(declare-fun m!662395 () Bool)

(assert (=> b!703613 m!662395))

(declare-fun m!662397 () Bool)

(assert (=> b!703615 m!662397))

(assert (=> b!703615 m!662397))

(declare-fun m!662399 () Bool)

(assert (=> b!703615 m!662399))

(declare-fun m!662401 () Bool)

(assert (=> b!703606 m!662401))

(declare-fun m!662403 () Bool)

(assert (=> b!703611 m!662403))

(declare-fun m!662405 () Bool)

(assert (=> b!703600 m!662405))

(declare-fun m!662407 () Bool)

(assert (=> b!703609 m!662407))

(declare-fun m!662409 () Bool)

(assert (=> b!703612 m!662409))

(declare-fun m!662411 () Bool)

(assert (=> b!703614 m!662411))

(declare-fun m!662413 () Bool)

(assert (=> b!703602 m!662413))

(declare-fun m!662415 () Bool)

(assert (=> b!703605 m!662415))

(declare-fun m!662417 () Bool)

(assert (=> b!703603 m!662417))

(declare-fun m!662419 () Bool)

(assert (=> b!703599 m!662419))

(declare-fun m!662421 () Bool)

(assert (=> b!703601 m!662421))

(declare-fun m!662423 () Bool)

(assert (=> b!703604 m!662423))

(declare-fun m!662425 () Bool)

(assert (=> b!703608 m!662425))

(push 1)

(assert (not b!703601))

(assert (not b!703609))

(assert (not b!703614))

(assert (not b!703606))

(assert (not b!703611))

(assert (not b!703610))

(assert (not b!703600))

(assert (not b!703605))

(assert (not b!703615))

(assert (not b!703613))

(assert (not b!703603))

(assert (not b!703602))

(assert (not b!703599))

(assert (not start!62520))

(assert (not b!703612))

(assert (not b!703604))

(assert (not b!703608))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

