; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!60074 () Bool)

(assert start!60074)

(declare-fun b!668534 () Bool)

(declare-fun e!382478 () Bool)

(declare-datatypes ((List!12821 0))(
  ( (Nil!12818) (Cons!12817 (h!13862 (_ BitVec 64)) (t!19057 List!12821)) )
))
(declare-fun lt!311288 () List!12821)

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun contains!3364 (List!12821 (_ BitVec 64)) Bool)

(assert (=> b!668534 (= e!382478 (not (contains!3364 lt!311288 k0!2843)))))

(declare-fun b!668535 () Bool)

(declare-fun e!382479 () Bool)

(declare-fun acc!681 () List!12821)

(assert (=> b!668535 (= e!382479 (not (contains!3364 acc!681 k0!2843)))))

(declare-fun b!668536 () Bool)

(declare-fun e!382484 () Bool)

(assert (=> b!668536 (= e!382484 (contains!3364 acc!681 k0!2843))))

(declare-fun b!668537 () Bool)

(declare-fun res!435712 () Bool)

(declare-fun e!382485 () Bool)

(assert (=> b!668537 (=> (not res!435712) (not e!382485))))

(declare-fun i!1382 () (_ BitVec 32))

(declare-datatypes ((array!39077 0))(
  ( (array!39078 (arr!18727 (Array (_ BitVec 32) (_ BitVec 64))) (size!19091 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39077)

(assert (=> b!668537 (= res!435712 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19091 a!3626))))))

(declare-fun b!668538 () Bool)

(declare-fun res!435726 () Bool)

(assert (=> b!668538 (=> (not res!435726) (not e!382485))))

(declare-fun arrayContainsKey!0 (array!39077 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!668538 (= res!435726 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!668539 () Bool)

(declare-datatypes ((Unit!23430 0))(
  ( (Unit!23431) )
))
(declare-fun e!382482 () Unit!23430)

(declare-fun Unit!23432 () Unit!23430)

(assert (=> b!668539 (= e!382482 Unit!23432)))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun lt!311287 () Unit!23430)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39077 (_ BitVec 64) (_ BitVec 32)) Unit!23430)

