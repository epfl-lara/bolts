; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!59882 () Bool)

(assert start!59882)

(declare-fun b!661823 () Bool)

(declare-datatypes ((Unit!22970 0))(
  ( (Unit!22971) )
))
(declare-fun e!380043 () Unit!22970)

(declare-fun Unit!22972 () Unit!22970)

(assert (=> b!661823 (= e!380043 Unit!22972)))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun lt!308845 () Unit!22970)

(declare-fun k0!2843 () (_ BitVec 64))

(declare-datatypes ((array!38885 0))(
  ( (array!38886 (arr!18631 (Array (_ BitVec 32) (_ BitVec 64))) (size!18995 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38885)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38885 (_ BitVec 64) (_ BitVec 32)) Unit!22970)

(assert (=> b!661823 (= lt!308845 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(assert (=> b!661823 false))

(declare-fun b!661824 () Bool)

(declare-fun res!430043 () Bool)

(declare-fun e!380040 () Bool)

(assert (=> b!661824 (=> (not res!430043) (not e!380040))))

(declare-datatypes ((List!12725 0))(
  ( (Nil!12722) (Cons!12721 (h!13766 (_ BitVec 64)) (t!18961 List!12725)) )
))
(declare-fun acc!681 () List!12725)

(declare-fun contains!3268 (List!12725 (_ BitVec 64)) Bool)

(assert (=> b!661824 (= res!430043 (not (contains!3268 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!661825 () Bool)

(declare-fun res!430035 () Bool)

(assert (=> b!661825 (=> (not res!430035) (not e!380040))))

(declare-fun e!380045 () Bool)

(assert (=> b!661825 (= res!430035 e!380045)))

(declare-fun res!430044 () Bool)

(assert (=> b!661825 (=> res!430044 e!380045)))

(declare-fun e!380042 () Bool)

(assert (=> b!661825 (= res!430044 e!380042)))

(declare-fun res!430050 () Bool)

(assert (=> b!661825 (=> (not res!430050) (not e!380042))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!661825 (= res!430050 (bvsgt from!3004 i!1382))))

(declare-fun b!661826 () Bool)

(declare-fun res!430049 () Bool)

(declare-fun e!380044 () Bool)

(assert (=> b!661826 (=> res!430049 e!380044)))

(declare-fun lt!308844 () List!12725)

(assert (=> b!661826 (= res!430049 (contains!3268 lt!308844 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!661827 () Bool)

(declare-fun res!430048 () Bool)

(assert (=> b!661827 (=> (not res!430048) (not e!380040))))

(assert (=> b!661827 (= res!430048 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!18995 a!3626))))))

(declare-fun res!430041 () Bool)

(assert (=> start!59882 (=> (not res!430041) (not e!380040))))

(assert (=> start!59882 (= res!430041 (and (bvslt (size!18995 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!18995 a!3626))))))

(assert (=> start!59882 e!380040))

(assert (=> start!59882 true))

(declare-fun array_inv!14405 (array!38885) Bool)

(assert (=> start!59882 (array_inv!14405 a!3626)))

(declare-fun b!661828 () Bool)

(declare-fun res!430051 () Bool)

(assert (=> b!661828 (=> (not res!430051) (not e!380040))))

(declare-fun noDuplicate!515 (List!12725) Bool)

(assert (=> b!661828 (= res!430051 (noDuplicate!515 acc!681))))

(declare-fun b!661829 () Bool)

(declare-fun Unit!22973 () Unit!22970)

(assert (=> b!661829 (= e!380043 Unit!22973)))

(declare-fun b!661830 () Bool)

(declare-fun res!430036 () Bool)

(assert (=> b!661830 (=> (not res!430036) (not e!380040))))

(assert (=> b!661830 (= res!430036 (not (contains!3268 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!661831 () Bool)

(declare-fun e!380041 () Bool)

(assert (=> b!661831 (= e!380040 (not e!380041))))

(declare-fun res!430042 () Bool)

(assert (=> b!661831 (=> res!430042 e!380041)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!661831 (= res!430042 (not (validKeyInArray!0 (select (arr!18631 a!3626) from!3004))))))

(declare-fun lt!308846 () Unit!22970)

(assert (=> b!661831 (= lt!308846 e!380043)))

(declare-fun c!76262 () Bool)

(declare-fun arrayContainsKey!0 (array!38885 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!661831 (= c!76262 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!661831 (arrayContainsKey!0 (array!38886 (store (arr!18631 a!3626) i!1382 k0!2843) (size!18995 a!3626)) k0!2843 from!3004)))

(declare-fun b!661832 () Bool)

(declare-fun res!430047 () Bool)

(assert (=> b!661832 (=> (not res!430047) (not e!380040))))

(assert (=> b!661832 (= res!430047 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!18995 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!661833 () Bool)

(declare-fun res!430033 () Bool)

(assert (=> b!661833 (=> (not res!430033) (not e!380040))))

(assert (=> b!661833 (= res!430033 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!661834 () Bool)

(assert (=> b!661834 (= e!380041 e!380044)))

(declare-fun res!430045 () Bool)

(assert (=> b!661834 (=> res!430045 e!380044)))

(assert (=> b!661834 (= res!430045 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!137 (List!12725 (_ BitVec 64)) List!12725)

(assert (=> b!661834 (= lt!308844 ($colon$colon!137 acc!681 (select (arr!18631 a!3626) from!3004)))))

(declare-fun subseq!6 (List!12725 List!12725) Bool)

(assert (=> b!661834 (subseq!6 acc!681 acc!681)))

(declare-fun lt!308842 () Unit!22970)

(declare-fun lemmaListSubSeqRefl!0 (List!12725) Unit!22970)

(assert (=> b!661834 (= lt!308842 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun b!661835 () Bool)

(assert (=> b!661835 (= e!380042 (contains!3268 acc!681 k0!2843))))

(declare-fun b!661836 () Bool)

(declare-fun res!430038 () Bool)

(assert (=> b!661836 (=> (not res!430038) (not e!380040))))

(declare-fun arrayNoDuplicates!0 (array!38885 (_ BitVec 32) List!12725) Bool)

(assert (=> b!661836 (= res!430038 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12722))))

(declare-fun b!661837 () Bool)

(declare-fun e!380047 () Bool)

(assert (=> b!661837 (= e!380045 e!380047)))

(declare-fun res!430052 () Bool)

(assert (=> b!661837 (=> (not res!430052) (not e!380047))))

(assert (=> b!661837 (= res!430052 (bvsle from!3004 i!1382))))

(declare-fun b!661838 () Bool)

(assert (=> b!661838 (= e!380044 true)))

(declare-fun lt!308847 () Bool)

(assert (=> b!661838 (= lt!308847 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!308844))))

(declare-fun lt!308843 () Unit!22970)

(declare-fun noDuplicateSubseq!6 (List!12725 List!12725) Unit!22970)

(assert (=> b!661838 (= lt!308843 (noDuplicateSubseq!6 acc!681 lt!308844))))

(declare-fun b!661839 () Bool)

(declare-fun res!430039 () Bool)

(assert (=> b!661839 (=> (not res!430039) (not e!380040))))

(assert (=> b!661839 (= res!430039 (validKeyInArray!0 k0!2843))))

(declare-fun b!661840 () Bool)

(declare-fun res!430046 () Bool)

(assert (=> b!661840 (=> res!430046 e!380044)))

(assert (=> b!661840 (= res!430046 (not (subseq!6 acc!681 lt!308844)))))

(declare-fun b!661841 () Bool)

(declare-fun res!430034 () Bool)

(assert (=> b!661841 (=> res!430034 e!380044)))

(assert (=> b!661841 (= res!430034 (not (noDuplicate!515 lt!308844)))))

(declare-fun b!661842 () Bool)

(assert (=> b!661842 (= e!380047 (not (contains!3268 acc!681 k0!2843)))))

(declare-fun b!661843 () Bool)

(declare-fun res!430037 () Bool)

(assert (=> b!661843 (=> (not res!430037) (not e!380040))))

(assert (=> b!661843 (= res!430037 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!661844 () Bool)

(declare-fun res!430040 () Bool)

(assert (=> b!661844 (=> res!430040 e!380044)))

(assert (=> b!661844 (= res!430040 (contains!3268 lt!308844 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!59882 res!430041) b!661828))

(assert (= (and b!661828 res!430051) b!661824))

(assert (= (and b!661824 res!430043) b!661830))

(assert (= (and b!661830 res!430036) b!661825))

(assert (= (and b!661825 res!430050) b!661835))

(assert (= (and b!661825 (not res!430044)) b!661837))

(assert (= (and b!661837 res!430052) b!661842))

(assert (= (and b!661825 res!430035) b!661836))

(assert (= (and b!661836 res!430038) b!661843))

(assert (= (and b!661843 res!430037) b!661827))

(assert (= (and b!661827 res!430048) b!661839))

(assert (= (and b!661839 res!430039) b!661833))

(assert (= (and b!661833 res!430033) b!661832))

(assert (= (and b!661832 res!430047) b!661831))

(assert (= (and b!661831 c!76262) b!661823))

(assert (= (and b!661831 (not c!76262)) b!661829))

(assert (= (and b!661831 (not res!430042)) b!661834))

(assert (= (and b!661834 (not res!430045)) b!661841))

(assert (= (and b!661841 (not res!430034)) b!661826))

(assert (= (and b!661826 (not res!430049)) b!661844))

(assert (= (and b!661844 (not res!430040)) b!661840))

(assert (= (and b!661840 (not res!430046)) b!661838))

(declare-fun m!633843 () Bool)

(assert (=> b!661830 m!633843))

(declare-fun m!633845 () Bool)

(assert (=> b!661823 m!633845))

(declare-fun m!633847 () Bool)

(assert (=> b!661844 m!633847))

(declare-fun m!633849 () Bool)

(assert (=> b!661842 m!633849))

(declare-fun m!633851 () Bool)

(assert (=> b!661839 m!633851))

(declare-fun m!633853 () Bool)

(assert (=> b!661843 m!633853))

(declare-fun m!633855 () Bool)

(assert (=> b!661833 m!633855))

(declare-fun m!633857 () Bool)

(assert (=> b!661826 m!633857))

(declare-fun m!633859 () Bool)

(assert (=> b!661836 m!633859))

(declare-fun m!633861 () Bool)

(assert (=> b!661831 m!633861))

(declare-fun m!633863 () Bool)

(assert (=> b!661831 m!633863))

(declare-fun m!633865 () Bool)

(assert (=> b!661831 m!633865))

(assert (=> b!661831 m!633861))

(declare-fun m!633867 () Bool)

(assert (=> b!661831 m!633867))

(declare-fun m!633869 () Bool)

(assert (=> b!661831 m!633869))

(declare-fun m!633871 () Bool)

(assert (=> start!59882 m!633871))

(declare-fun m!633873 () Bool)

(assert (=> b!661840 m!633873))

(declare-fun m!633875 () Bool)

(assert (=> b!661838 m!633875))

(declare-fun m!633877 () Bool)

(assert (=> b!661838 m!633877))

(assert (=> b!661835 m!633849))

(declare-fun m!633879 () Bool)

(assert (=> b!661824 m!633879))

(declare-fun m!633881 () Bool)

(assert (=> b!661841 m!633881))

(declare-fun m!633883 () Bool)

(assert (=> b!661828 m!633883))

(assert (=> b!661834 m!633861))

(assert (=> b!661834 m!633861))

(declare-fun m!633885 () Bool)

(assert (=> b!661834 m!633885))

(declare-fun m!633887 () Bool)

(assert (=> b!661834 m!633887))

(declare-fun m!633889 () Bool)

(assert (=> b!661834 m!633889))

(check-sat (not b!661838) (not b!661835) (not b!661831) (not b!661830) (not b!661839) (not b!661824) (not b!661833) (not b!661836) (not b!661841) (not b!661826) (not b!661842) (not b!661843) (not start!59882) (not b!661834) (not b!661844) (not b!661828) (not b!661840) (not b!661823))
(check-sat)
