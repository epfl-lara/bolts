; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!115738 () Bool)

(assert start!115738)

(declare-fun b!1368013 () Bool)

(declare-fun res!911652 () Bool)

(declare-fun e!775217 () Bool)

(assert (=> b!1368013 (=> (not res!911652) (not e!775217))))

(declare-datatypes ((List!32094 0))(
  ( (Nil!32091) (Cons!32090 (h!33299 (_ BitVec 64)) (t!46795 List!32094)) )
))
(declare-fun acc!866 () List!32094)

(declare-fun contains!9632 (List!32094 (_ BitVec 64)) Bool)

(assert (=> b!1368013 (= res!911652 (not (contains!9632 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1368014 () Bool)

(declare-fun res!911651 () Bool)

(declare-fun e!775218 () Bool)

(assert (=> b!1368014 (=> (not res!911651) (not e!775218))))

(declare-fun from!3239 () (_ BitVec 32))

(assert (=> b!1368014 (= res!911651 (bvsge (bvadd #b00000000000000000000000000000001 from!3239) #b00000000000000000000000000000000))))

(declare-fun b!1368015 () Bool)

(declare-fun res!911646 () Bool)

(assert (=> b!1368015 (=> (not res!911646) (not e!775217))))

(declare-fun newAcc!98 () List!32094)

(assert (=> b!1368015 (= res!911646 (not (contains!9632 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!911645 () Bool)

(assert (=> start!115738 (=> (not res!911645) (not e!775217))))

(declare-datatypes ((array!92853 0))(
  ( (array!92854 (arr!44846 (Array (_ BitVec 32) (_ BitVec 64))) (size!45397 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92853)

(assert (=> start!115738 (= res!911645 (and (bvslt (size!45397 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45397 a!3861))))))

(assert (=> start!115738 e!775217))

(declare-fun array_inv!33791 (array!92853) Bool)

(assert (=> start!115738 (array_inv!33791 a!3861)))

(assert (=> start!115738 true))

(declare-fun b!1368016 () Bool)

(declare-fun res!911649 () Bool)

(assert (=> b!1368016 (=> (not res!911649) (not e!775217))))

(declare-fun subseq!1023 (List!32094 List!32094) Bool)

(assert (=> b!1368016 (= res!911649 (subseq!1023 newAcc!98 acc!866))))

(declare-fun b!1368017 () Bool)

(assert (=> b!1368017 (= e!775218 false)))

(declare-fun lt!601939 () Bool)

(declare-fun arrayNoDuplicates!0 (array!92853 (_ BitVec 32) List!32094) Bool)

(assert (=> b!1368017 (= lt!601939 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) acc!866))))

(declare-fun b!1368018 () Bool)

(declare-fun res!911650 () Bool)

(assert (=> b!1368018 (=> (not res!911650) (not e!775218))))

(assert (=> b!1368018 (= res!911650 (bvslt from!3239 (size!45397 a!3861)))))

(declare-fun b!1368019 () Bool)

(declare-fun res!911643 () Bool)

(assert (=> b!1368019 (=> (not res!911643) (not e!775217))))

(declare-fun noDuplicate!2511 (List!32094) Bool)

(assert (=> b!1368019 (= res!911643 (noDuplicate!2511 acc!866))))

(declare-fun b!1368020 () Bool)

(assert (=> b!1368020 (= e!775217 e!775218)))

(declare-fun res!911642 () Bool)

(assert (=> b!1368020 (=> (not res!911642) (not e!775218))))

(assert (=> b!1368020 (= res!911642 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45127 0))(
  ( (Unit!45128) )
))
(declare-fun lt!601940 () Unit!45127)

(declare-fun noDuplicateSubseq!210 (List!32094 List!32094) Unit!45127)

(assert (=> b!1368020 (= lt!601940 (noDuplicateSubseq!210 newAcc!98 acc!866))))

(declare-fun b!1368021 () Bool)

(declare-fun res!911644 () Bool)

(assert (=> b!1368021 (=> (not res!911644) (not e!775217))))

(assert (=> b!1368021 (= res!911644 (not (contains!9632 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1368022 () Bool)

(declare-fun res!911647 () Bool)

(assert (=> b!1368022 (=> (not res!911647) (not e!775218))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1368022 (= res!911647 (not (validKeyInArray!0 (select (arr!44846 a!3861) from!3239))))))

(declare-fun b!1368023 () Bool)

(declare-fun res!911648 () Bool)

(assert (=> b!1368023 (=> (not res!911648) (not e!775217))))

(assert (=> b!1368023 (= res!911648 (not (contains!9632 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!115738 res!911645) b!1368019))

(assert (= (and b!1368019 res!911643) b!1368023))

(assert (= (and b!1368023 res!911648) b!1368013))

(assert (= (and b!1368013 res!911652) b!1368021))

(assert (= (and b!1368021 res!911644) b!1368015))

(assert (= (and b!1368015 res!911646) b!1368016))

(assert (= (and b!1368016 res!911649) b!1368020))

(assert (= (and b!1368020 res!911642) b!1368018))

(assert (= (and b!1368018 res!911650) b!1368022))

(assert (= (and b!1368022 res!911647) b!1368014))

(assert (= (and b!1368014 res!911651) b!1368017))

(declare-fun m!1252111 () Bool)

(assert (=> b!1368021 m!1252111))

(declare-fun m!1252113 () Bool)

(assert (=> b!1368020 m!1252113))

(declare-fun m!1252115 () Bool)

(assert (=> b!1368020 m!1252115))

(declare-fun m!1252117 () Bool)

(assert (=> b!1368023 m!1252117))

(declare-fun m!1252119 () Bool)

(assert (=> b!1368022 m!1252119))

(assert (=> b!1368022 m!1252119))

(declare-fun m!1252121 () Bool)

(assert (=> b!1368022 m!1252121))

(declare-fun m!1252123 () Bool)

(assert (=> start!115738 m!1252123))

(declare-fun m!1252125 () Bool)

(assert (=> b!1368019 m!1252125))

(declare-fun m!1252127 () Bool)

(assert (=> b!1368016 m!1252127))

(declare-fun m!1252129 () Bool)

(assert (=> b!1368017 m!1252129))

(declare-fun m!1252131 () Bool)

(assert (=> b!1368015 m!1252131))

(declare-fun m!1252133 () Bool)

(assert (=> b!1368013 m!1252133))

(check-sat (not b!1368021) (not b!1368015) (not b!1368019) (not b!1368022) (not b!1368017) (not b!1368023) (not b!1368016) (not b!1368013) (not start!115738) (not b!1368020))
(check-sat)
