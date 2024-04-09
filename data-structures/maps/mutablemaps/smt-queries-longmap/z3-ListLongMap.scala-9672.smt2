; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!114208 () Bool)

(assert start!114208)

(declare-fun b!1356224 () Bool)

(declare-fun res!901133 () Bool)

(declare-fun e!770006 () Bool)

(assert (=> b!1356224 (=> (not res!901133) (not e!770006))))

(declare-fun from!3120 () (_ BitVec 32))

(declare-datatypes ((array!92313 0))(
  ( (array!92314 (arr!44600 (Array (_ BitVec 32) (_ BitVec 64))) (size!45151 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92313)

(assert (=> b!1356224 (= res!901133 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45151 a!3742)))))

(declare-fun b!1356225 () Bool)

(declare-fun res!901128 () Bool)

(assert (=> b!1356225 (=> (not res!901128) (not e!770006))))

(declare-datatypes ((List!31821 0))(
  ( (Nil!31818) (Cons!31817 (h!33026 (_ BitVec 64)) (t!46486 List!31821)) )
))
(declare-fun acc!759 () List!31821)

(declare-fun noDuplicate!2265 (List!31821) Bool)

(assert (=> b!1356225 (= res!901128 (noDuplicate!2265 acc!759))))

(declare-fun b!1356226 () Bool)

(declare-fun res!901137 () Bool)

(assert (=> b!1356226 (=> (not res!901137) (not e!770006))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1356226 (= res!901137 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45151 a!3742))))))

(declare-fun b!1356227 () Bool)

(declare-datatypes ((Unit!44564 0))(
  ( (Unit!44565) )
))
(declare-fun e!770008 () Unit!44564)

(declare-fun lt!598922 () Unit!44564)

(assert (=> b!1356227 (= e!770008 lt!598922)))

(declare-fun lt!598924 () Unit!44564)

(declare-fun lemmaListSubSeqRefl!0 (List!31821) Unit!44564)

