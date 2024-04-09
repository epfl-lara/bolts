; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!63456 () Bool)

(assert start!63456)

(declare-fun b!714344 () Bool)

(declare-fun res!477549 () Bool)

(declare-fun e!401477 () Bool)

(assert (=> b!714344 (=> (not res!477549) (not e!401477))))

(declare-datatypes ((List!13463 0))(
  ( (Nil!13460) (Cons!13459 (h!14504 (_ BitVec 64)) (t!19786 List!13463)) )
))
(declare-fun acc!652 () List!13463)

(declare-fun contains!4006 (List!13463 (_ BitVec 64)) Bool)

(assert (=> b!714344 (= res!477549 (not (contains!4006 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!714345 () Bool)

(declare-fun res!477544 () Bool)

(assert (=> b!714345 (=> (not res!477544) (not e!401477))))

(assert (=> b!714345 (= res!477544 (not (contains!4006 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!714346 () Bool)

(declare-fun res!477550 () Bool)

(assert (=> b!714346 (=> (not res!477550) (not e!401477))))

(declare-fun newAcc!49 () List!13463)

(declare-fun noDuplicate!1253 (List!13463) Bool)

(assert (=> b!714346 (= res!477550 (noDuplicate!1253 newAcc!49))))

(declare-fun res!477541 () Bool)

(assert (=> start!63456 (=> (not res!477541) (not e!401477))))

(declare-datatypes ((array!40469 0))(
  ( (array!40470 (arr!19369 (Array (_ BitVec 32) (_ BitVec 64))) (size!19783 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40469)

(declare-fun from!2969 () (_ BitVec 32))

(assert (=> start!63456 (= res!477541 (and (bvslt (size!19783 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19783 a!3591))))))

(assert (=> start!63456 e!401477))

(assert (=> start!63456 true))

(declare-fun array_inv!15143 (array!40469) Bool)

(assert (=> start!63456 (array_inv!15143 a!3591)))

(declare-fun b!714347 () Bool)

(declare-fun res!477548 () Bool)

(assert (=> b!714347 (=> (not res!477548) (not e!401477))))

(declare-fun k0!2824 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!714347 (= res!477548 (validKeyInArray!0 k0!2824))))

(declare-fun b!714348 () Bool)

(declare-fun res!477545 () Bool)

(assert (=> b!714348 (=> (not res!477545) (not e!401477))))

(declare-fun arrayNoDuplicates!0 (array!40469 (_ BitVec 32) List!13463) Bool)

(assert (=> b!714348 (= res!477545 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!714349 () Bool)

(assert (=> b!714349 (= e!401477 false)))

(declare-fun lt!318725 () Bool)

(assert (=> b!714349 (= lt!318725 (contains!4006 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!714350 () Bool)

(declare-fun res!477542 () Bool)

(assert (=> b!714350 (=> (not res!477542) (not e!401477))))

(declare-fun arrayContainsKey!0 (array!40469 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!714350 (= res!477542 (not (arrayContainsKey!0 a!3591 k0!2824 from!2969)))))

(declare-fun b!714351 () Bool)

(declare-fun res!477547 () Bool)

(assert (=> b!714351 (=> (not res!477547) (not e!401477))))

(assert (=> b!714351 (= res!477547 (contains!4006 newAcc!49 k0!2824))))

(declare-fun b!714352 () Bool)

(declare-fun res!477546 () Bool)

(assert (=> b!714352 (=> (not res!477546) (not e!401477))))

(declare-fun subseq!450 (List!13463 List!13463) Bool)

(assert (=> b!714352 (= res!477546 (subseq!450 acc!652 newAcc!49))))

(declare-fun b!714353 () Bool)

(declare-fun res!477540 () Bool)

(assert (=> b!714353 (=> (not res!477540) (not e!401477))))

(assert (=> b!714353 (= res!477540 (not (contains!4006 acc!652 k0!2824)))))

(declare-fun b!714354 () Bool)

(declare-fun res!477552 () Bool)

(assert (=> b!714354 (=> (not res!477552) (not e!401477))))

(assert (=> b!714354 (= res!477552 (noDuplicate!1253 acc!652))))

(declare-fun b!714355 () Bool)

(declare-fun res!477543 () Bool)

(assert (=> b!714355 (=> (not res!477543) (not e!401477))))

(declare-fun -!415 (List!13463 (_ BitVec 64)) List!13463)

(assert (=> b!714355 (= res!477543 (= (-!415 newAcc!49 k0!2824) acc!652))))

(declare-fun b!714356 () Bool)

(declare-fun res!477551 () Bool)

(assert (=> b!714356 (=> (not res!477551) (not e!401477))))

(assert (=> b!714356 (= res!477551 (not (contains!4006 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!63456 res!477541) b!714354))

(assert (= (and b!714354 res!477552) b!714346))

(assert (= (and b!714346 res!477550) b!714345))

(assert (= (and b!714345 res!477544) b!714344))

(assert (= (and b!714344 res!477549) b!714350))

(assert (= (and b!714350 res!477542) b!714353))

(assert (= (and b!714353 res!477540) b!714347))

(assert (= (and b!714347 res!477548) b!714348))

(assert (= (and b!714348 res!477545) b!714352))

(assert (= (and b!714352 res!477546) b!714351))

(assert (= (and b!714351 res!477547) b!714355))

(assert (= (and b!714355 res!477543) b!714356))

(assert (= (and b!714356 res!477551) b!714349))

(declare-fun m!670939 () Bool)

(assert (=> b!714356 m!670939))

(declare-fun m!670941 () Bool)

(assert (=> b!714352 m!670941))

(declare-fun m!670943 () Bool)

(assert (=> b!714348 m!670943))

(declare-fun m!670945 () Bool)

(assert (=> start!63456 m!670945))

(declare-fun m!670947 () Bool)

(assert (=> b!714345 m!670947))

(declare-fun m!670949 () Bool)

(assert (=> b!714350 m!670949))

(declare-fun m!670951 () Bool)

(assert (=> b!714351 m!670951))

(declare-fun m!670953 () Bool)

(assert (=> b!714344 m!670953))

(declare-fun m!670955 () Bool)

(assert (=> b!714349 m!670955))

(declare-fun m!670957 () Bool)

(assert (=> b!714354 m!670957))

(declare-fun m!670959 () Bool)

(assert (=> b!714347 m!670959))

(declare-fun m!670961 () Bool)

(assert (=> b!714355 m!670961))

(declare-fun m!670963 () Bool)

(assert (=> b!714346 m!670963))

(declare-fun m!670965 () Bool)

(assert (=> b!714353 m!670965))

(check-sat (not b!714350) (not b!714346) (not b!714353) (not b!714352) (not b!714354) (not b!714351) (not b!714349) (not b!714347) (not b!714355) (not b!714345) (not b!714344) (not b!714348) (not start!63456) (not b!714356))
(check-sat)
