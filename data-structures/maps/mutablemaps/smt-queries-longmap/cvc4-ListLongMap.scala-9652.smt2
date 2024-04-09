; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114090 () Bool)

(assert start!114090)

(declare-fun b!1353749 () Bool)

(declare-fun e!769227 () Bool)

(declare-fun e!769226 () Bool)

(assert (=> b!1353749 (= e!769227 e!769226)))

(declare-fun res!899008 () Bool)

(assert (=> b!1353749 (=> (not res!899008) (not e!769226))))

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> b!1353749 (= res!899008 (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000))))

(declare-datatypes ((List!31762 0))(
  ( (Nil!31759) (Cons!31758 (h!32967 (_ BitVec 64)) (t!46427 List!31762)) )
))
(declare-fun acc!759 () List!31762)

(declare-fun lt!597967 () List!31762)

(declare-datatypes ((array!92195 0))(
  ( (array!92196 (arr!44541 (Array (_ BitVec 32) (_ BitVec 64))) (size!45092 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92195)

(declare-fun $colon$colon!753 (List!31762 (_ BitVec 64)) List!31762)

(assert (=> b!1353749 (= lt!597967 ($colon$colon!753 acc!759 (select (arr!44541 a!3742) from!3120)))))

(declare-fun b!1353750 () Bool)

(declare-fun res!899011 () Bool)

(declare-fun e!769225 () Bool)

(assert (=> b!1353750 (=> (not res!899011) (not e!769225))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1353750 (= res!899011 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1353751 () Bool)

(declare-fun res!899009 () Bool)

(assert (=> b!1353751 (=> (not res!899009) (not e!769225))))

(declare-fun arrayNoDuplicates!0 (array!92195 (_ BitVec 32) List!31762) Bool)

(assert (=> b!1353751 (= res!899009 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31759))))

(declare-fun b!1353752 () Bool)

(declare-fun res!899018 () Bool)

(assert (=> b!1353752 (=> (not res!899018) (not e!769225))))

(declare-fun contains!9327 (List!31762 (_ BitVec 64)) Bool)

(assert (=> b!1353752 (= res!899018 (not (contains!9327 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1353753 () Bool)

(declare-fun res!899019 () Bool)

(assert (=> b!1353753 (=> (not res!899019) (not e!769226))))

(assert (=> b!1353753 (= res!899019 (not (contains!9327 lt!597967 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1353754 () Bool)

(declare-fun res!899015 () Bool)

(assert (=> b!1353754 (=> (not res!899015) (not e!769226))))

(declare-fun noDuplicate!2206 (List!31762) Bool)

(assert (=> b!1353754 (= res!899015 (noDuplicate!2206 lt!597967))))

(declare-fun b!1353755 () Bool)

(declare-datatypes ((Unit!44387 0))(
  ( (Unit!44388) )
))
(declare-fun e!769224 () Unit!44387)

(declare-fun Unit!44389 () Unit!44387)

(assert (=> b!1353755 (= e!769224 Unit!44389)))

(declare-fun b!1353756 () Bool)

(declare-fun res!899017 () Bool)

(assert (=> b!1353756 (=> (not res!899017) (not e!769225))))

(assert (=> b!1353756 (= res!899017 (not (contains!9327 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1353758 () Bool)

(declare-fun res!899012 () Bool)

(assert (=> b!1353758 (=> (not res!899012) (not e!769225))))

(assert (=> b!1353758 (= res!899012 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45092 a!3742)))))

(declare-fun b!1353759 () Bool)

(declare-fun res!899007 () Bool)

(assert (=> b!1353759 (=> (not res!899007) (not e!769226))))

(assert (=> b!1353759 (= res!899007 (not (contains!9327 lt!597967 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1353760 () Bool)

(assert (=> b!1353760 (= e!769226 false)))

(declare-fun lt!597965 () Bool)

(assert (=> b!1353760 (= lt!597965 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) lt!597967))))

(declare-fun b!1353761 () Bool)

(declare-fun res!899016 () Bool)

(assert (=> b!1353761 (=> (not res!899016) (not e!769225))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1353761 (= res!899016 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45092 a!3742))))))

(declare-fun b!1353762 () Bool)

(declare-fun res!899010 () Bool)

(assert (=> b!1353762 (=> (not res!899010) (not e!769225))))

(assert (=> b!1353762 (= res!899010 (noDuplicate!2206 acc!759))))

(declare-fun b!1353763 () Bool)

(declare-fun lt!597964 () Unit!44387)

(assert (=> b!1353763 (= e!769224 lt!597964)))

(declare-fun lt!597966 () Unit!44387)

(declare-fun lemmaListSubSeqRefl!0 (List!31762) Unit!44387)

(assert (=> b!1353763 (= lt!597966 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!736 (List!31762 List!31762) Bool)

(assert (=> b!1353763 (subseq!736 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92195 List!31762 List!31762 (_ BitVec 32)) Unit!44387)

(assert (=> b!1353763 (= lt!597964 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!753 acc!759 (select (arr!44541 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1353763 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1353764 () Bool)

(assert (=> b!1353764 (= e!769225 e!769227)))

(declare-fun res!899013 () Bool)

(assert (=> b!1353764 (=> (not res!899013) (not e!769227))))

(declare-fun lt!597963 () Bool)

(assert (=> b!1353764 (= res!899013 (and (not (= from!3120 i!1404)) lt!597963))))

(declare-fun lt!597968 () Unit!44387)

(assert (=> b!1353764 (= lt!597968 e!769224)))

(declare-fun c!126814 () Bool)

(assert (=> b!1353764 (= c!126814 lt!597963)))

(assert (=> b!1353764 (= lt!597963 (validKeyInArray!0 (select (arr!44541 a!3742) from!3120)))))

(declare-fun res!899006 () Bool)

(assert (=> start!114090 (=> (not res!899006) (not e!769225))))

(assert (=> start!114090 (= res!899006 (and (bvslt (size!45092 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45092 a!3742))))))

(assert (=> start!114090 e!769225))

(assert (=> start!114090 true))

(declare-fun array_inv!33486 (array!92195) Bool)

(assert (=> start!114090 (array_inv!33486 a!3742)))

(declare-fun b!1353757 () Bool)

(declare-fun res!899014 () Bool)

(assert (=> b!1353757 (=> (not res!899014) (not e!769225))))

(assert (=> b!1353757 (= res!899014 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(assert (= (and start!114090 res!899006) b!1353762))

(assert (= (and b!1353762 res!899010) b!1353756))

(assert (= (and b!1353756 res!899017) b!1353752))

(assert (= (and b!1353752 res!899018) b!1353751))

(assert (= (and b!1353751 res!899009) b!1353757))

(assert (= (and b!1353757 res!899014) b!1353761))

(assert (= (and b!1353761 res!899016) b!1353750))

(assert (= (and b!1353750 res!899011) b!1353758))

(assert (= (and b!1353758 res!899012) b!1353764))

(assert (= (and b!1353764 c!126814) b!1353763))

(assert (= (and b!1353764 (not c!126814)) b!1353755))

(assert (= (and b!1353764 res!899013) b!1353749))

(assert (= (and b!1353749 res!899008) b!1353754))

(assert (= (and b!1353754 res!899015) b!1353759))

(assert (= (and b!1353759 res!899007) b!1353753))

(assert (= (and b!1353753 res!899019) b!1353760))

(declare-fun m!1240309 () Bool)

(assert (=> b!1353749 m!1240309))

(assert (=> b!1353749 m!1240309))

(declare-fun m!1240311 () Bool)

(assert (=> b!1353749 m!1240311))

(declare-fun m!1240313 () Bool)

(assert (=> b!1353754 m!1240313))

(assert (=> b!1353764 m!1240309))

(assert (=> b!1353764 m!1240309))

(declare-fun m!1240315 () Bool)

(assert (=> b!1353764 m!1240315))

(declare-fun m!1240317 () Bool)

(assert (=> b!1353760 m!1240317))

(declare-fun m!1240319 () Bool)

(assert (=> b!1353762 m!1240319))

(declare-fun m!1240321 () Bool)

(assert (=> b!1353757 m!1240321))

(declare-fun m!1240323 () Bool)

(assert (=> b!1353752 m!1240323))

(declare-fun m!1240325 () Bool)

(assert (=> b!1353759 m!1240325))

(declare-fun m!1240327 () Bool)

(assert (=> b!1353750 m!1240327))

(declare-fun m!1240329 () Bool)

(assert (=> start!114090 m!1240329))

(declare-fun m!1240331 () Bool)

(assert (=> b!1353763 m!1240331))

(assert (=> b!1353763 m!1240309))

(assert (=> b!1353763 m!1240311))

(declare-fun m!1240333 () Bool)

(assert (=> b!1353763 m!1240333))

(declare-fun m!1240335 () Bool)

(assert (=> b!1353763 m!1240335))

(assert (=> b!1353763 m!1240309))

(assert (=> b!1353763 m!1240311))

(declare-fun m!1240337 () Bool)

(assert (=> b!1353763 m!1240337))

(declare-fun m!1240339 () Bool)

(assert (=> b!1353753 m!1240339))

(declare-fun m!1240341 () Bool)

(assert (=> b!1353751 m!1240341))

(declare-fun m!1240343 () Bool)

(assert (=> b!1353756 m!1240343))

(push 1)