(assert (=> b!1356227 (= lt!598924 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!795 (List!31821 List!31821) Bool)

(assert (=> b!1356227 (subseq!795 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92313 List!31821 List!31821 (_ BitVec 32)) Unit!44564)

(declare-fun $colon$colon!812 (List!31821 (_ BitVec 64)) List!31821)

(assert (=> b!1356227 (= lt!598922 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!812 acc!759 (select (arr!44600 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(declare-fun arrayNoDuplicates!0 (array!92313 (_ BitVec 32) List!31821) Bool)

(assert (=> b!1356227 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1356228 () Bool)

(declare-fun res!901131 () Bool)

(declare-fun e!770007 () Bool)

(assert (=> b!1356228 (=> (not res!901131) (not e!770007))))

(assert (=> b!1356228 (= res!901131 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1356229 () Bool)

(assert (=> b!1356229 (= e!770006 e!770007)))

(declare-fun res!901129 () Bool)

(assert (=> b!1356229 (=> (not res!901129) (not e!770007))))

(declare-fun lt!598925 () Bool)

(assert (=> b!1356229 (= res!901129 (and (not (= from!3120 i!1404)) (not lt!598925) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-fun lt!598921 () Unit!44564)

(assert (=> b!1356229 (= lt!598921 e!770008)))

(declare-fun c!126991 () Bool)

(assert (=> b!1356229 (= c!126991 lt!598925)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1356229 (= lt!598925 (validKeyInArray!0 (select (arr!44600 a!3742) from!3120)))))

(declare-fun res!901127 () Bool)

(assert (=> start!114208 (=> (not res!901127) (not e!770006))))

(assert (=> start!114208 (= res!901127 (and (bvslt (size!45151 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45151 a!3742))))))

(assert (=> start!114208 e!770006))

(assert (=> start!114208 true))

(declare-fun array_inv!33545 (array!92313) Bool)

(assert (=> start!114208 (array_inv!33545 a!3742)))

(declare-fun b!1356230 () Bool)

(declare-fun Unit!44566 () Unit!44564)

(assert (=> b!1356230 (= e!770008 Unit!44566)))

(declare-fun b!1356231 () Bool)

(declare-fun res!901136 () Bool)

(assert (=> b!1356231 (=> (not res!901136) (not e!770006))))

(declare-fun contains!9386 (List!31821 (_ BitVec 64)) Bool)

(assert (=> b!1356231 (= res!901136 (not (contains!9386 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1356232 () Bool)

(declare-fun res!901132 () Bool)

(assert (=> b!1356232 (=> (not res!901132) (not e!770006))))

(assert (=> b!1356232 (= res!901132 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1356233 () Bool)

(assert (=> b!1356233 (= e!770007 (not true))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1356233 (arrayNoDuplicates!0 (array!92314 (store (arr!44600 a!3742) i!1404 l!3587) (size!45151 a!3742)) (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun lt!598923 () Unit!44564)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!92313 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!31821) Unit!44564)

(assert (=> b!1356233 (= lt!598923 (lemmaPutNonValidKeyPreservesNoDuplicate!0 a!3742 l!3587 i!1404 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1356234 () Bool)

(declare-fun res!901135 () Bool)

(assert (=> b!1356234 (=> (not res!901135) (not e!770006))))

(assert (=> b!1356234 (= res!901135 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31818))))

(declare-fun b!1356235 () Bool)

(declare-fun res!901130 () Bool)

(assert (=> b!1356235 (=> (not res!901130) (not e!770006))))

(assert (=> b!1356235 (= res!901130 (not (contains!9386 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1356236 () Bool)

(declare-fun res!901134 () Bool)

(assert (=> b!1356236 (=> (not res!901134) (not e!770006))))

(assert (=> b!1356236 (= res!901134 (not (validKeyInArray!0 l!3587)))))

(assert (= (and start!114208 res!901127) b!1356225))

(assert (= (and b!1356225 res!901128) b!1356231))

(assert (= (and b!1356231 res!901136) b!1356235))

(assert (= (and b!1356235 res!901130) b!1356234))

(assert (= (and b!1356234 res!901135) b!1356232))

(assert (= (and b!1356232 res!901132) b!1356226))

(assert (= (and b!1356226 res!901137) b!1356236))

(assert (= (and b!1356236 res!901134) b!1356224))

(assert (= (and b!1356224 res!901133) b!1356229))

(assert (= (and b!1356229 c!126991) b!1356227))

(assert (= (and b!1356229 (not c!126991)) b!1356230))

(assert (= (and b!1356229 res!901129) b!1356228))

(assert (= (and b!1356228 res!901131) b!1356233))

(declare-fun m!1242275 () Bool)

(assert (=> b!1356235 m!1242275))

(declare-fun m!1242277 () Bool)

(assert (=> b!1356232 m!1242277))

(declare-fun m!1242279 () Bool)

(assert (=> b!1356234 m!1242279))

(declare-fun m!1242281 () Bool)

(assert (=> b!1356233 m!1242281))

(declare-fun m!1242283 () Bool)

(assert (=> b!1356233 m!1242283))

(declare-fun m!1242285 () Bool)

(assert (=> b!1356233 m!1242285))

(declare-fun m!1242287 () Bool)

(assert (=> start!114208 m!1242287))

(declare-fun m!1242289 () Bool)

(assert (=> b!1356236 m!1242289))

(declare-fun m!1242291 () Bool)

(assert (=> b!1356231 m!1242291))

(declare-fun m!1242293 () Bool)

(assert (=> b!1356227 m!1242293))

(declare-fun m!1242295 () Bool)

(assert (=> b!1356227 m!1242295))

(declare-fun m!1242297 () Bool)

(assert (=> b!1356227 m!1242297))

(declare-fun m!1242299 () Bool)

(assert (=> b!1356227 m!1242299))

(declare-fun m!1242301 () Bool)

(assert (=> b!1356227 m!1242301))

(assert (=> b!1356227 m!1242295))

(assert (=> b!1356227 m!1242297))

(declare-fun m!1242303 () Bool)

(assert (=> b!1356227 m!1242303))

(assert (=> b!1356229 m!1242295))

(assert (=> b!1356229 m!1242295))

(declare-fun m!1242305 () Bool)

(assert (=> b!1356229 m!1242305))

(assert (=> b!1356228 m!1242301))

(declare-fun m!1242307 () Bool)

(assert (=> b!1356225 m!1242307))

(check-sat (not b!1356232) (not b!1356227) (not b!1356234) (not b!1356235) (not b!1356236) (not b!1356225) (not b!1356233) (not b!1356228) (not b!1356231) (not start!114208) (not b!1356229))
(check-sat)
