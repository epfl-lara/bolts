; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!63392 () Bool)

(assert start!63392)

(declare-fun b!713774 () Bool)

(declare-fun res!477034 () Bool)

(declare-fun e!401231 () Bool)

(assert (=> b!713774 (=> (not res!477034) (not e!401231))))

(declare-datatypes ((List!13455 0))(
  ( (Nil!13452) (Cons!13451 (h!14496 (_ BitVec 64)) (t!19778 List!13455)) )
))
(declare-fun acc!652 () List!13455)

(declare-fun noDuplicate!1245 (List!13455) Bool)

(assert (=> b!713774 (= res!477034 (noDuplicate!1245 acc!652))))

(declare-fun b!713775 () Bool)

(declare-fun res!477032 () Bool)

(assert (=> b!713775 (=> (not res!477032) (not e!401231))))

(declare-fun newAcc!49 () List!13455)

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun -!407 (List!13455 (_ BitVec 64)) List!13455)

(assert (=> b!713775 (= res!477032 (= (-!407 newAcc!49 k!2824) acc!652))))

(declare-fun b!713776 () Bool)

(declare-fun res!477033 () Bool)

(assert (=> b!713776 (=> (not res!477033) (not e!401231))))

(declare-fun contains!3998 (List!13455 (_ BitVec 64)) Bool)

(assert (=> b!713776 (= res!477033 (not (contains!3998 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!477035 () Bool)

(assert (=> start!63392 (=> (not res!477035) (not e!401231))))

(declare-datatypes ((array!40450 0))(
  ( (array!40451 (arr!19361 (Array (_ BitVec 32) (_ BitVec 64))) (size!19773 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40450)

(declare-fun from!2969 () (_ BitVec 32))

(assert (=> start!63392 (= res!477035 (and (bvslt (size!19773 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19773 a!3591))))))

(assert (=> start!63392 e!401231))

(assert (=> start!63392 true))

(declare-fun array_inv!15135 (array!40450) Bool)

(assert (=> start!63392 (array_inv!15135 a!3591)))

(declare-fun b!713777 () Bool)

(declare-fun res!477028 () Bool)

(assert (=> b!713777 (=> (not res!477028) (not e!401231))))

(declare-fun arrayNoDuplicates!0 (array!40450 (_ BitVec 32) List!13455) Bool)

(assert (=> b!713777 (= res!477028 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!713778 () Bool)

(declare-fun res!477026 () Bool)

(assert (=> b!713778 (=> (not res!477026) (not e!401231))))

(assert (=> b!713778 (= res!477026 (contains!3998 newAcc!49 k!2824))))

(declare-fun b!713779 () Bool)

(declare-fun res!477030 () Bool)

(assert (=> b!713779 (=> (not res!477030) (not e!401231))))

(assert (=> b!713779 (= res!477030 (not (contains!3998 acc!652 k!2824)))))

(declare-fun b!713780 () Bool)

(declare-fun res!477031 () Bool)

(assert (=> b!713780 (=> (not res!477031) (not e!401231))))

(declare-fun subseq!442 (List!13455 List!13455) Bool)

(assert (=> b!713780 (= res!477031 (subseq!442 acc!652 newAcc!49))))

(declare-fun b!713781 () Bool)

(declare-fun res!477024 () Bool)

(assert (=> b!713781 (=> (not res!477024) (not e!401231))))

(assert (=> b!713781 (= res!477024 (noDuplicate!1245 newAcc!49))))

(declare-fun b!713782 () Bool)

(assert (=> b!713782 (= e!401231 false)))

(declare-fun lt!318677 () Bool)

(assert (=> b!713782 (= lt!318677 (contains!3998 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!713783 () Bool)

(declare-fun res!477027 () Bool)

(assert (=> b!713783 (=> (not res!477027) (not e!401231))))

(assert (=> b!713783 (= res!477027 (not (contains!3998 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!713784 () Bool)

(declare-fun res!477036 () Bool)

(assert (=> b!713784 (=> (not res!477036) (not e!401231))))

(assert (=> b!713784 (= res!477036 (not (contains!3998 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!713785 () Bool)

(declare-fun res!477025 () Bool)

(assert (=> b!713785 (=> (not res!477025) (not e!401231))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!713785 (= res!477025 (validKeyInArray!0 k!2824))))

(declare-fun b!713786 () Bool)

(declare-fun res!477029 () Bool)

(assert (=> b!713786 (=> (not res!477029) (not e!401231))))

(declare-fun arrayContainsKey!0 (array!40450 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!713786 (= res!477029 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(assert (= (and start!63392 res!477035) b!713774))

(assert (= (and b!713774 res!477034) b!713781))

(assert (= (and b!713781 res!477024) b!713784))

(assert (= (and b!713784 res!477036) b!713776))

(assert (= (and b!713776 res!477033) b!713786))

(assert (= (and b!713786 res!477029) b!713779))

(assert (= (and b!713779 res!477030) b!713785))

(assert (= (and b!713785 res!477025) b!713777))

(assert (= (and b!713777 res!477028) b!713780))

(assert (= (and b!713780 res!477031) b!713778))

(assert (= (and b!713778 res!477026) b!713775))

(assert (= (and b!713775 res!477032) b!713783))

(assert (= (and b!713783 res!477027) b!713782))

(declare-fun m!670517 () Bool)

(assert (=> b!713779 m!670517))

(declare-fun m!670519 () Bool)

(assert (=> b!713778 m!670519))

(declare-fun m!670521 () Bool)

(assert (=> b!713775 m!670521))

(declare-fun m!670523 () Bool)

(assert (=> b!713782 m!670523))

(declare-fun m!670525 () Bool)

(assert (=> b!713781 m!670525))

(declare-fun m!670527 () Bool)

(assert (=> b!713783 m!670527))

(declare-fun m!670529 () Bool)

(assert (=> b!713780 m!670529))

(declare-fun m!670531 () Bool)

(assert (=> b!713774 m!670531))

(declare-fun m!670533 () Bool)

(assert (=> b!713777 m!670533))

(declare-fun m!670535 () Bool)

(assert (=> start!63392 m!670535))

(declare-fun m!670537 () Bool)

(assert (=> b!713784 m!670537))

(declare-fun m!670539 () Bool)

(assert (=> b!713785 m!670539))

(declare-fun m!670541 () Bool)

(assert (=> b!713776 m!670541))

(declare-fun m!670543 () Bool)

(assert (=> b!713786 m!670543))

(push 1)

(assert (not b!713776))

(assert (not b!713782))

(assert (not b!713785))

(assert (not b!713779))

(assert (not b!713774))

(assert (not b!713778))

(assert (not b!713781))

(assert (not b!713783))

(assert (not b!713775))

(assert (not b!713786))

(assert (not start!63392))

