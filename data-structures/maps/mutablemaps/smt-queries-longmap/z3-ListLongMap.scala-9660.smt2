; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!114136 () Bool)

(assert start!114136)

(declare-fun b!1354885 () Bool)

(declare-fun res!900012 () Bool)

(declare-fun e!769572 () Bool)

(assert (=> b!1354885 (=> (not res!900012) (not e!769572))))

(declare-datatypes ((List!31785 0))(
  ( (Nil!31782) (Cons!31781 (h!32990 (_ BitVec 64)) (t!46450 List!31785)) )
))
(declare-fun acc!759 () List!31785)

(declare-fun contains!9350 (List!31785 (_ BitVec 64)) Bool)

(assert (=> b!1354885 (= res!900012 (not (contains!9350 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!900017 () Bool)

(assert (=> start!114136 (=> (not res!900017) (not e!769572))))

(declare-datatypes ((array!92241 0))(
  ( (array!92242 (arr!44564 (Array (_ BitVec 32) (_ BitVec 64))) (size!45115 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92241)

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> start!114136 (= res!900017 (and (bvslt (size!45115 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45115 a!3742))))))

(assert (=> start!114136 e!769572))

(assert (=> start!114136 true))

(declare-fun array_inv!33509 (array!92241) Bool)

(assert (=> start!114136 (array_inv!33509 a!3742)))

(declare-fun b!1354886 () Bool)

(declare-datatypes ((Unit!44456 0))(
  ( (Unit!44457) )
))
(declare-fun e!769569 () Unit!44456)

(declare-fun lt!598382 () Unit!44456)

(assert (=> b!1354886 (= e!769569 lt!598382)))

(declare-fun lt!598381 () Unit!44456)

(declare-fun lemmaListSubSeqRefl!0 (List!31785) Unit!44456)

(assert (=> b!1354886 (= lt!598381 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!759 (List!31785 List!31785) Bool)

(assert (=> b!1354886 (subseq!759 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92241 List!31785 List!31785 (_ BitVec 32)) Unit!44456)

(declare-fun $colon$colon!776 (List!31785 (_ BitVec 64)) List!31785)

(assert (=> b!1354886 (= lt!598382 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!776 acc!759 (select (arr!44564 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(declare-fun arrayNoDuplicates!0 (array!92241 (_ BitVec 32) List!31785) Bool)

(assert (=> b!1354886 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1354887 () Bool)

(declare-fun res!900015 () Bool)

(assert (=> b!1354887 (=> (not res!900015) (not e!769572))))

(declare-fun noDuplicate!2229 (List!31785) Bool)

(assert (=> b!1354887 (= res!900015 (noDuplicate!2229 acc!759))))

(declare-fun b!1354888 () Bool)

(declare-fun res!900010 () Bool)

(assert (=> b!1354888 (=> (not res!900010) (not e!769572))))

(assert (=> b!1354888 (= res!900010 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1354889 () Bool)

(declare-fun res!900013 () Bool)

(assert (=> b!1354889 (=> (not res!900013) (not e!769572))))

(assert (=> b!1354889 (= res!900013 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45115 a!3742)))))

(declare-fun b!1354890 () Bool)

(declare-fun res!900016 () Bool)

(assert (=> b!1354890 (=> (not res!900016) (not e!769572))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1354890 (= res!900016 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1354891 () Bool)

(declare-fun e!769570 () Bool)

(assert (=> b!1354891 (= e!769570 (not true))))

(declare-fun lt!598378 () List!31785)

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1354891 (arrayNoDuplicates!0 (array!92242 (store (arr!44564 a!3742) i!1404 l!3587) (size!45115 a!3742)) (bvadd #b00000000000000000000000000000001 from!3120) lt!598378)))

(declare-fun lt!598377 () Unit!44456)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!92241 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!31785) Unit!44456)

(assert (=> b!1354891 (= lt!598377 (lemmaPutNonValidKeyPreservesNoDuplicate!0 a!3742 l!3587 i!1404 (bvadd #b00000000000000000000000000000001 from!3120) lt!598378))))

(declare-fun b!1354892 () Bool)

(declare-fun res!900007 () Bool)

(assert (=> b!1354892 (=> (not res!900007) (not e!769570))))

(assert (=> b!1354892 (= res!900007 (noDuplicate!2229 lt!598378))))

(declare-fun b!1354893 () Bool)

(declare-fun res!900009 () Bool)

(assert (=> b!1354893 (=> (not res!900009) (not e!769570))))

(assert (=> b!1354893 (= res!900009 (not (contains!9350 lt!598378 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1354894 () Bool)

(declare-fun e!769573 () Bool)

(assert (=> b!1354894 (= e!769573 e!769570)))

(declare-fun res!900005 () Bool)

(assert (=> b!1354894 (=> (not res!900005) (not e!769570))))

(assert (=> b!1354894 (= res!900005 (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000))))

(assert (=> b!1354894 (= lt!598378 ($colon$colon!776 acc!759 (select (arr!44564 a!3742) from!3120)))))

(declare-fun b!1354895 () Bool)

(declare-fun res!900006 () Bool)

(assert (=> b!1354895 (=> (not res!900006) (not e!769570))))

(assert (=> b!1354895 (= res!900006 (not (contains!9350 lt!598378 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1354896 () Bool)

(declare-fun res!900018 () Bool)

(assert (=> b!1354896 (=> (not res!900018) (not e!769572))))

(assert (=> b!1354896 (= res!900018 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31782))))

(declare-fun b!1354897 () Bool)

(declare-fun res!900004 () Bool)

(assert (=> b!1354897 (=> (not res!900004) (not e!769572))))

(assert (=> b!1354897 (= res!900004 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45115 a!3742))))))

(declare-fun b!1354898 () Bool)

(assert (=> b!1354898 (= e!769572 e!769573)))

(declare-fun res!900011 () Bool)

(assert (=> b!1354898 (=> (not res!900011) (not e!769573))))

(declare-fun lt!598380 () Bool)

(assert (=> b!1354898 (= res!900011 (and (not (= from!3120 i!1404)) lt!598380))))

(declare-fun lt!598379 () Unit!44456)

(assert (=> b!1354898 (= lt!598379 e!769569)))

(declare-fun c!126883 () Bool)

(assert (=> b!1354898 (= c!126883 lt!598380)))

(assert (=> b!1354898 (= lt!598380 (validKeyInArray!0 (select (arr!44564 a!3742) from!3120)))))

(declare-fun b!1354899 () Bool)

(declare-fun res!900008 () Bool)

(assert (=> b!1354899 (=> (not res!900008) (not e!769572))))

(assert (=> b!1354899 (= res!900008 (not (contains!9350 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1354900 () Bool)

(declare-fun Unit!44458 () Unit!44456)

(assert (=> b!1354900 (= e!769569 Unit!44458)))

(declare-fun b!1354901 () Bool)

(declare-fun res!900014 () Bool)

(assert (=> b!1354901 (=> (not res!900014) (not e!769570))))

(assert (=> b!1354901 (= res!900014 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) lt!598378))))

(assert (= (and start!114136 res!900017) b!1354887))

(assert (= (and b!1354887 res!900015) b!1354885))

(assert (= (and b!1354885 res!900012) b!1354899))

(assert (= (and b!1354899 res!900008) b!1354896))

(assert (= (and b!1354896 res!900018) b!1354888))

(assert (= (and b!1354888 res!900010) b!1354897))

(assert (= (and b!1354897 res!900004) b!1354890))

(assert (= (and b!1354890 res!900016) b!1354889))

(assert (= (and b!1354889 res!900013) b!1354898))

(assert (= (and b!1354898 c!126883) b!1354886))

(assert (= (and b!1354898 (not c!126883)) b!1354900))

(assert (= (and b!1354898 res!900011) b!1354894))

(assert (= (and b!1354894 res!900005) b!1354892))

(assert (= (and b!1354892 res!900007) b!1354893))

(assert (= (and b!1354893 res!900009) b!1354895))

(assert (= (and b!1354895 res!900006) b!1354901))

(assert (= (and b!1354901 res!900014) b!1354891))

(declare-fun m!1241197 () Bool)

(assert (=> b!1354891 m!1241197))

(declare-fun m!1241199 () Bool)

(assert (=> b!1354891 m!1241199))

(declare-fun m!1241201 () Bool)

(assert (=> b!1354891 m!1241201))

(declare-fun m!1241203 () Bool)

(assert (=> b!1354894 m!1241203))

(assert (=> b!1354894 m!1241203))

(declare-fun m!1241205 () Bool)

(assert (=> b!1354894 m!1241205))

(declare-fun m!1241207 () Bool)

(assert (=> b!1354901 m!1241207))

(declare-fun m!1241209 () Bool)

(assert (=> b!1354895 m!1241209))

(declare-fun m!1241211 () Bool)

(assert (=> b!1354885 m!1241211))

(declare-fun m!1241213 () Bool)

(assert (=> b!1354887 m!1241213))

(declare-fun m!1241215 () Bool)

(assert (=> b!1354893 m!1241215))

(assert (=> b!1354898 m!1241203))

(assert (=> b!1354898 m!1241203))

(declare-fun m!1241217 () Bool)

(assert (=> b!1354898 m!1241217))

(declare-fun m!1241219 () Bool)

(assert (=> b!1354890 m!1241219))

(declare-fun m!1241221 () Bool)

(assert (=> start!114136 m!1241221))

(declare-fun m!1241223 () Bool)

(assert (=> b!1354896 m!1241223))

(declare-fun m!1241225 () Bool)

(assert (=> b!1354892 m!1241225))

(declare-fun m!1241227 () Bool)

(assert (=> b!1354886 m!1241227))

(assert (=> b!1354886 m!1241203))

(assert (=> b!1354886 m!1241205))

(declare-fun m!1241229 () Bool)

(assert (=> b!1354886 m!1241229))

(declare-fun m!1241231 () Bool)

(assert (=> b!1354886 m!1241231))

(assert (=> b!1354886 m!1241203))

(assert (=> b!1354886 m!1241205))

(declare-fun m!1241233 () Bool)

(assert (=> b!1354886 m!1241233))

(declare-fun m!1241235 () Bool)

(assert (=> b!1354888 m!1241235))

(declare-fun m!1241237 () Bool)

(assert (=> b!1354899 m!1241237))

(check-sat (not b!1354893) (not b!1354892) (not b!1354885) (not b!1354896) (not b!1354898) (not b!1354891) (not b!1354901) (not b!1354894) (not start!114136) (not b!1354888) (not b!1354886) (not b!1354887) (not b!1354890) (not b!1354895) (not b!1354899))
(check-sat)
