; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113950 () Bool)

(assert start!113950)

(declare-fun b!1350870 () Bool)

(declare-fun res!896460 () Bool)

(declare-fun e!768391 () Bool)

(assert (=> b!1350870 (=> (not res!896460) (not e!768391))))

(declare-datatypes ((List!31692 0))(
  ( (Nil!31689) (Cons!31688 (h!32897 (_ BitVec 64)) (t!46357 List!31692)) )
))
(declare-fun acc!759 () List!31692)

(declare-fun contains!9257 (List!31692 (_ BitVec 64)) Bool)

(assert (=> b!1350870 (= res!896460 (not (contains!9257 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1350871 () Bool)

(declare-fun e!768390 () Bool)

(assert (=> b!1350871 (= e!768390 true)))

(declare-fun lt!597036 () List!31692)

(declare-fun lt!597038 () Bool)

(declare-datatypes ((array!92055 0))(
  ( (array!92056 (arr!44471 (Array (_ BitVec 32) (_ BitVec 64))) (size!45022 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92055)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!92055 (_ BitVec 32) List!31692) Bool)

(assert (=> b!1350871 (= lt!597038 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) lt!597036))))

(declare-datatypes ((Unit!44194 0))(
  ( (Unit!44195) )
))
(declare-fun lt!597037 () Unit!44194)

(declare-fun noDuplicateSubseq!117 (List!31692 List!31692) Unit!44194)

(assert (=> b!1350871 (= lt!597037 (noDuplicateSubseq!117 acc!759 lt!597036))))

(declare-fun b!1350872 () Bool)

(declare-fun res!896454 () Bool)

(assert (=> b!1350872 (=> res!896454 e!768390)))

(assert (=> b!1350872 (= res!896454 (contains!9257 lt!597036 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!896451 () Bool)

(assert (=> start!113950 (=> (not res!896451) (not e!768391))))

(assert (=> start!113950 (= res!896451 (and (bvslt (size!45022 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45022 a!3742))))))

(assert (=> start!113950 e!768391))

(assert (=> start!113950 true))

(declare-fun array_inv!33416 (array!92055) Bool)

(assert (=> start!113950 (array_inv!33416 a!3742)))

(declare-fun b!1350873 () Bool)

(declare-fun res!896453 () Bool)

(assert (=> b!1350873 (=> (not res!896453) (not e!768391))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1350873 (= res!896453 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45022 a!3742))))))

(declare-fun b!1350874 () Bool)

(declare-fun res!896450 () Bool)

(assert (=> b!1350874 (=> (not res!896450) (not e!768391))))

(assert (=> b!1350874 (= res!896450 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45022 a!3742)))))

(declare-fun b!1350875 () Bool)

(declare-fun res!896452 () Bool)

(assert (=> b!1350875 (=> (not res!896452) (not e!768391))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1350875 (= res!896452 (validKeyInArray!0 (select (arr!44471 a!3742) from!3120)))))

(declare-fun b!1350876 () Bool)

(declare-fun res!896459 () Bool)

(assert (=> b!1350876 (=> res!896459 e!768390)))

(assert (=> b!1350876 (= res!896459 (contains!9257 lt!597036 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1350877 () Bool)

(declare-fun res!896449 () Bool)

(assert (=> b!1350877 (=> (not res!896449) (not e!768391))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1350877 (= res!896449 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1350878 () Bool)

(declare-fun res!896462 () Bool)

(assert (=> b!1350878 (=> (not res!896462) (not e!768391))))

(assert (=> b!1350878 (= res!896462 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1350879 () Bool)

(declare-fun res!896456 () Bool)

(assert (=> b!1350879 (=> (not res!896456) (not e!768391))))

(assert (=> b!1350879 (= res!896456 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31689))))

(declare-fun b!1350880 () Bool)

(declare-fun res!896455 () Bool)

(assert (=> b!1350880 (=> (not res!896455) (not e!768391))))

(assert (=> b!1350880 (= res!896455 (not (contains!9257 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1350881 () Bool)

(assert (=> b!1350881 (= e!768391 (not e!768390))))

(declare-fun res!896463 () Bool)

(assert (=> b!1350881 (=> res!896463 e!768390)))

(assert (=> b!1350881 (= res!896463 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!683 (List!31692 (_ BitVec 64)) List!31692)

(assert (=> b!1350881 (= lt!597036 ($colon$colon!683 acc!759 (select (arr!44471 a!3742) from!3120)))))

(declare-fun subseq!666 (List!31692 List!31692) Bool)

(assert (=> b!1350881 (subseq!666 acc!759 acc!759)))

(declare-fun lt!597035 () Unit!44194)

(declare-fun lemmaListSubSeqRefl!0 (List!31692) Unit!44194)

(assert (=> b!1350881 (= lt!597035 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun b!1350882 () Bool)

(declare-fun res!896457 () Bool)

(assert (=> b!1350882 (=> res!896457 e!768390)))

(declare-fun noDuplicate!2136 (List!31692) Bool)

(assert (=> b!1350882 (= res!896457 (not (noDuplicate!2136 lt!597036)))))

(declare-fun b!1350883 () Bool)

(declare-fun res!896461 () Bool)

(assert (=> b!1350883 (=> (not res!896461) (not e!768391))))

(assert (=> b!1350883 (= res!896461 (noDuplicate!2136 acc!759))))

(declare-fun b!1350884 () Bool)

(declare-fun res!896458 () Bool)

(assert (=> b!1350884 (=> res!896458 e!768390)))

(assert (=> b!1350884 (= res!896458 (not (subseq!666 acc!759 lt!597036)))))

(assert (= (and start!113950 res!896451) b!1350883))

(assert (= (and b!1350883 res!896461) b!1350870))

(assert (= (and b!1350870 res!896460) b!1350880))

(assert (= (and b!1350880 res!896455) b!1350879))

(assert (= (and b!1350879 res!896456) b!1350878))

(assert (= (and b!1350878 res!896462) b!1350873))

(assert (= (and b!1350873 res!896453) b!1350877))

(assert (= (and b!1350877 res!896449) b!1350874))

(assert (= (and b!1350874 res!896450) b!1350875))

(assert (= (and b!1350875 res!896452) b!1350881))

(assert (= (and b!1350881 (not res!896463)) b!1350882))

(assert (= (and b!1350882 (not res!896457)) b!1350876))

(assert (= (and b!1350876 (not res!896459)) b!1350872))

(assert (= (and b!1350872 (not res!896454)) b!1350884))

(assert (= (and b!1350884 (not res!896458)) b!1350871))

(declare-fun m!1238029 () Bool)

(assert (=> b!1350880 m!1238029))

(declare-fun m!1238031 () Bool)

(assert (=> b!1350872 m!1238031))

(declare-fun m!1238033 () Bool)

(assert (=> b!1350883 m!1238033))

(declare-fun m!1238035 () Bool)

(assert (=> b!1350877 m!1238035))

(declare-fun m!1238037 () Bool)

(assert (=> b!1350871 m!1238037))

(declare-fun m!1238039 () Bool)

(assert (=> b!1350871 m!1238039))

(declare-fun m!1238041 () Bool)

(assert (=> b!1350870 m!1238041))

(declare-fun m!1238043 () Bool)

(assert (=> b!1350879 m!1238043))

(declare-fun m!1238045 () Bool)

(assert (=> b!1350881 m!1238045))

(assert (=> b!1350881 m!1238045))

(declare-fun m!1238047 () Bool)

(assert (=> b!1350881 m!1238047))

(declare-fun m!1238049 () Bool)

(assert (=> b!1350881 m!1238049))

(declare-fun m!1238051 () Bool)

(assert (=> b!1350881 m!1238051))

(declare-fun m!1238053 () Bool)

(assert (=> b!1350884 m!1238053))

(declare-fun m!1238055 () Bool)

(assert (=> b!1350878 m!1238055))

(declare-fun m!1238057 () Bool)

(assert (=> b!1350876 m!1238057))

(declare-fun m!1238059 () Bool)

(assert (=> start!113950 m!1238059))

(assert (=> b!1350875 m!1238045))

(assert (=> b!1350875 m!1238045))

(declare-fun m!1238061 () Bool)

(assert (=> b!1350875 m!1238061))

(declare-fun m!1238063 () Bool)

(assert (=> b!1350882 m!1238063))

(check-sat (not b!1350882) (not b!1350871) (not b!1350879) (not b!1350877) (not start!113950) (not b!1350875) (not b!1350880) (not b!1350872) (not b!1350881) (not b!1350883) (not b!1350870) (not b!1350884) (not b!1350878) (not b!1350876))
