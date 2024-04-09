; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!61566 () Bool)

(assert start!61566)

(declare-fun b!687824 () Bool)

(declare-fun e!391816 () Bool)

(declare-fun e!391820 () Bool)

(assert (=> b!687824 (= e!391816 e!391820)))

(declare-fun res!452783 () Bool)

(assert (=> b!687824 (=> (not res!452783) (not e!391820))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!687824 (= res!452783 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!687825 () Bool)

(declare-fun res!452784 () Bool)

(declare-fun e!391825 () Bool)

(assert (=> b!687825 (=> (not res!452784) (not e!391825))))

(declare-datatypes ((array!39663 0))(
  ( (array!39664 (arr!18999 (Array (_ BitVec 32) (_ BitVec 64))) (size!19380 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39663)

(declare-datatypes ((List!13093 0))(
  ( (Nil!13090) (Cons!13089 (h!14134 (_ BitVec 64)) (t!19365 List!13093)) )
))
(declare-fun acc!681 () List!13093)

(declare-fun arrayNoDuplicates!0 (array!39663 (_ BitVec 32) List!13093) Bool)

(assert (=> b!687825 (= res!452784 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!687826 () Bool)

(declare-fun res!452781 () Bool)

(assert (=> b!687826 (=> (not res!452781) (not e!391825))))

(assert (=> b!687826 (= res!452781 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13090))))

(declare-fun b!687827 () Bool)

(declare-datatypes ((Unit!24232 0))(
  ( (Unit!24233) )
))
(declare-fun e!391824 () Unit!24232)

(declare-fun Unit!24234 () Unit!24232)

(assert (=> b!687827 (= e!391824 Unit!24234)))

(declare-fun b!687828 () Bool)

(declare-fun lt!315554 () Unit!24232)

(assert (=> b!687828 (= e!391824 lt!315554)))

(declare-fun lt!315549 () Unit!24232)

(declare-fun lemmaListSubSeqRefl!0 (List!13093) Unit!24232)

(assert (=> b!687828 (= lt!315549 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun subseq!221 (List!13093 List!13093) Bool)

(assert (=> b!687828 (subseq!221 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39663 List!13093 List!13093 (_ BitVec 32)) Unit!24232)

(declare-fun $colon$colon!385 (List!13093 (_ BitVec 64)) List!13093)

(assert (=> b!687828 (= lt!315554 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!385 acc!681 (select (arr!18999 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!687828 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!687829 () Bool)

(declare-fun e!391818 () Unit!24232)

(declare-fun Unit!24235 () Unit!24232)

(assert (=> b!687829 (= e!391818 Unit!24235)))

(declare-fun b!687830 () Bool)

(declare-fun e!391823 () Bool)

(declare-fun e!391815 () Bool)

(assert (=> b!687830 (= e!391823 e!391815)))

(declare-fun res!452769 () Bool)

(assert (=> b!687830 (=> (not res!452769) (not e!391815))))

(assert (=> b!687830 (= res!452769 (bvsle from!3004 i!1382))))

(declare-fun b!687831 () Bool)

(declare-fun e!391822 () Bool)

(assert (=> b!687831 (= e!391825 (not e!391822))))

(declare-fun res!452770 () Bool)

(assert (=> b!687831 (=> res!452770 e!391822)))

(assert (=> b!687831 (= res!452770 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun lt!315552 () List!13093)

(assert (=> b!687831 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!315552)))

(declare-fun lt!315550 () Unit!24232)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!39663 (_ BitVec 64) (_ BitVec 32) List!13093 List!13093) Unit!24232)

(assert (=> b!687831 (= lt!315550 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004) acc!681 lt!315552))))

(declare-fun -!186 (List!13093 (_ BitVec 64)) List!13093)

(assert (=> b!687831 (= (-!186 lt!315552 k!2843) acc!681)))

(assert (=> b!687831 (= lt!315552 ($colon$colon!385 acc!681 k!2843))))

(declare-fun lt!315555 () Unit!24232)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!13093) Unit!24232)

(assert (=> b!687831 (= lt!315555 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(assert (=> b!687831 (subseq!221 acc!681 acc!681)))

(declare-fun lt!315557 () Unit!24232)

(assert (=> b!687831 (= lt!315557 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!687831 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!315553 () Unit!24232)

(assert (=> b!687831 (= lt!315553 e!391824)))

(declare-fun c!77896 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!687831 (= c!77896 (validKeyInArray!0 (select (arr!18999 a!3626) from!3004)))))

(declare-fun lt!315558 () Unit!24232)

(assert (=> b!687831 (= lt!315558 e!391818)))

(declare-fun c!77897 () Bool)

(declare-fun arrayContainsKey!0 (array!39663 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!687831 (= c!77897 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!687831 (arrayContainsKey!0 (array!39664 (store (arr!18999 a!3626) i!1382 k!2843) (size!19380 a!3626)) k!2843 from!3004)))

(declare-fun b!687832 () Bool)

(declare-fun contains!3636 (List!13093 (_ BitVec 64)) Bool)

(assert (=> b!687832 (= e!391815 (not (contains!3636 acc!681 k!2843)))))

(declare-fun b!687833 () Bool)

(assert (=> b!687833 (= e!391820 (not (contains!3636 lt!315552 k!2843)))))

(declare-fun b!687834 () Bool)

(declare-fun e!391821 () Bool)

(assert (=> b!687834 (= e!391821 (contains!3636 acc!681 k!2843))))

(declare-fun b!687835 () Bool)

(declare-fun res!452780 () Bool)

(assert (=> b!687835 (=> (not res!452780) (not e!391825))))

(declare-fun noDuplicate!883 (List!13093) Bool)

(assert (=> b!687835 (= res!452780 (noDuplicate!883 acc!681))))

(declare-fun b!687836 () Bool)

(declare-fun res!452785 () Bool)

(assert (=> b!687836 (=> res!452785 e!391822)))

(assert (=> b!687836 (= res!452785 (contains!3636 lt!315552 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!687837 () Bool)

(declare-fun res!452778 () Bool)

(assert (=> b!687837 (=> (not res!452778) (not e!391825))))

(assert (=> b!687837 (= res!452778 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19380 a!3626))))))

(declare-fun b!687838 () Bool)

(declare-fun res!452786 () Bool)

(assert (=> b!687838 (=> (not res!452786) (not e!391825))))

(assert (=> b!687838 (= res!452786 (not (contains!3636 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!687839 () Bool)

(declare-fun res!452768 () Bool)

(assert (=> b!687839 (=> (not res!452768) (not e!391825))))

(assert (=> b!687839 (= res!452768 e!391823)))

(declare-fun res!452773 () Bool)

(assert (=> b!687839 (=> res!452773 e!391823)))

(assert (=> b!687839 (= res!452773 e!391821)))

(declare-fun res!452782 () Bool)

(assert (=> b!687839 (=> (not res!452782) (not e!391821))))

(assert (=> b!687839 (= res!452782 (bvsgt from!3004 i!1382))))

(declare-fun b!687840 () Bool)

(declare-fun res!452775 () Bool)

(assert (=> b!687840 (=> res!452775 e!391822)))

(assert (=> b!687840 (= res!452775 (contains!3636 lt!315552 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!687841 () Bool)

(declare-fun res!452774 () Bool)

(assert (=> b!687841 (=> (not res!452774) (not e!391825))))

(assert (=> b!687841 (= res!452774 (validKeyInArray!0 k!2843))))

(declare-fun b!687842 () Bool)

(declare-fun e!391819 () Bool)

(assert (=> b!687842 (= e!391819 (contains!3636 lt!315552 k!2843))))

(declare-fun b!687843 () Bool)

(declare-fun res!452776 () Bool)

(assert (=> b!687843 (=> (not res!452776) (not e!391825))))

(assert (=> b!687843 (= res!452776 (not (contains!3636 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!687844 () Bool)

(declare-fun res!452771 () Bool)

(assert (=> b!687844 (=> (not res!452771) (not e!391825))))

(assert (=> b!687844 (= res!452771 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19380 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!687845 () Bool)

(assert (=> b!687845 (= e!391822 true)))

(declare-fun lt!315556 () Bool)

(assert (=> b!687845 (= lt!315556 e!391816)))

(declare-fun res!452779 () Bool)

(assert (=> b!687845 (=> res!452779 e!391816)))

(assert (=> b!687845 (= res!452779 e!391819)))

(declare-fun res!452766 () Bool)

(assert (=> b!687845 (=> (not res!452766) (not e!391819))))

(assert (=> b!687845 (= res!452766 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!687846 () Bool)

(declare-fun res!452772 () Bool)

(assert (=> b!687846 (=> (not res!452772) (not e!391825))))

(assert (=> b!687846 (= res!452772 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!687847 () Bool)

(declare-fun Unit!24236 () Unit!24232)

(assert (=> b!687847 (= e!391818 Unit!24236)))

(declare-fun lt!315551 () Unit!24232)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39663 (_ BitVec 64) (_ BitVec 32)) Unit!24232)

(assert (=> b!687847 (= lt!315551 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!687847 false))

(declare-fun res!452777 () Bool)

(assert (=> start!61566 (=> (not res!452777) (not e!391825))))

(assert (=> start!61566 (= res!452777 (and (bvslt (size!19380 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19380 a!3626))))))

(assert (=> start!61566 e!391825))

(assert (=> start!61566 true))

(declare-fun array_inv!14773 (array!39663) Bool)

(assert (=> start!61566 (array_inv!14773 a!3626)))

(declare-fun b!687848 () Bool)

(declare-fun res!452767 () Bool)

(assert (=> b!687848 (=> res!452767 e!391822)))

(assert (=> b!687848 (= res!452767 (not (noDuplicate!883 lt!315552)))))

(assert (= (and start!61566 res!452777) b!687835))

(assert (= (and b!687835 res!452780) b!687843))

(assert (= (and b!687843 res!452776) b!687838))

(assert (= (and b!687838 res!452786) b!687839))

(assert (= (and b!687839 res!452782) b!687834))

(assert (= (and b!687839 (not res!452773)) b!687830))

(assert (= (and b!687830 res!452769) b!687832))

(assert (= (and b!687839 res!452768) b!687826))

(assert (= (and b!687826 res!452781) b!687825))

(assert (= (and b!687825 res!452784) b!687837))

(assert (= (and b!687837 res!452778) b!687841))

(assert (= (and b!687841 res!452774) b!687846))

(assert (= (and b!687846 res!452772) b!687844))

(assert (= (and b!687844 res!452771) b!687831))

(assert (= (and b!687831 c!77897) b!687847))

(assert (= (and b!687831 (not c!77897)) b!687829))

(assert (= (and b!687831 c!77896) b!687828))

(assert (= (and b!687831 (not c!77896)) b!687827))

(assert (= (and b!687831 (not res!452770)) b!687848))

(assert (= (and b!687848 (not res!452767)) b!687836))

(assert (= (and b!687836 (not res!452785)) b!687840))

(assert (= (and b!687840 (not res!452775)) b!687845))

(assert (= (and b!687845 res!452766) b!687842))

(assert (= (and b!687845 (not res!452779)) b!687824))

(assert (= (and b!687824 res!452783) b!687833))

(declare-fun m!651879 () Bool)

(assert (=> b!687831 m!651879))

(declare-fun m!651881 () Bool)

(assert (=> b!687831 m!651881))

(declare-fun m!651883 () Bool)

(assert (=> b!687831 m!651883))

(declare-fun m!651885 () Bool)

(assert (=> b!687831 m!651885))

(declare-fun m!651887 () Bool)

(assert (=> b!687831 m!651887))

(declare-fun m!651889 () Bool)

(assert (=> b!687831 m!651889))

(declare-fun m!651891 () Bool)

(assert (=> b!687831 m!651891))

(declare-fun m!651893 () Bool)

(assert (=> b!687831 m!651893))

(declare-fun m!651895 () Bool)

(assert (=> b!687831 m!651895))

(assert (=> b!687831 m!651881))

(declare-fun m!651897 () Bool)

(assert (=> b!687831 m!651897))

(declare-fun m!651899 () Bool)

(assert (=> b!687831 m!651899))

(declare-fun m!651901 () Bool)

(assert (=> b!687831 m!651901))

(declare-fun m!651903 () Bool)

(assert (=> b!687831 m!651903))

(declare-fun m!651905 () Bool)

(assert (=> b!687825 m!651905))

(declare-fun m!651907 () Bool)

(assert (=> b!687833 m!651907))

(declare-fun m!651909 () Bool)

(assert (=> b!687835 m!651909))

(declare-fun m!651911 () Bool)

(assert (=> b!687847 m!651911))

(declare-fun m!651913 () Bool)

(assert (=> b!687832 m!651913))

(declare-fun m!651915 () Bool)

(assert (=> b!687826 m!651915))

(assert (=> b!687842 m!651907))

(assert (=> b!687834 m!651913))

(declare-fun m!651917 () Bool)

(assert (=> b!687848 m!651917))

(assert (=> b!687828 m!651879))

(assert (=> b!687828 m!651881))

(declare-fun m!651919 () Bool)

(assert (=> b!687828 m!651919))

(declare-fun m!651921 () Bool)

(assert (=> b!687828 m!651921))

(assert (=> b!687828 m!651881))

(assert (=> b!687828 m!651919))

(assert (=> b!687828 m!651889))

(assert (=> b!687828 m!651903))

(declare-fun m!651923 () Bool)

(assert (=> b!687840 m!651923))

(declare-fun m!651925 () Bool)

(assert (=> b!687838 m!651925))

(declare-fun m!651927 () Bool)

(assert (=> b!687843 m!651927))

(declare-fun m!651929 () Bool)

(assert (=> start!61566 m!651929))

(declare-fun m!651931 () Bool)

(assert (=> b!687836 m!651931))

(declare-fun m!651933 () Bool)

(assert (=> b!687846 m!651933))

(declare-fun m!651935 () Bool)

(assert (=> b!687841 m!651935))

(push 1)

(assert (not b!687831))

(assert (not b!687826))

(assert (not b!687843))

(assert (not b!687838))

(assert (not b!687848))

(assert (not b!687832))

(assert (not b!687840))

(assert (not b!687828))

(assert (not b!687841))

(assert (not b!687835))

(assert (not start!61566))

(assert (not b!687836))

(assert (not b!687842))

(assert (not b!687833))

(assert (not b!687846))

(assert (not b!687825))

(assert (not b!687847))

(assert (not b!687834))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

