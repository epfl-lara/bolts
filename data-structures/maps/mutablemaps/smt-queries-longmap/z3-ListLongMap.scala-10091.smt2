; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!118950 () Bool)

(assert start!118950)

(declare-fun b!1388585 () Bool)

(declare-fun e!786623 () Bool)

(declare-datatypes ((List!32529 0))(
  ( (Nil!32526) (Cons!32525 (h!33740 (_ BitVec 64)) (t!47230 List!32529)) )
))
(declare-fun noDuplicate!2634 (List!32529) Bool)

(assert (=> b!1388585 (= e!786623 (not (noDuplicate!2634 Nil!32526)))))

(declare-fun b!1388586 () Bool)

(declare-fun res!928963 () Bool)

(assert (=> b!1388586 (=> (not res!928963) (not e!786623))))

(declare-datatypes ((array!94925 0))(
  ( (array!94926 (arr!45830 (Array (_ BitVec 32) (_ BitVec 64))) (size!46381 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!94925)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1388586 (= res!928963 (validKeyInArray!0 (select (arr!45830 a!2901) j!112)))))

(declare-fun res!928960 () Bool)

(assert (=> start!118950 (=> (not res!928960) (not e!786623))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118950 (= res!928960 (validMask!0 mask!2840))))

(assert (=> start!118950 e!786623))

(assert (=> start!118950 true))

(declare-fun array_inv!34775 (array!94925) Bool)

(assert (=> start!118950 (array_inv!34775 a!2901)))

(declare-fun b!1388587 () Bool)

(declare-fun res!928964 () Bool)

(assert (=> b!1388587 (=> (not res!928964) (not e!786623))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1388587 (= res!928964 (and (= (size!46381 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46381 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46381 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1388588 () Bool)

(declare-fun res!928965 () Bool)

(assert (=> b!1388588 (=> (not res!928965) (not e!786623))))

(assert (=> b!1388588 (= res!928965 (validKeyInArray!0 (select (arr!45830 a!2901) i!1037)))))

(declare-fun b!1388589 () Bool)

(declare-fun res!928962 () Bool)

(assert (=> b!1388589 (=> (not res!928962) (not e!786623))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94925 (_ BitVec 32)) Bool)

(assert (=> b!1388589 (= res!928962 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1388590 () Bool)

(declare-fun res!928961 () Bool)

(assert (=> b!1388590 (=> (not res!928961) (not e!786623))))

(assert (=> b!1388590 (= res!928961 (and (bvsle #b00000000000000000000000000000000 (size!46381 a!2901)) (bvslt (size!46381 a!2901) #b01111111111111111111111111111111)))))

(assert (= (and start!118950 res!928960) b!1388587))

(assert (= (and b!1388587 res!928964) b!1388588))

(assert (= (and b!1388588 res!928965) b!1388586))

(assert (= (and b!1388586 res!928963) b!1388589))

(assert (= (and b!1388589 res!928962) b!1388590))

(assert (= (and b!1388590 res!928961) b!1388585))

(declare-fun m!1274385 () Bool)

(assert (=> b!1388586 m!1274385))

(assert (=> b!1388586 m!1274385))

(declare-fun m!1274387 () Bool)

(assert (=> b!1388586 m!1274387))

(declare-fun m!1274389 () Bool)

(assert (=> b!1388589 m!1274389))

(declare-fun m!1274391 () Bool)

(assert (=> start!118950 m!1274391))

(declare-fun m!1274393 () Bool)

(assert (=> start!118950 m!1274393))

(declare-fun m!1274395 () Bool)

(assert (=> b!1388585 m!1274395))

(declare-fun m!1274397 () Bool)

(assert (=> b!1388588 m!1274397))

(assert (=> b!1388588 m!1274397))

(declare-fun m!1274399 () Bool)

(assert (=> b!1388588 m!1274399))

(check-sat (not b!1388586) (not start!118950) (not b!1388585) (not b!1388588) (not b!1388589))
(check-sat)
(get-model)

(declare-fun d!149911 () Bool)

(assert (=> d!149911 (= (validKeyInArray!0 (select (arr!45830 a!2901) i!1037)) (and (not (= (select (arr!45830 a!2901) i!1037) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45830 a!2901) i!1037) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1388588 d!149911))

(declare-fun d!149913 () Bool)

(assert (=> d!149913 (= (validKeyInArray!0 (select (arr!45830 a!2901) j!112)) (and (not (= (select (arr!45830 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45830 a!2901) j!112) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1388586 d!149913))

(declare-fun d!149915 () Bool)

(assert (=> d!149915 (= (validMask!0 mask!2840) (and (or (= mask!2840 #b00000000000000000000000000000111) (= mask!2840 #b00000000000000000000000000001111) (= mask!2840 #b00000000000000000000000000011111) (= mask!2840 #b00000000000000000000000000111111) (= mask!2840 #b00000000000000000000000001111111) (= mask!2840 #b00000000000000000000000011111111) (= mask!2840 #b00000000000000000000000111111111) (= mask!2840 #b00000000000000000000001111111111) (= mask!2840 #b00000000000000000000011111111111) (= mask!2840 #b00000000000000000000111111111111) (= mask!2840 #b00000000000000000001111111111111) (= mask!2840 #b00000000000000000011111111111111) (= mask!2840 #b00000000000000000111111111111111) (= mask!2840 #b00000000000000001111111111111111) (= mask!2840 #b00000000000000011111111111111111) (= mask!2840 #b00000000000000111111111111111111) (= mask!2840 #b00000000000001111111111111111111) (= mask!2840 #b00000000000011111111111111111111) (= mask!2840 #b00000000000111111111111111111111) (= mask!2840 #b00000000001111111111111111111111) (= mask!2840 #b00000000011111111111111111111111) (= mask!2840 #b00000000111111111111111111111111) (= mask!2840 #b00000001111111111111111111111111) (= mask!2840 #b00000011111111111111111111111111) (= mask!2840 #b00000111111111111111111111111111) (= mask!2840 #b00001111111111111111111111111111) (= mask!2840 #b00011111111111111111111111111111) (= mask!2840 #b00111111111111111111111111111111)) (bvsle mask!2840 #b00111111111111111111111111111111)))))

(assert (=> start!118950 d!149915))

(declare-fun d!149925 () Bool)

(assert (=> d!149925 (= (array_inv!34775 a!2901) (bvsge (size!46381 a!2901) #b00000000000000000000000000000000))))

(assert (=> start!118950 d!149925))

(declare-fun d!149927 () Bool)

(declare-fun res!929000 () Bool)

(declare-fun e!786649 () Bool)

(assert (=> d!149927 (=> res!929000 e!786649)))

(get-info :version)

(assert (=> d!149927 (= res!929000 ((_ is Nil!32526) Nil!32526))))

(assert (=> d!149927 (= (noDuplicate!2634 Nil!32526) e!786649)))

(declare-fun b!1388631 () Bool)

(declare-fun e!786650 () Bool)

(assert (=> b!1388631 (= e!786649 e!786650)))

(declare-fun res!929001 () Bool)

(assert (=> b!1388631 (=> (not res!929001) (not e!786650))))

(declare-fun contains!9762 (List!32529 (_ BitVec 64)) Bool)

(assert (=> b!1388631 (= res!929001 (not (contains!9762 (t!47230 Nil!32526) (h!33740 Nil!32526))))))

(declare-fun b!1388632 () Bool)

(assert (=> b!1388632 (= e!786650 (noDuplicate!2634 (t!47230 Nil!32526)))))

(assert (= (and d!149927 (not res!929000)) b!1388631))

(assert (= (and b!1388631 res!929001) b!1388632))

(declare-fun m!1274433 () Bool)

(assert (=> b!1388631 m!1274433))

(declare-fun m!1274435 () Bool)

(assert (=> b!1388632 m!1274435))

(assert (=> b!1388585 d!149927))

(declare-fun d!149931 () Bool)

(declare-fun res!929013 () Bool)

(declare-fun e!786663 () Bool)

(assert (=> d!149931 (=> res!929013 e!786663)))

(assert (=> d!149931 (= res!929013 (bvsge #b00000000000000000000000000000000 (size!46381 a!2901)))))

(assert (=> d!149931 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840) e!786663)))

(declare-fun b!1388647 () Bool)

(declare-fun e!786665 () Bool)

(assert (=> b!1388647 (= e!786663 e!786665)))

(declare-fun c!129263 () Bool)

(assert (=> b!1388647 (= c!129263 (validKeyInArray!0 (select (arr!45830 a!2901) #b00000000000000000000000000000000)))))

(declare-fun bm!66645 () Bool)

(declare-fun call!66648 () Bool)

(assert (=> bm!66645 (= call!66648 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun b!1388648 () Bool)

(declare-fun e!786664 () Bool)

(assert (=> b!1388648 (= e!786664 call!66648)))

(declare-fun b!1388649 () Bool)

(assert (=> b!1388649 (= e!786665 e!786664)))

(declare-fun lt!610339 () (_ BitVec 64))

(assert (=> b!1388649 (= lt!610339 (select (arr!45830 a!2901) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!46362 0))(
  ( (Unit!46363) )
))
(declare-fun lt!610337 () Unit!46362)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!94925 (_ BitVec 64) (_ BitVec 32)) Unit!46362)

(assert (=> b!1388649 (= lt!610337 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!610339 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!94925 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1388649 (arrayContainsKey!0 a!2901 lt!610339 #b00000000000000000000000000000000)))

(declare-fun lt!610338 () Unit!46362)

(assert (=> b!1388649 (= lt!610338 lt!610337)))

(declare-fun res!929012 () Bool)

(declare-datatypes ((SeekEntryResult!10189 0))(
  ( (MissingZero!10189 (index!43126 (_ BitVec 32))) (Found!10189 (index!43127 (_ BitVec 32))) (Intermediate!10189 (undefined!11001 Bool) (index!43128 (_ BitVec 32)) (x!124771 (_ BitVec 32))) (Undefined!10189) (MissingVacant!10189 (index!43129 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94925 (_ BitVec 32)) SeekEntryResult!10189)

(assert (=> b!1388649 (= res!929012 (= (seekEntryOrOpen!0 (select (arr!45830 a!2901) #b00000000000000000000000000000000) a!2901 mask!2840) (Found!10189 #b00000000000000000000000000000000)))))

(assert (=> b!1388649 (=> (not res!929012) (not e!786664))))

(declare-fun b!1388650 () Bool)

(assert (=> b!1388650 (= e!786665 call!66648)))

(assert (= (and d!149931 (not res!929013)) b!1388647))

(assert (= (and b!1388647 c!129263) b!1388649))

(assert (= (and b!1388647 (not c!129263)) b!1388650))

(assert (= (and b!1388649 res!929012) b!1388648))

(assert (= (or b!1388648 b!1388650) bm!66645))

(declare-fun m!1274441 () Bool)

(assert (=> b!1388647 m!1274441))

(assert (=> b!1388647 m!1274441))

(declare-fun m!1274443 () Bool)

(assert (=> b!1388647 m!1274443))

(declare-fun m!1274445 () Bool)

(assert (=> bm!66645 m!1274445))

(assert (=> b!1388649 m!1274441))

(declare-fun m!1274447 () Bool)

(assert (=> b!1388649 m!1274447))

(declare-fun m!1274449 () Bool)

(assert (=> b!1388649 m!1274449))

(assert (=> b!1388649 m!1274441))

(declare-fun m!1274451 () Bool)

(assert (=> b!1388649 m!1274451))

(assert (=> b!1388589 d!149931))

(check-sat (not b!1388631) (not b!1388647) (not b!1388649) (not b!1388632) (not bm!66645))
(check-sat)
