; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!115516 () Bool)

(assert start!115516)

(declare-fun b!1366032 () Bool)

(declare-fun e!774337 () Bool)

(assert (=> b!1366032 (= e!774337 false)))

(declare-datatypes ((array!92760 0))(
  ( (array!92761 (arr!44804 (Array (_ BitVec 32) (_ BitVec 64))) (size!45355 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92760)

(declare-fun from!3239 () (_ BitVec 32))

(declare-datatypes ((List!32052 0))(
  ( (Nil!32049) (Cons!32048 (h!33257 (_ BitVec 64)) (t!46753 List!32052)) )
))
(declare-fun lt!601415 () List!32052)

(declare-fun lt!601412 () Bool)

(declare-fun arrayNoDuplicates!0 (array!92760 (_ BitVec 32) List!32052) Bool)

(assert (=> b!1366032 (= lt!601412 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) lt!601415))))

(declare-datatypes ((Unit!45043 0))(
  ( (Unit!45044) )
))
(declare-fun lt!601411 () Unit!45043)

(declare-fun lt!601413 () List!32052)

(declare-fun noDuplicateSubseq!168 (List!32052 List!32052) Unit!45043)

(assert (=> b!1366032 (= lt!601411 (noDuplicateSubseq!168 lt!601413 lt!601415))))

(declare-fun b!1366033 () Bool)

(declare-fun res!909730 () Bool)

(declare-fun e!774340 () Bool)

(assert (=> b!1366033 (=> (not res!909730) (not e!774340))))

(declare-fun newAcc!98 () List!32052)

(declare-fun contains!9590 (List!32052 (_ BitVec 64)) Bool)

(assert (=> b!1366033 (= res!909730 (not (contains!9590 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1366034 () Bool)

(declare-fun res!909733 () Bool)

(assert (=> b!1366034 (=> (not res!909733) (not e!774340))))

(declare-fun acc!866 () List!32052)

(assert (=> b!1366034 (= res!909733 (not (contains!9590 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1366035 () Bool)

(declare-fun res!909743 () Bool)

(assert (=> b!1366035 (=> (not res!909743) (not e!774340))))

(declare-fun noDuplicate!2469 (List!32052) Bool)

(assert (=> b!1366035 (= res!909743 (noDuplicate!2469 acc!866))))

(declare-fun b!1366036 () Bool)

(declare-fun res!909740 () Bool)

(assert (=> b!1366036 (=> (not res!909740) (not e!774337))))

(assert (=> b!1366036 (= res!909740 (not (contains!9590 lt!601415 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1366037 () Bool)

(declare-fun res!909729 () Bool)

(assert (=> b!1366037 (=> (not res!909729) (not e!774337))))

(assert (=> b!1366037 (= res!909729 (not (contains!9590 lt!601413 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1366038 () Bool)

(declare-fun res!909727 () Bool)

(assert (=> b!1366038 (=> (not res!909727) (not e!774340))))

(declare-fun subseq!981 (List!32052 List!32052) Bool)

(assert (=> b!1366038 (= res!909727 (subseq!981 newAcc!98 acc!866))))

(declare-fun b!1366039 () Bool)

(declare-fun e!774339 () Bool)

(assert (=> b!1366039 (= e!774340 e!774339)))

(declare-fun res!909728 () Bool)

(assert (=> b!1366039 (=> (not res!909728) (not e!774339))))

(assert (=> b!1366039 (= res!909728 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-fun lt!601414 () Unit!45043)

(assert (=> b!1366039 (= lt!601414 (noDuplicateSubseq!168 newAcc!98 acc!866))))

(declare-fun b!1366040 () Bool)

(declare-fun res!909736 () Bool)

(assert (=> b!1366040 (=> (not res!909736) (not e!774339))))

(assert (=> b!1366040 (= res!909736 (not (contains!9590 acc!866 (select (arr!44804 a!3861) from!3239))))))

(declare-fun b!1366041 () Bool)

(declare-fun res!909744 () Bool)

(assert (=> b!1366041 (=> (not res!909744) (not e!774337))))

(assert (=> b!1366041 (= res!909744 (not (contains!9590 lt!601413 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1366042 () Bool)

(declare-fun res!909739 () Bool)

(assert (=> b!1366042 (=> (not res!909739) (not e!774340))))

(assert (=> b!1366042 (= res!909739 (not (contains!9590 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1366043 () Bool)

(assert (=> b!1366043 (= e!774339 e!774337)))

(declare-fun res!909731 () Bool)

(assert (=> b!1366043 (=> (not res!909731) (not e!774337))))

(assert (=> b!1366043 (= res!909731 (bvsge (bvadd #b00000000000000000000000000000001 from!3239) #b00000000000000000000000000000000))))

(assert (=> b!1366043 (= lt!601413 (Cons!32048 (select (arr!44804 a!3861) from!3239) newAcc!98))))

(assert (=> b!1366043 (= lt!601415 (Cons!32048 (select (arr!44804 a!3861) from!3239) acc!866))))

(declare-fun res!909738 () Bool)

(assert (=> start!115516 (=> (not res!909738) (not e!774340))))

(assert (=> start!115516 (= res!909738 (and (bvslt (size!45355 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45355 a!3861))))))

(assert (=> start!115516 e!774340))

(declare-fun array_inv!33749 (array!92760) Bool)

(assert (=> start!115516 (array_inv!33749 a!3861)))

(assert (=> start!115516 true))

(declare-fun b!1366044 () Bool)

(declare-fun res!909734 () Bool)

(assert (=> b!1366044 (=> (not res!909734) (not e!774339))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1366044 (= res!909734 (validKeyInArray!0 (select (arr!44804 a!3861) from!3239)))))

(declare-fun b!1366045 () Bool)

(declare-fun res!909742 () Bool)

(assert (=> b!1366045 (=> (not res!909742) (not e!774337))))

(assert (=> b!1366045 (= res!909742 (noDuplicate!2469 lt!601415))))

(declare-fun b!1366046 () Bool)

(declare-fun res!909735 () Bool)

(assert (=> b!1366046 (=> (not res!909735) (not e!774339))))

(assert (=> b!1366046 (= res!909735 (bvslt from!3239 (size!45355 a!3861)))))

(declare-fun b!1366047 () Bool)

(declare-fun res!909732 () Bool)

(assert (=> b!1366047 (=> (not res!909732) (not e!774337))))

(assert (=> b!1366047 (= res!909732 (subseq!981 lt!601413 lt!601415))))

(declare-fun b!1366048 () Bool)

(declare-fun res!909737 () Bool)

(assert (=> b!1366048 (=> (not res!909737) (not e!774340))))

(assert (=> b!1366048 (= res!909737 (not (contains!9590 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1366049 () Bool)

(declare-fun res!909741 () Bool)

(assert (=> b!1366049 (=> (not res!909741) (not e!774337))))

(assert (=> b!1366049 (= res!909741 (not (contains!9590 lt!601415 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!115516 res!909738) b!1366035))

(assert (= (and b!1366035 res!909743) b!1366034))

(assert (= (and b!1366034 res!909733) b!1366042))

(assert (= (and b!1366042 res!909739) b!1366033))

(assert (= (and b!1366033 res!909730) b!1366048))

(assert (= (and b!1366048 res!909737) b!1366038))

(assert (= (and b!1366038 res!909727) b!1366039))

(assert (= (and b!1366039 res!909728) b!1366046))

(assert (= (and b!1366046 res!909735) b!1366044))

(assert (= (and b!1366044 res!909734) b!1366040))

(assert (= (and b!1366040 res!909736) b!1366043))

(assert (= (and b!1366043 res!909731) b!1366045))

(assert (= (and b!1366045 res!909742) b!1366036))

(assert (= (and b!1366036 res!909740) b!1366049))

(assert (= (and b!1366049 res!909741) b!1366037))

(assert (= (and b!1366037 res!909729) b!1366041))

(assert (= (and b!1366041 res!909744) b!1366047))

(assert (= (and b!1366047 res!909732) b!1366032))

(declare-fun m!1250441 () Bool)

(assert (=> b!1366037 m!1250441))

(declare-fun m!1250443 () Bool)

(assert (=> b!1366039 m!1250443))

(declare-fun m!1250445 () Bool)

(assert (=> b!1366039 m!1250445))

(declare-fun m!1250447 () Bool)

(assert (=> b!1366041 m!1250447))

(declare-fun m!1250449 () Bool)

(assert (=> b!1366034 m!1250449))

(declare-fun m!1250451 () Bool)

(assert (=> b!1366047 m!1250451))

(declare-fun m!1250453 () Bool)

(assert (=> b!1366042 m!1250453))

(declare-fun m!1250455 () Bool)

(assert (=> start!115516 m!1250455))

(declare-fun m!1250457 () Bool)

(assert (=> b!1366036 m!1250457))

(declare-fun m!1250459 () Bool)

(assert (=> b!1366033 m!1250459))

(declare-fun m!1250461 () Bool)

(assert (=> b!1366040 m!1250461))

(assert (=> b!1366040 m!1250461))

(declare-fun m!1250463 () Bool)

(assert (=> b!1366040 m!1250463))

(assert (=> b!1366044 m!1250461))

(assert (=> b!1366044 m!1250461))

(declare-fun m!1250465 () Bool)

(assert (=> b!1366044 m!1250465))

(declare-fun m!1250467 () Bool)

(assert (=> b!1366038 m!1250467))

(declare-fun m!1250469 () Bool)

(assert (=> b!1366049 m!1250469))

(declare-fun m!1250471 () Bool)

(assert (=> b!1366032 m!1250471))

(declare-fun m!1250473 () Bool)

(assert (=> b!1366032 m!1250473))

(assert (=> b!1366043 m!1250461))

(declare-fun m!1250475 () Bool)

(assert (=> b!1366048 m!1250475))

(declare-fun m!1250477 () Bool)

(assert (=> b!1366035 m!1250477))

(declare-fun m!1250479 () Bool)

(assert (=> b!1366045 m!1250479))

(check-sat (not b!1366041) (not b!1366037) (not b!1366042) (not b!1366036) (not b!1366032) (not b!1366035) (not b!1366040) (not b!1366044) (not b!1366047) (not b!1366034) (not b!1366039) (not b!1366049) (not b!1366033) (not start!115516) (not b!1366038) (not b!1366048) (not b!1366045))
(check-sat)
