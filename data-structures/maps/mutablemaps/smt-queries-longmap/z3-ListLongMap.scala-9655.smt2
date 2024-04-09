; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!114106 () Bool)

(assert start!114106)

(declare-fun b!1354133 () Bool)

(declare-fun e!769344 () Bool)

(assert (=> b!1354133 (= e!769344 false)))

(declare-datatypes ((array!92211 0))(
  ( (array!92212 (arr!44549 (Array (_ BitVec 32) (_ BitVec 64))) (size!45100 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92211)

(declare-fun from!3120 () (_ BitVec 32))

(declare-datatypes ((List!31770 0))(
  ( (Nil!31767) (Cons!31766 (h!32975 (_ BitVec 64)) (t!46435 List!31770)) )
))
(declare-fun lt!598112 () List!31770)

(declare-fun lt!598110 () Bool)

(declare-fun arrayNoDuplicates!0 (array!92211 (_ BitVec 32) List!31770) Bool)

(assert (=> b!1354133 (= lt!598110 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) lt!598112))))

(declare-fun b!1354134 () Bool)

(declare-fun e!769348 () Bool)

(assert (=> b!1354134 (= e!769348 e!769344)))

(declare-fun res!899349 () Bool)

(assert (=> b!1354134 (=> (not res!899349) (not e!769344))))

(assert (=> b!1354134 (= res!899349 (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000))))

(declare-fun acc!759 () List!31770)

(declare-fun $colon$colon!761 (List!31770 (_ BitVec 64)) List!31770)

(assert (=> b!1354134 (= lt!598112 ($colon$colon!761 acc!759 (select (arr!44549 a!3742) from!3120)))))

(declare-fun b!1354135 () Bool)

(declare-fun e!769347 () Bool)

(assert (=> b!1354135 (= e!769347 e!769348)))

(declare-fun res!899345 () Bool)

(assert (=> b!1354135 (=> (not res!899345) (not e!769348))))

(declare-fun lt!598108 () Bool)

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1354135 (= res!899345 (and (not (= from!3120 i!1404)) lt!598108))))

(declare-datatypes ((Unit!44411 0))(
  ( (Unit!44412) )
))
(declare-fun lt!598111 () Unit!44411)

(declare-fun e!769345 () Unit!44411)

(assert (=> b!1354135 (= lt!598111 e!769345)))

(declare-fun c!126838 () Bool)

(assert (=> b!1354135 (= c!126838 lt!598108)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1354135 (= lt!598108 (validKeyInArray!0 (select (arr!44549 a!3742) from!3120)))))

(declare-fun b!1354136 () Bool)

(declare-fun lt!598109 () Unit!44411)

(assert (=> b!1354136 (= e!769345 lt!598109)))

(declare-fun lt!598107 () Unit!44411)

(declare-fun lemmaListSubSeqRefl!0 (List!31770) Unit!44411)

