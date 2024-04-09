; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62864 () Bool)

(assert start!62864)

(declare-fun b!708702 () Bool)

(declare-fun res!472477 () Bool)

(declare-fun e!398823 () Bool)

(assert (=> b!708702 (=> (not res!472477) (not e!398823))))

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!708702 (= res!472477 (validKeyInArray!0 k!2824))))

(declare-fun b!708703 () Bool)

(declare-fun e!398821 () Bool)

(assert (=> b!708703 (= e!398823 e!398821)))

(declare-fun res!472468 () Bool)

(assert (=> b!708703 (=> (not res!472468) (not e!398821))))

(declare-fun from!2969 () (_ BitVec 32))

(assert (=> b!708703 (= res!472468 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-datatypes ((List!13410 0))(
  ( (Nil!13407) (Cons!13406 (h!14451 (_ BitVec 64)) (t!19709 List!13410)) )
))
(declare-fun lt!318104 () List!13410)

(declare-datatypes ((array!40336 0))(
  ( (array!40337 (arr!19316 (Array (_ BitVec 32) (_ BitVec 64))) (size!19706 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40336)

(declare-fun acc!652 () List!13410)

(declare-fun $colon$colon!507 (List!13410 (_ BitVec 64)) List!13410)

(assert (=> b!708703 (= lt!318104 ($colon$colon!507 acc!652 (select (arr!19316 a!3591) from!2969)))))

(declare-fun b!708704 () Bool)

(declare-fun res!472475 () Bool)

(assert (=> b!708704 (=> (not res!472475) (not e!398823))))

(declare-fun contains!3953 (List!13410 (_ BitVec 64)) Bool)

(assert (=> b!708704 (= res!472475 (not (contains!3953 acc!652 k!2824)))))

(declare-fun b!708706 () Bool)

(declare-fun res!472473 () Bool)

(assert (=> b!708706 (=> (not res!472473) (not e!398823))))

(declare-fun newAcc!49 () List!13410)

(declare-fun subseq!397 (List!13410 List!13410) Bool)

(assert (=> b!708706 (= res!472473 (subseq!397 acc!652 newAcc!49))))

(declare-fun b!708707 () Bool)

(declare-fun res!472485 () Bool)

(assert (=> b!708707 (=> (not res!472485) (not e!398823))))

(declare-fun arrayContainsKey!0 (array!40336 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!708707 (= res!472485 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!708708 () Bool)

(declare-fun res!472470 () Bool)

(assert (=> b!708708 (=> (not res!472470) (not e!398821))))

(declare-fun noDuplicate!1200 (List!13410) Bool)

(assert (=> b!708708 (= res!472470 (noDuplicate!1200 ($colon$colon!507 newAcc!49 (select (arr!19316 a!3591) from!2969))))))

(declare-fun b!708709 () Bool)

(declare-fun res!472480 () Bool)

(assert (=> b!708709 (=> (not res!472480) (not e!398823))))

(declare-fun -!362 (List!13410 (_ BitVec 64)) List!13410)

(assert (=> b!708709 (= res!472480 (= (-!362 newAcc!49 k!2824) acc!652))))

(declare-fun b!708710 () Bool)

(declare-fun res!472472 () Bool)

(assert (=> b!708710 (=> (not res!472472) (not e!398821))))

(assert (=> b!708710 (= res!472472 (not (contains!3953 lt!318104 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!708711 () Bool)

(declare-fun res!472474 () Bool)

(assert (=> b!708711 (=> (not res!472474) (not e!398823))))

(assert (=> b!708711 (= res!472474 (noDuplicate!1200 newAcc!49))))

(declare-fun b!708712 () Bool)

(declare-fun res!472471 () Bool)

(assert (=> b!708712 (=> (not res!472471) (not e!398823))))

(assert (=> b!708712 (= res!472471 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19706 a!3591)))))

(declare-fun b!708713 () Bool)

(declare-fun res!472476 () Bool)

(assert (=> b!708713 (=> (not res!472476) (not e!398823))))

(assert (=> b!708713 (= res!472476 (noDuplicate!1200 acc!652))))

(declare-fun b!708714 () Bool)

(declare-fun res!472483 () Bool)

(assert (=> b!708714 (=> (not res!472483) (not e!398823))))

(declare-fun arrayNoDuplicates!0 (array!40336 (_ BitVec 32) List!13410) Bool)

(assert (=> b!708714 (= res!472483 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!708715 () Bool)

(declare-fun res!472482 () Bool)

(assert (=> b!708715 (=> (not res!472482) (not e!398821))))

(assert (=> b!708715 (= res!472482 (noDuplicate!1200 lt!318104))))

(declare-fun res!472487 () Bool)

(assert (=> start!62864 (=> (not res!472487) (not e!398823))))

(assert (=> start!62864 (= res!472487 (and (bvslt (size!19706 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19706 a!3591))))))

(assert (=> start!62864 e!398823))

(assert (=> start!62864 true))

(declare-fun array_inv!15090 (array!40336) Bool)

(assert (=> start!62864 (array_inv!15090 a!3591)))

(declare-fun b!708705 () Bool)

(declare-fun res!472481 () Bool)

(assert (=> b!708705 (=> (not res!472481) (not e!398823))))

(assert (=> b!708705 (= res!472481 (not (contains!3953 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!708716 () Bool)

(declare-fun res!472488 () Bool)

(assert (=> b!708716 (=> (not res!472488) (not e!398823))))

(assert (=> b!708716 (= res!472488 (not (contains!3953 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!708717 () Bool)

(declare-fun res!472486 () Bool)

(assert (=> b!708717 (=> (not res!472486) (not e!398823))))

(assert (=> b!708717 (= res!472486 (not (contains!3953 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!708718 () Bool)

(declare-fun res!472478 () Bool)

(assert (=> b!708718 (=> (not res!472478) (not e!398821))))

(assert (=> b!708718 (= res!472478 (not (contains!3953 lt!318104 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!708719 () Bool)

(declare-fun res!472469 () Bool)

(assert (=> b!708719 (=> (not res!472469) (not e!398823))))

(assert (=> b!708719 (= res!472469 (not (contains!3953 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!708720 () Bool)

(declare-fun res!472484 () Bool)

(assert (=> b!708720 (=> (not res!472484) (not e!398823))))

(assert (=> b!708720 (= res!472484 (validKeyInArray!0 (select (arr!19316 a!3591) from!2969)))))

(declare-fun b!708721 () Bool)

(assert (=> b!708721 (= e!398821 (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969)))))

(declare-fun b!708722 () Bool)

(declare-fun res!472479 () Bool)

(assert (=> b!708722 (=> (not res!472479) (not e!398823))))

(assert (=> b!708722 (= res!472479 (contains!3953 newAcc!49 k!2824))))

(assert (= (and start!62864 res!472487) b!708713))

(assert (= (and b!708713 res!472476) b!708711))

(assert (= (and b!708711 res!472474) b!708705))

(assert (= (and b!708705 res!472481) b!708716))

(assert (= (and b!708716 res!472488) b!708707))

(assert (= (and b!708707 res!472485) b!708704))

(assert (= (and b!708704 res!472475) b!708702))

(assert (= (and b!708702 res!472477) b!708714))

(assert (= (and b!708714 res!472483) b!708706))

(assert (= (and b!708706 res!472473) b!708722))

(assert (= (and b!708722 res!472479) b!708709))

(assert (= (and b!708709 res!472480) b!708717))

(assert (= (and b!708717 res!472486) b!708719))

(assert (= (and b!708719 res!472469) b!708712))

(assert (= (and b!708712 res!472471) b!708720))

(assert (= (and b!708720 res!472484) b!708703))

(assert (= (and b!708703 res!472468) b!708715))

(assert (= (and b!708715 res!472482) b!708708))

(assert (= (and b!708708 res!472470) b!708710))

(assert (= (and b!708710 res!472472) b!708718))

(assert (= (and b!708718 res!472478) b!708721))

(declare-fun m!666155 () Bool)

(assert (=> b!708714 m!666155))

(declare-fun m!666157 () Bool)

(assert (=> b!708706 m!666157))

(declare-fun m!666159 () Bool)

(assert (=> b!708716 m!666159))

(declare-fun m!666161 () Bool)

(assert (=> b!708707 m!666161))

(declare-fun m!666163 () Bool)

(assert (=> b!708710 m!666163))

(declare-fun m!666165 () Bool)

(assert (=> b!708719 m!666165))

(declare-fun m!666167 () Bool)

(assert (=> b!708708 m!666167))

(assert (=> b!708708 m!666167))

(declare-fun m!666169 () Bool)

(assert (=> b!708708 m!666169))

(assert (=> b!708708 m!666169))

(declare-fun m!666171 () Bool)

(assert (=> b!708708 m!666171))

(assert (=> b!708703 m!666167))

(assert (=> b!708703 m!666167))

(declare-fun m!666173 () Bool)

(assert (=> b!708703 m!666173))

(declare-fun m!666175 () Bool)

(assert (=> b!708713 m!666175))

(declare-fun m!666177 () Bool)

(assert (=> b!708721 m!666177))

(declare-fun m!666179 () Bool)

(assert (=> b!708715 m!666179))

(declare-fun m!666181 () Bool)

(assert (=> b!708717 m!666181))

(declare-fun m!666183 () Bool)

(assert (=> b!708718 m!666183))

(declare-fun m!666185 () Bool)

(assert (=> b!708709 m!666185))

(assert (=> b!708720 m!666167))

(assert (=> b!708720 m!666167))

(declare-fun m!666187 () Bool)

(assert (=> b!708720 m!666187))

(declare-fun m!666189 () Bool)

(assert (=> b!708722 m!666189))

(declare-fun m!666191 () Bool)

(assert (=> b!708702 m!666191))

(declare-fun m!666193 () Bool)

(assert (=> b!708705 m!666193))

(declare-fun m!666195 () Bool)

(assert (=> b!708704 m!666195))

(declare-fun m!666197 () Bool)

(assert (=> b!708711 m!666197))

(declare-fun m!666199 () Bool)

(assert (=> start!62864 m!666199))

(push 1)

(assert (not b!708704))

(assert (not b!708703))

(assert (not b!708714))

(assert (not b!708706))

(assert (not b!708716))

(assert (not b!708719))

(assert (not b!708702))

(assert (not b!708705))

(assert (not b!708722))

(assert (not b!708707))

(assert (not b!708715))

(assert (not start!62864))

(assert (not b!708711))

(assert (not b!708709))

(assert (not b!708718))

(assert (not b!708717))

(assert (not b!708708))

(assert (not b!708721))

(assert (not b!708720))

(assert (not b!708710))

(assert (not b!708713))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!96847 () Bool)

(declare-fun res!472512 () Bool)

(declare-fun e!398854 () Bool)

(assert (=> d!96847 (=> res!472512 e!398854)))

(assert (=> d!96847 (= res!472512 (is-Nil!13407 ($colon$colon!507 newAcc!49 (select (arr!19316 a!3591) from!2969))))))

(assert (=> d!96847 (= (noDuplicate!1200 ($colon$colon!507 newAcc!49 (select (arr!19316 a!3591) from!2969))) e!398854)))

(declare-fun b!708758 () Bool)

(declare-fun e!398855 () Bool)

(assert (=> b!708758 (= e!398854 e!398855)))

(declare-fun res!472513 () Bool)

(assert (=> b!708758 (=> (not res!472513) (not e!398855))))

(assert (=> b!708758 (= res!472513 (not (contains!3953 (t!19709 ($colon$colon!507 newAcc!49 (select (arr!19316 a!3591) from!2969))) (h!14451 ($colon$colon!507 newAcc!49 (select (arr!19316 a!3591) from!2969))))))))

(declare-fun b!708759 () Bool)

(assert (=> b!708759 (= e!398855 (noDuplicate!1200 (t!19709 ($colon$colon!507 newAcc!49 (select (arr!19316 a!3591) from!2969)))))))

(assert (= (and d!96847 (not res!472512)) b!708758))

(assert (= (and b!708758 res!472513) b!708759))

(declare-fun m!666217 () Bool)

(assert (=> b!708758 m!666217))

(declare-fun m!666219 () Bool)

(assert (=> b!708759 m!666219))

(assert (=> b!708708 d!96847))

(declare-fun d!96851 () Bool)

(assert (=> d!96851 (= ($colon$colon!507 newAcc!49 (select (arr!19316 a!3591) from!2969)) (Cons!13406 (select (arr!19316 a!3591) from!2969) newAcc!49))))

(assert (=> b!708708 d!96851))

(declare-fun d!96855 () Bool)

(declare-fun res!472534 () Bool)

(declare-fun e!398876 () Bool)

(assert (=> d!96855 (=> res!472534 e!398876)))

(assert (=> d!96855 (= res!472534 (= (select (arr!19316 a!3591) from!2969) k!2824))))

(assert (=> d!96855 (= (arrayContainsKey!0 a!3591 k!2824 from!2969) e!398876)))

(declare-fun b!708780 () Bool)

(declare-fun e!398877 () Bool)

(assert (=> b!708780 (= e!398876 e!398877)))

(declare-fun res!472535 () Bool)

(assert (=> b!708780 (=> (not res!472535) (not e!398877))))

(assert (=> b!708780 (= res!472535 (bvslt (bvadd from!2969 #b00000000000000000000000000000001) (size!19706 a!3591)))))

(declare-fun b!708781 () Bool)

(assert (=> b!708781 (= e!398877 (arrayContainsKey!0 a!3591 k!2824 (bvadd from!2969 #b00000000000000000000000000000001)))))

(assert (= (and d!96855 (not res!472534)) b!708780))

(assert (= (and b!708780 res!472535) b!708781))

(assert (=> d!96855 m!666167))

(declare-fun m!666241 () Bool)

(assert (=> b!708781 m!666241))

(assert (=> b!708707 d!96855))

(declare-fun d!96865 () Bool)

(declare-fun lt!318118 () Bool)

(declare-fun content!345 (List!13410) (Set (_ BitVec 64)))

(assert (=> d!96865 (= lt!318118 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!345 lt!318104)))))

(declare-fun e!398897 () Bool)

(assert (=> d!96865 (= lt!318118 e!398897)))

(declare-fun res!472555 () Bool)

(assert (=> d!96865 (=> (not res!472555) (not e!398897))))

(assert (=> d!96865 (= res!472555 (is-Cons!13406 lt!318104))))

(assert (=> d!96865 (= (contains!3953 lt!318104 #b1000000000000000000000000000000000000000000000000000000000000000) lt!318118)))

(declare-fun b!708800 () Bool)

(declare-fun e!398896 () Bool)

(assert (=> b!708800 (= e!398897 e!398896)))

(declare-fun res!472554 () Bool)

(assert (=> b!708800 (=> res!472554 e!398896)))

(assert (=> b!708800 (= res!472554 (= (h!14451 lt!318104) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!708801 () Bool)

(assert (=> b!708801 (= e!398896 (contains!3953 (t!19709 lt!318104) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!96865 res!472555) b!708800))

(assert (= (and b!708800 (not res!472554)) b!708801))

(declare-fun m!666253 () Bool)

(assert (=> d!96865 m!666253))

(declare-fun m!666255 () Bool)

(assert (=> d!96865 m!666255))

(declare-fun m!666257 () Bool)

(assert (=> b!708801 m!666257))

(assert (=> b!708718 d!96865))

(declare-fun b!708850 () Bool)

(declare-fun e!398945 () List!13410)

(declare-fun e!398944 () List!13410)

(assert (=> b!708850 (= e!398945 e!398944)))

(declare-fun c!78495 () Bool)

(assert (=> b!708850 (= c!78495 (= k!2824 (h!14451 newAcc!49)))))

(declare-fun b!708851 () Bool)

(declare-fun call!34419 () List!13410)

(assert (=> b!708851 (= e!398944 (Cons!13406 (h!14451 newAcc!49) call!34419))))

(declare-fun d!96875 () Bool)

(declare-fun e!398943 () Bool)

(assert (=> d!96875 e!398943))

(declare-fun res!472596 () Bool)

(assert (=> d!96875 (=> (not res!472596) (not e!398943))))

(declare-fun lt!318129 () List!13410)

(declare-fun size!19708 (List!13410) Int)

(assert (=> d!96875 (= res!472596 (<= (size!19708 lt!318129) (size!19708 newAcc!49)))))

(assert (=> d!96875 (= lt!318129 e!398945)))

(declare-fun c!78494 () Bool)

(assert (=> d!96875 (= c!78494 (is-Cons!13406 newAcc!49))))

(assert (=> d!96875 (= (-!362 newAcc!49 k!2824) lt!318129)))

(declare-fun bm!34416 () Bool)

(assert (=> bm!34416 (= call!34419 (-!362 (t!19709 newAcc!49) k!2824))))

(declare-fun b!708852 () Bool)

(assert (=> b!708852 (= e!398945 Nil!13407)))

(declare-fun b!708853 () Bool)

(assert (=> b!708853 (= e!398943 (= (content!345 lt!318129) (setminus (content!345 newAcc!49) (insert k!2824 (as emptyset (Set (_ BitVec 64)))))))))

(declare-fun b!708854 () Bool)

(assert (=> b!708854 (= e!398944 call!34419)))

(assert (= (and d!96875 c!78494) b!708850))

(assert (= (and d!96875 (not c!78494)) b!708852))

(assert (= (and b!708850 c!78495) b!708854))

(assert (= (and b!708850 (not c!78495)) b!708851))

(assert (= (or b!708854 b!708851) bm!34416))

(assert (= (and d!96875 res!472596) b!708853))

(declare-fun m!666311 () Bool)

(assert (=> d!96875 m!666311))

(declare-fun m!666313 () Bool)

(assert (=> d!96875 m!666313))

(declare-fun m!666315 () Bool)

(assert (=> bm!34416 m!666315))

(declare-fun m!666317 () Bool)

(assert (=> b!708853 m!666317))

(declare-fun m!666319 () Bool)

(assert (=> b!708853 m!666319))

(declare-fun m!666321 () Bool)

(assert (=> b!708853 m!666321))

(assert (=> b!708709 d!96875))

(declare-fun d!96907 () Bool)

(assert (=> d!96907 (= (validKeyInArray!0 (select (arr!19316 a!3591) from!2969)) (and (not (= (select (arr!19316 a!3591) from!2969) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!19316 a!3591) from!2969) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!708720 d!96907))

(declare-fun d!96911 () Bool)

(declare-fun lt!318130 () Bool)

(assert (=> d!96911 (= lt!318130 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!345 newAcc!49)))))

(declare-fun e!398951 () Bool)

(assert (=> d!96911 (= lt!318130 e!398951)))

(declare-fun res!472602 () Bool)

(assert (=> d!96911 (=> (not res!472602) (not e!398951))))

(assert (=> d!96911 (= res!472602 (is-Cons!13406 newAcc!49))))

(assert (=> d!96911 (= (contains!3953 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000) lt!318130)))

(declare-fun b!708859 () Bool)

(declare-fun e!398950 () Bool)

(assert (=> b!708859 (= e!398951 e!398950)))

(declare-fun res!472601 () Bool)

(assert (=> b!708859 (=> res!472601 e!398950)))

(assert (=> b!708859 (= res!472601 (= (h!14451 newAcc!49) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!708860 () Bool)

(assert (=> b!708860 (= e!398950 (contains!3953 (t!19709 newAcc!49) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!96911 res!472602) b!708859))

(assert (= (and b!708859 (not res!472601)) b!708860))

(assert (=> d!96911 m!666319))

(declare-fun m!666327 () Bool)

(assert (=> d!96911 m!666327))

(declare-fun m!666329 () Bool)

(assert (=> b!708860 m!666329))

(assert (=> b!708719 d!96911))

(declare-fun d!96913 () Bool)

(declare-fun res!472607 () Bool)

(declare-fun e!398958 () Bool)

(assert (=> d!96913 (=> res!472607 e!398958)))

(assert (=> d!96913 (= res!472607 (= (select (arr!19316 a!3591) (bvadd #b00000000000000000000000000000001 from!2969)) k!2824))))

(assert (=> d!96913 (= (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969)) e!398958)))

(declare-fun b!708869 () Bool)

(declare-fun e!398959 () Bool)

(assert (=> b!708869 (= e!398958 e!398959)))

(declare-fun res!472608 () Bool)

(assert (=> b!708869 (=> (not res!472608) (not e!398959))))

(assert (=> b!708869 (= res!472608 (bvslt (bvadd #b00000000000000000000000000000001 from!2969 #b00000000000000000000000000000001) (size!19706 a!3591)))))

(declare-fun b!708870 () Bool)

(assert (=> b!708870 (= e!398959 (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969 #b00000000000000000000000000000001)))))

(assert (= (and d!96913 (not res!472607)) b!708869))

(assert (= (and b!708869 res!472608) b!708870))

(declare-fun m!666331 () Bool)

(assert (=> d!96913 m!666331))

(declare-fun m!666333 () Bool)

(assert (=> b!708870 m!666333))

(assert (=> b!708721 d!96913))

(declare-fun d!96917 () Bool)

(declare-fun lt!318132 () Bool)

(assert (=> d!96917 (= lt!318132 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!345 lt!318104)))))

(declare-fun e!398963 () Bool)

(assert (=> d!96917 (= lt!318132 e!398963)))

(declare-fun res!472612 () Bool)

(assert (=> d!96917 (=> (not res!472612) (not e!398963))))

(assert (=> d!96917 (= res!472612 (is-Cons!13406 lt!318104))))

(assert (=> d!96917 (= (contains!3953 lt!318104 #b0000000000000000000000000000000000000000000000000000000000000000) lt!318132)))

(declare-fun b!708873 () Bool)

(declare-fun e!398962 () Bool)

(assert (=> b!708873 (= e!398963 e!398962)))

(declare-fun res!472611 () Bool)

(assert (=> b!708873 (=> res!472611 e!398962)))

(assert (=> b!708873 (= res!472611 (= (h!14451 lt!318104) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!708874 () Bool)

(assert (=> b!708874 (= e!398962 (contains!3953 (t!19709 lt!318104) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!96917 res!472612) b!708873))

(assert (= (and b!708873 (not res!472611)) b!708874))

(assert (=> d!96917 m!666253))

(declare-fun m!666339 () Bool)

(assert (=> d!96917 m!666339))

(declare-fun m!666341 () Bool)

(assert (=> b!708874 m!666341))

(assert (=> b!708710 d!96917))

(declare-fun d!96921 () Bool)

(assert (=> d!96921 (= (array_inv!15090 a!3591) (bvsge (size!19706 a!3591) #b00000000000000000000000000000000))))

(assert (=> start!62864 d!96921))

(declare-fun d!96929 () Bool)

(declare-fun res!472619 () Bool)

(declare-fun e!398970 () Bool)

(assert (=> d!96929 (=> res!472619 e!398970)))

(assert (=> d!96929 (= res!472619 (is-Nil!13407 newAcc!49))))

(assert (=> d!96929 (= (noDuplicate!1200 newAcc!49) e!398970)))

(declare-fun b!708881 () Bool)

(declare-fun e!398971 () Bool)

(assert (=> b!708881 (= e!398970 e!398971)))

(declare-fun res!472620 () Bool)

(assert (=> b!708881 (=> (not res!472620) (not e!398971))))

(assert (=> b!708881 (= res!472620 (not (contains!3953 (t!19709 newAcc!49) (h!14451 newAcc!49))))))

(declare-fun b!708882 () Bool)

(assert (=> b!708882 (= e!398971 (noDuplicate!1200 (t!19709 newAcc!49)))))

(assert (= (and d!96929 (not res!472619)) b!708881))

(assert (= (and b!708881 res!472620) b!708882))

(declare-fun m!666353 () Bool)

(assert (=> b!708881 m!666353))

(declare-fun m!666357 () Bool)

(assert (=> b!708882 m!666357))

(assert (=> b!708711 d!96929))

(declare-fun d!96931 () Bool)

(declare-fun lt!318135 () Bool)

(assert (=> d!96931 (= lt!318135 (member k!2824 (content!345 newAcc!49)))))

(declare-fun e!398973 () Bool)

(assert (=> d!96931 (= lt!318135 e!398973)))

(declare-fun res!472622 () Bool)

(assert (=> d!96931 (=> (not res!472622) (not e!398973))))

(assert (=> d!96931 (= res!472622 (is-Cons!13406 newAcc!49))))

(assert (=> d!96931 (= (contains!3953 newAcc!49 k!2824) lt!318135)))

(declare-fun b!708883 () Bool)

(declare-fun e!398972 () Bool)

(assert (=> b!708883 (= e!398973 e!398972)))

(declare-fun res!472621 () Bool)

(assert (=> b!708883 (=> res!472621 e!398972)))

(assert (=> b!708883 (= res!472621 (= (h!14451 newAcc!49) k!2824))))

(declare-fun b!708884 () Bool)

(assert (=> b!708884 (= e!398972 (contains!3953 (t!19709 newAcc!49) k!2824))))

(assert (= (and d!96931 res!472622) b!708883))

(assert (= (and b!708883 (not res!472621)) b!708884))

(assert (=> d!96931 m!666319))

(declare-fun m!666361 () Bool)

(assert (=> d!96931 m!666361))

(declare-fun m!666363 () Bool)

(assert (=> b!708884 m!666363))

(assert (=> b!708722 d!96931))

(declare-fun d!96935 () Bool)

(declare-fun res!472625 () Bool)

(declare-fun e!398976 () Bool)

(assert (=> d!96935 (=> res!472625 e!398976)))

(assert (=> d!96935 (= res!472625 (is-Nil!13407 acc!652))))

(assert (=> d!96935 (= (noDuplicate!1200 acc!652) e!398976)))

(declare-fun b!708887 () Bool)

(declare-fun e!398977 () Bool)

(assert (=> b!708887 (= e!398976 e!398977)))

(declare-fun res!472626 () Bool)

(assert (=> b!708887 (=> (not res!472626) (not e!398977))))

(assert (=> b!708887 (= res!472626 (not (contains!3953 (t!19709 acc!652) (h!14451 acc!652))))))

(declare-fun b!708888 () Bool)

(assert (=> b!708888 (= e!398977 (noDuplicate!1200 (t!19709 acc!652)))))

(assert (= (and d!96935 (not res!472625)) b!708887))

(assert (= (and b!708887 res!472626) b!708888))

(declare-fun m!666367 () Bool)

(assert (=> b!708887 m!666367))

(declare-fun m!666369 () Bool)

(assert (=> b!708888 m!666369))

(assert (=> b!708713 d!96935))

(declare-fun d!96939 () Bool)

(assert (=> d!96939 (= (validKeyInArray!0 k!2824) (and (not (= k!2824 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2824 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!708702 d!96939))

(declare-fun d!96941 () Bool)

(declare-fun lt!318136 () Bool)

(assert (=> d!96941 (= lt!318136 (member k!2824 (content!345 acc!652)))))

(declare-fun e!398979 () Bool)

(assert (=> d!96941 (= lt!318136 e!398979)))

(declare-fun res!472628 () Bool)

(assert (=> d!96941 (=> (not res!472628) (not e!398979))))

(assert (=> d!96941 (= res!472628 (is-Cons!13406 acc!652))))

(assert (=> d!96941 (= (contains!3953 acc!652 k!2824) lt!318136)))

(declare-fun b!708889 () Bool)

(declare-fun e!398978 () Bool)

(assert (=> b!708889 (= e!398979 e!398978)))

(declare-fun res!472627 () Bool)

(assert (=> b!708889 (=> res!472627 e!398978)))

(assert (=> b!708889 (= res!472627 (= (h!14451 acc!652) k!2824))))

(declare-fun b!708890 () Bool)

(assert (=> b!708890 (= e!398978 (contains!3953 (t!19709 acc!652) k!2824))))

(assert (= (and d!96941 res!472628) b!708889))

(assert (= (and b!708889 (not res!472627)) b!708890))

(declare-fun m!666371 () Bool)

(assert (=> d!96941 m!666371))

(declare-fun m!666373 () Bool)

(assert (=> d!96941 m!666373))

(declare-fun m!666375 () Bool)

(assert (=> b!708890 m!666375))

(assert (=> b!708704 d!96941))

(declare-fun d!96943 () Bool)

(assert (=> d!96943 (= ($colon$colon!507 acc!652 (select (arr!19316 a!3591) from!2969)) (Cons!13406 (select (arr!19316 a!3591) from!2969) acc!652))))

(assert (=> b!708703 d!96943))

(declare-fun c!78504 () Bool)

(declare-fun bm!34425 () Bool)

(declare-fun call!34428 () Bool)

(assert (=> bm!34425 (= call!34428 (arrayNoDuplicates!0 a!3591 (bvadd from!2969 #b00000000000000000000000000000001) (ite c!78504 (Cons!13406 (select (arr!19316 a!3591) from!2969) acc!652) acc!652)))))

(declare-fun b!708923 () Bool)

(declare-fun e!399006 () Bool)

(assert (=> b!708923 (= e!399006 call!34428)))

(declare-fun e!399007 () Bool)

(declare-fun b!708924 () Bool)

(assert (=> b!708924 (= e!399007 (contains!3953 acc!652 (select (arr!19316 a!3591) from!2969)))))

(declare-fun b!708925 () Bool)

(declare-fun e!399008 () Bool)

(declare-fun e!399009 () Bool)

(assert (=> b!708925 (= e!399008 e!399009)))

(declare-fun res!472649 () Bool)

(assert (=> b!708925 (=> (not res!472649) (not e!399009))))

(assert (=> b!708925 (= res!472649 (not e!399007))))

(declare-fun res!472651 () Bool)

(assert (=> b!708925 (=> (not res!472651) (not e!399007))))

(assert (=> b!708925 (= res!472651 (validKeyInArray!0 (select (arr!19316 a!3591) from!2969)))))

(declare-fun d!96945 () Bool)

(declare-fun res!472650 () Bool)

(assert (=> d!96945 (=> res!472650 e!399008)))

(assert (=> d!96945 (= res!472650 (bvsge from!2969 (size!19706 a!3591)))))

(assert (=> d!96945 (= (arrayNoDuplicates!0 a!3591 from!2969 acc!652) e!399008)))

(declare-fun b!708926 () Bool)

(assert (=> b!708926 (= e!399009 e!399006)))

(assert (=> b!708926 (= c!78504 (validKeyInArray!0 (select (arr!19316 a!3591) from!2969)))))

(declare-fun b!708927 () Bool)

(assert (=> b!708927 (= e!399006 call!34428)))

(assert (= (and d!96945 (not res!472650)) b!708925))

(assert (= (and b!708925 res!472651) b!708924))

(assert (= (and b!708925 res!472649) b!708926))

(assert (= (and b!708926 c!78504) b!708927))

(assert (= (and b!708926 (not c!78504)) b!708923))

(assert (= (or b!708927 b!708923) bm!34425))

(assert (=> bm!34425 m!666167))

(declare-fun m!666389 () Bool)

(assert (=> bm!34425 m!666389))

(assert (=> b!708924 m!666167))

(assert (=> b!708924 m!666167))

(declare-fun m!666391 () Bool)

(assert (=> b!708924 m!666391))

(assert (=> b!708925 m!666167))

(assert (=> b!708925 m!666167))

(assert (=> b!708925 m!666187))

(assert (=> b!708926 m!666167))

(assert (=> b!708926 m!666167))

