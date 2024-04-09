; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!63546 () Bool)

(assert start!63546)

(declare-fun b!715709 () Bool)

(declare-fun res!478863 () Bool)

(declare-fun e!401814 () Bool)

(assert (=> b!715709 (=> (not res!478863) (not e!401814))))

(declare-datatypes ((List!13484 0))(
  ( (Nil!13481) (Cons!13480 (h!14525 (_ BitVec 64)) (t!19807 List!13484)) )
))
(declare-fun newAcc!49 () List!13484)

(declare-fun contains!4027 (List!13484 (_ BitVec 64)) Bool)

(assert (=> b!715709 (= res!478863 (not (contains!4027 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!715710 () Bool)

(declare-fun res!478857 () Bool)

(assert (=> b!715710 (=> (not res!478857) (not e!401814))))

(declare-fun acc!652 () List!13484)

(assert (=> b!715710 (= res!478857 (not (contains!4027 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!715711 () Bool)

(declare-fun res!478851 () Bool)

(assert (=> b!715711 (=> (not res!478851) (not e!401814))))

(declare-fun k0!2824 () (_ BitVec 64))

(assert (=> b!715711 (= res!478851 (contains!4027 newAcc!49 k0!2824))))

(declare-fun b!715712 () Bool)

(declare-fun res!478845 () Bool)

(assert (=> b!715712 (=> (not res!478845) (not e!401814))))

(declare-fun from!2969 () (_ BitVec 32))

(declare-datatypes ((array!40514 0))(
  ( (array!40515 (arr!19390 (Array (_ BitVec 32) (_ BitVec 64))) (size!19806 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40514)

(declare-fun arrayNoDuplicates!0 (array!40514 (_ BitVec 32) List!13484) Bool)

(assert (=> b!715712 (= res!478845 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) acc!652))))

(declare-fun res!478854 () Bool)

(assert (=> start!63546 (=> (not res!478854) (not e!401814))))

(assert (=> start!63546 (= res!478854 (and (bvslt (size!19806 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19806 a!3591))))))

(assert (=> start!63546 e!401814))

(assert (=> start!63546 true))

(declare-fun array_inv!15164 (array!40514) Bool)

(assert (=> start!63546 (array_inv!15164 a!3591)))

(declare-fun b!715713 () Bool)

(declare-fun res!478850 () Bool)

(assert (=> b!715713 (=> (not res!478850) (not e!401814))))

(declare-fun arrayContainsKey!0 (array!40514 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!715713 (= res!478850 (not (arrayContainsKey!0 a!3591 k0!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!715714 () Bool)

(declare-fun res!478858 () Bool)

(assert (=> b!715714 (=> (not res!478858) (not e!401814))))

(declare-fun subseq!471 (List!13484 List!13484) Bool)

(assert (=> b!715714 (= res!478858 (subseq!471 acc!652 newAcc!49))))

(declare-fun b!715715 () Bool)

(declare-fun res!478846 () Bool)

(assert (=> b!715715 (=> (not res!478846) (not e!401814))))

(assert (=> b!715715 (= res!478846 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!715716 () Bool)

(assert (=> b!715716 (= e!401814 (not (arrayNoDuplicates!0 a!3591 from!2969 newAcc!49)))))

(assert (=> b!715716 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) newAcc!49)))

(declare-datatypes ((Unit!24618 0))(
  ( (Unit!24619) )
))
(declare-fun lt!318803 () Unit!24618)

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!40514 (_ BitVec 64) (_ BitVec 32) List!13484 List!13484) Unit!24618)

(assert (=> b!715716 (= lt!318803 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3591 k0!2824 (bvadd #b00000000000000000000000000000001 from!2969) acc!652 newAcc!49))))

(declare-fun b!715717 () Bool)

(declare-fun res!478855 () Bool)

(assert (=> b!715717 (=> (not res!478855) (not e!401814))))

(declare-fun noDuplicate!1274 (List!13484) Bool)

(assert (=> b!715717 (= res!478855 (noDuplicate!1274 acc!652))))

(declare-fun b!715718 () Bool)

(declare-fun res!478862 () Bool)

(assert (=> b!715718 (=> (not res!478862) (not e!401814))))

(assert (=> b!715718 (= res!478862 (not (contains!4027 acc!652 k0!2824)))))

(declare-fun b!715719 () Bool)

(declare-fun res!478861 () Bool)

(assert (=> b!715719 (=> (not res!478861) (not e!401814))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!715719 (= res!478861 (validKeyInArray!0 k0!2824))))

(declare-fun b!715720 () Bool)

(declare-fun res!478856 () Bool)

(assert (=> b!715720 (=> (not res!478856) (not e!401814))))

(assert (=> b!715720 (= res!478856 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19806 a!3591)))))

(declare-fun b!715721 () Bool)

(declare-fun res!478848 () Bool)

(assert (=> b!715721 (=> (not res!478848) (not e!401814))))

(assert (=> b!715721 (= res!478848 (noDuplicate!1274 newAcc!49))))

(declare-fun b!715722 () Bool)

(declare-fun res!478847 () Bool)

(assert (=> b!715722 (=> (not res!478847) (not e!401814))))

(assert (=> b!715722 (= res!478847 (not (validKeyInArray!0 (select (arr!19390 a!3591) from!2969))))))

(declare-fun b!715723 () Bool)

(declare-fun res!478859 () Bool)

(assert (=> b!715723 (=> (not res!478859) (not e!401814))))

(assert (=> b!715723 (= res!478859 (not (arrayContainsKey!0 a!3591 k0!2824 from!2969)))))

(declare-fun b!715724 () Bool)

(declare-fun res!478852 () Bool)

(assert (=> b!715724 (=> (not res!478852) (not e!401814))))

(assert (=> b!715724 (= res!478852 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun b!715725 () Bool)

(declare-fun res!478860 () Bool)

(assert (=> b!715725 (=> (not res!478860) (not e!401814))))

(declare-fun -!436 (List!13484 (_ BitVec 64)) List!13484)

(assert (=> b!715725 (= res!478860 (= (-!436 newAcc!49 k0!2824) acc!652))))

(declare-fun b!715726 () Bool)

(declare-fun res!478849 () Bool)

(assert (=> b!715726 (=> (not res!478849) (not e!401814))))

(assert (=> b!715726 (= res!478849 (not (contains!4027 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!715727 () Bool)

(declare-fun res!478853 () Bool)

(assert (=> b!715727 (=> (not res!478853) (not e!401814))))

(assert (=> b!715727 (= res!478853 (not (contains!4027 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!63546 res!478854) b!715717))

(assert (= (and b!715717 res!478855) b!715721))

(assert (= (and b!715721 res!478848) b!715710))

(assert (= (and b!715710 res!478857) b!715727))

(assert (= (and b!715727 res!478853) b!715723))

(assert (= (and b!715723 res!478859) b!715718))

(assert (= (and b!715718 res!478862) b!715719))

(assert (= (and b!715719 res!478861) b!715715))

(assert (= (and b!715715 res!478846) b!715714))

(assert (= (and b!715714 res!478858) b!715711))

(assert (= (and b!715711 res!478851) b!715725))

(assert (= (and b!715725 res!478860) b!715726))

(assert (= (and b!715726 res!478849) b!715709))

(assert (= (and b!715709 res!478863) b!715720))

(assert (= (and b!715720 res!478856) b!715722))

(assert (= (and b!715722 res!478847) b!715724))

(assert (= (and b!715724 res!478852) b!715713))

(assert (= (and b!715713 res!478850) b!715712))

(assert (= (and b!715712 res!478845) b!715716))

(declare-fun m!671883 () Bool)

(assert (=> b!715722 m!671883))

(assert (=> b!715722 m!671883))

(declare-fun m!671885 () Bool)

(assert (=> b!715722 m!671885))

(declare-fun m!671887 () Bool)

(assert (=> b!715718 m!671887))

(declare-fun m!671889 () Bool)

(assert (=> b!715711 m!671889))

(declare-fun m!671891 () Bool)

(assert (=> b!715714 m!671891))

(declare-fun m!671893 () Bool)

(assert (=> b!715725 m!671893))

(declare-fun m!671895 () Bool)

(assert (=> b!715727 m!671895))

(declare-fun m!671897 () Bool)

(assert (=> b!715719 m!671897))

(declare-fun m!671899 () Bool)

(assert (=> b!715712 m!671899))

(declare-fun m!671901 () Bool)

(assert (=> b!715709 m!671901))

(declare-fun m!671903 () Bool)

(assert (=> b!715710 m!671903))

(declare-fun m!671905 () Bool)

(assert (=> b!715723 m!671905))

(declare-fun m!671907 () Bool)

(assert (=> b!715713 m!671907))

(declare-fun m!671909 () Bool)

(assert (=> b!715717 m!671909))

(declare-fun m!671911 () Bool)

(assert (=> b!715716 m!671911))

(declare-fun m!671913 () Bool)

(assert (=> b!715716 m!671913))

(declare-fun m!671915 () Bool)

(assert (=> b!715716 m!671915))

(declare-fun m!671917 () Bool)

(assert (=> b!715721 m!671917))

(declare-fun m!671919 () Bool)

(assert (=> b!715726 m!671919))

(declare-fun m!671921 () Bool)

(assert (=> start!63546 m!671921))

(declare-fun m!671923 () Bool)

(assert (=> b!715715 m!671923))

(check-sat (not b!715717) (not b!715712) (not b!715718) (not b!715713) (not b!715721) (not b!715719) (not b!715725) (not b!715711) (not b!715714) (not b!715723) (not b!715722) (not b!715726) (not b!715709) (not start!63546) (not b!715727) (not b!715716) (not b!715710) (not b!715715))
(check-sat)
(get-model)

(declare-fun d!98337 () Bool)

(declare-fun res!478925 () Bool)

(declare-fun e!401825 () Bool)

(assert (=> d!98337 (=> res!478925 e!401825)))

(get-info :version)

(assert (=> d!98337 (= res!478925 ((_ is Nil!13481) newAcc!49))))

(assert (=> d!98337 (= (noDuplicate!1274 newAcc!49) e!401825)))

(declare-fun b!715789 () Bool)

(declare-fun e!401826 () Bool)

(assert (=> b!715789 (= e!401825 e!401826)))

(declare-fun res!478926 () Bool)

(assert (=> b!715789 (=> (not res!478926) (not e!401826))))

(assert (=> b!715789 (= res!478926 (not (contains!4027 (t!19807 newAcc!49) (h!14525 newAcc!49))))))

(declare-fun b!715790 () Bool)

(assert (=> b!715790 (= e!401826 (noDuplicate!1274 (t!19807 newAcc!49)))))

(assert (= (and d!98337 (not res!478925)) b!715789))

(assert (= (and b!715789 res!478926) b!715790))

(declare-fun m!671967 () Bool)

(assert (=> b!715789 m!671967))

(declare-fun m!671969 () Bool)

(assert (=> b!715790 m!671969))

(assert (=> b!715721 d!98337))

(declare-fun d!98339 () Bool)

(declare-fun lt!318809 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!373 (List!13484) (InoxSet (_ BitVec 64)))

(assert (=> d!98339 (= lt!318809 (select (content!373 acc!652) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!401831 () Bool)

(assert (=> d!98339 (= lt!318809 e!401831)))

(declare-fun res!478931 () Bool)

(assert (=> d!98339 (=> (not res!478931) (not e!401831))))

(assert (=> d!98339 (= res!478931 ((_ is Cons!13480) acc!652))))

(assert (=> d!98339 (= (contains!4027 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000) lt!318809)))

(declare-fun b!715795 () Bool)

(declare-fun e!401832 () Bool)

(assert (=> b!715795 (= e!401831 e!401832)))

(declare-fun res!478932 () Bool)

(assert (=> b!715795 (=> res!478932 e!401832)))

(assert (=> b!715795 (= res!478932 (= (h!14525 acc!652) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!715796 () Bool)

(assert (=> b!715796 (= e!401832 (contains!4027 (t!19807 acc!652) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!98339 res!478931) b!715795))

(assert (= (and b!715795 (not res!478932)) b!715796))

(declare-fun m!671971 () Bool)

(assert (=> d!98339 m!671971))

(declare-fun m!671973 () Bool)

(assert (=> d!98339 m!671973))

(declare-fun m!671975 () Bool)

(assert (=> b!715796 m!671975))

(assert (=> b!715710 d!98339))

(declare-fun d!98341 () Bool)

(declare-fun lt!318810 () Bool)

(assert (=> d!98341 (= lt!318810 (select (content!373 newAcc!49) k0!2824))))

(declare-fun e!401833 () Bool)

(assert (=> d!98341 (= lt!318810 e!401833)))

(declare-fun res!478933 () Bool)

(assert (=> d!98341 (=> (not res!478933) (not e!401833))))

(assert (=> d!98341 (= res!478933 ((_ is Cons!13480) newAcc!49))))

(assert (=> d!98341 (= (contains!4027 newAcc!49 k0!2824) lt!318810)))

(declare-fun b!715797 () Bool)

(declare-fun e!401834 () Bool)

(assert (=> b!715797 (= e!401833 e!401834)))

(declare-fun res!478934 () Bool)

(assert (=> b!715797 (=> res!478934 e!401834)))

(assert (=> b!715797 (= res!478934 (= (h!14525 newAcc!49) k0!2824))))

(declare-fun b!715798 () Bool)

(assert (=> b!715798 (= e!401834 (contains!4027 (t!19807 newAcc!49) k0!2824))))

(assert (= (and d!98341 res!478933) b!715797))

(assert (= (and b!715797 (not res!478934)) b!715798))

(declare-fun m!671977 () Bool)

(assert (=> d!98341 m!671977))

(declare-fun m!671979 () Bool)

(assert (=> d!98341 m!671979))

(declare-fun m!671981 () Bool)

(assert (=> b!715798 m!671981))

(assert (=> b!715711 d!98341))

(declare-fun d!98343 () Bool)

(assert (=> d!98343 (= (array_inv!15164 a!3591) (bvsge (size!19806 a!3591) #b00000000000000000000000000000000))))

(assert (=> start!63546 d!98343))

(declare-fun d!98345 () Bool)

(declare-fun lt!318811 () Bool)

(assert (=> d!98345 (= lt!318811 (select (content!373 newAcc!49) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!401835 () Bool)

(assert (=> d!98345 (= lt!318811 e!401835)))

(declare-fun res!478935 () Bool)

(assert (=> d!98345 (=> (not res!478935) (not e!401835))))

(assert (=> d!98345 (= res!478935 ((_ is Cons!13480) newAcc!49))))

(assert (=> d!98345 (= (contains!4027 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000) lt!318811)))

(declare-fun b!715799 () Bool)

(declare-fun e!401836 () Bool)

(assert (=> b!715799 (= e!401835 e!401836)))

(declare-fun res!478936 () Bool)

(assert (=> b!715799 (=> res!478936 e!401836)))

(assert (=> b!715799 (= res!478936 (= (h!14525 newAcc!49) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!715800 () Bool)

(assert (=> b!715800 (= e!401836 (contains!4027 (t!19807 newAcc!49) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!98345 res!478935) b!715799))

(assert (= (and b!715799 (not res!478936)) b!715800))

(assert (=> d!98345 m!671977))

(declare-fun m!671983 () Bool)

(assert (=> d!98345 m!671983))

(declare-fun m!671985 () Bool)

(assert (=> b!715800 m!671985))

(assert (=> b!715709 d!98345))

(declare-fun d!98347 () Bool)

(declare-fun res!478941 () Bool)

(declare-fun e!401841 () Bool)

(assert (=> d!98347 (=> res!478941 e!401841)))

(assert (=> d!98347 (= res!478941 (= (select (arr!19390 a!3591) (bvadd #b00000000000000000000000000000001 from!2969)) k0!2824))))

(assert (=> d!98347 (= (arrayContainsKey!0 a!3591 k0!2824 (bvadd #b00000000000000000000000000000001 from!2969)) e!401841)))

(declare-fun b!715805 () Bool)

(declare-fun e!401842 () Bool)

(assert (=> b!715805 (= e!401841 e!401842)))

(declare-fun res!478942 () Bool)

(assert (=> b!715805 (=> (not res!478942) (not e!401842))))

(assert (=> b!715805 (= res!478942 (bvslt (bvadd #b00000000000000000000000000000001 from!2969 #b00000000000000000000000000000001) (size!19806 a!3591)))))

(declare-fun b!715806 () Bool)

(assert (=> b!715806 (= e!401842 (arrayContainsKey!0 a!3591 k0!2824 (bvadd #b00000000000000000000000000000001 from!2969 #b00000000000000000000000000000001)))))

(assert (= (and d!98347 (not res!478941)) b!715805))

(assert (= (and b!715805 res!478942) b!715806))

(declare-fun m!671987 () Bool)

(assert (=> d!98347 m!671987))

(declare-fun m!671989 () Bool)

(assert (=> b!715806 m!671989))

(assert (=> b!715713 d!98347))

(declare-fun d!98349 () Bool)

(assert (=> d!98349 (= (validKeyInArray!0 (select (arr!19390 a!3591) from!2969)) (and (not (= (select (arr!19390 a!3591) from!2969) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!19390 a!3591) from!2969) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!715722 d!98349))

(declare-fun d!98351 () Bool)

(declare-fun res!478943 () Bool)

(declare-fun e!401843 () Bool)

(assert (=> d!98351 (=> res!478943 e!401843)))

(assert (=> d!98351 (= res!478943 (= (select (arr!19390 a!3591) from!2969) k0!2824))))

(assert (=> d!98351 (= (arrayContainsKey!0 a!3591 k0!2824 from!2969) e!401843)))

(declare-fun b!715807 () Bool)

(declare-fun e!401844 () Bool)

(assert (=> b!715807 (= e!401843 e!401844)))

(declare-fun res!478944 () Bool)

(assert (=> b!715807 (=> (not res!478944) (not e!401844))))

(assert (=> b!715807 (= res!478944 (bvslt (bvadd from!2969 #b00000000000000000000000000000001) (size!19806 a!3591)))))

(declare-fun b!715808 () Bool)

(assert (=> b!715808 (= e!401844 (arrayContainsKey!0 a!3591 k0!2824 (bvadd from!2969 #b00000000000000000000000000000001)))))

(assert (= (and d!98351 (not res!478943)) b!715807))

(assert (= (and b!715807 res!478944) b!715808))

(assert (=> d!98351 m!671883))

(declare-fun m!671991 () Bool)

(assert (=> b!715808 m!671991))

(assert (=> b!715723 d!98351))

(declare-fun b!715831 () Bool)

(declare-fun e!401865 () Bool)

(declare-fun call!34632 () Bool)

(assert (=> b!715831 (= e!401865 call!34632)))

(declare-fun b!715833 () Bool)

(declare-fun e!401868 () Bool)

(assert (=> b!715833 (= e!401868 (contains!4027 acc!652 (select (arr!19390 a!3591) (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!715834 () Bool)

(declare-fun e!401867 () Bool)

(assert (=> b!715834 (= e!401867 e!401865)))

(declare-fun c!78801 () Bool)

(assert (=> b!715834 (= c!78801 (validKeyInArray!0 (select (arr!19390 a!3591) (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun bm!34629 () Bool)

(assert (=> bm!34629 (= call!34632 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969 #b00000000000000000000000000000001) (ite c!78801 (Cons!13480 (select (arr!19390 a!3591) (bvadd #b00000000000000000000000000000001 from!2969)) acc!652) acc!652)))))

(declare-fun b!715835 () Bool)

(assert (=> b!715835 (= e!401865 call!34632)))

(declare-fun b!715832 () Bool)

(declare-fun e!401866 () Bool)

(assert (=> b!715832 (= e!401866 e!401867)))

(declare-fun res!478965 () Bool)

(assert (=> b!715832 (=> (not res!478965) (not e!401867))))

(assert (=> b!715832 (= res!478965 (not e!401868))))

(declare-fun res!478963 () Bool)

(assert (=> b!715832 (=> (not res!478963) (not e!401868))))

(assert (=> b!715832 (= res!478963 (validKeyInArray!0 (select (arr!19390 a!3591) (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun d!98353 () Bool)

(declare-fun res!478964 () Bool)

(assert (=> d!98353 (=> res!478964 e!401866)))

(assert (=> d!98353 (= res!478964 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) (size!19806 a!3591)))))

(assert (=> d!98353 (= (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) acc!652) e!401866)))

(assert (= (and d!98353 (not res!478964)) b!715832))

(assert (= (and b!715832 res!478963) b!715833))

(assert (= (and b!715832 res!478965) b!715834))

(assert (= (and b!715834 c!78801) b!715831))

(assert (= (and b!715834 (not c!78801)) b!715835))

(assert (= (or b!715831 b!715835) bm!34629))

(assert (=> b!715833 m!671987))

(assert (=> b!715833 m!671987))

(declare-fun m!672005 () Bool)

(assert (=> b!715833 m!672005))

(assert (=> b!715834 m!671987))

(assert (=> b!715834 m!671987))

(declare-fun m!672007 () Bool)

(assert (=> b!715834 m!672007))

(assert (=> bm!34629 m!671987))

(declare-fun m!672009 () Bool)

(assert (=> bm!34629 m!672009))

(assert (=> b!715832 m!671987))

(assert (=> b!715832 m!671987))

(assert (=> b!715832 m!672007))

(assert (=> b!715712 d!98353))

(declare-fun d!98367 () Bool)

(declare-fun lt!318818 () Bool)

(assert (=> d!98367 (= lt!318818 (select (content!373 newAcc!49) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!401869 () Bool)

(assert (=> d!98367 (= lt!318818 e!401869)))

(declare-fun res!478966 () Bool)

(assert (=> d!98367 (=> (not res!478966) (not e!401869))))

(assert (=> d!98367 (= res!478966 ((_ is Cons!13480) newAcc!49))))

(assert (=> d!98367 (= (contains!4027 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000) lt!318818)))

(declare-fun b!715836 () Bool)

(declare-fun e!401870 () Bool)

(assert (=> b!715836 (= e!401869 e!401870)))

(declare-fun res!478967 () Bool)

(assert (=> b!715836 (=> res!478967 e!401870)))

(assert (=> b!715836 (= res!478967 (= (h!14525 newAcc!49) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!715837 () Bool)

(assert (=> b!715837 (= e!401870 (contains!4027 (t!19807 newAcc!49) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!98367 res!478966) b!715836))

(assert (= (and b!715836 (not res!478967)) b!715837))

(assert (=> d!98367 m!671977))

(declare-fun m!672011 () Bool)

(assert (=> d!98367 m!672011))

(declare-fun m!672013 () Bool)

(assert (=> b!715837 m!672013))

(assert (=> b!715726 d!98367))

(declare-fun d!98369 () Bool)

(declare-fun lt!318819 () Bool)

(assert (=> d!98369 (= lt!318819 (select (content!373 acc!652) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!401871 () Bool)

(assert (=> d!98369 (= lt!318819 e!401871)))

(declare-fun res!478968 () Bool)

(assert (=> d!98369 (=> (not res!478968) (not e!401871))))

(assert (=> d!98369 (= res!478968 ((_ is Cons!13480) acc!652))))

(assert (=> d!98369 (= (contains!4027 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000) lt!318819)))

(declare-fun b!715838 () Bool)

(declare-fun e!401872 () Bool)

(assert (=> b!715838 (= e!401871 e!401872)))

(declare-fun res!478969 () Bool)

(assert (=> b!715838 (=> res!478969 e!401872)))

(assert (=> b!715838 (= res!478969 (= (h!14525 acc!652) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!715839 () Bool)

(assert (=> b!715839 (= e!401872 (contains!4027 (t!19807 acc!652) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!98369 res!478968) b!715838))

(assert (= (and b!715838 (not res!478969)) b!715839))

(assert (=> d!98369 m!671971))

(declare-fun m!672015 () Bool)

(assert (=> d!98369 m!672015))

(declare-fun m!672017 () Bool)

(assert (=> b!715839 m!672017))

(assert (=> b!715727 d!98369))

(declare-fun b!715840 () Bool)

(declare-fun e!401873 () Bool)

(declare-fun call!34633 () Bool)

(assert (=> b!715840 (= e!401873 call!34633)))

(declare-fun e!401876 () Bool)

(declare-fun b!715842 () Bool)

(assert (=> b!715842 (= e!401876 (contains!4027 newAcc!49 (select (arr!19390 a!3591) from!2969)))))

(declare-fun b!715843 () Bool)

(declare-fun e!401875 () Bool)

(assert (=> b!715843 (= e!401875 e!401873)))

(declare-fun c!78802 () Bool)

(assert (=> b!715843 (= c!78802 (validKeyInArray!0 (select (arr!19390 a!3591) from!2969)))))

(declare-fun bm!34630 () Bool)

(assert (=> bm!34630 (= call!34633 (arrayNoDuplicates!0 a!3591 (bvadd from!2969 #b00000000000000000000000000000001) (ite c!78802 (Cons!13480 (select (arr!19390 a!3591) from!2969) newAcc!49) newAcc!49)))))

(declare-fun b!715844 () Bool)

(assert (=> b!715844 (= e!401873 call!34633)))

(declare-fun b!715841 () Bool)

(declare-fun e!401874 () Bool)

(assert (=> b!715841 (= e!401874 e!401875)))

(declare-fun res!478972 () Bool)

(assert (=> b!715841 (=> (not res!478972) (not e!401875))))

(assert (=> b!715841 (= res!478972 (not e!401876))))

(declare-fun res!478970 () Bool)

(assert (=> b!715841 (=> (not res!478970) (not e!401876))))

(assert (=> b!715841 (= res!478970 (validKeyInArray!0 (select (arr!19390 a!3591) from!2969)))))

(declare-fun d!98371 () Bool)

(declare-fun res!478971 () Bool)

(assert (=> d!98371 (=> res!478971 e!401874)))

(assert (=> d!98371 (= res!478971 (bvsge from!2969 (size!19806 a!3591)))))

(assert (=> d!98371 (= (arrayNoDuplicates!0 a!3591 from!2969 newAcc!49) e!401874)))

(assert (= (and d!98371 (not res!478971)) b!715841))

(assert (= (and b!715841 res!478970) b!715842))

(assert (= (and b!715841 res!478972) b!715843))

(assert (= (and b!715843 c!78802) b!715840))

(assert (= (and b!715843 (not c!78802)) b!715844))

(assert (= (or b!715840 b!715844) bm!34630))

(assert (=> b!715842 m!671883))

(assert (=> b!715842 m!671883))

(declare-fun m!672019 () Bool)

(assert (=> b!715842 m!672019))

(assert (=> b!715843 m!671883))

(assert (=> b!715843 m!671883))

(assert (=> b!715843 m!671885))

(assert (=> bm!34630 m!671883))

(declare-fun m!672021 () Bool)

(assert (=> bm!34630 m!672021))

(assert (=> b!715841 m!671883))

(assert (=> b!715841 m!671883))

(assert (=> b!715841 m!671885))

(assert (=> b!715716 d!98371))

(declare-fun b!715847 () Bool)

(declare-fun e!401883 () Bool)

(declare-fun call!34634 () Bool)

(assert (=> b!715847 (= e!401883 call!34634)))

(declare-fun e!401886 () Bool)

(declare-fun b!715851 () Bool)

(assert (=> b!715851 (= e!401886 (contains!4027 newAcc!49 (select (arr!19390 a!3591) (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!715852 () Bool)

(declare-fun e!401885 () Bool)

(assert (=> b!715852 (= e!401885 e!401883)))

(declare-fun c!78803 () Bool)

(assert (=> b!715852 (= c!78803 (validKeyInArray!0 (select (arr!19390 a!3591) (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun bm!34631 () Bool)

(assert (=> bm!34631 (= call!34634 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969 #b00000000000000000000000000000001) (ite c!78803 (Cons!13480 (select (arr!19390 a!3591) (bvadd #b00000000000000000000000000000001 from!2969)) newAcc!49) newAcc!49)))))

(declare-fun b!715853 () Bool)

(assert (=> b!715853 (= e!401883 call!34634)))

(declare-fun b!715850 () Bool)

(declare-fun e!401884 () Bool)

(assert (=> b!715850 (= e!401884 e!401885)))

(declare-fun res!478981 () Bool)

(assert (=> b!715850 (=> (not res!478981) (not e!401885))))

(assert (=> b!715850 (= res!478981 (not e!401886))))

(declare-fun res!478979 () Bool)

(assert (=> b!715850 (=> (not res!478979) (not e!401886))))

(assert (=> b!715850 (= res!478979 (validKeyInArray!0 (select (arr!19390 a!3591) (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun d!98373 () Bool)

(declare-fun res!478980 () Bool)

(assert (=> d!98373 (=> res!478980 e!401884)))

(assert (=> d!98373 (= res!478980 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) (size!19806 a!3591)))))

(assert (=> d!98373 (= (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) newAcc!49) e!401884)))

(assert (= (and d!98373 (not res!478980)) b!715850))

(assert (= (and b!715850 res!478979) b!715851))

(assert (= (and b!715850 res!478981) b!715852))

(assert (= (and b!715852 c!78803) b!715847))

(assert (= (and b!715852 (not c!78803)) b!715853))

(assert (= (or b!715847 b!715853) bm!34631))

(assert (=> b!715851 m!671987))

(assert (=> b!715851 m!671987))

(declare-fun m!672023 () Bool)

(assert (=> b!715851 m!672023))

(assert (=> b!715852 m!671987))

(assert (=> b!715852 m!671987))

(assert (=> b!715852 m!672007))

(assert (=> bm!34631 m!671987))

(declare-fun m!672025 () Bool)

(assert (=> bm!34631 m!672025))

(assert (=> b!715850 m!671987))

(assert (=> b!715850 m!671987))

(assert (=> b!715850 m!672007))

(assert (=> b!715716 d!98373))

(declare-fun d!98375 () Bool)

(assert (=> d!98375 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) newAcc!49)))

(declare-fun lt!318822 () Unit!24618)

(declare-fun choose!66 (array!40514 (_ BitVec 64) (_ BitVec 32) List!13484 List!13484) Unit!24618)

(assert (=> d!98375 (= lt!318822 (choose!66 a!3591 k0!2824 (bvadd #b00000000000000000000000000000001 from!2969) acc!652 newAcc!49))))

(assert (=> d!98375 (bvslt (size!19806 a!3591) #b01111111111111111111111111111111)))

(assert (=> d!98375 (= (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3591 k0!2824 (bvadd #b00000000000000000000000000000001 from!2969) acc!652 newAcc!49) lt!318822)))

(declare-fun bs!20603 () Bool)

(assert (= bs!20603 d!98375))

(assert (=> bs!20603 m!671913))

(declare-fun m!672031 () Bool)

(assert (=> bs!20603 m!672031))

(assert (=> b!715716 d!98375))

(declare-fun b!715912 () Bool)

(declare-fun e!401935 () List!13484)

(declare-fun call!34643 () List!13484)

(assert (=> b!715912 (= e!401935 call!34643)))

(declare-fun b!715913 () Bool)

(declare-fun e!401936 () Bool)

(declare-fun lt!318830 () List!13484)

(assert (=> b!715913 (= e!401936 (= (content!373 lt!318830) ((_ map and) (content!373 newAcc!49) ((_ map not) (store ((as const (Array (_ BitVec 64) Bool)) false) k0!2824 true)))))))

(declare-fun b!715914 () Bool)

(declare-fun e!401934 () List!13484)

(assert (=> b!715914 (= e!401934 e!401935)))

(declare-fun c!78815 () Bool)

(assert (=> b!715914 (= c!78815 (= k0!2824 (h!14525 newAcc!49)))))

(declare-fun d!98377 () Bool)

(assert (=> d!98377 e!401936))

(declare-fun res!479018 () Bool)

(assert (=> d!98377 (=> (not res!479018) (not e!401936))))

(declare-fun size!19808 (List!13484) Int)

(assert (=> d!98377 (= res!479018 (<= (size!19808 lt!318830) (size!19808 newAcc!49)))))

(assert (=> d!98377 (= lt!318830 e!401934)))

(declare-fun c!78814 () Bool)

(assert (=> d!98377 (= c!78814 ((_ is Cons!13480) newAcc!49))))

(assert (=> d!98377 (= (-!436 newAcc!49 k0!2824) lt!318830)))

(declare-fun b!715915 () Bool)

(assert (=> b!715915 (= e!401935 (Cons!13480 (h!14525 newAcc!49) call!34643))))

(declare-fun b!715916 () Bool)

(assert (=> b!715916 (= e!401934 Nil!13481)))

(declare-fun bm!34640 () Bool)

(assert (=> bm!34640 (= call!34643 (-!436 (t!19807 newAcc!49) k0!2824))))

(assert (= (and d!98377 c!78814) b!715914))

(assert (= (and d!98377 (not c!78814)) b!715916))

(assert (= (and b!715914 c!78815) b!715912))

(assert (= (and b!715914 (not c!78815)) b!715915))

(assert (= (or b!715912 b!715915) bm!34640))

(assert (= (and d!98377 res!479018) b!715913))

(declare-fun m!672073 () Bool)

(assert (=> b!715913 m!672073))

(assert (=> b!715913 m!671977))

(declare-fun m!672075 () Bool)

(assert (=> b!715913 m!672075))

(declare-fun m!672077 () Bool)

(assert (=> d!98377 m!672077))

(declare-fun m!672079 () Bool)

(assert (=> d!98377 m!672079))

(declare-fun m!672081 () Bool)

(assert (=> bm!34640 m!672081))

(assert (=> b!715725 d!98377))

(declare-fun d!98401 () Bool)

(declare-fun res!479061 () Bool)

(declare-fun e!401980 () Bool)

(assert (=> d!98401 (=> res!479061 e!401980)))

(assert (=> d!98401 (= res!479061 ((_ is Nil!13481) acc!652))))

(assert (=> d!98401 (= (subseq!471 acc!652 newAcc!49) e!401980)))

(declare-fun b!715960 () Bool)

(declare-fun e!401977 () Bool)

(assert (=> b!715960 (= e!401977 (subseq!471 acc!652 (t!19807 newAcc!49)))))

(declare-fun b!715959 () Bool)

(declare-fun e!401979 () Bool)

(assert (=> b!715959 (= e!401979 (subseq!471 (t!19807 acc!652) (t!19807 newAcc!49)))))

(declare-fun b!715957 () Bool)

(declare-fun e!401978 () Bool)

(assert (=> b!715957 (= e!401980 e!401978)))

(declare-fun res!479059 () Bool)

(assert (=> b!715957 (=> (not res!479059) (not e!401978))))

(assert (=> b!715957 (= res!479059 ((_ is Cons!13480) newAcc!49))))

(declare-fun b!715958 () Bool)

(assert (=> b!715958 (= e!401978 e!401977)))

(declare-fun res!479060 () Bool)

(assert (=> b!715958 (=> res!479060 e!401977)))

(assert (=> b!715958 (= res!479060 e!401979)))

(declare-fun res!479062 () Bool)

(assert (=> b!715958 (=> (not res!479062) (not e!401979))))

(assert (=> b!715958 (= res!479062 (= (h!14525 acc!652) (h!14525 newAcc!49)))))

(assert (= (and d!98401 (not res!479061)) b!715957))

(assert (= (and b!715957 res!479059) b!715958))

(assert (= (and b!715958 res!479062) b!715959))

(assert (= (and b!715958 (not res!479060)) b!715960))

(declare-fun m!672099 () Bool)

(assert (=> b!715960 m!672099))

(declare-fun m!672101 () Bool)

(assert (=> b!715959 m!672101))

(assert (=> b!715714 d!98401))

(declare-fun b!715961 () Bool)

(declare-fun e!401981 () Bool)

(declare-fun call!34644 () Bool)

(assert (=> b!715961 (= e!401981 call!34644)))

(declare-fun e!401984 () Bool)

(declare-fun b!715963 () Bool)

(assert (=> b!715963 (= e!401984 (contains!4027 acc!652 (select (arr!19390 a!3591) from!2969)))))

(declare-fun b!715964 () Bool)

(declare-fun e!401983 () Bool)

(assert (=> b!715964 (= e!401983 e!401981)))

(declare-fun c!78816 () Bool)

(assert (=> b!715964 (= c!78816 (validKeyInArray!0 (select (arr!19390 a!3591) from!2969)))))

(declare-fun bm!34641 () Bool)

(assert (=> bm!34641 (= call!34644 (arrayNoDuplicates!0 a!3591 (bvadd from!2969 #b00000000000000000000000000000001) (ite c!78816 (Cons!13480 (select (arr!19390 a!3591) from!2969) acc!652) acc!652)))))

(declare-fun b!715965 () Bool)

(assert (=> b!715965 (= e!401981 call!34644)))

(declare-fun b!715962 () Bool)

(declare-fun e!401982 () Bool)

(assert (=> b!715962 (= e!401982 e!401983)))

(declare-fun res!479065 () Bool)

(assert (=> b!715962 (=> (not res!479065) (not e!401983))))

(assert (=> b!715962 (= res!479065 (not e!401984))))

(declare-fun res!479063 () Bool)

(assert (=> b!715962 (=> (not res!479063) (not e!401984))))

(assert (=> b!715962 (= res!479063 (validKeyInArray!0 (select (arr!19390 a!3591) from!2969)))))

(declare-fun d!98411 () Bool)

(declare-fun res!479064 () Bool)

(assert (=> d!98411 (=> res!479064 e!401982)))

(assert (=> d!98411 (= res!479064 (bvsge from!2969 (size!19806 a!3591)))))

(assert (=> d!98411 (= (arrayNoDuplicates!0 a!3591 from!2969 acc!652) e!401982)))

(assert (= (and d!98411 (not res!479064)) b!715962))

(assert (= (and b!715962 res!479063) b!715963))

(assert (= (and b!715962 res!479065) b!715964))

(assert (= (and b!715964 c!78816) b!715961))

(assert (= (and b!715964 (not c!78816)) b!715965))

(assert (= (or b!715961 b!715965) bm!34641))

(assert (=> b!715963 m!671883))

(assert (=> b!715963 m!671883))

(declare-fun m!672103 () Bool)

(assert (=> b!715963 m!672103))

(assert (=> b!715964 m!671883))

(assert (=> b!715964 m!671883))

(assert (=> b!715964 m!671885))

(assert (=> bm!34641 m!671883))

(declare-fun m!672109 () Bool)

(assert (=> bm!34641 m!672109))

(assert (=> b!715962 m!671883))

(assert (=> b!715962 m!671883))

(assert (=> b!715962 m!671885))

(assert (=> b!715715 d!98411))

(declare-fun d!98415 () Bool)

(declare-fun lt!318833 () Bool)

(assert (=> d!98415 (= lt!318833 (select (content!373 acc!652) k0!2824))))

(declare-fun e!401991 () Bool)

(assert (=> d!98415 (= lt!318833 e!401991)))

(declare-fun res!479072 () Bool)

(assert (=> d!98415 (=> (not res!479072) (not e!401991))))

(assert (=> d!98415 (= res!479072 ((_ is Cons!13480) acc!652))))

(assert (=> d!98415 (= (contains!4027 acc!652 k0!2824) lt!318833)))

(declare-fun b!715972 () Bool)

(declare-fun e!401992 () Bool)

(assert (=> b!715972 (= e!401991 e!401992)))

(declare-fun res!479073 () Bool)

(assert (=> b!715972 (=> res!479073 e!401992)))

(assert (=> b!715972 (= res!479073 (= (h!14525 acc!652) k0!2824))))

(declare-fun b!715973 () Bool)

(assert (=> b!715973 (= e!401992 (contains!4027 (t!19807 acc!652) k0!2824))))

(assert (= (and d!98415 res!479072) b!715972))

(assert (= (and b!715972 (not res!479073)) b!715973))

(assert (=> d!98415 m!671971))

(declare-fun m!672111 () Bool)

(assert (=> d!98415 m!672111))

(declare-fun m!672113 () Bool)

(assert (=> b!715973 m!672113))

(assert (=> b!715718 d!98415))

(declare-fun d!98419 () Bool)

(assert (=> d!98419 (= (validKeyInArray!0 k0!2824) (and (not (= k0!2824 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2824 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!715719 d!98419))

(declare-fun d!98421 () Bool)

(declare-fun res!479074 () Bool)

(declare-fun e!401993 () Bool)

(assert (=> d!98421 (=> res!479074 e!401993)))

(assert (=> d!98421 (= res!479074 ((_ is Nil!13481) acc!652))))

(assert (=> d!98421 (= (noDuplicate!1274 acc!652) e!401993)))

(declare-fun b!715974 () Bool)

(declare-fun e!401994 () Bool)

(assert (=> b!715974 (= e!401993 e!401994)))

(declare-fun res!479075 () Bool)

(assert (=> b!715974 (=> (not res!479075) (not e!401994))))

(assert (=> b!715974 (= res!479075 (not (contains!4027 (t!19807 acc!652) (h!14525 acc!652))))))

(declare-fun b!715975 () Bool)

(assert (=> b!715975 (= e!401994 (noDuplicate!1274 (t!19807 acc!652)))))

(assert (= (and d!98421 (not res!479074)) b!715974))

(assert (= (and b!715974 res!479075) b!715975))

(declare-fun m!672115 () Bool)

(assert (=> b!715974 m!672115))

(declare-fun m!672117 () Bool)

(assert (=> b!715975 m!672117))

(assert (=> b!715717 d!98421))

(check-sat (not d!98345) (not d!98339) (not b!715959) (not b!715962) (not b!715973) (not b!715796) (not b!715839) (not b!715790) (not d!98341) (not b!715832) (not b!715842) (not b!715851) (not b!715806) (not b!715850) (not bm!34630) (not b!715834) (not b!715975) (not b!715960) (not d!98375) (not d!98377) (not d!98369) (not b!715974) (not b!715964) (not bm!34631) (not b!715808) (not b!715841) (not bm!34640) (not b!715843) (not d!98367) (not bm!34641) (not d!98415) (not b!715852) (not b!715913) (not bm!34629) (not b!715800) (not b!715963) (not b!715833) (not b!715789) (not b!715798) (not b!715837))
(check-sat)
