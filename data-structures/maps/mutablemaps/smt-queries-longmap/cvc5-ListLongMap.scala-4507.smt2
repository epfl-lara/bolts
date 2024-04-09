; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62526 () Bool)

(assert start!62526)

(declare-fun b!703761 () Bool)

(declare-fun res!467747 () Bool)

(declare-fun e!397557 () Bool)

(assert (=> b!703761 (=> (not res!467747) (not e!397557))))

(declare-datatypes ((List!13327 0))(
  ( (Nil!13324) (Cons!13323 (h!14368 (_ BitVec 64)) (t!19617 List!13327)) )
))
(declare-fun acc!652 () List!13327)

(declare-fun noDuplicate!1117 (List!13327) Bool)

(assert (=> b!703761 (= res!467747 (noDuplicate!1117 acc!652))))

(declare-fun b!703762 () Bool)

(declare-fun res!467762 () Bool)

(assert (=> b!703762 (=> (not res!467762) (not e!397557))))

(declare-fun from!2969 () (_ BitVec 32))

(declare-datatypes ((array!40161 0))(
  ( (array!40162 (arr!19233 (Array (_ BitVec 32) (_ BitVec 64))) (size!19616 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40161)

(assert (=> b!703762 (= res!467762 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19616 a!3591)))))

(declare-fun b!703763 () Bool)

(declare-fun res!467750 () Bool)

(assert (=> b!703763 (=> (not res!467750) (not e!397557))))

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!703763 (= res!467750 (validKeyInArray!0 k!2824))))

(declare-fun b!703764 () Bool)

(declare-fun res!467748 () Bool)

(assert (=> b!703764 (=> (not res!467748) (not e!397557))))

(declare-fun newAcc!49 () List!13327)

(declare-fun -!279 (List!13327 (_ BitVec 64)) List!13327)

(assert (=> b!703764 (= res!467748 (= (-!279 newAcc!49 k!2824) acc!652))))

(declare-fun b!703765 () Bool)

(declare-fun res!467751 () Bool)

(assert (=> b!703765 (=> (not res!467751) (not e!397557))))

(declare-fun contains!3870 (List!13327 (_ BitVec 64)) Bool)

