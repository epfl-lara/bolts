; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!114010 () Bool)

(assert start!114010)

(declare-fun b!1352097 () Bool)

(declare-fun res!897595 () Bool)

(declare-fun e!768702 () Bool)

(assert (=> b!1352097 (=> (not res!897595) (not e!768702))))

(declare-datatypes ((List!31722 0))(
  ( (Nil!31719) (Cons!31718 (h!32927 (_ BitVec 64)) (t!46387 List!31722)) )
))
(declare-fun acc!759 () List!31722)

(declare-datatypes ((array!92115 0))(
  ( (array!92116 (arr!44501 (Array (_ BitVec 32) (_ BitVec 64))) (size!45052 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92115)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!92115 (_ BitVec 32) List!31722) Bool)

(assert (=> b!1352097 (= res!897595 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1352098 () Bool)

(declare-fun res!897596 () Bool)

(assert (=> b!1352098 (=> (not res!897596) (not e!768702))))

(declare-fun contains!9287 (List!31722 (_ BitVec 64)) Bool)

(assert (=> b!1352098 (= res!897596 (not (contains!9287 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1352099 () Bool)

(declare-fun e!768701 () Bool)

(assert (=> b!1352099 (= e!768701 false)))

(declare-fun lt!597395 () Bool)

(assert (=> b!1352099 (= lt!597395 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1352100 () Bool)

(assert (=> b!1352100 (= e!768702 e!768701)))

(declare-fun res!897598 () Bool)

(assert (=> b!1352100 (=> (not res!897598) (not e!768701))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1352100 (= res!897598 (and (= from!3120 i!1404) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-datatypes ((Unit!44267 0))(
  ( (Unit!44268) )
))
(declare-fun lt!597398 () Unit!44267)

(declare-fun e!768703 () Unit!44267)

(assert (=> b!1352100 (= lt!597398 e!768703)))

(declare-fun c!126694 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1352100 (= c!126694 (validKeyInArray!0 (select (arr!44501 a!3742) from!3120)))))

(declare-fun b!1352101 () Bool)

(declare-fun lt!597397 () Unit!44267)

(assert (=> b!1352101 (= e!768703 lt!597397)))

(declare-fun lt!597396 () Unit!44267)

(declare-fun lemmaListSubSeqRefl!0 (List!31722) Unit!44267)

(assert (=> b!1352101 (= lt!597396 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!696 (List!31722 List!31722) Bool)

(assert (=> b!1352101 (subseq!696 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92115 List!31722 List!31722 (_ BitVec 32)) Unit!44267)

(declare-fun $colon$colon!713 (List!31722 (_ BitVec 64)) List!31722)

(assert (=> b!1352101 (= lt!597397 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!713 acc!759 (select (arr!44501 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1352101 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1352102 () Bool)

(declare-fun res!897603 () Bool)

(assert (=> b!1352102 (=> (not res!897603) (not e!768702))))

(assert (=> b!1352102 (= res!897603 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45052 a!3742)))))

(declare-fun b!1352103 () Bool)

(declare-fun res!897600 () Bool)

(assert (=> b!1352103 (=> (not res!897600) (not e!768702))))

(assert (=> b!1352103 (= res!897600 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45052 a!3742))))))

(declare-fun b!1352104 () Bool)

(declare-fun res!897602 () Bool)

(assert (=> b!1352104 (=> (not res!897602) (not e!768702))))

(declare-fun noDuplicate!2166 (List!31722) Bool)

(assert (=> b!1352104 (= res!897602 (noDuplicate!2166 acc!759))))

(declare-fun b!1352105 () Bool)

(declare-fun res!897597 () Bool)

(assert (=> b!1352105 (=> (not res!897597) (not e!768702))))

(assert (=> b!1352105 (= res!897597 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31719))))

(declare-fun b!1352106 () Bool)

(declare-fun res!897599 () Bool)

(assert (=> b!1352106 (=> (not res!897599) (not e!768702))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1352106 (= res!897599 (not (validKeyInArray!0 l!3587)))))

(declare-fun res!897594 () Bool)

(assert (=> start!114010 (=> (not res!897594) (not e!768702))))

(assert (=> start!114010 (= res!897594 (and (bvslt (size!45052 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45052 a!3742))))))

(assert (=> start!114010 e!768702))

(assert (=> start!114010 true))

(declare-fun array_inv!33446 (array!92115) Bool)

(assert (=> start!114010 (array_inv!33446 a!3742)))

(declare-fun b!1352107 () Bool)

(declare-fun res!897601 () Bool)

(assert (=> b!1352107 (=> (not res!897601) (not e!768702))))

(assert (=> b!1352107 (= res!897601 (not (contains!9287 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1352108 () Bool)

(declare-fun Unit!44269 () Unit!44267)

(assert (=> b!1352108 (= e!768703 Unit!44269)))

(assert (= (and start!114010 res!897594) b!1352104))

(assert (= (and b!1352104 res!897602) b!1352098))

(assert (= (and b!1352098 res!897596) b!1352107))

(assert (= (and b!1352107 res!897601) b!1352105))

(assert (= (and b!1352105 res!897597) b!1352097))

(assert (= (and b!1352097 res!897595) b!1352103))

(assert (= (and b!1352103 res!897600) b!1352106))

(assert (= (and b!1352106 res!897599) b!1352102))

(assert (= (and b!1352102 res!897603) b!1352100))

(assert (= (and b!1352100 c!126694) b!1352101))

(assert (= (and b!1352100 (not c!126694)) b!1352108))

(assert (= (and b!1352100 res!897598) b!1352099))

(declare-fun m!1239005 () Bool)

(assert (=> b!1352098 m!1239005))

(declare-fun m!1239007 () Bool)

(assert (=> b!1352100 m!1239007))

(assert (=> b!1352100 m!1239007))

(declare-fun m!1239009 () Bool)

(assert (=> b!1352100 m!1239009))

(declare-fun m!1239011 () Bool)

(assert (=> b!1352099 m!1239011))

(declare-fun m!1239013 () Bool)

(assert (=> b!1352105 m!1239013))

(declare-fun m!1239015 () Bool)

(assert (=> start!114010 m!1239015))

(declare-fun m!1239017 () Bool)

(assert (=> b!1352101 m!1239017))

(assert (=> b!1352101 m!1239007))

(declare-fun m!1239019 () Bool)

(assert (=> b!1352101 m!1239019))

(declare-fun m!1239021 () Bool)

(assert (=> b!1352101 m!1239021))

(assert (=> b!1352101 m!1239011))

(assert (=> b!1352101 m!1239007))

(assert (=> b!1352101 m!1239019))

(declare-fun m!1239023 () Bool)

(assert (=> b!1352101 m!1239023))

(declare-fun m!1239025 () Bool)

(assert (=> b!1352107 m!1239025))

(declare-fun m!1239027 () Bool)

(assert (=> b!1352097 m!1239027))

(declare-fun m!1239029 () Bool)

(assert (=> b!1352104 m!1239029))

(declare-fun m!1239031 () Bool)

(assert (=> b!1352106 m!1239031))

(check-sat (not b!1352099) (not b!1352097) (not b!1352106) (not b!1352104) (not b!1352101) (not b!1352105) (not b!1352100) (not start!114010) (not b!1352098) (not b!1352107))
(check-sat)
