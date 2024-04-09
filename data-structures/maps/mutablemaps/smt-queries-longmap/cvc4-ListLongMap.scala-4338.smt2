; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60076 () Bool)

(assert start!60076)

(declare-fun b!668609 () Bool)

(declare-fun res!435786 () Bool)

(declare-fun e!382517 () Bool)

(assert (=> b!668609 (=> (not res!435786) (not e!382517))))

(declare-datatypes ((List!12822 0))(
  ( (Nil!12819) (Cons!12818 (h!13863 (_ BitVec 64)) (t!19058 List!12822)) )
))
(declare-fun acc!681 () List!12822)

(declare-fun contains!3365 (List!12822 (_ BitVec 64)) Bool)

(assert (=> b!668609 (= res!435786 (not (contains!3365 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!668610 () Bool)

(declare-datatypes ((Unit!23435 0))(
  ( (Unit!23436) )
))
(declare-fun e!382511 () Unit!23435)

(declare-fun Unit!23437 () Unit!23435)

(assert (=> b!668610 (= e!382511 Unit!23437)))

(declare-fun b!668611 () Bool)

(declare-fun res!435788 () Bool)

(assert (=> b!668611 (=> (not res!435788) (not e!382517))))

(declare-fun e!382516 () Bool)

(assert (=> b!668611 (= res!435788 e!382516)))

(declare-fun res!435780 () Bool)

(assert (=> b!668611 (=> res!435780 e!382516)))

(declare-fun e!382512 () Bool)

(assert (=> b!668611 (= res!435780 e!382512)))

(declare-fun res!435775 () Bool)

(assert (=> b!668611 (=> (not res!435775) (not e!382512))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!668611 (= res!435775 (bvsgt from!3004 i!1382))))

(declare-fun b!668612 () Bool)

(declare-fun e!382514 () Bool)

(assert (=> b!668612 (= e!382516 e!382514)))

(declare-fun res!435774 () Bool)

(assert (=> b!668612 (=> (not res!435774) (not e!382514))))

(assert (=> b!668612 (= res!435774 (bvsle from!3004 i!1382))))

(declare-fun b!668614 () Bool)

(declare-fun res!435781 () Bool)

(assert (=> b!668614 (=> (not res!435781) (not e!382517))))

(declare-datatypes ((array!39079 0))(
  ( (array!39080 (arr!18728 (Array (_ BitVec 32) (_ BitVec 64))) (size!19092 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39079)

(assert (=> b!668614 (= res!435781 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19092 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!668615 () Bool)

(declare-fun k!2843 () (_ BitVec 64))

(assert (=> b!668615 (= e!382514 (not (contains!3365 acc!681 k!2843)))))

(declare-fun b!668616 () Bool)

(declare-fun e!382513 () Unit!23435)

(declare-fun Unit!23438 () Unit!23435)

(assert (=> b!668616 (= e!382513 Unit!23438)))

(declare-fun lt!311321 () Unit!23435)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39079 (_ BitVec 64) (_ BitVec 32)) Unit!23435)

(assert (=> b!668616 (= lt!311321 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!668616 false))

(declare-fun b!668617 () Bool)

(declare-fun e!382515 () Bool)

(declare-fun lt!311319 () List!12822)

(assert (=> b!668617 (= e!382515 (contains!3365 lt!311319 k!2843))))

(declare-fun b!668618 () Bool)

(declare-fun res!435777 () Bool)

(declare-fun e!382518 () Bool)

(assert (=> b!668618 (=> res!435777 e!382518)))

(declare-fun noDuplicate!612 (List!12822) Bool)

(assert (=> b!668618 (= res!435777 (not (noDuplicate!612 lt!311319)))))

(declare-fun b!668619 () Bool)

(declare-fun res!435790 () Bool)

(assert (=> b!668619 (=> res!435790 e!382518)))

(assert (=> b!668619 (= res!435790 (contains!3365 lt!311319 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!668620 () Bool)

(declare-fun res!435785 () Bool)

(assert (=> b!668620 (=> (not res!435785) (not e!382517))))

(declare-fun arrayContainsKey!0 (array!39079 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!668620 (= res!435785 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!668621 () Bool)

(assert (=> b!668621 (= e!382512 (contains!3365 acc!681 k!2843))))

(declare-fun b!668622 () Bool)

(declare-fun res!435778 () Bool)

(assert (=> b!668622 (=> (not res!435778) (not e!382517))))

(assert (=> b!668622 (= res!435778 (not (contains!3365 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!668623 () Bool)

(declare-fun res!435782 () Bool)

(assert (=> b!668623 (=> (not res!435782) (not e!382517))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!668623 (= res!435782 (validKeyInArray!0 k!2843))))

(declare-fun b!668624 () Bool)

(declare-fun lt!311320 () Unit!23435)

(assert (=> b!668624 (= e!382511 lt!311320)))

(declare-fun lt!311314 () Unit!23435)

(declare-fun lemmaListSubSeqRefl!0 (List!12822) Unit!23435)

(assert (=> b!668624 (= lt!311314 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun subseq!103 (List!12822 List!12822) Bool)

(assert (=> b!668624 (subseq!103 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39079 List!12822 List!12822 (_ BitVec 32)) Unit!23435)

(declare-fun $colon$colon!234 (List!12822 (_ BitVec 64)) List!12822)

(assert (=> b!668624 (= lt!311320 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!234 acc!681 (select (arr!18728 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(declare-fun arrayNoDuplicates!0 (array!39079 (_ BitVec 32) List!12822) Bool)

(assert (=> b!668624 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!668625 () Bool)

(assert (=> b!668625 (= e!382518 true)))

(declare-fun lt!311316 () Bool)

(declare-fun e!382510 () Bool)

(assert (=> b!668625 (= lt!311316 e!382510)))

(declare-fun res!435776 () Bool)

(assert (=> b!668625 (=> res!435776 e!382510)))

(assert (=> b!668625 (= res!435776 e!382515)))

(declare-fun res!435783 () Bool)

(assert (=> b!668625 (=> (not res!435783) (not e!382515))))

(assert (=> b!668625 (= res!435783 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!668626 () Bool)

(declare-fun res!435779 () Bool)

(assert (=> b!668626 (=> (not res!435779) (not e!382517))))

(assert (=> b!668626 (= res!435779 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12819))))

(declare-fun b!668627 () Bool)

(assert (=> b!668627 (= e!382517 (not e!382518))))

(declare-fun res!435789 () Bool)

(assert (=> b!668627 (=> res!435789 e!382518)))

(assert (=> b!668627 (= res!435789 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(assert (=> b!668627 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!311319)))

(declare-fun lt!311318 () Unit!23435)

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!39079 (_ BitVec 64) (_ BitVec 32) List!12822 List!12822) Unit!23435)

(assert (=> b!668627 (= lt!311318 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004) acc!681 lt!311319))))

(declare-fun -!101 (List!12822 (_ BitVec 64)) List!12822)

(assert (=> b!668627 (= (-!101 lt!311319 k!2843) acc!681)))

(assert (=> b!668627 (= lt!311319 ($colon$colon!234 acc!681 k!2843))))

(declare-fun lt!311322 () Unit!23435)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!12822) Unit!23435)

(assert (=> b!668627 (= lt!311322 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(assert (=> b!668627 (subseq!103 acc!681 acc!681)))

(declare-fun lt!311317 () Unit!23435)

(assert (=> b!668627 (= lt!311317 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!668627 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!311315 () Unit!23435)

(assert (=> b!668627 (= lt!311315 e!382511)))

(declare-fun c!76787 () Bool)

(assert (=> b!668627 (= c!76787 (validKeyInArray!0 (select (arr!18728 a!3626) from!3004)))))

(declare-fun lt!311313 () Unit!23435)

(assert (=> b!668627 (= lt!311313 e!382513)))

(declare-fun c!76786 () Bool)

(assert (=> b!668627 (= c!76786 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!668627 (arrayContainsKey!0 (array!39080 (store (arr!18728 a!3626) i!1382 k!2843) (size!19092 a!3626)) k!2843 from!3004)))

(declare-fun res!435773 () Bool)

(assert (=> start!60076 (=> (not res!435773) (not e!382517))))

(assert (=> start!60076 (= res!435773 (and (bvslt (size!19092 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19092 a!3626))))))

(assert (=> start!60076 e!382517))

(assert (=> start!60076 true))

(declare-fun array_inv!14502 (array!39079) Bool)

(assert (=> start!60076 (array_inv!14502 a!3626)))

(declare-fun b!668613 () Bool)

(declare-fun res!435772 () Bool)

(assert (=> b!668613 (=> (not res!435772) (not e!382517))))

(assert (=> b!668613 (= res!435772 (noDuplicate!612 acc!681))))

(declare-fun b!668628 () Bool)

(declare-fun Unit!23439 () Unit!23435)

(assert (=> b!668628 (= e!382513 Unit!23439)))

(declare-fun b!668629 () Bool)

(declare-fun res!435771 () Bool)

(assert (=> b!668629 (=> (not res!435771) (not e!382517))))

(assert (=> b!668629 (= res!435771 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19092 a!3626))))))

(declare-fun b!668630 () Bool)

(declare-fun e!382509 () Bool)

(assert (=> b!668630 (= e!382510 e!382509)))

(declare-fun res!435787 () Bool)

(assert (=> b!668630 (=> (not res!435787) (not e!382509))))

(assert (=> b!668630 (= res!435787 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!668631 () Bool)

(declare-fun res!435791 () Bool)

(assert (=> b!668631 (=> (not res!435791) (not e!382517))))

(assert (=> b!668631 (= res!435791 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!668632 () Bool)

(assert (=> b!668632 (= e!382509 (not (contains!3365 lt!311319 k!2843)))))

(declare-fun b!668633 () Bool)

(declare-fun res!435784 () Bool)

(assert (=> b!668633 (=> res!435784 e!382518)))

(assert (=> b!668633 (= res!435784 (contains!3365 lt!311319 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!60076 res!435773) b!668613))

(assert (= (and b!668613 res!435772) b!668622))

(assert (= (and b!668622 res!435778) b!668609))

(assert (= (and b!668609 res!435786) b!668611))

(assert (= (and b!668611 res!435775) b!668621))

(assert (= (and b!668611 (not res!435780)) b!668612))

(assert (= (and b!668612 res!435774) b!668615))

(assert (= (and b!668611 res!435788) b!668626))

(assert (= (and b!668626 res!435779) b!668631))

(assert (= (and b!668631 res!435791) b!668629))

(assert (= (and b!668629 res!435771) b!668623))

(assert (= (and b!668623 res!435782) b!668620))

(assert (= (and b!668620 res!435785) b!668614))

(assert (= (and b!668614 res!435781) b!668627))

(assert (= (and b!668627 c!76786) b!668616))

(assert (= (and b!668627 (not c!76786)) b!668628))

(assert (= (and b!668627 c!76787) b!668624))

(assert (= (and b!668627 (not c!76787)) b!668610))

(assert (= (and b!668627 (not res!435789)) b!668618))

(assert (= (and b!668618 (not res!435777)) b!668633))

(assert (= (and b!668633 (not res!435784)) b!668619))

(assert (= (and b!668619 (not res!435790)) b!668625))

(assert (= (and b!668625 res!435783) b!668617))

(assert (= (and b!668625 (not res!435776)) b!668630))

(assert (= (and b!668630 res!435787) b!668632))

(declare-fun m!638915 () Bool)

(assert (=> b!668609 m!638915))

(declare-fun m!638917 () Bool)

(assert (=> b!668616 m!638917))

(declare-fun m!638919 () Bool)

(assert (=> b!668623 m!638919))

(declare-fun m!638921 () Bool)

(assert (=> b!668619 m!638921))

(declare-fun m!638923 () Bool)

(assert (=> b!668617 m!638923))

(declare-fun m!638925 () Bool)

(assert (=> b!668618 m!638925))

(declare-fun m!638927 () Bool)

(assert (=> b!668615 m!638927))

(declare-fun m!638929 () Bool)

(assert (=> b!668624 m!638929))

(declare-fun m!638931 () Bool)

(assert (=> b!668624 m!638931))

(declare-fun m!638933 () Bool)

(assert (=> b!668624 m!638933))

(declare-fun m!638935 () Bool)

(assert (=> b!668624 m!638935))

(assert (=> b!668624 m!638931))

(assert (=> b!668624 m!638933))

(declare-fun m!638937 () Bool)

(assert (=> b!668624 m!638937))

(declare-fun m!638939 () Bool)

(assert (=> b!668624 m!638939))

(assert (=> b!668632 m!638923))

(declare-fun m!638941 () Bool)

(assert (=> b!668613 m!638941))

(declare-fun m!638943 () Bool)

(assert (=> b!668622 m!638943))

(declare-fun m!638945 () Bool)

(assert (=> b!668633 m!638945))

(declare-fun m!638947 () Bool)

(assert (=> b!668631 m!638947))

(declare-fun m!638949 () Bool)

(assert (=> start!60076 m!638949))

(declare-fun m!638951 () Bool)

(assert (=> b!668626 m!638951))

(declare-fun m!638953 () Bool)

(assert (=> b!668627 m!638953))

(assert (=> b!668627 m!638929))

(assert (=> b!668627 m!638931))

(declare-fun m!638955 () Bool)

(assert (=> b!668627 m!638955))

(declare-fun m!638957 () Bool)

(assert (=> b!668627 m!638957))

(declare-fun m!638959 () Bool)

(assert (=> b!668627 m!638959))

(assert (=> b!668627 m!638937))

(declare-fun m!638961 () Bool)

(assert (=> b!668627 m!638961))

(declare-fun m!638963 () Bool)

(assert (=> b!668627 m!638963))

(declare-fun m!638965 () Bool)

(assert (=> b!668627 m!638965))

(assert (=> b!668627 m!638931))

(declare-fun m!638967 () Bool)

(assert (=> b!668627 m!638967))

(declare-fun m!638969 () Bool)

(assert (=> b!668627 m!638969))

(assert (=> b!668627 m!638939))

(assert (=> b!668621 m!638927))

(declare-fun m!638971 () Bool)

(assert (=> b!668620 m!638971))

(push 1)

(assert (not b!668633))

(assert (not b!668619))

(assert (not b!668615))

(assert (not b!668609))

(assert (not b!668617))

(assert (not b!668626))

(assert (not b!668624))

(assert (not b!668621))

(assert (not b!668631))

(assert (not b!668618))

(assert (not b!668613))

(assert (not b!668622))

(assert (not b!668627))

(assert (not b!668616))

(assert (not b!668632))

(assert (not start!60076))

(assert (not b!668623))

(assert (not b!668620))

(check-sat)

