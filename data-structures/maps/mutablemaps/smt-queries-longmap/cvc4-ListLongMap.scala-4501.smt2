; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62494 () Bool)

(assert start!62494)

(declare-fun b!702887 () Bool)

(declare-fun res!466877 () Bool)

(declare-fun e!397460 () Bool)

(assert (=> b!702887 (=> (not res!466877) (not e!397460))))

(declare-datatypes ((List!13311 0))(
  ( (Nil!13308) (Cons!13307 (h!14352 (_ BitVec 64)) (t!19601 List!13311)) )
))
(declare-fun acc!652 () List!13311)

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun contains!3854 (List!13311 (_ BitVec 64)) Bool)

(assert (=> b!702887 (= res!466877 (not (contains!3854 acc!652 k!2824)))))

(declare-fun b!702888 () Bool)

(declare-fun res!466895 () Bool)

(assert (=> b!702888 (=> (not res!466895) (not e!397460))))

(declare-datatypes ((array!40129 0))(
  ( (array!40130 (arr!19217 (Array (_ BitVec 32) (_ BitVec 64))) (size!19600 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40129)

(declare-fun from!2969 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!40129 (_ BitVec 32) List!13311) Bool)

(assert (=> b!702888 (= res!466895 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!702889 () Bool)

(declare-fun res!466892 () Bool)

(assert (=> b!702889 (=> (not res!466892) (not e!397460))))

(declare-fun newAcc!49 () List!13311)

(assert (=> b!702889 (= res!466892 (not (contains!3854 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!702890 () Bool)

(declare-fun res!466898 () Bool)

(assert (=> b!702890 (=> (not res!466898) (not e!397460))))

(declare-fun -!263 (List!13311 (_ BitVec 64)) List!13311)

(assert (=> b!702890 (= res!466898 (= (-!263 newAcc!49 k!2824) acc!652))))

(declare-fun b!702891 () Bool)

(declare-fun res!466881 () Bool)

(assert (=> b!702891 (=> (not res!466881) (not e!397460))))

(assert (=> b!702891 (= res!466881 (not (contains!3854 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!702892 () Bool)

(declare-fun res!466871 () Bool)

(declare-fun e!397461 () Bool)

(assert (=> b!702892 (=> (not res!466871) (not e!397461))))

(declare-fun lt!317712 () List!13311)

(declare-fun lt!317711 () List!13311)

(declare-fun subseq!298 (List!13311 List!13311) Bool)

(assert (=> b!702892 (= res!466871 (subseq!298 lt!317712 lt!317711))))

(declare-fun b!702893 () Bool)

(declare-fun res!466872 () Bool)

(assert (=> b!702893 (=> (not res!466872) (not e!397460))))

(assert (=> b!702893 (= res!466872 (not (contains!3854 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!702894 () Bool)

(assert (=> b!702894 (= e!397461 (not true))))

(assert (=> b!702894 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) lt!317711)))

(declare-datatypes ((Unit!24584 0))(
  ( (Unit!24585) )
))
(declare-fun lt!317710 () Unit!24584)

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!40129 (_ BitVec 64) (_ BitVec 32) List!13311 List!13311) Unit!24584)

(assert (=> b!702894 (= lt!317710 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969) lt!317712 lt!317711))))

(declare-fun b!702895 () Bool)

(declare-fun res!466885 () Bool)

(assert (=> b!702895 (=> (not res!466885) (not e!397461))))

(assert (=> b!702895 (= res!466885 (not (contains!3854 lt!317712 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!702896 () Bool)

(declare-fun res!466882 () Bool)

(assert (=> b!702896 (=> (not res!466882) (not e!397461))))

(declare-fun noDuplicate!1101 (List!13311) Bool)

(assert (=> b!702896 (= res!466882 (noDuplicate!1101 lt!317712))))

(declare-fun b!702897 () Bool)

(declare-fun res!466888 () Bool)

(assert (=> b!702897 (=> (not res!466888) (not e!397460))))

(assert (=> b!702897 (= res!466888 (contains!3854 newAcc!49 k!2824))))

(declare-fun b!702898 () Bool)

(declare-fun res!466886 () Bool)

(assert (=> b!702898 (=> (not res!466886) (not e!397461))))

(assert (=> b!702898 (= res!466886 (contains!3854 lt!317711 k!2824))))

(declare-fun b!702899 () Bool)

(declare-fun res!466889 () Bool)

(assert (=> b!702899 (=> (not res!466889) (not e!397461))))

(assert (=> b!702899 (= res!466889 (not (contains!3854 lt!317711 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!466875 () Bool)

(assert (=> start!62494 (=> (not res!466875) (not e!397460))))

(assert (=> start!62494 (= res!466875 (and (bvslt (size!19600 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19600 a!3591))))))

(assert (=> start!62494 e!397460))

(assert (=> start!62494 true))

(declare-fun array_inv!14991 (array!40129) Bool)

(assert (=> start!62494 (array_inv!14991 a!3591)))

(declare-fun b!702886 () Bool)

(declare-fun res!466879 () Bool)

(assert (=> b!702886 (=> (not res!466879) (not e!397460))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!702886 (= res!466879 (validKeyInArray!0 k!2824))))

(declare-fun b!702900 () Bool)

(declare-fun res!466870 () Bool)

(assert (=> b!702900 (=> (not res!466870) (not e!397461))))

(declare-fun arrayContainsKey!0 (array!40129 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!702900 (= res!466870 (not (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!702901 () Bool)

(declare-fun res!466896 () Bool)

(assert (=> b!702901 (=> (not res!466896) (not e!397460))))

(assert (=> b!702901 (= res!466896 (not (contains!3854 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!702902 () Bool)

(declare-fun res!466887 () Bool)

(assert (=> b!702902 (=> (not res!466887) (not e!397461))))

(assert (=> b!702902 (= res!466887 (= (-!263 lt!317711 k!2824) lt!317712))))

(declare-fun b!702903 () Bool)

(assert (=> b!702903 (= e!397460 e!397461)))

(declare-fun res!466891 () Bool)

(assert (=> b!702903 (=> (not res!466891) (not e!397461))))

(assert (=> b!702903 (= res!466891 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!495 (List!13311 (_ BitVec 64)) List!13311)

(assert (=> b!702903 (= lt!317711 ($colon$colon!495 newAcc!49 (select (arr!19217 a!3591) from!2969)))))

(assert (=> b!702903 (= lt!317712 ($colon$colon!495 acc!652 (select (arr!19217 a!3591) from!2969)))))

(declare-fun b!702904 () Bool)

(declare-fun res!466876 () Bool)

(assert (=> b!702904 (=> (not res!466876) (not e!397460))))

(assert (=> b!702904 (= res!466876 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!702905 () Bool)

(declare-fun res!466893 () Bool)

(assert (=> b!702905 (=> (not res!466893) (not e!397461))))

(assert (=> b!702905 (= res!466893 (noDuplicate!1101 lt!317711))))

(declare-fun b!702906 () Bool)

(declare-fun res!466897 () Bool)

(assert (=> b!702906 (=> (not res!466897) (not e!397461))))

(assert (=> b!702906 (= res!466897 (not (contains!3854 lt!317711 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!702907 () Bool)

(declare-fun res!466874 () Bool)

(assert (=> b!702907 (=> (not res!466874) (not e!397460))))

(assert (=> b!702907 (= res!466874 (noDuplicate!1101 acc!652))))

(declare-fun b!702908 () Bool)

(declare-fun res!466883 () Bool)

(assert (=> b!702908 (=> (not res!466883) (not e!397460))))

(assert (=> b!702908 (= res!466883 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19600 a!3591)))))

(declare-fun b!702909 () Bool)

(declare-fun res!466890 () Bool)

(assert (=> b!702909 (=> (not res!466890) (not e!397461))))

(assert (=> b!702909 (= res!466890 (not (contains!3854 lt!317712 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!702910 () Bool)

(declare-fun res!466878 () Bool)

(assert (=> b!702910 (=> (not res!466878) (not e!397460))))

(assert (=> b!702910 (= res!466878 (subseq!298 acc!652 newAcc!49))))

(declare-fun b!702911 () Bool)

(declare-fun res!466894 () Bool)

(assert (=> b!702911 (=> (not res!466894) (not e!397461))))

(assert (=> b!702911 (= res!466894 (not (contains!3854 lt!317712 k!2824)))))

(declare-fun b!702912 () Bool)

(declare-fun res!466880 () Bool)

(assert (=> b!702912 (=> (not res!466880) (not e!397461))))

(assert (=> b!702912 (= res!466880 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) lt!317712))))

(declare-fun b!702913 () Bool)

(declare-fun res!466884 () Bool)

(assert (=> b!702913 (=> (not res!466884) (not e!397460))))

(assert (=> b!702913 (= res!466884 (noDuplicate!1101 newAcc!49))))

(declare-fun b!702914 () Bool)

(declare-fun res!466873 () Bool)

(assert (=> b!702914 (=> (not res!466873) (not e!397460))))

(assert (=> b!702914 (= res!466873 (validKeyInArray!0 (select (arr!19217 a!3591) from!2969)))))

(assert (= (and start!62494 res!466875) b!702907))

(assert (= (and b!702907 res!466874) b!702913))

(assert (= (and b!702913 res!466884) b!702893))

(assert (= (and b!702893 res!466872) b!702891))

(assert (= (and b!702891 res!466881) b!702904))

(assert (= (and b!702904 res!466876) b!702887))

(assert (= (and b!702887 res!466877) b!702886))

(assert (= (and b!702886 res!466879) b!702888))

(assert (= (and b!702888 res!466895) b!702910))

(assert (= (and b!702910 res!466878) b!702897))

(assert (= (and b!702897 res!466888) b!702890))

(assert (= (and b!702890 res!466898) b!702889))

(assert (= (and b!702889 res!466892) b!702901))

(assert (= (and b!702901 res!466896) b!702908))

(assert (= (and b!702908 res!466883) b!702914))

(assert (= (and b!702914 res!466873) b!702903))

(assert (= (and b!702903 res!466891) b!702896))

(assert (= (and b!702896 res!466882) b!702905))

(assert (= (and b!702905 res!466893) b!702895))

(assert (= (and b!702895 res!466885) b!702909))

(assert (= (and b!702909 res!466890) b!702900))

(assert (= (and b!702900 res!466870) b!702911))

(assert (= (and b!702911 res!466894) b!702912))

(assert (= (and b!702912 res!466880) b!702892))

(assert (= (and b!702892 res!466871) b!702898))

(assert (= (and b!702898 res!466886) b!702902))

(assert (= (and b!702902 res!466887) b!702899))

(assert (= (and b!702899 res!466889) b!702906))

(assert (= (and b!702906 res!466897) b!702894))

(declare-fun m!661895 () Bool)

(assert (=> b!702892 m!661895))

(declare-fun m!661897 () Bool)

(assert (=> b!702898 m!661897))

(declare-fun m!661899 () Bool)

(assert (=> b!702910 m!661899))

(declare-fun m!661901 () Bool)

(assert (=> b!702905 m!661901))

(declare-fun m!661903 () Bool)

(assert (=> b!702891 m!661903))

(declare-fun m!661905 () Bool)

(assert (=> b!702890 m!661905))

(declare-fun m!661907 () Bool)

(assert (=> b!702900 m!661907))

(declare-fun m!661909 () Bool)

(assert (=> b!702897 m!661909))

(declare-fun m!661911 () Bool)

(assert (=> b!702912 m!661911))

(declare-fun m!661913 () Bool)

(assert (=> b!702887 m!661913))

(declare-fun m!661915 () Bool)

(assert (=> b!702894 m!661915))

(declare-fun m!661917 () Bool)

(assert (=> b!702894 m!661917))

(declare-fun m!661919 () Bool)

(assert (=> b!702901 m!661919))

(declare-fun m!661921 () Bool)

(assert (=> b!702909 m!661921))

(declare-fun m!661923 () Bool)

(assert (=> b!702902 m!661923))

(declare-fun m!661925 () Bool)

(assert (=> b!702896 m!661925))

(declare-fun m!661927 () Bool)

(assert (=> b!702893 m!661927))

(declare-fun m!661929 () Bool)

(assert (=> b!702903 m!661929))

(assert (=> b!702903 m!661929))

(declare-fun m!661931 () Bool)

(assert (=> b!702903 m!661931))

(assert (=> b!702903 m!661929))

(declare-fun m!661933 () Bool)

(assert (=> b!702903 m!661933))

(declare-fun m!661935 () Bool)

(assert (=> b!702886 m!661935))

(declare-fun m!661937 () Bool)

(assert (=> b!702906 m!661937))

(declare-fun m!661939 () Bool)

(assert (=> b!702911 m!661939))

(declare-fun m!661941 () Bool)

(assert (=> b!702913 m!661941))

(declare-fun m!661943 () Bool)

(assert (=> b!702895 m!661943))

(assert (=> b!702914 m!661929))

(assert (=> b!702914 m!661929))

(declare-fun m!661945 () Bool)

(assert (=> b!702914 m!661945))

(declare-fun m!661947 () Bool)

(assert (=> start!62494 m!661947))

(declare-fun m!661949 () Bool)

(assert (=> b!702889 m!661949))

(declare-fun m!661951 () Bool)

(assert (=> b!702888 m!661951))

(declare-fun m!661953 () Bool)

(assert (=> b!702899 m!661953))

(declare-fun m!661955 () Bool)

(assert (=> b!702907 m!661955))

(declare-fun m!661957 () Bool)

(assert (=> b!702904 m!661957))

(push 1)

