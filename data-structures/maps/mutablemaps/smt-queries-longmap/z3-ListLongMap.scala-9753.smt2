; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!115588 () Bool)

(assert start!115588)

(declare-fun b!1366711 () Bool)

(declare-fun res!910388 () Bool)

(declare-fun e!774639 () Bool)

(assert (=> b!1366711 (=> (not res!910388) (not e!774639))))

(declare-datatypes ((List!32064 0))(
  ( (Nil!32061) (Cons!32060 (h!33269 (_ BitVec 64)) (t!46765 List!32064)) )
))
(declare-fun newAcc!98 () List!32064)

(declare-fun acc!866 () List!32064)

(declare-fun subseq!993 (List!32064 List!32064) Bool)

(assert (=> b!1366711 (= res!910388 (subseq!993 newAcc!98 acc!866))))

(declare-fun b!1366712 () Bool)

(declare-fun e!774638 () Bool)

(assert (=> b!1366712 (= e!774639 e!774638)))

(declare-fun res!910391 () Bool)

(assert (=> b!1366712 (=> (not res!910391) (not e!774638))))

(declare-datatypes ((array!92787 0))(
  ( (array!92788 (arr!44816 (Array (_ BitVec 32) (_ BitVec 64))) (size!45367 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92787)

(declare-fun from!3239 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!92787 (_ BitVec 32) List!32064) Bool)

(assert (=> b!1366712 (= res!910391 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45067 0))(
  ( (Unit!45068) )
))
(declare-fun lt!601625 () Unit!45067)

(declare-fun noDuplicateSubseq!180 (List!32064 List!32064) Unit!45067)

(assert (=> b!1366712 (= lt!601625 (noDuplicateSubseq!180 newAcc!98 acc!866))))

(declare-fun b!1366713 () Bool)

(declare-fun res!910390 () Bool)

(assert (=> b!1366713 (=> (not res!910390) (not e!774639))))

(declare-fun contains!9602 (List!32064 (_ BitVec 64)) Bool)

(assert (=> b!1366713 (= res!910390 (not (contains!9602 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1366714 () Bool)

(declare-fun res!910392 () Bool)

(assert (=> b!1366714 (=> (not res!910392) (not e!774639))))

(assert (=> b!1366714 (= res!910392 (not (contains!9602 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1366716 () Bool)

(declare-fun res!910384 () Bool)

(assert (=> b!1366716 (=> (not res!910384) (not e!774638))))

(assert (=> b!1366716 (= res!910384 (bvslt from!3239 (size!45367 a!3861)))))

(declare-fun b!1366717 () Bool)

(declare-fun res!910382 () Bool)

(assert (=> b!1366717 (=> (not res!910382) (not e!774639))))

(assert (=> b!1366717 (= res!910382 (not (contains!9602 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1366718 () Bool)

(declare-fun res!910385 () Bool)

(assert (=> b!1366718 (=> (not res!910385) (not e!774638))))

(assert (=> b!1366718 (= res!910385 (not (contains!9602 acc!866 (select (arr!44816 a!3861) from!3239))))))

(declare-fun b!1366719 () Bool)

(declare-fun res!910389 () Bool)

(assert (=> b!1366719 (=> (not res!910389) (not e!774639))))

(assert (=> b!1366719 (= res!910389 (not (contains!9602 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!910387 () Bool)

(assert (=> start!115588 (=> (not res!910387) (not e!774639))))

(assert (=> start!115588 (= res!910387 (and (bvslt (size!45367 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45367 a!3861))))))

(assert (=> start!115588 e!774639))

(declare-fun array_inv!33761 (array!92787) Bool)

(assert (=> start!115588 (array_inv!33761 a!3861)))

(assert (=> start!115588 true))

(declare-fun b!1366715 () Bool)

(declare-fun res!910383 () Bool)

(assert (=> b!1366715 (=> (not res!910383) (not e!774638))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1366715 (= res!910383 (validKeyInArray!0 (select (arr!44816 a!3861) from!3239)))))

(declare-fun b!1366720 () Bool)

(declare-fun res!910386 () Bool)

(assert (=> b!1366720 (=> (not res!910386) (not e!774639))))

(declare-fun noDuplicate!2481 (List!32064) Bool)

(assert (=> b!1366720 (= res!910386 (noDuplicate!2481 acc!866))))

(declare-fun b!1366721 () Bool)

(assert (=> b!1366721 (= e!774638 (not true))))

(declare-fun lt!601623 () Unit!45067)

(declare-fun lt!601624 () List!32064)

(declare-fun lt!601622 () List!32064)

(assert (=> b!1366721 (= lt!601623 (noDuplicateSubseq!180 lt!601624 lt!601622))))

(assert (=> b!1366721 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) lt!601624)))

(declare-fun lt!601621 () Unit!45067)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92787 List!32064 List!32064 (_ BitVec 32)) Unit!45067)

(assert (=> b!1366721 (= lt!601621 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3861 lt!601622 lt!601624 (bvadd #b00000000000000000000000000000001 from!3239)))))

(assert (=> b!1366721 (= lt!601624 (Cons!32060 (select (arr!44816 a!3861) from!3239) newAcc!98))))

(assert (=> b!1366721 (= lt!601622 (Cons!32060 (select (arr!44816 a!3861) from!3239) acc!866))))

(assert (= (and start!115588 res!910387) b!1366720))

(assert (= (and b!1366720 res!910386) b!1366713))

(assert (= (and b!1366713 res!910390) b!1366714))

(assert (= (and b!1366714 res!910392) b!1366719))

(assert (= (and b!1366719 res!910389) b!1366717))

(assert (= (and b!1366717 res!910382) b!1366711))

(assert (= (and b!1366711 res!910388) b!1366712))

(assert (= (and b!1366712 res!910391) b!1366716))

(assert (= (and b!1366716 res!910384) b!1366715))

(assert (= (and b!1366715 res!910383) b!1366718))

(assert (= (and b!1366718 res!910385) b!1366721))

(declare-fun m!1251025 () Bool)

(assert (=> b!1366717 m!1251025))

(declare-fun m!1251027 () Bool)

(assert (=> b!1366712 m!1251027))

(declare-fun m!1251029 () Bool)

(assert (=> b!1366712 m!1251029))

(declare-fun m!1251031 () Bool)

(assert (=> b!1366711 m!1251031))

(declare-fun m!1251033 () Bool)

(assert (=> b!1366713 m!1251033))

(declare-fun m!1251035 () Bool)

(assert (=> b!1366718 m!1251035))

(assert (=> b!1366718 m!1251035))

(declare-fun m!1251037 () Bool)

(assert (=> b!1366718 m!1251037))

(declare-fun m!1251039 () Bool)

(assert (=> b!1366714 m!1251039))

(assert (=> b!1366715 m!1251035))

(assert (=> b!1366715 m!1251035))

(declare-fun m!1251041 () Bool)

(assert (=> b!1366715 m!1251041))

(declare-fun m!1251043 () Bool)

(assert (=> b!1366719 m!1251043))

(declare-fun m!1251045 () Bool)

(assert (=> start!115588 m!1251045))

(declare-fun m!1251047 () Bool)

(assert (=> b!1366720 m!1251047))

(declare-fun m!1251049 () Bool)

(assert (=> b!1366721 m!1251049))

(declare-fun m!1251051 () Bool)

(assert (=> b!1366721 m!1251051))

(declare-fun m!1251053 () Bool)

(assert (=> b!1366721 m!1251053))

(assert (=> b!1366721 m!1251035))

(check-sat (not b!1366720) (not b!1366712) (not b!1366717) (not start!115588) (not b!1366711) (not b!1366714) (not b!1366718) (not b!1366719) (not b!1366713) (not b!1366715) (not b!1366721))
(check-sat)