(assert (=> b!1354136 (= lt!598107 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!744 (List!31770 List!31770) Bool)

(assert (=> b!1354136 (subseq!744 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92211 List!31770 List!31770 (_ BitVec 32)) Unit!44411)

(assert (=> b!1354136 (= lt!598109 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!761 acc!759 (select (arr!44549 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1354136 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1354137 () Bool)

(declare-fun res!899350 () Bool)

(assert (=> b!1354137 (=> (not res!899350) (not e!769344))))

(declare-fun noDuplicate!2214 (List!31770) Bool)

(assert (=> b!1354137 (= res!899350 (noDuplicate!2214 lt!598112))))

(declare-fun b!1354138 () Bool)

(declare-fun res!899352 () Bool)

(assert (=> b!1354138 (=> (not res!899352) (not e!769347))))

(assert (=> b!1354138 (= res!899352 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45100 a!3742)))))

(declare-fun b!1354139 () Bool)

(declare-fun Unit!44413 () Unit!44411)

(assert (=> b!1354139 (= e!769345 Unit!44413)))

(declare-fun b!1354140 () Bool)

(declare-fun res!899355 () Bool)

(assert (=> b!1354140 (=> (not res!899355) (not e!769347))))

(assert (=> b!1354140 (= res!899355 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45100 a!3742))))))

(declare-fun res!899343 () Bool)

(assert (=> start!114106 (=> (not res!899343) (not e!769347))))

(assert (=> start!114106 (= res!899343 (and (bvslt (size!45100 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45100 a!3742))))))

(assert (=> start!114106 e!769347))

(assert (=> start!114106 true))

(declare-fun array_inv!33494 (array!92211) Bool)

(assert (=> start!114106 (array_inv!33494 a!3742)))

(declare-fun b!1354141 () Bool)

(declare-fun res!899346 () Bool)

(assert (=> b!1354141 (=> (not res!899346) (not e!769344))))

(declare-fun contains!9335 (List!31770 (_ BitVec 64)) Bool)

(assert (=> b!1354141 (= res!899346 (not (contains!9335 lt!598112 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1354142 () Bool)

(declare-fun res!899354 () Bool)

(assert (=> b!1354142 (=> (not res!899354) (not e!769347))))

(assert (=> b!1354142 (= res!899354 (noDuplicate!2214 acc!759))))

(declare-fun b!1354143 () Bool)

(declare-fun res!899348 () Bool)

(assert (=> b!1354143 (=> (not res!899348) (not e!769347))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1354143 (= res!899348 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1354144 () Bool)

(declare-fun res!899344 () Bool)

(assert (=> b!1354144 (=> (not res!899344) (not e!769347))))

(assert (=> b!1354144 (= res!899344 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31767))))

(declare-fun b!1354145 () Bool)

(declare-fun res!899351 () Bool)

(assert (=> b!1354145 (=> (not res!899351) (not e!769344))))

(assert (=> b!1354145 (= res!899351 (not (contains!9335 lt!598112 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1354146 () Bool)

(declare-fun res!899353 () Bool)

(assert (=> b!1354146 (=> (not res!899353) (not e!769347))))

(assert (=> b!1354146 (= res!899353 (not (contains!9335 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1354147 () Bool)

(declare-fun res!899342 () Bool)

(assert (=> b!1354147 (=> (not res!899342) (not e!769347))))

(assert (=> b!1354147 (= res!899342 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1354148 () Bool)

(declare-fun res!899347 () Bool)

(assert (=> b!1354148 (=> (not res!899347) (not e!769347))))

(assert (=> b!1354148 (= res!899347 (not (contains!9335 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!114106 res!899343) b!1354142))

(assert (= (and b!1354142 res!899354) b!1354148))

(assert (= (and b!1354148 res!899347) b!1354146))

(assert (= (and b!1354146 res!899353) b!1354144))

(assert (= (and b!1354144 res!899344) b!1354147))

(assert (= (and b!1354147 res!899342) b!1354140))

(assert (= (and b!1354140 res!899355) b!1354143))

(assert (= (and b!1354143 res!899348) b!1354138))

(assert (= (and b!1354138 res!899352) b!1354135))

(assert (= (and b!1354135 c!126838) b!1354136))

(assert (= (and b!1354135 (not c!126838)) b!1354139))

(assert (= (and b!1354135 res!899345) b!1354134))

(assert (= (and b!1354134 res!899349) b!1354137))

(assert (= (and b!1354137 res!899350) b!1354145))

(assert (= (and b!1354145 res!899351) b!1354141))

(assert (= (and b!1354141 res!899346) b!1354133))

(declare-fun m!1240597 () Bool)

(assert (=> b!1354143 m!1240597))

(declare-fun m!1240599 () Bool)

(assert (=> b!1354142 m!1240599))

(declare-fun m!1240601 () Bool)

(assert (=> b!1354145 m!1240601))

(declare-fun m!1240603 () Bool)

(assert (=> b!1354141 m!1240603))

(declare-fun m!1240605 () Bool)

(assert (=> b!1354144 m!1240605))

(declare-fun m!1240607 () Bool)

(assert (=> start!114106 m!1240607))

(declare-fun m!1240609 () Bool)

(assert (=> b!1354133 m!1240609))

(declare-fun m!1240611 () Bool)

(assert (=> b!1354134 m!1240611))

(assert (=> b!1354134 m!1240611))

(declare-fun m!1240613 () Bool)

(assert (=> b!1354134 m!1240613))

(declare-fun m!1240615 () Bool)

(assert (=> b!1354136 m!1240615))

(assert (=> b!1354136 m!1240611))

(assert (=> b!1354136 m!1240613))

(declare-fun m!1240617 () Bool)

(assert (=> b!1354136 m!1240617))

(declare-fun m!1240619 () Bool)

(assert (=> b!1354136 m!1240619))

(assert (=> b!1354136 m!1240611))

(assert (=> b!1354136 m!1240613))

(declare-fun m!1240621 () Bool)

(assert (=> b!1354136 m!1240621))

(declare-fun m!1240623 () Bool)

(assert (=> b!1354146 m!1240623))

(assert (=> b!1354135 m!1240611))

(assert (=> b!1354135 m!1240611))

(declare-fun m!1240625 () Bool)

(assert (=> b!1354135 m!1240625))

(declare-fun m!1240627 () Bool)

(assert (=> b!1354137 m!1240627))

(declare-fun m!1240629 () Bool)

(assert (=> b!1354148 m!1240629))

(declare-fun m!1240631 () Bool)

(assert (=> b!1354147 m!1240631))

(check-sat (not b!1354135) (not b!1354133) (not b!1354136) (not b!1354145) (not b!1354137) (not b!1354144) (not start!114106) (not b!1354146) (not b!1354143) (not b!1354141) (not b!1354134) (not b!1354147) (not b!1354142) (not b!1354148))
(check-sat)
