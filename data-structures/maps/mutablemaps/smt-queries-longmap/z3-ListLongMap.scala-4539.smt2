; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!63108 () Bool)

(assert start!63108)

(declare-fun b!710711 () Bool)

(declare-fun res!474250 () Bool)

(declare-fun e!399889 () Bool)

(assert (=> b!710711 (=> (not res!474250) (not e!399889))))

(declare-datatypes ((array!40376 0))(
  ( (array!40377 (arr!19330 (Array (_ BitVec 32) (_ BitVec 64))) (size!19731 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40376)

(declare-fun from!2969 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!710711 (= res!474250 (validKeyInArray!0 (select (arr!19330 a!3591) from!2969)))))

(declare-fun b!710713 () Bool)

(declare-fun res!474263 () Bool)

(assert (=> b!710713 (=> (not res!474263) (not e!399889))))

(declare-datatypes ((List!13424 0))(
  ( (Nil!13421) (Cons!13420 (h!14465 (_ BitVec 64)) (t!19735 List!13424)) )
))
(declare-fun newAcc!49 () List!13424)

(declare-fun noDuplicate!1214 (List!13424) Bool)

(assert (=> b!710713 (= res!474263 (noDuplicate!1214 newAcc!49))))

(declare-fun b!710714 () Bool)

(declare-fun res!474267 () Bool)

(assert (=> b!710714 (=> (not res!474267) (not e!399889))))

(declare-fun k0!2824 () (_ BitVec 64))

(declare-fun contains!3967 (List!13424 (_ BitVec 64)) Bool)

(assert (=> b!710714 (= res!474267 (contains!3967 newAcc!49 k0!2824))))

(declare-fun b!710715 () Bool)

(declare-fun res!474253 () Bool)

(assert (=> b!710715 (=> (not res!474253) (not e!399889))))

(assert (=> b!710715 (= res!474253 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19731 a!3591)))))

(declare-fun b!710716 () Bool)

(declare-fun res!474256 () Bool)

(declare-fun e!399890 () Bool)

(assert (=> b!710716 (=> (not res!474256) (not e!399890))))

(declare-fun lt!318334 () List!13424)

(assert (=> b!710716 (= res!474256 (not (contains!3967 lt!318334 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!710717 () Bool)

(declare-fun res!474262 () Bool)

(assert (=> b!710717 (=> (not res!474262) (not e!399889))))

(assert (=> b!710717 (= res!474262 (not (contains!3967 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!710718 () Bool)

(declare-fun res!474266 () Bool)

(assert (=> b!710718 (=> (not res!474266) (not e!399890))))

(declare-fun lt!318335 () List!13424)

(assert (=> b!710718 (= res!474266 (noDuplicate!1214 lt!318335))))

(declare-fun b!710719 () Bool)

(declare-fun res!474273 () Bool)

(assert (=> b!710719 (=> (not res!474273) (not e!399890))))

(assert (=> b!710719 (= res!474273 (not (contains!3967 lt!318334 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!710720 () Bool)

(declare-fun res!474255 () Bool)

(assert (=> b!710720 (=> (not res!474255) (not e!399889))))

(assert (=> b!710720 (= res!474255 (not (contains!3967 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!710721 () Bool)

(declare-fun res!474261 () Bool)

(assert (=> b!710721 (=> (not res!474261) (not e!399890))))

(assert (=> b!710721 (= res!474261 (not (contains!3967 lt!318334 k0!2824)))))

(declare-fun b!710722 () Bool)

(declare-fun res!474268 () Bool)

(assert (=> b!710722 (=> (not res!474268) (not e!399889))))

(declare-fun acc!652 () List!13424)

(declare-fun arrayNoDuplicates!0 (array!40376 (_ BitVec 32) List!13424) Bool)

(assert (=> b!710722 (= res!474268 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!710723 () Bool)

(declare-fun res!474271 () Bool)

(assert (=> b!710723 (=> (not res!474271) (not e!399890))))

(assert (=> b!710723 (= res!474271 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) lt!318334))))

(declare-fun b!710712 () Bool)

(declare-fun res!474260 () Bool)

(assert (=> b!710712 (=> (not res!474260) (not e!399889))))

(declare-fun subseq!411 (List!13424 List!13424) Bool)

(assert (=> b!710712 (= res!474260 (subseq!411 acc!652 newAcc!49))))

(declare-fun res!474269 () Bool)

(assert (=> start!63108 (=> (not res!474269) (not e!399889))))

(assert (=> start!63108 (= res!474269 (and (bvslt (size!19731 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19731 a!3591))))))

(assert (=> start!63108 e!399889))

(assert (=> start!63108 true))

(declare-fun array_inv!15104 (array!40376) Bool)

(assert (=> start!63108 (array_inv!15104 a!3591)))

(declare-fun b!710724 () Bool)

(declare-fun res!474257 () Bool)

(assert (=> b!710724 (=> (not res!474257) (not e!399889))))

(declare-fun arrayContainsKey!0 (array!40376 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!710724 (= res!474257 (not (arrayContainsKey!0 a!3591 k0!2824 from!2969)))))

(declare-fun b!710725 () Bool)

(assert (=> b!710725 (= e!399889 e!399890)))

(declare-fun res!474259 () Bool)

(assert (=> b!710725 (=> (not res!474259) (not e!399890))))

(assert (=> b!710725 (= res!474259 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!521 (List!13424 (_ BitVec 64)) List!13424)

(assert (=> b!710725 (= lt!318335 ($colon$colon!521 newAcc!49 (select (arr!19330 a!3591) from!2969)))))

(assert (=> b!710725 (= lt!318334 ($colon$colon!521 acc!652 (select (arr!19330 a!3591) from!2969)))))

(declare-fun b!710726 () Bool)

(declare-fun res!474258 () Bool)

(assert (=> b!710726 (=> (not res!474258) (not e!399890))))

(assert (=> b!710726 (= res!474258 (not (arrayContainsKey!0 a!3591 k0!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!710727 () Bool)

(assert (=> b!710727 (= e!399890 (not (contains!3967 lt!318335 k0!2824)))))

(declare-fun b!710728 () Bool)

(declare-fun res!474249 () Bool)

(assert (=> b!710728 (=> (not res!474249) (not e!399889))))

(assert (=> b!710728 (= res!474249 (not (contains!3967 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!710729 () Bool)

(declare-fun res!474264 () Bool)

(assert (=> b!710729 (=> (not res!474264) (not e!399890))))

(assert (=> b!710729 (= res!474264 (noDuplicate!1214 lt!318334))))

(declare-fun b!710730 () Bool)

(declare-fun res!474252 () Bool)

(assert (=> b!710730 (=> (not res!474252) (not e!399889))))

(assert (=> b!710730 (= res!474252 (noDuplicate!1214 acc!652))))

(declare-fun b!710731 () Bool)

(declare-fun res!474265 () Bool)

(assert (=> b!710731 (=> (not res!474265) (not e!399889))))

(declare-fun -!376 (List!13424 (_ BitVec 64)) List!13424)

(assert (=> b!710731 (= res!474265 (= (-!376 newAcc!49 k0!2824) acc!652))))

(declare-fun b!710732 () Bool)

(declare-fun res!474270 () Bool)

(assert (=> b!710732 (=> (not res!474270) (not e!399889))))

(assert (=> b!710732 (= res!474270 (not (contains!3967 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!710733 () Bool)

(declare-fun res!474254 () Bool)

(assert (=> b!710733 (=> (not res!474254) (not e!399889))))

(assert (=> b!710733 (= res!474254 (not (contains!3967 acc!652 k0!2824)))))

(declare-fun b!710734 () Bool)

(declare-fun res!474272 () Bool)

(assert (=> b!710734 (=> (not res!474272) (not e!399890))))

(assert (=> b!710734 (= res!474272 (subseq!411 lt!318334 lt!318335))))

(declare-fun b!710735 () Bool)

(declare-fun res!474251 () Bool)

(assert (=> b!710735 (=> (not res!474251) (not e!399889))))

(assert (=> b!710735 (= res!474251 (validKeyInArray!0 k0!2824))))

(assert (= (and start!63108 res!474269) b!710730))

(assert (= (and b!710730 res!474252) b!710713))

(assert (= (and b!710713 res!474263) b!710728))

(assert (= (and b!710728 res!474249) b!710732))

(assert (= (and b!710732 res!474270) b!710724))

(assert (= (and b!710724 res!474257) b!710733))

(assert (= (and b!710733 res!474254) b!710735))

(assert (= (and b!710735 res!474251) b!710722))

(assert (= (and b!710722 res!474268) b!710712))

(assert (= (and b!710712 res!474260) b!710714))

(assert (= (and b!710714 res!474267) b!710731))

(assert (= (and b!710731 res!474265) b!710720))

(assert (= (and b!710720 res!474255) b!710717))

(assert (= (and b!710717 res!474262) b!710715))

(assert (= (and b!710715 res!474253) b!710711))

(assert (= (and b!710711 res!474250) b!710725))

(assert (= (and b!710725 res!474259) b!710729))

(assert (= (and b!710729 res!474264) b!710718))

(assert (= (and b!710718 res!474266) b!710719))

(assert (= (and b!710719 res!474273) b!710716))

(assert (= (and b!710716 res!474256) b!710726))

(assert (= (and b!710726 res!474258) b!710721))

(assert (= (and b!710721 res!474261) b!710723))

(assert (= (and b!710723 res!474271) b!710734))

(assert (= (and b!710734 res!474272) b!710727))

(declare-fun m!667869 () Bool)

(assert (=> b!710720 m!667869))

(declare-fun m!667871 () Bool)

(assert (=> b!710716 m!667871))

(declare-fun m!667873 () Bool)

(assert (=> b!710735 m!667873))

(declare-fun m!667875 () Bool)

(assert (=> b!710727 m!667875))

(declare-fun m!667877 () Bool)

(assert (=> start!63108 m!667877))

(declare-fun m!667879 () Bool)

(assert (=> b!710714 m!667879))

(declare-fun m!667881 () Bool)

(assert (=> b!710730 m!667881))

(declare-fun m!667883 () Bool)

(assert (=> b!710734 m!667883))

(declare-fun m!667885 () Bool)

(assert (=> b!710722 m!667885))

(declare-fun m!667887 () Bool)

(assert (=> b!710717 m!667887))

(declare-fun m!667889 () Bool)

(assert (=> b!710723 m!667889))

(declare-fun m!667891 () Bool)

(assert (=> b!710712 m!667891))

(declare-fun m!667893 () Bool)

(assert (=> b!710733 m!667893))

(declare-fun m!667895 () Bool)

(assert (=> b!710713 m!667895))

(declare-fun m!667897 () Bool)

(assert (=> b!710721 m!667897))

(declare-fun m!667899 () Bool)

(assert (=> b!710718 m!667899))

(declare-fun m!667901 () Bool)

(assert (=> b!710729 m!667901))

(declare-fun m!667903 () Bool)

(assert (=> b!710726 m!667903))

(declare-fun m!667905 () Bool)

(assert (=> b!710731 m!667905))

(declare-fun m!667907 () Bool)

(assert (=> b!710728 m!667907))

(declare-fun m!667909 () Bool)

(assert (=> b!710719 m!667909))

(declare-fun m!667911 () Bool)

(assert (=> b!710724 m!667911))

(declare-fun m!667913 () Bool)

(assert (=> b!710711 m!667913))

(assert (=> b!710711 m!667913))

(declare-fun m!667915 () Bool)

(assert (=> b!710711 m!667915))

(declare-fun m!667917 () Bool)

(assert (=> b!710732 m!667917))

(assert (=> b!710725 m!667913))

(assert (=> b!710725 m!667913))

(declare-fun m!667919 () Bool)

(assert (=> b!710725 m!667919))

(assert (=> b!710725 m!667913))

(declare-fun m!667921 () Bool)

(assert (=> b!710725 m!667921))

(check-sat (not b!710726) (not b!710735) (not b!710713) (not b!710732) (not b!710728) (not b!710719) (not b!710730) (not b!710722) (not b!710729) (not b!710711) (not b!710720) (not b!710721) (not b!710724) (not b!710716) (not b!710733) (not b!710714) (not start!63108) (not b!710734) (not b!710718) (not b!710725) (not b!710717) (not b!710731) (not b!710712) (not b!710723) (not b!710727))
(check-sat)
(get-model)

(declare-fun d!97415 () Bool)

(declare-fun res!474353 () Bool)

(declare-fun e!399905 () Bool)

(assert (=> d!97415 (=> res!474353 e!399905)))

(get-info :version)

(assert (=> d!97415 (= res!474353 ((_ is Nil!13421) acc!652))))

(assert (=> d!97415 (= (noDuplicate!1214 acc!652) e!399905)))

(declare-fun b!710815 () Bool)

(declare-fun e!399906 () Bool)

(assert (=> b!710815 (= e!399905 e!399906)))

(declare-fun res!474354 () Bool)

(assert (=> b!710815 (=> (not res!474354) (not e!399906))))

(assert (=> b!710815 (= res!474354 (not (contains!3967 (t!19735 acc!652) (h!14465 acc!652))))))

(declare-fun b!710816 () Bool)

(assert (=> b!710816 (= e!399906 (noDuplicate!1214 (t!19735 acc!652)))))

(assert (= (and d!97415 (not res!474353)) b!710815))

(assert (= (and b!710815 res!474354) b!710816))

(declare-fun m!667977 () Bool)

(assert (=> b!710815 m!667977))

(declare-fun m!667979 () Bool)

(assert (=> b!710816 m!667979))

(assert (=> b!710730 d!97415))

(declare-fun b!710827 () Bool)

(declare-fun e!399915 () List!13424)

(declare-fun e!399914 () List!13424)

(assert (=> b!710827 (= e!399915 e!399914)))

(declare-fun c!78603 () Bool)

(assert (=> b!710827 (= c!78603 (= k0!2824 (h!14465 newAcc!49)))))

(declare-fun b!710828 () Bool)

(declare-fun call!34494 () List!13424)

(assert (=> b!710828 (= e!399914 call!34494)))

(declare-fun b!710829 () Bool)

(assert (=> b!710829 (= e!399914 (Cons!13420 (h!14465 newAcc!49) call!34494))))

(declare-fun bm!34491 () Bool)

(assert (=> bm!34491 (= call!34494 (-!376 (t!19735 newAcc!49) k0!2824))))

(declare-fun b!710830 () Bool)

(assert (=> b!710830 (= e!399915 Nil!13421)))

(declare-fun lt!318344 () List!13424)

(declare-fun e!399916 () Bool)

(declare-fun b!710831 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!355 (List!13424) (InoxSet (_ BitVec 64)))

(assert (=> b!710831 (= e!399916 (= (content!355 lt!318344) ((_ map and) (content!355 newAcc!49) ((_ map not) (store ((as const (Array (_ BitVec 64) Bool)) false) k0!2824 true)))))))

(declare-fun d!97417 () Bool)

(assert (=> d!97417 e!399916))

(declare-fun res!474357 () Bool)

(assert (=> d!97417 (=> (not res!474357) (not e!399916))))

(declare-fun size!19733 (List!13424) Int)

(assert (=> d!97417 (= res!474357 (<= (size!19733 lt!318344) (size!19733 newAcc!49)))))

(assert (=> d!97417 (= lt!318344 e!399915)))

(declare-fun c!78602 () Bool)

(assert (=> d!97417 (= c!78602 ((_ is Cons!13420) newAcc!49))))

(assert (=> d!97417 (= (-!376 newAcc!49 k0!2824) lt!318344)))

(assert (= (and d!97417 c!78602) b!710827))

(assert (= (and d!97417 (not c!78602)) b!710830))

(assert (= (and b!710827 c!78603) b!710828))

(assert (= (and b!710827 (not c!78603)) b!710829))

(assert (= (or b!710828 b!710829) bm!34491))

(assert (= (and d!97417 res!474357) b!710831))

(declare-fun m!667981 () Bool)

(assert (=> bm!34491 m!667981))

(declare-fun m!667983 () Bool)

(assert (=> b!710831 m!667983))

(declare-fun m!667985 () Bool)

(assert (=> b!710831 m!667985))

(declare-fun m!667987 () Bool)

(assert (=> b!710831 m!667987))

(declare-fun m!667989 () Bool)

(assert (=> d!97417 m!667989))

(declare-fun m!667991 () Bool)

(assert (=> d!97417 m!667991))

(assert (=> b!710731 d!97417))

(declare-fun d!97419 () Bool)

(declare-fun lt!318347 () Bool)

(assert (=> d!97419 (= lt!318347 (select (content!355 lt!318335) k0!2824))))

(declare-fun e!399921 () Bool)

(assert (=> d!97419 (= lt!318347 e!399921)))

(declare-fun res!474362 () Bool)

(assert (=> d!97419 (=> (not res!474362) (not e!399921))))

(assert (=> d!97419 (= res!474362 ((_ is Cons!13420) lt!318335))))

(assert (=> d!97419 (= (contains!3967 lt!318335 k0!2824) lt!318347)))

(declare-fun b!710836 () Bool)

(declare-fun e!399922 () Bool)

(assert (=> b!710836 (= e!399921 e!399922)))

(declare-fun res!474363 () Bool)

(assert (=> b!710836 (=> res!474363 e!399922)))

(assert (=> b!710836 (= res!474363 (= (h!14465 lt!318335) k0!2824))))

(declare-fun b!710837 () Bool)

(assert (=> b!710837 (= e!399922 (contains!3967 (t!19735 lt!318335) k0!2824))))

(assert (= (and d!97419 res!474362) b!710836))

(assert (= (and b!710836 (not res!474363)) b!710837))

(declare-fun m!667993 () Bool)

(assert (=> d!97419 m!667993))

(declare-fun m!667995 () Bool)

(assert (=> d!97419 m!667995))

(declare-fun m!667997 () Bool)

(assert (=> b!710837 m!667997))

(assert (=> b!710727 d!97419))

(declare-fun d!97421 () Bool)

(declare-fun lt!318348 () Bool)

(assert (=> d!97421 (= lt!318348 (select (content!355 acc!652) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!399923 () Bool)

(assert (=> d!97421 (= lt!318348 e!399923)))

(declare-fun res!474364 () Bool)

(assert (=> d!97421 (=> (not res!474364) (not e!399923))))

(assert (=> d!97421 (= res!474364 ((_ is Cons!13420) acc!652))))

(assert (=> d!97421 (= (contains!3967 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000) lt!318348)))

(declare-fun b!710838 () Bool)

(declare-fun e!399924 () Bool)

(assert (=> b!710838 (= e!399923 e!399924)))

(declare-fun res!474365 () Bool)

(assert (=> b!710838 (=> res!474365 e!399924)))

(assert (=> b!710838 (= res!474365 (= (h!14465 acc!652) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!710839 () Bool)

(assert (=> b!710839 (= e!399924 (contains!3967 (t!19735 acc!652) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!97421 res!474364) b!710838))

(assert (= (and b!710838 (not res!474365)) b!710839))

(declare-fun m!667999 () Bool)

(assert (=> d!97421 m!667999))

(declare-fun m!668001 () Bool)

(assert (=> d!97421 m!668001))

(declare-fun m!668003 () Bool)

(assert (=> b!710839 m!668003))

(assert (=> b!710728 d!97421))

(declare-fun d!97423 () Bool)

(declare-fun res!474366 () Bool)

(declare-fun e!399925 () Bool)

(assert (=> d!97423 (=> res!474366 e!399925)))

(assert (=> d!97423 (= res!474366 ((_ is Nil!13421) lt!318334))))

(assert (=> d!97423 (= (noDuplicate!1214 lt!318334) e!399925)))

(declare-fun b!710840 () Bool)

(declare-fun e!399926 () Bool)

(assert (=> b!710840 (= e!399925 e!399926)))

(declare-fun res!474367 () Bool)

(assert (=> b!710840 (=> (not res!474367) (not e!399926))))

(assert (=> b!710840 (= res!474367 (not (contains!3967 (t!19735 lt!318334) (h!14465 lt!318334))))))

(declare-fun b!710841 () Bool)

(assert (=> b!710841 (= e!399926 (noDuplicate!1214 (t!19735 lt!318334)))))

(assert (= (and d!97423 (not res!474366)) b!710840))

(assert (= (and b!710840 res!474367) b!710841))

(declare-fun m!668005 () Bool)

(assert (=> b!710840 m!668005))

(declare-fun m!668007 () Bool)

(assert (=> b!710841 m!668007))

(assert (=> b!710729 d!97423))

(declare-fun d!97425 () Bool)

(assert (=> d!97425 (= (validKeyInArray!0 k0!2824) (and (not (= k0!2824 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2824 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!710735 d!97425))

(declare-fun d!97427 () Bool)

(declare-fun lt!318349 () Bool)

(assert (=> d!97427 (= lt!318349 (select (content!355 newAcc!49) k0!2824))))

(declare-fun e!399927 () Bool)

(assert (=> d!97427 (= lt!318349 e!399927)))

(declare-fun res!474368 () Bool)

(assert (=> d!97427 (=> (not res!474368) (not e!399927))))

(assert (=> d!97427 (= res!474368 ((_ is Cons!13420) newAcc!49))))

(assert (=> d!97427 (= (contains!3967 newAcc!49 k0!2824) lt!318349)))

(declare-fun b!710842 () Bool)

(declare-fun e!399928 () Bool)

(assert (=> b!710842 (= e!399927 e!399928)))

(declare-fun res!474369 () Bool)

(assert (=> b!710842 (=> res!474369 e!399928)))

(assert (=> b!710842 (= res!474369 (= (h!14465 newAcc!49) k0!2824))))

(declare-fun b!710843 () Bool)

(assert (=> b!710843 (= e!399928 (contains!3967 (t!19735 newAcc!49) k0!2824))))

(assert (= (and d!97427 res!474368) b!710842))

(assert (= (and b!710842 (not res!474369)) b!710843))

(assert (=> d!97427 m!667985))

(declare-fun m!668009 () Bool)

(assert (=> d!97427 m!668009))

(declare-fun m!668011 () Bool)

(assert (=> b!710843 m!668011))

(assert (=> b!710714 d!97427))

(declare-fun d!97429 () Bool)

(assert (=> d!97429 (= (validKeyInArray!0 (select (arr!19330 a!3591) from!2969)) (and (not (= (select (arr!19330 a!3591) from!2969) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!19330 a!3591) from!2969) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!710711 d!97429))

(declare-fun d!97431 () Bool)

(declare-fun lt!318350 () Bool)

(assert (=> d!97431 (= lt!318350 (select (content!355 acc!652) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!399929 () Bool)

(assert (=> d!97431 (= lt!318350 e!399929)))

(declare-fun res!474370 () Bool)

(assert (=> d!97431 (=> (not res!474370) (not e!399929))))

(assert (=> d!97431 (= res!474370 ((_ is Cons!13420) acc!652))))

(assert (=> d!97431 (= (contains!3967 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000) lt!318350)))

(declare-fun b!710844 () Bool)

(declare-fun e!399930 () Bool)

(assert (=> b!710844 (= e!399929 e!399930)))

(declare-fun res!474371 () Bool)

(assert (=> b!710844 (=> res!474371 e!399930)))

(assert (=> b!710844 (= res!474371 (= (h!14465 acc!652) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!710845 () Bool)

(assert (=> b!710845 (= e!399930 (contains!3967 (t!19735 acc!652) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!97431 res!474370) b!710844))

(assert (= (and b!710844 (not res!474371)) b!710845))

(assert (=> d!97431 m!667999))

(declare-fun m!668013 () Bool)

(assert (=> d!97431 m!668013))

(declare-fun m!668015 () Bool)

(assert (=> b!710845 m!668015))

(assert (=> b!710732 d!97431))

(declare-fun d!97435 () Bool)

(declare-fun lt!318351 () Bool)

(assert (=> d!97435 (= lt!318351 (select (content!355 acc!652) k0!2824))))

(declare-fun e!399931 () Bool)

(assert (=> d!97435 (= lt!318351 e!399931)))

(declare-fun res!474372 () Bool)

(assert (=> d!97435 (=> (not res!474372) (not e!399931))))

(assert (=> d!97435 (= res!474372 ((_ is Cons!13420) acc!652))))

(assert (=> d!97435 (= (contains!3967 acc!652 k0!2824) lt!318351)))

(declare-fun b!710846 () Bool)

(declare-fun e!399932 () Bool)

(assert (=> b!710846 (= e!399931 e!399932)))

(declare-fun res!474373 () Bool)

(assert (=> b!710846 (=> res!474373 e!399932)))

(assert (=> b!710846 (= res!474373 (= (h!14465 acc!652) k0!2824))))

(declare-fun b!710847 () Bool)

(assert (=> b!710847 (= e!399932 (contains!3967 (t!19735 acc!652) k0!2824))))

(assert (= (and d!97435 res!474372) b!710846))

(assert (= (and b!710846 (not res!474373)) b!710847))

(assert (=> d!97435 m!667999))

(declare-fun m!668017 () Bool)

(assert (=> d!97435 m!668017))

(declare-fun m!668019 () Bool)

(assert (=> b!710847 m!668019))

(assert (=> b!710733 d!97435))

(declare-fun d!97437 () Bool)

(declare-fun res!474394 () Bool)

(declare-fun e!399956 () Bool)

(assert (=> d!97437 (=> res!474394 e!399956)))

(assert (=> d!97437 (= res!474394 ((_ is Nil!13421) acc!652))))

(assert (=> d!97437 (= (subseq!411 acc!652 newAcc!49) e!399956)))

(declare-fun b!710870 () Bool)

(declare-fun e!399954 () Bool)

(assert (=> b!710870 (= e!399954 (subseq!411 (t!19735 acc!652) (t!19735 newAcc!49)))))

(declare-fun b!710869 () Bool)

(declare-fun e!399955 () Bool)

(declare-fun e!399953 () Bool)

(assert (=> b!710869 (= e!399955 e!399953)))

(declare-fun res!474396 () Bool)

(assert (=> b!710869 (=> res!474396 e!399953)))

(assert (=> b!710869 (= res!474396 e!399954)))

(declare-fun res!474395 () Bool)

(assert (=> b!710869 (=> (not res!474395) (not e!399954))))

(assert (=> b!710869 (= res!474395 (= (h!14465 acc!652) (h!14465 newAcc!49)))))

(declare-fun b!710868 () Bool)

(assert (=> b!710868 (= e!399956 e!399955)))

(declare-fun res!474397 () Bool)

(assert (=> b!710868 (=> (not res!474397) (not e!399955))))

(assert (=> b!710868 (= res!474397 ((_ is Cons!13420) newAcc!49))))

(declare-fun b!710871 () Bool)

(assert (=> b!710871 (= e!399953 (subseq!411 acc!652 (t!19735 newAcc!49)))))

(assert (= (and d!97437 (not res!474394)) b!710868))

(assert (= (and b!710868 res!474397) b!710869))

(assert (= (and b!710869 res!474395) b!710870))

(assert (= (and b!710869 (not res!474396)) b!710871))

(declare-fun m!668029 () Bool)

(assert (=> b!710870 m!668029))

(declare-fun m!668031 () Bool)

(assert (=> b!710871 m!668031))

(assert (=> b!710712 d!97437))

(declare-fun d!97449 () Bool)

(declare-fun res!474398 () Bool)

(declare-fun e!399957 () Bool)

(assert (=> d!97449 (=> res!474398 e!399957)))

(assert (=> d!97449 (= res!474398 ((_ is Nil!13421) newAcc!49))))

(assert (=> d!97449 (= (noDuplicate!1214 newAcc!49) e!399957)))

(declare-fun b!710872 () Bool)

(declare-fun e!399958 () Bool)

(assert (=> b!710872 (= e!399957 e!399958)))

(declare-fun res!474399 () Bool)

(assert (=> b!710872 (=> (not res!474399) (not e!399958))))

(assert (=> b!710872 (= res!474399 (not (contains!3967 (t!19735 newAcc!49) (h!14465 newAcc!49))))))

(declare-fun b!710873 () Bool)

(assert (=> b!710873 (= e!399958 (noDuplicate!1214 (t!19735 newAcc!49)))))

(assert (= (and d!97449 (not res!474398)) b!710872))

(assert (= (and b!710872 res!474399) b!710873))

(declare-fun m!668033 () Bool)

(assert (=> b!710872 m!668033))

(declare-fun m!668035 () Bool)

(assert (=> b!710873 m!668035))

(assert (=> b!710713 d!97449))

(declare-fun d!97451 () Bool)

(declare-fun res!474404 () Bool)

(declare-fun e!399966 () Bool)

(assert (=> d!97451 (=> res!474404 e!399966)))

(assert (=> d!97451 (= res!474404 ((_ is Nil!13421) lt!318334))))

(assert (=> d!97451 (= (subseq!411 lt!318334 lt!318335) e!399966)))

(declare-fun b!710880 () Bool)

(declare-fun e!399964 () Bool)

(assert (=> b!710880 (= e!399964 (subseq!411 (t!19735 lt!318334) (t!19735 lt!318335)))))

(declare-fun b!710879 () Bool)

(declare-fun e!399965 () Bool)

(declare-fun e!399963 () Bool)

(assert (=> b!710879 (= e!399965 e!399963)))

(declare-fun res!474406 () Bool)

(assert (=> b!710879 (=> res!474406 e!399963)))

(assert (=> b!710879 (= res!474406 e!399964)))

(declare-fun res!474405 () Bool)

(assert (=> b!710879 (=> (not res!474405) (not e!399964))))

(assert (=> b!710879 (= res!474405 (= (h!14465 lt!318334) (h!14465 lt!318335)))))

(declare-fun b!710878 () Bool)

(assert (=> b!710878 (= e!399966 e!399965)))

(declare-fun res!474407 () Bool)

(assert (=> b!710878 (=> (not res!474407) (not e!399965))))

(assert (=> b!710878 (= res!474407 ((_ is Cons!13420) lt!318335))))

(declare-fun b!710881 () Bool)

(assert (=> b!710881 (= e!399963 (subseq!411 lt!318334 (t!19735 lt!318335)))))

(assert (= (and d!97451 (not res!474404)) b!710878))

(assert (= (and b!710878 res!474407) b!710879))

(assert (= (and b!710879 res!474405) b!710880))

(assert (= (and b!710879 (not res!474406)) b!710881))

(declare-fun m!668037 () Bool)

(assert (=> b!710880 m!668037))

(declare-fun m!668039 () Bool)

(assert (=> b!710881 m!668039))

(assert (=> b!710734 d!97451))

(declare-fun d!97453 () Bool)

(declare-fun lt!318354 () Bool)

(assert (=> d!97453 (= lt!318354 (select (content!355 lt!318334) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!399967 () Bool)

(assert (=> d!97453 (= lt!318354 e!399967)))

(declare-fun res!474408 () Bool)

(assert (=> d!97453 (=> (not res!474408) (not e!399967))))

(assert (=> d!97453 (= res!474408 ((_ is Cons!13420) lt!318334))))

(assert (=> d!97453 (= (contains!3967 lt!318334 #b0000000000000000000000000000000000000000000000000000000000000000) lt!318354)))

(declare-fun b!710882 () Bool)

(declare-fun e!399968 () Bool)

(assert (=> b!710882 (= e!399967 e!399968)))

(declare-fun res!474409 () Bool)

(assert (=> b!710882 (=> res!474409 e!399968)))

(assert (=> b!710882 (= res!474409 (= (h!14465 lt!318334) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!710883 () Bool)

(assert (=> b!710883 (= e!399968 (contains!3967 (t!19735 lt!318334) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!97453 res!474408) b!710882))

(assert (= (and b!710882 (not res!474409)) b!710883))

(declare-fun m!668041 () Bool)

(assert (=> d!97453 m!668041))

(declare-fun m!668043 () Bool)

(assert (=> d!97453 m!668043))

(declare-fun m!668045 () Bool)

(assert (=> b!710883 m!668045))

(assert (=> b!710719 d!97453))

(declare-fun d!97455 () Bool)

(assert (=> d!97455 (= (array_inv!15104 a!3591) (bvsge (size!19731 a!3591) #b00000000000000000000000000000000))))

(assert (=> start!63108 d!97455))

(declare-fun d!97457 () Bool)

(declare-fun lt!318356 () Bool)

(assert (=> d!97457 (= lt!318356 (select (content!355 newAcc!49) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!399971 () Bool)

(assert (=> d!97457 (= lt!318356 e!399971)))

(declare-fun res!474412 () Bool)

(assert (=> d!97457 (=> (not res!474412) (not e!399971))))

(assert (=> d!97457 (= res!474412 ((_ is Cons!13420) newAcc!49))))

(assert (=> d!97457 (= (contains!3967 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000) lt!318356)))

(declare-fun b!710886 () Bool)

(declare-fun e!399972 () Bool)

(assert (=> b!710886 (= e!399971 e!399972)))

(declare-fun res!474413 () Bool)

(assert (=> b!710886 (=> res!474413 e!399972)))

(assert (=> b!710886 (= res!474413 (= (h!14465 newAcc!49) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!710887 () Bool)

(assert (=> b!710887 (= e!399972 (contains!3967 (t!19735 newAcc!49) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!97457 res!474412) b!710886))

(assert (= (and b!710886 (not res!474413)) b!710887))

(assert (=> d!97457 m!667985))

(declare-fun m!668053 () Bool)

(assert (=> d!97457 m!668053))

(declare-fun m!668055 () Bool)

(assert (=> b!710887 m!668055))

(assert (=> b!710720 d!97457))

(declare-fun d!97461 () Bool)

(declare-fun lt!318358 () Bool)

(assert (=> d!97461 (= lt!318358 (select (content!355 lt!318334) k0!2824))))

(declare-fun e!399975 () Bool)

(assert (=> d!97461 (= lt!318358 e!399975)))

(declare-fun res!474416 () Bool)

(assert (=> d!97461 (=> (not res!474416) (not e!399975))))

(assert (=> d!97461 (= res!474416 ((_ is Cons!13420) lt!318334))))

(assert (=> d!97461 (= (contains!3967 lt!318334 k0!2824) lt!318358)))

(declare-fun b!710890 () Bool)

(declare-fun e!399976 () Bool)

(assert (=> b!710890 (= e!399975 e!399976)))

(declare-fun res!474417 () Bool)

(assert (=> b!710890 (=> res!474417 e!399976)))

(assert (=> b!710890 (= res!474417 (= (h!14465 lt!318334) k0!2824))))

(declare-fun b!710891 () Bool)

(assert (=> b!710891 (= e!399976 (contains!3967 (t!19735 lt!318334) k0!2824))))

(assert (= (and d!97461 res!474416) b!710890))

(assert (= (and b!710890 (not res!474417)) b!710891))

(assert (=> d!97461 m!668041))

(declare-fun m!668063 () Bool)

(assert (=> d!97461 m!668063))

(declare-fun m!668065 () Bool)

(assert (=> b!710891 m!668065))

(assert (=> b!710721 d!97461))

(declare-fun d!97465 () Bool)

(declare-fun lt!318360 () Bool)

(assert (=> d!97465 (= lt!318360 (select (content!355 lt!318334) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!399979 () Bool)

(assert (=> d!97465 (= lt!318360 e!399979)))

(declare-fun res!474420 () Bool)

(assert (=> d!97465 (=> (not res!474420) (not e!399979))))

(assert (=> d!97465 (= res!474420 ((_ is Cons!13420) lt!318334))))

(assert (=> d!97465 (= (contains!3967 lt!318334 #b1000000000000000000000000000000000000000000000000000000000000000) lt!318360)))

(declare-fun b!710894 () Bool)

(declare-fun e!399980 () Bool)

(assert (=> b!710894 (= e!399979 e!399980)))

(declare-fun res!474421 () Bool)

(assert (=> b!710894 (=> res!474421 e!399980)))

(assert (=> b!710894 (= res!474421 (= (h!14465 lt!318334) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!710895 () Bool)

(assert (=> b!710895 (= e!399980 (contains!3967 (t!19735 lt!318334) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!97465 res!474420) b!710894))

(assert (= (and b!710894 (not res!474421)) b!710895))

(assert (=> d!97465 m!668041))

(declare-fun m!668071 () Bool)

(assert (=> d!97465 m!668071))

(declare-fun m!668073 () Bool)

(assert (=> b!710895 m!668073))

(assert (=> b!710716 d!97465))

(declare-fun d!97469 () Bool)

(declare-fun lt!318363 () Bool)

(assert (=> d!97469 (= lt!318363 (select (content!355 newAcc!49) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!399984 () Bool)

(assert (=> d!97469 (= lt!318363 e!399984)))

(declare-fun res!474422 () Bool)

(assert (=> d!97469 (=> (not res!474422) (not e!399984))))

(assert (=> d!97469 (= res!474422 ((_ is Cons!13420) newAcc!49))))

(assert (=> d!97469 (= (contains!3967 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000) lt!318363)))

(declare-fun b!710900 () Bool)

(declare-fun e!399985 () Bool)

(assert (=> b!710900 (= e!399984 e!399985)))

(declare-fun res!474423 () Bool)

(assert (=> b!710900 (=> res!474423 e!399985)))

(assert (=> b!710900 (= res!474423 (= (h!14465 newAcc!49) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!710901 () Bool)

(assert (=> b!710901 (= e!399985 (contains!3967 (t!19735 newAcc!49) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!97469 res!474422) b!710900))

(assert (= (and b!710900 (not res!474423)) b!710901))

(assert (=> d!97469 m!667985))

(declare-fun m!668075 () Bool)

(assert (=> d!97469 m!668075))

(declare-fun m!668077 () Bool)

(assert (=> b!710901 m!668077))

(assert (=> b!710717 d!97469))

(declare-fun d!97471 () Bool)

(declare-fun res!474424 () Bool)

(declare-fun e!399988 () Bool)

(assert (=> d!97471 (=> res!474424 e!399988)))

(assert (=> d!97471 (= res!474424 ((_ is Nil!13421) lt!318335))))

(assert (=> d!97471 (= (noDuplicate!1214 lt!318335) e!399988)))

(declare-fun b!710906 () Bool)

(declare-fun e!399989 () Bool)

(assert (=> b!710906 (= e!399988 e!399989)))

(declare-fun res!474425 () Bool)

(assert (=> b!710906 (=> (not res!474425) (not e!399989))))

(assert (=> b!710906 (= res!474425 (not (contains!3967 (t!19735 lt!318335) (h!14465 lt!318335))))))

(declare-fun b!710907 () Bool)

(assert (=> b!710907 (= e!399989 (noDuplicate!1214 (t!19735 lt!318335)))))

(assert (= (and d!97471 (not res!474424)) b!710906))

(assert (= (and b!710906 res!474425) b!710907))

(declare-fun m!668079 () Bool)

(assert (=> b!710906 m!668079))

(declare-fun m!668081 () Bool)

(assert (=> b!710907 m!668081))

(assert (=> b!710718 d!97471))

(declare-fun d!97473 () Bool)

(declare-fun res!474439 () Bool)

(declare-fun e!400005 () Bool)

(assert (=> d!97473 (=> res!474439 e!400005)))

(assert (=> d!97473 (= res!474439 (= (select (arr!19330 a!3591) from!2969) k0!2824))))

(assert (=> d!97473 (= (arrayContainsKey!0 a!3591 k0!2824 from!2969) e!400005)))

(declare-fun b!710925 () Bool)

(declare-fun e!400006 () Bool)

(assert (=> b!710925 (= e!400005 e!400006)))

(declare-fun res!474440 () Bool)

(assert (=> b!710925 (=> (not res!474440) (not e!400006))))

(assert (=> b!710925 (= res!474440 (bvslt (bvadd from!2969 #b00000000000000000000000000000001) (size!19731 a!3591)))))

(declare-fun b!710926 () Bool)

(assert (=> b!710926 (= e!400006 (arrayContainsKey!0 a!3591 k0!2824 (bvadd from!2969 #b00000000000000000000000000000001)))))

(assert (= (and d!97473 (not res!474439)) b!710925))

(assert (= (and b!710925 res!474440) b!710926))

(assert (=> d!97473 m!667913))

(declare-fun m!668085 () Bool)

(assert (=> b!710926 m!668085))

(assert (=> b!710724 d!97473))

(declare-fun d!97477 () Bool)

(assert (=> d!97477 (= ($colon$colon!521 newAcc!49 (select (arr!19330 a!3591) from!2969)) (Cons!13420 (select (arr!19330 a!3591) from!2969) newAcc!49))))

(assert (=> b!710725 d!97477))

(declare-fun d!97481 () Bool)

(assert (=> d!97481 (= ($colon$colon!521 acc!652 (select (arr!19330 a!3591) from!2969)) (Cons!13420 (select (arr!19330 a!3591) from!2969) acc!652))))

(assert (=> b!710725 d!97481))

(declare-fun d!97483 () Bool)

(declare-fun res!474441 () Bool)

(declare-fun e!400007 () Bool)

(assert (=> d!97483 (=> res!474441 e!400007)))

(assert (=> d!97483 (= res!474441 (= (select (arr!19330 a!3591) (bvadd #b00000000000000000000000000000001 from!2969)) k0!2824))))

(assert (=> d!97483 (= (arrayContainsKey!0 a!3591 k0!2824 (bvadd #b00000000000000000000000000000001 from!2969)) e!400007)))

(declare-fun b!710927 () Bool)

(declare-fun e!400008 () Bool)

(assert (=> b!710927 (= e!400007 e!400008)))

(declare-fun res!474442 () Bool)

(assert (=> b!710927 (=> (not res!474442) (not e!400008))))

(assert (=> b!710927 (= res!474442 (bvslt (bvadd #b00000000000000000000000000000001 from!2969 #b00000000000000000000000000000001) (size!19731 a!3591)))))

(declare-fun b!710928 () Bool)

(assert (=> b!710928 (= e!400008 (arrayContainsKey!0 a!3591 k0!2824 (bvadd #b00000000000000000000000000000001 from!2969 #b00000000000000000000000000000001)))))

(assert (= (and d!97483 (not res!474441)) b!710927))

(assert (= (and b!710927 res!474442) b!710928))

(declare-fun m!668099 () Bool)

(assert (=> d!97483 m!668099))

(declare-fun m!668101 () Bool)

(assert (=> b!710928 m!668101))

(assert (=> b!710726 d!97483))

(declare-fun b!710979 () Bool)

(declare-fun e!400057 () Bool)

(declare-fun e!400060 () Bool)

(assert (=> b!710979 (= e!400057 e!400060)))

(declare-fun c!78612 () Bool)

(assert (=> b!710979 (= c!78612 (validKeyInArray!0 (select (arr!19330 a!3591) from!2969)))))

(declare-fun b!710980 () Bool)

(declare-fun call!34500 () Bool)

(assert (=> b!710980 (= e!400060 call!34500)))

(declare-fun bm!34497 () Bool)

(assert (=> bm!34497 (= call!34500 (arrayNoDuplicates!0 a!3591 (bvadd from!2969 #b00000000000000000000000000000001) (ite c!78612 (Cons!13420 (select (arr!19330 a!3591) from!2969) acc!652) acc!652)))))

(declare-fun b!710981 () Bool)

(assert (=> b!710981 (= e!400060 call!34500)))

(declare-fun b!710982 () Bool)

(declare-fun e!400058 () Bool)

(assert (=> b!710982 (= e!400058 e!400057)))

(declare-fun res!474490 () Bool)

(assert (=> b!710982 (=> (not res!474490) (not e!400057))))

(declare-fun e!400059 () Bool)

(assert (=> b!710982 (= res!474490 (not e!400059))))

(declare-fun res!474489 () Bool)

(assert (=> b!710982 (=> (not res!474489) (not e!400059))))

(assert (=> b!710982 (= res!474489 (validKeyInArray!0 (select (arr!19330 a!3591) from!2969)))))

(declare-fun d!97485 () Bool)

(declare-fun res!474491 () Bool)

(assert (=> d!97485 (=> res!474491 e!400058)))

(assert (=> d!97485 (= res!474491 (bvsge from!2969 (size!19731 a!3591)))))

(assert (=> d!97485 (= (arrayNoDuplicates!0 a!3591 from!2969 acc!652) e!400058)))

(declare-fun b!710983 () Bool)

(assert (=> b!710983 (= e!400059 (contains!3967 acc!652 (select (arr!19330 a!3591) from!2969)))))

(assert (= (and d!97485 (not res!474491)) b!710982))

(assert (= (and b!710982 res!474489) b!710983))

(assert (= (and b!710982 res!474490) b!710979))

(assert (= (and b!710979 c!78612) b!710981))

(assert (= (and b!710979 (not c!78612)) b!710980))

(assert (= (or b!710981 b!710980) bm!34497))

(assert (=> b!710979 m!667913))

(assert (=> b!710979 m!667913))

(assert (=> b!710979 m!667915))

(assert (=> bm!34497 m!667913))

(declare-fun m!668141 () Bool)

(assert (=> bm!34497 m!668141))

(assert (=> b!710982 m!667913))

(assert (=> b!710982 m!667913))

(assert (=> b!710982 m!667915))

(assert (=> b!710983 m!667913))

(assert (=> b!710983 m!667913))

(declare-fun m!668143 () Bool)

(assert (=> b!710983 m!668143))

(assert (=> b!710722 d!97485))

(declare-fun b!710986 () Bool)

(declare-fun e!400063 () Bool)

(declare-fun e!400066 () Bool)

(assert (=> b!710986 (= e!400063 e!400066)))

(declare-fun c!78613 () Bool)

(assert (=> b!710986 (= c!78613 (validKeyInArray!0 (select (arr!19330 a!3591) (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!710987 () Bool)

(declare-fun call!34501 () Bool)

(assert (=> b!710987 (= e!400066 call!34501)))

(declare-fun bm!34498 () Bool)

(assert (=> bm!34498 (= call!34501 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969 #b00000000000000000000000000000001) (ite c!78613 (Cons!13420 (select (arr!19330 a!3591) (bvadd #b00000000000000000000000000000001 from!2969)) lt!318334) lt!318334)))))

(declare-fun b!710988 () Bool)

(assert (=> b!710988 (= e!400066 call!34501)))

(declare-fun b!710989 () Bool)

(declare-fun e!400064 () Bool)

(assert (=> b!710989 (= e!400064 e!400063)))

(declare-fun res!474495 () Bool)

(assert (=> b!710989 (=> (not res!474495) (not e!400063))))

(declare-fun e!400065 () Bool)

(assert (=> b!710989 (= res!474495 (not e!400065))))

(declare-fun res!474494 () Bool)

(assert (=> b!710989 (=> (not res!474494) (not e!400065))))

(assert (=> b!710989 (= res!474494 (validKeyInArray!0 (select (arr!19330 a!3591) (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun d!97505 () Bool)

(declare-fun res!474496 () Bool)

(assert (=> d!97505 (=> res!474496 e!400064)))

(assert (=> d!97505 (= res!474496 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) (size!19731 a!3591)))))

(assert (=> d!97505 (= (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) lt!318334) e!400064)))

(declare-fun b!710990 () Bool)

(assert (=> b!710990 (= e!400065 (contains!3967 lt!318334 (select (arr!19330 a!3591) (bvadd #b00000000000000000000000000000001 from!2969))))))

(assert (= (and d!97505 (not res!474496)) b!710989))

(assert (= (and b!710989 res!474494) b!710990))

(assert (= (and b!710989 res!474495) b!710986))

(assert (= (and b!710986 c!78613) b!710988))

(assert (= (and b!710986 (not c!78613)) b!710987))

(assert (= (or b!710988 b!710987) bm!34498))

(assert (=> b!710986 m!668099))

(assert (=> b!710986 m!668099))

(declare-fun m!668145 () Bool)

(assert (=> b!710986 m!668145))

(assert (=> bm!34498 m!668099))

(declare-fun m!668147 () Bool)

(assert (=> bm!34498 m!668147))

(assert (=> b!710989 m!668099))

(assert (=> b!710989 m!668099))

(assert (=> b!710989 m!668145))

(assert (=> b!710990 m!668099))

(assert (=> b!710990 m!668099))

(declare-fun m!668149 () Bool)

(assert (=> b!710990 m!668149))

(assert (=> b!710723 d!97505))

(check-sat (not b!710839) (not b!710873) (not b!710816) (not d!97419) (not d!97431) (not b!710840) (not d!97465) (not b!710906) (not b!710883) (not b!710845) (not d!97461) (not b!710870) (not b!710983) (not b!710901) (not b!710895) (not b!710843) (not b!710872) (not b!710887) (not b!710881) (not b!710926) (not b!710982) (not d!97453) (not b!710979) (not d!97421) (not b!710989) (not b!710871) (not b!710847) (not bm!34491) (not b!710831) (not d!97417) (not b!710841) (not bm!34498) (not d!97435) (not b!710928) (not d!97427) (not b!710815) (not b!710990) (not b!710891) (not d!97457) (not d!97469) (not b!710907) (not b!710880) (not b!710986) (not bm!34497) (not b!710837))
(check-sat)
