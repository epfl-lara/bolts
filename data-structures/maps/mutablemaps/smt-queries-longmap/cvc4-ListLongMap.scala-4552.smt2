; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!63458 () Bool)

(assert start!63458)

(declare-fun b!714383 () Bool)

(declare-fun res!477579 () Bool)

(declare-fun e!401484 () Bool)

(assert (=> b!714383 (=> (not res!477579) (not e!401484))))

(declare-datatypes ((array!40471 0))(
  ( (array!40472 (arr!19370 (Array (_ BitVec 32) (_ BitVec 64))) (size!19784 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40471)

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun from!2969 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!40471 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!714383 (= res!477579 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!714384 () Bool)

(assert (=> b!714384 (= e!401484 false)))

(declare-fun lt!318728 () Bool)

(declare-datatypes ((List!13464 0))(
  ( (Nil!13461) (Cons!13460 (h!14505 (_ BitVec 64)) (t!19787 List!13464)) )
))
(declare-fun newAcc!49 () List!13464)

(declare-fun contains!4007 (List!13464 (_ BitVec 64)) Bool)

(assert (=> b!714384 (= lt!318728 (contains!4007 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!477584 () Bool)

(assert (=> start!63458 (=> (not res!477584) (not e!401484))))

(assert (=> start!63458 (= res!477584 (and (bvslt (size!19784 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19784 a!3591))))))

(assert (=> start!63458 e!401484))

(assert (=> start!63458 true))

(declare-fun array_inv!15144 (array!40471) Bool)

(assert (=> start!63458 (array_inv!15144 a!3591)))

(declare-fun b!714385 () Bool)

(declare-fun res!477583 () Bool)

(assert (=> b!714385 (=> (not res!477583) (not e!401484))))

(declare-fun acc!652 () List!13464)

(assert (=> b!714385 (= res!477583 (not (contains!4007 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!714386 () Bool)

(declare-fun res!477590 () Bool)

(assert (=> b!714386 (=> (not res!477590) (not e!401484))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!714386 (= res!477590 (validKeyInArray!0 k!2824))))

(declare-fun b!714387 () Bool)

(declare-fun res!477586 () Bool)

(assert (=> b!714387 (=> (not res!477586) (not e!401484))))

(assert (=> b!714387 (= res!477586 (not (contains!4007 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!714388 () Bool)

(declare-fun res!477585 () Bool)

(assert (=> b!714388 (=> (not res!477585) (not e!401484))))

(declare-fun noDuplicate!1254 (List!13464) Bool)

(assert (=> b!714388 (= res!477585 (noDuplicate!1254 newAcc!49))))

(declare-fun b!714389 () Bool)

(declare-fun res!477582 () Bool)

(assert (=> b!714389 (=> (not res!477582) (not e!401484))))

(declare-fun arrayNoDuplicates!0 (array!40471 (_ BitVec 32) List!13464) Bool)

(assert (=> b!714389 (= res!477582 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!714390 () Bool)

(declare-fun res!477580 () Bool)

(assert (=> b!714390 (=> (not res!477580) (not e!401484))))

(assert (=> b!714390 (= res!477580 (not (contains!4007 acc!652 k!2824)))))

(declare-fun b!714391 () Bool)

(declare-fun res!477588 () Bool)

(assert (=> b!714391 (=> (not res!477588) (not e!401484))))

(declare-fun subseq!451 (List!13464 List!13464) Bool)

(assert (=> b!714391 (= res!477588 (subseq!451 acc!652 newAcc!49))))

(declare-fun b!714392 () Bool)

(declare-fun res!477589 () Bool)

(assert (=> b!714392 (=> (not res!477589) (not e!401484))))

(assert (=> b!714392 (= res!477589 (noDuplicate!1254 acc!652))))

(declare-fun b!714393 () Bool)

(declare-fun res!477581 () Bool)

(assert (=> b!714393 (=> (not res!477581) (not e!401484))))

(declare-fun -!416 (List!13464 (_ BitVec 64)) List!13464)

(assert (=> b!714393 (= res!477581 (= (-!416 newAcc!49 k!2824) acc!652))))

(declare-fun b!714394 () Bool)

(declare-fun res!477587 () Bool)

(assert (=> b!714394 (=> (not res!477587) (not e!401484))))

(assert (=> b!714394 (= res!477587 (contains!4007 newAcc!49 k!2824))))

(declare-fun b!714395 () Bool)

(declare-fun res!477591 () Bool)

(assert (=> b!714395 (=> (not res!477591) (not e!401484))))

(assert (=> b!714395 (= res!477591 (not (contains!4007 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!63458 res!477584) b!714392))

(assert (= (and b!714392 res!477589) b!714388))

(assert (= (and b!714388 res!477585) b!714395))

(assert (= (and b!714395 res!477591) b!714385))

(assert (= (and b!714385 res!477583) b!714383))

(assert (= (and b!714383 res!477579) b!714390))

(assert (= (and b!714390 res!477580) b!714386))

(assert (= (and b!714386 res!477590) b!714389))

(assert (= (and b!714389 res!477582) b!714391))

(assert (= (and b!714391 res!477588) b!714394))

(assert (= (and b!714394 res!477587) b!714393))

(assert (= (and b!714393 res!477581) b!714387))

(assert (= (and b!714387 res!477586) b!714384))

(declare-fun m!670967 () Bool)

(assert (=> start!63458 m!670967))

(declare-fun m!670969 () Bool)

(assert (=> b!714386 m!670969))

(declare-fun m!670971 () Bool)

(assert (=> b!714393 m!670971))

(declare-fun m!670973 () Bool)

(assert (=> b!714395 m!670973))

(declare-fun m!670975 () Bool)

(assert (=> b!714394 m!670975))

(declare-fun m!670977 () Bool)

(assert (=> b!714390 m!670977))

(declare-fun m!670979 () Bool)

(assert (=> b!714391 m!670979))

(declare-fun m!670981 () Bool)

(assert (=> b!714385 m!670981))

(declare-fun m!670983 () Bool)

(assert (=> b!714389 m!670983))

(declare-fun m!670985 () Bool)

(assert (=> b!714387 m!670985))

(declare-fun m!670987 () Bool)

(assert (=> b!714383 m!670987))

(declare-fun m!670989 () Bool)

(assert (=> b!714388 m!670989))

(declare-fun m!670991 () Bool)

(assert (=> b!714384 m!670991))

(declare-fun m!670993 () Bool)

(assert (=> b!714392 m!670993))

(push 1)

(assert (not b!714385))

(assert (not b!714388))

(assert (not b!714384))

(assert (not b!714391))

(assert (not b!714393))

(assert (not b!714395))

(assert (not b!714386))

(assert (not b!714389))

(assert (not b!714387))

(assert (not b!714392))

(assert (not start!63458))

(assert (not b!714383))

(assert (not b!714394))

(assert (not b!714390))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

