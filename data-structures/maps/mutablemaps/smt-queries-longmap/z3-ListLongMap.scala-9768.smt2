; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!115768 () Bool)

(assert start!115768)

(declare-fun b!1368513 () Bool)

(declare-fun res!912145 () Bool)

(declare-fun e!775353 () Bool)

(assert (=> b!1368513 (=> (not res!912145) (not e!775353))))

(declare-datatypes ((array!92883 0))(
  ( (array!92884 (arr!44861 (Array (_ BitVec 32) (_ BitVec 64))) (size!45412 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92883)

(declare-fun from!3239 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1368513 (= res!912145 (not (validKeyInArray!0 (select (arr!44861 a!3861) from!3239))))))

(declare-fun res!912148 () Bool)

(declare-fun e!775354 () Bool)

(assert (=> start!115768 (=> (not res!912148) (not e!775354))))

(assert (=> start!115768 (= res!912148 (and (bvslt (size!45412 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45412 a!3861))))))

(assert (=> start!115768 e!775354))

(declare-fun array_inv!33806 (array!92883) Bool)

(assert (=> start!115768 (array_inv!33806 a!3861)))

(assert (=> start!115768 true))

(declare-fun b!1368514 () Bool)

(declare-fun res!912146 () Bool)

(assert (=> b!1368514 (=> (not res!912146) (not e!775353))))

(assert (=> b!1368514 (= res!912146 (bvsge (bvadd #b00000000000000000000000000000001 from!3239) #b00000000000000000000000000000000))))

(declare-fun b!1368515 () Bool)

(declare-fun res!912149 () Bool)

(assert (=> b!1368515 (=> (not res!912149) (not e!775353))))

(declare-datatypes ((List!32109 0))(
  ( (Nil!32106) (Cons!32105 (h!33314 (_ BitVec 64)) (t!46810 List!32109)) )
))
(declare-fun acc!866 () List!32109)

(declare-fun arrayNoDuplicates!0 (array!92883 (_ BitVec 32) List!32109) Bool)

(assert (=> b!1368515 (= res!912149 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) acc!866))))

(declare-fun b!1368516 () Bool)

(declare-fun res!912143 () Bool)

(assert (=> b!1368516 (=> (not res!912143) (not e!775354))))

(declare-fun newAcc!98 () List!32109)

(declare-fun contains!9647 (List!32109 (_ BitVec 64)) Bool)

(assert (=> b!1368516 (= res!912143 (not (contains!9647 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1368517 () Bool)

(declare-fun res!912153 () Bool)

(assert (=> b!1368517 (=> (not res!912153) (not e!775354))))

(assert (=> b!1368517 (= res!912153 (not (contains!9647 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1368518 () Bool)

(declare-fun res!912150 () Bool)

(assert (=> b!1368518 (=> (not res!912150) (not e!775354))))

(assert (=> b!1368518 (= res!912150 (not (contains!9647 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1368519 () Bool)

(declare-fun res!912147 () Bool)

(assert (=> b!1368519 (=> (not res!912147) (not e!775354))))

(declare-fun noDuplicate!2526 (List!32109) Bool)

(assert (=> b!1368519 (= res!912147 (noDuplicate!2526 acc!866))))

(declare-fun b!1368520 () Bool)

(declare-fun res!912144 () Bool)

(assert (=> b!1368520 (=> (not res!912144) (not e!775354))))

(declare-fun subseq!1038 (List!32109 List!32109) Bool)

(assert (=> b!1368520 (= res!912144 (subseq!1038 newAcc!98 acc!866))))

(declare-fun b!1368521 () Bool)

(assert (=> b!1368521 (= e!775354 e!775353)))

(declare-fun res!912152 () Bool)

(assert (=> b!1368521 (=> (not res!912152) (not e!775353))))

(assert (=> b!1368521 (= res!912152 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45157 0))(
  ( (Unit!45158) )
))
(declare-fun lt!602030 () Unit!45157)

(declare-fun noDuplicateSubseq!225 (List!32109 List!32109) Unit!45157)

(assert (=> b!1368521 (= lt!602030 (noDuplicateSubseq!225 newAcc!98 acc!866))))

(declare-fun b!1368522 () Bool)

(declare-fun res!912142 () Bool)

(assert (=> b!1368522 (=> (not res!912142) (not e!775354))))

(assert (=> b!1368522 (= res!912142 (not (contains!9647 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1368523 () Bool)

(assert (=> b!1368523 (= e!775353 (not true))))

(assert (=> b!1368523 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) newAcc!98)))

(declare-fun lt!602029 () Unit!45157)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92883 List!32109 List!32109 (_ BitVec 32)) Unit!45157)

(assert (=> b!1368523 (= lt!602029 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3861 acc!866 newAcc!98 (bvadd #b00000000000000000000000000000001 from!3239)))))

(declare-fun b!1368524 () Bool)

(declare-fun res!912151 () Bool)

(assert (=> b!1368524 (=> (not res!912151) (not e!775353))))

(assert (=> b!1368524 (= res!912151 (bvslt from!3239 (size!45412 a!3861)))))

(assert (= (and start!115768 res!912148) b!1368519))

(assert (= (and b!1368519 res!912147) b!1368517))

(assert (= (and b!1368517 res!912153) b!1368522))

(assert (= (and b!1368522 res!912142) b!1368516))

(assert (= (and b!1368516 res!912143) b!1368518))

(assert (= (and b!1368518 res!912150) b!1368520))

(assert (= (and b!1368520 res!912144) b!1368521))

(assert (= (and b!1368521 res!912152) b!1368524))

(assert (= (and b!1368524 res!912151) b!1368513))

(assert (= (and b!1368513 res!912145) b!1368514))

(assert (= (and b!1368514 res!912146) b!1368515))

(assert (= (and b!1368515 res!912149) b!1368523))

(declare-fun m!1252475 () Bool)

(assert (=> b!1368517 m!1252475))

(declare-fun m!1252477 () Bool)

(assert (=> b!1368515 m!1252477))

(declare-fun m!1252479 () Bool)

(assert (=> b!1368520 m!1252479))

(declare-fun m!1252481 () Bool)

(assert (=> b!1368522 m!1252481))

(declare-fun m!1252483 () Bool)

(assert (=> b!1368516 m!1252483))

(declare-fun m!1252485 () Bool)

(assert (=> b!1368518 m!1252485))

(declare-fun m!1252487 () Bool)

(assert (=> b!1368521 m!1252487))

(declare-fun m!1252489 () Bool)

(assert (=> b!1368521 m!1252489))

(declare-fun m!1252491 () Bool)

(assert (=> b!1368513 m!1252491))

(assert (=> b!1368513 m!1252491))

(declare-fun m!1252493 () Bool)

(assert (=> b!1368513 m!1252493))

(declare-fun m!1252495 () Bool)

(assert (=> b!1368519 m!1252495))

(declare-fun m!1252497 () Bool)

(assert (=> start!115768 m!1252497))

(declare-fun m!1252499 () Bool)

(assert (=> b!1368523 m!1252499))

(declare-fun m!1252501 () Bool)

(assert (=> b!1368523 m!1252501))

(check-sat (not start!115768) (not b!1368518) (not b!1368519) (not b!1368521) (not b!1368513) (not b!1368515) (not b!1368520) (not b!1368516) (not b!1368523) (not b!1368522) (not b!1368517))
(check-sat)
