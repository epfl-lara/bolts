; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!115582 () Bool)

(assert start!115582)

(declare-fun b!1366612 () Bool)

(declare-fun res!910283 () Bool)

(declare-fun e!774613 () Bool)

(assert (=> b!1366612 (=> (not res!910283) (not e!774613))))

(declare-datatypes ((List!32061 0))(
  ( (Nil!32058) (Cons!32057 (h!33266 (_ BitVec 64)) (t!46762 List!32061)) )
))
(declare-fun acc!866 () List!32061)

(declare-fun contains!9599 (List!32061 (_ BitVec 64)) Bool)

(assert (=> b!1366612 (= res!910283 (not (contains!9599 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!910292 () Bool)

(assert (=> start!115582 (=> (not res!910292) (not e!774613))))

(declare-datatypes ((array!92781 0))(
  ( (array!92782 (arr!44813 (Array (_ BitVec 32) (_ BitVec 64))) (size!45364 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92781)

(declare-fun from!3239 () (_ BitVec 32))

(assert (=> start!115582 (= res!910292 (and (bvslt (size!45364 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45364 a!3861))))))

(assert (=> start!115582 e!774613))

(declare-fun array_inv!33758 (array!92781) Bool)

(assert (=> start!115582 (array_inv!33758 a!3861)))

(assert (=> start!115582 true))

(declare-fun b!1366613 () Bool)

(declare-fun res!910286 () Bool)

(assert (=> b!1366613 (=> (not res!910286) (not e!774613))))

(assert (=> b!1366613 (= res!910286 (not (contains!9599 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1366614 () Bool)

(declare-fun res!910291 () Bool)

(declare-fun e!774611 () Bool)

(assert (=> b!1366614 (=> (not res!910291) (not e!774611))))

(assert (=> b!1366614 (= res!910291 (not (contains!9599 acc!866 (select (arr!44813 a!3861) from!3239))))))

(declare-fun b!1366615 () Bool)

(declare-fun res!910285 () Bool)

(assert (=> b!1366615 (=> (not res!910285) (not e!774611))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1366615 (= res!910285 (validKeyInArray!0 (select (arr!44813 a!3861) from!3239)))))

(declare-fun b!1366616 () Bool)

(declare-fun res!910290 () Bool)

(assert (=> b!1366616 (=> (not res!910290) (not e!774613))))

(declare-fun newAcc!98 () List!32061)

(assert (=> b!1366616 (= res!910290 (not (contains!9599 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1366617 () Bool)

(assert (=> b!1366617 (= e!774613 e!774611)))

(declare-fun res!910287 () Bool)

(assert (=> b!1366617 (=> (not res!910287) (not e!774611))))

(declare-fun arrayNoDuplicates!0 (array!92781 (_ BitVec 32) List!32061) Bool)

(assert (=> b!1366617 (= res!910287 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45061 0))(
  ( (Unit!45062) )
))
(declare-fun lt!601576 () Unit!45061)

(declare-fun noDuplicateSubseq!177 (List!32061 List!32061) Unit!45061)

(assert (=> b!1366617 (= lt!601576 (noDuplicateSubseq!177 newAcc!98 acc!866))))

(declare-fun b!1366618 () Bool)

(declare-fun res!910289 () Bool)

(assert (=> b!1366618 (=> (not res!910289) (not e!774613))))

(assert (=> b!1366618 (= res!910289 (not (contains!9599 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1366619 () Bool)

(declare-fun res!910293 () Bool)

(assert (=> b!1366619 (=> (not res!910293) (not e!774611))))

(assert (=> b!1366619 (= res!910293 (bvslt from!3239 (size!45364 a!3861)))))

(declare-fun b!1366620 () Bool)

(declare-fun res!910284 () Bool)

(assert (=> b!1366620 (=> (not res!910284) (not e!774613))))

(declare-fun subseq!990 (List!32061 List!32061) Bool)

(assert (=> b!1366620 (= res!910284 (subseq!990 newAcc!98 acc!866))))

(declare-fun b!1366621 () Bool)

(declare-fun res!910288 () Bool)

(assert (=> b!1366621 (=> (not res!910288) (not e!774613))))

(declare-fun noDuplicate!2478 (List!32061) Bool)

(assert (=> b!1366621 (= res!910288 (noDuplicate!2478 acc!866))))

(declare-fun b!1366622 () Bool)

(assert (=> b!1366622 (= e!774611 (not true))))

(declare-fun lt!601577 () Unit!45061)

(declare-fun lt!601579 () List!32061)

(declare-fun lt!601578 () List!32061)

(assert (=> b!1366622 (= lt!601577 (noDuplicateSubseq!177 lt!601579 lt!601578))))

(assert (=> b!1366622 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) lt!601579)))

(declare-fun lt!601580 () Unit!45061)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92781 List!32061 List!32061 (_ BitVec 32)) Unit!45061)

(assert (=> b!1366622 (= lt!601580 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3861 lt!601578 lt!601579 (bvadd #b00000000000000000000000000000001 from!3239)))))

(assert (=> b!1366622 (= lt!601579 (Cons!32057 (select (arr!44813 a!3861) from!3239) newAcc!98))))

(assert (=> b!1366622 (= lt!601578 (Cons!32057 (select (arr!44813 a!3861) from!3239) acc!866))))

(assert (= (and start!115582 res!910292) b!1366621))

(assert (= (and b!1366621 res!910288) b!1366613))

(assert (= (and b!1366613 res!910286) b!1366612))

(assert (= (and b!1366612 res!910283) b!1366616))

(assert (= (and b!1366616 res!910290) b!1366618))

(assert (= (and b!1366618 res!910289) b!1366620))

(assert (= (and b!1366620 res!910284) b!1366617))

(assert (= (and b!1366617 res!910287) b!1366619))

(assert (= (and b!1366619 res!910293) b!1366615))

(assert (= (and b!1366615 res!910285) b!1366614))

(assert (= (and b!1366614 res!910291) b!1366622))

(declare-fun m!1250935 () Bool)

(assert (=> start!115582 m!1250935))

(declare-fun m!1250937 () Bool)

(assert (=> b!1366616 m!1250937))

(declare-fun m!1250939 () Bool)

(assert (=> b!1366615 m!1250939))

(assert (=> b!1366615 m!1250939))

(declare-fun m!1250941 () Bool)

(assert (=> b!1366615 m!1250941))

(declare-fun m!1250943 () Bool)

(assert (=> b!1366617 m!1250943))

(declare-fun m!1250945 () Bool)

(assert (=> b!1366617 m!1250945))

(assert (=> b!1366614 m!1250939))

(assert (=> b!1366614 m!1250939))

(declare-fun m!1250947 () Bool)

(assert (=> b!1366614 m!1250947))

(declare-fun m!1250949 () Bool)

(assert (=> b!1366613 m!1250949))

(declare-fun m!1250951 () Bool)

(assert (=> b!1366612 m!1250951))

(declare-fun m!1250953 () Bool)

(assert (=> b!1366621 m!1250953))

(declare-fun m!1250955 () Bool)

(assert (=> b!1366620 m!1250955))

(declare-fun m!1250957 () Bool)

(assert (=> b!1366618 m!1250957))

(declare-fun m!1250959 () Bool)

(assert (=> b!1366622 m!1250959))

(declare-fun m!1250961 () Bool)

(assert (=> b!1366622 m!1250961))

(declare-fun m!1250963 () Bool)

(assert (=> b!1366622 m!1250963))

(assert (=> b!1366622 m!1250939))

(check-sat (not b!1366613) (not b!1366618) (not b!1366621) (not b!1366620) (not b!1366614) (not start!115582) (not b!1366617) (not b!1366615) (not b!1366616) (not b!1366622) (not b!1366612))
(check-sat)
