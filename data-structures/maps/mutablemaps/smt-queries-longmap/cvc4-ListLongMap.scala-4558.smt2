; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!63542 () Bool)

(assert start!63542)

(declare-fun b!715595 () Bool)

(declare-fun res!478744 () Bool)

(declare-fun e!401802 () Bool)

(assert (=> b!715595 (=> (not res!478744) (not e!401802))))

(declare-fun from!2969 () (_ BitVec 32))

(declare-datatypes ((array!40510 0))(
  ( (array!40511 (arr!19388 (Array (_ BitVec 32) (_ BitVec 64))) (size!19804 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40510)

(assert (=> b!715595 (= res!478744 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19804 a!3591)))))

(declare-fun b!715596 () Bool)

(declare-fun res!478734 () Bool)

(assert (=> b!715596 (=> (not res!478734) (not e!401802))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!715596 (= res!478734 (not (validKeyInArray!0 (select (arr!19388 a!3591) from!2969))))))

(declare-fun b!715597 () Bool)

(declare-fun res!478739 () Bool)

(assert (=> b!715597 (=> (not res!478739) (not e!401802))))

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!40510 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!715597 (= res!478739 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!715598 () Bool)

(declare-fun res!478740 () Bool)

(assert (=> b!715598 (=> (not res!478740) (not e!401802))))

(declare-datatypes ((List!13482 0))(
  ( (Nil!13479) (Cons!13478 (h!14523 (_ BitVec 64)) (t!19805 List!13482)) )
))
(declare-fun newAcc!49 () List!13482)

(declare-fun contains!4025 (List!13482 (_ BitVec 64)) Bool)

(assert (=> b!715598 (= res!478740 (not (contains!4025 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!715599 () Bool)

(assert (=> b!715599 (= e!401802 (bvsge (bvsub (size!19804 a!3591) (bvadd #b00000000000000000000000000000001 from!2969)) (bvsub (size!19804 a!3591) from!2969)))))

(declare-fun b!715600 () Bool)

(declare-fun res!478731 () Bool)

(assert (=> b!715600 (=> (not res!478731) (not e!401802))))

(declare-fun acc!652 () List!13482)

(declare-fun subseq!469 (List!13482 List!13482) Bool)

(assert (=> b!715600 (= res!478731 (subseq!469 acc!652 newAcc!49))))

(declare-fun b!715601 () Bool)

(declare-fun res!478735 () Bool)

(assert (=> b!715601 (=> (not res!478735) (not e!401802))))

(assert (=> b!715601 (= res!478735 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun b!715602 () Bool)

(declare-fun res!478748 () Bool)

(assert (=> b!715602 (=> (not res!478748) (not e!401802))))

(assert (=> b!715602 (= res!478748 (not (contains!4025 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!715603 () Bool)

(declare-fun res!478737 () Bool)

(assert (=> b!715603 (=> (not res!478737) (not e!401802))))

(declare-fun arrayNoDuplicates!0 (array!40510 (_ BitVec 32) List!13482) Bool)

(assert (=> b!715603 (= res!478737 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) acc!652))))

(declare-fun b!715604 () Bool)

(declare-fun res!478741 () Bool)

(assert (=> b!715604 (=> (not res!478741) (not e!401802))))

(assert (=> b!715604 (= res!478741 (not (contains!4025 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!715605 () Bool)

(declare-fun res!478747 () Bool)

(assert (=> b!715605 (=> (not res!478747) (not e!401802))))

(assert (=> b!715605 (= res!478747 (contains!4025 newAcc!49 k!2824))))

(declare-fun res!478733 () Bool)

(assert (=> start!63542 (=> (not res!478733) (not e!401802))))

(assert (=> start!63542 (= res!478733 (and (bvslt (size!19804 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19804 a!3591))))))

(assert (=> start!63542 e!401802))

(assert (=> start!63542 true))

(declare-fun array_inv!15162 (array!40510) Bool)

(assert (=> start!63542 (array_inv!15162 a!3591)))

(declare-fun b!715606 () Bool)

(declare-fun res!478749 () Bool)

(assert (=> b!715606 (=> (not res!478749) (not e!401802))))

(assert (=> b!715606 (= res!478749 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!715607 () Bool)

(declare-fun res!478736 () Bool)

(assert (=> b!715607 (=> (not res!478736) (not e!401802))))

(declare-fun noDuplicate!1272 (List!13482) Bool)

(assert (=> b!715607 (= res!478736 (noDuplicate!1272 acc!652))))

(declare-fun b!715608 () Bool)

(declare-fun res!478738 () Bool)

(assert (=> b!715608 (=> (not res!478738) (not e!401802))))

(declare-fun -!434 (List!13482 (_ BitVec 64)) List!13482)

(assert (=> b!715608 (= res!478738 (= (-!434 newAcc!49 k!2824) acc!652))))

(declare-fun b!715609 () Bool)

(declare-fun res!478743 () Bool)

(assert (=> b!715609 (=> (not res!478743) (not e!401802))))

(assert (=> b!715609 (= res!478743 (not (contains!4025 acc!652 k!2824)))))

(declare-fun b!715610 () Bool)

(declare-fun res!478742 () Bool)

(assert (=> b!715610 (=> (not res!478742) (not e!401802))))

(assert (=> b!715610 (= res!478742 (noDuplicate!1272 newAcc!49))))

(declare-fun b!715611 () Bool)

(declare-fun res!478746 () Bool)

(assert (=> b!715611 (=> (not res!478746) (not e!401802))))

(assert (=> b!715611 (= res!478746 (validKeyInArray!0 k!2824))))

(declare-fun b!715612 () Bool)

(declare-fun res!478732 () Bool)

(assert (=> b!715612 (=> (not res!478732) (not e!401802))))

(assert (=> b!715612 (= res!478732 (not (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!715613 () Bool)

(declare-fun res!478745 () Bool)

(assert (=> b!715613 (=> (not res!478745) (not e!401802))))

(assert (=> b!715613 (= res!478745 (not (contains!4025 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!63542 res!478733) b!715607))

(assert (= (and b!715607 res!478736) b!715610))

(assert (= (and b!715610 res!478742) b!715604))

(assert (= (and b!715604 res!478741) b!715613))

(assert (= (and b!715613 res!478745) b!715597))

(assert (= (and b!715597 res!478739) b!715609))

(assert (= (and b!715609 res!478743) b!715611))

(assert (= (and b!715611 res!478746) b!715606))

(assert (= (and b!715606 res!478749) b!715600))

(assert (= (and b!715600 res!478731) b!715605))

(assert (= (and b!715605 res!478747) b!715608))

(assert (= (and b!715608 res!478738) b!715602))

(assert (= (and b!715602 res!478748) b!715598))

(assert (= (and b!715598 res!478740) b!715595))

(assert (= (and b!715595 res!478744) b!715596))

(assert (= (and b!715596 res!478734) b!715601))

(assert (= (and b!715601 res!478735) b!715612))

(assert (= (and b!715612 res!478732) b!715603))

(assert (= (and b!715603 res!478737) b!715599))

(declare-fun m!671805 () Bool)

(assert (=> b!715613 m!671805))

(declare-fun m!671807 () Bool)

(assert (=> b!715598 m!671807))

(declare-fun m!671809 () Bool)

(assert (=> b!715611 m!671809))

(declare-fun m!671811 () Bool)

(assert (=> b!715600 m!671811))

(declare-fun m!671813 () Bool)

(assert (=> start!63542 m!671813))

(declare-fun m!671815 () Bool)

(assert (=> b!715610 m!671815))

(declare-fun m!671817 () Bool)

(assert (=> b!715604 m!671817))

(declare-fun m!671819 () Bool)

(assert (=> b!715607 m!671819))

(declare-fun m!671821 () Bool)

(assert (=> b!715608 m!671821))

(declare-fun m!671823 () Bool)

(assert (=> b!715609 m!671823))

(declare-fun m!671825 () Bool)

(assert (=> b!715612 m!671825))

(declare-fun m!671827 () Bool)

(assert (=> b!715605 m!671827))

(declare-fun m!671829 () Bool)

(assert (=> b!715602 m!671829))

(declare-fun m!671831 () Bool)

(assert (=> b!715606 m!671831))

(declare-fun m!671833 () Bool)

(assert (=> b!715596 m!671833))

(assert (=> b!715596 m!671833))

(declare-fun m!671835 () Bool)

(assert (=> b!715596 m!671835))

(declare-fun m!671837 () Bool)

(assert (=> b!715603 m!671837))

(declare-fun m!671839 () Bool)

(assert (=> b!715597 m!671839))

(push 1)

(assert (not b!715596))

(assert (not b!715612))

(assert (not b!715606))

(assert (not b!715610))

(assert (not b!715603))

(assert (not b!715602))

(assert (not start!63542))

(assert (not b!715611))

(assert (not b!715598))

(assert (not b!715597))

(assert (not b!715600))

(assert (not b!715604))

(assert (not b!715609))

(assert (not b!715613))

(assert (not b!715607))

(assert (not b!715608))

(assert (not b!715605))

(check-sat)

(pop 1)

(push 1)

(check-sat)

