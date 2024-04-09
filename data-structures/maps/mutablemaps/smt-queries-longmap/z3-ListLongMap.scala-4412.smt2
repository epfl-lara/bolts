; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!60902 () Bool)

(assert start!60902)

(declare-fun b!682890 () Bool)

(declare-fun e!389008 () Bool)

(declare-datatypes ((List!13043 0))(
  ( (Nil!13040) (Cons!13039 (h!14084 (_ BitVec 64)) (t!19294 List!13043)) )
))
(declare-fun acc!681 () List!13043)

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun contains!3586 (List!13043 (_ BitVec 64)) Bool)

(assert (=> b!682890 (= e!389008 (not (contains!3586 acc!681 k0!2843)))))

(declare-fun b!682891 () Bool)

(declare-fun res!448923 () Bool)

(declare-fun e!389011 () Bool)

(assert (=> b!682891 (=> (not res!448923) (not e!389011))))

(declare-datatypes ((array!39542 0))(
  ( (array!39543 (arr!18949 (Array (_ BitVec 32) (_ BitVec 64))) (size!19313 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39542)

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!39542 (_ BitVec 32) List!13043) Bool)

(assert (=> b!682891 (= res!448923 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!682892 () Bool)

(declare-datatypes ((Unit!23982 0))(
  ( (Unit!23983) )
))
(declare-fun e!389009 () Unit!23982)

(declare-fun Unit!23984 () Unit!23982)

(assert (=> b!682892 (= e!389009 Unit!23984)))

(declare-fun res!448915 () Bool)

(assert (=> start!60902 (=> (not res!448915) (not e!389011))))

(assert (=> start!60902 (= res!448915 (and (bvslt (size!19313 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19313 a!3626))))))

(assert (=> start!60902 e!389011))

(assert (=> start!60902 true))

(declare-fun array_inv!14723 (array!39542) Bool)

(assert (=> start!60902 (array_inv!14723 a!3626)))

(declare-fun b!682893 () Bool)

(declare-fun res!448919 () Bool)

(assert (=> b!682893 (=> (not res!448919) (not e!389011))))

(assert (=> b!682893 (= res!448919 (not (contains!3586 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!682894 () Bool)

(declare-fun res!448918 () Bool)

(assert (=> b!682894 (=> (not res!448918) (not e!389011))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!682894 (= res!448918 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19313 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!682895 () Bool)

(assert (=> b!682895 (= e!389011 (not true))))

(declare-fun -!136 (List!13043 (_ BitVec 64)) List!13043)

(declare-fun $colon$colon!335 (List!13043 (_ BitVec 64)) List!13043)

(assert (=> b!682895 (= (-!136 ($colon$colon!335 acc!681 k0!2843) k0!2843) acc!681)))

(declare-fun lt!313718 () Unit!23982)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!13043) Unit!23982)

(assert (=> b!682895 (= lt!313718 (lemmaLMinusHeadEqualsTail!0 k0!2843 acc!681))))

(declare-fun subseq!171 (List!13043 List!13043) Bool)

(assert (=> b!682895 (subseq!171 acc!681 acc!681)))

(declare-fun lt!313716 () Unit!23982)

(declare-fun lemmaListSubSeqRefl!0 (List!13043) Unit!23982)

(assert (=> b!682895 (= lt!313716 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!682895 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!313715 () Unit!23982)

(declare-fun e!389010 () Unit!23982)

(assert (=> b!682895 (= lt!313715 e!389010)))

(declare-fun c!77356 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!682895 (= c!77356 (validKeyInArray!0 (select (arr!18949 a!3626) from!3004)))))

(declare-fun lt!313719 () Unit!23982)

(assert (=> b!682895 (= lt!313719 e!389009)))

(declare-fun c!77357 () Bool)

(declare-fun arrayContainsKey!0 (array!39542 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!682895 (= c!77357 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!682895 (arrayContainsKey!0 (array!39543 (store (arr!18949 a!3626) i!1382 k0!2843) (size!19313 a!3626)) k0!2843 from!3004)))

(declare-fun b!682896 () Bool)

(declare-fun res!448925 () Bool)

(assert (=> b!682896 (=> (not res!448925) (not e!389011))))

(assert (=> b!682896 (= res!448925 (validKeyInArray!0 k0!2843))))

(declare-fun b!682897 () Bool)

(declare-fun e!389013 () Bool)

(assert (=> b!682897 (= e!389013 (contains!3586 acc!681 k0!2843))))

(declare-fun b!682898 () Bool)

(declare-fun e!389014 () Bool)

(assert (=> b!682898 (= e!389014 e!389008)))

(declare-fun res!448916 () Bool)

(assert (=> b!682898 (=> (not res!448916) (not e!389008))))

(assert (=> b!682898 (= res!448916 (bvsle from!3004 i!1382))))

(declare-fun b!682899 () Bool)

(declare-fun lt!313717 () Unit!23982)

(assert (=> b!682899 (= e!389010 lt!313717)))

(declare-fun lt!313713 () Unit!23982)

(assert (=> b!682899 (= lt!313713 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!682899 (subseq!171 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39542 List!13043 List!13043 (_ BitVec 32)) Unit!23982)

(assert (=> b!682899 (= lt!313717 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!335 acc!681 (select (arr!18949 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!682899 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!682900 () Bool)

(declare-fun res!448913 () Bool)

(assert (=> b!682900 (=> (not res!448913) (not e!389011))))

(assert (=> b!682900 (= res!448913 (not (contains!3586 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!682901 () Bool)

(declare-fun Unit!23985 () Unit!23982)

(assert (=> b!682901 (= e!389009 Unit!23985)))

(declare-fun lt!313714 () Unit!23982)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39542 (_ BitVec 64) (_ BitVec 32)) Unit!23982)

(assert (=> b!682901 (= lt!313714 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(assert (=> b!682901 false))

(declare-fun b!682902 () Bool)

(declare-fun res!448914 () Bool)

(assert (=> b!682902 (=> (not res!448914) (not e!389011))))

(assert (=> b!682902 (= res!448914 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!682903 () Bool)

(declare-fun Unit!23986 () Unit!23982)

(assert (=> b!682903 (= e!389010 Unit!23986)))

(declare-fun b!682904 () Bool)

(declare-fun res!448922 () Bool)

(assert (=> b!682904 (=> (not res!448922) (not e!389011))))

(declare-fun noDuplicate!833 (List!13043) Bool)

(assert (=> b!682904 (= res!448922 (noDuplicate!833 acc!681))))

(declare-fun b!682905 () Bool)

(declare-fun res!448921 () Bool)

(assert (=> b!682905 (=> (not res!448921) (not e!389011))))

(assert (=> b!682905 (= res!448921 e!389014)))

(declare-fun res!448917 () Bool)

(assert (=> b!682905 (=> res!448917 e!389014)))

(assert (=> b!682905 (= res!448917 e!389013)))

(declare-fun res!448912 () Bool)

(assert (=> b!682905 (=> (not res!448912) (not e!389013))))

(assert (=> b!682905 (= res!448912 (bvsgt from!3004 i!1382))))

(declare-fun b!682906 () Bool)

(declare-fun res!448920 () Bool)

(assert (=> b!682906 (=> (not res!448920) (not e!389011))))

(assert (=> b!682906 (= res!448920 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13040))))

(declare-fun b!682907 () Bool)

(declare-fun res!448924 () Bool)

(assert (=> b!682907 (=> (not res!448924) (not e!389011))))

(assert (=> b!682907 (= res!448924 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19313 a!3626))))))

(assert (= (and start!60902 res!448915) b!682904))

(assert (= (and b!682904 res!448922) b!682893))

(assert (= (and b!682893 res!448919) b!682900))

(assert (= (and b!682900 res!448913) b!682905))

(assert (= (and b!682905 res!448912) b!682897))

(assert (= (and b!682905 (not res!448917)) b!682898))

(assert (= (and b!682898 res!448916) b!682890))

(assert (= (and b!682905 res!448921) b!682906))

(assert (= (and b!682906 res!448920) b!682891))

(assert (= (and b!682891 res!448923) b!682907))

(assert (= (and b!682907 res!448924) b!682896))

(assert (= (and b!682896 res!448925) b!682902))

(assert (= (and b!682902 res!448914) b!682894))

(assert (= (and b!682894 res!448918) b!682895))

(assert (= (and b!682895 c!77357) b!682901))

(assert (= (and b!682895 (not c!77357)) b!682892))

(assert (= (and b!682895 c!77356) b!682899))

(assert (= (and b!682895 (not c!77356)) b!682903))

(declare-fun m!647551 () Bool)

(assert (=> b!682895 m!647551))

(declare-fun m!647553 () Bool)

(assert (=> b!682895 m!647553))

(declare-fun m!647555 () Bool)

(assert (=> b!682895 m!647555))

(declare-fun m!647557 () Bool)

(assert (=> b!682895 m!647557))

(declare-fun m!647559 () Bool)

(assert (=> b!682895 m!647559))

(declare-fun m!647561 () Bool)

(assert (=> b!682895 m!647561))

(declare-fun m!647563 () Bool)

(assert (=> b!682895 m!647563))

(declare-fun m!647565 () Bool)

(assert (=> b!682895 m!647565))

(assert (=> b!682895 m!647551))

(assert (=> b!682895 m!647557))

(declare-fun m!647567 () Bool)

(assert (=> b!682895 m!647567))

(declare-fun m!647569 () Bool)

(assert (=> b!682895 m!647569))

(declare-fun m!647571 () Bool)

(assert (=> b!682895 m!647571))

(declare-fun m!647573 () Bool)

(assert (=> b!682891 m!647573))

(declare-fun m!647575 () Bool)

(assert (=> b!682900 m!647575))

(declare-fun m!647577 () Bool)

(assert (=> b!682893 m!647577))

(declare-fun m!647579 () Bool)

(assert (=> b!682906 m!647579))

(declare-fun m!647581 () Bool)

(assert (=> b!682896 m!647581))

(declare-fun m!647583 () Bool)

(assert (=> b!682904 m!647583))

(declare-fun m!647585 () Bool)

(assert (=> start!60902 m!647585))

(declare-fun m!647587 () Bool)

(assert (=> b!682901 m!647587))

(declare-fun m!647589 () Bool)

(assert (=> b!682902 m!647589))

(declare-fun m!647591 () Bool)

(assert (=> b!682897 m!647591))

(assert (=> b!682890 m!647591))

(assert (=> b!682899 m!647555))

(assert (=> b!682899 m!647557))

(declare-fun m!647593 () Bool)

(assert (=> b!682899 m!647593))

(declare-fun m!647595 () Bool)

(assert (=> b!682899 m!647595))

(assert (=> b!682899 m!647557))

(assert (=> b!682899 m!647593))

(assert (=> b!682899 m!647563))

(assert (=> b!682899 m!647571))

(check-sat (not b!682893) (not b!682904) (not b!682901) (not b!682895) (not b!682906) (not start!60902) (not b!682902) (not b!682900) (not b!682899) (not b!682891) (not b!682890) (not b!682897) (not b!682896))
