; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114200 () Bool)

(assert start!114200)

(declare-fun b!1356068 () Bool)

(declare-fun e!769958 () Bool)

(declare-fun e!769959 () Bool)

(assert (=> b!1356068 (= e!769958 e!769959)))

(declare-fun res!900996 () Bool)

(assert (=> b!1356068 (=> (not res!900996) (not e!769959))))

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun i!1404 () (_ BitVec 32))

(declare-fun lt!598865 () Bool)

(assert (=> b!1356068 (= res!900996 (and (not (= from!3120 i!1404)) (not lt!598865) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-datatypes ((Unit!44552 0))(
  ( (Unit!44553) )
))
(declare-fun lt!598861 () Unit!44552)

(declare-fun e!769960 () Unit!44552)

(assert (=> b!1356068 (= lt!598861 e!769960)))

(declare-fun c!126979 () Bool)

(assert (=> b!1356068 (= c!126979 lt!598865)))

(declare-datatypes ((array!92305 0))(
  ( (array!92306 (arr!44596 (Array (_ BitVec 32) (_ BitVec 64))) (size!45147 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92305)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1356068 (= lt!598865 (validKeyInArray!0 (select (arr!44596 a!3742) from!3120)))))

(declare-fun b!1356069 () Bool)

(declare-fun res!900999 () Bool)

(assert (=> b!1356069 (=> (not res!900999) (not e!769958))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1356069 (= res!900999 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1356070 () Bool)

(declare-fun res!901002 () Bool)

(assert (=> b!1356070 (=> (not res!901002) (not e!769958))))

(assert (=> b!1356070 (= res!901002 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45147 a!3742)))))

(declare-fun b!1356071 () Bool)

(declare-fun res!901005 () Bool)

(assert (=> b!1356071 (=> (not res!901005) (not e!769958))))

(declare-datatypes ((List!31817 0))(
  ( (Nil!31814) (Cons!31813 (h!33022 (_ BitVec 64)) (t!46482 List!31817)) )
))
(declare-fun acc!759 () List!31817)

(declare-fun arrayNoDuplicates!0 (array!92305 (_ BitVec 32) List!31817) Bool)

(assert (=> b!1356071 (= res!901005 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1356073 () Bool)

(declare-fun res!901004 () Bool)

(assert (=> b!1356073 (=> (not res!901004) (not e!769959))))

(assert (=> b!1356073 (= res!901004 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1356074 () Bool)

(declare-fun res!900998 () Bool)

(assert (=> b!1356074 (=> (not res!900998) (not e!769958))))

(declare-fun contains!9382 (List!31817 (_ BitVec 64)) Bool)

(assert (=> b!1356074 (= res!900998 (not (contains!9382 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1356075 () Bool)

(declare-fun res!901001 () Bool)

(assert (=> b!1356075 (=> (not res!901001) (not e!769958))))

(assert (=> b!1356075 (= res!901001 (not (contains!9382 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1356076 () Bool)

(declare-fun res!900997 () Bool)

(assert (=> b!1356076 (=> (not res!900997) (not e!769958))))

(declare-fun noDuplicate!2261 (List!31817) Bool)

(assert (=> b!1356076 (= res!900997 (noDuplicate!2261 acc!759))))

(declare-fun b!1356077 () Bool)

(declare-fun res!900995 () Bool)

(assert (=> b!1356077 (=> (not res!900995) (not e!769958))))

(assert (=> b!1356077 (= res!900995 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31814))))

(declare-fun b!1356078 () Bool)

(declare-fun lt!598864 () Unit!44552)

(assert (=> b!1356078 (= e!769960 lt!598864)))

(declare-fun lt!598863 () Unit!44552)

(declare-fun lemmaListSubSeqRefl!0 (List!31817) Unit!44552)

(assert (=> b!1356078 (= lt!598863 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!791 (List!31817 List!31817) Bool)

(assert (=> b!1356078 (subseq!791 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92305 List!31817 List!31817 (_ BitVec 32)) Unit!44552)

(declare-fun $colon$colon!808 (List!31817 (_ BitVec 64)) List!31817)

(assert (=> b!1356078 (= lt!598864 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!808 acc!759 (select (arr!44596 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1356078 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1356079 () Bool)

(assert (=> b!1356079 (= e!769959 (not true))))

(assert (=> b!1356079 (arrayNoDuplicates!0 (array!92306 (store (arr!44596 a!3742) i!1404 l!3587) (size!45147 a!3742)) (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun lt!598862 () Unit!44552)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!92305 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!31817) Unit!44552)

(assert (=> b!1356079 (= lt!598862 (lemmaPutNonValidKeyPreservesNoDuplicate!0 a!3742 l!3587 i!1404 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1356080 () Bool)

(declare-fun res!901000 () Bool)

(assert (=> b!1356080 (=> (not res!901000) (not e!769958))))

(assert (=> b!1356080 (= res!901000 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45147 a!3742))))))

(declare-fun res!901003 () Bool)

(assert (=> start!114200 (=> (not res!901003) (not e!769958))))

(assert (=> start!114200 (= res!901003 (and (bvslt (size!45147 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45147 a!3742))))))

(assert (=> start!114200 e!769958))

(assert (=> start!114200 true))

(declare-fun array_inv!33541 (array!92305) Bool)

(assert (=> start!114200 (array_inv!33541 a!3742)))

(declare-fun b!1356072 () Bool)

(declare-fun Unit!44554 () Unit!44552)

(assert (=> b!1356072 (= e!769960 Unit!44554)))

(assert (= (and start!114200 res!901003) b!1356076))

(assert (= (and b!1356076 res!900997) b!1356074))

(assert (= (and b!1356074 res!900998) b!1356075))

(assert (= (and b!1356075 res!901001) b!1356077))

(assert (= (and b!1356077 res!900995) b!1356071))

(assert (= (and b!1356071 res!901005) b!1356080))

(assert (= (and b!1356080 res!901000) b!1356069))

(assert (= (and b!1356069 res!900999) b!1356070))

(assert (= (and b!1356070 res!901002) b!1356068))

(assert (= (and b!1356068 c!126979) b!1356078))

(assert (= (and b!1356068 (not c!126979)) b!1356072))

(assert (= (and b!1356068 res!900996) b!1356073))

(assert (= (and b!1356073 res!901004) b!1356079))

(declare-fun m!1242139 () Bool)

(assert (=> b!1356068 m!1242139))

(assert (=> b!1356068 m!1242139))

(declare-fun m!1242141 () Bool)

(assert (=> b!1356068 m!1242141))

(declare-fun m!1242143 () Bool)

(assert (=> b!1356076 m!1242143))

(declare-fun m!1242145 () Bool)

(assert (=> b!1356079 m!1242145))

(declare-fun m!1242147 () Bool)

(assert (=> b!1356079 m!1242147))

(declare-fun m!1242149 () Bool)

(assert (=> b!1356079 m!1242149))

(declare-fun m!1242151 () Bool)

(assert (=> start!114200 m!1242151))

(declare-fun m!1242153 () Bool)

(assert (=> b!1356074 m!1242153))

(declare-fun m!1242155 () Bool)

(assert (=> b!1356078 m!1242155))

(assert (=> b!1356078 m!1242139))

(declare-fun m!1242157 () Bool)

(assert (=> b!1356078 m!1242157))

(declare-fun m!1242159 () Bool)

(assert (=> b!1356078 m!1242159))

(declare-fun m!1242161 () Bool)

(assert (=> b!1356078 m!1242161))

(assert (=> b!1356078 m!1242139))

(assert (=> b!1356078 m!1242157))

(declare-fun m!1242163 () Bool)

(assert (=> b!1356078 m!1242163))

(declare-fun m!1242165 () Bool)

(assert (=> b!1356071 m!1242165))

(assert (=> b!1356073 m!1242161))

(declare-fun m!1242167 () Bool)

(assert (=> b!1356077 m!1242167))

(declare-fun m!1242169 () Bool)

(assert (=> b!1356075 m!1242169))

(declare-fun m!1242171 () Bool)

(assert (=> b!1356069 m!1242171))

(push 1)

(assert (not b!1356073))

(assert (not b!1356068))

(assert (not b!1356074))

(assert (not start!114200))

(assert (not b!1356079))

(assert (not b!1356069))

