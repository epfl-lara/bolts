; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113982 () Bool)

(assert start!113982)

(declare-fun b!1351590 () Bool)

(declare-fun res!897179 () Bool)

(declare-fun e!768534 () Bool)

(assert (=> b!1351590 (=> (not res!897179) (not e!768534))))

(declare-datatypes ((List!31708 0))(
  ( (Nil!31705) (Cons!31704 (h!32913 (_ BitVec 64)) (t!46373 List!31708)) )
))
(declare-fun acc!759 () List!31708)

(declare-datatypes ((array!92087 0))(
  ( (array!92088 (arr!44487 (Array (_ BitVec 32) (_ BitVec 64))) (size!45038 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92087)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!92087 (_ BitVec 32) List!31708) Bool)

(assert (=> b!1351590 (= res!897179 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1351591 () Bool)

(declare-fun res!897171 () Bool)

(assert (=> b!1351591 (=> (not res!897171) (not e!768534))))

(declare-fun contains!9273 (List!31708 (_ BitVec 64)) Bool)

(assert (=> b!1351591 (= res!897171 (not (contains!9273 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1351592 () Bool)

(declare-fun res!897176 () Bool)

(declare-fun e!768535 () Bool)

(assert (=> b!1351592 (=> res!897176 e!768535)))

(declare-fun lt!597230 () List!31708)

(declare-fun subseq!682 (List!31708 List!31708) Bool)

(assert (=> b!1351592 (= res!897176 (not (subseq!682 acc!759 lt!597230)))))

(declare-fun b!1351593 () Bool)

(declare-fun res!897178 () Bool)

(assert (=> b!1351593 (=> (not res!897178) (not e!768534))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1351593 (= res!897178 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1351594 () Bool)

(declare-fun res!897181 () Bool)

(assert (=> b!1351594 (=> (not res!897181) (not e!768534))))

(assert (=> b!1351594 (= res!897181 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31705))))

(declare-fun b!1351595 () Bool)

(declare-fun res!897173 () Bool)

(assert (=> b!1351595 (=> (not res!897173) (not e!768534))))

(assert (=> b!1351595 (= res!897173 (not (contains!9273 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1351596 () Bool)

(declare-fun res!897170 () Bool)

(assert (=> b!1351596 (=> res!897170 e!768535)))

(assert (=> b!1351596 (= res!897170 (contains!9273 lt!597230 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!897174 () Bool)

(assert (=> start!113982 (=> (not res!897174) (not e!768534))))

(assert (=> start!113982 (= res!897174 (and (bvslt (size!45038 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45038 a!3742))))))

(assert (=> start!113982 e!768534))

(assert (=> start!113982 true))

(declare-fun array_inv!33432 (array!92087) Bool)

(assert (=> start!113982 (array_inv!33432 a!3742)))

(declare-fun b!1351597 () Bool)

(declare-fun res!897183 () Bool)

(assert (=> b!1351597 (=> res!897183 e!768535)))

(assert (=> b!1351597 (= res!897183 (contains!9273 lt!597230 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1351598 () Bool)

(declare-fun res!897180 () Bool)

(assert (=> b!1351598 (=> (not res!897180) (not e!768534))))

(assert (=> b!1351598 (= res!897180 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45038 a!3742)))))

(declare-fun b!1351599 () Bool)

(assert (=> b!1351599 (= e!768535 true)))

(declare-fun lt!597228 () Bool)

(assert (=> b!1351599 (= lt!597228 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) lt!597230))))

(declare-datatypes ((Unit!44226 0))(
  ( (Unit!44227) )
))
(declare-fun lt!597227 () Unit!44226)

(declare-fun noDuplicateSubseq!133 (List!31708 List!31708) Unit!44226)

(assert (=> b!1351599 (= lt!597227 (noDuplicateSubseq!133 acc!759 lt!597230))))

(declare-fun b!1351600 () Bool)

(declare-fun res!897182 () Bool)

(assert (=> b!1351600 (=> (not res!897182) (not e!768534))))

(declare-fun noDuplicate!2152 (List!31708) Bool)

(assert (=> b!1351600 (= res!897182 (noDuplicate!2152 acc!759))))

(declare-fun b!1351601 () Bool)

(declare-fun res!897175 () Bool)

(assert (=> b!1351601 (=> (not res!897175) (not e!768534))))

(assert (=> b!1351601 (= res!897175 (validKeyInArray!0 (select (arr!44487 a!3742) from!3120)))))

(declare-fun b!1351602 () Bool)

(declare-fun res!897172 () Bool)

(assert (=> b!1351602 (=> (not res!897172) (not e!768534))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1351602 (= res!897172 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45038 a!3742))))))

(declare-fun b!1351603 () Bool)

(assert (=> b!1351603 (= e!768534 (not e!768535))))

(declare-fun res!897177 () Bool)

(assert (=> b!1351603 (=> res!897177 e!768535)))

(assert (=> b!1351603 (= res!897177 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!699 (List!31708 (_ BitVec 64)) List!31708)

(assert (=> b!1351603 (= lt!597230 ($colon$colon!699 acc!759 (select (arr!44487 a!3742) from!3120)))))

(assert (=> b!1351603 (subseq!682 acc!759 acc!759)))

(declare-fun lt!597229 () Unit!44226)

(declare-fun lemmaListSubSeqRefl!0 (List!31708) Unit!44226)

(assert (=> b!1351603 (= lt!597229 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun b!1351604 () Bool)

(declare-fun res!897169 () Bool)

(assert (=> b!1351604 (=> res!897169 e!768535)))

(assert (=> b!1351604 (= res!897169 (not (noDuplicate!2152 lt!597230)))))

(assert (= (and start!113982 res!897174) b!1351600))

(assert (= (and b!1351600 res!897182) b!1351591))

(assert (= (and b!1351591 res!897171) b!1351595))

(assert (= (and b!1351595 res!897173) b!1351594))

(assert (= (and b!1351594 res!897181) b!1351590))

(assert (= (and b!1351590 res!897179) b!1351602))

(assert (= (and b!1351602 res!897172) b!1351593))

(assert (= (and b!1351593 res!897178) b!1351598))

(assert (= (and b!1351598 res!897180) b!1351601))

(assert (= (and b!1351601 res!897175) b!1351603))

(assert (= (and b!1351603 (not res!897177)) b!1351604))

(assert (= (and b!1351604 (not res!897169)) b!1351596))

(assert (= (and b!1351596 (not res!897170)) b!1351597))

(assert (= (and b!1351597 (not res!897183)) b!1351592))

(assert (= (and b!1351592 (not res!897176)) b!1351599))

(declare-fun m!1238605 () Bool)

(assert (=> b!1351590 m!1238605))

(declare-fun m!1238607 () Bool)

(assert (=> b!1351599 m!1238607))

(declare-fun m!1238609 () Bool)

(assert (=> b!1351599 m!1238609))

(declare-fun m!1238611 () Bool)

(assert (=> b!1351596 m!1238611))

(declare-fun m!1238613 () Bool)

(assert (=> b!1351603 m!1238613))

(assert (=> b!1351603 m!1238613))

(declare-fun m!1238615 () Bool)

(assert (=> b!1351603 m!1238615))

(declare-fun m!1238617 () Bool)

(assert (=> b!1351603 m!1238617))

(declare-fun m!1238619 () Bool)

(assert (=> b!1351603 m!1238619))

(declare-fun m!1238621 () Bool)

(assert (=> b!1351593 m!1238621))

(declare-fun m!1238623 () Bool)

(assert (=> b!1351600 m!1238623))

(declare-fun m!1238625 () Bool)

(assert (=> b!1351591 m!1238625))

(declare-fun m!1238627 () Bool)

(assert (=> start!113982 m!1238627))

(declare-fun m!1238629 () Bool)

(assert (=> b!1351597 m!1238629))

(declare-fun m!1238631 () Bool)

(assert (=> b!1351604 m!1238631))

(declare-fun m!1238633 () Bool)

(assert (=> b!1351595 m!1238633))

(declare-fun m!1238635 () Bool)

(assert (=> b!1351594 m!1238635))

(declare-fun m!1238637 () Bool)

(assert (=> b!1351592 m!1238637))

(assert (=> b!1351601 m!1238613))

(assert (=> b!1351601 m!1238613))

(declare-fun m!1238639 () Bool)

(assert (=> b!1351601 m!1238639))

(push 1)

(assert (not b!1351596))

(assert (not b!1351593))

(assert (not b!1351592))

(assert (not b!1351604))

(assert (not b!1351600))

(assert (not b!1351595))

(assert (not b!1351603))

(assert (not b!1351601))

(assert (not b!1351591))

(assert (not b!1351594))

