; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!63452 () Bool)

(assert start!63452)

(declare-fun b!714266 () Bool)

(declare-fun res!477468 () Bool)

(declare-fun e!401466 () Bool)

(assert (=> b!714266 (=> (not res!477468) (not e!401466))))

(declare-datatypes ((array!40465 0))(
  ( (array!40466 (arr!19367 (Array (_ BitVec 32) (_ BitVec 64))) (size!19781 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40465)

(declare-fun from!2969 () (_ BitVec 32))

(declare-datatypes ((List!13461 0))(
  ( (Nil!13458) (Cons!13457 (h!14502 (_ BitVec 64)) (t!19784 List!13461)) )
))
(declare-fun acc!652 () List!13461)

(declare-fun arrayNoDuplicates!0 (array!40465 (_ BitVec 32) List!13461) Bool)

(assert (=> b!714266 (= res!477468 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!714267 () Bool)

(declare-fun res!477473 () Bool)

(assert (=> b!714267 (=> (not res!477473) (not e!401466))))

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!714267 (= res!477473 (validKeyInArray!0 k!2824))))

(declare-fun b!714268 () Bool)

(assert (=> b!714268 (= e!401466 false)))

(declare-fun lt!318719 () Bool)

(declare-fun newAcc!49 () List!13461)

(declare-fun contains!4004 (List!13461 (_ BitVec 64)) Bool)

(assert (=> b!714268 (= lt!318719 (contains!4004 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!714269 () Bool)

(declare-fun res!477472 () Bool)

(assert (=> b!714269 (=> (not res!477472) (not e!401466))))

(assert (=> b!714269 (= res!477472 (not (contains!4004 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!714270 () Bool)

(declare-fun res!477471 () Bool)

(assert (=> b!714270 (=> (not res!477471) (not e!401466))))

(declare-fun arrayContainsKey!0 (array!40465 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!714270 (= res!477471 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!714271 () Bool)

(declare-fun res!477464 () Bool)

(assert (=> b!714271 (=> (not res!477464) (not e!401466))))

(declare-fun noDuplicate!1251 (List!13461) Bool)

(assert (=> b!714271 (= res!477464 (noDuplicate!1251 acc!652))))

(declare-fun b!714272 () Bool)

(declare-fun res!477465 () Bool)

(assert (=> b!714272 (=> (not res!477465) (not e!401466))))

(assert (=> b!714272 (= res!477465 (not (contains!4004 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!714273 () Bool)

(declare-fun res!477467 () Bool)

(assert (=> b!714273 (=> (not res!477467) (not e!401466))))

(declare-fun -!413 (List!13461 (_ BitVec 64)) List!13461)

(assert (=> b!714273 (= res!477467 (= (-!413 newAcc!49 k!2824) acc!652))))

(declare-fun b!714274 () Bool)

(declare-fun res!477462 () Bool)

(assert (=> b!714274 (=> (not res!477462) (not e!401466))))

(declare-fun subseq!448 (List!13461 List!13461) Bool)

(assert (=> b!714274 (= res!477462 (subseq!448 acc!652 newAcc!49))))

(declare-fun b!714275 () Bool)

(declare-fun res!477466 () Bool)

(assert (=> b!714275 (=> (not res!477466) (not e!401466))))

(assert (=> b!714275 (= res!477466 (not (contains!4004 acc!652 k!2824)))))

(declare-fun b!714276 () Bool)

(declare-fun res!477474 () Bool)

(assert (=> b!714276 (=> (not res!477474) (not e!401466))))

(assert (=> b!714276 (= res!477474 (not (contains!4004 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!714277 () Bool)

(declare-fun res!477463 () Bool)

(assert (=> b!714277 (=> (not res!477463) (not e!401466))))

(assert (=> b!714277 (= res!477463 (noDuplicate!1251 newAcc!49))))

(declare-fun res!477470 () Bool)

(assert (=> start!63452 (=> (not res!477470) (not e!401466))))

(assert (=> start!63452 (= res!477470 (and (bvslt (size!19781 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19781 a!3591))))))

(assert (=> start!63452 e!401466))

(assert (=> start!63452 true))

(declare-fun array_inv!15141 (array!40465) Bool)

(assert (=> start!63452 (array_inv!15141 a!3591)))

(declare-fun b!714278 () Bool)

(declare-fun res!477469 () Bool)

(assert (=> b!714278 (=> (not res!477469) (not e!401466))))

(assert (=> b!714278 (= res!477469 (contains!4004 newAcc!49 k!2824))))

(assert (= (and start!63452 res!477470) b!714271))

(assert (= (and b!714271 res!477464) b!714277))

(assert (= (and b!714277 res!477463) b!714272))

(assert (= (and b!714272 res!477465) b!714269))

(assert (= (and b!714269 res!477472) b!714270))

(assert (= (and b!714270 res!477471) b!714275))

(assert (= (and b!714275 res!477466) b!714267))

(assert (= (and b!714267 res!477473) b!714266))

(assert (= (and b!714266 res!477468) b!714274))

(assert (= (and b!714274 res!477462) b!714278))

(assert (= (and b!714278 res!477469) b!714273))

(assert (= (and b!714273 res!477467) b!714276))

(assert (= (and b!714276 res!477474) b!714268))

(declare-fun m!670883 () Bool)

(assert (=> b!714267 m!670883))

(declare-fun m!670885 () Bool)

(assert (=> b!714273 m!670885))

(declare-fun m!670887 () Bool)

(assert (=> b!714268 m!670887))

(declare-fun m!670889 () Bool)

(assert (=> b!714271 m!670889))

(declare-fun m!670891 () Bool)

(assert (=> b!714277 m!670891))

(declare-fun m!670893 () Bool)

(assert (=> start!63452 m!670893))

(declare-fun m!670895 () Bool)

(assert (=> b!714274 m!670895))

(declare-fun m!670897 () Bool)

(assert (=> b!714276 m!670897))

(declare-fun m!670899 () Bool)

(assert (=> b!714266 m!670899))

(declare-fun m!670901 () Bool)

(assert (=> b!714270 m!670901))

(declare-fun m!670903 () Bool)

(assert (=> b!714272 m!670903))

(declare-fun m!670905 () Bool)

(assert (=> b!714278 m!670905))

(declare-fun m!670907 () Bool)

(assert (=> b!714269 m!670907))

(declare-fun m!670909 () Bool)

(assert (=> b!714275 m!670909))

(push 1)

(assert (not b!714278))

(assert (not b!714274))

(assert (not b!714269))

(assert (not b!714272))

(assert (not b!714268))

(assert (not b!714276))

(assert (not b!714266))

(assert (not b!714277))

(assert (not b!714273))

(assert (not start!63452))

(assert (not b!714271))

(assert (not b!714270))

(assert (not b!714267))

(assert (not b!714275))

(check-sat)

