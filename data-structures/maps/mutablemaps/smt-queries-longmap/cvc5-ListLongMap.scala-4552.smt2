; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!63454 () Bool)

(assert start!63454)

(declare-fun b!714305 () Bool)

(declare-fun res!477502 () Bool)

(declare-fun e!401472 () Bool)

(assert (=> b!714305 (=> (not res!477502) (not e!401472))))

(declare-datatypes ((List!13462 0))(
  ( (Nil!13459) (Cons!13458 (h!14503 (_ BitVec 64)) (t!19785 List!13462)) )
))
(declare-fun newAcc!49 () List!13462)

(declare-fun noDuplicate!1252 (List!13462) Bool)

(assert (=> b!714305 (= res!477502 (noDuplicate!1252 newAcc!49))))

(declare-fun b!714306 () Bool)

(declare-fun res!477503 () Bool)

(assert (=> b!714306 (=> (not res!477503) (not e!401472))))

(declare-fun acc!652 () List!13462)

(declare-fun subseq!449 (List!13462 List!13462) Bool)

(assert (=> b!714306 (= res!477503 (subseq!449 acc!652 newAcc!49))))

(declare-fun b!714307 () Bool)

(declare-fun res!477511 () Bool)

(assert (=> b!714307 (=> (not res!477511) (not e!401472))))

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun contains!4005 (List!13462 (_ BitVec 64)) Bool)

(assert (=> b!714307 (= res!477511 (not (contains!4005 acc!652 k!2824)))))

(declare-fun b!714308 () Bool)

(declare-fun res!477506 () Bool)

(assert (=> b!714308 (=> (not res!477506) (not e!401472))))

(assert (=> b!714308 (= res!477506 (not (contains!4005 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!714309 () Bool)

(declare-fun res!477505 () Bool)

(assert (=> b!714309 (=> (not res!477505) (not e!401472))))

(declare-fun -!414 (List!13462 (_ BitVec 64)) List!13462)

(assert (=> b!714309 (= res!477505 (= (-!414 newAcc!49 k!2824) acc!652))))

(declare-fun b!714310 () Bool)

(declare-fun res!477510 () Bool)

(assert (=> b!714310 (=> (not res!477510) (not e!401472))))

(declare-datatypes ((array!40467 0))(
  ( (array!40468 (arr!19368 (Array (_ BitVec 32) (_ BitVec 64))) (size!19782 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40467)

(declare-fun from!2969 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!40467 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!714310 (= res!477510 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!714311 () Bool)

(declare-fun res!477504 () Bool)

(assert (=> b!714311 (=> (not res!477504) (not e!401472))))

(assert (=> b!714311 (= res!477504 (contains!4005 newAcc!49 k!2824))))

(declare-fun b!714312 () Bool)

(assert (=> b!714312 (= e!401472 false)))

(declare-fun lt!318722 () Bool)

(assert (=> b!714312 (= lt!318722 (contains!4005 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!714313 () Bool)

(declare-fun res!477501 () Bool)

(assert (=> b!714313 (=> (not res!477501) (not e!401472))))

(assert (=> b!714313 (= res!477501 (noDuplicate!1252 acc!652))))

(declare-fun res!477508 () Bool)

(assert (=> start!63454 (=> (not res!477508) (not e!401472))))

(assert (=> start!63454 (= res!477508 (and (bvslt (size!19782 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19782 a!3591))))))

(assert (=> start!63454 e!401472))

(assert (=> start!63454 true))

(declare-fun array_inv!15142 (array!40467) Bool)

(assert (=> start!63454 (array_inv!15142 a!3591)))

(declare-fun b!714314 () Bool)

(declare-fun res!477513 () Bool)

(assert (=> b!714314 (=> (not res!477513) (not e!401472))))

(assert (=> b!714314 (= res!477513 (not (contains!4005 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!714315 () Bool)

(declare-fun res!477509 () Bool)

(assert (=> b!714315 (=> (not res!477509) (not e!401472))))

(assert (=> b!714315 (= res!477509 (not (contains!4005 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!714316 () Bool)

(declare-fun res!477507 () Bool)

(assert (=> b!714316 (=> (not res!477507) (not e!401472))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!714316 (= res!477507 (validKeyInArray!0 k!2824))))

(declare-fun b!714317 () Bool)

(declare-fun res!477512 () Bool)

(assert (=> b!714317 (=> (not res!477512) (not e!401472))))

(declare-fun arrayNoDuplicates!0 (array!40467 (_ BitVec 32) List!13462) Bool)

(assert (=> b!714317 (= res!477512 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(assert (= (and start!63454 res!477508) b!714313))

(assert (= (and b!714313 res!477501) b!714305))

(assert (= (and b!714305 res!477502) b!714308))

(assert (= (and b!714308 res!477506) b!714315))

(assert (= (and b!714315 res!477509) b!714310))

(assert (= (and b!714310 res!477510) b!714307))

(assert (= (and b!714307 res!477511) b!714316))

(assert (= (and b!714316 res!477507) b!714317))

(assert (= (and b!714317 res!477512) b!714306))

(assert (= (and b!714306 res!477503) b!714311))

(assert (= (and b!714311 res!477504) b!714309))

(assert (= (and b!714309 res!477505) b!714314))

(assert (= (and b!714314 res!477513) b!714312))

(declare-fun m!670911 () Bool)

(assert (=> start!63454 m!670911))

(declare-fun m!670913 () Bool)

(assert (=> b!714309 m!670913))

(declare-fun m!670915 () Bool)

(assert (=> b!714311 m!670915))

(declare-fun m!670917 () Bool)

(assert (=> b!714308 m!670917))

(declare-fun m!670919 () Bool)

(assert (=> b!714305 m!670919))

(declare-fun m!670921 () Bool)

(assert (=> b!714314 m!670921))

(declare-fun m!670923 () Bool)

(assert (=> b!714306 m!670923))

(declare-fun m!670925 () Bool)

(assert (=> b!714307 m!670925))

(declare-fun m!670927 () Bool)

(assert (=> b!714315 m!670927))

(declare-fun m!670929 () Bool)

(assert (=> b!714317 m!670929))

(declare-fun m!670931 () Bool)

(assert (=> b!714316 m!670931))

(declare-fun m!670933 () Bool)

(assert (=> b!714312 m!670933))

(declare-fun m!670935 () Bool)

(assert (=> b!714310 m!670935))

(declare-fun m!670937 () Bool)

(assert (=> b!714313 m!670937))

(push 1)

(assert (not b!714316))

(assert (not b!714313))

(assert (not b!714314))

(assert (not b!714311))

(assert (not b!714315))

(assert (not b!714307))

(assert (not b!714306))

(assert (not b!714310))

(assert (not start!63454))

(assert (not b!714312))

(assert (not b!714305))

(assert (not b!714317))

(assert (not b!714308))

(assert (not b!714309))

(check-sat)

