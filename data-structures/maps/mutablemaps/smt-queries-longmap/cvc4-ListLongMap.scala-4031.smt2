; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!54904 () Bool)

(assert start!54904)

(declare-fun b!600611 () Bool)

(declare-fun res!385652 () Bool)

(declare-fun e!343408 () Bool)

(assert (=> b!600611 (=> (not res!385652) (not e!343408))))

(declare-datatypes ((array!37102 0))(
  ( (array!37103 (arr!17807 (Array (_ BitVec 32) (_ BitVec 64))) (size!18171 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37102)

(declare-datatypes ((List!11901 0))(
  ( (Nil!11898) (Cons!11897 (h!12942 (_ BitVec 64)) (t!18137 List!11901)) )
))
(declare-fun arrayNoDuplicates!0 (array!37102 (_ BitVec 32) List!11901) Bool)

(assert (=> b!600611 (= res!385652 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11898))))

(declare-fun b!600612 () Bool)

(declare-fun e!343406 () Bool)

(declare-fun e!343404 () Bool)

(assert (=> b!600612 (= e!343406 e!343404)))

(declare-fun res!385656 () Bool)

(assert (=> b!600612 (=> res!385656 e!343404)))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!600612 (= res!385656 (or (bvsge (size!18171 a!2986) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 j!136) (size!18171 a!2986))))))

(declare-fun lt!273336 () array!37102)

(assert (=> b!600612 (arrayNoDuplicates!0 lt!273336 j!136 Nil!11898)))

(declare-datatypes ((Unit!18960 0))(
  ( (Unit!18961) )
))
(declare-fun lt!273339 () Unit!18960)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37102 (_ BitVec 32) (_ BitVec 32)) Unit!18960)

