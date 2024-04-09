; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114132 () Bool)

(assert start!114132)

(declare-fun b!1354783 () Bool)

(declare-fun e!769542 () Bool)

(declare-fun e!769539 () Bool)

(assert (=> b!1354783 (= e!769542 e!769539)))

(declare-fun res!899918 () Bool)

(assert (=> b!1354783 (=> (not res!899918) (not e!769539))))

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun lt!598341 () Bool)

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1354783 (= res!899918 (and (not (= from!3120 i!1404)) lt!598341))))

(declare-datatypes ((Unit!44450 0))(
  ( (Unit!44451) )
))
(declare-fun lt!598344 () Unit!44450)

(declare-fun e!769541 () Unit!44450)

(assert (=> b!1354783 (= lt!598344 e!769541)))

(declare-fun c!126877 () Bool)

(assert (=> b!1354783 (= c!126877 lt!598341)))

(declare-datatypes ((array!92237 0))(
  ( (array!92238 (arr!44562 (Array (_ BitVec 32) (_ BitVec 64))) (size!45113 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92237)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1354783 (= lt!598341 (validKeyInArray!0 (select (arr!44562 a!3742) from!3120)))))

(declare-fun res!899927 () Bool)

(assert (=> start!114132 (=> (not res!899927) (not e!769542))))

(assert (=> start!114132 (= res!899927 (and (bvslt (size!45113 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45113 a!3742))))))

(assert (=> start!114132 e!769542))

(assert (=> start!114132 true))

(declare-fun array_inv!33507 (array!92237) Bool)

(assert (=> start!114132 (array_inv!33507 a!3742)))

(declare-fun b!1354784 () Bool)

(declare-fun res!899915 () Bool)

(assert (=> b!1354784 (=> (not res!899915) (not e!769542))))

(declare-datatypes ((List!31783 0))(
  ( (Nil!31780) (Cons!31779 (h!32988 (_ BitVec 64)) (t!46448 List!31783)) )
))
(declare-fun acc!759 () List!31783)

(declare-fun arrayNoDuplicates!0 (array!92237 (_ BitVec 32) List!31783) Bool)

(assert (=> b!1354784 (= res!899915 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1354785 () Bool)

(declare-fun res!899921 () Bool)

(declare-fun e!769540 () Bool)

(assert (=> b!1354785 (=> (not res!899921) (not e!769540))))

(declare-fun lt!598345 () List!31783)

(declare-fun contains!9348 (List!31783 (_ BitVec 64)) Bool)

(assert (=> b!1354785 (= res!899921 (not (contains!9348 lt!598345 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1354786 () Bool)

(assert (=> b!1354786 (= e!769539 e!769540)))

(declare-fun res!899923 () Bool)

(assert (=> b!1354786 (=> (not res!899923) (not e!769540))))

(assert (=> b!1354786 (= res!899923 (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!774 (List!31783 (_ BitVec 64)) List!31783)

(assert (=> b!1354786 (= lt!598345 ($colon$colon!774 acc!759 (select (arr!44562 a!3742) from!3120)))))

(declare-fun b!1354787 () Bool)

(declare-fun res!899914 () Bool)

(assert (=> b!1354787 (=> (not res!899914) (not e!769540))))

(declare-fun noDuplicate!2227 (List!31783) Bool)

(assert (=> b!1354787 (= res!899914 (noDuplicate!2227 lt!598345))))

(declare-fun b!1354788 () Bool)

(declare-fun res!899924 () Bool)

(assert (=> b!1354788 (=> (not res!899924) (not e!769540))))

(assert (=> b!1354788 (= res!899924 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) lt!598345))))

(declare-fun b!1354789 () Bool)

(declare-fun res!899926 () Bool)

(assert (=> b!1354789 (=> (not res!899926) (not e!769540))))

(assert (=> b!1354789 (= res!899926 (not (contains!9348 lt!598345 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1354790 () Bool)

(declare-fun res!899917 () Bool)

(assert (=> b!1354790 (=> (not res!899917) (not e!769542))))

(assert (=> b!1354790 (= res!899917 (noDuplicate!2227 acc!759))))

(declare-fun b!1354791 () Bool)

(assert (=> b!1354791 (= e!769540 (not true))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1354791 (arrayNoDuplicates!0 (array!92238 (store (arr!44562 a!3742) i!1404 l!3587) (size!45113 a!3742)) (bvadd #b00000000000000000000000000000001 from!3120) lt!598345)))

(declare-fun lt!598346 () Unit!44450)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!92237 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!31783) Unit!44450)

(assert (=> b!1354791 (= lt!598346 (lemmaPutNonValidKeyPreservesNoDuplicate!0 a!3742 l!3587 i!1404 (bvadd #b00000000000000000000000000000001 from!3120) lt!598345))))

(declare-fun b!1354792 () Bool)

(declare-fun res!899928 () Bool)

(assert (=> b!1354792 (=> (not res!899928) (not e!769542))))

(assert (=> b!1354792 (= res!899928 (not (contains!9348 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1354793 () Bool)

(declare-fun res!899922 () Bool)

(assert (=> b!1354793 (=> (not res!899922) (not e!769542))))

(assert (=> b!1354793 (= res!899922 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1354794 () Bool)

(declare-fun res!899916 () Bool)

(assert (=> b!1354794 (=> (not res!899916) (not e!769542))))

(assert (=> b!1354794 (= res!899916 (not (contains!9348 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1354795 () Bool)

(declare-fun Unit!44452 () Unit!44450)

(assert (=> b!1354795 (= e!769541 Unit!44452)))

(declare-fun b!1354796 () Bool)

(declare-fun res!899925 () Bool)

(assert (=> b!1354796 (=> (not res!899925) (not e!769542))))

(assert (=> b!1354796 (= res!899925 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45113 a!3742)))))

(declare-fun b!1354797 () Bool)

(declare-fun res!899919 () Bool)

(assert (=> b!1354797 (=> (not res!899919) (not e!769542))))

(assert (=> b!1354797 (= res!899919 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45113 a!3742))))))

(declare-fun b!1354798 () Bool)

(declare-fun res!899920 () Bool)

(assert (=> b!1354798 (=> (not res!899920) (not e!769542))))

(assert (=> b!1354798 (= res!899920 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31780))))

(declare-fun b!1354799 () Bool)

(declare-fun lt!598342 () Unit!44450)

(assert (=> b!1354799 (= e!769541 lt!598342)))

(declare-fun lt!598343 () Unit!44450)

(declare-fun lemmaListSubSeqRefl!0 (List!31783) Unit!44450)

(assert (=> b!1354799 (= lt!598343 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!757 (List!31783 List!31783) Bool)

(assert (=> b!1354799 (subseq!757 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92237 List!31783 List!31783 (_ BitVec 32)) Unit!44450)

(assert (=> b!1354799 (= lt!598342 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!774 acc!759 (select (arr!44562 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1354799 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(assert (= (and start!114132 res!899927) b!1354790))

(assert (= (and b!1354790 res!899917) b!1354792))

(assert (= (and b!1354792 res!899928) b!1354794))

(assert (= (and b!1354794 res!899916) b!1354798))

(assert (= (and b!1354798 res!899920) b!1354784))

(assert (= (and b!1354784 res!899915) b!1354797))

(assert (= (and b!1354797 res!899919) b!1354793))

(assert (= (and b!1354793 res!899922) b!1354796))

(assert (= (and b!1354796 res!899925) b!1354783))

(assert (= (and b!1354783 c!126877) b!1354799))

(assert (= (and b!1354783 (not c!126877)) b!1354795))

(assert (= (and b!1354783 res!899918) b!1354786))

(assert (= (and b!1354786 res!899923) b!1354787))

(assert (= (and b!1354787 res!899914) b!1354785))

(assert (= (and b!1354785 res!899921) b!1354789))

(assert (= (and b!1354789 res!899926) b!1354788))

(assert (= (and b!1354788 res!899924) b!1354791))

(declare-fun m!1241113 () Bool)

(assert (=> b!1354788 m!1241113))

(declare-fun m!1241115 () Bool)

(assert (=> b!1354786 m!1241115))

(assert (=> b!1354786 m!1241115))

(declare-fun m!1241117 () Bool)

(assert (=> b!1354786 m!1241117))

(declare-fun m!1241119 () Bool)

(assert (=> b!1354792 m!1241119))

(declare-fun m!1241121 () Bool)

(assert (=> b!1354794 m!1241121))

(declare-fun m!1241123 () Bool)

(assert (=> b!1354791 m!1241123))

(declare-fun m!1241125 () Bool)

(assert (=> b!1354791 m!1241125))

(declare-fun m!1241127 () Bool)

(assert (=> b!1354791 m!1241127))

(declare-fun m!1241129 () Bool)

(assert (=> b!1354789 m!1241129))

(declare-fun m!1241131 () Bool)

(assert (=> start!114132 m!1241131))

(declare-fun m!1241133 () Bool)

(assert (=> b!1354790 m!1241133))

(declare-fun m!1241135 () Bool)

(assert (=> b!1354793 m!1241135))

(declare-fun m!1241137 () Bool)

(assert (=> b!1354799 m!1241137))

(assert (=> b!1354799 m!1241115))

(assert (=> b!1354799 m!1241117))

(declare-fun m!1241139 () Bool)

(assert (=> b!1354799 m!1241139))

(declare-fun m!1241141 () Bool)

(assert (=> b!1354799 m!1241141))

(assert (=> b!1354799 m!1241115))

(assert (=> b!1354799 m!1241117))

(declare-fun m!1241143 () Bool)

(assert (=> b!1354799 m!1241143))

(declare-fun m!1241145 () Bool)

(assert (=> b!1354784 m!1241145))

(declare-fun m!1241147 () Bool)

(assert (=> b!1354787 m!1241147))

(declare-fun m!1241149 () Bool)

(assert (=> b!1354785 m!1241149))

(assert (=> b!1354783 m!1241115))

(assert (=> b!1354783 m!1241115))

(declare-fun m!1241151 () Bool)

(assert (=> b!1354783 m!1241151))

(declare-fun m!1241153 () Bool)

(assert (=> b!1354798 m!1241153))

(push 1)

