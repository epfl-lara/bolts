; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!63538 () Bool)

(assert start!63538)

(declare-fun b!715481 () Bool)

(declare-fun res!478635 () Bool)

(declare-fun e!401789 () Bool)

(assert (=> b!715481 (=> (not res!478635) (not e!401789))))

(declare-fun from!2969 () (_ BitVec 32))

(declare-datatypes ((array!40506 0))(
  ( (array!40507 (arr!19386 (Array (_ BitVec 32) (_ BitVec 64))) (size!19802 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40506)

(assert (=> b!715481 (= res!478635 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19802 a!3591)))))

(declare-fun b!715482 () Bool)

(declare-fun res!478621 () Bool)

(assert (=> b!715482 (=> (not res!478621) (not e!401789))))

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!715482 (= res!478621 (validKeyInArray!0 k!2824))))

(declare-fun b!715483 () Bool)

(assert (=> b!715483 (= e!401789 (bvsge (bvsub (size!19802 a!3591) (bvadd #b00000000000000000000000000000001 from!2969)) (bvsub (size!19802 a!3591) from!2969)))))

(declare-fun res!478618 () Bool)

(assert (=> start!63538 (=> (not res!478618) (not e!401789))))

(assert (=> start!63538 (= res!478618 (and (bvslt (size!19802 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19802 a!3591))))))

(assert (=> start!63538 e!401789))

(assert (=> start!63538 true))

(declare-fun array_inv!15160 (array!40506) Bool)

(assert (=> start!63538 (array_inv!15160 a!3591)))

(declare-fun b!715484 () Bool)

(declare-fun res!478622 () Bool)

(assert (=> b!715484 (=> (not res!478622) (not e!401789))))

(declare-datatypes ((List!13480 0))(
  ( (Nil!13477) (Cons!13476 (h!14521 (_ BitVec 64)) (t!19803 List!13480)) )
))
(declare-fun acc!652 () List!13480)

(declare-fun contains!4023 (List!13480 (_ BitVec 64)) Bool)

(assert (=> b!715484 (= res!478622 (not (contains!4023 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!715485 () Bool)

(declare-fun res!478630 () Bool)

(assert (=> b!715485 (=> (not res!478630) (not e!401789))))

(declare-fun newAcc!49 () List!13480)

(assert (=> b!715485 (= res!478630 (not (contains!4023 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!715486 () Bool)

(declare-fun res!478631 () Bool)

(assert (=> b!715486 (=> (not res!478631) (not e!401789))))

(assert (=> b!715486 (= res!478631 (not (contains!4023 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!715487 () Bool)

(declare-fun res!478633 () Bool)

(assert (=> b!715487 (=> (not res!478633) (not e!401789))))

(declare-fun arrayNoDuplicates!0 (array!40506 (_ BitVec 32) List!13480) Bool)

(assert (=> b!715487 (= res!478633 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) acc!652))))

(declare-fun b!715488 () Bool)

(declare-fun res!478634 () Bool)

(assert (=> b!715488 (=> (not res!478634) (not e!401789))))

(declare-fun arrayContainsKey!0 (array!40506 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!715488 (= res!478634 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!715489 () Bool)

(declare-fun res!478632 () Bool)

(assert (=> b!715489 (=> (not res!478632) (not e!401789))))

(declare-fun noDuplicate!1270 (List!13480) Bool)

(assert (=> b!715489 (= res!478632 (noDuplicate!1270 newAcc!49))))

(declare-fun b!715490 () Bool)

(declare-fun res!478620 () Bool)

(assert (=> b!715490 (=> (not res!478620) (not e!401789))))

(assert (=> b!715490 (= res!478620 (not (contains!4023 acc!652 k!2824)))))

(declare-fun b!715491 () Bool)

(declare-fun res!478627 () Bool)

(assert (=> b!715491 (=> (not res!478627) (not e!401789))))

(assert (=> b!715491 (= res!478627 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun b!715492 () Bool)

(declare-fun res!478624 () Bool)

(assert (=> b!715492 (=> (not res!478624) (not e!401789))))

(assert (=> b!715492 (= res!478624 (not (validKeyInArray!0 (select (arr!19386 a!3591) from!2969))))))

(declare-fun b!715493 () Bool)

(declare-fun res!478619 () Bool)

(assert (=> b!715493 (=> (not res!478619) (not e!401789))))

(declare-fun subseq!467 (List!13480 List!13480) Bool)

(assert (=> b!715493 (= res!478619 (subseq!467 acc!652 newAcc!49))))

(declare-fun b!715494 () Bool)

(declare-fun res!478629 () Bool)

(assert (=> b!715494 (=> (not res!478629) (not e!401789))))

(assert (=> b!715494 (= res!478629 (not (contains!4023 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!715495 () Bool)

(declare-fun res!478626 () Bool)

(assert (=> b!715495 (=> (not res!478626) (not e!401789))))

(assert (=> b!715495 (= res!478626 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!715496 () Bool)

(declare-fun res!478625 () Bool)

(assert (=> b!715496 (=> (not res!478625) (not e!401789))))

(declare-fun -!432 (List!13480 (_ BitVec 64)) List!13480)

(assert (=> b!715496 (= res!478625 (= (-!432 newAcc!49 k!2824) acc!652))))

(declare-fun b!715497 () Bool)

(declare-fun res!478623 () Bool)

(assert (=> b!715497 (=> (not res!478623) (not e!401789))))

(assert (=> b!715497 (= res!478623 (not (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!715498 () Bool)

(declare-fun res!478628 () Bool)

(assert (=> b!715498 (=> (not res!478628) (not e!401789))))

(assert (=> b!715498 (= res!478628 (contains!4023 newAcc!49 k!2824))))

(declare-fun b!715499 () Bool)

(declare-fun res!478617 () Bool)

(assert (=> b!715499 (=> (not res!478617) (not e!401789))))

(assert (=> b!715499 (= res!478617 (noDuplicate!1270 acc!652))))

(assert (= (and start!63538 res!478618) b!715499))

(assert (= (and b!715499 res!478617) b!715489))

(assert (= (and b!715489 res!478632) b!715484))

(assert (= (and b!715484 res!478622) b!715494))

(assert (= (and b!715494 res!478629) b!715488))

(assert (= (and b!715488 res!478634) b!715490))

(assert (= (and b!715490 res!478620) b!715482))

(assert (= (and b!715482 res!478621) b!715495))

(assert (= (and b!715495 res!478626) b!715493))

(assert (= (and b!715493 res!478619) b!715498))

(assert (= (and b!715498 res!478628) b!715496))

(assert (= (and b!715496 res!478625) b!715486))

(assert (= (and b!715486 res!478631) b!715485))

(assert (= (and b!715485 res!478630) b!715481))

(assert (= (and b!715481 res!478635) b!715492))

(assert (= (and b!715492 res!478624) b!715491))

(assert (= (and b!715491 res!478627) b!715497))

(assert (= (and b!715497 res!478623) b!715487))

(assert (= (and b!715487 res!478633) b!715483))

(declare-fun m!671733 () Bool)

(assert (=> b!715493 m!671733))

(declare-fun m!671735 () Bool)

(assert (=> b!715492 m!671735))

(assert (=> b!715492 m!671735))

(declare-fun m!671737 () Bool)

(assert (=> b!715492 m!671737))

(declare-fun m!671739 () Bool)

(assert (=> b!715485 m!671739))

(declare-fun m!671741 () Bool)

(assert (=> b!715484 m!671741))

(declare-fun m!671743 () Bool)

(assert (=> b!715494 m!671743))

(declare-fun m!671745 () Bool)

(assert (=> b!715495 m!671745))

(declare-fun m!671747 () Bool)

(assert (=> b!715496 m!671747))

(declare-fun m!671749 () Bool)

(assert (=> b!715497 m!671749))

(declare-fun m!671751 () Bool)

(assert (=> b!715490 m!671751))

(declare-fun m!671753 () Bool)

(assert (=> b!715498 m!671753))

(declare-fun m!671755 () Bool)

(assert (=> b!715482 m!671755))

(declare-fun m!671757 () Bool)

(assert (=> b!715488 m!671757))

(declare-fun m!671759 () Bool)

(assert (=> b!715489 m!671759))

(declare-fun m!671761 () Bool)

(assert (=> b!715499 m!671761))

(declare-fun m!671763 () Bool)

(assert (=> b!715487 m!671763))

(declare-fun m!671765 () Bool)

(assert (=> start!63538 m!671765))

(declare-fun m!671767 () Bool)

(assert (=> b!715486 m!671767))

(push 1)

(assert (not b!715493))

(assert (not b!715495))

(assert (not b!715498))

(assert (not b!715486))

(assert (not b!715497))

(assert (not b!715494))

(assert (not b!715488))

(assert (not b!715499))

(assert (not b!715484))

(assert (not start!63538))

(assert (not b!715492))

(assert (not b!715485))

(assert (not b!715487))

(assert (not b!715496))

(assert (not b!715482))

(assert (not b!715490))

(assert (not b!715489))

(check-sat)

(pop 1)

(push 1)

(check-sat)

