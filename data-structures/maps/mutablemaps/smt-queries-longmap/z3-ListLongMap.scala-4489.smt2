; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!62420 () Bool)

(assert start!62420)

(declare-fun b!699743 () Bool)

(declare-fun res!463742 () Bool)

(declare-fun e!397129 () Bool)

(assert (=> b!699743 (=> (not res!463742) (not e!397129))))

(declare-datatypes ((List!13274 0))(
  ( (Nil!13271) (Cons!13270 (h!14315 (_ BitVec 64)) (t!19564 List!13274)) )
))
(declare-fun lt!317379 () List!13274)

(declare-fun contains!3817 (List!13274 (_ BitVec 64)) Bool)

(assert (=> b!699743 (= res!463742 (not (contains!3817 lt!317379 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!699744 () Bool)

(declare-fun res!463746 () Bool)

(declare-fun e!397127 () Bool)

(assert (=> b!699744 (=> (not res!463746) (not e!397127))))

(declare-fun newAcc!49 () List!13274)

(assert (=> b!699744 (= res!463746 (not (contains!3817 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!699745 () Bool)

(declare-fun res!463747 () Bool)

(assert (=> b!699745 (=> (not res!463747) (not e!397129))))

(declare-fun noDuplicate!1064 (List!13274) Bool)

(assert (=> b!699745 (= res!463747 (noDuplicate!1064 lt!317379))))

(declare-fun b!699746 () Bool)

(declare-fun res!463751 () Bool)

(assert (=> b!699746 (=> (not res!463751) (not e!397129))))

(declare-fun k0!2824 () (_ BitVec 64))

(assert (=> b!699746 (= res!463751 (contains!3817 lt!317379 k0!2824))))

(declare-fun b!699747 () Bool)

(declare-fun res!463732 () Bool)

(assert (=> b!699747 (=> (not res!463732) (not e!397129))))

(declare-datatypes ((array!40055 0))(
  ( (array!40056 (arr!19180 (Array (_ BitVec 32) (_ BitVec 64))) (size!19563 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40055)

(declare-fun from!2969 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!40055 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!699747 (= res!463732 (not (arrayContainsKey!0 a!3591 k0!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!699748 () Bool)

(declare-fun res!463733 () Bool)

(assert (=> b!699748 (=> (not res!463733) (not e!397129))))

(declare-fun lt!317378 () List!13274)

(declare-fun arrayNoDuplicates!0 (array!40055 (_ BitVec 32) List!13274) Bool)

(assert (=> b!699748 (= res!463733 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) lt!317378))))

(declare-fun b!699749 () Bool)

(declare-fun res!463734 () Bool)

(assert (=> b!699749 (=> (not res!463734) (not e!397127))))

(declare-fun acc!652 () List!13274)

(assert (=> b!699749 (= res!463734 (not (contains!3817 acc!652 k0!2824)))))

(declare-fun b!699750 () Bool)

(declare-fun res!463735 () Bool)

(assert (=> b!699750 (=> (not res!463735) (not e!397127))))

(declare-fun subseq!261 (List!13274 List!13274) Bool)

(assert (=> b!699750 (= res!463735 (subseq!261 acc!652 newAcc!49))))

(declare-fun b!699751 () Bool)

(declare-fun res!463736 () Bool)

(assert (=> b!699751 (=> (not res!463736) (not e!397127))))

(assert (=> b!699751 (= res!463736 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19563 a!3591)))))

(declare-fun b!699752 () Bool)

(declare-fun res!463752 () Bool)

(assert (=> b!699752 (=> (not res!463752) (not e!397127))))

(assert (=> b!699752 (= res!463752 (not (contains!3817 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!699753 () Bool)

(declare-fun res!463738 () Bool)

(assert (=> b!699753 (=> (not res!463738) (not e!397127))))

(assert (=> b!699753 (= res!463738 (not (arrayContainsKey!0 a!3591 k0!2824 from!2969)))))

(declare-fun b!699755 () Bool)

(declare-fun res!463749 () Bool)

(assert (=> b!699755 (=> (not res!463749) (not e!397127))))

(assert (=> b!699755 (= res!463749 (not (contains!3817 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!699756 () Bool)

(declare-fun res!463745 () Bool)

(assert (=> b!699756 (=> (not res!463745) (not e!397129))))

(assert (=> b!699756 (= res!463745 (subseq!261 lt!317378 lt!317379))))

(declare-fun b!699757 () Bool)

(declare-fun res!463730 () Bool)

(assert (=> b!699757 (=> (not res!463730) (not e!397127))))

(assert (=> b!699757 (= res!463730 (noDuplicate!1064 acc!652))))

(declare-fun b!699758 () Bool)

(declare-fun res!463728 () Bool)

(assert (=> b!699758 (=> (not res!463728) (not e!397129))))

(assert (=> b!699758 (= res!463728 (not (contains!3817 lt!317378 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!699759 () Bool)

(declare-fun res!463741 () Bool)

(assert (=> b!699759 (=> (not res!463741) (not e!397129))))

(declare-fun -!226 (List!13274 (_ BitVec 64)) List!13274)

(assert (=> b!699759 (= res!463741 (= (-!226 lt!317379 k0!2824) lt!317378))))

(declare-fun b!699760 () Bool)

(declare-fun res!463729 () Bool)

(assert (=> b!699760 (=> (not res!463729) (not e!397129))))

(assert (=> b!699760 (= res!463729 (noDuplicate!1064 lt!317378))))

(declare-fun b!699761 () Bool)

(declare-fun res!463744 () Bool)

(assert (=> b!699761 (=> (not res!463744) (not e!397127))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!699761 (= res!463744 (validKeyInArray!0 k0!2824))))

(declare-fun b!699762 () Bool)

(declare-fun res!463731 () Bool)

(assert (=> b!699762 (=> (not res!463731) (not e!397127))))

(assert (=> b!699762 (= res!463731 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!699763 () Bool)

(declare-fun res!463743 () Bool)

(assert (=> b!699763 (=> (not res!463743) (not e!397127))))

(assert (=> b!699763 (= res!463743 (not (contains!3817 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!699764 () Bool)

(declare-fun res!463740 () Bool)

(assert (=> b!699764 (=> (not res!463740) (not e!397127))))

(assert (=> b!699764 (= res!463740 (noDuplicate!1064 newAcc!49))))

(declare-fun b!699765 () Bool)

(declare-fun res!463753 () Bool)

(assert (=> b!699765 (=> (not res!463753) (not e!397129))))

(assert (=> b!699765 (= res!463753 (not (contains!3817 lt!317378 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!699766 () Bool)

(assert (=> b!699766 (= e!397129 false)))

(declare-fun lt!317377 () Bool)

(assert (=> b!699766 (= lt!317377 (contains!3817 lt!317379 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!699767 () Bool)

(assert (=> b!699767 (= e!397127 e!397129)))

(declare-fun res!463750 () Bool)

(assert (=> b!699767 (=> (not res!463750) (not e!397129))))

(assert (=> b!699767 (= res!463750 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!458 (List!13274 (_ BitVec 64)) List!13274)

(assert (=> b!699767 (= lt!317379 ($colon$colon!458 newAcc!49 (select (arr!19180 a!3591) from!2969)))))

(assert (=> b!699767 (= lt!317378 ($colon$colon!458 acc!652 (select (arr!19180 a!3591) from!2969)))))

(declare-fun b!699768 () Bool)

(declare-fun res!463737 () Bool)

(assert (=> b!699768 (=> (not res!463737) (not e!397127))))

(assert (=> b!699768 (= res!463737 (= (-!226 newAcc!49 k0!2824) acc!652))))

(declare-fun res!463748 () Bool)

(assert (=> start!62420 (=> (not res!463748) (not e!397127))))

(assert (=> start!62420 (= res!463748 (and (bvslt (size!19563 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19563 a!3591))))))

(assert (=> start!62420 e!397127))

(assert (=> start!62420 true))

(declare-fun array_inv!14954 (array!40055) Bool)

(assert (=> start!62420 (array_inv!14954 a!3591)))

(declare-fun b!699754 () Bool)

(declare-fun res!463739 () Bool)

(assert (=> b!699754 (=> (not res!463739) (not e!397127))))

(assert (=> b!699754 (= res!463739 (contains!3817 newAcc!49 k0!2824))))

(declare-fun b!699769 () Bool)

(declare-fun res!463727 () Bool)

(assert (=> b!699769 (=> (not res!463727) (not e!397129))))

(assert (=> b!699769 (= res!463727 (not (contains!3817 lt!317378 k0!2824)))))

(declare-fun b!699770 () Bool)

(declare-fun res!463754 () Bool)

(assert (=> b!699770 (=> (not res!463754) (not e!397127))))

(assert (=> b!699770 (= res!463754 (validKeyInArray!0 (select (arr!19180 a!3591) from!2969)))))

(assert (= (and start!62420 res!463748) b!699757))

(assert (= (and b!699757 res!463730) b!699764))

(assert (= (and b!699764 res!463740) b!699763))

(assert (= (and b!699763 res!463743) b!699752))

(assert (= (and b!699752 res!463752) b!699753))

(assert (= (and b!699753 res!463738) b!699749))

(assert (= (and b!699749 res!463734) b!699761))

(assert (= (and b!699761 res!463744) b!699762))

(assert (= (and b!699762 res!463731) b!699750))

(assert (= (and b!699750 res!463735) b!699754))

(assert (= (and b!699754 res!463739) b!699768))

(assert (= (and b!699768 res!463737) b!699755))

(assert (= (and b!699755 res!463749) b!699744))

(assert (= (and b!699744 res!463746) b!699751))

(assert (= (and b!699751 res!463736) b!699770))

(assert (= (and b!699770 res!463754) b!699767))

(assert (= (and b!699767 res!463750) b!699760))

(assert (= (and b!699760 res!463729) b!699745))

(assert (= (and b!699745 res!463747) b!699758))

(assert (= (and b!699758 res!463728) b!699765))

(assert (= (and b!699765 res!463753) b!699747))

(assert (= (and b!699747 res!463732) b!699769))

(assert (= (and b!699769 res!463727) b!699748))

(assert (= (and b!699748 res!463733) b!699756))

(assert (= (and b!699756 res!463745) b!699746))

(assert (= (and b!699746 res!463751) b!699759))

(assert (= (and b!699759 res!463741) b!699743))

(assert (= (and b!699743 res!463742) b!699766))

(declare-fun m!659631 () Bool)

(assert (=> b!699765 m!659631))

(declare-fun m!659633 () Bool)

(assert (=> b!699756 m!659633))

(declare-fun m!659635 () Bool)

(assert (=> b!699762 m!659635))

(declare-fun m!659637 () Bool)

(assert (=> b!699747 m!659637))

(declare-fun m!659639 () Bool)

(assert (=> b!699766 m!659639))

(declare-fun m!659641 () Bool)

(assert (=> b!699753 m!659641))

(declare-fun m!659643 () Bool)

(assert (=> b!699768 m!659643))

(declare-fun m!659645 () Bool)

(assert (=> b!699764 m!659645))

(declare-fun m!659647 () Bool)

(assert (=> b!699757 m!659647))

(declare-fun m!659649 () Bool)

(assert (=> b!699759 m!659649))

(declare-fun m!659651 () Bool)

(assert (=> b!699763 m!659651))

(declare-fun m!659653 () Bool)

(assert (=> b!699745 m!659653))

(declare-fun m!659655 () Bool)

(assert (=> b!699744 m!659655))

(declare-fun m!659657 () Bool)

(assert (=> b!699749 m!659657))

(declare-fun m!659659 () Bool)

(assert (=> b!699767 m!659659))

(assert (=> b!699767 m!659659))

(declare-fun m!659661 () Bool)

(assert (=> b!699767 m!659661))

(assert (=> b!699767 m!659659))

(declare-fun m!659663 () Bool)

(assert (=> b!699767 m!659663))

(declare-fun m!659665 () Bool)

(assert (=> b!699754 m!659665))

(declare-fun m!659667 () Bool)

(assert (=> b!699750 m!659667))

(declare-fun m!659669 () Bool)

(assert (=> b!699746 m!659669))

(declare-fun m!659671 () Bool)

(assert (=> b!699761 m!659671))

(declare-fun m!659673 () Bool)

(assert (=> start!62420 m!659673))

(declare-fun m!659675 () Bool)

(assert (=> b!699760 m!659675))

(declare-fun m!659677 () Bool)

(assert (=> b!699748 m!659677))

(declare-fun m!659679 () Bool)

(assert (=> b!699752 m!659679))

(declare-fun m!659681 () Bool)

(assert (=> b!699743 m!659681))

(declare-fun m!659683 () Bool)

(assert (=> b!699758 m!659683))

(declare-fun m!659685 () Bool)

(assert (=> b!699755 m!659685))

(assert (=> b!699770 m!659659))

(assert (=> b!699770 m!659659))

(declare-fun m!659687 () Bool)

(assert (=> b!699770 m!659687))

(declare-fun m!659689 () Bool)

(assert (=> b!699769 m!659689))

(check-sat (not start!62420) (not b!699768) (not b!699767) (not b!699765) (not b!699756) (not b!699757) (not b!699766) (not b!699764) (not b!699763) (not b!699770) (not b!699747) (not b!699762) (not b!699758) (not b!699753) (not b!699760) (not b!699744) (not b!699755) (not b!699749) (not b!699754) (not b!699743) (not b!699759) (not b!699746) (not b!699748) (not b!699752) (not b!699769) (not b!699745) (not b!699750) (not b!699761))
(check-sat)
