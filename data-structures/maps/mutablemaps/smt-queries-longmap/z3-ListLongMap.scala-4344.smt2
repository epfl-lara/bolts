; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!60110 () Bool)

(assert start!60110)

(declare-fun b!669898 () Bool)

(declare-fun res!436870 () Bool)

(declare-fun e!383080 () Bool)

(assert (=> b!669898 (=> (not res!436870) (not e!383080))))

(declare-datatypes ((List!12839 0))(
  ( (Nil!12836) (Cons!12835 (h!13880 (_ BitVec 64)) (t!19075 List!12839)) )
))
(declare-fun acc!681 () List!12839)

(declare-fun contains!3382 (List!12839 (_ BitVec 64)) Bool)

(assert (=> b!669898 (= res!436870 (not (contains!3382 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!669899 () Bool)

(declare-fun res!436873 () Bool)

(assert (=> b!669899 (=> (not res!436873) (not e!383080))))

(declare-fun i!1382 () (_ BitVec 32))

(declare-datatypes ((array!39113 0))(
  ( (array!39114 (arr!18745 (Array (_ BitVec 32) (_ BitVec 64))) (size!19109 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39113)

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!669899 (= res!436873 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19109 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!669900 () Bool)

(declare-fun res!436865 () Bool)

(assert (=> b!669900 (=> (not res!436865) (not e!383080))))

(declare-fun arrayNoDuplicates!0 (array!39113 (_ BitVec 32) List!12839) Bool)

(assert (=> b!669900 (= res!436865 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!669902 () Bool)

(declare-fun e!383077 () Bool)

(declare-fun lt!311847 () List!12839)

(declare-fun k0!2843 () (_ BitVec 64))

(assert (=> b!669902 (= e!383077 (not (contains!3382 lt!311847 k0!2843)))))

(declare-fun b!669903 () Bool)

(declare-fun res!436861 () Bool)

(assert (=> b!669903 (=> (not res!436861) (not e!383080))))

(declare-fun e!383076 () Bool)

(assert (=> b!669903 (= res!436861 e!383076)))

(declare-fun res!436863 () Bool)

(assert (=> b!669903 (=> res!436863 e!383076)))

(declare-fun e!383079 () Bool)

(assert (=> b!669903 (= res!436863 e!383079)))

(declare-fun res!436871 () Bool)

(assert (=> b!669903 (=> (not res!436871) (not e!383079))))

(assert (=> b!669903 (= res!436871 (bvsgt from!3004 i!1382))))

(declare-fun b!669904 () Bool)

(declare-datatypes ((Unit!23520 0))(
  ( (Unit!23521) )
))
(declare-fun e!383074 () Unit!23520)

(declare-fun Unit!23522 () Unit!23520)

(assert (=> b!669904 (= e!383074 Unit!23522)))

(declare-fun b!669905 () Bool)

(declare-fun res!436874 () Bool)

(assert (=> b!669905 (=> (not res!436874) (not e!383080))))

(assert (=> b!669905 (= res!436874 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19109 a!3626))))))

(declare-fun b!669906 () Bool)

(declare-fun lt!311843 () Unit!23520)

(assert (=> b!669906 (= e!383074 lt!311843)))

(declare-fun lt!311845 () Unit!23520)

(declare-fun lemmaListSubSeqRefl!0 (List!12839) Unit!23520)

(assert (=> b!669906 (= lt!311845 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun subseq!120 (List!12839 List!12839) Bool)

(assert (=> b!669906 (subseq!120 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39113 List!12839 List!12839 (_ BitVec 32)) Unit!23520)

(declare-fun $colon$colon!251 (List!12839 (_ BitVec 64)) List!12839)

(assert (=> b!669906 (= lt!311843 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!251 acc!681 (select (arr!18745 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!669906 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!669907 () Bool)

(declare-fun res!436866 () Bool)

(declare-fun e!383070 () Bool)

(assert (=> b!669907 (=> res!436866 e!383070)))

(assert (=> b!669907 (= res!436866 (contains!3382 lt!311847 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!669908 () Bool)

(assert (=> b!669908 (= e!383070 true)))

(declare-fun lt!311839 () array!39113)

(assert (=> b!669908 (arrayNoDuplicates!0 lt!311839 (bvadd #b00000000000000000000000000000001 from!3004) lt!311847)))

(declare-fun lt!311838 () Unit!23520)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!39113 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12839) Unit!23520)

(assert (=> b!669908 (= lt!311838 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3626 k0!2843 i!1382 (bvadd #b00000000000000000000000000000001 from!3004) lt!311847))))

(declare-fun b!669909 () Bool)

(assert (=> b!669909 (= e!383079 (contains!3382 acc!681 k0!2843))))

(declare-fun b!669910 () Bool)

(assert (=> b!669910 (= e!383080 (not e!383070))))

(declare-fun res!436857 () Bool)

(assert (=> b!669910 (=> res!436857 e!383070)))

(assert (=> b!669910 (= res!436857 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(assert (=> b!669910 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!311847)))

(declare-fun lt!311846 () Unit!23520)

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!39113 (_ BitVec 64) (_ BitVec 32) List!12839 List!12839) Unit!23520)

(assert (=> b!669910 (= lt!311846 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004) acc!681 lt!311847))))

(declare-fun -!118 (List!12839 (_ BitVec 64)) List!12839)

(assert (=> b!669910 (= (-!118 lt!311847 k0!2843) acc!681)))

(assert (=> b!669910 (= lt!311847 ($colon$colon!251 acc!681 k0!2843))))

(declare-fun lt!311840 () Unit!23520)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!12839) Unit!23520)

(assert (=> b!669910 (= lt!311840 (lemmaLMinusHeadEqualsTail!0 k0!2843 acc!681))))

(assert (=> b!669910 (subseq!120 acc!681 acc!681)))

(declare-fun lt!311841 () Unit!23520)

(assert (=> b!669910 (= lt!311841 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!669910 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!311842 () Unit!23520)

(assert (=> b!669910 (= lt!311842 e!383074)))

(declare-fun c!76889 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!669910 (= c!76889 (validKeyInArray!0 (select (arr!18745 a!3626) from!3004)))))

(declare-fun lt!311844 () Unit!23520)

(declare-fun e!383071 () Unit!23520)

(assert (=> b!669910 (= lt!311844 e!383071)))

(declare-fun c!76888 () Bool)

(declare-fun arrayContainsKey!0 (array!39113 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!669910 (= c!76888 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!669910 (arrayContainsKey!0 lt!311839 k0!2843 from!3004)))

(assert (=> b!669910 (= lt!311839 (array!39114 (store (arr!18745 a!3626) i!1382 k0!2843) (size!19109 a!3626)))))

(declare-fun b!669911 () Bool)

(declare-fun res!436868 () Bool)

(assert (=> b!669911 (=> res!436868 e!383070)))

(declare-fun noDuplicate!629 (List!12839) Bool)

(assert (=> b!669911 (= res!436868 (not (noDuplicate!629 lt!311847)))))

(declare-fun b!669912 () Bool)

(declare-fun e!383078 () Bool)

(assert (=> b!669912 (= e!383078 (not (contains!3382 acc!681 k0!2843)))))

(declare-fun b!669913 () Bool)

(declare-fun res!436872 () Bool)

(assert (=> b!669913 (=> (not res!436872) (not e!383080))))

(assert (=> b!669913 (= res!436872 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12836))))

(declare-fun b!669914 () Bool)

(declare-fun Unit!23523 () Unit!23520)

(assert (=> b!669914 (= e!383071 Unit!23523)))

(declare-fun lt!311837 () Unit!23520)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39113 (_ BitVec 64) (_ BitVec 32)) Unit!23520)

(assert (=> b!669914 (= lt!311837 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(assert (=> b!669914 false))

(declare-fun b!669901 () Bool)

(declare-fun e!383075 () Bool)

(assert (=> b!669901 (= e!383075 (contains!3382 lt!311847 k0!2843))))

(declare-fun res!436867 () Bool)

(assert (=> start!60110 (=> (not res!436867) (not e!383080))))

(assert (=> start!60110 (= res!436867 (and (bvslt (size!19109 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19109 a!3626))))))

(assert (=> start!60110 e!383080))

(assert (=> start!60110 true))

(declare-fun array_inv!14519 (array!39113) Bool)

(assert (=> start!60110 (array_inv!14519 a!3626)))

(declare-fun b!669915 () Bool)

(declare-fun res!436856 () Bool)

(assert (=> b!669915 (=> (not res!436856) (not e!383080))))

(assert (=> b!669915 (= res!436856 (validKeyInArray!0 k0!2843))))

(declare-fun b!669916 () Bool)

(declare-fun res!436859 () Bool)

(assert (=> b!669916 (=> (not res!436859) (not e!383080))))

(assert (=> b!669916 (= res!436859 (not (contains!3382 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!669917 () Bool)

(assert (=> b!669917 (= e!383076 e!383078)))

(declare-fun res!436875 () Bool)

(assert (=> b!669917 (=> (not res!436875) (not e!383078))))

(assert (=> b!669917 (= res!436875 (bvsle from!3004 i!1382))))

(declare-fun b!669918 () Bool)

(declare-fun res!436877 () Bool)

(assert (=> b!669918 (=> res!436877 e!383070)))

(assert (=> b!669918 (= res!436877 (contains!3382 lt!311847 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!669919 () Bool)

(declare-fun e!383072 () Bool)

(assert (=> b!669919 (= e!383072 e!383075)))

(declare-fun res!436876 () Bool)

(assert (=> b!669919 (=> res!436876 e!383075)))

(assert (=> b!669919 (= res!436876 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!669920 () Bool)

(declare-fun res!436869 () Bool)

(assert (=> b!669920 (=> res!436869 e!383070)))

(assert (=> b!669920 (= res!436869 e!383072)))

(declare-fun res!436864 () Bool)

(assert (=> b!669920 (=> (not res!436864) (not e!383072))))

(assert (=> b!669920 (= res!436864 e!383077)))

(declare-fun res!436860 () Bool)

(assert (=> b!669920 (=> res!436860 e!383077)))

(assert (=> b!669920 (= res!436860 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!669921 () Bool)

(declare-fun Unit!23524 () Unit!23520)

(assert (=> b!669921 (= e!383071 Unit!23524)))

(declare-fun b!669922 () Bool)

(declare-fun res!436862 () Bool)

(assert (=> b!669922 (=> (not res!436862) (not e!383080))))

(assert (=> b!669922 (= res!436862 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!669923 () Bool)

(declare-fun res!436858 () Bool)

(assert (=> b!669923 (=> (not res!436858) (not e!383080))))

(assert (=> b!669923 (= res!436858 (noDuplicate!629 acc!681))))

(assert (= (and start!60110 res!436867) b!669923))

(assert (= (and b!669923 res!436858) b!669898))

(assert (= (and b!669898 res!436870) b!669916))

(assert (= (and b!669916 res!436859) b!669903))

(assert (= (and b!669903 res!436871) b!669909))

(assert (= (and b!669903 (not res!436863)) b!669917))

(assert (= (and b!669917 res!436875) b!669912))

(assert (= (and b!669903 res!436861) b!669913))

(assert (= (and b!669913 res!436872) b!669900))

(assert (= (and b!669900 res!436865) b!669905))

(assert (= (and b!669905 res!436874) b!669915))

(assert (= (and b!669915 res!436856) b!669922))

(assert (= (and b!669922 res!436862) b!669899))

(assert (= (and b!669899 res!436873) b!669910))

(assert (= (and b!669910 c!76888) b!669914))

(assert (= (and b!669910 (not c!76888)) b!669921))

(assert (= (and b!669910 c!76889) b!669906))

(assert (= (and b!669910 (not c!76889)) b!669904))

(assert (= (and b!669910 (not res!436857)) b!669911))

(assert (= (and b!669911 (not res!436868)) b!669918))

(assert (= (and b!669918 (not res!436877)) b!669907))

(assert (= (and b!669907 (not res!436866)) b!669920))

(assert (= (and b!669920 (not res!436860)) b!669902))

(assert (= (and b!669920 res!436864) b!669919))

(assert (= (and b!669919 (not res!436876)) b!669901))

(assert (= (and b!669920 (not res!436869)) b!669908))

(declare-fun m!639917 () Bool)

(assert (=> b!669911 m!639917))

(declare-fun m!639919 () Bool)

(assert (=> b!669923 m!639919))

(declare-fun m!639921 () Bool)

(assert (=> b!669898 m!639921))

(declare-fun m!639923 () Bool)

(assert (=> b!669914 m!639923))

(declare-fun m!639925 () Bool)

(assert (=> b!669913 m!639925))

(declare-fun m!639927 () Bool)

(assert (=> b!669902 m!639927))

(declare-fun m!639929 () Bool)

(assert (=> b!669922 m!639929))

(declare-fun m!639931 () Bool)

(assert (=> b!669915 m!639931))

(declare-fun m!639933 () Bool)

(assert (=> b!669908 m!639933))

(declare-fun m!639935 () Bool)

(assert (=> b!669908 m!639935))

(declare-fun m!639937 () Bool)

(assert (=> b!669909 m!639937))

(declare-fun m!639939 () Bool)

(assert (=> b!669910 m!639939))

(declare-fun m!639941 () Bool)

(assert (=> b!669910 m!639941))

(declare-fun m!639943 () Bool)

(assert (=> b!669910 m!639943))

(declare-fun m!639945 () Bool)

(assert (=> b!669910 m!639945))

(declare-fun m!639947 () Bool)

(assert (=> b!669910 m!639947))

(declare-fun m!639949 () Bool)

(assert (=> b!669910 m!639949))

(declare-fun m!639951 () Bool)

(assert (=> b!669910 m!639951))

(declare-fun m!639953 () Bool)

(assert (=> b!669910 m!639953))

(declare-fun m!639955 () Bool)

(assert (=> b!669910 m!639955))

(declare-fun m!639957 () Bool)

(assert (=> b!669910 m!639957))

(declare-fun m!639959 () Bool)

(assert (=> b!669910 m!639959))

(assert (=> b!669910 m!639941))

(declare-fun m!639961 () Bool)

(assert (=> b!669910 m!639961))

(declare-fun m!639963 () Bool)

(assert (=> b!669910 m!639963))

(assert (=> b!669901 m!639927))

(declare-fun m!639965 () Bool)

(assert (=> b!669916 m!639965))

(assert (=> b!669906 m!639939))

(assert (=> b!669906 m!639941))

(declare-fun m!639967 () Bool)

(assert (=> b!669906 m!639967))

(declare-fun m!639969 () Bool)

(assert (=> b!669906 m!639969))

(assert (=> b!669906 m!639941))

(assert (=> b!669906 m!639967))

(assert (=> b!669906 m!639951))

(assert (=> b!669906 m!639963))

(declare-fun m!639971 () Bool)

(assert (=> b!669918 m!639971))

(declare-fun m!639973 () Bool)

(assert (=> b!669900 m!639973))

(assert (=> b!669912 m!639937))

(declare-fun m!639975 () Bool)

(assert (=> b!669907 m!639975))

(declare-fun m!639977 () Bool)

(assert (=> start!60110 m!639977))

(check-sat (not b!669915) (not b!669902) (not b!669912) (not b!669911) (not b!669908) (not b!669910) (not b!669913) (not start!60110) (not b!669906) (not b!669914) (not b!669909) (not b!669918) (not b!669923) (not b!669916) (not b!669907) (not b!669922) (not b!669898) (not b!669900) (not b!669901))
(check-sat)
