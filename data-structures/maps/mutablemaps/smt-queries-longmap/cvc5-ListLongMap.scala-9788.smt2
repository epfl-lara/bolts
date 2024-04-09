; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116246 () Bool)

(assert start!116246)

(declare-fun b!1372159 () Bool)

(declare-fun res!915576 () Bool)

(declare-fun e!777409 () Bool)

(assert (=> b!1372159 (=> (not res!915576) (not e!777409))))

(declare-datatypes ((List!32168 0))(
  ( (Nil!32165) (Cons!32164 (h!33373 (_ BitVec 64)) (t!46869 List!32168)) )
))
(declare-fun acc!866 () List!32168)

(declare-fun noDuplicate!2585 (List!32168) Bool)

(assert (=> b!1372159 (= res!915576 (noDuplicate!2585 acc!866))))

(declare-fun b!1372160 () Bool)

(declare-fun res!915573 () Bool)

(assert (=> b!1372160 (=> (not res!915573) (not e!777409))))

(declare-fun newAcc!98 () List!32168)

(declare-fun contains!9706 (List!32168 (_ BitVec 64)) Bool)

(assert (=> b!1372160 (= res!915573 (not (contains!9706 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1372161 () Bool)

(declare-fun res!915572 () Bool)

(assert (=> b!1372161 (=> (not res!915572) (not e!777409))))

(declare-fun subseq!1097 (List!32168 List!32168) Bool)

(assert (=> b!1372161 (= res!915572 (subseq!1097 newAcc!98 acc!866))))

(declare-datatypes ((array!93025 0))(
  ( (array!93026 (arr!44920 (Array (_ BitVec 32) (_ BitVec 64))) (size!45471 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!93025)

(declare-fun from!3239 () (_ BitVec 32))

(declare-fun e!777408 () Bool)

(declare-fun b!1372162 () Bool)

(declare-fun arrayNoDuplicates!0 (array!93025 (_ BitVec 32) List!32168) Bool)

(assert (=> b!1372162 (= e!777408 (not (arrayNoDuplicates!0 a!3861 from!3239 newAcc!98)))))

(declare-fun b!1372163 () Bool)

(declare-fun res!915575 () Bool)

(assert (=> b!1372163 (=> (not res!915575) (not e!777408))))

(assert (=> b!1372163 (= res!915575 (bvslt from!3239 (size!45471 a!3861)))))

(declare-fun b!1372164 () Bool)

(declare-fun res!915581 () Bool)

(assert (=> b!1372164 (=> (not res!915581) (not e!777409))))

(assert (=> b!1372164 (= res!915581 (not (contains!9706 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1372165 () Bool)

(declare-fun res!915577 () Bool)

(assert (=> b!1372165 (=> (not res!915577) (not e!777408))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1372165 (= res!915577 (validKeyInArray!0 (select (arr!44920 a!3861) from!3239)))))

(declare-fun b!1372166 () Bool)

(declare-fun res!915574 () Bool)

(assert (=> b!1372166 (=> (not res!915574) (not e!777409))))

(assert (=> b!1372166 (= res!915574 (not (contains!9706 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1372167 () Bool)

(declare-fun res!915582 () Bool)

(assert (=> b!1372167 (=> (not res!915582) (not e!777408))))

(assert (=> b!1372167 (= res!915582 (contains!9706 acc!866 (select (arr!44920 a!3861) from!3239)))))

(declare-fun res!915578 () Bool)

(assert (=> start!116246 (=> (not res!915578) (not e!777409))))

(assert (=> start!116246 (= res!915578 (and (bvslt (size!45471 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45471 a!3861))))))

(assert (=> start!116246 e!777409))

(declare-fun array_inv!33865 (array!93025) Bool)

(assert (=> start!116246 (array_inv!33865 a!3861)))

(assert (=> start!116246 true))

(declare-fun b!1372168 () Bool)

(declare-fun res!915580 () Bool)

(assert (=> b!1372168 (=> (not res!915580) (not e!777409))))

(assert (=> b!1372168 (= res!915580 (not (contains!9706 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1372169 () Bool)

(assert (=> b!1372169 (= e!777409 e!777408)))

(declare-fun res!915579 () Bool)

(assert (=> b!1372169 (=> (not res!915579) (not e!777408))))

(assert (=> b!1372169 (= res!915579 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45275 0))(
  ( (Unit!45276) )
))
(declare-fun lt!602768 () Unit!45275)

(declare-fun noDuplicateSubseq!284 (List!32168 List!32168) Unit!45275)

(assert (=> b!1372169 (= lt!602768 (noDuplicateSubseq!284 newAcc!98 acc!866))))

(assert (= (and start!116246 res!915578) b!1372159))

(assert (= (and b!1372159 res!915576) b!1372164))

(assert (= (and b!1372164 res!915581) b!1372166))

(assert (= (and b!1372166 res!915574) b!1372160))

(assert (= (and b!1372160 res!915573) b!1372168))

(assert (= (and b!1372168 res!915580) b!1372161))

(assert (= (and b!1372161 res!915572) b!1372169))

(assert (= (and b!1372169 res!915579) b!1372163))

(assert (= (and b!1372163 res!915575) b!1372165))

(assert (= (and b!1372165 res!915577) b!1372167))

(assert (= (and b!1372167 res!915582) b!1372162))

(declare-fun m!1255687 () Bool)

(assert (=> b!1372164 m!1255687))

(declare-fun m!1255689 () Bool)

(assert (=> b!1372169 m!1255689))

(declare-fun m!1255691 () Bool)

(assert (=> b!1372169 m!1255691))

(declare-fun m!1255693 () Bool)

(assert (=> b!1372166 m!1255693))

(declare-fun m!1255695 () Bool)

(assert (=> b!1372160 m!1255695))

(declare-fun m!1255697 () Bool)

(assert (=> b!1372161 m!1255697))

(declare-fun m!1255699 () Bool)

(assert (=> b!1372167 m!1255699))

(assert (=> b!1372167 m!1255699))

(declare-fun m!1255701 () Bool)

(assert (=> b!1372167 m!1255701))

(declare-fun m!1255703 () Bool)

(assert (=> b!1372159 m!1255703))

(declare-fun m!1255705 () Bool)

(assert (=> b!1372168 m!1255705))

(declare-fun m!1255707 () Bool)

(assert (=> b!1372162 m!1255707))

(declare-fun m!1255709 () Bool)

(assert (=> start!116246 m!1255709))

(assert (=> b!1372165 m!1255699))

(assert (=> b!1372165 m!1255699))

(declare-fun m!1255711 () Bool)

(assert (=> b!1372165 m!1255711))

(push 1)

(assert (not b!1372161))

(assert (not start!116246))

(assert (not b!1372169))

(assert (not b!1372168))

(assert (not b!1372159))

(assert (not b!1372164))

(assert (not b!1372166))

(assert (not b!1372162))

(assert (not b!1372167))

(assert (not b!1372160))

(assert (not b!1372165))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!147717 () Bool)

(declare-fun lt!602780 () Bool)

(declare-fun content!751 (List!32168) (Set (_ BitVec 64)))

(assert (=> d!147717 (= lt!602780 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!751 newAcc!98)))))

(declare-fun e!777446 () Bool)

(assert (=> d!147717 (= lt!602780 e!777446)))

(declare-fun res!915668 () Bool)

(assert (=> d!147717 (=> (not res!915668) (not e!777446))))

(assert (=> d!147717 (= res!915668 (is-Cons!32164 newAcc!98))))

(assert (=> d!147717 (= (contains!9706 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000) lt!602780)))

(declare-fun b!1372254 () Bool)

(declare-fun e!777447 () Bool)

(assert (=> b!1372254 (= e!777446 e!777447)))

(declare-fun res!915667 () Bool)

(assert (=> b!1372254 (=> res!915667 e!777447)))

(assert (=> b!1372254 (= res!915667 (= (h!33373 newAcc!98) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1372255 () Bool)

(assert (=> b!1372255 (= e!777447 (contains!9706 (t!46869 newAcc!98) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!147717 res!915668) b!1372254))

(assert (= (and b!1372254 (not res!915667)) b!1372255))

(declare-fun m!1255771 () Bool)

(assert (=> d!147717 m!1255771))

(declare-fun m!1255773 () Bool)

(assert (=> d!147717 m!1255773))

(declare-fun m!1255775 () Bool)

(assert (=> b!1372255 m!1255775))

(assert (=> b!1372160 d!147717))

(declare-fun d!147723 () Bool)

(assert (=> d!147723 (= (array_inv!33865 a!3861) (bvsge (size!45471 a!3861) #b00000000000000000000000000000000))))

(assert (=> start!116246 d!147723))

(declare-fun d!147725 () Bool)

(declare-fun lt!602781 () Bool)

(assert (=> d!147725 (= lt!602781 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!751 acc!866)))))

(declare-fun e!777460 () Bool)

(assert (=> d!147725 (= lt!602781 e!777460)))

(declare-fun res!915680 () Bool)

(assert (=> d!147725 (=> (not res!915680) (not e!777460))))

(assert (=> d!147725 (= res!915680 (is-Cons!32164 acc!866))))

(assert (=> d!147725 (= (contains!9706 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000) lt!602781)))

(declare-fun b!1372270 () Bool)

(declare-fun e!777461 () Bool)

(assert (=> b!1372270 (= e!777460 e!777461)))

(declare-fun res!915679 () Bool)

(assert (=> b!1372270 (=> res!915679 e!777461)))

(assert (=> b!1372270 (= res!915679 (= (h!33373 acc!866) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1372271 () Bool)

(assert (=> b!1372271 (= e!777461 (contains!9706 (t!46869 acc!866) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!147725 res!915680) b!1372270))

(assert (= (and b!1372270 (not res!915679)) b!1372271))

(declare-fun m!1255781 () Bool)

(assert (=> d!147725 m!1255781))

(declare-fun m!1255783 () Bool)

(assert (=> d!147725 m!1255783))

(declare-fun m!1255785 () Bool)

(assert (=> b!1372271 m!1255785))

(assert (=> b!1372166 d!147725))

(declare-fun b!1372300 () Bool)

(declare-fun e!777489 () Bool)

(assert (=> b!1372300 (= e!777489 (subseq!1097 newAcc!98 (t!46869 acc!866)))))

(declare-fun b!1372298 () Bool)

(declare-fun e!777487 () Bool)

(assert (=> b!1372298 (= e!777487 e!777489)))

(declare-fun res!915705 () Bool)

(assert (=> b!1372298 (=> res!915705 e!777489)))

(declare-fun e!777486 () Bool)

(assert (=> b!1372298 (= res!915705 e!777486)))

(declare-fun res!915707 () Bool)

(assert (=> b!1372298 (=> (not res!915707) (not e!777486))))

(assert (=> b!1372298 (= res!915707 (= (h!33373 newAcc!98) (h!33373 acc!866)))))

(declare-fun b!1372297 () Bool)

(declare-fun e!777488 () Bool)

(assert (=> b!1372297 (= e!777488 e!777487)))

(declare-fun res!915704 () Bool)

(assert (=> b!1372297 (=> (not res!915704) (not e!777487))))

(assert (=> b!1372297 (= res!915704 (is-Cons!32164 acc!866))))

(declare-fun b!1372299 () Bool)

(assert (=> b!1372299 (= e!777486 (subseq!1097 (t!46869 newAcc!98) (t!46869 acc!866)))))

(declare-fun d!147729 () Bool)

(declare-fun res!915706 () Bool)

(assert (=> d!147729 (=> res!915706 e!777488)))

(assert (=> d!147729 (= res!915706 (is-Nil!32165 newAcc!98))))

(assert (=> d!147729 (= (subseq!1097 newAcc!98 acc!866) e!777488)))

(assert (= (and d!147729 (not res!915706)) b!1372297))

(assert (= (and b!1372297 res!915704) b!1372298))

(assert (= (and b!1372298 res!915707) b!1372299))

(assert (= (and b!1372298 (not res!915705)) b!1372300))

(declare-fun m!1255809 () Bool)

(assert (=> b!1372300 m!1255809))

(declare-fun m!1255811 () Bool)

(assert (=> b!1372299 m!1255811))

(assert (=> b!1372161 d!147729))

(declare-fun d!147743 () Bool)

(declare-fun lt!602785 () Bool)

(assert (=> d!147743 (= lt!602785 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!751 acc!866)))))

(declare-fun e!777490 () Bool)

(assert (=> d!147743 (= lt!602785 e!777490)))

(declare-fun res!915709 () Bool)

(assert (=> d!147743 (=> (not res!915709) (not e!777490))))

(assert (=> d!147743 (= res!915709 (is-Cons!32164 acc!866))))

(assert (=> d!147743 (= (contains!9706 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000) lt!602785)))

(declare-fun b!1372301 () Bool)

(declare-fun e!777491 () Bool)

(assert (=> b!1372301 (= e!777490 e!777491)))

(declare-fun res!915708 () Bool)

(assert (=> b!1372301 (=> res!915708 e!777491)))

(assert (=> b!1372301 (= res!915708 (= (h!33373 acc!866) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1372302 () Bool)

(assert (=> b!1372302 (= e!777491 (contains!9706 (t!46869 acc!866) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!147743 res!915709) b!1372301))

(assert (= (and b!1372301 (not res!915708)) b!1372302))

(assert (=> d!147743 m!1255781))

(declare-fun m!1255813 () Bool)

(assert (=> d!147743 m!1255813))

(declare-fun m!1255815 () Bool)

(assert (=> b!1372302 m!1255815))

(assert (=> b!1372164 d!147743))

(declare-fun d!147745 () Bool)

(declare-fun res!915722 () Bool)

(declare-fun e!777504 () Bool)

(assert (=> d!147745 (=> res!915722 e!777504)))

(assert (=> d!147745 (= res!915722 (is-Nil!32165 acc!866))))

(assert (=> d!147745 (= (noDuplicate!2585 acc!866) e!777504)))

(declare-fun b!1372315 () Bool)

(declare-fun e!777505 () Bool)

(assert (=> b!1372315 (= e!777504 e!777505)))

(declare-fun res!915723 () Bool)

(assert (=> b!1372315 (=> (not res!915723) (not e!777505))))

(assert (=> b!1372315 (= res!915723 (not (contains!9706 (t!46869 acc!866) (h!33373 acc!866))))))

(declare-fun b!1372316 () Bool)

(assert (=> b!1372316 (= e!777505 (noDuplicate!2585 (t!46869 acc!866)))))

(assert (= (and d!147745 (not res!915722)) b!1372315))

(assert (= (and b!1372315 res!915723) b!1372316))

(declare-fun m!1255827 () Bool)

(assert (=> b!1372315 m!1255827))

(declare-fun m!1255829 () Bool)

(assert (=> b!1372316 m!1255829))

(assert (=> b!1372159 d!147745))

(declare-fun d!147751 () Bool)

(assert (=> d!147751 (= (validKeyInArray!0 (select (arr!44920 a!3861) from!3239)) (and (not (= (select (arr!44920 a!3861) from!3239) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!44920 a!3861) from!3239) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1372165 d!147751))

(declare-fun d!147755 () Bool)

(declare-fun lt!602790 () Bool)

(assert (=> d!147755 (= lt!602790 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!751 newAcc!98)))))

(declare-fun e!777514 () Bool)

(assert (=> d!147755 (= lt!602790 e!777514)))

(declare-fun res!915731 () Bool)

(assert (=> d!147755 (=> (not res!915731) (not e!777514))))

(assert (=> d!147755 (= res!915731 (is-Cons!32164 newAcc!98))))

(assert (=> d!147755 (= (contains!9706 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000) lt!602790)))

(declare-fun b!1372327 () Bool)

(declare-fun e!777515 () Bool)

(assert (=> b!1372327 (= e!777514 e!777515)))

(declare-fun res!915730 () Bool)

(assert (=> b!1372327 (=> res!915730 e!777515)))

(assert (=> b!1372327 (= res!915730 (= (h!33373 newAcc!98) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1372328 () Bool)

(assert (=> b!1372328 (= e!777515 (contains!9706 (t!46869 newAcc!98) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!147755 res!915731) b!1372327))

(assert (= (and b!1372327 (not res!915730)) b!1372328))

(assert (=> d!147755 m!1255771))

(declare-fun m!1255831 () Bool)

(assert (=> d!147755 m!1255831))

(declare-fun m!1255833 () Bool)

(assert (=> b!1372328 m!1255833))

(assert (=> b!1372168 d!147755))

(declare-fun b!1372366 () Bool)

(declare-fun e!777548 () Bool)

(declare-fun call!65595 () Bool)

(assert (=> b!1372366 (= e!777548 call!65595)))

(declare-fun d!147759 () Bool)

(declare-fun res!915759 () Bool)

(declare-fun e!777549 () Bool)

(assert (=> d!147759 (=> res!915759 e!777549)))

(assert (=> d!147759 (= res!915759 (bvsge from!3239 (size!45471 a!3861)))))

(assert (=> d!147759 (= (arrayNoDuplicates!0 a!3861 from!3239 acc!866) e!777549)))

(declare-fun b!1372367 () Bool)

(assert (=> b!1372367 (= e!777548 call!65595)))

(declare-fun b!1372368 () Bool)

(declare-fun e!777551 () Bool)

(assert (=> b!1372368 (= e!777549 e!777551)))

(declare-fun res!915760 () Bool)

(assert (=> b!1372368 (=> (not res!915760) (not e!777551))))

(declare-fun e!777550 () Bool)

(assert (=> b!1372368 (= res!915760 (not e!777550))))

(declare-fun res!915761 () Bool)

(assert (=> b!1372368 (=> (not res!915761) (not e!777550))))

(assert (=> b!1372368 (= res!915761 (validKeyInArray!0 (select (arr!44920 a!3861) from!3239)))))

(declare-fun b!1372369 () Bool)

(assert (=> b!1372369 (= e!777550 (contains!9706 acc!866 (select (arr!44920 a!3861) from!3239)))))

(declare-fun b!1372370 () Bool)

(assert (=> b!1372370 (= e!777551 e!777548)))

(declare-fun c!127746 () Bool)

(assert (=> b!1372370 (= c!127746 (validKeyInArray!0 (select (arr!44920 a!3861) from!3239)))))

(declare-fun bm!65592 () Bool)

(assert (=> bm!65592 (= call!65595 (arrayNoDuplicates!0 a!3861 (bvadd from!3239 #b00000000000000000000000000000001) (ite c!127746 (Cons!32164 (select (arr!44920 a!3861) from!3239) acc!866) acc!866)))))

(assert (= (and d!147759 (not res!915759)) b!1372368))

(assert (= (and b!1372368 res!915761) b!1372369))

(assert (= (and b!1372368 res!915760) b!1372370))

(assert (= (and b!1372370 c!127746) b!1372366))

(assert (= (and b!1372370 (not c!127746)) b!1372367))

(assert (= (or b!1372366 b!1372367) bm!65592))

(assert (=> b!1372368 m!1255699))

(assert (=> b!1372368 m!1255699))

(assert (=> b!1372368 m!1255711))

(assert (=> b!1372369 m!1255699))

(assert (=> b!1372369 m!1255699))

(assert (=> b!1372369 m!1255701))

(assert (=> b!1372370 m!1255699))

(assert (=> b!1372370 m!1255699))

(assert (=> b!1372370 m!1255711))

(assert (=> bm!65592 m!1255699))

(declare-fun m!1255857 () Bool)

(assert (=> bm!65592 m!1255857))

(assert (=> b!1372169 d!147759))

(declare-fun d!147775 () Bool)

(assert (=> d!147775 (noDuplicate!2585 newAcc!98)))

(declare-fun lt!602803 () Unit!45275)

(declare-fun choose!2029 (List!32168 List!32168) Unit!45275)

(assert (=> d!147775 (= lt!602803 (choose!2029 newAcc!98 acc!866))))

(declare-fun e!777570 () Bool)

(assert (=> d!147775 e!777570))

(declare-fun res!915780 () Bool)

(assert (=> d!147775 (=> (not res!915780) (not e!777570))))

(assert (=> d!147775 (= res!915780 (subseq!1097 newAcc!98 acc!866))))

(assert (=> d!147775 (= (noDuplicateSubseq!284 newAcc!98 acc!866) lt!602803)))

(declare-fun b!1372389 () Bool)

(assert (=> b!1372389 (= e!777570 (noDuplicate!2585 acc!866))))

(assert (= (and d!147775 res!915780) b!1372389))

(declare-fun m!1255875 () Bool)

(assert (=> d!147775 m!1255875))

(declare-fun m!1255877 () Bool)

(assert (=> d!147775 m!1255877))

(assert (=> d!147775 m!1255697))

(assert (=> b!1372389 m!1255703))

(assert (=> b!1372169 d!147775))

(declare-fun d!147781 () Bool)

(declare-fun lt!602804 () Bool)

(assert (=> d!147781 (= lt!602804 (set.member (select (arr!44920 a!3861) from!3239) (content!751 acc!866)))))

(declare-fun e!777571 () Bool)

(assert (=> d!147781 (= lt!602804 e!777571)))

(declare-fun res!915782 () Bool)

(assert (=> d!147781 (=> (not res!915782) (not e!777571))))

(assert (=> d!147781 (= res!915782 (is-Cons!32164 acc!866))))

(assert (=> d!147781 (= (contains!9706 acc!866 (select (arr!44920 a!3861) from!3239)) lt!602804)))

(declare-fun b!1372390 () Bool)

(declare-fun e!777572 () Bool)

(assert (=> b!1372390 (= e!777571 e!777572)))

(declare-fun res!915781 () Bool)

(assert (=> b!1372390 (=> res!915781 e!777572)))

(assert (=> b!1372390 (= res!915781 (= (h!33373 acc!866) (select (arr!44920 a!3861) from!3239)))))

(declare-fun b!1372391 () Bool)

(assert (=> b!1372391 (= e!777572 (contains!9706 (t!46869 acc!866) (select (arr!44920 a!3861) from!3239)))))

(assert (= (and d!147781 res!915782) b!1372390))

(assert (= (and b!1372390 (not res!915781)) b!1372391))

(assert (=> d!147781 m!1255781))

(assert (=> d!147781 m!1255699))

(declare-fun m!1255879 () Bool)

(assert (=> d!147781 m!1255879))

(assert (=> b!1372391 m!1255699))

(declare-fun m!1255881 () Bool)

(assert (=> b!1372391 m!1255881))

(assert (=> b!1372167 d!147781))

(declare-fun b!1372392 () Bool)

