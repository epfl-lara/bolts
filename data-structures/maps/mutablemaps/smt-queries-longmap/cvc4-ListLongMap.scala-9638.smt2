; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114006 () Bool)

(assert start!114006)

(declare-fun b!1352025 () Bool)

(declare-fun res!897538 () Bool)

(declare-fun e!768677 () Bool)

(assert (=> b!1352025 (=> (not res!897538) (not e!768677))))

(declare-datatypes ((List!31720 0))(
  ( (Nil!31717) (Cons!31716 (h!32925 (_ BitVec 64)) (t!46385 List!31720)) )
))
(declare-fun acc!759 () List!31720)

(declare-fun noDuplicate!2164 (List!31720) Bool)

(assert (=> b!1352025 (= res!897538 (noDuplicate!2164 acc!759))))

(declare-fun b!1352026 () Bool)

(declare-fun res!897535 () Bool)

(assert (=> b!1352026 (=> (not res!897535) (not e!768677))))

(declare-fun contains!9285 (List!31720 (_ BitVec 64)) Bool)

(assert (=> b!1352026 (= res!897535 (not (contains!9285 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1352027 () Bool)

(declare-fun e!768679 () Bool)

(assert (=> b!1352027 (= e!768677 e!768679)))

(declare-fun res!897541 () Bool)

(assert (=> b!1352027 (=> (not res!897541) (not e!768679))))

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1352027 (= res!897541 (and (= from!3120 i!1404) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-datatypes ((Unit!44261 0))(
  ( (Unit!44262) )
))
(declare-fun lt!597374 () Unit!44261)

(declare-fun e!768678 () Unit!44261)

(assert (=> b!1352027 (= lt!597374 e!768678)))

(declare-fun c!126688 () Bool)

(declare-datatypes ((array!92111 0))(
  ( (array!92112 (arr!44499 (Array (_ BitVec 32) (_ BitVec 64))) (size!45050 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92111)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1352027 (= c!126688 (validKeyInArray!0 (select (arr!44499 a!3742) from!3120)))))

(declare-fun b!1352028 () Bool)

(declare-fun res!897534 () Bool)

(assert (=> b!1352028 (=> (not res!897534) (not e!768677))))

(assert (=> b!1352028 (= res!897534 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45050 a!3742)))))

(declare-fun b!1352029 () Bool)

(declare-fun res!897540 () Bool)

(assert (=> b!1352029 (=> (not res!897540) (not e!768677))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1352029 (= res!897540 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1352030 () Bool)

(declare-fun Unit!44263 () Unit!44261)

(assert (=> b!1352030 (= e!768678 Unit!44263)))

(declare-fun b!1352031 () Bool)

(declare-fun res!897542 () Bool)

(assert (=> b!1352031 (=> (not res!897542) (not e!768677))))

(assert (=> b!1352031 (= res!897542 (not (contains!9285 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1352032 () Bool)

(assert (=> b!1352032 (= e!768679 false)))

(declare-fun lt!597372 () Bool)

(declare-fun arrayNoDuplicates!0 (array!92111 (_ BitVec 32) List!31720) Bool)

(assert (=> b!1352032 (= lt!597372 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1352033 () Bool)

(declare-fun res!897543 () Bool)

(assert (=> b!1352033 (=> (not res!897543) (not e!768677))))

(assert (=> b!1352033 (= res!897543 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45050 a!3742))))))

(declare-fun b!1352034 () Bool)

(declare-fun res!897539 () Bool)

(assert (=> b!1352034 (=> (not res!897539) (not e!768677))))

(assert (=> b!1352034 (= res!897539 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun res!897536 () Bool)

(assert (=> start!114006 (=> (not res!897536) (not e!768677))))

(assert (=> start!114006 (= res!897536 (and (bvslt (size!45050 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45050 a!3742))))))

(assert (=> start!114006 e!768677))

(assert (=> start!114006 true))

(declare-fun array_inv!33444 (array!92111) Bool)

(assert (=> start!114006 (array_inv!33444 a!3742)))

(declare-fun b!1352035 () Bool)

(declare-fun lt!597371 () Unit!44261)

(assert (=> b!1352035 (= e!768678 lt!597371)))

(declare-fun lt!597373 () Unit!44261)

(declare-fun lemmaListSubSeqRefl!0 (List!31720) Unit!44261)

(assert (=> b!1352035 (= lt!597373 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!694 (List!31720 List!31720) Bool)

(assert (=> b!1352035 (subseq!694 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92111 List!31720 List!31720 (_ BitVec 32)) Unit!44261)

(declare-fun $colon$colon!711 (List!31720 (_ BitVec 64)) List!31720)

(assert (=> b!1352035 (= lt!597371 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!711 acc!759 (select (arr!44499 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1352035 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1352036 () Bool)

(declare-fun res!897537 () Bool)

(assert (=> b!1352036 (=> (not res!897537) (not e!768677))))

(assert (=> b!1352036 (= res!897537 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31717))))

(assert (= (and start!114006 res!897536) b!1352025))

(assert (= (and b!1352025 res!897538) b!1352026))

(assert (= (and b!1352026 res!897535) b!1352031))

(assert (= (and b!1352031 res!897542) b!1352036))

(assert (= (and b!1352036 res!897537) b!1352034))

(assert (= (and b!1352034 res!897539) b!1352033))

(assert (= (and b!1352033 res!897543) b!1352029))

(assert (= (and b!1352029 res!897540) b!1352028))

(assert (= (and b!1352028 res!897534) b!1352027))

(assert (= (and b!1352027 c!126688) b!1352035))

(assert (= (and b!1352027 (not c!126688)) b!1352030))

(assert (= (and b!1352027 res!897541) b!1352032))

(declare-fun m!1238949 () Bool)

(assert (=> b!1352032 m!1238949))

(declare-fun m!1238951 () Bool)

(assert (=> b!1352025 m!1238951))

(declare-fun m!1238953 () Bool)

(assert (=> b!1352035 m!1238953))

(declare-fun m!1238955 () Bool)

(assert (=> b!1352035 m!1238955))

(declare-fun m!1238957 () Bool)

(assert (=> b!1352035 m!1238957))

(declare-fun m!1238959 () Bool)

(assert (=> b!1352035 m!1238959))

(assert (=> b!1352035 m!1238949))

(assert (=> b!1352035 m!1238955))

(assert (=> b!1352035 m!1238957))

(declare-fun m!1238961 () Bool)

(assert (=> b!1352035 m!1238961))

(declare-fun m!1238963 () Bool)

(assert (=> start!114006 m!1238963))

(declare-fun m!1238965 () Bool)

(assert (=> b!1352029 m!1238965))

(declare-fun m!1238967 () Bool)

(assert (=> b!1352031 m!1238967))

(assert (=> b!1352027 m!1238955))

(assert (=> b!1352027 m!1238955))

(declare-fun m!1238969 () Bool)

(assert (=> b!1352027 m!1238969))

(declare-fun m!1238971 () Bool)

(assert (=> b!1352034 m!1238971))

(declare-fun m!1238973 () Bool)

(assert (=> b!1352026 m!1238973))

(declare-fun m!1238975 () Bool)

(assert (=> b!1352036 m!1238975))

(push 1)

(assert (not b!1352029))

(assert (not b!1352025))

