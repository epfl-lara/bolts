; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!63540 () Bool)

(assert start!63540)

(declare-fun b!715538 () Bool)

(declare-fun res!478690 () Bool)

(declare-fun e!401795 () Bool)

(assert (=> b!715538 (=> (not res!478690) (not e!401795))))

(declare-datatypes ((List!13481 0))(
  ( (Nil!13478) (Cons!13477 (h!14522 (_ BitVec 64)) (t!19804 List!13481)) )
))
(declare-fun newAcc!49 () List!13481)

(declare-fun k0!2824 () (_ BitVec 64))

(declare-fun acc!652 () List!13481)

(declare-fun -!433 (List!13481 (_ BitVec 64)) List!13481)

(assert (=> b!715538 (= res!478690 (= (-!433 newAcc!49 k0!2824) acc!652))))

(declare-fun b!715539 () Bool)

(declare-fun res!478689 () Bool)

(assert (=> b!715539 (=> (not res!478689) (not e!401795))))

(declare-fun from!2969 () (_ BitVec 32))

(assert (=> b!715539 (= res!478689 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun b!715540 () Bool)

(declare-fun res!478679 () Bool)

(assert (=> b!715540 (=> (not res!478679) (not e!401795))))

(declare-datatypes ((array!40508 0))(
  ( (array!40509 (arr!19387 (Array (_ BitVec 32) (_ BitVec 64))) (size!19803 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40508)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!715540 (= res!478679 (not (validKeyInArray!0 (select (arr!19387 a!3591) from!2969))))))

(declare-fun b!715541 () Bool)

(declare-fun res!478686 () Bool)

(assert (=> b!715541 (=> (not res!478686) (not e!401795))))

(declare-fun contains!4024 (List!13481 (_ BitVec 64)) Bool)

(assert (=> b!715541 (= res!478686 (not (contains!4024 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!715542 () Bool)

(declare-fun res!478684 () Bool)

(assert (=> b!715542 (=> (not res!478684) (not e!401795))))

(declare-fun arrayNoDuplicates!0 (array!40508 (_ BitVec 32) List!13481) Bool)

(assert (=> b!715542 (= res!478684 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) acc!652))))

(declare-fun b!715543 () Bool)

(declare-fun res!478674 () Bool)

(assert (=> b!715543 (=> (not res!478674) (not e!401795))))

(declare-fun noDuplicate!1271 (List!13481) Bool)

(assert (=> b!715543 (= res!478674 (noDuplicate!1271 acc!652))))

(declare-fun res!478677 () Bool)

(assert (=> start!63540 (=> (not res!478677) (not e!401795))))

(assert (=> start!63540 (= res!478677 (and (bvslt (size!19803 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19803 a!3591))))))

(assert (=> start!63540 e!401795))

(assert (=> start!63540 true))

(declare-fun array_inv!15161 (array!40508) Bool)

(assert (=> start!63540 (array_inv!15161 a!3591)))

(declare-fun b!715544 () Bool)

(declare-fun res!478676 () Bool)

(assert (=> b!715544 (=> (not res!478676) (not e!401795))))

(assert (=> b!715544 (= res!478676 (not (contains!4024 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!715545 () Bool)

(declare-fun res!478688 () Bool)

(assert (=> b!715545 (=> (not res!478688) (not e!401795))))

(assert (=> b!715545 (= res!478688 (not (contains!4024 acc!652 k0!2824)))))

(declare-fun b!715546 () Bool)

(declare-fun res!478685 () Bool)

(assert (=> b!715546 (=> (not res!478685) (not e!401795))))

(assert (=> b!715546 (= res!478685 (noDuplicate!1271 newAcc!49))))

(declare-fun b!715547 () Bool)

(declare-fun res!478678 () Bool)

(assert (=> b!715547 (=> (not res!478678) (not e!401795))))

(assert (=> b!715547 (= res!478678 (validKeyInArray!0 k0!2824))))

(declare-fun b!715548 () Bool)

(assert (=> b!715548 (= e!401795 (bvsge (bvsub (size!19803 a!3591) (bvadd #b00000000000000000000000000000001 from!2969)) (bvsub (size!19803 a!3591) from!2969)))))

(declare-fun b!715549 () Bool)

(declare-fun res!478687 () Bool)

(assert (=> b!715549 (=> (not res!478687) (not e!401795))))

(declare-fun arrayContainsKey!0 (array!40508 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!715549 (= res!478687 (not (arrayContainsKey!0 a!3591 k0!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!715550 () Bool)

(declare-fun res!478683 () Bool)

(assert (=> b!715550 (=> (not res!478683) (not e!401795))))

(assert (=> b!715550 (= res!478683 (contains!4024 newAcc!49 k0!2824))))

(declare-fun b!715551 () Bool)

(declare-fun res!478680 () Bool)

(assert (=> b!715551 (=> (not res!478680) (not e!401795))))

(assert (=> b!715551 (= res!478680 (not (contains!4024 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!715552 () Bool)

(declare-fun res!478682 () Bool)

(assert (=> b!715552 (=> (not res!478682) (not e!401795))))

(declare-fun subseq!468 (List!13481 List!13481) Bool)

(assert (=> b!715552 (= res!478682 (subseq!468 acc!652 newAcc!49))))

(declare-fun b!715553 () Bool)

(declare-fun res!478681 () Bool)

(assert (=> b!715553 (=> (not res!478681) (not e!401795))))

(assert (=> b!715553 (= res!478681 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!715554 () Bool)

(declare-fun res!478675 () Bool)

(assert (=> b!715554 (=> (not res!478675) (not e!401795))))

(assert (=> b!715554 (= res!478675 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19803 a!3591)))))

(declare-fun b!715555 () Bool)

(declare-fun res!478692 () Bool)

(assert (=> b!715555 (=> (not res!478692) (not e!401795))))

(assert (=> b!715555 (= res!478692 (not (contains!4024 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!715556 () Bool)

(declare-fun res!478691 () Bool)

(assert (=> b!715556 (=> (not res!478691) (not e!401795))))

(assert (=> b!715556 (= res!478691 (not (arrayContainsKey!0 a!3591 k0!2824 from!2969)))))

(assert (= (and start!63540 res!478677) b!715543))

(assert (= (and b!715543 res!478674) b!715546))

(assert (= (and b!715546 res!478685) b!715541))

(assert (= (and b!715541 res!478686) b!715544))

(assert (= (and b!715544 res!478676) b!715556))

(assert (= (and b!715556 res!478691) b!715545))

(assert (= (and b!715545 res!478688) b!715547))

(assert (= (and b!715547 res!478678) b!715553))

(assert (= (and b!715553 res!478681) b!715552))

(assert (= (and b!715552 res!478682) b!715550))

(assert (= (and b!715550 res!478683) b!715538))

(assert (= (and b!715538 res!478690) b!715551))

(assert (= (and b!715551 res!478680) b!715555))

(assert (= (and b!715555 res!478692) b!715554))

(assert (= (and b!715554 res!478675) b!715540))

(assert (= (and b!715540 res!478679) b!715539))

(assert (= (and b!715539 res!478689) b!715549))

(assert (= (and b!715549 res!478687) b!715542))

(assert (= (and b!715542 res!478684) b!715548))

(declare-fun m!671769 () Bool)

(assert (=> b!715545 m!671769))

(declare-fun m!671771 () Bool)

(assert (=> b!715555 m!671771))

(declare-fun m!671773 () Bool)

(assert (=> b!715543 m!671773))

(declare-fun m!671775 () Bool)

(assert (=> b!715549 m!671775))

(declare-fun m!671777 () Bool)

(assert (=> b!715552 m!671777))

(declare-fun m!671779 () Bool)

(assert (=> b!715556 m!671779))

(declare-fun m!671781 () Bool)

(assert (=> b!715544 m!671781))

(declare-fun m!671783 () Bool)

(assert (=> b!715550 m!671783))

(declare-fun m!671785 () Bool)

(assert (=> b!715546 m!671785))

(declare-fun m!671787 () Bool)

(assert (=> b!715541 m!671787))

(declare-fun m!671789 () Bool)

(assert (=> b!715551 m!671789))

(declare-fun m!671791 () Bool)

(assert (=> b!715547 m!671791))

(declare-fun m!671793 () Bool)

(assert (=> start!63540 m!671793))

(declare-fun m!671795 () Bool)

(assert (=> b!715538 m!671795))

(declare-fun m!671797 () Bool)

(assert (=> b!715540 m!671797))

(assert (=> b!715540 m!671797))

(declare-fun m!671799 () Bool)

(assert (=> b!715540 m!671799))

(declare-fun m!671801 () Bool)

(assert (=> b!715542 m!671801))

(declare-fun m!671803 () Bool)

(assert (=> b!715553 m!671803))

(check-sat (not b!715552) (not b!715541) (not b!715538) (not b!715549) (not b!715546) (not b!715555) (not b!715542) (not b!715544) (not b!715540) (not b!715553) (not b!715556) (not b!715547) (not b!715545) (not b!715551) (not b!715543) (not start!63540) (not b!715550))
(check-sat)
