; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!63532 () Bool)

(assert start!63532)

(declare-fun b!715317 () Bool)

(declare-fun res!478453 () Bool)

(declare-fun e!401771 () Bool)

(assert (=> b!715317 (=> (not res!478453) (not e!401771))))

(declare-datatypes ((List!13477 0))(
  ( (Nil!13474) (Cons!13473 (h!14518 (_ BitVec 64)) (t!19800 List!13477)) )
))
(declare-fun acc!652 () List!13477)

(declare-fun contains!4020 (List!13477 (_ BitVec 64)) Bool)

(assert (=> b!715317 (= res!478453 (not (contains!4020 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!715318 () Bool)

(declare-fun res!478454 () Bool)

(assert (=> b!715318 (=> (not res!478454) (not e!401771))))

(assert (=> b!715318 (= res!478454 (not (contains!4020 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!715319 () Bool)

(declare-fun res!478465 () Bool)

(assert (=> b!715319 (=> (not res!478465) (not e!401771))))

(declare-datatypes ((array!40500 0))(
  ( (array!40501 (arr!19383 (Array (_ BitVec 32) (_ BitVec 64))) (size!19799 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40500)

(declare-fun from!2969 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!715319 (= res!478465 (not (validKeyInArray!0 (select (arr!19383 a!3591) from!2969))))))

(declare-fun b!715320 () Bool)

(declare-fun res!478464 () Bool)

(assert (=> b!715320 (=> (not res!478464) (not e!401771))))

(declare-fun k!2824 () (_ BitVec 64))

(assert (=> b!715320 (= res!478464 (validKeyInArray!0 k!2824))))

(declare-fun b!715321 () Bool)

(declare-fun res!478456 () Bool)

(assert (=> b!715321 (=> (not res!478456) (not e!401771))))

(declare-fun newAcc!49 () List!13477)

(assert (=> b!715321 (= res!478456 (not (contains!4020 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!715322 () Bool)

(declare-fun res!478462 () Bool)

(assert (=> b!715322 (=> (not res!478462) (not e!401771))))

(assert (=> b!715322 (= res!478462 (not (contains!4020 acc!652 k!2824)))))

(declare-fun b!715323 () Bool)

(declare-fun res!478466 () Bool)

(assert (=> b!715323 (=> (not res!478466) (not e!401771))))

(declare-fun noDuplicate!1267 (List!13477) Bool)

(assert (=> b!715323 (= res!478466 (noDuplicate!1267 newAcc!49))))

(declare-fun b!715325 () Bool)

(declare-fun res!478460 () Bool)

(assert (=> b!715325 (=> (not res!478460) (not e!401771))))

(assert (=> b!715325 (= res!478460 (not (contains!4020 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!715326 () Bool)

(declare-fun res!478457 () Bool)

(assert (=> b!715326 (=> (not res!478457) (not e!401771))))

(assert (=> b!715326 (= res!478457 (contains!4020 newAcc!49 k!2824))))

(declare-fun b!715327 () Bool)

(declare-fun res!478459 () Bool)

(assert (=> b!715327 (=> (not res!478459) (not e!401771))))

(declare-fun -!429 (List!13477 (_ BitVec 64)) List!13477)

(assert (=> b!715327 (= res!478459 (= (-!429 newAcc!49 k!2824) acc!652))))

(declare-fun b!715328 () Bool)

(assert (=> b!715328 (= e!401771 false)))

(declare-fun lt!318791 () Bool)

(declare-fun arrayNoDuplicates!0 (array!40500 (_ BitVec 32) List!13477) Bool)

(assert (=> b!715328 (= lt!318791 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) acc!652))))

(declare-fun res!478455 () Bool)

(assert (=> start!63532 (=> (not res!478455) (not e!401771))))

(assert (=> start!63532 (= res!478455 (and (bvslt (size!19799 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19799 a!3591))))))

(assert (=> start!63532 e!401771))

(assert (=> start!63532 true))

(declare-fun array_inv!15157 (array!40500) Bool)

(assert (=> start!63532 (array_inv!15157 a!3591)))

(declare-fun b!715324 () Bool)

(declare-fun res!478469 () Bool)

(assert (=> b!715324 (=> (not res!478469) (not e!401771))))

(assert (=> b!715324 (= res!478469 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19799 a!3591)))))

(declare-fun b!715329 () Bool)

(declare-fun res!478470 () Bool)

(assert (=> b!715329 (=> (not res!478470) (not e!401771))))

(assert (=> b!715329 (= res!478470 (noDuplicate!1267 acc!652))))

(declare-fun b!715330 () Bool)

(declare-fun res!478458 () Bool)

(assert (=> b!715330 (=> (not res!478458) (not e!401771))))

(assert (=> b!715330 (= res!478458 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!715331 () Bool)

(declare-fun res!478468 () Bool)

(assert (=> b!715331 (=> (not res!478468) (not e!401771))))

(declare-fun subseq!464 (List!13477 List!13477) Bool)

(assert (=> b!715331 (= res!478468 (subseq!464 acc!652 newAcc!49))))

(declare-fun b!715332 () Bool)

(declare-fun res!478463 () Bool)

(assert (=> b!715332 (=> (not res!478463) (not e!401771))))

(declare-fun arrayContainsKey!0 (array!40500 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!715332 (= res!478463 (not (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!715333 () Bool)

(declare-fun res!478467 () Bool)

(assert (=> b!715333 (=> (not res!478467) (not e!401771))))

(assert (=> b!715333 (= res!478467 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun b!715334 () Bool)

(declare-fun res!478461 () Bool)

(assert (=> b!715334 (=> (not res!478461) (not e!401771))))

(assert (=> b!715334 (= res!478461 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(assert (= (and start!63532 res!478455) b!715329))

(assert (= (and b!715329 res!478470) b!715323))

(assert (= (and b!715323 res!478466) b!715317))

(assert (= (and b!715317 res!478453) b!715318))

(assert (= (and b!715318 res!478454) b!715334))

(assert (= (and b!715334 res!478461) b!715322))

(assert (= (and b!715322 res!478462) b!715320))

(assert (= (and b!715320 res!478464) b!715330))

(assert (= (and b!715330 res!478458) b!715331))

(assert (= (and b!715331 res!478468) b!715326))

(assert (= (and b!715326 res!478457) b!715327))

(assert (= (and b!715327 res!478459) b!715325))

(assert (= (and b!715325 res!478460) b!715321))

(assert (= (and b!715321 res!478456) b!715324))

(assert (= (and b!715324 res!478469) b!715319))

(assert (= (and b!715319 res!478465) b!715333))

(assert (= (and b!715333 res!478467) b!715332))

(assert (= (and b!715332 res!478463) b!715328))

(declare-fun m!671625 () Bool)

(assert (=> b!715321 m!671625))

(declare-fun m!671627 () Bool)

(assert (=> b!715318 m!671627))

(declare-fun m!671629 () Bool)

(assert (=> b!715332 m!671629))

(declare-fun m!671631 () Bool)

(assert (=> start!63532 m!671631))

(declare-fun m!671633 () Bool)

(assert (=> b!715323 m!671633))

(declare-fun m!671635 () Bool)

(assert (=> b!715328 m!671635))

(declare-fun m!671637 () Bool)

(assert (=> b!715329 m!671637))

(declare-fun m!671639 () Bool)

(assert (=> b!715317 m!671639))

(declare-fun m!671641 () Bool)

(assert (=> b!715320 m!671641))

(declare-fun m!671643 () Bool)

(assert (=> b!715331 m!671643))

(declare-fun m!671645 () Bool)

(assert (=> b!715327 m!671645))

(declare-fun m!671647 () Bool)

(assert (=> b!715319 m!671647))

(assert (=> b!715319 m!671647))

(declare-fun m!671649 () Bool)

(assert (=> b!715319 m!671649))

(declare-fun m!671651 () Bool)

(assert (=> b!715322 m!671651))

(declare-fun m!671653 () Bool)

(assert (=> b!715325 m!671653))

(declare-fun m!671655 () Bool)

(assert (=> b!715326 m!671655))

(declare-fun m!671657 () Bool)

(assert (=> b!715334 m!671657))

(declare-fun m!671659 () Bool)

(assert (=> b!715330 m!671659))

(push 1)

(assert (not b!715328))

(assert (not b!715332))

(assert (not b!715327))

(assert (not b!715331))

(assert (not b!715325))

(assert (not b!715330))

(assert (not b!715317))

(assert (not b!715329))

(assert (not b!715318))

(assert (not b!715319))

(assert (not b!715320))

(assert (not b!715326))

(assert (not b!715334))

(assert (not b!715323))

(assert (not start!63532))

(assert (not b!715321))

(assert (not b!715322))

(check-sat)

(pop 1)

(push 1)

(check-sat)

