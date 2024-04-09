; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!63544 () Bool)

(assert start!63544)

(declare-fun b!715652 () Bool)

(declare-datatypes ((List!13483 0))(
  ( (Nil!13480) (Cons!13479 (h!14524 (_ BitVec 64)) (t!19806 List!13483)) )
))
(declare-fun newAcc!49 () List!13483)

(declare-fun from!2969 () (_ BitVec 32))

(declare-datatypes ((array!40512 0))(
  ( (array!40513 (arr!19389 (Array (_ BitVec 32) (_ BitVec 64))) (size!19805 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40512)

(declare-fun e!401807 () Bool)

(declare-fun arrayNoDuplicates!0 (array!40512 (_ BitVec 32) List!13483) Bool)

(assert (=> b!715652 (= e!401807 (not (arrayNoDuplicates!0 a!3591 from!2969 newAcc!49)))))

(assert (=> b!715652 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) newAcc!49)))

(declare-fun k!2824 () (_ BitVec 64))

(declare-datatypes ((Unit!24616 0))(
  ( (Unit!24617) )
))
(declare-fun lt!318800 () Unit!24616)

(declare-fun acc!652 () List!13483)

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!40512 (_ BitVec 64) (_ BitVec 32) List!13483 List!13483) Unit!24616)

(assert (=> b!715652 (= lt!318800 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969) acc!652 newAcc!49))))

(declare-fun b!715653 () Bool)

(declare-fun res!478802 () Bool)

(assert (=> b!715653 (=> (not res!478802) (not e!401807))))

