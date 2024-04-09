; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!63382 () Bool)

(assert start!63382)

(declare-fun b!713579 () Bool)

(declare-fun res!476832 () Bool)

(declare-fun e!401201 () Bool)

(assert (=> b!713579 (=> (not res!476832) (not e!401201))))

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!713579 (= res!476832 (validKeyInArray!0 k!2824))))

(declare-fun b!713580 () Bool)

(declare-fun res!476835 () Bool)

(assert (=> b!713580 (=> (not res!476835) (not e!401201))))

(declare-datatypes ((List!13450 0))(
  ( (Nil!13447) (Cons!13446 (h!14491 (_ BitVec 64)) (t!19773 List!13450)) )
))
(declare-fun acc!652 () List!13450)

(declare-fun noDuplicate!1240 (List!13450) Bool)

(assert (=> b!713580 (= res!476835 (noDuplicate!1240 acc!652))))

(declare-fun b!713581 () Bool)

(declare-fun res!476837 () Bool)

(assert (=> b!713581 (=> (not res!476837) (not e!401201))))

(declare-fun newAcc!49 () List!13450)

(declare-fun subseq!437 (List!13450 List!13450) Bool)

(assert (=> b!713581 (= res!476837 (subseq!437 acc!652 newAcc!49))))

(declare-fun b!713582 () Bool)

(declare-fun res!476836 () Bool)

(assert (=> b!713582 (=> (not res!476836) (not e!401201))))

(declare-datatypes ((array!40440 0))(
  ( (array!40441 (arr!19356 (Array (_ BitVec 32) (_ BitVec 64))) (size!19768 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40440)

(declare-fun from!2969 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!40440 (_ BitVec 32) List!13450) Bool)

(assert (=> b!713582 (= res!476836 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!713583 () Bool)

(declare-fun res!476834 () Bool)

(assert (=> b!713583 (=> (not res!476834) (not e!401201))))

(declare-fun contains!3993 (List!13450 (_ BitVec 64)) Bool)

(assert (=> b!713583 (= res!476834 (not (contains!3993 acc!652 k!2824)))))

(declare-fun b!713584 () Bool)

(declare-fun res!476829 () Bool)

(assert (=> b!713584 (=> (not res!476829) (not e!401201))))

(assert (=> b!713584 (= res!476829 (not (contains!3993 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!713585 () Bool)

(declare-fun res!476838 () Bool)

(assert (=> b!713585 (=> (not res!476838) (not e!401201))))

(assert (=> b!713585 (= res!476838 (noDuplicate!1240 newAcc!49))))

(declare-fun b!713586 () Bool)

(declare-fun res!476841 () Bool)

(assert (=> b!713586 (=> (not res!476841) (not e!401201))))

(declare-fun -!402 (List!13450 (_ BitVec 64)) List!13450)

(assert (=> b!713586 (= res!476841 (= (-!402 newAcc!49 k!2824) acc!652))))

(declare-fun b!713587 () Bool)

(declare-fun res!476839 () Bool)

(assert (=> b!713587 (=> (not res!476839) (not e!401201))))

(assert (=> b!713587 (= res!476839 (contains!3993 newAcc!49 k!2824))))

(declare-fun b!713588 () Bool)

(declare-fun res!476831 () Bool)

(assert (=> b!713588 (=> (not res!476831) (not e!401201))))

(assert (=> b!713588 (= res!476831 (not (contains!3993 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!713589 () Bool)

(assert (=> b!713589 (= e!401201 false)))

(declare-fun lt!318662 () Bool)

(assert (=> b!713589 (= lt!318662 (contains!3993 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!476840 () Bool)

(assert (=> start!63382 (=> (not res!476840) (not e!401201))))

(assert (=> start!63382 (= res!476840 (and (bvslt (size!19768 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19768 a!3591))))))

(assert (=> start!63382 e!401201))

(assert (=> start!63382 true))

(declare-fun array_inv!15130 (array!40440) Bool)

(assert (=> start!63382 (array_inv!15130 a!3591)))

(declare-fun b!713590 () Bool)

(declare-fun res!476833 () Bool)

(assert (=> b!713590 (=> (not res!476833) (not e!401201))))

(declare-fun arrayContainsKey!0 (array!40440 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!713590 (= res!476833 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!713591 () Bool)

(declare-fun res!476830 () Bool)

(assert (=> b!713591 (=> (not res!476830) (not e!401201))))

(assert (=> b!713591 (= res!476830 (not (contains!3993 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!63382 res!476840) b!713580))

(assert (= (and b!713580 res!476835) b!713585))

(assert (= (and b!713585 res!476838) b!713588))

(assert (= (and b!713588 res!476831) b!713584))

(assert (= (and b!713584 res!476829) b!713590))

(assert (= (and b!713590 res!476833) b!713583))

(assert (= (and b!713583 res!476834) b!713579))

(assert (= (and b!713579 res!476832) b!713582))

(assert (= (and b!713582 res!476836) b!713581))

(assert (= (and b!713581 res!476837) b!713587))

(assert (= (and b!713587 res!476839) b!713586))

(assert (= (and b!713586 res!476841) b!713591))

(assert (= (and b!713591 res!476830) b!713589))

(declare-fun m!670377 () Bool)

(assert (=> b!713584 m!670377))

(declare-fun m!670379 () Bool)

(assert (=> b!713579 m!670379))

(declare-fun m!670381 () Bool)

(assert (=> b!713582 m!670381))

(declare-fun m!670383 () Bool)

(assert (=> start!63382 m!670383))

(declare-fun m!670385 () Bool)

(assert (=> b!713586 m!670385))

(declare-fun m!670387 () Bool)

(assert (=> b!713587 m!670387))

(declare-fun m!670389 () Bool)

(assert (=> b!713588 m!670389))

(declare-fun m!670391 () Bool)

(assert (=> b!713581 m!670391))

(declare-fun m!670393 () Bool)

(assert (=> b!713585 m!670393))

(declare-fun m!670395 () Bool)

(assert (=> b!713591 m!670395))

(declare-fun m!670397 () Bool)

(assert (=> b!713580 m!670397))

(declare-fun m!670399 () Bool)

(assert (=> b!713590 m!670399))

(declare-fun m!670401 () Bool)

(assert (=> b!713589 m!670401))

(declare-fun m!670403 () Bool)

(assert (=> b!713583 m!670403))

(push 1)

(assert (not b!713586))

(assert (not b!713590))

(assert (not b!713584))

(assert (not b!713585))

(assert (not b!713582))

(assert (not b!713591))

(assert (not b!713587))

(assert (not b!713580))

(assert (not b!713579))

(assert (not b!713583))

(assert (not b!713581))

(assert (not b!713589))

(assert (not b!713588))

(assert (not start!63382))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

