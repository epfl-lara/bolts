; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!114202 () Bool)

(assert start!114202)

(declare-fun b!1356107 () Bool)

(declare-fun e!769972 () Bool)

(declare-fun e!769970 () Bool)

(assert (=> b!1356107 (= e!769972 e!769970)))

(declare-fun res!901035 () Bool)

(assert (=> b!1356107 (=> (not res!901035) (not e!769970))))

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun lt!598877 () Bool)

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1356107 (= res!901035 (and (not (= from!3120 i!1404)) (not lt!598877) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-datatypes ((Unit!44555 0))(
  ( (Unit!44556) )
))
(declare-fun lt!598878 () Unit!44555)

(declare-fun e!769969 () Unit!44555)

(assert (=> b!1356107 (= lt!598878 e!769969)))

(declare-fun c!126982 () Bool)

(assert (=> b!1356107 (= c!126982 lt!598877)))

(declare-datatypes ((array!92307 0))(
  ( (array!92308 (arr!44597 (Array (_ BitVec 32) (_ BitVec 64))) (size!45148 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92307)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1356107 (= lt!598877 (validKeyInArray!0 (select (arr!44597 a!3742) from!3120)))))

(declare-fun b!1356108 () Bool)

(declare-fun res!901034 () Bool)

(assert (=> b!1356108 (=> (not res!901034) (not e!769972))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1356108 (= res!901034 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1356109 () Bool)

(declare-fun lt!598880 () Unit!44555)

(assert (=> b!1356109 (= e!769969 lt!598880)))

(declare-fun lt!598876 () Unit!44555)

(declare-datatypes ((List!31818 0))(
  ( (Nil!31815) (Cons!31814 (h!33023 (_ BitVec 64)) (t!46483 List!31818)) )
))
(declare-fun acc!759 () List!31818)

(declare-fun lemmaListSubSeqRefl!0 (List!31818) Unit!44555)

(assert (=> b!1356109 (= lt!598876 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!792 (List!31818 List!31818) Bool)

(assert (=> b!1356109 (subseq!792 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92307 List!31818 List!31818 (_ BitVec 32)) Unit!44555)

(declare-fun $colon$colon!809 (List!31818 (_ BitVec 64)) List!31818)

(assert (=> b!1356109 (= lt!598880 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!809 acc!759 (select (arr!44597 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(declare-fun arrayNoDuplicates!0 (array!92307 (_ BitVec 32) List!31818) Bool)

(assert (=> b!1356109 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1356110 () Bool)

(declare-fun res!901031 () Bool)

(assert (=> b!1356110 (=> (not res!901031) (not e!769972))))

(assert (=> b!1356110 (= res!901031 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31815))))

(declare-fun b!1356111 () Bool)

(declare-fun res!901036 () Bool)

(assert (=> b!1356111 (=> (not res!901036) (not e!769972))))

(declare-fun contains!9383 (List!31818 (_ BitVec 64)) Bool)

(assert (=> b!1356111 (= res!901036 (not (contains!9383 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1356112 () Bool)

(declare-fun res!901038 () Bool)

(assert (=> b!1356112 (=> (not res!901038) (not e!769972))))

(assert (=> b!1356112 (= res!901038 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45148 a!3742)))))

(declare-fun b!1356113 () Bool)

(assert (=> b!1356113 (= e!769970 (not true))))

(assert (=> b!1356113 (arrayNoDuplicates!0 (array!92308 (store (arr!44597 a!3742) i!1404 l!3587) (size!45148 a!3742)) (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun lt!598879 () Unit!44555)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!92307 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!31818) Unit!44555)

(assert (=> b!1356113 (= lt!598879 (lemmaPutNonValidKeyPreservesNoDuplicate!0 a!3742 l!3587 i!1404 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun res!901029 () Bool)

(assert (=> start!114202 (=> (not res!901029) (not e!769972))))

(assert (=> start!114202 (= res!901029 (and (bvslt (size!45148 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45148 a!3742))))))

(assert (=> start!114202 e!769972))

(assert (=> start!114202 true))

(declare-fun array_inv!33542 (array!92307) Bool)

(assert (=> start!114202 (array_inv!33542 a!3742)))

(declare-fun b!1356114 () Bool)

(declare-fun res!901037 () Bool)

(assert (=> b!1356114 (=> (not res!901037) (not e!769972))))

(declare-fun noDuplicate!2262 (List!31818) Bool)

(assert (=> b!1356114 (= res!901037 (noDuplicate!2262 acc!759))))

(declare-fun b!1356115 () Bool)

(declare-fun res!901028 () Bool)

(assert (=> b!1356115 (=> (not res!901028) (not e!769970))))

(assert (=> b!1356115 (= res!901028 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1356116 () Bool)

(declare-fun Unit!44557 () Unit!44555)

(assert (=> b!1356116 (= e!769969 Unit!44557)))

(declare-fun b!1356117 () Bool)

(declare-fun res!901032 () Bool)

(assert (=> b!1356117 (=> (not res!901032) (not e!769972))))

(assert (=> b!1356117 (= res!901032 (not (contains!9383 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1356118 () Bool)

(declare-fun res!901033 () Bool)

(assert (=> b!1356118 (=> (not res!901033) (not e!769972))))

(assert (=> b!1356118 (= res!901033 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45148 a!3742))))))

(declare-fun b!1356119 () Bool)

(declare-fun res!901030 () Bool)

(assert (=> b!1356119 (=> (not res!901030) (not e!769972))))

(assert (=> b!1356119 (= res!901030 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(assert (= (and start!114202 res!901029) b!1356114))

(assert (= (and b!1356114 res!901037) b!1356111))

(assert (= (and b!1356111 res!901036) b!1356117))

(assert (= (and b!1356117 res!901032) b!1356110))

(assert (= (and b!1356110 res!901031) b!1356119))

(assert (= (and b!1356119 res!901030) b!1356118))

(assert (= (and b!1356118 res!901033) b!1356108))

(assert (= (and b!1356108 res!901034) b!1356112))

(assert (= (and b!1356112 res!901038) b!1356107))

(assert (= (and b!1356107 c!126982) b!1356109))

(assert (= (and b!1356107 (not c!126982)) b!1356116))

(assert (= (and b!1356107 res!901035) b!1356115))

(assert (= (and b!1356115 res!901028) b!1356113))

(declare-fun m!1242173 () Bool)

(assert (=> b!1356113 m!1242173))

(declare-fun m!1242175 () Bool)

(assert (=> b!1356113 m!1242175))

(declare-fun m!1242177 () Bool)

(assert (=> b!1356113 m!1242177))

(declare-fun m!1242179 () Bool)

(assert (=> b!1356110 m!1242179))

(declare-fun m!1242181 () Bool)

(assert (=> b!1356111 m!1242181))

(declare-fun m!1242183 () Bool)

(assert (=> b!1356107 m!1242183))

(assert (=> b!1356107 m!1242183))

(declare-fun m!1242185 () Bool)

(assert (=> b!1356107 m!1242185))

(declare-fun m!1242187 () Bool)

(assert (=> b!1356109 m!1242187))

(assert (=> b!1356109 m!1242183))

(declare-fun m!1242189 () Bool)

(assert (=> b!1356109 m!1242189))

(declare-fun m!1242191 () Bool)

(assert (=> b!1356109 m!1242191))

(declare-fun m!1242193 () Bool)

(assert (=> b!1356109 m!1242193))

(assert (=> b!1356109 m!1242183))

(assert (=> b!1356109 m!1242189))

(declare-fun m!1242195 () Bool)

(assert (=> b!1356109 m!1242195))

(assert (=> b!1356115 m!1242193))

(declare-fun m!1242197 () Bool)

(assert (=> b!1356114 m!1242197))

(declare-fun m!1242199 () Bool)

(assert (=> b!1356117 m!1242199))

(declare-fun m!1242201 () Bool)

(assert (=> b!1356108 m!1242201))

(declare-fun m!1242203 () Bool)

(assert (=> start!114202 m!1242203))

(declare-fun m!1242205 () Bool)

(assert (=> b!1356119 m!1242205))

(check-sat (not b!1356110) (not b!1356117) (not b!1356113) (not b!1356115) (not b!1356111) (not b!1356109) (not b!1356119) (not b!1356114) (not b!1356107) (not start!114202) (not b!1356108))
(check-sat)