(assert (=> b!668539 (= lt!311287 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(assert (=> b!668539 false))

(declare-fun b!668540 () Bool)

(declare-fun res!435721 () Bool)

(assert (=> b!668540 (=> (not res!435721) (not e!382485))))

(declare-fun arrayNoDuplicates!0 (array!39077 (_ BitVec 32) List!12821) Bool)

(assert (=> b!668540 (= res!435721 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12818))))

(declare-fun b!668541 () Bool)

(declare-fun e!382477 () Bool)

(assert (=> b!668541 (= e!382477 e!382478)))

(declare-fun res!435709 () Bool)

(assert (=> b!668541 (=> (not res!435709) (not e!382478))))

(assert (=> b!668541 (= res!435709 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!668542 () Bool)

(declare-fun res!435716 () Bool)

(assert (=> b!668542 (=> (not res!435716) (not e!382485))))

(assert (=> b!668542 (= res!435716 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19091 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!668543 () Bool)

(declare-fun e!382483 () Unit!23430)

(declare-fun lt!311283 () Unit!23430)

(assert (=> b!668543 (= e!382483 lt!311283)))

(declare-fun lt!311292 () Unit!23430)

(declare-fun lemmaListSubSeqRefl!0 (List!12821) Unit!23430)

(assert (=> b!668543 (= lt!311292 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun subseq!102 (List!12821 List!12821) Bool)

(assert (=> b!668543 (subseq!102 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39077 List!12821 List!12821 (_ BitVec 32)) Unit!23430)

(declare-fun $colon$colon!233 (List!12821 (_ BitVec 64)) List!12821)

(assert (=> b!668543 (= lt!311283 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!233 acc!681 (select (arr!18727 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!668543 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!668544 () Bool)

(declare-fun res!435713 () Bool)

(assert (=> b!668544 (=> (not res!435713) (not e!382485))))

(declare-fun e!382481 () Bool)

(assert (=> b!668544 (= res!435713 e!382481)))

(declare-fun res!435728 () Bool)

(assert (=> b!668544 (=> res!435728 e!382481)))

(assert (=> b!668544 (= res!435728 e!382484)))

(declare-fun res!435724 () Bool)

(assert (=> b!668544 (=> (not res!435724) (not e!382484))))

(assert (=> b!668544 (= res!435724 (bvsgt from!3004 i!1382))))

(declare-fun b!668545 () Bool)

(declare-fun res!435711 () Bool)

(assert (=> b!668545 (=> (not res!435711) (not e!382485))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!668545 (= res!435711 (validKeyInArray!0 k0!2843))))

(declare-fun b!668546 () Bool)

(declare-fun res!435723 () Bool)

(declare-fun e!382486 () Bool)

(assert (=> b!668546 (=> res!435723 e!382486)))

(assert (=> b!668546 (= res!435723 (contains!3364 lt!311288 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!668547 () Bool)

(declare-fun e!382480 () Bool)

(assert (=> b!668547 (= e!382480 (contains!3364 lt!311288 k0!2843))))

(declare-fun b!668548 () Bool)

(declare-fun res!435708 () Bool)

(assert (=> b!668548 (=> res!435708 e!382486)))

(assert (=> b!668548 (= res!435708 (contains!3364 lt!311288 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!435718 () Bool)

(assert (=> start!60074 (=> (not res!435718) (not e!382485))))

(assert (=> start!60074 (= res!435718 (and (bvslt (size!19091 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19091 a!3626))))))

(assert (=> start!60074 e!382485))

(assert (=> start!60074 true))

(declare-fun array_inv!14501 (array!39077) Bool)

(assert (=> start!60074 (array_inv!14501 a!3626)))

(declare-fun b!668549 () Bool)

(assert (=> b!668549 (= e!382481 e!382479)))

(declare-fun res!435725 () Bool)

(assert (=> b!668549 (=> (not res!435725) (not e!382479))))

(assert (=> b!668549 (= res!435725 (bvsle from!3004 i!1382))))

(declare-fun b!668550 () Bool)

(assert (=> b!668550 (= e!382485 (not e!382486))))

(declare-fun res!435722 () Bool)

(assert (=> b!668550 (=> res!435722 e!382486)))

(assert (=> b!668550 (= res!435722 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(assert (=> b!668550 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!311288)))

(declare-fun lt!311290 () Unit!23430)

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!39077 (_ BitVec 64) (_ BitVec 32) List!12821 List!12821) Unit!23430)

(assert (=> b!668550 (= lt!311290 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004) acc!681 lt!311288))))

(declare-fun -!100 (List!12821 (_ BitVec 64)) List!12821)

(assert (=> b!668550 (= (-!100 lt!311288 k0!2843) acc!681)))

(assert (=> b!668550 (= lt!311288 ($colon$colon!233 acc!681 k0!2843))))

(declare-fun lt!311289 () Unit!23430)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!12821) Unit!23430)

(assert (=> b!668550 (= lt!311289 (lemmaLMinusHeadEqualsTail!0 k0!2843 acc!681))))

(assert (=> b!668550 (subseq!102 acc!681 acc!681)))

(declare-fun lt!311286 () Unit!23430)

(assert (=> b!668550 (= lt!311286 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!668550 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!311285 () Unit!23430)

(assert (=> b!668550 (= lt!311285 e!382483)))

(declare-fun c!76781 () Bool)

(assert (=> b!668550 (= c!76781 (validKeyInArray!0 (select (arr!18727 a!3626) from!3004)))))

(declare-fun lt!311284 () Unit!23430)

(assert (=> b!668550 (= lt!311284 e!382482)))

(declare-fun c!76780 () Bool)

(assert (=> b!668550 (= c!76780 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!668550 (arrayContainsKey!0 (array!39078 (store (arr!18727 a!3626) i!1382 k0!2843) (size!19091 a!3626)) k0!2843 from!3004)))

(declare-fun b!668551 () Bool)

(declare-fun res!435710 () Bool)

(assert (=> b!668551 (=> res!435710 e!382486)))

(declare-fun noDuplicate!611 (List!12821) Bool)

(assert (=> b!668551 (= res!435710 (not (noDuplicate!611 lt!311288)))))

(declare-fun b!668552 () Bool)

(declare-fun res!435720 () Bool)

(assert (=> b!668552 (=> (not res!435720) (not e!382485))))

(assert (=> b!668552 (= res!435720 (not (contains!3364 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!668553 () Bool)

(declare-fun Unit!23433 () Unit!23430)

(assert (=> b!668553 (= e!382483 Unit!23433)))

(declare-fun b!668554 () Bool)

(declare-fun res!435719 () Bool)

(assert (=> b!668554 (=> (not res!435719) (not e!382485))))

(assert (=> b!668554 (= res!435719 (noDuplicate!611 acc!681))))

(declare-fun b!668555 () Bool)

(assert (=> b!668555 (= e!382486 true)))

(declare-fun lt!311291 () Bool)

(assert (=> b!668555 (= lt!311291 e!382477)))

(declare-fun res!435727 () Bool)

(assert (=> b!668555 (=> res!435727 e!382477)))

(assert (=> b!668555 (= res!435727 e!382480)))

(declare-fun res!435715 () Bool)

(assert (=> b!668555 (=> (not res!435715) (not e!382480))))

(assert (=> b!668555 (= res!435715 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!668556 () Bool)

(declare-fun Unit!23434 () Unit!23430)

(assert (=> b!668556 (= e!382482 Unit!23434)))

(declare-fun b!668557 () Bool)

(declare-fun res!435717 () Bool)

(assert (=> b!668557 (=> (not res!435717) (not e!382485))))

(assert (=> b!668557 (= res!435717 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!668558 () Bool)

(declare-fun res!435714 () Bool)

(assert (=> b!668558 (=> (not res!435714) (not e!382485))))

(assert (=> b!668558 (= res!435714 (not (contains!3364 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!60074 res!435718) b!668554))

(assert (= (and b!668554 res!435719) b!668552))

(assert (= (and b!668552 res!435720) b!668558))

(assert (= (and b!668558 res!435714) b!668544))

(assert (= (and b!668544 res!435724) b!668536))

(assert (= (and b!668544 (not res!435728)) b!668549))

(assert (= (and b!668549 res!435725) b!668535))

(assert (= (and b!668544 res!435713) b!668540))

(assert (= (and b!668540 res!435721) b!668557))

(assert (= (and b!668557 res!435717) b!668537))

(assert (= (and b!668537 res!435712) b!668545))

(assert (= (and b!668545 res!435711) b!668538))

(assert (= (and b!668538 res!435726) b!668542))

(assert (= (and b!668542 res!435716) b!668550))

(assert (= (and b!668550 c!76780) b!668539))

(assert (= (and b!668550 (not c!76780)) b!668556))

(assert (= (and b!668550 c!76781) b!668543))

(assert (= (and b!668550 (not c!76781)) b!668553))

(assert (= (and b!668550 (not res!435722)) b!668551))

(assert (= (and b!668551 (not res!435710)) b!668548))

(assert (= (and b!668548 (not res!435708)) b!668546))

(assert (= (and b!668546 (not res!435723)) b!668555))

(assert (= (and b!668555 res!435715) b!668547))

(assert (= (and b!668555 (not res!435727)) b!668541))

(assert (= (and b!668541 res!435709) b!668534))

(declare-fun m!638857 () Bool)

(assert (=> start!60074 m!638857))

(declare-fun m!638859 () Bool)

(assert (=> b!668558 m!638859))

(declare-fun m!638861 () Bool)

(assert (=> b!668538 m!638861))

(declare-fun m!638863 () Bool)

(assert (=> b!668535 m!638863))

(declare-fun m!638865 () Bool)

(assert (=> b!668539 m!638865))

(declare-fun m!638867 () Bool)

(assert (=> b!668550 m!638867))

(declare-fun m!638869 () Bool)

(assert (=> b!668550 m!638869))

(declare-fun m!638871 () Bool)

(assert (=> b!668550 m!638871))

(declare-fun m!638873 () Bool)

(assert (=> b!668550 m!638873))

(declare-fun m!638875 () Bool)

(assert (=> b!668550 m!638875))

(declare-fun m!638877 () Bool)

(assert (=> b!668550 m!638877))

(declare-fun m!638879 () Bool)

(assert (=> b!668550 m!638879))

(declare-fun m!638881 () Bool)

(assert (=> b!668550 m!638881))

(declare-fun m!638883 () Bool)

(assert (=> b!668550 m!638883))

(declare-fun m!638885 () Bool)

(assert (=> b!668550 m!638885))

(assert (=> b!668550 m!638871))

(declare-fun m!638887 () Bool)

(assert (=> b!668550 m!638887))

(declare-fun m!638889 () Bool)

(assert (=> b!668550 m!638889))

(declare-fun m!638891 () Bool)

(assert (=> b!668550 m!638891))

(declare-fun m!638893 () Bool)

(assert (=> b!668548 m!638893))

(declare-fun m!638895 () Bool)

(assert (=> b!668551 m!638895))

(assert (=> b!668543 m!638869))

(assert (=> b!668543 m!638871))

(declare-fun m!638897 () Bool)

(assert (=> b!668543 m!638897))

(declare-fun m!638899 () Bool)

(assert (=> b!668543 m!638899))

(assert (=> b!668543 m!638871))

(assert (=> b!668543 m!638897))

(assert (=> b!668543 m!638881))

(assert (=> b!668543 m!638891))

(declare-fun m!638901 () Bool)

(assert (=> b!668547 m!638901))

(declare-fun m!638903 () Bool)

(assert (=> b!668540 m!638903))

(declare-fun m!638905 () Bool)

(assert (=> b!668545 m!638905))

(declare-fun m!638907 () Bool)

(assert (=> b!668557 m!638907))

(assert (=> b!668536 m!638863))

(declare-fun m!638909 () Bool)

(assert (=> b!668554 m!638909))

(declare-fun m!638911 () Bool)

(assert (=> b!668552 m!638911))

(declare-fun m!638913 () Bool)

(assert (=> b!668546 m!638913))

(assert (=> b!668534 m!638901))

(check-sat (not b!668546) (not b!668539) (not b!668538) (not start!60074) (not b!668552) (not b!668547) (not b!668540) (not b!668558) (not b!668551) (not b!668550) (not b!668543) (not b!668548) (not b!668557) (not b!668536) (not b!668535) (not b!668545) (not b!668554) (not b!668534))
(check-sat)