(assert (=> b!600612 (= lt!273339 (lemmaNoDuplicateFromThenFromBigger!0 lt!273336 #b00000000000000000000000000000000 j!136))))

(assert (=> b!600612 (arrayNoDuplicates!0 lt!273336 #b00000000000000000000000000000000 Nil!11898)))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun lt!273338 () Unit!18960)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37102 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11901) Unit!18960)

(assert (=> b!600612 (= lt!273338 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11898))))

(declare-fun arrayContainsKey!0 (array!37102 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!600612 (arrayContainsKey!0 lt!273336 (select (arr!17807 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun lt!273329 () Unit!18960)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37102 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18960)

(assert (=> b!600612 (= lt!273329 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!273336 (select (arr!17807 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!600613 () Bool)

(declare-fun e!343411 () Bool)

(declare-fun e!343402 () Bool)

(assert (=> b!600613 (= e!343411 e!343402)))

(declare-fun res!385657 () Bool)

(assert (=> b!600613 (=> (not res!385657) (not e!343402))))

(assert (=> b!600613 (= res!385657 (arrayContainsKey!0 lt!273336 (select (arr!17807 a!2986) j!136) j!136))))

(declare-fun b!600614 () Bool)

(declare-fun res!385655 () Bool)

(assert (=> b!600614 (=> (not res!385655) (not e!343408))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37102 (_ BitVec 32)) Bool)

(assert (=> b!600614 (= res!385655 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!600616 () Bool)

(declare-fun res!385653 () Bool)

(declare-fun e!343407 () Bool)

(assert (=> b!600616 (=> (not res!385653) (not e!343407))))

(assert (=> b!600616 (= res!385653 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!600617 () Bool)

(declare-fun res!385647 () Bool)

(assert (=> b!600617 (=> (not res!385647) (not e!343408))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!600617 (= res!385647 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17807 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!600618 () Bool)

(declare-fun res!385640 () Bool)

(assert (=> b!600618 (=> (not res!385640) (not e!343407))))

(assert (=> b!600618 (= res!385640 (and (= (size!18171 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18171 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18171 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!600619 () Bool)

(declare-fun res!385658 () Bool)

(assert (=> b!600619 (=> (not res!385658) (not e!343407))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!600619 (= res!385658 (validKeyInArray!0 k!1786))))

(declare-fun b!600620 () Bool)

(declare-fun e!343405 () Bool)

(assert (=> b!600620 (= e!343405 e!343406)))

(declare-fun res!385651 () Bool)

(assert (=> b!600620 (=> res!385651 e!343406)))

(declare-fun lt!273331 () (_ BitVec 64))

(declare-fun lt!273335 () (_ BitVec 64))

(assert (=> b!600620 (= res!385651 (or (not (= (select (arr!17807 a!2986) j!136) lt!273335)) (not (= (select (arr!17807 a!2986) j!136) lt!273331)) (bvsge j!136 index!984)))))

(declare-fun e!343412 () Bool)

(assert (=> b!600620 e!343412))

(declare-fun res!385641 () Bool)

(assert (=> b!600620 (=> (not res!385641) (not e!343412))))

(assert (=> b!600620 (= res!385641 (= lt!273331 (select (arr!17807 a!2986) j!136)))))

(assert (=> b!600620 (= lt!273331 (select (store (arr!17807 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!600621 () Bool)

(assert (=> b!600621 (= e!343407 e!343408)))

(declare-fun res!385644 () Bool)

(assert (=> b!600621 (=> (not res!385644) (not e!343408))))

(declare-datatypes ((SeekEntryResult!6254 0))(
  ( (MissingZero!6254 (index!27272 (_ BitVec 32))) (Found!6254 (index!27273 (_ BitVec 32))) (Intermediate!6254 (undefined!7066 Bool) (index!27274 (_ BitVec 32)) (x!56094 (_ BitVec 32))) (Undefined!6254) (MissingVacant!6254 (index!27275 (_ BitVec 32))) )
))
(declare-fun lt!273330 () SeekEntryResult!6254)

(assert (=> b!600621 (= res!385644 (or (= lt!273330 (MissingZero!6254 i!1108)) (= lt!273330 (MissingVacant!6254 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37102 (_ BitVec 32)) SeekEntryResult!6254)

(assert (=> b!600621 (= lt!273330 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!600622 () Bool)

(declare-fun res!385650 () Bool)

(assert (=> b!600622 (=> res!385650 e!343404)))

(declare-fun contains!2986 (List!11901 (_ BitVec 64)) Bool)

(assert (=> b!600622 (= res!385650 (contains!2986 Nil!11898 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!600623 () Bool)

(declare-fun e!343414 () Bool)

(assert (=> b!600623 (= e!343414 (not e!343405))))

(declare-fun res!385643 () Bool)

(assert (=> b!600623 (=> res!385643 e!343405)))

(declare-fun lt!273340 () SeekEntryResult!6254)

(assert (=> b!600623 (= res!385643 (not (= lt!273340 (Found!6254 index!984))))))

(declare-fun lt!273342 () Unit!18960)

(declare-fun e!343413 () Unit!18960)

(assert (=> b!600623 (= lt!273342 e!343413)))

(declare-fun c!67853 () Bool)

(assert (=> b!600623 (= c!67853 (= lt!273340 Undefined!6254))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37102 (_ BitVec 32)) SeekEntryResult!6254)

(assert (=> b!600623 (= lt!273340 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!273335 lt!273336 mask!3053))))

(declare-fun e!343410 () Bool)

(assert (=> b!600623 e!343410))

(declare-fun res!385645 () Bool)

(assert (=> b!600623 (=> (not res!385645) (not e!343410))))

(declare-fun lt!273341 () SeekEntryResult!6254)

(declare-fun lt!273334 () (_ BitVec 32))

(assert (=> b!600623 (= res!385645 (= lt!273341 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!273334 vacantSpotIndex!68 lt!273335 lt!273336 mask!3053)))))

(assert (=> b!600623 (= lt!273341 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!273334 vacantSpotIndex!68 (select (arr!17807 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!600623 (= lt!273335 (select (store (arr!17807 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!273333 () Unit!18960)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37102 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18960)

(assert (=> b!600623 (= lt!273333 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!273334 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!600623 (= lt!273334 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!600615 () Bool)

(declare-fun e!343409 () Bool)

(assert (=> b!600615 (= e!343409 e!343414)))

(declare-fun res!385649 () Bool)

(assert (=> b!600615 (=> (not res!385649) (not e!343414))))

(declare-fun lt!273337 () SeekEntryResult!6254)

(assert (=> b!600615 (= res!385649 (and (= lt!273337 (Found!6254 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17807 a!2986) index!984) (select (arr!17807 a!2986) j!136))) (not (= (select (arr!17807 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!600615 (= lt!273337 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17807 a!2986) j!136) a!2986 mask!3053))))

(declare-fun res!385639 () Bool)

(assert (=> start!54904 (=> (not res!385639) (not e!343407))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54904 (= res!385639 (validMask!0 mask!3053))))

(assert (=> start!54904 e!343407))

(assert (=> start!54904 true))

(declare-fun array_inv!13581 (array!37102) Bool)

(assert (=> start!54904 (array_inv!13581 a!2986)))

(declare-fun b!600624 () Bool)

(assert (=> b!600624 (= e!343404 true)))

(declare-fun lt!273332 () Bool)

(assert (=> b!600624 (= lt!273332 (contains!2986 Nil!11898 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!600625 () Bool)

(declare-fun res!385642 () Bool)

(assert (=> b!600625 (=> res!385642 e!343404)))

(declare-fun noDuplicate!300 (List!11901) Bool)

(assert (=> b!600625 (= res!385642 (not (noDuplicate!300 Nil!11898)))))

(declare-fun b!600626 () Bool)

(assert (=> b!600626 (= e!343410 (= lt!273337 lt!273341))))

(declare-fun b!600627 () Bool)

(assert (=> b!600627 (= e!343408 e!343409)))

(declare-fun res!385646 () Bool)

(assert (=> b!600627 (=> (not res!385646) (not e!343409))))

(assert (=> b!600627 (= res!385646 (= (select (store (arr!17807 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!600627 (= lt!273336 (array!37103 (store (arr!17807 a!2986) i!1108 k!1786) (size!18171 a!2986)))))

(declare-fun b!600628 () Bool)

(declare-fun res!385648 () Bool)

(assert (=> b!600628 (=> (not res!385648) (not e!343407))))

(assert (=> b!600628 (= res!385648 (validKeyInArray!0 (select (arr!17807 a!2986) j!136)))))

(declare-fun b!600629 () Bool)

(assert (=> b!600629 (= e!343412 e!343411)))

(declare-fun res!385654 () Bool)

(assert (=> b!600629 (=> res!385654 e!343411)))

(assert (=> b!600629 (= res!385654 (or (not (= (select (arr!17807 a!2986) j!136) lt!273335)) (not (= (select (arr!17807 a!2986) j!136) lt!273331)) (bvsge j!136 index!984)))))

(declare-fun b!600630 () Bool)

(declare-fun Unit!18962 () Unit!18960)

(assert (=> b!600630 (= e!343413 Unit!18962)))

(assert (=> b!600630 false))

(declare-fun b!600631 () Bool)

(declare-fun Unit!18963 () Unit!18960)

(assert (=> b!600631 (= e!343413 Unit!18963)))

(declare-fun b!600632 () Bool)

(assert (=> b!600632 (= e!343402 (arrayContainsKey!0 lt!273336 (select (arr!17807 a!2986) j!136) index!984))))

(assert (= (and start!54904 res!385639) b!600618))

(assert (= (and b!600618 res!385640) b!600628))

(assert (= (and b!600628 res!385648) b!600619))

(assert (= (and b!600619 res!385658) b!600616))

(assert (= (and b!600616 res!385653) b!600621))

(assert (= (and b!600621 res!385644) b!600614))

(assert (= (and b!600614 res!385655) b!600611))

(assert (= (and b!600611 res!385652) b!600617))

(assert (= (and b!600617 res!385647) b!600627))

(assert (= (and b!600627 res!385646) b!600615))

(assert (= (and b!600615 res!385649) b!600623))

(assert (= (and b!600623 res!385645) b!600626))

(assert (= (and b!600623 c!67853) b!600630))

(assert (= (and b!600623 (not c!67853)) b!600631))

(assert (= (and b!600623 (not res!385643)) b!600620))

(assert (= (and b!600620 res!385641) b!600629))

(assert (= (and b!600629 (not res!385654)) b!600613))

(assert (= (and b!600613 res!385657) b!600632))

(assert (= (and b!600620 (not res!385651)) b!600612))

(assert (= (and b!600612 (not res!385656)) b!600625))

(assert (= (and b!600625 (not res!385642)) b!600622))

(assert (= (and b!600622 (not res!385650)) b!600624))

(declare-fun m!577871 () Bool)

(assert (=> b!600612 m!577871))

(declare-fun m!577873 () Bool)

(assert (=> b!600612 m!577873))

(assert (=> b!600612 m!577871))

(declare-fun m!577875 () Bool)

(assert (=> b!600612 m!577875))

(declare-fun m!577877 () Bool)

(assert (=> b!600612 m!577877))

(declare-fun m!577879 () Bool)

(assert (=> b!600612 m!577879))

(assert (=> b!600612 m!577871))

(declare-fun m!577881 () Bool)

(assert (=> b!600612 m!577881))

(declare-fun m!577883 () Bool)

(assert (=> b!600612 m!577883))

(assert (=> b!600613 m!577871))

(assert (=> b!600613 m!577871))

(declare-fun m!577885 () Bool)

(assert (=> b!600613 m!577885))

(assert (=> b!600628 m!577871))

(assert (=> b!600628 m!577871))

(declare-fun m!577887 () Bool)

(assert (=> b!600628 m!577887))

(declare-fun m!577889 () Bool)

(assert (=> b!600619 m!577889))

(assert (=> b!600620 m!577871))

(declare-fun m!577891 () Bool)

(assert (=> b!600620 m!577891))

(declare-fun m!577893 () Bool)

(assert (=> b!600620 m!577893))

(assert (=> b!600629 m!577871))

(declare-fun m!577895 () Bool)

(assert (=> b!600622 m!577895))

(declare-fun m!577897 () Bool)

(assert (=> b!600616 m!577897))

(declare-fun m!577899 () Bool)

(assert (=> b!600624 m!577899))

(declare-fun m!577901 () Bool)

(assert (=> b!600615 m!577901))

(assert (=> b!600615 m!577871))

(assert (=> b!600615 m!577871))

(declare-fun m!577903 () Bool)

(assert (=> b!600615 m!577903))

(declare-fun m!577905 () Bool)

(assert (=> start!54904 m!577905))

(declare-fun m!577907 () Bool)

(assert (=> start!54904 m!577907))

(assert (=> b!600627 m!577891))

(declare-fun m!577909 () Bool)

(assert (=> b!600627 m!577909))

(declare-fun m!577911 () Bool)

(assert (=> b!600621 m!577911))

(declare-fun m!577913 () Bool)

(assert (=> b!600611 m!577913))

(declare-fun m!577915 () Bool)

(assert (=> b!600614 m!577915))

(declare-fun m!577917 () Bool)

(assert (=> b!600625 m!577917))

(declare-fun m!577919 () Bool)

(assert (=> b!600623 m!577919))

(declare-fun m!577921 () Bool)

(assert (=> b!600623 m!577921))

(declare-fun m!577923 () Bool)

(assert (=> b!600623 m!577923))

(assert (=> b!600623 m!577871))

(assert (=> b!600623 m!577891))

(assert (=> b!600623 m!577871))

(declare-fun m!577925 () Bool)

(assert (=> b!600623 m!577925))

(declare-fun m!577927 () Bool)

(assert (=> b!600623 m!577927))

(declare-fun m!577929 () Bool)

(assert (=> b!600623 m!577929))

(assert (=> b!600632 m!577871))

(assert (=> b!600632 m!577871))

(declare-fun m!577931 () Bool)

(assert (=> b!600632 m!577931))

(declare-fun m!577933 () Bool)

(assert (=> b!600617 m!577933))

(push 1)

