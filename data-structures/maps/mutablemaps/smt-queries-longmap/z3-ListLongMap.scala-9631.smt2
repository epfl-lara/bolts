; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113962 () Bool)

(assert start!113962)

(declare-fun b!1351140 () Bool)

(declare-fun res!896726 () Bool)

(declare-fun e!768443 () Bool)

(assert (=> b!1351140 (=> (not res!896726) (not e!768443))))

(declare-datatypes ((List!31698 0))(
  ( (Nil!31695) (Cons!31694 (h!32903 (_ BitVec 64)) (t!46363 List!31698)) )
))
(declare-fun acc!759 () List!31698)

(declare-fun contains!9263 (List!31698 (_ BitVec 64)) Bool)

(assert (=> b!1351140 (= res!896726 (not (contains!9263 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1351141 () Bool)

(declare-fun res!896719 () Bool)

(assert (=> b!1351141 (=> (not res!896719) (not e!768443))))

(declare-datatypes ((array!92067 0))(
  ( (array!92068 (arr!44477 (Array (_ BitVec 32) (_ BitVec 64))) (size!45028 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92067)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1351141 (= res!896719 (validKeyInArray!0 (select (arr!44477 a!3742) from!3120)))))

(declare-fun res!896720 () Bool)

(assert (=> start!113962 (=> (not res!896720) (not e!768443))))

(assert (=> start!113962 (= res!896720 (and (bvslt (size!45028 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45028 a!3742))))))

(assert (=> start!113962 e!768443))

(assert (=> start!113962 true))

(declare-fun array_inv!33422 (array!92067) Bool)

(assert (=> start!113962 (array_inv!33422 a!3742)))

(declare-fun b!1351142 () Bool)

(declare-fun res!896729 () Bool)

(declare-fun e!768444 () Bool)

(assert (=> b!1351142 (=> res!896729 e!768444)))

(declare-fun lt!597107 () List!31698)

(declare-fun subseq!672 (List!31698 List!31698) Bool)

(assert (=> b!1351142 (= res!896729 (not (subseq!672 acc!759 lt!597107)))))

(declare-fun b!1351143 () Bool)

(declare-fun res!896732 () Bool)

(assert (=> b!1351143 (=> (not res!896732) (not e!768443))))

(declare-fun arrayNoDuplicates!0 (array!92067 (_ BitVec 32) List!31698) Bool)

(assert (=> b!1351143 (= res!896732 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31695))))

(declare-fun b!1351144 () Bool)

(declare-fun res!896725 () Bool)

(assert (=> b!1351144 (=> (not res!896725) (not e!768443))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1351144 (= res!896725 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1351145 () Bool)

(declare-fun res!896727 () Bool)

(assert (=> b!1351145 (=> (not res!896727) (not e!768443))))

(assert (=> b!1351145 (= res!896727 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45028 a!3742)))))

(declare-fun b!1351146 () Bool)

(declare-fun res!896728 () Bool)

(assert (=> b!1351146 (=> res!896728 e!768444)))

(assert (=> b!1351146 (= res!896728 (contains!9263 lt!597107 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1351147 () Bool)

(assert (=> b!1351147 (= e!768444 true)))

(declare-fun lt!597110 () Bool)

(assert (=> b!1351147 (= lt!597110 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) lt!597107))))

(declare-datatypes ((Unit!44206 0))(
  ( (Unit!44207) )
))
(declare-fun lt!597109 () Unit!44206)

(declare-fun noDuplicateSubseq!123 (List!31698 List!31698) Unit!44206)

(assert (=> b!1351147 (= lt!597109 (noDuplicateSubseq!123 acc!759 lt!597107))))

(declare-fun b!1351148 () Bool)

(declare-fun res!896724 () Bool)

(assert (=> b!1351148 (=> (not res!896724) (not e!768443))))

(assert (=> b!1351148 (= res!896724 (not (contains!9263 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1351149 () Bool)

(assert (=> b!1351149 (= e!768443 (not e!768444))))

(declare-fun res!896733 () Bool)

(assert (=> b!1351149 (=> res!896733 e!768444)))

(assert (=> b!1351149 (= res!896733 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!689 (List!31698 (_ BitVec 64)) List!31698)

(assert (=> b!1351149 (= lt!597107 ($colon$colon!689 acc!759 (select (arr!44477 a!3742) from!3120)))))

(assert (=> b!1351149 (subseq!672 acc!759 acc!759)))

(declare-fun lt!597108 () Unit!44206)

(declare-fun lemmaListSubSeqRefl!0 (List!31698) Unit!44206)

(assert (=> b!1351149 (= lt!597108 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun b!1351150 () Bool)

(declare-fun res!896722 () Bool)

(assert (=> b!1351150 (=> res!896722 e!768444)))

(assert (=> b!1351150 (= res!896722 (contains!9263 lt!597107 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1351151 () Bool)

(declare-fun res!896731 () Bool)

(assert (=> b!1351151 (=> (not res!896731) (not e!768443))))

(assert (=> b!1351151 (= res!896731 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1351152 () Bool)

(declare-fun res!896723 () Bool)

(assert (=> b!1351152 (=> res!896723 e!768444)))

(declare-fun noDuplicate!2142 (List!31698) Bool)

(assert (=> b!1351152 (= res!896723 (not (noDuplicate!2142 lt!597107)))))

(declare-fun b!1351153 () Bool)

(declare-fun res!896730 () Bool)

(assert (=> b!1351153 (=> (not res!896730) (not e!768443))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1351153 (= res!896730 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45028 a!3742))))))

(declare-fun b!1351154 () Bool)

(declare-fun res!896721 () Bool)

(assert (=> b!1351154 (=> (not res!896721) (not e!768443))))

(assert (=> b!1351154 (= res!896721 (noDuplicate!2142 acc!759))))

(assert (= (and start!113962 res!896720) b!1351154))

(assert (= (and b!1351154 res!896721) b!1351140))

(assert (= (and b!1351140 res!896726) b!1351148))

(assert (= (and b!1351148 res!896724) b!1351143))

(assert (= (and b!1351143 res!896732) b!1351151))

(assert (= (and b!1351151 res!896731) b!1351153))

(assert (= (and b!1351153 res!896730) b!1351144))

(assert (= (and b!1351144 res!896725) b!1351145))

(assert (= (and b!1351145 res!896727) b!1351141))

(assert (= (and b!1351141 res!896719) b!1351149))

(assert (= (and b!1351149 (not res!896733)) b!1351152))

(assert (= (and b!1351152 (not res!896723)) b!1351150))

(assert (= (and b!1351150 (not res!896722)) b!1351146))

(assert (= (and b!1351146 (not res!896728)) b!1351142))

(assert (= (and b!1351142 (not res!896729)) b!1351147))

(declare-fun m!1238245 () Bool)

(assert (=> b!1351151 m!1238245))

(declare-fun m!1238247 () Bool)

(assert (=> b!1351146 m!1238247))

(declare-fun m!1238249 () Bool)

(assert (=> b!1351148 m!1238249))

(declare-fun m!1238251 () Bool)

(assert (=> start!113962 m!1238251))

(declare-fun m!1238253 () Bool)

(assert (=> b!1351140 m!1238253))

(declare-fun m!1238255 () Bool)

(assert (=> b!1351142 m!1238255))

(declare-fun m!1238257 () Bool)

(assert (=> b!1351149 m!1238257))

(assert (=> b!1351149 m!1238257))

(declare-fun m!1238259 () Bool)

(assert (=> b!1351149 m!1238259))

(declare-fun m!1238261 () Bool)

(assert (=> b!1351149 m!1238261))

(declare-fun m!1238263 () Bool)

(assert (=> b!1351149 m!1238263))

(declare-fun m!1238265 () Bool)

(assert (=> b!1351152 m!1238265))

(declare-fun m!1238267 () Bool)

(assert (=> b!1351150 m!1238267))

(declare-fun m!1238269 () Bool)

(assert (=> b!1351147 m!1238269))

(declare-fun m!1238271 () Bool)

(assert (=> b!1351147 m!1238271))

(declare-fun m!1238273 () Bool)

(assert (=> b!1351144 m!1238273))

(declare-fun m!1238275 () Bool)

(assert (=> b!1351143 m!1238275))

(declare-fun m!1238277 () Bool)

(assert (=> b!1351154 m!1238277))

(assert (=> b!1351141 m!1238257))

(assert (=> b!1351141 m!1238257))

(declare-fun m!1238279 () Bool)

(assert (=> b!1351141 m!1238279))

(check-sat (not b!1351144) (not b!1351147) (not b!1351149) (not b!1351141) (not b!1351152) (not b!1351140) (not b!1351142) (not b!1351154) (not b!1351146) (not b!1351148) (not start!113962) (not b!1351143) (not b!1351151) (not b!1351150))
(check-sat)
