; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59884 () Bool)

(assert start!59884)

(declare-fun b!661889 () Bool)

(declare-fun res!430094 () Bool)

(declare-fun e!380070 () Bool)

(assert (=> b!661889 (=> (not res!430094) (not e!380070))))

(declare-fun i!1382 () (_ BitVec 32))

(declare-datatypes ((array!38887 0))(
  ( (array!38888 (arr!18632 (Array (_ BitVec 32) (_ BitVec 64))) (size!18996 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38887)

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!661889 (= res!430094 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!18996 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!661891 () Bool)

(declare-fun e!380065 () Bool)

(declare-fun e!380068 () Bool)

(assert (=> b!661891 (= e!380065 e!380068)))

(declare-fun res!430111 () Bool)

(assert (=> b!661891 (=> (not res!430111) (not e!380068))))

(assert (=> b!661891 (= res!430111 (bvsle from!3004 i!1382))))

(declare-fun b!661892 () Bool)

(declare-fun res!430109 () Bool)

(assert (=> b!661892 (=> (not res!430109) (not e!380070))))

(declare-datatypes ((List!12726 0))(
  ( (Nil!12723) (Cons!12722 (h!13767 (_ BitVec 64)) (t!18962 List!12726)) )
))
(declare-fun acc!681 () List!12726)

(declare-fun contains!3269 (List!12726 (_ BitVec 64)) Bool)

(assert (=> b!661892 (= res!430109 (not (contains!3269 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!661893 () Bool)

(declare-fun res!430093 () Bool)

(assert (=> b!661893 (=> (not res!430093) (not e!380070))))

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!38887 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!661893 (= res!430093 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!661894 () Bool)

(declare-fun e!380071 () Bool)

(assert (=> b!661894 (= e!380071 (contains!3269 acc!681 k!2843))))

(declare-fun b!661895 () Bool)

(declare-fun e!380066 () Bool)

(declare-fun e!380064 () Bool)

(assert (=> b!661895 (= e!380066 e!380064)))

(declare-fun res!430104 () Bool)

(assert (=> b!661895 (=> res!430104 e!380064)))

(assert (=> b!661895 (= res!430104 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun lt!308864 () List!12726)

(declare-fun $colon$colon!138 (List!12726 (_ BitVec 64)) List!12726)

(assert (=> b!661895 (= lt!308864 ($colon$colon!138 acc!681 (select (arr!18632 a!3626) from!3004)))))

(declare-fun subseq!7 (List!12726 List!12726) Bool)

(assert (=> b!661895 (subseq!7 acc!681 acc!681)))

(declare-datatypes ((Unit!22974 0))(
  ( (Unit!22975) )
))
(declare-fun lt!308862 () Unit!22974)

(declare-fun lemmaListSubSeqRefl!0 (List!12726) Unit!22974)

(assert (=> b!661895 (= lt!308862 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun b!661896 () Bool)

(declare-fun res!430095 () Bool)

(assert (=> b!661896 (=> (not res!430095) (not e!380070))))

(assert (=> b!661896 (= res!430095 (not (contains!3269 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!661897 () Bool)

(declare-fun res!430102 () Bool)

(assert (=> b!661897 (=> (not res!430102) (not e!380070))))

(declare-fun arrayNoDuplicates!0 (array!38887 (_ BitVec 32) List!12726) Bool)

(assert (=> b!661897 (= res!430102 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!661898 () Bool)

(declare-fun res!430097 () Bool)

(assert (=> b!661898 (=> (not res!430097) (not e!380070))))

(assert (=> b!661898 (= res!430097 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!18996 a!3626))))))

(declare-fun b!661899 () Bool)

(declare-fun res!430098 () Bool)

(assert (=> b!661899 (=> res!430098 e!380064)))

(declare-fun noDuplicate!516 (List!12726) Bool)

(assert (=> b!661899 (= res!430098 (not (noDuplicate!516 lt!308864)))))

(declare-fun res!430108 () Bool)

(assert (=> start!59884 (=> (not res!430108) (not e!380070))))

(assert (=> start!59884 (= res!430108 (and (bvslt (size!18996 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!18996 a!3626))))))

(assert (=> start!59884 e!380070))

(assert (=> start!59884 true))

(declare-fun array_inv!14406 (array!38887) Bool)

(assert (=> start!59884 (array_inv!14406 a!3626)))

(declare-fun b!661890 () Bool)

(declare-fun res!430103 () Bool)

(assert (=> b!661890 (=> (not res!430103) (not e!380070))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!661890 (= res!430103 (validKeyInArray!0 k!2843))))

(declare-fun b!661900 () Bool)

(declare-fun res!430106 () Bool)

(assert (=> b!661900 (=> res!430106 e!380064)))

(assert (=> b!661900 (= res!430106 (contains!3269 lt!308864 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!661901 () Bool)

(declare-fun e!380069 () Unit!22974)

(declare-fun Unit!22976 () Unit!22974)

(assert (=> b!661901 (= e!380069 Unit!22976)))

(declare-fun lt!308865 () Unit!22974)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38887 (_ BitVec 64) (_ BitVec 32)) Unit!22974)

(assert (=> b!661901 (= lt!308865 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!661901 false))

(declare-fun b!661902 () Bool)

(declare-fun res!430107 () Bool)

(assert (=> b!661902 (=> res!430107 e!380064)))

(assert (=> b!661902 (= res!430107 (contains!3269 lt!308864 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!661903 () Bool)

(assert (=> b!661903 (= e!380070 (not e!380066))))

(declare-fun res!430110 () Bool)

(assert (=> b!661903 (=> res!430110 e!380066)))

(assert (=> b!661903 (= res!430110 (not (validKeyInArray!0 (select (arr!18632 a!3626) from!3004))))))

(declare-fun lt!308861 () Unit!22974)

(assert (=> b!661903 (= lt!308861 e!380069)))

(declare-fun c!76265 () Bool)

(assert (=> b!661903 (= c!76265 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!661903 (arrayContainsKey!0 (array!38888 (store (arr!18632 a!3626) i!1382 k!2843) (size!18996 a!3626)) k!2843 from!3004)))

(declare-fun b!661904 () Bool)

(assert (=> b!661904 (= e!380068 (not (contains!3269 acc!681 k!2843)))))

(declare-fun b!661905 () Bool)

(declare-fun Unit!22977 () Unit!22974)

(assert (=> b!661905 (= e!380069 Unit!22977)))

(declare-fun b!661906 () Bool)

(declare-fun res!430112 () Bool)

(assert (=> b!661906 (=> (not res!430112) (not e!380070))))

(assert (=> b!661906 (= res!430112 (noDuplicate!516 acc!681))))

(declare-fun b!661907 () Bool)

(declare-fun res!430099 () Bool)

(assert (=> b!661907 (=> res!430099 e!380064)))

(assert (=> b!661907 (= res!430099 (not (subseq!7 acc!681 lt!308864)))))

(declare-fun b!661908 () Bool)

(assert (=> b!661908 (= e!380064 true)))

(declare-fun lt!308863 () Bool)

(assert (=> b!661908 (= lt!308863 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!308864))))

(declare-fun lt!308860 () Unit!22974)

(declare-fun noDuplicateSubseq!7 (List!12726 List!12726) Unit!22974)

(assert (=> b!661908 (= lt!308860 (noDuplicateSubseq!7 acc!681 lt!308864))))

(declare-fun b!661909 () Bool)

(declare-fun res!430100 () Bool)

(assert (=> b!661909 (=> (not res!430100) (not e!380070))))

(assert (=> b!661909 (= res!430100 e!380065)))

(declare-fun res!430101 () Bool)

(assert (=> b!661909 (=> res!430101 e!380065)))

(assert (=> b!661909 (= res!430101 e!380071)))

(declare-fun res!430105 () Bool)

(assert (=> b!661909 (=> (not res!430105) (not e!380071))))

(assert (=> b!661909 (= res!430105 (bvsgt from!3004 i!1382))))

(declare-fun b!661910 () Bool)

(declare-fun res!430096 () Bool)

(assert (=> b!661910 (=> (not res!430096) (not e!380070))))

(assert (=> b!661910 (= res!430096 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12723))))

(assert (= (and start!59884 res!430108) b!661906))

(assert (= (and b!661906 res!430112) b!661896))

(assert (= (and b!661896 res!430095) b!661892))

(assert (= (and b!661892 res!430109) b!661909))

(assert (= (and b!661909 res!430105) b!661894))

(assert (= (and b!661909 (not res!430101)) b!661891))

(assert (= (and b!661891 res!430111) b!661904))

(assert (= (and b!661909 res!430100) b!661910))

(assert (= (and b!661910 res!430096) b!661897))

(assert (= (and b!661897 res!430102) b!661898))

(assert (= (and b!661898 res!430097) b!661890))

(assert (= (and b!661890 res!430103) b!661893))

(assert (= (and b!661893 res!430093) b!661889))

(assert (= (and b!661889 res!430094) b!661903))

(assert (= (and b!661903 c!76265) b!661901))

(assert (= (and b!661903 (not c!76265)) b!661905))

(assert (= (and b!661903 (not res!430110)) b!661895))

(assert (= (and b!661895 (not res!430104)) b!661899))

(assert (= (and b!661899 (not res!430098)) b!661902))

(assert (= (and b!661902 (not res!430107)) b!661900))

(assert (= (and b!661900 (not res!430106)) b!661907))

(assert (= (and b!661907 (not res!430099)) b!661908))

(declare-fun m!633891 () Bool)

(assert (=> b!661902 m!633891))

(declare-fun m!633893 () Bool)

(assert (=> b!661904 m!633893))

(declare-fun m!633895 () Bool)

(assert (=> start!59884 m!633895))

(declare-fun m!633897 () Bool)

(assert (=> b!661901 m!633897))

(declare-fun m!633899 () Bool)

(assert (=> b!661890 m!633899))

(declare-fun m!633901 () Bool)

(assert (=> b!661900 m!633901))

(declare-fun m!633903 () Bool)

(assert (=> b!661896 m!633903))

(declare-fun m!633905 () Bool)

(assert (=> b!661906 m!633905))

(declare-fun m!633907 () Bool)

(assert (=> b!661910 m!633907))

(declare-fun m!633909 () Bool)

(assert (=> b!661895 m!633909))

(assert (=> b!661895 m!633909))

(declare-fun m!633911 () Bool)

(assert (=> b!661895 m!633911))

(declare-fun m!633913 () Bool)

(assert (=> b!661895 m!633913))

(declare-fun m!633915 () Bool)

(assert (=> b!661895 m!633915))

(assert (=> b!661894 m!633893))

(declare-fun m!633917 () Bool)

(assert (=> b!661897 m!633917))

(assert (=> b!661903 m!633909))

(declare-fun m!633919 () Bool)

(assert (=> b!661903 m!633919))

(declare-fun m!633921 () Bool)

(assert (=> b!661903 m!633921))

(assert (=> b!661903 m!633909))

(declare-fun m!633923 () Bool)

(assert (=> b!661903 m!633923))

(declare-fun m!633925 () Bool)

(assert (=> b!661903 m!633925))

(declare-fun m!633927 () Bool)

(assert (=> b!661907 m!633927))

(declare-fun m!633929 () Bool)

(assert (=> b!661893 m!633929))

(declare-fun m!633931 () Bool)

(assert (=> b!661892 m!633931))

(declare-fun m!633933 () Bool)

(assert (=> b!661899 m!633933))

(declare-fun m!633935 () Bool)

(assert (=> b!661908 m!633935))

(declare-fun m!633937 () Bool)

(assert (=> b!661908 m!633937))

(push 1)

(assert (not b!661894))

(assert (not b!661897))

(assert (not b!661900))

(assert (not b!661904))

(assert (not b!661899))

(assert (not b!661890))

(assert (not b!661903))

(assert (not b!661906))

(assert (not b!661902))

(assert (not b!661910))

(assert (not b!661893))

(assert (not start!59884))

(assert (not b!661901))

(assert (not b!661907))

(assert (not b!661896))

(assert (