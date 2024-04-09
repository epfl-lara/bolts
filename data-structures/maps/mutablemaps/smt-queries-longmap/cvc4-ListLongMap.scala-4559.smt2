; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!63548 () Bool)

(assert start!63548)

(declare-fun b!715766 () Bool)

(declare-fun res!478902 () Bool)

(declare-fun e!401820 () Bool)

(assert (=> b!715766 (=> (not res!478902) (not e!401820))))

(declare-fun from!2969 () (_ BitVec 32))

(declare-datatypes ((array!40516 0))(
  ( (array!40517 (arr!19391 (Array (_ BitVec 32) (_ BitVec 64))) (size!19807 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40516)

(assert (=> b!715766 (= res!478902 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19807 a!3591)))))

(declare-fun b!715767 () Bool)

(declare-fun res!478903 () Bool)

(assert (=> b!715767 (=> (not res!478903) (not e!401820))))

(declare-datatypes ((List!13485 0))(
  ( (Nil!13482) (Cons!13481 (h!14526 (_ BitVec 64)) (t!19808 List!13485)) )
))
(declare-fun acc!652 () List!13485)

(declare-fun contains!4028 (List!13485 (_ BitVec 64)) Bool)

(assert (=> b!715767 (= res!478903 (not (contains!4028 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!715768 () Bool)

(declare-fun res!478909 () Bool)

(assert (=> b!715768 (=> (not res!478909) (not e!401820))))

(declare-fun k!2824 () (_ BitVec 64))

(assert (=> b!715768 (= res!478909 (not (contains!4028 acc!652 k!2824)))))

(declare-fun b!715769 () Bool)

(declare-fun res!478919 () Bool)

(assert (=> b!715769 (=> (not res!478919) (not e!401820))))

(assert (=> b!715769 (= res!478919 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun res!478913 () Bool)

(assert (=> start!63548 (=> (not res!478913) (not e!401820))))

(assert (=> start!63548 (= res!478913 (and (bvslt (size!19807 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19807 a!3591))))))

(assert (=> start!63548 e!401820))

(assert (=> start!63548 true))

(declare-fun array_inv!15165 (array!40516) Bool)

(assert (=> start!63548 (array_inv!15165 a!3591)))

(declare-fun b!715770 () Bool)

(declare-fun res!478907 () Bool)

(assert (=> b!715770 (=> (not res!478907) (not e!401820))))

(declare-fun newAcc!49 () List!13485)

(declare-fun -!437 (List!13485 (_ BitVec 64)) List!13485)

(assert (=> b!715770 (= res!478907 (= (-!437 newAcc!49 k!2824) acc!652))))

(declare-fun b!715771 () Bool)

(declare-fun res!478916 () Bool)

(assert (=> b!715771 (=> (not res!478916) (not e!401820))))

(declare-fun subseq!472 (List!13485 List!13485) Bool)

(assert (=> b!715771 (= res!478916 (subseq!472 acc!652 newAcc!49))))

(declare-fun b!715772 () Bool)

(declare-fun res!478912 () Bool)

(assert (=> b!715772 (=> (not res!478912) (not e!401820))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!715772 (= res!478912 (validKeyInArray!0 k!2824))))

(declare-fun b!715773 () Bool)

(declare-fun res!478906 () Bool)

(assert (=> b!715773 (=> (not res!478906) (not e!401820))))

(declare-fun arrayNoDuplicates!0 (array!40516 (_ BitVec 32) List!13485) Bool)

(assert (=> b!715773 (= res!478906 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!715774 () Bool)

(declare-fun res!478910 () Bool)

(assert (=> b!715774 (=> (not res!478910) (not e!401820))))

(assert (=> b!715774 (= res!478910 (not (contains!4028 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!715775 () Bool)

(declare-fun res!478905 () Bool)

(assert (=> b!715775 (=> (not res!478905) (not e!401820))))

(declare-fun arrayContainsKey!0 (array!40516 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!715775 (= res!478905 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!715776 () Bool)

(declare-fun res!478914 () Bool)

(assert (=> b!715776 (=> (not res!478914) (not e!401820))))

(assert (=> b!715776 (= res!478914 (contains!4028 newAcc!49 k!2824))))

(declare-fun b!715777 () Bool)

(declare-fun res!478911 () Bool)

(assert (=> b!715777 (=> (not res!478911) (not e!401820))))

(assert (=> b!715777 (= res!478911 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) acc!652))))

(declare-fun b!715778 () Bool)

(declare-fun res!478920 () Bool)

(assert (=> b!715778 (=> (not res!478920) (not e!401820))))

(assert (=> b!715778 (= res!478920 (not (contains!4028 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!715779 () Bool)

(declare-fun res!478917 () Bool)

(assert (=> b!715779 (=> (not res!478917) (not e!401820))))

(assert (=> b!715779 (= res!478917 (not (validKeyInArray!0 (select (arr!19391 a!3591) from!2969))))))

(declare-fun b!715780 () Bool)

(declare-fun res!478904 () Bool)

(assert (=> b!715780 (=> (not res!478904) (not e!401820))))

(declare-fun noDuplicate!1275 (List!13485) Bool)

(assert (=> b!715780 (= res!478904 (noDuplicate!1275 acc!652))))

(declare-fun b!715781 () Bool)

(declare-fun res!478918 () Bool)

(assert (=> b!715781 (=> (not res!478918) (not e!401820))))

(assert (=> b!715781 (= res!478918 (not (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!715782 () Bool)

(declare-fun res!478908 () Bool)

(assert (=> b!715782 (=> (not res!478908) (not e!401820))))

(assert (=> b!715782 (= res!478908 (not (contains!4028 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!715783 () Bool)

(declare-fun res!478915 () Bool)

(assert (=> b!715783 (=> (not res!478915) (not e!401820))))

(assert (=> b!715783 (= res!478915 (noDuplicate!1275 newAcc!49))))

(declare-fun b!715784 () Bool)

(assert (=> b!715784 (= e!401820 (not (arrayNoDuplicates!0 a!3591 from!2969 newAcc!49)))))

(assert (=> b!715784 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) newAcc!49)))

(declare-datatypes ((Unit!24620 0))(
  ( (Unit!24621) )
))
(declare-fun lt!318806 () Unit!24620)

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!40516 (_ BitVec 64) (_ BitVec 32) List!13485 List!13485) Unit!24620)

(assert (=> b!715784 (= lt!318806 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969) acc!652 newAcc!49))))

(assert (= (and start!63548 res!478913) b!715780))

(assert (= (and b!715780 res!478904) b!715783))

(assert (= (and b!715783 res!478915) b!715778))

(assert (= (and b!715778 res!478920) b!715767))

(assert (= (and b!715767 res!478903) b!715775))

(assert (= (and b!715775 res!478905) b!715768))

(assert (= (and b!715768 res!478909) b!715772))

(assert (= (and b!715772 res!478912) b!715773))

(assert (= (and b!715773 res!478906) b!715771))

(assert (= (and b!715771 res!478916) b!715776))

(assert (= (and b!715776 res!478914) b!715770))

(assert (= (and b!715770 res!478907) b!715774))

(assert (= (and b!715774 res!478910) b!715782))

(assert (= (and b!715782 res!478908) b!715766))

(assert (= (and b!715766 res!478902) b!715779))

(assert (= (and b!715779 res!478917) b!715769))

(assert (= (and b!715769 res!478919) b!715781))

(assert (= (and b!715781 res!478918) b!715777))

(assert (= (and b!715777 res!478911) b!715784))

(declare-fun m!671925 () Bool)

(assert (=> b!715774 m!671925))

(declare-fun m!671927 () Bool)

(assert (=> b!715780 m!671927))

(declare-fun m!671929 () Bool)

(assert (=> b!715772 m!671929))

(declare-fun m!671931 () Bool)

(assert (=> start!63548 m!671931))

(declare-fun m!671933 () Bool)

(assert (=> b!715773 m!671933))

(declare-fun m!671935 () Bool)

(assert (=> b!715771 m!671935))

(declare-fun m!671937 () Bool)

(assert (=> b!715779 m!671937))

(assert (=> b!715779 m!671937))

(declare-fun m!671939 () Bool)

(assert (=> b!715779 m!671939))

(declare-fun m!671941 () Bool)

(assert (=> b!715768 m!671941))

(declare-fun m!671943 () Bool)

(assert (=> b!715778 m!671943))

(declare-fun m!671945 () Bool)

(assert (=> b!715770 m!671945))

(declare-fun m!671947 () Bool)

(assert (=> b!715782 m!671947))

(declare-fun m!671949 () Bool)

(assert (=> b!715783 m!671949))

(declare-fun m!671951 () Bool)

(assert (=> b!715781 m!671951))

(declare-fun m!671953 () Bool)

(assert (=> b!715784 m!671953))

(declare-fun m!671955 () Bool)

(assert (=> b!715784 m!671955))

(declare-fun m!671957 () Bool)

(assert (=> b!715784 m!671957))

(declare-fun m!671959 () Bool)

(assert (=> b!715767 m!671959))

(declare-fun m!671961 () Bool)

(assert (=> b!715776 m!671961))

(declare-fun m!671963 () Bool)

(assert (=> b!715777 m!671963))

(declare-fun m!671965 () Bool)

(assert (=> b!715775 m!671965))

(push 1)

(assert (not b!715772))

(assert (not b!715783))

(assert (not b!715777))

(assert (not b!715767))

(assert (not b!715770))

(assert (not b!715780))

(assert (not b!715782))

(assert (not b!715784))

(assert (not b!715775))

(assert (not b!715768))

(assert (not start!63548))

(assert (not b!715774))

(assert (not b!715771))

(assert (not b!715778))

(assert (not b!715773))

(assert (not b!715776))

(assert (not b!715779))

(assert (not b!715781))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!98357 () Bool)

(declare-fun lt!318817 () Bool)

(declare-fun content!375 (List!13485) (Set (_ BitVec 64)))

(assert (=> d!98357 (= lt!318817 (member k!2824 (content!375 newAcc!49)))))

(declare-fun e!401863 () Bool)

(assert (=> d!98357 (= lt!318817 e!401863)))

(declare-fun res!478961 () Bool)

(assert (=> d!98357 (=> (not res!478961) (not e!401863))))

(assert (=> d!98357 (= res!478961 (is-Cons!13481 newAcc!49))))

(assert (=> d!98357 (= (contains!4028 newAcc!49 k!2824) lt!318817)))

(declare-fun b!715829 () Bool)

(declare-fun e!401864 () Bool)

(assert (=> b!715829 (= e!401863 e!401864)))

(declare-fun res!478962 () Bool)

(assert (=> b!715829 (=> res!478962 e!401864)))

(assert (=> b!715829 (= res!478962 (= (h!14526 newAcc!49) k!2824))))

(declare-fun b!715830 () Bool)

(assert (=> b!715830 (= e!401864 (contains!4028 (t!19808 newAcc!49) k!2824))))

(assert (= (and d!98357 res!478961) b!715829))

(assert (= (and b!715829 (not res!478962)) b!715830))

(declare-fun m!671999 () Bool)

(assert (=> d!98357 m!671999))

(declare-fun m!672001 () Bool)

(assert (=> d!98357 m!672001))

(declare-fun m!672003 () Bool)

(assert (=> b!715830 m!672003))

(assert (=> b!715776 d!98357))

(declare-fun b!715870 () Bool)

(declare-fun e!401900 () Bool)

(declare-fun call!34639 () Bool)

(assert (=> b!715870 (= e!401900 call!34639)))

(declare-fun b!715871 () Bool)

(assert (=> b!715871 (= e!401900 call!34639)))

(declare-fun c!78808 () Bool)

(declare-fun bm!34636 () Bool)

(assert (=> bm!34636 (= call!34639 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969 #b00000000000000000000000000000001) (ite c!78808 (Cons!13481 (select (arr!19391 a!3591) (bvadd #b00000000000000000000000000000001 from!2969)) acc!652) acc!652)))))

(declare-fun d!98363 () Bool)

(declare-fun res!478988 () Bool)

(declare-fun e!401899 () Bool)

(assert (=> d!98363 (=> res!478988 e!401899)))

(assert (=> d!98363 (= res!478988 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) (size!19807 a!3591)))))

(assert (=> d!98363 (= (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) acc!652) e!401899)))

(declare-fun b!715872 () Bool)

(declare-fun e!401898 () Bool)

(assert (=> b!715872 (= e!401899 e!401898)))

(declare-fun res!478990 () Bool)

(assert (=> b!715872 (=> (not res!478990) (not e!401898))))

(declare-fun e!401897 () Bool)

(assert (=> b!715872 (= res!478990 (not e!401897))))

(declare-fun res!478989 () Bool)

(assert (=> b!715872 (=> (not res!478989) (not e!401897))))

(assert (=> b!715872 (= res!478989 (validKeyInArray!0 (select (arr!19391 a!3591) (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!715873 () Bool)

(assert (=> b!715873 (= e!401897 (contains!4028 acc!652 (select (arr!19391 a!3591) (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!715874 () Bool)

(assert (=> b!715874 (= e!401898 e!401900)))

(assert (=> b!715874 (= c!78808 (validKeyInArray!0 (select (arr!19391 a!3591) (bvadd #b00000000000000000000000000000001 from!2969))))))

(assert (= (and d!98363 (not res!478988)) b!715872))

(assert (= (and b!715872 res!478989) b!715873))

(assert (= (and b!715872 res!478990) b!715874))

(assert (= (and b!715874 c!78808) b!715871))

(assert (= (and b!715874 (not c!78808)) b!715870))

(assert (= (or b!715871 b!715870) bm!34636))

(declare-fun m!672027 () Bool)

(assert (=> bm!34636 m!672027))

(declare-fun m!672029 () Bool)

(assert (=> bm!34636 m!672029))

(assert (=> b!715872 m!672027))

(assert (=> b!715872 m!672027))

(declare-fun m!672033 () Bool)

(assert (=> b!715872 m!672033))

(assert (=> b!715873 m!672027))

(assert (=> b!715873 m!672027))

(declare-fun m!672035 () Bool)

(assert (=> b!715873 m!672035))

(assert (=> b!715874 m!672027))

(assert (=> b!715874 m!672027))

(assert (=> b!715874 m!672033))

(assert (=> b!715777 d!98363))

(declare-fun d!98379 () Bool)

(declare-fun res!479002 () Bool)

(declare-fun e!401913 () Bool)

(assert (=> d!98379 (=> res!479002 e!401913)))

(assert (=> d!98379 (= res!479002 (= (select (arr!19391 a!3591) from!2969) k!2824))))

(assert (=> d!98379 (= (arrayContainsKey!0 a!3591 k!2824 from!2969) e!401913)))

(declare-fun b!715888 () Bool)

(declare-fun e!401914 () Bool)

(assert (=> b!715888 (= e!401913 e!401914)))

(declare-fun res!479003 () Bool)

(assert (=> b!715888 (=> (not res!479003) (not e!401914))))

(assert (=> b!715888 (= res!479003 (bvslt (bvadd from!2969 #b00000000000000000000000000000001) (size!19807 a!3591)))))

(declare-fun b!715889 () Bool)

(assert (=> b!715889 (= e!401914 (arrayContainsKey!0 a!3591 k!2824 (bvadd from!2969 #b00000000000000000000000000000001)))))

(assert (= (and d!98379 (not res!479002)) b!715888))

(assert (= (and b!715888 res!479003) b!715889))

(assert (=> d!98379 m!671937))

(declare-fun m!672045 () Bool)

(assert (=> b!715889 m!672045))

(assert (=> b!715775 d!98379))

(declare-fun d!98383 () Bool)

(assert (=> d!98383 (= (validKeyInArray!0 (select (arr!19391 a!3591) from!2969)) (and (not (= (select (arr!19391 a!3591) from!2969) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!19391 a!3591) from!2969) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!715779 d!98383))

(declare-fun d!98387 () Bool)

(declare-fun lt!318826 () Bool)

(assert (=> d!98387 (= lt!318826 (member k!2824 (content!375 acc!652)))))

(declare-fun e!401924 () Bool)

(assert (=> d!98387 (= lt!318826 e!401924)))

(declare-fun res!479008 () Bool)

(assert (=> d!98387 (=> (not res!479008) (not e!401924))))

(assert (=> d!98387 (= res!479008 (is-Cons!13481 acc!652))))

(assert (=> d!98387 (= (contains!4028 acc!652 k!2824) lt!318826)))

(declare-fun b!715902 () Bool)

(declare-fun e!401925 () Bool)

(assert (=> b!715902 (= e!401924 e!401925)))

(declare-fun res!479009 () Bool)

(assert (=> b!715902 (=> res!479009 e!401925)))

(assert (=> b!715902 (= res!479009 (= (h!14526 acc!652) k!2824))))

(declare-fun b!715903 () Bool)

(assert (=> b!715903 (= e!401925 (contains!4028 (t!19808 acc!652) k!2824))))

(assert (= (and d!98387 res!479008) b!715902))

(assert (= (and b!715902 (not res!479009)) b!715903))

(declare-fun m!672053 () Bool)

(assert (=> d!98387 m!672053))

(declare-fun m!672055 () Bool)

(assert (=> d!98387 m!672055))

(declare-fun m!672059 () Bool)

(assert (=> b!715903 m!672059))

(assert (=> b!715768 d!98387))

(declare-fun d!98391 () Bool)

(declare-fun lt!318828 () Bool)

(assert (=> d!98391 (= lt!318828 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!375 acc!652)))))

(declare-fun e!401930 () Bool)

(assert (=> d!98391 (= lt!318828 e!401930)))

(declare-fun res!479014 () Bool)

(assert (=> d!98391 (=> (not res!479014) (not e!401930))))

(assert (=> d!98391 (= res!479014 (is-Cons!13481 acc!652))))

(assert (=> d!98391 (= (contains!4028 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000) lt!318828)))

(declare-fun b!715908 () Bool)

(declare-fun e!401931 () Bool)

(assert (=> b!715908 (= e!401930 e!401931)))

(declare-fun res!479015 () Bool)

(assert (=> b!715908 (=> res!479015 e!401931)))

(assert (=> b!715908 (= res!479015 (= (h!14526 acc!652) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!715909 () Bool)

(assert (=> b!715909 (= e!401931 (contains!4028 (t!19808 acc!652) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!98391 res!479014) b!715908))

(assert (= (and b!715908 (not res!479015)) b!715909))

(assert (=> d!98391 m!672053))

(declare-fun m!672065 () Bool)

(assert (=> d!98391 m!672065))

(declare-fun m!672067 () Bool)

(assert (=> b!715909 m!672067))

(assert (=> b!715767 d!98391))

(declare-fun d!98395 () Bool)

(assert (=> d!98395 (= (array_inv!15165 a!3591) (bvsge (size!19807 a!3591) #b00000000000000000000000000000000))))

(assert (=> start!63548 d!98395))

(declare-fun d!98397 () Bool)

(declare-fun lt!318829 () Bool)

(assert (=> d!98397 (= lt!318829 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!375 acc!652)))))

(declare-fun e!401932 () Bool)

(assert (=> d!98397 (= lt!318829 e!401932)))

(declare-fun res!479016 () Bool)

(assert (=> d!98397 (=> (not res!479016) (not e!401932))))

(assert (=> d!98397 (= res!479016 (is-Cons!13481 acc!652))))

(assert (=> d!98397 (= (contains!4028 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000) lt!318829)))

(declare-fun b!715910 () Bool)

(declare-fun e!401933 () Bool)

(assert (=> b!715910 (= e!401932 e!401933)))

(declare-fun res!479017 () Bool)

(assert (=> b!715910 (=> res!479017 e!401933)))

(assert (=> b!715910 (= res!479017 (= (h!14526 acc!652) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!715911 () Bool)

(assert (=> b!715911 (= e!401933 (contains!4028 (t!19808 acc!652) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!98397 res!479016) b!715910))

(assert (= (and b!715910 (not res!479017)) b!715911))

(assert (=> d!98397 m!672053))

(declare-fun m!672069 () Bool)

(assert (=> d!98397 m!672069))

(declare-fun m!672071 () Bool)

(assert (=> b!715911 m!672071))

(assert (=> b!715778 d!98397))

(declare-fun b!715947 () Bool)

(declare-fun e!401967 () Bool)

(declare-fun e!401969 () Bool)

(assert (=> b!715947 (= e!401967 e!401969)))

(declare-fun res!479052 () Bool)

(assert (=> b!715947 (=> (not res!479052) (not e!401969))))

(assert (=> b!715947 (= res!479052 (is-Cons!13481 newAcc!49))))

(declare-fun b!715948 () Bool)

(declare-fun e!401968 () Bool)

(assert (=> b!715948 (= e!401969 e!401968)))

(declare-fun res!479049 () Bool)

(assert (=> b!715948 (=> res!479049 e!401968)))

(declare-fun e!401970 () Bool)

(assert (=> b!715948 (= res!479049 e!401970)))

(declare-fun res!479050 () Bool)

(assert (=> b!715948 (=> (not res!479050) (not e!401970))))

(assert (=> b!715948 (= res!479050 (= (h!14526 acc!652) (h!14526 newAcc!49)))))

(declare-fun d!98399 () Bool)

(declare-fun res!479051 () Bool)

(assert (=> d!98399 (=> res!479051 e!401967)))

(assert (=> d!98399 (= res!479051 (is-Nil!13482 acc!652))))

(assert (=> d!98399 (= (subseq!472 acc!652 newAcc!49) e!401967)))

(declare-fun b!715949 () Bool)

(assert (=> b!715949 (= e!401970 (subseq!472 (t!19808 acc!652) (t!19808 newAcc!49)))))

(declare-fun b!715950 () Bool)

(assert (=> b!715950 (= e!401968 (subseq!472 acc!652 (t!19808 newAcc!49)))))

(assert (= (and d!98399 (not res!479051)) b!715947))

(assert (= (and b!715947 res!479052) b!715948))

(assert (= (and b!715948 res!479050) b!715949))

(assert (= (and b!715948 (not res!479049)) b!715950))

(declare-fun m!672091 () Bool)

(assert (=> b!715949 m!672091))

(declare-fun m!672093 () Bool)

(assert (=> b!715950 m!672093))

(assert (=> b!715771 d!98399))

(declare-fun d!98407 () Bool)

(declare-fun lt!318832 () Bool)

(assert (=> d!98407 (= lt!318832 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!375 newAcc!49)))))

(declare-fun e!401971 () Bool)

(assert (=> d!98407 (= lt!318832 e!401971)))

(declare-fun res!479053 () Bool)

(assert (=> d!98407 (=> (not res!479053) (not e!401971))))

(assert (=> d!98407 (= res!479053 (is-Cons!13481 newAcc!49))))

(assert (=> d!98407 (= (contains!4028 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000) lt!318832)))

(declare-fun b!715951 () Bool)

(declare-fun e!401972 () Bool)

(assert (=> b!715951 (= e!401971 e!401972)))

(declare-fun res!479054 () Bool)

(assert (=> b!715951 (=> res!479054 e!401972)))

(assert (=> b!715951 (= res!479054 (= (h!14526 newAcc!49) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!715952 () Bool)

(assert (=> b!715952 (= e!401972 (contains!4028 (t!19808 newAcc!49) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!98407 res!479053) b!715951))

(assert (= (and b!715951 (not res!479054)) b!715952))

(assert (=> d!98407 m!671999))

(declare-fun m!672095 () Bool)

(assert (=> d!98407 m!672095))

(declare-fun m!672097 () Bool)

(assert (=> b!715952 m!672097))

(assert (=> b!715782 d!98407))

(declare-fun d!98409 () Bool)

(declare-fun res!479076 () Bool)

(declare-fun e!401995 () Bool)

(assert (=> d!98409 (=> res!479076 e!401995)))

(assert (=> d!98409 (= res!479076 (is-Nil!13482 acc!652))))

(assert (=> d!98409 (= (noDuplicate!1275 acc!652) e!401995)))

(declare-fun b!715976 () Bool)

(declare-fun e!401996 () Bool)

(assert (=> b!715976 (= e!401995 e!401996)))

(declare-fun res!479077 () Bool)

(assert (=> b!715976 (=> (not res!479077) (not e!401996))))

(assert (=> b!715976 (= res!479077 (not (contains!4028 (t!19808 acc!652) (h!14526 acc!652))))))

(declare-fun b!715977 () Bool)

(assert (=> b!715977 (= e!401996 (noDuplicate!1275 (t!19808 acc!652)))))

(assert (= (and d!98409 (not res!479076)) b!715976))

(assert (= (and b!715976 res!479077) b!715977))

(declare-fun m!672119 () Bool)

(assert (=> b!715976 m!672119))

(declare-fun m!672121 () Bool)

(assert (=> b!715977 m!672121))

(assert (=> b!715780 d!98409))

(declare-fun d!98423 () Bool)

(declare-fun res!479078 () Bool)

(declare-fun e!401997 () Bool)

(assert (=> d!98423 (=> res!479078 e!401997)))

(assert (=> d!98423 (= res!479078 (= (select (arr!19391 a!3591) (bvadd #b00000000000000000000000000000001 from!2969)) k!2824))))

(assert (=> d!98423 (= (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969)) e!401997)))

(declare-fun b!715978 () Bool)

(declare-fun e!401998 () Bool)

(assert (=> b!715978 (= e!401997 e!401998)))

(declare-fun res!479079 () Bool)

(assert (=> b!715978 (=> (not res!479079) (not e!401998))))

(assert (=> b!715978 (= res!479079 (bvslt (bvadd #b00000000000000000000000000000001 from!2969 #b00000000000000000000000000000001) (size!19807 a!3591)))))

(declare-fun b!715979 () Bool)

(assert (=> b!715979 (= e!401998 (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969 #b00000000000000000000000000000001)))))

(assert (= (and d!98423 (not res!479078)) b!715978))

(assert (= (and b!715978 res!479079) b!715979))

(assert (=> d!98423 m!672027))

(declare-fun m!672123 () Bool)

(assert (=> b!715979 m!672123))

(assert (=> b!715781 d!98423))

(declare-fun bm!34647 () Bool)

