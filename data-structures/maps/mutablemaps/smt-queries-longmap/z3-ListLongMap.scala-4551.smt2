; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!63450 () Bool)

(assert start!63450)

(declare-fun b!714227 () Bool)

(declare-fun e!401459 () Bool)

(assert (=> b!714227 (= e!401459 false)))

(declare-fun lt!318716 () Bool)

(declare-datatypes ((List!13460 0))(
  ( (Nil!13457) (Cons!13456 (h!14501 (_ BitVec 64)) (t!19783 List!13460)) )
))
(declare-fun newAcc!49 () List!13460)

(declare-fun contains!4003 (List!13460 (_ BitVec 64)) Bool)

(assert (=> b!714227 (= lt!318716 (contains!4003 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!714228 () Bool)

(declare-fun res!477430 () Bool)

(assert (=> b!714228 (=> (not res!477430) (not e!401459))))

(declare-fun acc!652 () List!13460)

(assert (=> b!714228 (= res!477430 (not (contains!4003 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!714229 () Bool)

(declare-fun res!477428 () Bool)

(assert (=> b!714229 (=> (not res!477428) (not e!401459))))

(declare-fun k0!2824 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!714229 (= res!477428 (validKeyInArray!0 k0!2824))))

(declare-fun b!714230 () Bool)

(declare-fun res!477427 () Bool)

(assert (=> b!714230 (=> (not res!477427) (not e!401459))))

(assert (=> b!714230 (= res!477427 (not (contains!4003 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!714231 () Bool)

(declare-fun res!477433 () Bool)

(assert (=> b!714231 (=> (not res!477433) (not e!401459))))

(assert (=> b!714231 (= res!477433 (not (contains!4003 acc!652 k0!2824)))))

(declare-fun b!714232 () Bool)

(declare-fun res!477424 () Bool)

(assert (=> b!714232 (=> (not res!477424) (not e!401459))))

(assert (=> b!714232 (= res!477424 (not (contains!4003 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!714233 () Bool)

(declare-fun res!477429 () Bool)

(assert (=> b!714233 (=> (not res!477429) (not e!401459))))

(assert (=> b!714233 (= res!477429 (contains!4003 newAcc!49 k0!2824))))

(declare-fun b!714234 () Bool)

(declare-fun res!477426 () Bool)

(assert (=> b!714234 (=> (not res!477426) (not e!401459))))

(declare-fun noDuplicate!1250 (List!13460) Bool)

(assert (=> b!714234 (= res!477426 (noDuplicate!1250 newAcc!49))))

(declare-fun b!714235 () Bool)

(declare-fun res!477425 () Bool)

(assert (=> b!714235 (=> (not res!477425) (not e!401459))))

(declare-fun -!412 (List!13460 (_ BitVec 64)) List!13460)

(assert (=> b!714235 (= res!477425 (= (-!412 newAcc!49 k0!2824) acc!652))))

(declare-fun b!714236 () Bool)

(declare-fun res!477431 () Bool)

(assert (=> b!714236 (=> (not res!477431) (not e!401459))))

(declare-fun subseq!447 (List!13460 List!13460) Bool)

(assert (=> b!714236 (= res!477431 (subseq!447 acc!652 newAcc!49))))

(declare-fun b!714237 () Bool)

(declare-fun res!477435 () Bool)

(assert (=> b!714237 (=> (not res!477435) (not e!401459))))

(assert (=> b!714237 (= res!477435 (noDuplicate!1250 acc!652))))

(declare-fun res!477434 () Bool)

(assert (=> start!63450 (=> (not res!477434) (not e!401459))))

(declare-datatypes ((array!40463 0))(
  ( (array!40464 (arr!19366 (Array (_ BitVec 32) (_ BitVec 64))) (size!19780 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40463)

(declare-fun from!2969 () (_ BitVec 32))

(assert (=> start!63450 (= res!477434 (and (bvslt (size!19780 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19780 a!3591))))))

(assert (=> start!63450 e!401459))

(assert (=> start!63450 true))

(declare-fun array_inv!15140 (array!40463) Bool)

(assert (=> start!63450 (array_inv!15140 a!3591)))

(declare-fun b!714238 () Bool)

(declare-fun res!477423 () Bool)

(assert (=> b!714238 (=> (not res!477423) (not e!401459))))

(declare-fun arrayContainsKey!0 (array!40463 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!714238 (= res!477423 (not (arrayContainsKey!0 a!3591 k0!2824 from!2969)))))

(declare-fun b!714239 () Bool)

(declare-fun res!477432 () Bool)

(assert (=> b!714239 (=> (not res!477432) (not e!401459))))

(declare-fun arrayNoDuplicates!0 (array!40463 (_ BitVec 32) List!13460) Bool)

(assert (=> b!714239 (= res!477432 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(assert (= (and start!63450 res!477434) b!714237))

(assert (= (and b!714237 res!477435) b!714234))

(assert (= (and b!714234 res!477426) b!714232))

(assert (= (and b!714232 res!477424) b!714228))

(assert (= (and b!714228 res!477430) b!714238))

(assert (= (and b!714238 res!477423) b!714231))

(assert (= (and b!714231 res!477433) b!714229))

(assert (= (and b!714229 res!477428) b!714239))

(assert (= (and b!714239 res!477432) b!714236))

(assert (= (and b!714236 res!477431) b!714233))

(assert (= (and b!714233 res!477429) b!714235))

(assert (= (and b!714235 res!477425) b!714230))

(assert (= (and b!714230 res!477427) b!714227))

(declare-fun m!670855 () Bool)

(assert (=> b!714230 m!670855))

(declare-fun m!670857 () Bool)

(assert (=> b!714227 m!670857))

(declare-fun m!670859 () Bool)

(assert (=> b!714235 m!670859))

(declare-fun m!670861 () Bool)

(assert (=> b!714236 m!670861))

(declare-fun m!670863 () Bool)

(assert (=> b!714232 m!670863))

(declare-fun m!670865 () Bool)

(assert (=> start!63450 m!670865))

(declare-fun m!670867 () Bool)

(assert (=> b!714237 m!670867))

(declare-fun m!670869 () Bool)

(assert (=> b!714238 m!670869))

(declare-fun m!670871 () Bool)

(assert (=> b!714228 m!670871))

(declare-fun m!670873 () Bool)

(assert (=> b!714229 m!670873))

(declare-fun m!670875 () Bool)

(assert (=> b!714233 m!670875))

(declare-fun m!670877 () Bool)

(assert (=> b!714231 m!670877))

(declare-fun m!670879 () Bool)

(assert (=> b!714239 m!670879))

(declare-fun m!670881 () Bool)

(assert (=> b!714234 m!670881))

(check-sat (not b!714227) (not b!714232) (not b!714239) (not b!714235) (not start!63450) (not b!714228) (not b!714237) (not b!714231) (not b!714230) (not b!714233) (not b!714234) (not b!714238) (not b!714229) (not b!714236))
(check-sat)
