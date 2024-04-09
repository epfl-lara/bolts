; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!114142 () Bool)

(assert start!114142)

(declare-fun b!1355013 () Bool)

(declare-fun res!900114 () Bool)

(declare-fun e!769612 () Bool)

(assert (=> b!1355013 (=> (not res!900114) (not e!769612))))

(declare-datatypes ((array!92247 0))(
  ( (array!92248 (arr!44567 (Array (_ BitVec 32) (_ BitVec 64))) (size!45118 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92247)

(declare-datatypes ((List!31788 0))(
  ( (Nil!31785) (Cons!31784 (h!32993 (_ BitVec 64)) (t!46453 List!31788)) )
))
(declare-fun arrayNoDuplicates!0 (array!92247 (_ BitVec 32) List!31788) Bool)

(assert (=> b!1355013 (= res!900114 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31785))))

(declare-fun b!1355014 () Bool)

(declare-datatypes ((Unit!44465 0))(
  ( (Unit!44466) )
))
(declare-fun e!769609 () Unit!44465)

(declare-fun Unit!44467 () Unit!44465)

(assert (=> b!1355014 (= e!769609 Unit!44467)))

(declare-fun b!1355016 () Bool)

(declare-fun res!900122 () Bool)

(assert (=> b!1355016 (=> (not res!900122) (not e!769612))))

(declare-fun acc!759 () List!31788)

(declare-fun noDuplicate!2232 (List!31788) Bool)

(assert (=> b!1355016 (= res!900122 (noDuplicate!2232 acc!759))))

(declare-fun b!1355017 () Bool)

(declare-fun e!769611 () Bool)

(assert (=> b!1355017 (= e!769612 e!769611)))

(declare-fun res!900116 () Bool)

(assert (=> b!1355017 (=> (not res!900116) (not e!769611))))

(declare-fun lt!598430 () Bool)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1355017 (= res!900116 (and (not (= from!3120 i!1404)) (not lt!598430) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-fun lt!598427 () Unit!44465)

(assert (=> b!1355017 (= lt!598427 e!769609)))

(declare-fun c!126892 () Bool)

(assert (=> b!1355017 (= c!126892 lt!598430)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1355017 (= lt!598430 (validKeyInArray!0 (select (arr!44567 a!3742) from!3120)))))

(declare-fun b!1355018 () Bool)

(declare-fun res!900117 () Bool)

(assert (=> b!1355018 (=> (not res!900117) (not e!769612))))

(assert (=> b!1355018 (= res!900117 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45118 a!3742)))))

(declare-fun b!1355019 () Bool)

(declare-fun res!900123 () Bool)

(assert (=> b!1355019 (=> (not res!900123) (not e!769612))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1355019 (= res!900123 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1355020 () Bool)

(declare-fun res!900119 () Bool)

(assert (=> b!1355020 (=> (not res!900119) (not e!769612))))

(declare-fun contains!9353 (List!31788 (_ BitVec 64)) Bool)

(assert (=> b!1355020 (= res!900119 (not (contains!9353 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1355021 () Bool)

(declare-fun lt!598428 () Unit!44465)

(assert (=> b!1355021 (= e!769609 lt!598428)))

(declare-fun lt!598429 () Unit!44465)

(declare-fun lemmaListSubSeqRefl!0 (List!31788) Unit!44465)

(assert (=> b!1355021 (= lt!598429 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!762 (List!31788 List!31788) Bool)

(assert (=> b!1355021 (subseq!762 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92247 List!31788 List!31788 (_ BitVec 32)) Unit!44465)

(declare-fun $colon$colon!779 (List!31788 (_ BitVec 64)) List!31788)

(assert (=> b!1355021 (= lt!598428 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!779 acc!759 (select (arr!44567 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1355021 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1355022 () Bool)

(declare-fun res!900120 () Bool)

(assert (=> b!1355022 (=> (not res!900120) (not e!769612))))

(assert (=> b!1355022 (= res!900120 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45118 a!3742))))))

(declare-fun b!1355023 () Bool)

(declare-fun res!900118 () Bool)

(assert (=> b!1355023 (=> (not res!900118) (not e!769612))))

(assert (=> b!1355023 (= res!900118 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1355024 () Bool)

(declare-fun res!900121 () Bool)

(assert (=> b!1355024 (=> (not res!900121) (not e!769612))))

(assert (=> b!1355024 (= res!900121 (not (contains!9353 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1355015 () Bool)

(assert (=> b!1355015 (= e!769611 false)))

(declare-fun lt!598426 () Bool)

(assert (=> b!1355015 (= lt!598426 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun res!900115 () Bool)

(assert (=> start!114142 (=> (not res!900115) (not e!769612))))

(assert (=> start!114142 (= res!900115 (and (bvslt (size!45118 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45118 a!3742))))))

(assert (=> start!114142 e!769612))

(assert (=> start!114142 true))

(declare-fun array_inv!33512 (array!92247) Bool)

(assert (=> start!114142 (array_inv!33512 a!3742)))

(assert (= (and start!114142 res!900115) b!1355016))

(assert (= (and b!1355016 res!900122) b!1355020))

(assert (= (and b!1355020 res!900119) b!1355024))

(assert (= (and b!1355024 res!900121) b!1355013))

(assert (= (and b!1355013 res!900114) b!1355023))

(assert (= (and b!1355023 res!900118) b!1355022))

(assert (= (and b!1355022 res!900120) b!1355019))

(assert (= (and b!1355019 res!900123) b!1355018))

(assert (= (and b!1355018 res!900117) b!1355017))

(assert (= (and b!1355017 c!126892) b!1355021))

(assert (= (and b!1355017 (not c!126892)) b!1355014))

(assert (= (and b!1355017 res!900116) b!1355015))

(declare-fun m!1241309 () Bool)

(assert (=> b!1355021 m!1241309))

(declare-fun m!1241311 () Bool)

(assert (=> b!1355021 m!1241311))

(declare-fun m!1241313 () Bool)

(assert (=> b!1355021 m!1241313))

(declare-fun m!1241315 () Bool)

(assert (=> b!1355021 m!1241315))

(declare-fun m!1241317 () Bool)

(assert (=> b!1355021 m!1241317))

(assert (=> b!1355021 m!1241311))

(assert (=> b!1355021 m!1241313))

(declare-fun m!1241319 () Bool)

(assert (=> b!1355021 m!1241319))

(declare-fun m!1241321 () Bool)

(assert (=> b!1355013 m!1241321))

(assert (=> b!1355017 m!1241311))

(assert (=> b!1355017 m!1241311))

(declare-fun m!1241323 () Bool)

(assert (=> b!1355017 m!1241323))

(declare-fun m!1241325 () Bool)

(assert (=> b!1355024 m!1241325))

(declare-fun m!1241327 () Bool)

(assert (=> b!1355019 m!1241327))

(declare-fun m!1241329 () Bool)

(assert (=> b!1355020 m!1241329))

(declare-fun m!1241331 () Bool)

(assert (=> b!1355023 m!1241331))

(declare-fun m!1241333 () Bool)

(assert (=> b!1355016 m!1241333))

(declare-fun m!1241335 () Bool)

(assert (=> start!114142 m!1241335))

(assert (=> b!1355015 m!1241317))

(check-sat (not start!114142) (not b!1355019) (not b!1355023) (not b!1355013) (not b!1355020) (not b!1355021) (not b!1355016) (not b!1355024) (not b!1355017) (not b!1355015))
(check-sat)
