; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!114070 () Bool)

(assert start!114070)

(declare-fun res!898598 () Bool)

(declare-fun e!769078 () Bool)

(assert (=> start!114070 (=> (not res!898598) (not e!769078))))

(declare-datatypes ((array!92175 0))(
  ( (array!92176 (arr!44531 (Array (_ BitVec 32) (_ BitVec 64))) (size!45082 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92175)

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> start!114070 (= res!898598 (and (bvslt (size!45082 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45082 a!3742))))))

(assert (=> start!114070 e!769078))

(assert (=> start!114070 true))

(declare-fun array_inv!33476 (array!92175) Bool)

(assert (=> start!114070 (array_inv!33476 a!3742)))

(declare-fun b!1353269 () Bool)

(declare-datatypes ((Unit!44357 0))(
  ( (Unit!44358) )
))
(declare-fun e!769075 () Unit!44357)

(declare-fun lt!597788 () Unit!44357)

(assert (=> b!1353269 (= e!769075 lt!597788)))

(declare-fun lt!597784 () Unit!44357)

(declare-datatypes ((List!31752 0))(
  ( (Nil!31749) (Cons!31748 (h!32957 (_ BitVec 64)) (t!46417 List!31752)) )
))
(declare-fun acc!759 () List!31752)

(declare-fun lemmaListSubSeqRefl!0 (List!31752) Unit!44357)

(assert (=> b!1353269 (= lt!597784 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!726 (List!31752 List!31752) Bool)

(assert (=> b!1353269 (subseq!726 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92175 List!31752 List!31752 (_ BitVec 32)) Unit!44357)

(declare-fun $colon$colon!743 (List!31752 (_ BitVec 64)) List!31752)

(assert (=> b!1353269 (= lt!597788 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!743 acc!759 (select (arr!44531 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(declare-fun arrayNoDuplicates!0 (array!92175 (_ BitVec 32) List!31752) Bool)

(assert (=> b!1353269 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1353270 () Bool)

(declare-fun res!898592 () Bool)

(declare-fun e!769077 () Bool)

(assert (=> b!1353270 (=> (not res!898592) (not e!769077))))

(declare-fun lt!597787 () List!31752)

(declare-fun contains!9317 (List!31752 (_ BitVec 64)) Bool)

(assert (=> b!1353270 (= res!898592 (not (contains!9317 lt!597787 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1353271 () Bool)

(declare-fun res!898593 () Bool)

(assert (=> b!1353271 (=> (not res!898593) (not e!769077))))

(declare-fun noDuplicate!2196 (List!31752) Bool)

(assert (=> b!1353271 (= res!898593 (noDuplicate!2196 lt!597787))))

(declare-fun b!1353272 () Bool)

(declare-fun res!898587 () Bool)

(assert (=> b!1353272 (=> (not res!898587) (not e!769078))))

(assert (=> b!1353272 (= res!898587 (not (contains!9317 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1353273 () Bool)

(declare-fun res!898597 () Bool)

(assert (=> b!1353273 (=> (not res!898597) (not e!769078))))

(assert (=> b!1353273 (= res!898597 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31749))))

(declare-fun b!1353274 () Bool)

(declare-fun res!898595 () Bool)

(assert (=> b!1353274 (=> (not res!898595) (not e!769077))))

(assert (=> b!1353274 (= res!898595 (not (contains!9317 lt!597787 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1353275 () Bool)

(declare-fun res!898596 () Bool)

(assert (=> b!1353275 (=> (not res!898596) (not e!769078))))

(assert (=> b!1353275 (= res!898596 (not (contains!9317 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1353276 () Bool)

(declare-fun res!898588 () Bool)

(assert (=> b!1353276 (=> (not res!898588) (not e!769078))))

(assert (=> b!1353276 (= res!898588 (noDuplicate!2196 acc!759))))

(declare-fun b!1353277 () Bool)

(declare-fun res!898586 () Bool)

(assert (=> b!1353277 (=> (not res!898586) (not e!769078))))

(assert (=> b!1353277 (= res!898586 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1353278 () Bool)

(declare-fun res!898589 () Bool)

(assert (=> b!1353278 (=> (not res!898589) (not e!769078))))

(assert (=> b!1353278 (= res!898589 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45082 a!3742)))))

(declare-fun b!1353279 () Bool)

(declare-fun Unit!44359 () Unit!44357)

(assert (=> b!1353279 (= e!769075 Unit!44359)))

(declare-fun b!1353280 () Bool)

(assert (=> b!1353280 (= e!769077 false)))

(declare-fun lt!597785 () Bool)

(assert (=> b!1353280 (= lt!597785 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) lt!597787))))

(declare-fun b!1353281 () Bool)

(declare-fun e!769076 () Bool)

(assert (=> b!1353281 (= e!769078 e!769076)))

(declare-fun res!898599 () Bool)

(assert (=> b!1353281 (=> (not res!898599) (not e!769076))))

(declare-fun i!1404 () (_ BitVec 32))

(declare-fun lt!597786 () Bool)

(assert (=> b!1353281 (= res!898599 (and (not (= from!3120 i!1404)) lt!597786))))

(declare-fun lt!597783 () Unit!44357)

(assert (=> b!1353281 (= lt!597783 e!769075)))

(declare-fun c!126784 () Bool)

(assert (=> b!1353281 (= c!126784 lt!597786)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1353281 (= lt!597786 (validKeyInArray!0 (select (arr!44531 a!3742) from!3120)))))

(declare-fun b!1353282 () Bool)

(assert (=> b!1353282 (= e!769076 e!769077)))

(declare-fun res!898591 () Bool)

(assert (=> b!1353282 (=> (not res!898591) (not e!769077))))

(assert (=> b!1353282 (= res!898591 (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000))))

(assert (=> b!1353282 (= lt!597787 ($colon$colon!743 acc!759 (select (arr!44531 a!3742) from!3120)))))

(declare-fun b!1353283 () Bool)

(declare-fun res!898590 () Bool)

(assert (=> b!1353283 (=> (not res!898590) (not e!769078))))

(assert (=> b!1353283 (= res!898590 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45082 a!3742))))))

(declare-fun b!1353284 () Bool)

(declare-fun res!898594 () Bool)

(assert (=> b!1353284 (=> (not res!898594) (not e!769078))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1353284 (= res!898594 (not (validKeyInArray!0 l!3587)))))

(assert (= (and start!114070 res!898598) b!1353276))

(assert (= (and b!1353276 res!898588) b!1353275))

(assert (= (and b!1353275 res!898596) b!1353272))

(assert (= (and b!1353272 res!898587) b!1353273))

(assert (= (and b!1353273 res!898597) b!1353277))

(assert (= (and b!1353277 res!898586) b!1353283))

(assert (= (and b!1353283 res!898590) b!1353284))

(assert (= (and b!1353284 res!898594) b!1353278))

(assert (= (and b!1353278 res!898589) b!1353281))

(assert (= (and b!1353281 c!126784) b!1353269))

(assert (= (and b!1353281 (not c!126784)) b!1353279))

(assert (= (and b!1353281 res!898599) b!1353282))

(assert (= (and b!1353282 res!898591) b!1353271))

(assert (= (and b!1353271 res!898593) b!1353270))

(assert (= (and b!1353270 res!898592) b!1353274))

(assert (= (and b!1353274 res!898595) b!1353280))

(declare-fun m!1239949 () Bool)

(assert (=> b!1353274 m!1239949))

(declare-fun m!1239951 () Bool)

(assert (=> b!1353280 m!1239951))

(declare-fun m!1239953 () Bool)

(assert (=> b!1353275 m!1239953))

(declare-fun m!1239955 () Bool)

(assert (=> b!1353277 m!1239955))

(declare-fun m!1239957 () Bool)

(assert (=> b!1353284 m!1239957))

(declare-fun m!1239959 () Bool)

(assert (=> b!1353281 m!1239959))

(assert (=> b!1353281 m!1239959))

(declare-fun m!1239961 () Bool)

(assert (=> b!1353281 m!1239961))

(declare-fun m!1239963 () Bool)

(assert (=> b!1353276 m!1239963))

(declare-fun m!1239965 () Bool)

(assert (=> b!1353270 m!1239965))

(declare-fun m!1239967 () Bool)

(assert (=> b!1353273 m!1239967))

(assert (=> b!1353282 m!1239959))

(assert (=> b!1353282 m!1239959))

(declare-fun m!1239969 () Bool)

(assert (=> b!1353282 m!1239969))

(declare-fun m!1239971 () Bool)

(assert (=> b!1353272 m!1239971))

(declare-fun m!1239973 () Bool)

(assert (=> b!1353271 m!1239973))

(declare-fun m!1239975 () Bool)

(assert (=> start!114070 m!1239975))

(declare-fun m!1239977 () Bool)

(assert (=> b!1353269 m!1239977))

(assert (=> b!1353269 m!1239959))

(assert (=> b!1353269 m!1239969))

(declare-fun m!1239979 () Bool)

(assert (=> b!1353269 m!1239979))

(declare-fun m!1239981 () Bool)

(assert (=> b!1353269 m!1239981))

(assert (=> b!1353269 m!1239959))

(assert (=> b!1353269 m!1239969))

(declare-fun m!1239983 () Bool)

(assert (=> b!1353269 m!1239983))

(check-sat (not b!1353273) (not b!1353269) (not b!1353281) (not b!1353277) (not b!1353284) (not b!1353280) (not b!1353282) (not start!114070) (not b!1353274) (not b!1353272) (not b!1353275) (not b!1353270) (not b!1353276) (not b!1353271))
(check-sat)
