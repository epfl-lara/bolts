; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60034 () Bool)

(assert start!60034)

(declare-fun b!667034 () Bool)

(declare-fun res!434467 () Bool)

(declare-fun e!381823 () Bool)

(assert (=> b!667034 (=> res!434467 e!381823)))

(declare-datatypes ((List!12801 0))(
  ( (Nil!12798) (Cons!12797 (h!13842 (_ BitVec 64)) (t!19037 List!12801)) )
))
(declare-fun lt!310687 () List!12801)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3344 (List!12801 (_ BitVec 64)) Bool)

(assert (=> b!667034 (= res!434467 (not (contains!3344 lt!310687 k!2843)))))

(declare-fun b!667035 () Bool)

(declare-fun res!434463 () Bool)

(declare-fun e!381825 () Bool)

(assert (=> b!667035 (=> (not res!434463) (not e!381825))))

(declare-fun acc!681 () List!12801)

(assert (=> b!667035 (= res!434463 (not (contains!3344 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!667036 () Bool)

(declare-fun res!434457 () Bool)

(assert (=> b!667036 (=> (not res!434457) (not e!381825))))

(declare-datatypes ((array!39037 0))(
  ( (array!39038 (arr!18707 (Array (_ BitVec 32) (_ BitVec 64))) (size!19071 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39037)

(declare-fun arrayContainsKey!0 (array!39037 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!667036 (= res!434457 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!667037 () Bool)

(declare-fun res!434456 () Bool)

(assert (=> b!667037 (=> res!434456 e!381823)))

(declare-fun noDuplicate!591 (List!12801) Bool)

(assert (=> b!667037 (= res!434456 (not (noDuplicate!591 lt!310687)))))

(declare-fun res!434449 () Bool)

(assert (=> start!60034 (=> (not res!434449) (not e!381825))))

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> start!60034 (= res!434449 (and (bvslt (size!19071 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19071 a!3626))))))

(assert (=> start!60034 e!381825))

(assert (=> start!60034 true))

(declare-fun array_inv!14481 (array!39037) Bool)

(assert (=> start!60034 (array_inv!14481 a!3626)))

(declare-fun b!667038 () Bool)

(declare-fun res!434466 () Bool)

(assert (=> b!667038 (=> (not res!434466) (not e!381825))))

(declare-fun arrayNoDuplicates!0 (array!39037 (_ BitVec 32) List!12801) Bool)

(assert (=> b!667038 (= res!434466 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12798))))

(declare-fun b!667039 () Bool)

(declare-fun e!381822 () Bool)

(assert (=> b!667039 (= e!381822 (contains!3344 acc!681 k!2843))))

(declare-fun b!667040 () Bool)

(declare-datatypes ((Unit!23330 0))(
  ( (Unit!23331) )
))
(declare-fun e!381820 () Unit!23330)

(declare-fun Unit!23332 () Unit!23330)

(assert (=> b!667040 (= e!381820 Unit!23332)))

(declare-fun b!667041 () Bool)

(declare-fun lt!310686 () Unit!23330)

(assert (=> b!667041 (= e!381820 lt!310686)))

(declare-fun lt!310684 () Unit!23330)

(declare-fun lemmaListSubSeqRefl!0 (List!12801) Unit!23330)

(assert (=> b!667041 (= lt!310684 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun subseq!82 (List!12801 List!12801) Bool)

(assert (=> b!667041 (subseq!82 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39037 List!12801 List!12801 (_ BitVec 32)) Unit!23330)

(declare-fun $colon$colon!213 (List!12801 (_ BitVec 64)) List!12801)

(assert (=> b!667041 (= lt!310686 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!213 acc!681 (select (arr!18707 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!667041 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!667042 () Bool)

(declare-fun res!434453 () Bool)

(assert (=> b!667042 (=> res!434453 e!381823)))

(assert (=> b!667042 (= res!434453 (contains!3344 lt!310687 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!667043 () Bool)

(declare-fun res!434454 () Bool)

(assert (=> b!667043 (=> res!434454 e!381823)))

(declare-fun lt!310692 () Bool)

(assert (=> b!667043 (= res!434454 lt!310692)))

(declare-fun b!667044 () Bool)

(assert (=> b!667044 (= e!381825 (not e!381823))))

(declare-fun res!434448 () Bool)

(assert (=> b!667044 (=> res!434448 e!381823)))

(assert (=> b!667044 (= res!434448 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun -!80 (List!12801 (_ BitVec 64)) List!12801)

(assert (=> b!667044 (= (-!80 lt!310687 k!2843) acc!681)))

(assert (=> b!667044 (= lt!310687 ($colon$colon!213 acc!681 k!2843))))

(declare-fun lt!310689 () Unit!23330)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!12801) Unit!23330)

(assert (=> b!667044 (= lt!310689 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(assert (=> b!667044 (subseq!82 acc!681 acc!681)))

(declare-fun lt!310690 () Unit!23330)

(assert (=> b!667044 (= lt!310690 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!667044 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!310685 () Unit!23330)

(assert (=> b!667044 (= lt!310685 e!381820)))

(declare-fun c!76661 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!667044 (= c!76661 (validKeyInArray!0 (select (arr!18707 a!3626) from!3004)))))

(declare-fun lt!310691 () Unit!23330)

(declare-fun e!381826 () Unit!23330)

(assert (=> b!667044 (= lt!310691 e!381826)))

(declare-fun c!76660 () Bool)

(assert (=> b!667044 (= c!76660 lt!310692)))

(assert (=> b!667044 (= lt!310692 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!667044 (arrayContainsKey!0 (array!39038 (store (arr!18707 a!3626) i!1382 k!2843) (size!19071 a!3626)) k!2843 from!3004)))

(declare-fun b!667045 () Bool)

(declare-fun res!434462 () Bool)

(assert (=> b!667045 (=> (not res!434462) (not e!381825))))

(declare-fun e!381821 () Bool)

(assert (=> b!667045 (= res!434462 e!381821)))

(declare-fun res!434455 () Bool)

(assert (=> b!667045 (=> res!434455 e!381821)))

(assert (=> b!667045 (= res!434455 e!381822)))

(declare-fun res!434460 () Bool)

(assert (=> b!667045 (=> (not res!434460) (not e!381822))))

(assert (=> b!667045 (= res!434460 (bvsgt from!3004 i!1382))))

(declare-fun b!667046 () Bool)

(declare-fun Unit!23333 () Unit!23330)

(assert (=> b!667046 (= e!381826 Unit!23333)))

(declare-fun lt!310688 () Unit!23330)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39037 (_ BitVec 64) (_ BitVec 32)) Unit!23330)

(assert (=> b!667046 (= lt!310688 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!667046 false))

(declare-fun b!667047 () Bool)

(declare-fun res!434465 () Bool)

(assert (=> b!667047 (=> res!434465 e!381823)))

(assert (=> b!667047 (= res!434465 (not (subseq!82 acc!681 lt!310687)))))

(declare-fun b!667048 () Bool)

(declare-fun res!434459 () Bool)

(assert (=> b!667048 (=> (not res!434459) (not e!381825))))

(assert (=> b!667048 (= res!434459 (not (contains!3344 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!667049 () Bool)

(declare-fun Unit!23334 () Unit!23330)

(assert (=> b!667049 (= e!381826 Unit!23334)))

(declare-fun b!667050 () Bool)

(declare-fun e!381819 () Bool)

(assert (=> b!667050 (= e!381819 (not (contains!3344 acc!681 k!2843)))))

(declare-fun b!667051 () Bool)

(declare-fun res!434451 () Bool)

(assert (=> b!667051 (=> (not res!434451) (not e!381825))))

(assert (=> b!667051 (= res!434451 (noDuplicate!591 acc!681))))

(declare-fun b!667052 () Bool)

(declare-fun res!434464 () Bool)

(assert (=> b!667052 (=> (not res!434464) (not e!381825))))

(assert (=> b!667052 (= res!434464 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19071 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!667053 () Bool)

(assert (=> b!667053 (= e!381821 e!381819)))

(declare-fun res!434468 () Bool)

(assert (=> b!667053 (=> (not res!434468) (not e!381819))))

(assert (=> b!667053 (= res!434468 (bvsle from!3004 i!1382))))

(declare-fun b!667054 () Bool)

(declare-fun res!434452 () Bool)

(assert (=> b!667054 (=> (not res!434452) (not e!381825))))

(assert (=> b!667054 (= res!434452 (validKeyInArray!0 k!2843))))

(declare-fun b!667055 () Bool)

(declare-fun res!434461 () Bool)

(assert (=> b!667055 (=> (not res!434461) (not e!381825))))

(assert (=> b!667055 (= res!434461 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!667056 () Bool)

(assert (=> b!667056 (= e!381823 true)))

(declare-fun lt!310683 () Bool)

(assert (=> b!667056 (= lt!310683 (contains!3344 lt!310687 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!667057 () Bool)

(declare-fun res!434458 () Bool)

(assert (=> b!667057 (=> (not res!434458) (not e!381825))))

(assert (=> b!667057 (= res!434458 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19071 a!3626))))))

(declare-fun b!667058 () Bool)

(declare-fun res!434450 () Bool)

(assert (=> b!667058 (=> res!434450 e!381823)))

(assert (=> b!667058 (= res!434450 (contains!3344 acc!681 k!2843))))

(assert (= (and start!60034 res!434449) b!667051))

(assert (= (and b!667051 res!434451) b!667048))

(assert (= (and b!667048 res!434459) b!667035))

(assert (= (and b!667035 res!434463) b!667045))

(assert (= (and b!667045 res!434460) b!667039))

(assert (= (and b!667045 (not res!434455)) b!667053))

(assert (= (and b!667053 res!434468) b!667050))

(assert (= (and b!667045 res!434462) b!667038))

(assert (= (and b!667038 res!434466) b!667055))

(assert (= (and b!667055 res!434461) b!667057))

(assert (= (and b!667057 res!434458) b!667054))

(assert (= (and b!667054 res!434452) b!667036))

(assert (= (and b!667036 res!434457) b!667052))

(assert (= (and b!667052 res!434464) b!667044))

(assert (= (and b!667044 c!76660) b!667046))

(assert (= (and b!667044 (not c!76660)) b!667049))

(assert (= (and b!667044 c!76661) b!667041))

(assert (= (and b!667044 (not c!76661)) b!667040))

(assert (= (and b!667044 (not res!434448)) b!667037))

(assert (= (and b!667037 (not res!434456)) b!667043))

(assert (= (and b!667043 (not res!434454)) b!667058))

(assert (= (and b!667058 (not res!434450)) b!667047))

(assert (= (and b!667047 (not res!434465)) b!667034))

(assert (= (and b!667034 (not res!434467)) b!667042))

(assert (= (and b!667042 (not res!434453)) b!667056))

(declare-fun m!637699 () Bool)

(assert (=> b!667035 m!637699))

(declare-fun m!637701 () Bool)

(assert (=> b!667056 m!637701))

(declare-fun m!637703 () Bool)

(assert (=> b!667055 m!637703))

(declare-fun m!637705 () Bool)

(assert (=> b!667054 m!637705))

(declare-fun m!637707 () Bool)

(assert (=> b!667058 m!637707))

(declare-fun m!637709 () Bool)

(assert (=> b!667037 m!637709))

(declare-fun m!637711 () Bool)

(assert (=> b!667046 m!637711))

(declare-fun m!637713 () Bool)

(assert (=> b!667042 m!637713))

(declare-fun m!637715 () Bool)

(assert (=> start!60034 m!637715))

(declare-fun m!637717 () Bool)

(assert (=> b!667051 m!637717))

(declare-fun m!637719 () Bool)

(assert (=> b!667041 m!637719))

(declare-fun m!637721 () Bool)

(assert (=> b!667041 m!637721))

(declare-fun m!637723 () Bool)

(assert (=> b!667041 m!637723))

(declare-fun m!637725 () Bool)

(assert (=> b!667041 m!637725))

(assert (=> b!667041 m!637721))

(assert (=> b!667041 m!637723))

(declare-fun m!637727 () Bool)

(assert (=> b!667041 m!637727))

(declare-fun m!637729 () Bool)

(assert (=> b!667041 m!637729))

(declare-fun m!637731 () Bool)

(assert (=> b!667038 m!637731))

(assert (=> b!667050 m!637707))

(assert (=> b!667044 m!637719))

(declare-fun m!637733 () Bool)

(assert (=> b!667044 m!637733))

(declare-fun m!637735 () Bool)

(assert (=> b!667044 m!637735))

(assert (=> b!667044 m!637727))

(declare-fun m!637737 () Bool)

(assert (=> b!667044 m!637737))

(declare-fun m!637739 () Bool)

(assert (=> b!667044 m!637739))

(assert (=> b!667044 m!637721))

(declare-fun m!637741 () Bool)

(assert (=> b!667044 m!637741))

(assert (=> b!667044 m!637721))

(declare-fun m!637743 () Bool)

(assert (=> b!667044 m!637743))

(declare-fun m!637745 () Bool)

(assert (=> b!667044 m!637745))

(assert (=> b!667044 m!637729))

(declare-fun m!637747 () Bool)

(assert (=> b!667034 m!637747))

(assert (=> b!667039 m!637707))

(declare-fun m!637749 () Bool)

(assert (=> b!667047 m!637749))

(declare-fun m!637751 () Bool)

(assert (=> b!667036 m!637751))

(declare-fun m!637753 () Bool)

(assert (=> b!667048 m!637753))

(push 1)

(assert (not b!667058))

(assert (not b!667047))

(assert (not b!667035))

(assert (not b!667055))

(assert (not b!667042))

(assert (not b!667048))

(assert (not b!667046))

(assert (not b!667050))

(assert (not start!60034))

(assert (not b!667036))

(assert (not b!667038))

(assert (not b!667034))

(assert (not b!667041))

(assert (not b!667051))

(assert (not b!667044))

(assert (not b!667039))

(assert (not b!667056))

(assert (not b!667037))

(assert (not b!667054))

(check-sat)

