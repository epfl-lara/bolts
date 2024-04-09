; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114044 () Bool)

(assert start!114044)

(declare-fun b!1352720 () Bool)

(declare-datatypes ((Unit!44318 0))(
  ( (Unit!44319) )
))
(declare-fun e!768906 () Unit!44318)

(declare-fun lt!597600 () Unit!44318)

(assert (=> b!1352720 (= e!768906 lt!597600)))

(declare-fun lt!597602 () Unit!44318)

(declare-datatypes ((List!31739 0))(
  ( (Nil!31736) (Cons!31735 (h!32944 (_ BitVec 64)) (t!46404 List!31739)) )
))
(declare-fun acc!759 () List!31739)

(declare-fun lemmaListSubSeqRefl!0 (List!31739) Unit!44318)

(assert (=> b!1352720 (= lt!597602 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!713 (List!31739 List!31739) Bool)

(assert (=> b!1352720 (subseq!713 acc!759 acc!759)))

(declare-datatypes ((array!92149 0))(
  ( (array!92150 (arr!44518 (Array (_ BitVec 32) (_ BitVec 64))) (size!45069 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92149)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92149 List!31739 List!31739 (_ BitVec 32)) Unit!44318)

(declare-fun $colon$colon!730 (List!31739 (_ BitVec 64)) List!31739)

(assert (=> b!1352720 (= lt!597600 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!730 acc!759 (select (arr!44518 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(declare-fun arrayNoDuplicates!0 (array!92149 (_ BitVec 32) List!31739) Bool)

(assert (=> b!1352720 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1352721 () Bool)

(declare-fun res!898122 () Bool)

(declare-fun e!768904 () Bool)

(assert (=> b!1352721 (=> (not res!898122) (not e!768904))))

(assert (=> b!1352721 (= res!898122 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45069 a!3742)))))

(declare-fun b!1352722 () Bool)

(declare-fun Unit!44320 () Unit!44318)

(assert (=> b!1352722 (= e!768906 Unit!44320)))

(declare-fun b!1352723 () Bool)

(declare-fun res!898115 () Bool)

(assert (=> b!1352723 (=> (not res!898115) (not e!768904))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1352723 (= res!898115 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1352724 () Bool)

(declare-fun res!898120 () Bool)

(assert (=> b!1352724 (=> (not res!898120) (not e!768904))))

(declare-fun noDuplicate!2183 (List!31739) Bool)

(assert (=> b!1352724 (= res!898120 (noDuplicate!2183 acc!759))))

(declare-fun b!1352725 () Bool)

(declare-fun res!898119 () Bool)

(assert (=> b!1352725 (=> (not res!898119) (not e!768904))))

(declare-fun contains!9304 (List!31739 (_ BitVec 64)) Bool)

(assert (=> b!1352725 (= res!898119 (not (contains!9304 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1352726 () Bool)

(declare-fun e!768907 () Bool)

(assert (=> b!1352726 (= e!768907 (not true))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1352726 (arrayNoDuplicates!0 (array!92150 (store (arr!44518 a!3742) i!1404 l!3587) (size!45069 a!3742)) (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun lt!597601 () Unit!44318)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!92149 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!31739) Unit!44318)

(assert (=> b!1352726 (= lt!597601 (lemmaPutNonValidKeyPreservesNoDuplicate!0 a!3742 l!3587 i!1404 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1352727 () Bool)

(declare-fun res!898125 () Bool)

(assert (=> b!1352727 (=> (not res!898125) (not e!768904))))

(assert (=> b!1352727 (= res!898125 (not (contains!9304 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1352728 () Bool)

(declare-fun res!898116 () Bool)

(assert (=> b!1352728 (=> (not res!898116) (not e!768904))))

(assert (=> b!1352728 (= res!898116 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun res!898121 () Bool)

(assert (=> start!114044 (=> (not res!898121) (not e!768904))))

(assert (=> start!114044 (= res!898121 (and (bvslt (size!45069 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45069 a!3742))))))

(assert (=> start!114044 e!768904))

(assert (=> start!114044 true))

(declare-fun array_inv!33463 (array!92149) Bool)

(assert (=> start!114044 (array_inv!33463 a!3742)))

(declare-fun b!1352729 () Bool)

(declare-fun res!898117 () Bool)

(assert (=> b!1352729 (=> (not res!898117) (not e!768907))))

(assert (=> b!1352729 (= res!898117 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1352730 () Bool)

(declare-fun res!898124 () Bool)

(assert (=> b!1352730 (=> (not res!898124) (not e!768904))))

(assert (=> b!1352730 (= res!898124 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45069 a!3742))))))

(declare-fun b!1352731 () Bool)

(assert (=> b!1352731 (= e!768904 e!768907)))

(declare-fun res!898123 () Bool)

(assert (=> b!1352731 (=> (not res!898123) (not e!768907))))

(assert (=> b!1352731 (= res!898123 (and (= from!3120 i!1404) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-fun lt!597599 () Unit!44318)

(assert (=> b!1352731 (= lt!597599 e!768906)))

(declare-fun c!126745 () Bool)

(assert (=> b!1352731 (= c!126745 (validKeyInArray!0 (select (arr!44518 a!3742) from!3120)))))

(declare-fun b!1352732 () Bool)

(declare-fun res!898118 () Bool)

(assert (=> b!1352732 (=> (not res!898118) (not e!768904))))

(assert (=> b!1352732 (= res!898118 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31736))))

(assert (= (and start!114044 res!898121) b!1352724))

(assert (= (and b!1352724 res!898120) b!1352725))

(assert (= (and b!1352725 res!898119) b!1352727))

(assert (= (and b!1352727 res!898125) b!1352732))

(assert (= (and b!1352732 res!898118) b!1352728))

(assert (= (and b!1352728 res!898116) b!1352730))

(assert (= (and b!1352730 res!898124) b!1352723))

(assert (= (and b!1352723 res!898115) b!1352721))

(assert (= (and b!1352721 res!898122) b!1352731))

(assert (= (and b!1352731 c!126745) b!1352720))

(assert (= (and b!1352731 (not c!126745)) b!1352722))

(assert (= (and b!1352731 res!898123) b!1352729))

(assert (= (and b!1352729 res!898117) b!1352726))

(declare-fun m!1239499 () Bool)

(assert (=> start!114044 m!1239499))

(declare-fun m!1239501 () Bool)

(assert (=> b!1352724 m!1239501))

(declare-fun m!1239503 () Bool)

(assert (=> b!1352728 m!1239503))

(declare-fun m!1239505 () Bool)

(assert (=> b!1352732 m!1239505))

(declare-fun m!1239507 () Bool)

(assert (=> b!1352729 m!1239507))

(declare-fun m!1239509 () Bool)

(assert (=> b!1352723 m!1239509))

(declare-fun m!1239511 () Bool)

(assert (=> b!1352720 m!1239511))

(declare-fun m!1239513 () Bool)

(assert (=> b!1352720 m!1239513))

(declare-fun m!1239515 () Bool)

(assert (=> b!1352720 m!1239515))

(declare-fun m!1239517 () Bool)

(assert (=> b!1352720 m!1239517))

(assert (=> b!1352720 m!1239507))

(assert (=> b!1352720 m!1239513))

(assert (=> b!1352720 m!1239515))

(declare-fun m!1239519 () Bool)

(assert (=> b!1352720 m!1239519))

(assert (=> b!1352731 m!1239513))

(assert (=> b!1352731 m!1239513))

(declare-fun m!1239521 () Bool)

(assert (=> b!1352731 m!1239521))

(declare-fun m!1239523 () Bool)

(assert (=> b!1352725 m!1239523))

(declare-fun m!1239525 () Bool)

(assert (=> b!1352726 m!1239525))

(declare-fun m!1239527 () Bool)

(assert (=> b!1352726 m!1239527))

(declare-fun m!1239529 () Bool)

(assert (=> b!1352726 m!1239529))

(declare-fun m!1239531 () Bool)

(assert (=> b!1352727 m!1239531))

(push 1)

