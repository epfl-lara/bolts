; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60106 () Bool)

(assert start!60106)

(declare-fun b!669742 () Bool)

(declare-fun res!436735 () Bool)

(declare-fun e!383004 () Bool)

(assert (=> b!669742 (=> (not res!436735) (not e!383004))))

(declare-fun i!1382 () (_ BitVec 32))

(declare-datatypes ((array!39109 0))(
  ( (array!39110 (arr!18743 (Array (_ BitVec 32) (_ BitVec 64))) (size!19107 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39109)

(assert (=> b!669742 (= res!436735 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19107 a!3626))))))

(declare-fun b!669743 () Bool)

(declare-datatypes ((Unit!23510 0))(
  ( (Unit!23511) )
))
(declare-fun e!383005 () Unit!23510)

(declare-fun Unit!23512 () Unit!23510)

(assert (=> b!669743 (= e!383005 Unit!23512)))

(declare-fun b!669744 () Bool)

(declare-fun res!436730 () Bool)

(assert (=> b!669744 (=> (not res!436730) (not e!383004))))

(declare-datatypes ((List!12837 0))(
  ( (Nil!12834) (Cons!12833 (h!13878 (_ BitVec 64)) (t!19073 List!12837)) )
))
(declare-fun acc!681 () List!12837)

(declare-fun contains!3380 (List!12837 (_ BitVec 64)) Bool)

(assert (=> b!669744 (= res!436730 (not (contains!3380 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!669745 () Bool)

(declare-fun e!383013 () Bool)

(assert (=> b!669745 (= e!383004 (not e!383013))))

(declare-fun res!436729 () Bool)

(assert (=> b!669745 (=> res!436729 e!383013)))

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!669745 (= res!436729 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun lt!311773 () List!12837)

(declare-fun arrayNoDuplicates!0 (array!39109 (_ BitVec 32) List!12837) Bool)

(assert (=> b!669745 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!311773)))

(declare-fun lt!311781 () Unit!23510)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!39109 (_ BitVec 64) (_ BitVec 32) List!12837 List!12837) Unit!23510)

(assert (=> b!669745 (= lt!311781 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004) acc!681 lt!311773))))

(declare-fun -!116 (List!12837 (_ BitVec 64)) List!12837)

(assert (=> b!669745 (= (-!116 lt!311773 k!2843) acc!681)))

(declare-fun $colon$colon!249 (List!12837 (_ BitVec 64)) List!12837)

(assert (=> b!669745 (= lt!311773 ($colon$colon!249 acc!681 k!2843))))

(declare-fun lt!311771 () Unit!23510)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!12837) Unit!23510)

