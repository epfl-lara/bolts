; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!59972 () Bool)

(assert start!59972)

(declare-fun b!664709 () Bool)

(declare-datatypes ((Unit!23175 0))(
  ( (Unit!23176) )
))
(declare-fun e!381077 () Unit!23175)

(declare-fun Unit!23177 () Unit!23175)

(assert (=> b!664709 (= e!381077 Unit!23177)))

(declare-fun res!432506 () Bool)

(declare-fun e!381080 () Bool)

(assert (=> start!59972 (=> (not res!432506) (not e!381080))))

(declare-datatypes ((array!38975 0))(
  ( (array!38976 (arr!18676 (Array (_ BitVec 32) (_ BitVec 64))) (size!19040 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38975)

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> start!59972 (= res!432506 (and (bvslt (size!19040 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19040 a!3626))))))

(assert (=> start!59972 e!381080))

(assert (=> start!59972 true))

(declare-fun array_inv!14450 (array!38975) Bool)

(assert (=> start!59972 (array_inv!14450 a!3626)))

(declare-fun b!664710 () Bool)

(declare-fun res!432509 () Bool)

(declare-fun e!381081 () Bool)

(assert (=> b!664710 (=> res!432509 e!381081)))

(declare-datatypes ((List!12770 0))(
  ( (Nil!12767) (Cons!12766 (h!13811 (_ BitVec 64)) (t!19006 List!12770)) )
))
(declare-fun acc!681 () List!12770)

(declare-fun lt!309759 () List!12770)

(declare-fun subseq!51 (List!12770 List!12770) Bool)

(assert (=> b!664710 (= res!432509 (not (subseq!51 acc!681 lt!309759)))))

(declare-fun b!664711 () Bool)

(assert (=> b!664711 (= e!381081 true)))

(declare-fun lt!309761 () Bool)

(declare-fun contains!3313 (List!12770 (_ BitVec 64)) Bool)

(assert (=> b!664711 (= lt!309761 (contains!3313 lt!309759 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!664712 () Bool)

(declare-fun res!432499 () Bool)

(assert (=> b!664712 (=> (not res!432499) (not e!381080))))

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!38975 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!664712 (= res!432499 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!664713 () Bool)

(declare-fun e!381075 () Bool)

(assert (=> b!664713 (= e!381075 (not (contains!3313 acc!681 k0!2843)))))

(declare-fun b!664714 () Bool)

(declare-fun e!381076 () Bool)

(assert (=> b!664714 (= e!381076 (contains!3313 acc!681 k0!2843))))

(declare-fun b!664715 () Bool)

(declare-fun e!381078 () Unit!23175)

(declare-fun Unit!23178 () Unit!23175)

(assert (=> b!664715 (= e!381078 Unit!23178)))

(declare-fun b!664716 () Bool)

(declare-fun res!432498 () Bool)

(assert (=> b!664716 (=> res!432498 e!381081)))

(assert (=> b!664716 (= res!432498 (contains!3313 acc!681 k0!2843))))

(declare-fun b!664717 () Bool)

(declare-fun e!381082 () Bool)

(assert (=> b!664717 (= e!381082 e!381075)))

(declare-fun res!432505 () Bool)

(assert (=> b!664717 (=> (not res!432505) (not e!381075))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!664717 (= res!432505 (bvsle from!3004 i!1382))))

(declare-fun b!664718 () Bool)

(declare-fun lt!309760 () Unit!23175)

(assert (=> b!664718 (= e!381078 lt!309760)))

(declare-fun lt!309758 () Unit!23175)

(declare-fun lemmaListSubSeqRefl!0 (List!12770) Unit!23175)

(assert (=> b!664718 (= lt!309758 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!664718 (subseq!51 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!38975 List!12770 List!12770 (_ BitVec 32)) Unit!23175)

(declare-fun $colon$colon!182 (List!12770 (_ BitVec 64)) List!12770)

(assert (=> b!664718 (= lt!309760 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!182 acc!681 (select (arr!18676 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(declare-fun arrayNoDuplicates!0 (array!38975 (_ BitVec 32) List!12770) Bool)

(assert (=> b!664718 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!664719 () Bool)

(declare-fun res!432513 () Bool)

(assert (=> b!664719 (=> (not res!432513) (not e!381080))))

(assert (=> b!664719 (= res!432513 (not (contains!3313 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!664720 () Bool)

(declare-fun res!432500 () Bool)

(assert (=> b!664720 (=> (not res!432500) (not e!381080))))

(assert (=> b!664720 (= res!432500 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12767))))

(declare-fun b!664721 () Bool)

(declare-fun Unit!23179 () Unit!23175)

(assert (=> b!664721 (= e!381077 Unit!23179)))

(declare-fun lt!309756 () Unit!23175)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38975 (_ BitVec 64) (_ BitVec 32)) Unit!23175)

(assert (=> b!664721 (= lt!309756 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(assert (=> b!664721 false))

(declare-fun b!664722 () Bool)

(declare-fun res!432504 () Bool)

(assert (=> b!664722 (=> res!432504 e!381081)))

(assert (=> b!664722 (= res!432504 (contains!3313 lt!309759 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!664723 () Bool)

(declare-fun res!432501 () Bool)

(assert (=> b!664723 (=> res!432501 e!381081)))

(assert (=> b!664723 (= res!432501 (not (contains!3313 lt!309759 k0!2843)))))

(declare-fun b!664724 () Bool)

(declare-fun res!432511 () Bool)

(assert (=> b!664724 (=> res!432511 e!381081)))

(declare-fun noDuplicate!560 (List!12770) Bool)

(assert (=> b!664724 (= res!432511 (not (noDuplicate!560 lt!309759)))))

(declare-fun b!664725 () Bool)

(declare-fun res!432503 () Bool)

(assert (=> b!664725 (=> res!432503 e!381081)))

(declare-fun lt!309755 () Bool)

(assert (=> b!664725 (= res!432503 lt!309755)))

(declare-fun b!664726 () Bool)

(declare-fun res!432508 () Bool)

(assert (=> b!664726 (=> (not res!432508) (not e!381080))))

(assert (=> b!664726 (= res!432508 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19040 a!3626))))))

(declare-fun b!664727 () Bool)

(declare-fun res!432512 () Bool)

(assert (=> b!664727 (=> (not res!432512) (not e!381080))))

(assert (=> b!664727 (= res!432512 e!381082)))

(declare-fun res!432497 () Bool)

(assert (=> b!664727 (=> res!432497 e!381082)))

(assert (=> b!664727 (= res!432497 e!381076)))

(declare-fun res!432514 () Bool)

(assert (=> b!664727 (=> (not res!432514) (not e!381076))))

(assert (=> b!664727 (= res!432514 (bvsgt from!3004 i!1382))))

(declare-fun b!664728 () Bool)

(assert (=> b!664728 (= e!381080 (not e!381081))))

(declare-fun res!432510 () Bool)

(assert (=> b!664728 (=> res!432510 e!381081)))

(assert (=> b!664728 (= res!432510 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun -!49 (List!12770 (_ BitVec 64)) List!12770)

(assert (=> b!664728 (= (-!49 lt!309759 k0!2843) acc!681)))

(assert (=> b!664728 (= lt!309759 ($colon$colon!182 acc!681 k0!2843))))

(declare-fun lt!309753 () Unit!23175)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!12770) Unit!23175)

(assert (=> b!664728 (= lt!309753 (lemmaLMinusHeadEqualsTail!0 k0!2843 acc!681))))

(assert (=> b!664728 (subseq!51 acc!681 acc!681)))

(declare-fun lt!309762 () Unit!23175)

(assert (=> b!664728 (= lt!309762 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!664728 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!309757 () Unit!23175)

(assert (=> b!664728 (= lt!309757 e!381078)))

(declare-fun c!76474 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!664728 (= c!76474 (validKeyInArray!0 (select (arr!18676 a!3626) from!3004)))))

(declare-fun lt!309754 () Unit!23175)

(assert (=> b!664728 (= lt!309754 e!381077)))

(declare-fun c!76475 () Bool)

(assert (=> b!664728 (= c!76475 lt!309755)))

(assert (=> b!664728 (= lt!309755 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!664728 (arrayContainsKey!0 (array!38976 (store (arr!18676 a!3626) i!1382 k0!2843) (size!19040 a!3626)) k0!2843 from!3004)))

(declare-fun b!664729 () Bool)

(declare-fun res!432495 () Bool)

(assert (=> b!664729 (=> (not res!432495) (not e!381080))))

(assert (=> b!664729 (= res!432495 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!664730 () Bool)

(declare-fun res!432502 () Bool)

(assert (=> b!664730 (=> (not res!432502) (not e!381080))))

(assert (=> b!664730 (= res!432502 (noDuplicate!560 acc!681))))

(declare-fun b!664731 () Bool)

(declare-fun res!432496 () Bool)

(assert (=> b!664731 (=> (not res!432496) (not e!381080))))

(assert (=> b!664731 (= res!432496 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19040 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!664732 () Bool)

(declare-fun res!432515 () Bool)

(assert (=> b!664732 (=> (not res!432515) (not e!381080))))

(assert (=> b!664732 (= res!432515 (validKeyInArray!0 k0!2843))))

(declare-fun b!664733 () Bool)

(declare-fun res!432507 () Bool)

(assert (=> b!664733 (=> (not res!432507) (not e!381080))))

(assert (=> b!664733 (= res!432507 (not (contains!3313 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!59972 res!432506) b!664730))

(assert (= (and b!664730 res!432502) b!664719))

(assert (= (and b!664719 res!432513) b!664733))

(assert (= (and b!664733 res!432507) b!664727))

(assert (= (and b!664727 res!432514) b!664714))

(assert (= (and b!664727 (not res!432497)) b!664717))

(assert (= (and b!664717 res!432505) b!664713))

(assert (= (and b!664727 res!432512) b!664720))

(assert (= (and b!664720 res!432500) b!664729))

(assert (= (and b!664729 res!432495) b!664726))

(assert (= (and b!664726 res!432508) b!664732))

(assert (= (and b!664732 res!432515) b!664712))

(assert (= (and b!664712 res!432499) b!664731))

(assert (= (and b!664731 res!432496) b!664728))

(assert (= (and b!664728 c!76475) b!664721))

(assert (= (and b!664728 (not c!76475)) b!664709))

(assert (= (and b!664728 c!76474) b!664718))

(assert (= (and b!664728 (not c!76474)) b!664715))

(assert (= (and b!664728 (not res!432510)) b!664724))

(assert (= (and b!664724 (not res!432511)) b!664725))

(assert (= (and b!664725 (not res!432503)) b!664716))

(assert (= (and b!664716 (not res!432498)) b!664710))

(assert (= (and b!664710 (not res!432509)) b!664723))

(assert (= (and b!664723 (not res!432501)) b!664722))

(assert (= (and b!664722 (not res!432504)) b!664711))

(declare-fun m!635963 () Bool)

(assert (=> b!664711 m!635963))

(declare-fun m!635965 () Bool)

(assert (=> b!664732 m!635965))

(declare-fun m!635967 () Bool)

(assert (=> b!664721 m!635967))

(declare-fun m!635969 () Bool)

(assert (=> b!664729 m!635969))

(declare-fun m!635971 () Bool)

(assert (=> start!59972 m!635971))

(declare-fun m!635973 () Bool)

(assert (=> b!664710 m!635973))

(declare-fun m!635975 () Bool)

(assert (=> b!664722 m!635975))

(declare-fun m!635977 () Bool)

(assert (=> b!664713 m!635977))

(declare-fun m!635979 () Bool)

(assert (=> b!664719 m!635979))

(declare-fun m!635981 () Bool)

(assert (=> b!664720 m!635981))

(declare-fun m!635983 () Bool)

(assert (=> b!664730 m!635983))

(declare-fun m!635985 () Bool)

(assert (=> b!664724 m!635985))

(assert (=> b!664716 m!635977))

(declare-fun m!635987 () Bool)

(assert (=> b!664712 m!635987))

(declare-fun m!635989 () Bool)

(assert (=> b!664733 m!635989))

(declare-fun m!635991 () Bool)

(assert (=> b!664723 m!635991))

(assert (=> b!664714 m!635977))

(declare-fun m!635993 () Bool)

(assert (=> b!664718 m!635993))

(declare-fun m!635995 () Bool)

(assert (=> b!664718 m!635995))

(declare-fun m!635997 () Bool)

(assert (=> b!664718 m!635997))

(declare-fun m!635999 () Bool)

(assert (=> b!664718 m!635999))

(assert (=> b!664718 m!635995))

(assert (=> b!664718 m!635997))

(declare-fun m!636001 () Bool)

(assert (=> b!664718 m!636001))

(declare-fun m!636003 () Bool)

(assert (=> b!664718 m!636003))

(declare-fun m!636005 () Bool)

(assert (=> b!664728 m!636005))

(assert (=> b!664728 m!635993))

(assert (=> b!664728 m!635995))

(declare-fun m!636007 () Bool)

(assert (=> b!664728 m!636007))

(declare-fun m!636009 () Bool)

(assert (=> b!664728 m!636009))

(assert (=> b!664728 m!636001))

(declare-fun m!636011 () Bool)

(assert (=> b!664728 m!636011))

(declare-fun m!636013 () Bool)

(assert (=> b!664728 m!636013))

(assert (=> b!664728 m!635995))

(declare-fun m!636015 () Bool)

(assert (=> b!664728 m!636015))

(declare-fun m!636017 () Bool)

(assert (=> b!664728 m!636017))

(assert (=> b!664728 m!636003))

(check-sat (not b!664733) (not b!664722) (not b!664716) (not b!664723) (not b!664719) (not b!664732) (not b!664721) (not b!664710) (not start!59972) (not b!664720) (not b!664711) (not b!664724) (not b!664713) (not b!664728) (not b!664714) (not b!664729) (not b!664730) (not b!664712) (not b!664718))
(check-sat)