(assert (=> b!703765 (= res!467751 (not (contains!3870 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!703766 () Bool)

(declare-fun res!467759 () Bool)

(assert (=> b!703766 (=> (not res!467759) (not e!397557))))

(declare-fun subseq!314 (List!13327 List!13327) Bool)

(assert (=> b!703766 (= res!467759 (subseq!314 acc!652 newAcc!49))))

(declare-fun b!703767 () Bool)

(declare-fun res!467745 () Bool)

(assert (=> b!703767 (=> (not res!467745) (not e!397557))))

(assert (=> b!703767 (= res!467745 (not (contains!3870 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!703768 () Bool)

(declare-fun res!467756 () Bool)

(assert (=> b!703768 (=> (not res!467756) (not e!397557))))

(assert (=> b!703768 (= res!467756 (contains!3870 newAcc!49 k!2824))))

(declare-fun b!703770 () Bool)

(declare-fun res!467746 () Bool)

(assert (=> b!703770 (=> (not res!467746) (not e!397557))))

(declare-fun arrayContainsKey!0 (array!40161 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!703770 (= res!467746 (not (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!703771 () Bool)

(declare-fun res!467753 () Bool)

(assert (=> b!703771 (=> (not res!467753) (not e!397557))))

(declare-fun arrayNoDuplicates!0 (array!40161 (_ BitVec 32) List!13327) Bool)

(assert (=> b!703771 (= res!467753 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!703772 () Bool)

(assert (=> b!703772 (= e!397557 false)))

(declare-fun lt!317760 () Bool)

(assert (=> b!703772 (= lt!317760 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) acc!652))))

(declare-fun b!703773 () Bool)

(declare-fun res!467754 () Bool)

(assert (=> b!703773 (=> (not res!467754) (not e!397557))))

(assert (=> b!703773 (= res!467754 (noDuplicate!1117 newAcc!49))))

(declare-fun b!703774 () Bool)

(declare-fun res!467758 () Bool)

(assert (=> b!703774 (=> (not res!467758) (not e!397557))))

(assert (=> b!703774 (= res!467758 (not (contains!3870 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!703775 () Bool)

(declare-fun res!467755 () Bool)

(assert (=> b!703775 (=> (not res!467755) (not e!397557))))

(assert (=> b!703775 (= res!467755 (not (validKeyInArray!0 (select (arr!19233 a!3591) from!2969))))))

(declare-fun b!703776 () Bool)

(declare-fun res!467749 () Bool)

(assert (=> b!703776 (=> (not res!467749) (not e!397557))))

(assert (=> b!703776 (= res!467749 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!703777 () Bool)

(declare-fun res!467760 () Bool)

(assert (=> b!703777 (=> (not res!467760) (not e!397557))))

(assert (=> b!703777 (= res!467760 (not (contains!3870 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!703778 () Bool)

(declare-fun res!467752 () Bool)

(assert (=> b!703778 (=> (not res!467752) (not e!397557))))

(assert (=> b!703778 (= res!467752 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun res!467757 () Bool)

(assert (=> start!62526 (=> (not res!467757) (not e!397557))))

(assert (=> start!62526 (= res!467757 (and (bvslt (size!19616 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19616 a!3591))))))

(assert (=> start!62526 e!397557))

(assert (=> start!62526 true))

(declare-fun array_inv!15007 (array!40161) Bool)

(assert (=> start!62526 (array_inv!15007 a!3591)))

(declare-fun b!703769 () Bool)

(declare-fun res!467761 () Bool)

(assert (=> b!703769 (=> (not res!467761) (not e!397557))))

(assert (=> b!703769 (= res!467761 (not (contains!3870 acc!652 k!2824)))))

(assert (= (and start!62526 res!467757) b!703761))

(assert (= (and b!703761 res!467747) b!703773))

(assert (= (and b!703773 res!467754) b!703767))

(assert (= (and b!703767 res!467745) b!703774))

(assert (= (and b!703774 res!467758) b!703776))

(assert (= (and b!703776 res!467749) b!703769))

(assert (= (and b!703769 res!467761) b!703763))

(assert (= (and b!703763 res!467750) b!703771))

(assert (= (and b!703771 res!467753) b!703766))

(assert (= (and b!703766 res!467759) b!703768))

(assert (= (and b!703768 res!467756) b!703764))

(assert (= (and b!703764 res!467748) b!703777))

(assert (= (and b!703777 res!467760) b!703765))

(assert (= (and b!703765 res!467751) b!703762))

(assert (= (and b!703762 res!467762) b!703775))

(assert (= (and b!703775 res!467755) b!703778))

(assert (= (and b!703778 res!467752) b!703770))

(assert (= (and b!703770 res!467746) b!703772))

(declare-fun m!662499 () Bool)

(assert (=> b!703767 m!662499))

(declare-fun m!662501 () Bool)

(assert (=> b!703774 m!662501))

(declare-fun m!662503 () Bool)

(assert (=> b!703775 m!662503))

(assert (=> b!703775 m!662503))

(declare-fun m!662505 () Bool)

(assert (=> b!703775 m!662505))

(declare-fun m!662507 () Bool)

(assert (=> b!703769 m!662507))

(declare-fun m!662509 () Bool)

(assert (=> b!703764 m!662509))

(declare-fun m!662511 () Bool)

(assert (=> b!703770 m!662511))

(declare-fun m!662513 () Bool)

(assert (=> b!703763 m!662513))

(declare-fun m!662515 () Bool)

(assert (=> b!703771 m!662515))

(declare-fun m!662517 () Bool)

(assert (=> start!62526 m!662517))

(declare-fun m!662519 () Bool)

(assert (=> b!703765 m!662519))

(declare-fun m!662521 () Bool)

(assert (=> b!703777 m!662521))

(declare-fun m!662523 () Bool)

(assert (=> b!703773 m!662523))

(declare-fun m!662525 () Bool)

(assert (=> b!703766 m!662525))

(declare-fun m!662527 () Bool)

(assert (=> b!703761 m!662527))

(declare-fun m!662529 () Bool)

(assert (=> b!703776 m!662529))

(declare-fun m!662531 () Bool)

(assert (=> b!703768 m!662531))

(declare-fun m!662533 () Bool)

(assert (=> b!703772 m!662533))

(push 1)

(assert (not b!703768))

(assert (not b!703766))

(assert (not b!703764))

(assert (not start!62526))

(assert (not b!703763))

(assert (not b!703776))

(assert (not b!703767))

(assert (not b!703773))

(assert (not b!703761))

(assert (not b!703777))

(assert (not b!703775))

(assert (not b!703774))

(assert (not b!703765))

(assert (not b!703771))

(assert (not b!703769))

(assert (not b!703770))

(assert (not b!703772))

(check-sat)

(pop 1)

