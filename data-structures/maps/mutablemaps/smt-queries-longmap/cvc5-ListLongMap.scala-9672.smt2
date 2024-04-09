; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114206 () Bool)

(assert start!114206)

(declare-fun b!1356185 () Bool)

(declare-fun res!901099 () Bool)

(declare-fun e!769996 () Bool)

(assert (=> b!1356185 (=> (not res!901099) (not e!769996))))

(declare-datatypes ((List!31820 0))(
  ( (Nil!31817) (Cons!31816 (h!33025 (_ BitVec 64)) (t!46485 List!31820)) )
))
(declare-fun acc!759 () List!31820)

(declare-datatypes ((array!92311 0))(
  ( (array!92312 (arr!44599 (Array (_ BitVec 32) (_ BitVec 64))) (size!45150 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92311)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!92311 (_ BitVec 32) List!31820) Bool)

(assert (=> b!1356185 (= res!901099 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun res!901096 () Bool)

(declare-fun e!769995 () Bool)

(assert (=> start!114206 (=> (not res!901096) (not e!769995))))

(assert (=> start!114206 (= res!901096 (and (bvslt (size!45150 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45150 a!3742))))))

(assert (=> start!114206 e!769995))

(assert (=> start!114206 true))

(declare-fun array_inv!33544 (array!92311) Bool)

(assert (=> start!114206 (array_inv!33544 a!3742)))

(declare-fun b!1356186 () Bool)

(declare-fun res!901103 () Bool)

(assert (=> b!1356186 (=> (not res!901103) (not e!769995))))

(declare-fun contains!9385 (List!31820 (_ BitVec 64)) Bool)

(assert (=> b!1356186 (= res!901103 (not (contains!9385 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1356187 () Bool)

(declare-fun res!901097 () Bool)

(assert (=> b!1356187 (=> (not res!901097) (not e!769995))))

(assert (=> b!1356187 (= res!901097 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45150 a!3742)))))

(declare-fun b!1356188 () Bool)

(declare-fun res!901104 () Bool)

(assert (=> b!1356188 (=> (not res!901104) (not e!769995))))

(declare-fun noDuplicate!2264 (List!31820) Bool)

(assert (=> b!1356188 (= res!901104 (noDuplicate!2264 acc!759))))

(declare-fun b!1356189 () Bool)

(declare-datatypes ((Unit!44561 0))(
  ( (Unit!44562) )
))
(declare-fun e!769994 () Unit!44561)

(declare-fun lt!598907 () Unit!44561)

(assert (=> b!1356189 (= e!769994 lt!598907)))

(declare-fun lt!598906 () Unit!44561)

(declare-fun lemmaListSubSeqRefl!0 (List!31820) Unit!44561)

(assert (=> b!1356189 (= lt!598906 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!794 (List!31820 List!31820) Bool)

(assert (=> b!1356189 (subseq!794 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92311 List!31820 List!31820 (_ BitVec 32)) Unit!44561)

(declare-fun $colon$colon!811 (List!31820 (_ BitVec 64)) List!31820)

(assert (=> b!1356189 (= lt!598907 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!811 acc!759 (select (arr!44599 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1356189 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1356190 () Bool)

(declare-fun res!901102 () Bool)

(assert (=> b!1356190 (=> (not res!901102) (not e!769995))))

(assert (=> b!1356190 (= res!901102 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1356191 () Bool)

(declare-fun res!901100 () Bool)

(assert (=> b!1356191 (=> (not res!901100) (not e!769995))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1356191 (= res!901100 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45150 a!3742))))))

(declare-fun b!1356192 () Bool)

(assert (=> b!1356192 (= e!769995 e!769996)))

(declare-fun res!901095 () Bool)

(assert (=> b!1356192 (=> (not res!901095) (not e!769996))))

(declare-fun lt!598910 () Bool)

(assert (=> b!1356192 (= res!901095 (and (not (= from!3120 i!1404)) (not lt!598910) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-fun lt!598909 () Unit!44561)

(assert (=> b!1356192 (= lt!598909 e!769994)))

(declare-fun c!126988 () Bool)

(assert (=> b!1356192 (= c!126988 lt!598910)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1356192 (= lt!598910 (validKeyInArray!0 (select (arr!44599 a!3742) from!3120)))))

(declare-fun b!1356193 () Bool)

(declare-fun res!901094 () Bool)

(assert (=> b!1356193 (=> (not res!901094) (not e!769995))))

(assert (=> b!1356193 (= res!901094 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31817))))

(declare-fun b!1356194 () Bool)

(declare-fun res!901098 () Bool)

(assert (=> b!1356194 (=> (not res!901098) (not e!769995))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1356194 (= res!901098 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1356195 () Bool)

(assert (=> b!1356195 (= e!769996 (not true))))

(assert (=> b!1356195 (arrayNoDuplicates!0 (array!92312 (store (arr!44599 a!3742) i!1404 l!3587) (size!45150 a!3742)) (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun lt!598908 () Unit!44561)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!92311 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!31820) Unit!44561)

(assert (=> b!1356195 (= lt!598908 (lemmaPutNonValidKeyPreservesNoDuplicate!0 a!3742 l!3587 i!1404 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1356196 () Bool)

(declare-fun res!901101 () Bool)

(assert (=> b!1356196 (=> (not res!901101) (not e!769995))))

(assert (=> b!1356196 (= res!901101 (not (contains!9385 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1356197 () Bool)

(declare-fun Unit!44563 () Unit!44561)

(assert (=> b!1356197 (= e!769994 Unit!44563)))

(assert (= (and start!114206 res!901096) b!1356188))

(assert (= (and b!1356188 res!901104) b!1356196))

(assert (= (and b!1356196 res!901101) b!1356186))

(assert (= (and b!1356186 res!901103) b!1356193))

(assert (= (and b!1356193 res!901094) b!1356190))

(assert (= (and b!1356190 res!901102) b!1356191))

(assert (= (and b!1356191 res!901100) b!1356194))

(assert (= (and b!1356194 res!901098) b!1356187))

(assert (= (and b!1356187 res!901097) b!1356192))

(assert (= (and b!1356192 c!126988) b!1356189))

(assert (= (and b!1356192 (not c!126988)) b!1356197))

(assert (= (and b!1356192 res!901095) b!1356185))

(assert (= (and b!1356185 res!901099) b!1356195))

(declare-fun m!1242241 () Bool)

(assert (=> b!1356192 m!1242241))

(assert (=> b!1356192 m!1242241))

(declare-fun m!1242243 () Bool)

(assert (=> b!1356192 m!1242243))

(declare-fun m!1242245 () Bool)

(assert (=> b!1356188 m!1242245))

(declare-fun m!1242247 () Bool)

(assert (=> start!114206 m!1242247))

(declare-fun m!1242249 () Bool)

(assert (=> b!1356190 m!1242249))

(declare-fun m!1242251 () Bool)

(assert (=> b!1356195 m!1242251))

(declare-fun m!1242253 () Bool)

(assert (=> b!1356195 m!1242253))

(declare-fun m!1242255 () Bool)

(assert (=> b!1356195 m!1242255))

(declare-fun m!1242257 () Bool)

(assert (=> b!1356185 m!1242257))

(declare-fun m!1242259 () Bool)

(assert (=> b!1356186 m!1242259))

(declare-fun m!1242261 () Bool)

(assert (=> b!1356193 m!1242261))

(declare-fun m!1242263 () Bool)

(assert (=> b!1356194 m!1242263))

(declare-fun m!1242265 () Bool)

(assert (=> b!1356196 m!1242265))

(declare-fun m!1242267 () Bool)

(assert (=> b!1356189 m!1242267))

(assert (=> b!1356189 m!1242241))

(declare-fun m!1242269 () Bool)

(assert (=> b!1356189 m!1242269))

(declare-fun m!1242271 () Bool)

(assert (=> b!1356189 m!1242271))

(assert (=> b!1356189 m!1242257))

(assert (=> b!1356189 m!1242241))

(assert (=> b!1356189 m!1242269))

(declare-fun m!1242273 () Bool)

(assert (=> b!1356189 m!1242273))

(push 1)

