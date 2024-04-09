; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114204 () Bool)

(assert start!114204)

(declare-fun b!1356146 () Bool)

(declare-fun res!901066 () Bool)

(declare-fun e!769984 () Bool)

(assert (=> b!1356146 (=> (not res!901066) (not e!769984))))

(declare-datatypes ((List!31819 0))(
  ( (Nil!31816) (Cons!31815 (h!33024 (_ BitVec 64)) (t!46484 List!31819)) )
))
(declare-fun acc!759 () List!31819)

(declare-fun contains!9384 (List!31819 (_ BitVec 64)) Bool)

(assert (=> b!1356146 (= res!901066 (not (contains!9384 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!901064 () Bool)

(assert (=> start!114204 (=> (not res!901064) (not e!769984))))

(declare-datatypes ((array!92309 0))(
  ( (array!92310 (arr!44598 (Array (_ BitVec 32) (_ BitVec 64))) (size!45149 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92309)

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> start!114204 (= res!901064 (and (bvslt (size!45149 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45149 a!3742))))))

(assert (=> start!114204 e!769984))

(assert (=> start!114204 true))

(declare-fun array_inv!33543 (array!92309) Bool)

(assert (=> start!114204 (array_inv!33543 a!3742)))

(declare-fun b!1356147 () Bool)

(declare-fun res!901065 () Bool)

(assert (=> b!1356147 (=> (not res!901065) (not e!769984))))

(assert (=> b!1356147 (= res!901065 (not (contains!9384 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1356148 () Bool)

(declare-datatypes ((Unit!44558 0))(
  ( (Unit!44559) )
))
(declare-fun e!769981 () Unit!44558)

(declare-fun Unit!44560 () Unit!44558)

(assert (=> b!1356148 (= e!769981 Unit!44560)))

(declare-fun b!1356149 () Bool)

(declare-fun e!769983 () Bool)

(assert (=> b!1356149 (= e!769984 e!769983)))

(declare-fun res!901061 () Bool)

(assert (=> b!1356149 (=> (not res!901061) (not e!769983))))

(declare-fun lt!598894 () Bool)

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1356149 (= res!901061 (and (not (= from!3120 i!1404)) (not lt!598894) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-fun lt!598892 () Unit!44558)

(assert (=> b!1356149 (= lt!598892 e!769981)))

(declare-fun c!126985 () Bool)

(assert (=> b!1356149 (= c!126985 lt!598894)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1356149 (= lt!598894 (validKeyInArray!0 (select (arr!44598 a!3742) from!3120)))))

(declare-fun b!1356150 () Bool)

(declare-fun res!901068 () Bool)

(assert (=> b!1356150 (=> (not res!901068) (not e!769983))))

(declare-fun arrayNoDuplicates!0 (array!92309 (_ BitVec 32) List!31819) Bool)

(assert (=> b!1356150 (= res!901068 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1356151 () Bool)

(declare-fun res!901062 () Bool)

(assert (=> b!1356151 (=> (not res!901062) (not e!769984))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1356151 (= res!901062 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1356152 () Bool)

(declare-fun res!901063 () Bool)

(assert (=> b!1356152 (=> (not res!901063) (not e!769984))))

(assert (=> b!1356152 (= res!901063 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45149 a!3742)))))

(declare-fun b!1356153 () Bool)

(declare-fun res!901071 () Bool)

(assert (=> b!1356153 (=> (not res!901071) (not e!769984))))

(assert (=> b!1356153 (= res!901071 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45149 a!3742))))))

(declare-fun b!1356154 () Bool)

(declare-fun lt!598893 () Unit!44558)

(assert (=> b!1356154 (= e!769981 lt!598893)))

(declare-fun lt!598895 () Unit!44558)

(declare-fun lemmaListSubSeqRefl!0 (List!31819) Unit!44558)

(assert (=> b!1356154 (= lt!598895 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!793 (List!31819 List!31819) Bool)

(assert (=> b!1356154 (subseq!793 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92309 List!31819 List!31819 (_ BitVec 32)) Unit!44558)

(declare-fun $colon$colon!810 (List!31819 (_ BitVec 64)) List!31819)

(assert (=> b!1356154 (= lt!598893 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!810 acc!759 (select (arr!44598 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1356154 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1356155 () Bool)

(assert (=> b!1356155 (= e!769983 (not true))))

(assert (=> b!1356155 (arrayNoDuplicates!0 (array!92310 (store (arr!44598 a!3742) i!1404 l!3587) (size!45149 a!3742)) (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun lt!598891 () Unit!44558)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!92309 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!31819) Unit!44558)

(assert (=> b!1356155 (= lt!598891 (lemmaPutNonValidKeyPreservesNoDuplicate!0 a!3742 l!3587 i!1404 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1356156 () Bool)

(declare-fun res!901069 () Bool)

(assert (=> b!1356156 (=> (not res!901069) (not e!769984))))

(assert (=> b!1356156 (= res!901069 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31816))))

(declare-fun b!1356157 () Bool)

(declare-fun res!901067 () Bool)

(assert (=> b!1356157 (=> (not res!901067) (not e!769984))))

(assert (=> b!1356157 (= res!901067 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1356158 () Bool)

(declare-fun res!901070 () Bool)

(assert (=> b!1356158 (=> (not res!901070) (not e!769984))))

(declare-fun noDuplicate!2263 (List!31819) Bool)

(assert (=> b!1356158 (= res!901070 (noDuplicate!2263 acc!759))))

(assert (= (and start!114204 res!901064) b!1356158))

(assert (= (and b!1356158 res!901070) b!1356147))

(assert (= (and b!1356147 res!901065) b!1356146))

(assert (= (and b!1356146 res!901066) b!1356156))

(assert (= (and b!1356156 res!901069) b!1356157))

(assert (= (and b!1356157 res!901067) b!1356153))

(assert (= (and b!1356153 res!901071) b!1356151))

(assert (= (and b!1356151 res!901062) b!1356152))

(assert (= (and b!1356152 res!901063) b!1356149))

(assert (= (and b!1356149 c!126985) b!1356154))

(assert (= (and b!1356149 (not c!126985)) b!1356148))

(assert (= (and b!1356149 res!901061) b!1356150))

(assert (= (and b!1356150 res!901068) b!1356155))

(declare-fun m!1242207 () Bool)

(assert (=> b!1356155 m!1242207))

(declare-fun m!1242209 () Bool)

(assert (=> b!1356155 m!1242209))

(declare-fun m!1242211 () Bool)

(assert (=> b!1356155 m!1242211))

(declare-fun m!1242213 () Bool)

(assert (=> b!1356154 m!1242213))

(declare-fun m!1242215 () Bool)

(assert (=> b!1356154 m!1242215))

(declare-fun m!1242217 () Bool)

(assert (=> b!1356154 m!1242217))

(declare-fun m!1242219 () Bool)

(assert (=> b!1356154 m!1242219))

(declare-fun m!1242221 () Bool)

(assert (=> b!1356154 m!1242221))

(assert (=> b!1356154 m!1242215))

(assert (=> b!1356154 m!1242217))

(declare-fun m!1242223 () Bool)

(assert (=> b!1356154 m!1242223))

(declare-fun m!1242225 () Bool)

(assert (=> b!1356146 m!1242225))

(declare-fun m!1242227 () Bool)

(assert (=> b!1356156 m!1242227))

(declare-fun m!1242229 () Bool)

(assert (=> b!1356147 m!1242229))

(declare-fun m!1242231 () Bool)

(assert (=> b!1356151 m!1242231))

(assert (=> b!1356150 m!1242221))

(declare-fun m!1242233 () Bool)

(assert (=> b!1356158 m!1242233))

(assert (=> b!1356149 m!1242215))

(assert (=> b!1356149 m!1242215))

(declare-fun m!1242235 () Bool)

(assert (=> b!1356149 m!1242235))

(declare-fun m!1242237 () Bool)

(assert (=> start!114204 m!1242237))

(declare-fun m!1242239 () Bool)

(assert (=> b!1356157 m!1242239))

(push 1)

(assert (not b!1356157))

(assert (not b!1356155))

(assert (not 