(assert (=> b!669745 (= lt!311771 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(declare-fun subseq!118 (List!12837 List!12837) Bool)

(assert (=> b!669745 (subseq!118 acc!681 acc!681)))

(declare-fun lt!311779 () Unit!23510)

(declare-fun lemmaListSubSeqRefl!0 (List!12837) Unit!23510)

(assert (=> b!669745 (= lt!311779 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!669745 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!311778 () Unit!23510)

(declare-fun e!383006 () Unit!23510)

(assert (=> b!669745 (= lt!311778 e!383006)))

(declare-fun c!76877 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!669745 (= c!76877 (validKeyInArray!0 (select (arr!18743 a!3626) from!3004)))))

(declare-fun lt!311772 () Unit!23510)

(assert (=> b!669745 (= lt!311772 e!383005)))

(declare-fun c!76876 () Bool)

(declare-fun arrayContainsKey!0 (array!39109 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!669745 (= c!76876 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(declare-fun lt!311776 () array!39109)

(assert (=> b!669745 (arrayContainsKey!0 lt!311776 k!2843 from!3004)))

(assert (=> b!669745 (= lt!311776 (array!39110 (store (arr!18743 a!3626) i!1382 k!2843) (size!19107 a!3626)))))

(declare-fun b!669746 () Bool)

(declare-fun e!383010 () Bool)

(assert (=> b!669746 (= e!383010 (not (contains!3380 acc!681 k!2843)))))

(declare-fun b!669747 () Bool)

(declare-fun res!436737 () Bool)

(assert (=> b!669747 (=> (not res!436737) (not e!383004))))

(declare-fun noDuplicate!627 (List!12837) Bool)

(assert (=> b!669747 (= res!436737 (noDuplicate!627 acc!681))))

(declare-fun b!669748 () Bool)

(declare-fun res!436734 () Bool)

(assert (=> b!669748 (=> (not res!436734) (not e!383004))))

(assert (=> b!669748 (= res!436734 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!669749 () Bool)

(declare-fun res!436733 () Bool)

(assert (=> b!669749 (=> res!436733 e!383013)))

(declare-fun e!383014 () Bool)

(assert (=> b!669749 (= res!436733 e!383014)))

(declare-fun res!436741 () Bool)

(assert (=> b!669749 (=> (not res!436741) (not e!383014))))

(declare-fun e!383009 () Bool)

(assert (=> b!669749 (= res!436741 e!383009)))

(declare-fun res!436731 () Bool)

(assert (=> b!669749 (=> res!436731 e!383009)))

(assert (=> b!669749 (= res!436731 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!669750 () Bool)

(declare-fun e!383008 () Bool)

(assert (=> b!669750 (= e!383008 (contains!3380 acc!681 k!2843))))

(declare-fun b!669751 () Bool)

(declare-fun lt!311774 () Unit!23510)

(assert (=> b!669751 (= e!383006 lt!311774)))

(declare-fun lt!311777 () Unit!23510)

(assert (=> b!669751 (= lt!311777 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!669751 (subseq!118 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39109 List!12837 List!12837 (_ BitVec 32)) Unit!23510)

(assert (=> b!669751 (= lt!311774 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!249 acc!681 (select (arr!18743 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!669751 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!669752 () Bool)

(declare-fun res!436745 () Bool)

(assert (=> b!669752 (=> (not res!436745) (not e!383004))))

(assert (=> b!669752 (= res!436745 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!669753 () Bool)

(declare-fun Unit!23513 () Unit!23510)

(assert (=> b!669753 (= e!383006 Unit!23513)))

(declare-fun b!669754 () Bool)

(declare-fun res!436727 () Bool)

(assert (=> b!669754 (=> (not res!436727) (not e!383004))))

(assert (=> b!669754 (= res!436727 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12834))))

(declare-fun b!669755 () Bool)

(declare-fun Unit!23514 () Unit!23510)

(assert (=> b!669755 (= e!383005 Unit!23514)))

(declare-fun lt!311775 () Unit!23510)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39109 (_ BitVec 64) (_ BitVec 32)) Unit!23510)

(assert (=> b!669755 (= lt!311775 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!669755 false))

(declare-fun b!669756 () Bool)

(declare-fun res!436725 () Bool)

(assert (=> b!669756 (=> res!436725 e!383013)))

(assert (=> b!669756 (= res!436725 (contains!3380 lt!311773 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!669757 () Bool)

(declare-fun res!436736 () Bool)

(assert (=> b!669757 (=> (not res!436736) (not e!383004))))

(assert (=> b!669757 (= res!436736 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19107 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!669758 () Bool)

(declare-fun e!383012 () Bool)

(assert (=> b!669758 (= e!383012 e!383010)))

(declare-fun res!436744 () Bool)

(assert (=> b!669758 (=> (not res!436744) (not e!383010))))

(assert (=> b!669758 (= res!436744 (bvsle from!3004 i!1382))))

(declare-fun b!669759 () Bool)

(declare-fun res!436743 () Bool)

(assert (=> b!669759 (=> res!436743 e!383013)))

(assert (=> b!669759 (= res!436743 (not (noDuplicate!627 lt!311773)))))

(declare-fun b!669760 () Bool)

(declare-fun e!383011 () Bool)

(assert (=> b!669760 (= e!383011 (contains!3380 lt!311773 k!2843))))

(declare-fun b!669761 () Bool)

(assert (=> b!669761 (= e!383014 e!383011)))

(declare-fun res!436732 () Bool)

(assert (=> b!669761 (=> res!436732 e!383011)))

(assert (=> b!669761 (= res!436732 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!669762 () Bool)

(declare-fun res!436742 () Bool)

(assert (=> b!669762 (=> (not res!436742) (not e!383004))))

(assert (=> b!669762 (= res!436742 e!383012)))

(declare-fun res!436726 () Bool)

(assert (=> b!669762 (=> res!436726 e!383012)))

(assert (=> b!669762 (= res!436726 e!383008)))

(declare-fun res!436740 () Bool)

(assert (=> b!669762 (=> (not res!436740) (not e!383008))))

(assert (=> b!669762 (= res!436740 (bvsgt from!3004 i!1382))))

(declare-fun b!669763 () Bool)

(assert (=> b!669763 (= e!383009 (not (contains!3380 lt!311773 k!2843)))))

(declare-fun b!669764 () Bool)

(declare-fun res!436739 () Bool)

(assert (=> b!669764 (=> (not res!436739) (not e!383004))))

(assert (=> b!669764 (= res!436739 (validKeyInArray!0 k!2843))))

(declare-fun b!669765 () Bool)

(assert (=> b!669765 (= e!383013 (bvsle from!3004 (size!19107 a!3626)))))

(assert (=> b!669765 (arrayNoDuplicates!0 lt!311776 (bvadd #b00000000000000000000000000000001 from!3004) lt!311773)))

(declare-fun lt!311780 () Unit!23510)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!39109 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12837) Unit!23510)

(assert (=> b!669765 (= lt!311780 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3626 k!2843 i!1382 (bvadd #b00000000000000000000000000000001 from!3004) lt!311773))))

(declare-fun res!436738 () Bool)

(assert (=> start!60106 (=> (not res!436738) (not e!383004))))

(assert (=> start!60106 (= res!436738 (and (bvslt (size!19107 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19107 a!3626))))))

(assert (=> start!60106 e!383004))

(assert (=> start!60106 true))

(declare-fun array_inv!14517 (array!39109) Bool)

(assert (=> start!60106 (array_inv!14517 a!3626)))

(declare-fun b!669766 () Bool)

(declare-fun res!436728 () Bool)

(assert (=> b!669766 (=> (not res!436728) (not e!383004))))

(assert (=> b!669766 (= res!436728 (not (contains!3380 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!669767 () Bool)

(declare-fun res!436724 () Bool)

(assert (=> b!669767 (=> res!436724 e!383013)))

(assert (=> b!669767 (= res!436724 (contains!3380 lt!311773 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!60106 res!436738) b!669747))

(assert (= (and b!669747 res!436737) b!669766))

(assert (= (and b!669766 res!436728) b!669744))

(assert (= (and b!669744 res!436730) b!669762))

(assert (= (and b!669762 res!436740) b!669750))

(assert (= (and b!669762 (not res!436726)) b!669758))

(assert (= (and b!669758 res!436744) b!669746))

(assert (= (and b!669762 res!436742) b!669754))

(assert (= (and b!669754 res!436727) b!669752))

(assert (= (and b!669752 res!436745) b!669742))

(assert (= (and b!669742 res!436735) b!669764))

(assert (= (and b!669764 res!436739) b!669748))

(assert (= (and b!669748 res!436734) b!669757))

(assert (= (and b!669757 res!436736) b!669745))

(assert (= (and b!669745 c!76876) b!669755))

(assert (= (and b!669745 (not c!76876)) b!669743))

(assert (= (and b!669745 c!76877) b!669751))

(assert (= (and b!669745 (not c!76877)) b!669753))

(assert (= (and b!669745 (not res!436729)) b!669759))

(assert (= (and b!669759 (not res!436743)) b!669756))

(assert (= (and b!669756 (not res!436725)) b!669767))

(assert (= (and b!669767 (not res!436724)) b!669749))

(assert (= (and b!669749 (not res!436731)) b!669763))

(assert (= (and b!669749 res!436741) b!669761))

(assert (= (and b!669761 (not res!436732)) b!669760))

(assert (= (and b!669749 (not res!436733)) b!669765))

(declare-fun m!639793 () Bool)

(assert (=> b!669752 m!639793))

(declare-fun m!639795 () Bool)

(assert (=> b!669755 m!639795))

(declare-fun m!639797 () Bool)

(assert (=> b!669744 m!639797))

(declare-fun m!639799 () Bool)

(assert (=> b!669754 m!639799))

(declare-fun m!639801 () Bool)

(assert (=> b!669759 m!639801))

(declare-fun m!639803 () Bool)

(assert (=> b!669751 m!639803))

(declare-fun m!639805 () Bool)

(assert (=> b!669751 m!639805))

(declare-fun m!639807 () Bool)

(assert (=> b!669751 m!639807))

(declare-fun m!639809 () Bool)

(assert (=> b!669751 m!639809))

(assert (=> b!669751 m!639805))

(assert (=> b!669751 m!639807))

(declare-fun m!639811 () Bool)

(assert (=> b!669751 m!639811))

(declare-fun m!639813 () Bool)

(assert (=> b!669751 m!639813))

(declare-fun m!639815 () Bool)

(assert (=> b!669760 m!639815))

(declare-fun m!639817 () Bool)

(assert (=> b!669750 m!639817))

(assert (=> b!669745 m!639803))

(assert (=> b!669745 m!639805))

(declare-fun m!639819 () Bool)

(assert (=> b!669745 m!639819))

(declare-fun m!639821 () Bool)

(assert (=> b!669745 m!639821))

(declare-fun m!639823 () Bool)

(assert (=> b!669745 m!639823))

(declare-fun m!639825 () Bool)

(assert (=> b!669745 m!639825))

(declare-fun m!639827 () Bool)

(assert (=> b!669745 m!639827))

(assert (=> b!669745 m!639811))

(declare-fun m!639829 () Bool)

(assert (=> b!669745 m!639829))

(assert (=> b!669745 m!639805))

(declare-fun m!639831 () Bool)

(assert (=> b!669745 m!639831))

(assert (=> b!669745 m!639813))

(declare-fun m!639833 () Bool)

(assert (=> b!669745 m!639833))

(declare-fun m!639835 () Bool)

(assert (=> b!669745 m!639835))

(declare-fun m!639837 () Bool)

(assert (=> b!669747 m!639837))

(declare-fun m!639839 () Bool)

(assert (=> b!669767 m!639839))

(assert (=> b!669746 m!639817))

(declare-fun m!639841 () Bool)

(assert (=> b!669765 m!639841))

(declare-fun m!639843 () Bool)

(assert (=> b!669765 m!639843))

(declare-fun m!639845 () Bool)

(assert (=> start!60106 m!639845))

(declare-fun m!639847 () Bool)

(assert (=> b!669756 m!639847))

(declare-fun m!639849 () Bool)

(assert (=> b!669748 m!639849))

(assert (=> b!669763 m!639815))

(declare-fun m!639851 () Bool)

(assert (=> b!669764 m!639851))

(declare-fun m!639853 () Bool)

(assert (=> b!669766 m!639853))

(push 1)

(assert (not b!669764))

(assert (not b!669751))

(assert (not b!669756))

(assert (not b!669746))

(assert (not b!669745))

(assert (not b!669763))

(assert (not start!60106))

(assert (not b!669754))

(assert (not b!669767))

(assert (not b!669744))

(assert (not b!669747))

(assert (not b!669748))

(assert (not b!669755))

(assert (not b!669760))

(assert (not b!669765))

(assert (not b!669750))

(assert (not b!669752))

(assert (not b!669766))

(assert (not b!669759))

(check-sat)

(pop 1)

(push 1)

(check-sat)

