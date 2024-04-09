; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!63380 () Bool)

(assert start!63380)

(declare-fun b!713540 () Bool)

(declare-fun res!476799 () Bool)

(declare-fun e!401195 () Bool)

(assert (=> b!713540 (=> (not res!476799) (not e!401195))))

(declare-datatypes ((List!13449 0))(
  ( (Nil!13446) (Cons!13445 (h!14490 (_ BitVec 64)) (t!19772 List!13449)) )
))
(declare-fun acc!652 () List!13449)

(declare-fun noDuplicate!1239 (List!13449) Bool)

(assert (=> b!713540 (= res!476799 (noDuplicate!1239 acc!652))))

(declare-fun b!713541 () Bool)

(declare-fun res!476798 () Bool)

(assert (=> b!713541 (=> (not res!476798) (not e!401195))))

(declare-datatypes ((array!40438 0))(
  ( (array!40439 (arr!19355 (Array (_ BitVec 32) (_ BitVec 64))) (size!19767 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40438)

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun from!2969 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!40438 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!713541 (= res!476798 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun res!476791 () Bool)

(assert (=> start!63380 (=> (not res!476791) (not e!401195))))

(assert (=> start!63380 (= res!476791 (and (bvslt (size!19767 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19767 a!3591))))))

(assert (=> start!63380 e!401195))

(assert (=> start!63380 true))

(declare-fun array_inv!15129 (array!40438) Bool)

(assert (=> start!63380 (array_inv!15129 a!3591)))

(declare-fun b!713542 () Bool)

(declare-fun res!476793 () Bool)

(assert (=> b!713542 (=> (not res!476793) (not e!401195))))

(declare-fun newAcc!49 () List!13449)

(assert (=> b!713542 (= res!476793 (noDuplicate!1239 newAcc!49))))

(declare-fun b!713543 () Bool)

(declare-fun res!476794 () Bool)

(assert (=> b!713543 (=> (not res!476794) (not e!401195))))

(declare-fun contains!3992 (List!13449 (_ BitVec 64)) Bool)

(assert (=> b!713543 (= res!476794 (contains!3992 newAcc!49 k!2824))))

(declare-fun b!713544 () Bool)

(declare-fun res!476795 () Bool)

(assert (=> b!713544 (=> (not res!476795) (not e!401195))))

(assert (=> b!713544 (= res!476795 (not (contains!3992 acc!652 k!2824)))))

(declare-fun b!713545 () Bool)

(assert (=> b!713545 (= e!401195 false)))

(declare-fun lt!318659 () Bool)

(assert (=> b!713545 (= lt!318659 (contains!3992 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!713546 () Bool)

(declare-fun res!476800 () Bool)

(assert (=> b!713546 (=> (not res!476800) (not e!401195))))

(assert (=> b!713546 (= res!476800 (not (contains!3992 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!713547 () Bool)

(declare-fun res!476792 () Bool)

(assert (=> b!713547 (=> (not res!476792) (not e!401195))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!713547 (= res!476792 (validKeyInArray!0 k!2824))))

(declare-fun b!713548 () Bool)

(declare-fun res!476802 () Bool)

(assert (=> b!713548 (=> (not res!476802) (not e!401195))))

(declare-fun subseq!436 (List!13449 List!13449) Bool)

(assert (=> b!713548 (= res!476802 (subseq!436 acc!652 newAcc!49))))

(declare-fun b!713549 () Bool)

(declare-fun res!476796 () Bool)

(assert (=> b!713549 (=> (not res!476796) (not e!401195))))

(declare-fun -!401 (List!13449 (_ BitVec 64)) List!13449)

(assert (=> b!713549 (= res!476796 (= (-!401 newAcc!49 k!2824) acc!652))))

(declare-fun b!713550 () Bool)

(declare-fun res!476790 () Bool)

(assert (=> b!713550 (=> (not res!476790) (not e!401195))))

(assert (=> b!713550 (= res!476790 (not (contains!3992 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!713551 () Bool)

(declare-fun res!476797 () Bool)

(assert (=> b!713551 (=> (not res!476797) (not e!401195))))

(assert (=> b!713551 (= res!476797 (not (contains!3992 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!713552 () Bool)

(declare-fun res!476801 () Bool)

(assert (=> b!713552 (=> (not res!476801) (not e!401195))))

(declare-fun arrayNoDuplicates!0 (array!40438 (_ BitVec 32) List!13449) Bool)

(assert (=> b!713552 (= res!476801 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(assert (= (and start!63380 res!476791) b!713540))

(assert (= (and b!713540 res!476799) b!713542))

(assert (= (and b!713542 res!476793) b!713550))

(assert (= (and b!713550 res!476790) b!713551))

(assert (= (and b!713551 res!476797) b!713541))

(assert (= (and b!713541 res!476798) b!713544))

(assert (= (and b!713544 res!476795) b!713547))

(assert (= (and b!713547 res!476792) b!713552))

(assert (= (and b!713552 res!476801) b!713548))

(assert (= (and b!713548 res!476802) b!713543))

(assert (= (and b!713543 res!476794) b!713549))

(assert (= (and b!713549 res!476796) b!713546))

(assert (= (and b!713546 res!476800) b!713545))

(declare-fun m!670349 () Bool)

(assert (=> b!713540 m!670349))

(declare-fun m!670351 () Bool)

(assert (=> b!713543 m!670351))

(declare-fun m!670353 () Bool)

(assert (=> b!713547 m!670353))

(declare-fun m!670355 () Bool)

(assert (=> b!713552 m!670355))

(declare-fun m!670357 () Bool)

(assert (=> b!713544 m!670357))

(declare-fun m!670359 () Bool)

(assert (=> b!713541 m!670359))

(declare-fun m!670361 () Bool)

(assert (=> b!713549 m!670361))

(declare-fun m!670363 () Bool)

(assert (=> b!713542 m!670363))

(declare-fun m!670365 () Bool)

(assert (=> b!713551 m!670365))

(declare-fun m!670367 () Bool)

(assert (=> b!713546 m!670367))

(declare-fun m!670369 () Bool)

(assert (=> b!713548 m!670369))

(declare-fun m!670371 () Bool)

(assert (=> start!63380 m!670371))

(declare-fun m!670373 () Bool)

(assert (=> b!713545 m!670373))

(declare-fun m!670375 () Bool)

(assert (=> b!713550 m!670375))

(push 1)

(assert (not b!713545))

(assert (not b!713551))

(assert (not b!713544))

(assert (not b!713543))

(assert (not b!713552))

(assert (not b!713549))

(assert (not b!713547))

(assert (not b!713541))

(assert (not start!63380))

