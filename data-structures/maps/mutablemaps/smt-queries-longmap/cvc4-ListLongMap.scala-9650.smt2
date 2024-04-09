; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114078 () Bool)

(assert start!114078)

(declare-fun b!1353461 () Bool)

(declare-fun e!769138 () Bool)

(declare-fun e!769134 () Bool)

(assert (=> b!1353461 (= e!769138 e!769134)))

(declare-fun res!898762 () Bool)

(assert (=> b!1353461 (=> (not res!898762) (not e!769134))))

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> b!1353461 (= res!898762 (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000))))

(declare-datatypes ((List!31756 0))(
  ( (Nil!31753) (Cons!31752 (h!32961 (_ BitVec 64)) (t!46421 List!31756)) )
))
(declare-fun lt!597855 () List!31756)

(declare-fun acc!759 () List!31756)

(declare-datatypes ((array!92183 0))(
  ( (array!92184 (arr!44535 (Array (_ BitVec 32) (_ BitVec 64))) (size!45086 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92183)

(declare-fun $colon$colon!747 (List!31756 (_ BitVec 64)) List!31756)

(assert (=> b!1353461 (= lt!597855 ($colon$colon!747 acc!759 (select (arr!44535 a!3742) from!3120)))))

(declare-fun b!1353462 () Bool)

(declare-fun res!898755 () Bool)

(declare-fun e!769136 () Bool)

(assert (=> b!1353462 (=> (not res!898755) (not e!769136))))

(declare-fun arrayNoDuplicates!0 (array!92183 (_ BitVec 32) List!31756) Bool)

(assert (=> b!1353462 (= res!898755 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1353463 () Bool)

(assert (=> b!1353463 (= e!769134 false)))

(declare-fun lt!597859 () Bool)

(assert (=> b!1353463 (= lt!597859 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) lt!597855))))

(declare-fun b!1353464 () Bool)

(declare-fun res!898757 () Bool)

(assert (=> b!1353464 (=> (not res!898757) (not e!769134))))

(declare-fun contains!9321 (List!31756 (_ BitVec 64)) Bool)

(assert (=> b!1353464 (= res!898757 (not (contains!9321 lt!597855 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1353465 () Bool)

(declare-fun res!898763 () Bool)

(assert (=> b!1353465 (=> (not res!898763) (not e!769136))))

(assert (=> b!1353465 (= res!898763 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45086 a!3742)))))

(declare-fun b!1353467 () Bool)

(declare-fun res!898754 () Bool)

(assert (=> b!1353467 (=> (not res!898754) (not e!769134))))

(declare-fun noDuplicate!2200 (List!31756) Bool)

(assert (=> b!1353467 (= res!898754 (noDuplicate!2200 lt!597855))))

(declare-fun b!1353468 () Bool)

(declare-datatypes ((Unit!44369 0))(
  ( (Unit!44370) )
))
(declare-fun e!769137 () Unit!44369)

(declare-fun Unit!44371 () Unit!44369)

(assert (=> b!1353468 (= e!769137 Unit!44371)))

(declare-fun b!1353469 () Bool)

(declare-fun res!898764 () Bool)

(assert (=> b!1353469 (=> (not res!898764) (not e!769136))))

(assert (=> b!1353469 (= res!898764 (not (contains!9321 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1353470 () Bool)

(declare-fun lt!597857 () Unit!44369)

(assert (=> b!1353470 (= e!769137 lt!597857)))

(declare-fun lt!597860 () Unit!44369)

(declare-fun lemmaListSubSeqRefl!0 (List!31756) Unit!44369)

(assert (=> b!1353470 (= lt!597860 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!730 (List!31756 List!31756) Bool)

(assert (=> b!1353470 (subseq!730 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92183 List!31756 List!31756 (_ BitVec 32)) Unit!44369)

(assert (=> b!1353470 (= lt!597857 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!747 acc!759 (select (arr!44535 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1353470 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1353471 () Bool)

(declare-fun res!898761 () Bool)

(assert (=> b!1353471 (=> (not res!898761) (not e!769136))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1353471 (= res!898761 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1353472 () Bool)

(declare-fun res!898766 () Bool)

(assert (=> b!1353472 (=> (not res!898766) (not e!769136))))

(assert (=> b!1353472 (= res!898766 (not (contains!9321 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1353466 () Bool)

(declare-fun res!898759 () Bool)

(assert (=> b!1353466 (=> (not res!898759) (not e!769136))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1353466 (= res!898759 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45086 a!3742))))))

(declare-fun res!898758 () Bool)

(assert (=> start!114078 (=> (not res!898758) (not e!769136))))

(assert (=> start!114078 (= res!898758 (and (bvslt (size!45086 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45086 a!3742))))))

(assert (=> start!114078 e!769136))

(assert (=> start!114078 true))

(declare-fun array_inv!33480 (array!92183) Bool)

(assert (=> start!114078 (array_inv!33480 a!3742)))

(declare-fun b!1353473 () Bool)

(declare-fun res!898760 () Bool)

(assert (=> b!1353473 (=> (not res!898760) (not e!769134))))

(assert (=> b!1353473 (= res!898760 (not (contains!9321 lt!597855 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1353474 () Bool)

(declare-fun res!898756 () Bool)

(assert (=> b!1353474 (=> (not res!898756) (not e!769136))))

(assert (=> b!1353474 (= res!898756 (noDuplicate!2200 acc!759))))

(declare-fun b!1353475 () Bool)

(declare-fun res!898765 () Bool)

(assert (=> b!1353475 (=> (not res!898765) (not e!769136))))

(assert (=> b!1353475 (= res!898765 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31753))))

(declare-fun b!1353476 () Bool)

(assert (=> b!1353476 (= e!769136 e!769138)))

(declare-fun res!898767 () Bool)

(assert (=> b!1353476 (=> (not res!898767) (not e!769138))))

(declare-fun lt!597856 () Bool)

(assert (=> b!1353476 (= res!898767 (and (not (= from!3120 i!1404)) lt!597856))))

(declare-fun lt!597858 () Unit!44369)

(assert (=> b!1353476 (= lt!597858 e!769137)))

(declare-fun c!126796 () Bool)

(assert (=> b!1353476 (= c!126796 lt!597856)))

(assert (=> b!1353476 (= lt!597856 (validKeyInArray!0 (select (arr!44535 a!3742) from!3120)))))

(assert (= (and start!114078 res!898758) b!1353474))

(assert (= (and b!1353474 res!898756) b!1353472))

(assert (= (and b!1353472 res!898766) b!1353469))

(assert (= (and b!1353469 res!898764) b!1353475))

(assert (= (and b!1353475 res!898765) b!1353462))

(assert (= (and b!1353462 res!898755) b!1353466))

(assert (= (and b!1353466 res!898759) b!1353471))

(assert (= (and b!1353471 res!898761) b!1353465))

(assert (= (and b!1353465 res!898763) b!1353476))

(assert (= (and b!1353476 c!126796) b!1353470))

(assert (= (and b!1353476 (not c!126796)) b!1353468))

(assert (= (and b!1353476 res!898767) b!1353461))

(assert (= (and b!1353461 res!898762) b!1353467))

(assert (= (and b!1353467 res!898754) b!1353473))

(assert (= (and b!1353473 res!898760) b!1353464))

(assert (= (and b!1353464 res!898757) b!1353463))

(declare-fun m!1240093 () Bool)

(assert (=> b!1353464 m!1240093))

(declare-fun m!1240095 () Bool)

(assert (=> b!1353469 m!1240095))

(declare-fun m!1240097 () Bool)

(assert (=> b!1353476 m!1240097))

(assert (=> b!1353476 m!1240097))

(declare-fun m!1240099 () Bool)

(assert (=> b!1353476 m!1240099))

(declare-fun m!1240101 () Bool)

(assert (=> b!1353462 m!1240101))

(declare-fun m!1240103 () Bool)

(assert (=> b!1353474 m!1240103))

(declare-fun m!1240105 () Bool)

(assert (=> b!1353463 m!1240105))

(declare-fun m!1240107 () Bool)

(assert (=> b!1353472 m!1240107))

(declare-fun m!1240109 () Bool)

(assert (=> b!1353473 m!1240109))

(declare-fun m!1240111 () Bool)

(assert (=> b!1353471 m!1240111))

(assert (=> b!1353461 m!1240097))

(assert (=> b!1353461 m!1240097))

(declare-fun m!1240113 () Bool)

(assert (=> b!1353461 m!1240113))

(declare-fun m!1240115 () Bool)

(assert (=> start!114078 m!1240115))

(declare-fun m!1240117 () Bool)

(assert (=> b!1353467 m!1240117))

(declare-fun m!1240119 () Bool)

(assert (=> b!1353475 m!1240119))

(declare-fun m!1240121 () Bool)

(assert (=> b!1353470 m!1240121))

(assert (=> b!1353470 m!1240097))

(assert (=> b!1353470 m!1240113))

(declare-fun m!1240123 () Bool)

(assert (=> b!1353470 m!1240123))

(declare-fun m!1240125 () Bool)

(assert (=> b!1353470 m!1240125))

(assert (=> b!1353470 m!1240097))

(assert (=> b!1353470 m!1240113))

(declare-fun m!1240127 () Bool)

(assert (=> b!1353470 m!1240127))

(push 1)

