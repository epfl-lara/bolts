; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114620 () Bool)

(assert start!114620)

(declare-fun b!1359545 () Bool)

(declare-fun res!904110 () Bool)

(declare-fun e!771445 () Bool)

(assert (=> b!1359545 (=> (not res!904110) (not e!771445))))

(declare-fun from!3120 () (_ BitVec 32))

(declare-datatypes ((array!92488 0))(
  ( (array!92489 (arr!44680 (Array (_ BitVec 32) (_ BitVec 64))) (size!45231 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92488)

(assert (=> b!1359545 (= res!904110 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45231 a!3742)))))

(declare-fun b!1359546 () Bool)

(declare-fun res!904106 () Bool)

(assert (=> b!1359546 (=> (not res!904106) (not e!771445))))

(declare-datatypes ((List!31901 0))(
  ( (Nil!31898) (Cons!31897 (h!33106 (_ BitVec 64)) (t!46581 List!31901)) )
))
(declare-fun acc!759 () List!31901)

(declare-fun noDuplicate!2345 (List!31901) Bool)

(assert (=> b!1359546 (= res!904106 (noDuplicate!2345 acc!759))))

(declare-fun b!1359548 () Bool)

(declare-fun res!904111 () Bool)

(assert (=> b!1359548 (=> (not res!904111) (not e!771445))))

(declare-fun arrayNoDuplicates!0 (array!92488 (_ BitVec 32) List!31901) Bool)

(assert (=> b!1359548 (= res!904111 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31898))))

(declare-fun b!1359549 () Bool)

(declare-fun res!904116 () Bool)

(assert (=> b!1359549 (=> (not res!904116) (not e!771445))))

(assert (=> b!1359549 (= res!904116 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1359550 () Bool)

(declare-fun res!904115 () Bool)

(assert (=> b!1359550 (=> (not res!904115) (not e!771445))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1359550 (= res!904115 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1359551 () Bool)

(declare-fun res!904112 () Bool)

(assert (=> b!1359551 (=> (not res!904112) (not e!771445))))

(declare-fun contains!9466 (List!31901 (_ BitVec 64)) Bool)

(assert (=> b!1359551 (= res!904112 (not (contains!9466 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1359552 () Bool)

(declare-fun e!771442 () Bool)

(assert (=> b!1359552 (= e!771442 (not true))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1359552 (arrayNoDuplicates!0 (array!92489 (store (arr!44680 a!3742) i!1404 l!3587) (size!45231 a!3742)) (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-datatypes ((Unit!44723 0))(
  ( (Unit!44724) )
))
(declare-fun lt!599595 () Unit!44723)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!92488 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!31901) Unit!44723)

(assert (=> b!1359552 (= lt!599595 (lemmaPutNonValidKeyPreservesNoDuplicate!0 a!3742 l!3587 i!1404 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1359553 () Bool)

(assert (=> b!1359553 (= e!771445 e!771442)))

(declare-fun res!904114 () Bool)

(assert (=> b!1359553 (=> (not res!904114) (not e!771442))))

(assert (=> b!1359553 (= res!904114 (and (= from!3120 i!1404) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-fun lt!599594 () Unit!44723)

(declare-fun e!771443 () Unit!44723)

(assert (=> b!1359553 (= lt!599594 e!771443)))

(declare-fun c!127162 () Bool)

(assert (=> b!1359553 (= c!127162 (validKeyInArray!0 (select (arr!44680 a!3742) from!3120)))))

(declare-fun b!1359554 () Bool)

(declare-fun lt!599597 () Unit!44723)

(assert (=> b!1359554 (= e!771443 lt!599597)))

(declare-fun lt!599596 () Unit!44723)

(declare-fun lemmaListSubSeqRefl!0 (List!31901) Unit!44723)

(assert (=> b!1359554 (= lt!599596 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!857 (List!31901 List!31901) Bool)

(assert (=> b!1359554 (subseq!857 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92488 List!31901 List!31901 (_ BitVec 32)) Unit!44723)

(declare-fun $colon$colon!862 (List!31901 (_ BitVec 64)) List!31901)

(assert (=> b!1359554 (= lt!599597 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!862 acc!759 (select (arr!44680 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1359554 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1359555 () Bool)

(declare-fun Unit!44725 () Unit!44723)

(assert (=> b!1359555 (= e!771443 Unit!44725)))

(declare-fun b!1359556 () Bool)

(declare-fun res!904113 () Bool)

(assert (=> b!1359556 (=> (not res!904113) (not e!771445))))

(assert (=> b!1359556 (= res!904113 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45231 a!3742))))))

(declare-fun b!1359557 () Bool)

(declare-fun res!904107 () Bool)

(assert (=> b!1359557 (=> (not res!904107) (not e!771445))))

(assert (=> b!1359557 (= res!904107 (not (contains!9466 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1359547 () Bool)

(declare-fun res!904109 () Bool)

(assert (=> b!1359547 (=> (not res!904109) (not e!771442))))

(assert (=> b!1359547 (= res!904109 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun res!904108 () Bool)

(assert (=> start!114620 (=> (not res!904108) (not e!771445))))

(assert (=> start!114620 (= res!904108 (and (bvslt (size!45231 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45231 a!3742))))))

(assert (=> start!114620 e!771445))

(assert (=> start!114620 true))

(declare-fun array_inv!33625 (array!92488) Bool)

(assert (=> start!114620 (array_inv!33625 a!3742)))

(assert (= (and start!114620 res!904108) b!1359546))

(assert (= (and b!1359546 res!904106) b!1359557))

(assert (= (and b!1359557 res!904107) b!1359551))

(assert (= (and b!1359551 res!904112) b!1359548))

(assert (= (and b!1359548 res!904111) b!1359549))

(assert (= (and b!1359549 res!904116) b!1359556))

(assert (= (and b!1359556 res!904113) b!1359550))

(assert (= (and b!1359550 res!904115) b!1359545))

(assert (= (and b!1359545 res!904110) b!1359553))

(assert (= (and b!1359553 c!127162) b!1359554))

(assert (= (and b!1359553 (not c!127162)) b!1359555))

(assert (= (and b!1359553 res!904114) b!1359547))

(assert (= (and b!1359547 res!904109) b!1359552))

(declare-fun m!1244941 () Bool)

(assert (=> b!1359557 m!1244941))

(declare-fun m!1244943 () Bool)

(assert (=> b!1359547 m!1244943))

(declare-fun m!1244945 () Bool)

(assert (=> b!1359550 m!1244945))

(declare-fun m!1244947 () Bool)

(assert (=> b!1359549 m!1244947))

(declare-fun m!1244949 () Bool)

(assert (=> b!1359552 m!1244949))

(declare-fun m!1244951 () Bool)

(assert (=> b!1359552 m!1244951))

(declare-fun m!1244953 () Bool)

(assert (=> b!1359552 m!1244953))

(declare-fun m!1244955 () Bool)

(assert (=> b!1359546 m!1244955))

(declare-fun m!1244957 () Bool)

(assert (=> b!1359548 m!1244957))

(declare-fun m!1244959 () Bool)

(assert (=> b!1359554 m!1244959))

(declare-fun m!1244961 () Bool)

(assert (=> b!1359554 m!1244961))

(declare-fun m!1244963 () Bool)

(assert (=> b!1359554 m!1244963))

(declare-fun m!1244965 () Bool)

(assert (=> b!1359554 m!1244965))

(assert (=> b!1359554 m!1244943))

(assert (=> b!1359554 m!1244961))

(assert (=> b!1359554 m!1244963))

(declare-fun m!1244967 () Bool)

(assert (=> b!1359554 m!1244967))

(declare-fun m!1244969 () Bool)

(assert (=> b!1359551 m!1244969))

(assert (=> b!1359553 m!1244961))

(assert (=> b!1359553 m!1244961))

(declare-fun m!1244971 () Bool)

(assert (=> b!1359553 m!1244971))

(declare-fun m!1244973 () Bool)

(assert (=> start!114620 m!1244973))

(push 1)

