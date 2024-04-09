; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!60008 () Bool)

(assert start!60008)

(declare-fun b!666059 () Bool)

(declare-fun res!433633 () Bool)

(declare-fun e!381514 () Bool)

(assert (=> b!666059 (=> (not res!433633) (not e!381514))))

(declare-fun e!381507 () Bool)

(assert (=> b!666059 (= res!433633 e!381507)))

(declare-fun res!433642 () Bool)

(assert (=> b!666059 (=> res!433642 e!381507)))

(declare-fun e!381512 () Bool)

(assert (=> b!666059 (= res!433642 e!381512)))

(declare-fun res!433645 () Bool)

(assert (=> b!666059 (=> (not res!433645) (not e!381512))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!666059 (= res!433645 (bvsgt from!3004 i!1382))))

(declare-fun b!666061 () Bool)

(declare-fun res!433641 () Bool)

(declare-fun e!381511 () Bool)

(assert (=> b!666061 (=> res!433641 e!381511)))

(declare-datatypes ((List!12788 0))(
  ( (Nil!12785) (Cons!12784 (h!13829 (_ BitVec 64)) (t!19024 List!12788)) )
))
(declare-fun acc!681 () List!12788)

(declare-fun lt!310298 () List!12788)

(declare-fun subseq!69 (List!12788 List!12788) Bool)

(assert (=> b!666061 (= res!433641 (not (subseq!69 acc!681 lt!310298)))))

(declare-fun b!666062 () Bool)

(declare-fun res!433644 () Bool)

(assert (=> b!666062 (=> (not res!433644) (not e!381514))))

