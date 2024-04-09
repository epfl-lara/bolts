; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!114094 () Bool)

(assert start!114094)

(declare-fun b!1353845 () Bool)

(declare-fun e!769258 () Bool)

(declare-fun e!769256 () Bool)

(assert (=> b!1353845 (= e!769258 e!769256)))

(declare-fun res!899091 () Bool)

(assert (=> b!1353845 (=> (not res!899091) (not e!769256))))

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> b!1353845 (= res!899091 (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000))))

(declare-datatypes ((List!31764 0))(
  ( (Nil!31761) (Cons!31760 (h!32969 (_ BitVec 64)) (t!46429 List!31764)) )
))
(declare-fun lt!597999 () List!31764)

(declare-fun acc!759 () List!31764)

(declare-datatypes ((array!92199 0))(
  ( (array!92200 (arr!44543 (Array (_ BitVec 32) (_ BitVec 64))) (size!45094 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92199)

(declare-fun $colon$colon!755 (List!31764 (_ BitVec 64)) List!31764)

(assert (=> b!1353845 (= lt!597999 ($colon$colon!755 acc!759 (select (arr!44543 a!3742) from!3120)))))

(declare-fun b!1353846 () Bool)

(declare-fun res!899102 () Bool)

(declare-fun e!769257 () Bool)

(assert (=> b!1353846 (=> (not res!899102) (not e!769257))))

(declare-fun arrayNoDuplicates!0 (array!92199 (_ BitVec 32) List!31764) Bool)

(assert (=> b!1353846 (= res!899102 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31761))))

(declare-fun b!1353847 () Bool)

(declare-datatypes ((Unit!44393 0))(
  ( (Unit!44394) )
))
(declare-fun e!769254 () Unit!44393)

(declare-fun lt!598002 () Unit!44393)

(assert (=> b!1353847 (= e!769254 lt!598002)))

(declare-fun lt!598004 () Unit!44393)

(declare-fun lemmaListSubSeqRefl!0 (List!31764) Unit!44393)

(assert (=> b!1353847 (= lt!598004 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!738 (List!31764 List!31764) Bool)

(assert (=> b!1353847 (subseq!738 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92199 List!31764 List!31764 (_ BitVec 32)) Unit!44393)

(assert (=> b!1353847 (= lt!598002 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!755 acc!759 (select (arr!44543 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1353847 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1353848 () Bool)

(declare-fun res!899094 () Bool)

(assert (=> b!1353848 (=> (not res!899094) (not e!769257))))

(declare-fun contains!9329 (List!31764 (_ BitVec 64)) Bool)

(assert (=> b!1353848 (= res!899094 (not (contains!9329 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!899095 () Bool)

(assert (=> start!114094 (=> (not res!899095) (not e!769257))))

(assert (=> start!114094 (= res!899095 (and (bvslt (size!45094 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45094 a!3742))))))

(assert (=> start!114094 e!769257))

(assert (=> start!114094 true))

(declare-fun array_inv!33488 (array!92199) Bool)

(assert (=> start!114094 (array_inv!33488 a!3742)))

(declare-fun b!1353849 () Bool)

(declare-fun res!899093 () Bool)

(assert (=> b!1353849 (=> (not res!899093) (not e!769257))))

(declare-fun noDuplicate!2208 (List!31764) Bool)

(assert (=> b!1353849 (= res!899093 (noDuplicate!2208 acc!759))))

(declare-fun b!1353850 () Bool)

(declare-fun res!899097 () Bool)

(assert (=> b!1353850 (=> (not res!899097) (not e!769256))))

(assert (=> b!1353850 (= res!899097 (not (contains!9329 lt!597999 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1353851 () Bool)

(assert (=> b!1353851 (= e!769256 false)))

(declare-fun lt!598000 () Bool)

(assert (=> b!1353851 (= lt!598000 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) lt!597999))))

(declare-fun b!1353852 () Bool)

(declare-fun Unit!44395 () Unit!44393)

(assert (=> b!1353852 (= e!769254 Unit!44395)))

(declare-fun b!1353853 () Bool)

(assert (=> b!1353853 (= e!769257 e!769258)))

(declare-fun res!899096 () Bool)

(assert (=> b!1353853 (=> (not res!899096) (not e!769258))))

(declare-fun lt!598001 () Bool)

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1353853 (= res!899096 (and (not (= from!3120 i!1404)) lt!598001))))

(declare-fun lt!598003 () Unit!44393)

(assert (=> b!1353853 (= lt!598003 e!769254)))

(declare-fun c!126820 () Bool)

(assert (=> b!1353853 (= c!126820 lt!598001)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1353853 (= lt!598001 (validKeyInArray!0 (select (arr!44543 a!3742) from!3120)))))

(declare-fun b!1353854 () Bool)

(declare-fun res!899098 () Bool)

(assert (=> b!1353854 (=> (not res!899098) (not e!769256))))

(assert (=> b!1353854 (= res!899098 (noDuplicate!2208 lt!597999))))

(declare-fun b!1353855 () Bool)

(declare-fun res!899099 () Bool)

(assert (=> b!1353855 (=> (not res!899099) (not e!769256))))

(assert (=> b!1353855 (= res!899099 (not (contains!9329 lt!597999 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1353856 () Bool)

(declare-fun res!899103 () Bool)

(assert (=> b!1353856 (=> (not res!899103) (not e!769257))))

(assert (=> b!1353856 (= res!899103 (not (contains!9329 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1353857 () Bool)

(declare-fun res!899090 () Bool)

(assert (=> b!1353857 (=> (not res!899090) (not e!769257))))

(assert (=> b!1353857 (= res!899090 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45094 a!3742)))))

(declare-fun b!1353858 () Bool)

(declare-fun res!899100 () Bool)

(assert (=> b!1353858 (=> (not res!899100) (not e!769257))))

(assert (=> b!1353858 (= res!899100 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1353859 () Bool)

(declare-fun res!899092 () Bool)

(assert (=> b!1353859 (=> (not res!899092) (not e!769257))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1353859 (= res!899092 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1353860 () Bool)

(declare-fun res!899101 () Bool)

(assert (=> b!1353860 (=> (not res!899101) (not e!769257))))

(assert (=> b!1353860 (= res!899101 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45094 a!3742))))))

(assert (= (and start!114094 res!899095) b!1353849))

(assert (= (and b!1353849 res!899093) b!1353848))

(assert (= (and b!1353848 res!899094) b!1353856))

(assert (= (and b!1353856 res!899103) b!1353846))

(assert (= (and b!1353846 res!899102) b!1353858))

(assert (= (and b!1353858 res!899100) b!1353860))

(assert (= (and b!1353860 res!899101) b!1353859))

(assert (= (and b!1353859 res!899092) b!1353857))

(assert (= (and b!1353857 res!899090) b!1353853))

(assert (= (and b!1353853 c!126820) b!1353847))

(assert (= (and b!1353853 (not c!126820)) b!1353852))

(assert (= (and b!1353853 res!899096) b!1353845))

(assert (= (and b!1353845 res!899091) b!1353854))

(assert (= (and b!1353854 res!899098) b!1353850))

(assert (= (and b!1353850 res!899097) b!1353855))

(assert (= (and b!1353855 res!899099) b!1353851))

(declare-fun m!1240381 () Bool)

(assert (=> b!1353856 m!1240381))

(declare-fun m!1240383 () Bool)

(assert (=> b!1353858 m!1240383))

(declare-fun m!1240385 () Bool)

(assert (=> start!114094 m!1240385))

(declare-fun m!1240387 () Bool)

(assert (=> b!1353848 m!1240387))

(declare-fun m!1240389 () Bool)

(assert (=> b!1353853 m!1240389))

(assert (=> b!1353853 m!1240389))

(declare-fun m!1240391 () Bool)

(assert (=> b!1353853 m!1240391))

(assert (=> b!1353845 m!1240389))

(assert (=> b!1353845 m!1240389))

(declare-fun m!1240393 () Bool)

(assert (=> b!1353845 m!1240393))

(declare-fun m!1240395 () Bool)

(assert (=> b!1353859 m!1240395))

(declare-fun m!1240397 () Bool)

(assert (=> b!1353855 m!1240397))

(declare-fun m!1240399 () Bool)

(assert (=> b!1353849 m!1240399))

(declare-fun m!1240401 () Bool)

(assert (=> b!1353854 m!1240401))

(declare-fun m!1240403 () Bool)

(assert (=> b!1353846 m!1240403))

(declare-fun m!1240405 () Bool)

(assert (=> b!1353847 m!1240405))

(assert (=> b!1353847 m!1240389))

(assert (=> b!1353847 m!1240393))

(declare-fun m!1240407 () Bool)

(assert (=> b!1353847 m!1240407))

(declare-fun m!1240409 () Bool)

(assert (=> b!1353847 m!1240409))

(assert (=> b!1353847 m!1240389))

(assert (=> b!1353847 m!1240393))

(declare-fun m!1240411 () Bool)

(assert (=> b!1353847 m!1240411))

(declare-fun m!1240413 () Bool)

(assert (=> b!1353851 m!1240413))

(declare-fun m!1240415 () Bool)

(assert (=> b!1353850 m!1240415))

(check-sat (not b!1353851) (not b!1353848) (not b!1353849) (not start!114094) (not b!1353855) (not b!1353856) (not b!1353847) (not b!1353850) (not b!1353859) (not b!1353858) (not b!1353845) (not b!1353853) (not b!1353854) (not b!1353846))
(check-sat)