(assert (=> b!715653 (= res!478802 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!715654 () Bool)

(declare-fun res!478805 () Bool)

(assert (=> b!715654 (=> (not res!478805) (not e!401807))))

(declare-fun arrayContainsKey!0 (array!40512 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!715654 (= res!478805 (not (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!715655 () Bool)

(declare-fun res!478795 () Bool)

(assert (=> b!715655 (=> (not res!478795) (not e!401807))))

(declare-fun contains!4026 (List!13483 (_ BitVec 64)) Bool)

(assert (=> b!715655 (= res!478795 (contains!4026 newAcc!49 k!2824))))

(declare-fun b!715656 () Bool)

(declare-fun res!478793 () Bool)

(assert (=> b!715656 (=> (not res!478793) (not e!401807))))

(declare-fun noDuplicate!1273 (List!13483) Bool)

(assert (=> b!715656 (= res!478793 (noDuplicate!1273 newAcc!49))))

(declare-fun b!715657 () Bool)

(declare-fun res!478806 () Bool)

(assert (=> b!715657 (=> (not res!478806) (not e!401807))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!715657 (= res!478806 (not (validKeyInArray!0 (select (arr!19389 a!3591) from!2969))))))

(declare-fun b!715658 () Bool)

(declare-fun res!478803 () Bool)

(assert (=> b!715658 (=> (not res!478803) (not e!401807))))

(declare-fun subseq!470 (List!13483 List!13483) Bool)

(assert (=> b!715658 (= res!478803 (subseq!470 acc!652 newAcc!49))))

(declare-fun b!715659 () Bool)

(declare-fun res!478789 () Bool)

(assert (=> b!715659 (=> (not res!478789) (not e!401807))))

(assert (=> b!715659 (= res!478789 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun b!715660 () Bool)

(declare-fun res!478792 () Bool)

(assert (=> b!715660 (=> (not res!478792) (not e!401807))))

(declare-fun -!435 (List!13483 (_ BitVec 64)) List!13483)

(assert (=> b!715660 (= res!478792 (= (-!435 newAcc!49 k!2824) acc!652))))

(declare-fun b!715661 () Bool)

(declare-fun res!478801 () Bool)

(assert (=> b!715661 (=> (not res!478801) (not e!401807))))

(assert (=> b!715661 (= res!478801 (noDuplicate!1273 acc!652))))

(declare-fun res!478788 () Bool)

(assert (=> start!63544 (=> (not res!478788) (not e!401807))))

(assert (=> start!63544 (= res!478788 (and (bvslt (size!19805 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19805 a!3591))))))

(assert (=> start!63544 e!401807))

(assert (=> start!63544 true))

(declare-fun array_inv!15163 (array!40512) Bool)

(assert (=> start!63544 (array_inv!15163 a!3591)))

(declare-fun b!715662 () Bool)

(declare-fun res!478791 () Bool)

(assert (=> b!715662 (=> (not res!478791) (not e!401807))))

(assert (=> b!715662 (= res!478791 (not (contains!4026 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!715663 () Bool)

(declare-fun res!478799 () Bool)

(assert (=> b!715663 (=> (not res!478799) (not e!401807))))

(assert (=> b!715663 (= res!478799 (not (contains!4026 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!715664 () Bool)

(declare-fun res!478798 () Bool)

(assert (=> b!715664 (=> (not res!478798) (not e!401807))))

(assert (=> b!715664 (= res!478798 (validKeyInArray!0 k!2824))))

(declare-fun b!715665 () Bool)

(declare-fun res!478797 () Bool)

(assert (=> b!715665 (=> (not res!478797) (not e!401807))))

(assert (=> b!715665 (= res!478797 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) acc!652))))

(declare-fun b!715666 () Bool)

(declare-fun res!478796 () Bool)

(assert (=> b!715666 (=> (not res!478796) (not e!401807))))

(assert (=> b!715666 (= res!478796 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19805 a!3591)))))

(declare-fun b!715667 () Bool)

(declare-fun res!478790 () Bool)

(assert (=> b!715667 (=> (not res!478790) (not e!401807))))

(assert (=> b!715667 (= res!478790 (not (contains!4026 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!715668 () Bool)

(declare-fun res!478800 () Bool)

(assert (=> b!715668 (=> (not res!478800) (not e!401807))))

(assert (=> b!715668 (= res!478800 (not (contains!4026 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!715669 () Bool)

(declare-fun res!478794 () Bool)

(assert (=> b!715669 (=> (not res!478794) (not e!401807))))

(assert (=> b!715669 (= res!478794 (not (contains!4026 acc!652 k!2824)))))

(declare-fun b!715670 () Bool)

(declare-fun res!478804 () Bool)

(assert (=> b!715670 (=> (not res!478804) (not e!401807))))

(assert (=> b!715670 (= res!478804 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(assert (= (and start!63544 res!478788) b!715661))

(assert (= (and b!715661 res!478801) b!715656))

(assert (= (and b!715656 res!478793) b!715663))

(assert (= (and b!715663 res!478799) b!715667))

(assert (= (and b!715667 res!478790) b!715670))

(assert (= (and b!715670 res!478804) b!715669))

(assert (= (and b!715669 res!478794) b!715664))

(assert (= (and b!715664 res!478798) b!715653))

(assert (= (and b!715653 res!478802) b!715658))

(assert (= (and b!715658 res!478803) b!715655))

(assert (= (and b!715655 res!478795) b!715660))

(assert (= (and b!715660 res!478792) b!715662))

(assert (= (and b!715662 res!478791) b!715668))

(assert (= (and b!715668 res!478800) b!715666))

(assert (= (and b!715666 res!478796) b!715657))

(assert (= (and b!715657 res!478806) b!715659))

(assert (= (and b!715659 res!478789) b!715654))

(assert (= (and b!715654 res!478805) b!715665))

(assert (= (and b!715665 res!478797) b!715652))

(declare-fun m!671841 () Bool)

(assert (=> b!715663 m!671841))

(declare-fun m!671843 () Bool)

(assert (=> b!715660 m!671843))

(declare-fun m!671845 () Bool)

(assert (=> b!715657 m!671845))

(assert (=> b!715657 m!671845))

(declare-fun m!671847 () Bool)

(assert (=> b!715657 m!671847))

(declare-fun m!671849 () Bool)

(assert (=> b!715669 m!671849))

(declare-fun m!671851 () Bool)

(assert (=> b!715670 m!671851))

(declare-fun m!671853 () Bool)

(assert (=> b!715654 m!671853))

(declare-fun m!671855 () Bool)

(assert (=> b!715665 m!671855))

(declare-fun m!671857 () Bool)

(assert (=> b!715655 m!671857))

(declare-fun m!671859 () Bool)

(assert (=> b!715664 m!671859))

(declare-fun m!671861 () Bool)

(assert (=> b!715668 m!671861))

(declare-fun m!671863 () Bool)

(assert (=> b!715662 m!671863))

(declare-fun m!671865 () Bool)

(assert (=> b!715661 m!671865))

(declare-fun m!671867 () Bool)

(assert (=> b!715656 m!671867))

(declare-fun m!671869 () Bool)

(assert (=> b!715653 m!671869))

(declare-fun m!671871 () Bool)

(assert (=> start!63544 m!671871))

(declare-fun m!671873 () Bool)

(assert (=> b!715667 m!671873))

(declare-fun m!671875 () Bool)

(assert (=> b!715658 m!671875))

(declare-fun m!671877 () Bool)

(assert (=> b!715652 m!671877))

(declare-fun m!671879 () Bool)

(assert (=> b!715652 m!671879))

(declare-fun m!671881 () Bool)

(assert (=> b!715652 m!671881))

(push 1)

(assert (not b!715660))

(assert (not b!715663))

(assert (not b!715664))

(assert (not b!715653))

(assert (not b!715665))

(assert (not b!715652))

(assert (not b!715657))

(assert (not b!715669))

(assert (not b!715655))

(assert (not b!715658))

(assert (not b!715662))

(assert (not b!715661))

(assert (not b!715667))

(assert (not b!715656))

(assert (not b!715670))

(assert (not b!715654))

(assert (not start!63544))

(assert (not b!715668))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!98355 () Bool)

(declare-fun lt!318816 () Bool)

(declare-fun content!374 (List!13483) (Set (_ BitVec 64)))

(assert (=> d!98355 (= lt!318816 (set.member k!2824 (content!374 newAcc!49)))))

(declare-fun e!401861 () Bool)

(assert (=> d!98355 (= lt!318816 e!401861)))

(declare-fun res!478959 () Bool)

(assert (=> d!98355 (=> (not res!478959) (not e!401861))))

(assert (=> d!98355 (= res!478959 (is-Cons!13479 newAcc!49))))

(assert (=> d!98355 (= (contains!4026 newAcc!49 k!2824) lt!318816)))

(declare-fun b!715827 () Bool)

(declare-fun e!401862 () Bool)

(assert (=> b!715827 (= e!401861 e!401862)))

(declare-fun res!478960 () Bool)

(assert (=> b!715827 (=> res!478960 e!401862)))

(assert (=> b!715827 (= res!478960 (= (h!14524 newAcc!49) k!2824))))

(declare-fun b!715828 () Bool)

(assert (=> b!715828 (= e!401862 (contains!4026 (t!19806 newAcc!49) k!2824))))

(assert (= (and d!98355 res!478959) b!715827))

(assert (= (and b!715827 (not res!478960)) b!715828))

(declare-fun m!671993 () Bool)

(assert (=> d!98355 m!671993))

(declare-fun m!671995 () Bool)

(assert (=> d!98355 m!671995))

(declare-fun m!671997 () Bool)

(assert (=> b!715828 m!671997))

(assert (=> b!715655 d!98355))

(declare-fun d!98359 () Bool)

(assert (=> d!98359 (= (array_inv!15163 a!3591) (bvsge (size!19805 a!3591) #b00000000000000000000000000000000))))

(assert (=> start!63544 d!98359))

(declare-fun d!98361 () Bool)

(assert (=> d!98361 (= (validKeyInArray!0 k!2824) (and (not (= k!2824 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2824 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!715664 d!98361))

(declare-fun b!715875 () Bool)

(declare-fun e!401901 () Bool)

(declare-fun e!401903 () Bool)

(assert (=> b!715875 (= e!401901 e!401903)))

(declare-fun c!78809 () Bool)

(assert (=> b!715875 (= c!78809 (validKeyInArray!0 (select (arr!19389 a!3591) (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun bm!34637 () Bool)

(declare-fun call!34640 () Bool)

(assert (=> bm!34637 (= call!34640 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969 #b00000000000000000000000000000001) (ite c!78809 (Cons!13479 (select (arr!19389 a!3591) (bvadd #b00000000000000000000000000000001 from!2969)) acc!652) acc!652)))))

(declare-fun e!401904 () Bool)

(declare-fun b!715876 () Bool)

(assert (=> b!715876 (= e!401904 (contains!4026 acc!652 (select (arr!19389 a!3591) (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!715877 () Bool)

(assert (=> b!715877 (= e!401903 call!34640)))

(declare-fun b!715878 () Bool)

(assert (=> b!715878 (= e!401903 call!34640)))

(declare-fun b!715879 () Bool)

(declare-fun e!401902 () Bool)

(assert (=> b!715879 (= e!401902 e!401901)))

(declare-fun res!478993 () Bool)

(assert (=> b!715879 (=> (not res!478993) (not e!401901))))

(assert (=> b!715879 (= res!478993 (not e!401904))))

(declare-fun res!478992 () Bool)

(assert (=> b!715879 (=> (not res!478992) (not e!401904))))

(assert (=> b!715879 (= res!478992 (validKeyInArray!0 (select (arr!19389 a!3591) (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun d!98365 () Bool)

(declare-fun res!478991 () Bool)

(assert (=> d!98365 (=> res!478991 e!401902)))

(assert (=> d!98365 (= res!478991 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) (size!19805 a!3591)))))

(assert (=> d!98365 (= (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) acc!652) e!401902)))

(assert (= (and d!98365 (not res!478991)) b!715879))

(assert (= (and b!715879 res!478992) b!715876))

(assert (= (and b!715879 res!478993) b!715875))

(assert (= (and b!715875 c!78809) b!715877))

(assert (= (and b!715875 (not c!78809)) b!715878))

(assert (= (or b!715877 b!715878) bm!34637))

(declare-fun m!672037 () Bool)

(assert (=> b!715875 m!672037))

(assert (=> b!715875 m!672037))

(declare-fun m!672039 () Bool)

(assert (=> b!715875 m!672039))

(assert (=> bm!34637 m!672037))

(declare-fun m!672041 () Bool)

(assert (=> bm!34637 m!672041))

(assert (=> b!715876 m!672037))

(assert (=> b!715876 m!672037))

(declare-fun m!672043 () Bool)

(assert (=> b!715876 m!672043))

(assert (=> b!715879 m!672037))

(assert (=> b!715879 m!672037))

(assert (=> b!715879 m!672039))

(assert (=> b!715665 d!98365))

(declare-fun d!98381 () Bool)

(declare-fun res!479004 () Bool)

(declare-fun e!401920 () Bool)

(assert (=> d!98381 (=> res!479004 e!401920)))

(assert (=> d!98381 (= res!479004 (= (select (arr!19389 a!3591) (bvadd #b00000000000000000000000000000001 from!2969)) k!2824))))

(assert (=> d!98381 (= (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969)) e!401920)))

(declare-fun b!715898 () Bool)

(declare-fun e!401921 () Bool)

(assert (=> b!715898 (= e!401920 e!401921)))

(declare-fun res!479005 () Bool)

(assert (=> b!715898 (=> (not res!479005) (not e!401921))))

(assert (=> b!715898 (= res!479005 (bvslt (bvadd #b00000000000000000000000000000001 from!2969 #b00000000000000000000000000000001) (size!19805 a!3591)))))

(declare-fun b!715899 () Bool)

(assert (=> b!715899 (= e!401921 (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969 #b00000000000000000000000000000001)))))

(assert (= (and d!98381 (not res!479004)) b!715898))

(assert (= (and b!715898 res!479005) b!715899))

(assert (=> d!98381 m!672037))

(declare-fun m!672047 () Bool)

(assert (=> b!715899 m!672047))

(assert (=> b!715654 d!98381))

(declare-fun d!98385 () Bool)

(declare-fun lt!318825 () Bool)

(assert (=> d!98385 (= lt!318825 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!374 newAcc!49)))))

(declare-fun e!401922 () Bool)

(assert (=> d!98385 (= lt!318825 e!401922)))

(declare-fun res!479006 () Bool)

(assert (=> d!98385 (=> (not res!479006) (not e!401922))))

(assert (=> d!98385 (= res!479006 (is-Cons!13479 newAcc!49))))

(assert (=> d!98385 (= (contains!4026 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000) lt!318825)))

(declare-fun b!715900 () Bool)

(declare-fun e!401923 () Bool)

(assert (=> b!715900 (= e!401922 e!401923)))

(declare-fun res!479007 () Bool)

(assert (=> b!715900 (=> res!479007 e!401923)))

(assert (=> b!715900 (= res!479007 (= (h!14524 newAcc!49) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!715901 () Bool)

(assert (=> b!715901 (= e!401923 (contains!4026 (t!19806 newAcc!49) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!98385 res!479006) b!715900))

(assert (= (and b!715900 (not res!479007)) b!715901))

(assert (=> d!98385 m!671993))

(declare-fun m!672049 () Bool)

(assert (=> d!98385 m!672049))

(declare-fun m!672051 () Bool)

(assert (=> b!715901 m!672051))

(assert (=> b!715668 d!98385))

(declare-fun d!98389 () Bool)

(declare-fun lt!318827 () Bool)

(assert (=> d!98389 (= lt!318827 (set.member k!2824 (content!374 acc!652)))))

(declare-fun e!401926 () Bool)

(assert (=> d!98389 (= lt!318827 e!401926)))

(declare-fun res!479010 () Bool)

(assert (=> d!98389 (=> (not res!479010) (not e!401926))))

(assert (=> d!98389 (= res!479010 (is-Cons!13479 acc!652))))

(assert (=> d!98389 (= (contains!4026 acc!652 k!2824) lt!318827)))

(declare-fun b!715904 () Bool)

(declare-fun e!401927 () Bool)

(assert (=> b!715904 (= e!401926 e!401927)))

(declare-fun res!479011 () Bool)

(assert (=> b!715904 (=> res!479011 e!401927)))

(assert (=> b!715904 (= res!479011 (= (h!14524 acc!652) k!2824))))

(declare-fun b!715905 () Bool)

(assert (=> b!715905 (= e!401927 (contains!4026 (t!19806 acc!652) k!2824))))

(assert (= (and d!98389 res!479010) b!715904))

(assert (= (and b!715904 (not res!479011)) b!715905))

(declare-fun m!672057 () Bool)

(assert (=> d!98389 m!672057))

(declare-fun m!672061 () Bool)

(assert (=> d!98389 m!672061))

(declare-fun m!672063 () Bool)

(assert (=> b!715905 m!672063))

(assert (=> b!715669 d!98389))

(declare-fun d!98393 () Bool)

(declare-fun res!479036 () Bool)

(declare-fun e!401956 () Bool)

(assert (=> d!98393 (=> res!479036 e!401956)))

(assert (=> d!98393 (= res!479036 (is-Nil!13480 acc!652))))

(assert (=> d!98393 (= (subseq!470 acc!652 newAcc!49) e!401956)))

(declare-fun b!715936 () Bool)

(declare-fun e!401954 () Bool)

(assert (=> b!715936 (= e!401954 (subseq!470 acc!652 (t!19806 newAcc!49)))))

(declare-fun b!715935 () Bool)

(declare-fun e!401953 () Bool)

(assert (=> b!715935 (= e!401953 (subseq!470 (t!19806 acc!652) (t!19806 newAcc!49)))))

(declare-fun b!715934 () Bool)

(declare-fun e!401955 () Bool)

(assert (=> b!715934 (= e!401955 e!401954)))

(declare-fun res!479037 () Bool)

(assert (=> b!715934 (=> res!479037 e!401954)))

(assert (=> b!715934 (= res!479037 e!401953)))

(declare-fun res!479038 () Bool)

(assert (=> b!715934 (=> (not res!479038) (not e!401953))))

(assert (=> b!715934 (= res!479038 (= (h!14524 acc!652) (h!14524 newAcc!49)))))

(declare-fun b!715933 () Bool)

(assert (=> b!715933 (= e!401956 e!401955)))

(declare-fun res!479035 () Bool)

(assert (=> b!715933 (=> (not res!479035) (not e!401955))))

(assert (=> b!715933 (= res!479035 (is-Cons!13479 newAcc!49))))

(assert (= (and d!98393 (not res!479036)) b!715933))

(assert (= (and b!715933 res!479035) b!715934))

(assert (= (and b!715934 res!479038) b!715935))

(assert (= (and b!715934 (not res!479037)) b!715936))

(declare-fun m!672083 () Bool)

(assert (=> b!715936 m!672083))

(declare-fun m!672085 () Bool)

(assert (=> b!715935 m!672085))

(assert (=> b!715658 d!98393))

(declare-fun d!98403 () Bool)

(declare-fun lt!318831 () Bool)

(assert (=> d!98403 (= lt!318831 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!374 acc!652)))))

(declare-fun e!401959 () Bool)

(assert (=> d!98403 (= lt!318831 e!401959)))

(declare-fun res!479041 () Bool)

(assert (=> d!98403 (=> (not res!479041) (not e!401959))))

(assert (=> d!98403 (= res!479041 (is-Cons!13479 acc!652))))

(assert (=> d!98403 (= (contains!4026 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000) lt!318831)))

(declare-fun b!715939 () Bool)

(declare-fun e!401960 () Bool)

(assert (=> b!715939 (= e!401959 e!401960)))

(declare-fun res!479042 () Bool)

(assert (=> b!715939 (=> res!479042 e!401960)))

(assert (=> b!715939 (= res!479042 (= (h!14524 acc!652) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!715940 () Bool)

(assert (=> b!715940 (= e!401960 (contains!4026 (t!19806 acc!652) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!98403 res!479041) b!715939))

(assert (= (and b!715939 (not res!479042)) b!715940))

(assert (=> d!98403 m!672057))

(declare-fun m!672087 () Bool)

(assert (=> d!98403 m!672087))

(declare-fun m!672089 () Bool)

(assert (=> b!715940 m!672089))

(assert (=> b!715667 d!98403))

(declare-fun d!98405 () Bool)

(declare-fun res!479066 () Bool)

(declare-fun e!401985 () Bool)

(assert (=> d!98405 (=> res!479066 e!401985)))

(assert (=> d!98405 (= res!479066 (is-Nil!13480 newAcc!49))))

(assert (=> d!98405 (= (noDuplicate!1273 newAcc!49) e!401985)))

(declare-fun b!715966 () Bool)

(declare-fun e!401986 () Bool)

(assert (=> b!715966 (= e!401985 e!401986)))

(declare-fun res!479067 () Bool)

(assert (=> b!715966 (=> (not res!479067) (not e!401986))))

(assert (=> b!715966 (= res!479067 (not (contains!4026 (t!19806 newAcc!49) (h!14524 newAcc!49))))))

(declare-fun b!715967 () Bool)

(assert (=> b!715967 (= e!401986 (noDuplicate!1273 (t!19806 newAcc!49)))))

(assert (= (and d!98405 (not res!479066)) b!715966))

(assert (= (and b!715966 res!479067) b!715967))

(declare-fun m!672105 () Bool)

(assert (=> b!715966 m!672105))

(declare-fun m!672107 () Bool)

(assert (=> b!715967 m!672107))

(assert (=> b!715656 d!98405))

(declare-fun d!98413 () Bool)

(assert (=> d!98413 (= (validKeyInArray!0 (select (arr!19389 a!3591) from!2969)) (and (not (= (select (arr!19389 a!3591) from!2969) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!19389 a!3591) from!2969) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!715657 d!98413))

(declare-fun bm!34646 () Bool)

(declare-fun call!34649 () List!13483)

(assert (=> bm!34646 (= call!34649 (-!435 (t!19806 newAcc!49) k!2824))))

(declare-fun b!716000 () Bool)

(declare-fun e!402014 () List!13483)

(assert (=> b!716000 (= e!402014 call!34649)))

(declare-fun d!98417 () Bool)

(declare-fun e!402013 () Bool)

(assert (=> d!98417 e!402013))

(declare-fun res!479084 () Bool)

(assert (=> d!98417 (=> (not res!479084) (not e!402013))))

(declare-fun lt!318838 () List!13483)

(declare-fun size!19809 (List!13483) Int)

(assert (=> d!98417 (= res!479084 (<= (size!19809 lt!318838) (size!19809 newAcc!49)))))

(declare-fun e!402015 () List!13483)

(assert (=> d!98417 (= lt!318838 e!402015)))

(declare-fun c!78826 () Bool)

(assert (=> d!98417 (= c!78826 (is-Cons!13479 newAcc!49))))

(assert (=> d!98417 (= (-!435 newAcc!49 k!2824) lt!318838)))

(declare-fun b!716001 () Bool)

(assert (=> b!716001 (= e!402015 Nil!13480)))

(declare-fun b!716002 () Bool)

(assert (=> b!716002 (= e!402014 (Cons!13479 (h!14524 newAcc!49) call!34649))))

(declare-fun b!716003 () Bool)

(assert (=> b!716003 (= e!402013 (= (content!374 lt!318838) (set.minus (content!374 newAcc!49) (set.insert k!2824 (as set.empty (Set (_ BitVec 64)))))))))

(declare-fun b!716004 () Bool)

(assert (=> b!716004 (= e!402015 e!402014)))

(declare-fun c!78825 () Bool)

(assert (=> b!716004 (= c!78825 (= k!2824 (h!14524 newAcc!49)))))

(assert (= (and d!98417 c!78826) b!716004))

(assert (= (and d!98417 (not c!78826)) b!716001))

(assert (= (and b!716004 c!78825) b!716000))

(assert (= (and b!716004 (not c!78825)) b!716002))

(assert (= (or b!716000 b!716002) bm!34646))

(assert (= (and d!98417 res!479084) b!716003))

(declare-fun m!672125 () Bool)

(assert (=> bm!34646 m!672125))

(declare-fun m!672127 () Bool)

(assert (=> d!98417 m!672127))

(declare-fun m!672129 () Bool)

(assert (=> d!98417 m!672129))

(declare-fun m!672131 () Bool)

(assert (=> b!716003 m!672131))

(assert (=> b!716003 m!671993))

(declare-fun m!672133 () Bool)

(assert (=> b!716003 m!672133))

(assert (=> b!715660 d!98417))

(declare-fun d!98427 () Bool)

(declare-fun res!479085 () Bool)

(declare-fun e!402016 () Bool)

(assert (=> d!98427 (=> res!479085 e!402016)))

(assert (=> d!98427 (= res!479085 (is-Nil!13480 acc!652))))

(assert (=> d!98427 (= (noDuplicate!1273 acc!652) e!402016)))

(declare-fun b!716005 () Bool)

(declare-fun e!402017 () Bool)

(assert (=> b!716005 (= e!402016 e!402017)))

(declare-fun res!479086 () Bool)

(assert (=> b!716005 (=> (not res!479086) (not e!402017))))

(assert (=> b!716005 (= res!479086 (not (contains!4026 (t!19806 acc!652) (h!14524 acc!652))))))

(declare-fun b!716006 () Bool)

(assert (=> b!716006 (= e!402017 (noDuplicate!1273 (t!19806 acc!652)))))

(assert (= (and d!98427 (not res!479085)) b!716005))

(assert (= (and b!716005 res!479086) b!716006))

(declare-fun m!672135 () Bool)

(assert (=> b!716005 m!672135))

(declare-fun m!672137 () Bool)

(assert (=> b!716006 m!672137))

(assert (=> b!715661 d!98427))

(declare-fun d!98429 () Bool)

(declare-fun res!479087 () Bool)

(declare-fun e!402018 () Bool)

(assert (=> d!98429 (=> res!479087 e!402018)))

(assert (=> d!98429 (= res!479087 (= (select (arr!19389 a!3591) from!2969) k!2824))))

(assert (=> d!98429 (= (arrayContainsKey!0 a!3591 k!2824 from!2969) e!402018)))

(declare-fun b!716007 () Bool)

(declare-fun e!402019 () Bool)

(assert (=> b!716007 (= e!402018 e!402019)))

(declare-fun res!479088 () Bool)

(assert (=> b!716007 (=> (not res!479088) (not e!402019))))

(assert (=> b!716007 (= res!479088 (bvslt (bvadd from!2969 #b00000000000000000000000000000001) (size!19805 a!3591)))))

(declare-fun b!716008 () Bool)

(assert (=> b!716008 (= e!402019 (arrayContainsKey!0 a!3591 k!2824 (bvadd from!2969 #b00000000000000000000000000000001)))))

(assert (= (and d!98429 (not res!479087)) b!716007))

(assert (= (and b!716007 res!479088) b!716008))

(assert (=> d!98429 m!671845))

(declare-fun m!672139 () Bool)

(assert (=> b!716008 m!672139))

(assert (=> b!715670 d!98429))

(declare-fun d!98431 () Bool)

(declare-fun lt!318840 () Bool)

(assert (=> d!98431 (= lt!318840 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!374 acc!652)))))

(declare-fun e!402023 () Bool)

(assert (=> d!98431 (= lt!318840 e!402023)))

(declare-fun res!479090 () Bool)

(assert (=> d!98431 (=> (not res!479090) (not e!402023))))

(assert (=> d!98431 (= res!479090 (is-Cons!13479 acc!652))))

(assert (=> d!98431 (= (contains!4026 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000) lt!318840)))

(declare-fun b!716014 () Bool)

(declare-fun e!402024 () Bool)

(assert (=> b!716014 (= e!402023 e!402024)))

(declare-fun res!479091 () Bool)

(assert (=> b!716014 (=> res!479091 e!402024)))

(assert (=> b!716014 (= res!479091 (= (h!14524 acc!652) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!716015 () Bool)

(assert (=> b!716015 (= e!402024 (contains!4026 (t!19806 acc!652) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!98431 res!479090) b!716014))

(assert (= (and b!716014 (not res!479091)) b!716015))

(assert (=> d!98431 m!672057))

(declare-fun m!672141 () Bool)

(assert (=> d!98431 m!672141))

(declare-fun m!672143 () Bool)

(assert (=> b!716015 m!672143))

(assert (=> b!715663 d!98431))

(declare-fun b!716016 () Bool)

(declare-fun e!402025 () Bool)

(declare-fun e!402027 () Bool)

(assert (=> b!716016 (= e!402025 e!402027)))

(declare-fun c!78829 () Bool)

(assert (=> b!716016 (= c!78829 (validKeyInArray!0 (select (arr!19389 a!3591) from!2969)))))

(declare-fun bm!34648 () Bool)

(declare-fun call!34651 () Bool)

(assert (=> bm!34648 (= call!34651 (arrayNoDuplicates!0 a!3591 (bvadd from!2969 #b00000000000000000000000000000001) (ite c!78829 (Cons!13479 (select (arr!19389 a!3591) from!2969) newAcc!49) newAcc!49)))))

(declare-fun b!716017 () Bool)

(declare-fun e!402028 () Bool)

(assert (=> b!716017 (= e!402028 (contains!4026 newAcc!49 (select (arr!19389 a!3591) from!2969)))))

(declare-fun b!716018 () Bool)

(assert (=> b!716018 (= e!402027 call!34651)))

(declare-fun b!716019 () Bool)

(assert (=> b!716019 (= e!402027 call!34651)))

(declare-fun b!716020 () Bool)

(declare-fun e!402026 () Bool)

(assert (=> b!716020 (= e!402026 e!402025)))

(declare-fun res!479094 () Bool)

(assert (=> b!716020 (=> (not res!479094) (not e!402025))))

(assert (=> b!716020 (= res!479094 (not e!402028))))

(declare-fun res!479093 () Bool)

(assert (=> b!716020 (=> (not res!479093) (not e!402028))))

(assert (=> b!716020 (= res!479093 (validKeyInArray!0 (select (arr!19389 a!3591) from!2969)))))

(declare-fun d!98433 () Bool)

(declare-fun res!479092 () Bool)

(assert (=> d!98433 (=> res!479092 e!402026)))

(assert (=> d!98433 (= res!479092 (bvsge from!2969 (size!19805 a!3591)))))

(assert (=> d!98433 (= (arrayNoDuplicates!0 a!3591 from!2969 newAcc!49) e!402026)))

(assert (= (and d!98433 (not res!479092)) b!716020))

(assert (= (and b!716020 res!479093) b!716017))

(assert (= (and b!716020 res!479094) b!716016))

(assert (= (and b!716016 c!78829) b!716018))

(assert (= (and b!716016 (not c!78829)) b!716019))

(assert (= (or b!716018 b!716019) bm!34648))

(assert (=> b!716016 m!671845))

(assert (=> b!716016 m!671845))

(assert (=> b!716016 m!671847))

(assert (=> bm!34648 m!671845))

(declare-fun m!672155 () Bool)

(assert (=> bm!34648 m!672155))

(assert (=> b!716017 m!671845))

(assert (=> b!716017 m!671845))

(declare-fun m!672157 () Bool)

(assert (=> b!716017 m!672157))

(assert (=> b!716020 m!671845))

(assert (=> b!716020 m!671845))

(assert (=> b!716020 m!671847))

(assert (=> b!715652 d!98433))

(declare-fun b!716026 () Bool)

(declare-fun e!402033 () Bool)

(declare-fun e!402035 () Bool)

(assert (=> b!716026 (= e!402033 e!402035)))

(declare-fun c!78831 () Bool)

(assert (=> b!716026 (= c!78831 (validKeyInArray!0 (select (arr!19389 a!3591) (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun bm!34650 () Bool)

(declare-fun call!34653 () Bool)

(assert (=> bm!34650 (= call!34653 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969 #b00000000000000000000000000000001) (ite c!78831 (Cons!13479 (select (arr!19389 a!3591) (bvadd #b00000000000000000000000000000001 from!2969)) newAcc!49) newAcc!49)))))

(declare-fun b!716027 () Bool)