(declare-datatypes ((array!39011 0))(
  ( (array!39012 (arr!18694 (Array (_ BitVec 32) (_ BitVec 64))) (size!19058 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39011)

(assert (=> b!666062 (= res!433644 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19058 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!666063 () Bool)

(declare-fun res!433632 () Bool)

(assert (=> b!666063 (=> res!433632 e!381511)))

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun contains!3331 (List!12788 (_ BitVec 64)) Bool)

(assert (=> b!666063 (= res!433632 (not (contains!3331 lt!310298 k0!2843)))))

(declare-fun b!666064 () Bool)

(declare-datatypes ((Unit!23265 0))(
  ( (Unit!23266) )
))
(declare-fun e!381509 () Unit!23265)

(declare-fun Unit!23267 () Unit!23265)

(assert (=> b!666064 (= e!381509 Unit!23267)))

(declare-fun b!666065 () Bool)

(declare-fun e!381513 () Unit!23265)

(declare-fun Unit!23268 () Unit!23265)

(assert (=> b!666065 (= e!381513 Unit!23268)))

(declare-fun b!666066 () Bool)

(declare-fun res!433649 () Bool)

(assert (=> b!666066 (=> (not res!433649) (not e!381514))))

(declare-fun noDuplicate!578 (List!12788) Bool)

(assert (=> b!666066 (= res!433649 (noDuplicate!578 acc!681))))

(declare-fun b!666067 () Bool)

(declare-fun res!433646 () Bool)

(assert (=> b!666067 (=> (not res!433646) (not e!381514))))

(declare-fun arrayNoDuplicates!0 (array!39011 (_ BitVec 32) List!12788) Bool)

(assert (=> b!666067 (= res!433646 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!666068 () Bool)

(declare-fun res!433635 () Bool)

(assert (=> b!666068 (=> res!433635 e!381511)))

(assert (=> b!666068 (= res!433635 (contains!3331 acc!681 k0!2843))))

(declare-fun b!666069 () Bool)

(declare-fun res!433643 () Bool)

(assert (=> b!666069 (=> res!433643 e!381511)))

(declare-fun lt!310299 () Bool)

(assert (=> b!666069 (= res!433643 lt!310299)))

(declare-fun b!666070 () Bool)

(declare-fun res!433629 () Bool)

(assert (=> b!666070 (=> (not res!433629) (not e!381514))))

(assert (=> b!666070 (= res!433629 (not (contains!3331 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!666071 () Bool)

(declare-fun res!433634 () Bool)

(assert (=> b!666071 (=> (not res!433634) (not e!381514))))

(assert (=> b!666071 (= res!433634 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19058 a!3626))))))

(declare-fun b!666072 () Bool)

(assert (=> b!666072 (= e!381511 true)))

(declare-fun lt!310301 () Bool)

(assert (=> b!666072 (= lt!310301 (contains!3331 lt!310298 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!433631 () Bool)

(assert (=> start!60008 (=> (not res!433631) (not e!381514))))

(assert (=> start!60008 (= res!433631 (and (bvslt (size!19058 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19058 a!3626))))))

(assert (=> start!60008 e!381514))

(assert (=> start!60008 true))

(declare-fun array_inv!14468 (array!39011) Bool)

(assert (=> start!60008 (array_inv!14468 a!3626)))

(declare-fun b!666060 () Bool)

(declare-fun res!433640 () Bool)

(assert (=> b!666060 (=> (not res!433640) (not e!381514))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!666060 (= res!433640 (validKeyInArray!0 k0!2843))))

(declare-fun b!666073 () Bool)

(assert (=> b!666073 (= e!381512 (contains!3331 acc!681 k0!2843))))

(declare-fun b!666074 () Bool)

(declare-fun res!433647 () Bool)

(assert (=> b!666074 (=> (not res!433647) (not e!381514))))

(declare-fun arrayContainsKey!0 (array!39011 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!666074 (= res!433647 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!666075 () Bool)

(declare-fun e!381508 () Bool)

(assert (=> b!666075 (= e!381507 e!381508)))

(declare-fun res!433630 () Bool)

(assert (=> b!666075 (=> (not res!433630) (not e!381508))))

(assert (=> b!666075 (= res!433630 (bvsle from!3004 i!1382))))

(declare-fun b!666076 () Bool)

(assert (=> b!666076 (= e!381514 (not e!381511))))

(declare-fun res!433638 () Bool)

(assert (=> b!666076 (=> res!433638 e!381511)))

(assert (=> b!666076 (= res!433638 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun -!67 (List!12788 (_ BitVec 64)) List!12788)

(assert (=> b!666076 (= (-!67 lt!310298 k0!2843) acc!681)))

(declare-fun $colon$colon!200 (List!12788 (_ BitVec 64)) List!12788)

(assert (=> b!666076 (= lt!310298 ($colon$colon!200 acc!681 k0!2843))))

(declare-fun lt!310295 () Unit!23265)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!12788) Unit!23265)

(assert (=> b!666076 (= lt!310295 (lemmaLMinusHeadEqualsTail!0 k0!2843 acc!681))))

(assert (=> b!666076 (subseq!69 acc!681 acc!681)))

(declare-fun lt!310296 () Unit!23265)

(declare-fun lemmaListSubSeqRefl!0 (List!12788) Unit!23265)

(assert (=> b!666076 (= lt!310296 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!666076 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!310294 () Unit!23265)

(assert (=> b!666076 (= lt!310294 e!381509)))

(declare-fun c!76582 () Bool)

(assert (=> b!666076 (= c!76582 (validKeyInArray!0 (select (arr!18694 a!3626) from!3004)))))

(declare-fun lt!310297 () Unit!23265)

(assert (=> b!666076 (= lt!310297 e!381513)))

(declare-fun c!76583 () Bool)

(assert (=> b!666076 (= c!76583 lt!310299)))

(assert (=> b!666076 (= lt!310299 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!666076 (arrayContainsKey!0 (array!39012 (store (arr!18694 a!3626) i!1382 k0!2843) (size!19058 a!3626)) k0!2843 from!3004)))

(declare-fun b!666077 () Bool)

(declare-fun res!433637 () Bool)

(assert (=> b!666077 (=> (not res!433637) (not e!381514))))

(assert (=> b!666077 (= res!433637 (not (contains!3331 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!666078 () Bool)

(assert (=> b!666078 (= e!381508 (not (contains!3331 acc!681 k0!2843)))))

(declare-fun b!666079 () Bool)

(declare-fun res!433636 () Bool)

(assert (=> b!666079 (=> res!433636 e!381511)))

(assert (=> b!666079 (= res!433636 (not (noDuplicate!578 lt!310298)))))

(declare-fun b!666080 () Bool)

(declare-fun res!433648 () Bool)

(assert (=> b!666080 (=> (not res!433648) (not e!381514))))

(assert (=> b!666080 (= res!433648 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12785))))

(declare-fun b!666081 () Bool)

(declare-fun lt!310300 () Unit!23265)

(assert (=> b!666081 (= e!381509 lt!310300)))

(declare-fun lt!310293 () Unit!23265)

(assert (=> b!666081 (= lt!310293 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!666081 (subseq!69 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39011 List!12788 List!12788 (_ BitVec 32)) Unit!23265)

(assert (=> b!666081 (= lt!310300 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!200 acc!681 (select (arr!18694 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!666081 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!666082 () Bool)

(declare-fun res!433639 () Bool)

(assert (=> b!666082 (=> res!433639 e!381511)))

(assert (=> b!666082 (= res!433639 (contains!3331 lt!310298 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!666083 () Bool)

(declare-fun Unit!23269 () Unit!23265)

(assert (=> b!666083 (= e!381513 Unit!23269)))

(declare-fun lt!310302 () Unit!23265)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39011 (_ BitVec 64) (_ BitVec 32)) Unit!23265)

(assert (=> b!666083 (= lt!310302 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(assert (=> b!666083 false))

(assert (= (and start!60008 res!433631) b!666066))

(assert (= (and b!666066 res!433649) b!666070))

(assert (= (and b!666070 res!433629) b!666077))

(assert (= (and b!666077 res!433637) b!666059))

(assert (= (and b!666059 res!433645) b!666073))

(assert (= (and b!666059 (not res!433642)) b!666075))

(assert (= (and b!666075 res!433630) b!666078))

(assert (= (and b!666059 res!433633) b!666080))

(assert (= (and b!666080 res!433648) b!666067))

(assert (= (and b!666067 res!433646) b!666071))

(assert (= (and b!666071 res!433634) b!666060))

(assert (= (and b!666060 res!433640) b!666074))

(assert (= (and b!666074 res!433647) b!666062))

(assert (= (and b!666062 res!433644) b!666076))

(assert (= (and b!666076 c!76583) b!666083))

(assert (= (and b!666076 (not c!76583)) b!666065))

(assert (= (and b!666076 c!76582) b!666081))

(assert (= (and b!666076 (not c!76582)) b!666064))

(assert (= (and b!666076 (not res!433638)) b!666079))

(assert (= (and b!666079 (not res!433636)) b!666069))

(assert (= (and b!666069 (not res!433643)) b!666068))

(assert (= (and b!666068 (not res!433635)) b!666061))

(assert (= (and b!666061 (not res!433641)) b!666063))

(assert (= (and b!666063 (not res!433632)) b!666082))

(assert (= (and b!666082 (not res!433639)) b!666072))

(declare-fun m!636971 () Bool)

(assert (=> b!666073 m!636971))

(declare-fun m!636973 () Bool)

(assert (=> b!666081 m!636973))

(declare-fun m!636975 () Bool)

(assert (=> b!666081 m!636975))

(declare-fun m!636977 () Bool)

(assert (=> b!666081 m!636977))

(declare-fun m!636979 () Bool)

(assert (=> b!666081 m!636979))

(assert (=> b!666081 m!636975))

(assert (=> b!666081 m!636977))

(declare-fun m!636981 () Bool)

(assert (=> b!666081 m!636981))

(declare-fun m!636983 () Bool)

(assert (=> b!666081 m!636983))

(declare-fun m!636985 () Bool)

(assert (=> b!666060 m!636985))

(declare-fun m!636987 () Bool)

(assert (=> start!60008 m!636987))

(declare-fun m!636989 () Bool)

(assert (=> b!666061 m!636989))

(declare-fun m!636991 () Bool)

(assert (=> b!666072 m!636991))

(assert (=> b!666076 m!636973))

(assert (=> b!666076 m!636975))

(declare-fun m!636993 () Bool)

(assert (=> b!666076 m!636993))

(declare-fun m!636995 () Bool)

(assert (=> b!666076 m!636995))

(declare-fun m!636997 () Bool)

(assert (=> b!666076 m!636997))

(assert (=> b!666076 m!636981))

(declare-fun m!636999 () Bool)

(assert (=> b!666076 m!636999))

(declare-fun m!637001 () Bool)

(assert (=> b!666076 m!637001))

(assert (=> b!666076 m!636975))

(declare-fun m!637003 () Bool)

(assert (=> b!666076 m!637003))

(declare-fun m!637005 () Bool)

(assert (=> b!666076 m!637005))

(assert (=> b!666076 m!636983))

(declare-fun m!637007 () Bool)

(assert (=> b!666079 m!637007))

(declare-fun m!637009 () Bool)

(assert (=> b!666066 m!637009))

(declare-fun m!637011 () Bool)

(assert (=> b!666074 m!637011))

(declare-fun m!637013 () Bool)

(assert (=> b!666082 m!637013))

(declare-fun m!637015 () Bool)

(assert (=> b!666067 m!637015))

(assert (=> b!666068 m!636971))

(declare-fun m!637017 () Bool)

(assert (=> b!666083 m!637017))

(declare-fun m!637019 () Bool)

(assert (=> b!666063 m!637019))

(assert (=> b!666078 m!636971))

(declare-fun m!637021 () Bool)

(assert (=> b!666080 m!637021))

(declare-fun m!637023 () Bool)

(assert (=> b!666077 m!637023))

(declare-fun m!637025 () Bool)

(assert (=> b!666070 m!637025))

(check-sat (not start!60008) (not b!666070) (not b!666072) (not b!666068) (not b!666061) (not b!666063) (not b!666082) (not b!666081) (not b!666083) (not b!666077) (not b!666067) (not b!666060) (not b!666074) (not b!666080) (not b!666073) (not b!666076) (not b!666066) (not b!666079) (not b!666078))
(check-sat)
