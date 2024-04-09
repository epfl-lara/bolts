; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60108 () Bool)

(assert start!60108)

(declare-fun b!669820 () Bool)

(declare-fun res!436802 () Bool)

(declare-fun e!383046 () Bool)

(assert (=> b!669820 (=> (not res!436802) (not e!383046))))

(declare-datatypes ((List!12838 0))(
  ( (Nil!12835) (Cons!12834 (h!13879 (_ BitVec 64)) (t!19074 List!12838)) )
))
(declare-fun acc!681 () List!12838)

(declare-fun noDuplicate!628 (List!12838) Bool)

(assert (=> b!669820 (= res!436802 (noDuplicate!628 acc!681))))

(declare-fun res!436806 () Bool)

(assert (=> start!60108 (=> (not res!436806) (not e!383046))))

(declare-datatypes ((array!39111 0))(
  ( (array!39112 (arr!18744 (Array (_ BitVec 32) (_ BitVec 64))) (size!19108 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39111)

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> start!60108 (= res!436806 (and (bvslt (size!19108 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19108 a!3626))))))

(assert (=> start!60108 e!383046))

(assert (=> start!60108 true))

(declare-fun array_inv!14518 (array!39111) Bool)

(assert (=> start!60108 (array_inv!14518 a!3626)))

(declare-fun b!669821 () Bool)

(declare-fun res!436793 () Bool)

(assert (=> b!669821 (=> (not res!436793) (not e!383046))))

(declare-fun contains!3381 (List!12838 (_ BitVec 64)) Bool)

(assert (=> b!669821 (= res!436793 (not (contains!3381 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!669822 () Bool)

(declare-fun res!436794 () Bool)

(assert (=> b!669822 (=> (not res!436794) (not e!383046))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!669822 (= res!436794 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19108 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!669823 () Bool)

(declare-fun res!436796 () Bool)

(assert (=> b!669823 (=> (not res!436796) (not e!383046))))

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!669823 (= res!436796 (validKeyInArray!0 k!2843))))

(declare-fun b!669824 () Bool)

(declare-datatypes ((Unit!23515 0))(
  ( (Unit!23516) )
))
(declare-fun e!383041 () Unit!23515)

(declare-fun Unit!23517 () Unit!23515)

(assert (=> b!669824 (= e!383041 Unit!23517)))

(declare-fun b!669825 () Bool)

(declare-fun e!383044 () Bool)

(assert (=> b!669825 (= e!383046 (not e!383044))))

(declare-fun res!436799 () Bool)

(assert (=> b!669825 (=> res!436799 e!383044)))

(assert (=> b!669825 (= res!436799 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun lt!311806 () List!12838)

(declare-fun arrayNoDuplicates!0 (array!39111 (_ BitVec 32) List!12838) Bool)

(assert (=> b!669825 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!311806)))

(declare-fun lt!311808 () Unit!23515)

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!39111 (_ BitVec 64) (_ BitVec 32) List!12838 List!12838) Unit!23515)

(assert (=> b!669825 (= lt!311808 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004) acc!681 lt!311806))))

(declare-fun -!117 (List!12838 (_ BitVec 64)) List!12838)

(assert (=> b!669825 (= (-!117 lt!311806 k!2843) acc!681)))

(declare-fun $colon$colon!250 (List!12838 (_ BitVec 64)) List!12838)

(assert (=> b!669825 (= lt!311806 ($colon$colon!250 acc!681 k!2843))))

(declare-fun lt!311810 () Unit!23515)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!12838) Unit!23515)

(assert (=> b!669825 (= lt!311810 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(declare-fun subseq!119 (List!12838 List!12838) Bool)

(assert (=> b!669825 (subseq!119 acc!681 acc!681)))

(declare-fun lt!311807 () Unit!23515)

(declare-fun lemmaListSubSeqRefl!0 (List!12838) Unit!23515)

(assert (=> b!669825 (= lt!311807 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!669825 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!311814 () Unit!23515)

(assert (=> b!669825 (= lt!311814 e!383041)))

(declare-fun c!76882 () Bool)

(assert (=> b!669825 (= c!76882 (validKeyInArray!0 (select (arr!18744 a!3626) from!3004)))))

(declare-fun lt!311811 () Unit!23515)

(declare-fun e!383040 () Unit!23515)

(assert (=> b!669825 (= lt!311811 e!383040)))

(declare-fun c!76883 () Bool)

(declare-fun arrayContainsKey!0 (array!39111 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!669825 (= c!76883 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(declare-fun lt!311805 () array!39111)

(assert (=> b!669825 (arrayContainsKey!0 lt!311805 k!2843 from!3004)))

(assert (=> b!669825 (= lt!311805 (array!39112 (store (arr!18744 a!3626) i!1382 k!2843) (size!19108 a!3626)))))

(declare-fun b!669826 () Bool)

(declare-fun res!436803 () Bool)

(assert (=> b!669826 (=> (not res!436803) (not e!383046))))

(assert (=> b!669826 (= res!436803 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12835))))

(declare-fun b!669827 () Bool)

(declare-fun res!436801 () Bool)

(assert (=> b!669827 (=> res!436801 e!383044)))

(assert (=> b!669827 (= res!436801 (not (noDuplicate!628 lt!311806)))))

(declare-fun b!669828 () Bool)

(declare-fun e!383039 () Bool)

(assert (=> b!669828 (= e!383039 (contains!3381 lt!311806 k!2843))))

(declare-fun b!669829 () Bool)

(declare-fun res!436808 () Bool)

(assert (=> b!669829 (=> res!436808 e!383044)))

(assert (=> b!669829 (= res!436808 (contains!3381 lt!311806 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!669830 () Bool)

(declare-fun res!436792 () Bool)

(assert (=> b!669830 (=> (not res!436792) (not e!383046))))

(declare-fun e!383038 () Bool)

(assert (=> b!669830 (= res!436792 e!383038)))

(declare-fun res!436811 () Bool)

(assert (=> b!669830 (=> res!436811 e!383038)))

(declare-fun e!383047 () Bool)

(assert (=> b!669830 (= res!436811 e!383047)))

(declare-fun res!436797 () Bool)

(assert (=> b!669830 (=> (not res!436797) (not e!383047))))

(assert (=> b!669830 (= res!436797 (bvsgt from!3004 i!1382))))

(declare-fun b!669831 () Bool)

(declare-fun e!383037 () Bool)

(assert (=> b!669831 (= e!383037 (not (contains!3381 lt!311806 k!2843)))))

(declare-fun b!669832 () Bool)

(declare-fun res!436804 () Bool)

(assert (=> b!669832 (=> (not res!436804) (not e!383046))))

(assert (=> b!669832 (= res!436804 (not (contains!3381 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!669833 () Bool)

(declare-fun e!383043 () Bool)

(assert (=> b!669833 (= e!383043 (not (contains!3381 acc!681 k!2843)))))

(declare-fun b!669834 () Bool)

(declare-fun res!436807 () Bool)

(assert (=> b!669834 (=> (not res!436807) (not e!383046))))

(assert (=> b!669834 (= res!436807 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!669835 () Bool)

(assert (=> b!669835 (= e!383047 (contains!3381 acc!681 k!2843))))

(declare-fun b!669836 () Bool)

(declare-fun res!436791 () Bool)

(assert (=> b!669836 (=> (not res!436791) (not e!383046))))

(assert (=> b!669836 (= res!436791 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19108 a!3626))))))

(declare-fun b!669837 () Bool)

(declare-fun res!436798 () Bool)

(assert (=> b!669837 (=> (not res!436798) (not e!383046))))

(assert (=> b!669837 (= res!436798 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!669838 () Bool)

(declare-fun res!436809 () Bool)

(assert (=> b!669838 (=> res!436809 e!383044)))

(declare-fun e!383045 () Bool)

(assert (=> b!669838 (= res!436809 e!383045)))

(declare-fun res!436800 () Bool)

(assert (=> b!669838 (=> (not res!436800) (not e!383045))))

(assert (=> b!669838 (= res!436800 e!383037)))

(declare-fun res!436810 () Bool)

(assert (=> b!669838 (=> res!436810 e!383037)))

(assert (=> b!669838 (= res!436810 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!669839 () Bool)

(declare-fun Unit!23518 () Unit!23515)

(assert (=> b!669839 (= e!383040 Unit!23518)))

(declare-fun b!669840 () Bool)

(assert (=> b!669840 (= e!383045 e!383039)))

(declare-fun res!436790 () Bool)

(assert (=> b!669840 (=> res!436790 e!383039)))

(assert (=> b!669840 (= res!436790 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!669841 () Bool)

(assert (=> b!669841 (= e!383038 e!383043)))

(declare-fun res!436805 () Bool)

(assert (=> b!669841 (=> (not res!436805) (not e!383043))))

(assert (=> b!669841 (= res!436805 (bvsle from!3004 i!1382))))

(declare-fun b!669842 () Bool)

(declare-fun Unit!23519 () Unit!23515)

(assert (=> b!669842 (= e!383040 Unit!23519)))

(declare-fun lt!311813 () Unit!23515)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39111 (_ BitVec 64) (_ BitVec 32)) Unit!23515)

(assert (=> b!669842 (= lt!311813 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!669842 false))

(declare-fun b!669843 () Bool)

(declare-fun lt!311804 () Unit!23515)

(assert (=> b!669843 (= e!383041 lt!311804)))

(declare-fun lt!311812 () Unit!23515)

(assert (=> b!669843 (= lt!311812 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!669843 (subseq!119 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39111 List!12838 List!12838 (_ BitVec 32)) Unit!23515)

(assert (=> b!669843 (= lt!311804 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!250 acc!681 (select (arr!18744 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!669843 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!669844 () Bool)

(assert (=> b!669844 (= e!383044 true)))

(assert (=> b!669844 (arrayNoDuplicates!0 lt!311805 (bvadd #b00000000000000000000000000000001 from!3004) lt!311806)))

(declare-fun lt!311809 () Unit!23515)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!39111 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12838) Unit!23515)

(assert (=> b!669844 (= lt!311809 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3626 k!2843 i!1382 (bvadd #b00000000000000000000000000000001 from!3004) lt!311806))))

(declare-fun b!669845 () Bool)

(declare-fun res!436795 () Bool)

(assert (=> b!669845 (=> res!436795 e!383044)))

(assert (=> b!669845 (= res!436795 (contains!3381 lt!311806 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!60108 res!436806) b!669820))

(assert (= (and b!669820 res!436802) b!669832))

(assert (= (and b!669832 res!436804) b!669821))

(assert (= (and b!669821 res!436793) b!669830))

(assert (= (and b!669830 res!436797) b!669835))

(assert (= (and b!669830 (not res!436811)) b!669841))

(assert (= (and b!669841 res!436805) b!669833))

(assert (= (and b!669830 res!436792) b!669826))

(assert (= (and b!669826 res!436803) b!669837))

(assert (= (and b!669837 res!436798) b!669836))

(assert (= (and b!669836 res!436791) b!669823))

(assert (= (and b!669823 res!436796) b!669834))

(assert (= (and b!669834 res!436807) b!669822))

(assert (= (and b!669822 res!436794) b!669825))

(assert (= (and b!669825 c!76883) b!669842))

(assert (= (and b!669825 (not c!76883)) b!669839))

(assert (= (and b!669825 c!76882) b!669843))

(assert (= (and b!669825 (not c!76882)) b!669824))

(assert (= (and b!669825 (not res!436799)) b!669827))

(assert (= (and b!669827 (not res!436801)) b!669829))

(assert (= (and b!669829 (not res!436808)) b!669845))

(assert (= (and b!669845 (not res!436795)) b!669838))

(assert (= (and b!669838 (not res!436810)) b!669831))

(assert (= (and b!669838 res!436800) b!669840))

(assert (= (and b!669840 (not res!436790)) b!669828))

(assert (= (and b!669838 (not res!436809)) b!669844))

(declare-fun m!639855 () Bool)

(assert (=> b!669829 m!639855))

(declare-fun m!639857 () Bool)

(assert (=> b!669832 m!639857))

(declare-fun m!639859 () Bool)

(assert (=> b!669835 m!639859))

(declare-fun m!639861 () Bool)

(assert (=> b!669834 m!639861))

(declare-fun m!639863 () Bool)

(assert (=> b!669837 m!639863))

(declare-fun m!639865 () Bool)

(assert (=> b!669820 m!639865))

(declare-fun m!639867 () Bool)

(assert (=> b!669823 m!639867))

(declare-fun m!639869 () Bool)

(assert (=> b!669845 m!639869))

(declare-fun m!639871 () Bool)

(assert (=> b!669825 m!639871))

(declare-fun m!639873 () Bool)

(assert (=> b!669825 m!639873))

(declare-fun m!639875 () Bool)

(assert (=> b!669825 m!639875))

(declare-fun m!639877 () Bool)

(assert (=> b!669825 m!639877))

(declare-fun m!639879 () Bool)

(assert (=> b!669825 m!639879))

(declare-fun m!639881 () Bool)

(assert (=> b!669825 m!639881))

(assert (=> b!669825 m!639873))

(declare-fun m!639883 () Bool)

(assert (=> b!669825 m!639883))

(declare-fun m!639885 () Bool)

(assert (=> b!669825 m!639885))

(declare-fun m!639887 () Bool)

(assert (=> b!669825 m!639887))

(declare-fun m!639889 () Bool)

(assert (=> b!669825 m!639889))

(declare-fun m!639891 () Bool)

(assert (=> b!669825 m!639891))

(declare-fun m!639893 () Bool)

(assert (=> b!669825 m!639893))

(declare-fun m!639895 () Bool)

(assert (=> b!669825 m!639895))

(declare-fun m!639897 () Bool)

(assert (=> start!60108 m!639897))

(declare-fun m!639899 () Bool)

(assert (=> b!669821 m!639899))

(assert (=> b!669843 m!639871))

(assert (=> b!669843 m!639873))

(declare-fun m!639901 () Bool)

(assert (=> b!669843 m!639901))

(declare-fun m!639903 () Bool)

(assert (=> b!669843 m!639903))

(assert (=> b!669843 m!639873))

(assert (=> b!669843 m!639901))

(assert (=> b!669843 m!639895))

(assert (=> b!669843 m!639885))

(declare-fun m!639905 () Bool)

(assert (=> b!669844 m!639905))

(declare-fun m!639907 () Bool)

(assert (=> b!669844 m!639907))

(declare-fun m!639909 () Bool)

(assert (=> b!669827 m!639909))

(assert (=> b!669833 m!639859))

(declare-fun m!639911 () Bool)

(assert (=> b!669842 m!639911))

(declare-fun m!639913 () Bool)

(assert (=> b!669826 m!639913))

(declare-fun m!639915 () Bool)

(assert (=> b!669831 m!639915))

(assert (=> b!669828 m!639915))

(push 1)

(assert (not b!669827))

(assert (not b!669826))

(assert (not b!669844))

(assert (not b!669835))

(assert (not b!669833))

(assert (not b!669834))

(assert (not b!669845))

(assert (not b!669842))

(assert (not b!669828))

(assert (not b!669829))

(assert (not b!669821))

(assert (not b!669825))

(assert (not b!669823))

(assert (not start!60108))

(assert (not b!669831))

(assert (not b!669837))

(assert (not b!669832))

(assert (not b!669820))

(assert (not b!669843))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

