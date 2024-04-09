; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!62648 () Bool)

(assert start!62648)

(declare-fun b!706769 () Bool)

(declare-fun res!470753 () Bool)

(declare-fun e!397924 () Bool)

(assert (=> b!706769 (=> (not res!470753) (not e!397924))))

(declare-datatypes ((array!40283 0))(
  ( (array!40284 (arr!19294 (Array (_ BitVec 32) (_ BitVec 64))) (size!19677 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40283)

(declare-fun from!2969 () (_ BitVec 32))

(declare-datatypes ((List!13388 0))(
  ( (Nil!13385) (Cons!13384 (h!14429 (_ BitVec 64)) (t!19678 List!13388)) )
))
(declare-fun acc!652 () List!13388)

(declare-fun arrayNoDuplicates!0 (array!40283 (_ BitVec 32) List!13388) Bool)

(assert (=> b!706769 (= res!470753 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!706770 () Bool)

(declare-fun res!470755 () Bool)

(assert (=> b!706770 (=> (not res!470755) (not e!397924))))

(declare-fun contains!3931 (List!13388 (_ BitVec 64)) Bool)

(assert (=> b!706770 (= res!470755 (not (contains!3931 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!706771 () Bool)

(declare-fun res!470765 () Bool)

(assert (=> b!706771 (=> (not res!470765) (not e!397924))))

(declare-fun k0!2824 () (_ BitVec 64))

(assert (=> b!706771 (= res!470765 (not (contains!3931 acc!652 k0!2824)))))

(declare-fun b!706772 () Bool)

(declare-fun res!470764 () Bool)

(assert (=> b!706772 (=> (not res!470764) (not e!397924))))

(declare-fun arrayContainsKey!0 (array!40283 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!706772 (= res!470764 (not (arrayContainsKey!0 a!3591 k0!2824 from!2969)))))

(declare-fun b!706773 () Bool)

(declare-fun res!470754 () Bool)

(assert (=> b!706773 (=> (not res!470754) (not e!397924))))

(declare-fun newAcc!49 () List!13388)

(declare-fun noDuplicate!1178 (List!13388) Bool)

(assert (=> b!706773 (= res!470754 (noDuplicate!1178 newAcc!49))))

(declare-fun b!706774 () Bool)

(declare-fun res!470760 () Bool)

(assert (=> b!706774 (=> (not res!470760) (not e!397924))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!706774 (= res!470760 (validKeyInArray!0 k0!2824))))

(declare-fun b!706775 () Bool)

(declare-fun res!470757 () Bool)

(assert (=> b!706775 (=> (not res!470757) (not e!397924))))

(assert (=> b!706775 (= res!470757 (not (contains!3931 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!706776 () Bool)

(declare-fun res!470758 () Bool)

(assert (=> b!706776 (=> (not res!470758) (not e!397924))))

(assert (=> b!706776 (= res!470758 (not (contains!3931 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!470761 () Bool)

(assert (=> start!62648 (=> (not res!470761) (not e!397924))))

(assert (=> start!62648 (= res!470761 (and (bvslt (size!19677 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19677 a!3591))))))

(assert (=> start!62648 e!397924))

(assert (=> start!62648 true))

(declare-fun array_inv!15068 (array!40283) Bool)

(assert (=> start!62648 (array_inv!15068 a!3591)))

(declare-fun b!706777 () Bool)

(declare-fun res!470762 () Bool)

(assert (=> b!706777 (=> (not res!470762) (not e!397924))))

(assert (=> b!706777 (= res!470762 (noDuplicate!1178 acc!652))))

(declare-fun b!706778 () Bool)

(declare-fun res!470756 () Bool)

(assert (=> b!706778 (=> (not res!470756) (not e!397924))))

(declare-fun -!340 (List!13388 (_ BitVec 64)) List!13388)

(assert (=> b!706778 (= res!470756 (= (-!340 newAcc!49 k0!2824) acc!652))))

(declare-fun b!706779 () Bool)

(declare-fun res!470763 () Bool)

(assert (=> b!706779 (=> (not res!470763) (not e!397924))))

(declare-fun subseq!375 (List!13388 List!13388) Bool)

(assert (=> b!706779 (= res!470763 (subseq!375 acc!652 newAcc!49))))

(declare-fun b!706780 () Bool)

(declare-fun res!470759 () Bool)

(assert (=> b!706780 (=> (not res!470759) (not e!397924))))

(assert (=> b!706780 (= res!470759 (contains!3931 newAcc!49 k0!2824))))

(declare-fun b!706781 () Bool)

(assert (=> b!706781 (= e!397924 false)))

(declare-fun lt!317925 () Bool)

(assert (=> b!706781 (= lt!317925 (contains!3931 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!62648 res!470761) b!706777))

(assert (= (and b!706777 res!470762) b!706773))

(assert (= (and b!706773 res!470754) b!706770))

(assert (= (and b!706770 res!470755) b!706776))

(assert (= (and b!706776 res!470758) b!706772))

(assert (= (and b!706772 res!470764) b!706771))

(assert (= (and b!706771 res!470765) b!706774))

(assert (= (and b!706774 res!470760) b!706769))

(assert (= (and b!706769 res!470753) b!706779))

(assert (= (and b!706779 res!470763) b!706780))

(assert (= (and b!706780 res!470759) b!706778))

(assert (= (and b!706778 res!470756) b!706775))

(assert (= (and b!706775 res!470757) b!706781))

(declare-fun m!664567 () Bool)

(assert (=> b!706780 m!664567))

(declare-fun m!664569 () Bool)

(assert (=> b!706781 m!664569))

(declare-fun m!664571 () Bool)

(assert (=> b!706769 m!664571))

(declare-fun m!664573 () Bool)

(assert (=> b!706772 m!664573))

(declare-fun m!664575 () Bool)

(assert (=> b!706771 m!664575))

(declare-fun m!664577 () Bool)

(assert (=> b!706774 m!664577))

(declare-fun m!664579 () Bool)

(assert (=> b!706779 m!664579))

(declare-fun m!664581 () Bool)

(assert (=> b!706773 m!664581))

(declare-fun m!664583 () Bool)

(assert (=> b!706770 m!664583))

(declare-fun m!664585 () Bool)

(assert (=> b!706778 m!664585))

(declare-fun m!664587 () Bool)

(assert (=> b!706777 m!664587))

(declare-fun m!664589 () Bool)

(assert (=> b!706775 m!664589))

(declare-fun m!664591 () Bool)

(assert (=> start!62648 m!664591))

(declare-fun m!664593 () Bool)

(assert (=> b!706776 m!664593))

(check-sat (not b!706771) (not b!706777) (not start!62648) (not b!706776) (not b!706779) (not b!706774) (not b!706773) (not b!706772) (not b!706769) (not b!706775) (not b!706770) (not b!706778) (not b!706781) (not b!706780))
(check-sat)
