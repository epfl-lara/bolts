; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!54908 () Bool)

(assert start!54908)

(declare-fun b!600743 () Bool)

(declare-datatypes ((Unit!18968 0))(
  ( (Unit!18969) )
))
(declare-fun e!343483 () Unit!18968)

(declare-fun Unit!18970 () Unit!18968)

(assert (=> b!600743 (= e!343483 Unit!18970)))

(assert (=> b!600743 false))

(declare-fun b!600744 () Bool)

(declare-fun e!343487 () Bool)

(declare-fun e!343489 () Bool)

(assert (=> b!600744 (= e!343487 e!343489)))

(declare-fun res!385762 () Bool)

(assert (=> b!600744 (=> res!385762 e!343489)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!273417 () (_ BitVec 64))

(declare-fun lt!273423 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!37106 0))(
  ( (array!37107 (arr!17809 (Array (_ BitVec 32) (_ BitVec 64))) (size!18173 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37106)

(assert (=> b!600744 (= res!385762 (or (not (= (select (arr!17809 a!2986) j!136) lt!273423)) (not (= (select (arr!17809 a!2986) j!136) lt!273417)) (bvsge j!136 index!984)))))

(declare-fun e!343486 () Bool)

(assert (=> b!600744 e!343486))

(declare-fun res!385777 () Bool)

(assert (=> b!600744 (=> (not res!385777) (not e!343486))))

(assert (=> b!600744 (= res!385777 (= lt!273417 (select (arr!17809 a!2986) j!136)))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(assert (=> b!600744 (= lt!273417 (select (store (arr!17809 a!2986) i!1108 k0!1786) index!984))))

(declare-fun e!343482 () Bool)

(declare-fun b!600745 () Bool)

(declare-fun lt!273413 () array!37106)

(declare-fun arrayContainsKey!0 (array!37106 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!600745 (= e!343482 (arrayContainsKey!0 lt!273413 (select (arr!17809 a!2986) j!136) index!984))))

(declare-fun b!600746 () Bool)

(declare-fun res!385772 () Bool)

(declare-fun e!343488 () Bool)

(assert (=> b!600746 (=> (not res!385772) (not e!343488))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!600746 (= res!385772 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17809 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!600747 () Bool)

(declare-fun e!343485 () Bool)

(declare-datatypes ((SeekEntryResult!6256 0))(
  ( (MissingZero!6256 (index!27280 (_ BitVec 32))) (Found!6256 (index!27281 (_ BitVec 32))) (Intermediate!6256 (undefined!7068 Bool) (index!27282 (_ BitVec 32)) (x!56104 (_ BitVec 32))) (Undefined!6256) (MissingVacant!6256 (index!27283 (_ BitVec 32))) )
))
(declare-fun lt!273421 () SeekEntryResult!6256)

(declare-fun lt!273425 () SeekEntryResult!6256)

(assert (=> b!600747 (= e!343485 (= lt!273421 lt!273425))))

(declare-fun b!600749 () Bool)

(declare-fun res!385767 () Bool)

(declare-fun e!343491 () Bool)

(assert (=> b!600749 (=> res!385767 e!343491)))

(declare-datatypes ((List!11903 0))(
  ( (Nil!11900) (Cons!11899 (h!12944 (_ BitVec 64)) (t!18139 List!11903)) )
))
(declare-fun contains!2988 (List!11903 (_ BitVec 64)) Bool)

(assert (=> b!600749 (= res!385767 (contains!2988 Nil!11900 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!600750 () Bool)

(declare-fun res!385766 () Bool)

(declare-fun e!343490 () Bool)

(assert (=> b!600750 (=> (not res!385766) (not e!343490))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!600750 (= res!385766 (validKeyInArray!0 k0!1786))))

(declare-fun b!600751 () Bool)

(declare-fun e!343481 () Bool)

(declare-fun e!343480 () Bool)

(assert (=> b!600751 (= e!343481 e!343480)))

(declare-fun res!385763 () Bool)

(assert (=> b!600751 (=> (not res!385763) (not e!343480))))

(assert (=> b!600751 (= res!385763 (and (= lt!273421 (Found!6256 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17809 a!2986) index!984) (select (arr!17809 a!2986) j!136))) (not (= (select (arr!17809 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37106 (_ BitVec 32)) SeekEntryResult!6256)

(assert (=> b!600751 (= lt!273421 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17809 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!600752 () Bool)

(declare-fun res!385765 () Bool)

(assert (=> b!600752 (=> res!385765 e!343491)))

(declare-fun noDuplicate!302 (List!11903) Bool)

(assert (=> b!600752 (= res!385765 (not (noDuplicate!302 Nil!11900)))))

(declare-fun b!600753 () Bool)

(declare-fun res!385774 () Bool)

(assert (=> b!600753 (=> (not res!385774) (not e!343490))))

(assert (=> b!600753 (= res!385774 (and (= (size!18173 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18173 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18173 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!600754 () Bool)

(declare-fun e!343492 () Bool)

(assert (=> b!600754 (= e!343486 e!343492)))

(declare-fun res!385768 () Bool)

(assert (=> b!600754 (=> res!385768 e!343492)))

(assert (=> b!600754 (= res!385768 (or (not (= (select (arr!17809 a!2986) j!136) lt!273423)) (not (= (select (arr!17809 a!2986) j!136) lt!273417)) (bvsge j!136 index!984)))))

(declare-fun b!600755 () Bool)

(declare-fun res!385770 () Bool)

(assert (=> b!600755 (=> (not res!385770) (not e!343488))))

(declare-fun arrayNoDuplicates!0 (array!37106 (_ BitVec 32) List!11903) Bool)

(assert (=> b!600755 (= res!385770 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11900))))

(declare-fun b!600756 () Bool)

(assert (=> b!600756 (= e!343491 true)))

(declare-fun lt!273415 () Bool)

(assert (=> b!600756 (= lt!273415 (contains!2988 Nil!11900 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!385773 () Bool)

(assert (=> start!54908 (=> (not res!385773) (not e!343490))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54908 (= res!385773 (validMask!0 mask!3053))))

(assert (=> start!54908 e!343490))

(assert (=> start!54908 true))

(declare-fun array_inv!13583 (array!37106) Bool)

(assert (=> start!54908 (array_inv!13583 a!2986)))

(declare-fun b!600748 () Bool)

(declare-fun res!385778 () Bool)

(assert (=> b!600748 (=> (not res!385778) (not e!343488))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37106 (_ BitVec 32)) Bool)

(assert (=> b!600748 (= res!385778 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!600757 () Bool)

(assert (=> b!600757 (= e!343488 e!343481)))

(declare-fun res!385764 () Bool)

(assert (=> b!600757 (=> (not res!385764) (not e!343481))))

(assert (=> b!600757 (= res!385764 (= (select (store (arr!17809 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!600757 (= lt!273413 (array!37107 (store (arr!17809 a!2986) i!1108 k0!1786) (size!18173 a!2986)))))

(declare-fun b!600758 () Bool)

(assert (=> b!600758 (= e!343490 e!343488)))

(declare-fun res!385769 () Bool)

(assert (=> b!600758 (=> (not res!385769) (not e!343488))))

(declare-fun lt!273414 () SeekEntryResult!6256)

(assert (=> b!600758 (= res!385769 (or (= lt!273414 (MissingZero!6256 i!1108)) (= lt!273414 (MissingVacant!6256 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37106 (_ BitVec 32)) SeekEntryResult!6256)

(assert (=> b!600758 (= lt!273414 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!600759 () Bool)

(assert (=> b!600759 (= e!343489 e!343491)))

(declare-fun res!385759 () Bool)

(assert (=> b!600759 (=> res!385759 e!343491)))

(assert (=> b!600759 (= res!385759 (or (bvsge (size!18173 a!2986) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 j!136) (size!18173 a!2986))))))

(assert (=> b!600759 (arrayNoDuplicates!0 lt!273413 j!136 Nil!11900)))

(declare-fun lt!273424 () Unit!18968)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37106 (_ BitVec 32) (_ BitVec 32)) Unit!18968)

(assert (=> b!600759 (= lt!273424 (lemmaNoDuplicateFromThenFromBigger!0 lt!273413 #b00000000000000000000000000000000 j!136))))

(assert (=> b!600759 (arrayNoDuplicates!0 lt!273413 #b00000000000000000000000000000000 Nil!11900)))

(declare-fun lt!273418 () Unit!18968)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37106 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11903) Unit!18968)

(assert (=> b!600759 (= lt!273418 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!11900))))

(assert (=> b!600759 (arrayContainsKey!0 lt!273413 (select (arr!17809 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!273420 () Unit!18968)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37106 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18968)

(assert (=> b!600759 (= lt!273420 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!273413 (select (arr!17809 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!600760 () Bool)

(assert (=> b!600760 (= e!343480 (not e!343487))))

(declare-fun res!385776 () Bool)

(assert (=> b!600760 (=> res!385776 e!343487)))

(declare-fun lt!273416 () SeekEntryResult!6256)

(assert (=> b!600760 (= res!385776 (not (= lt!273416 (Found!6256 index!984))))))

(declare-fun lt!273422 () Unit!18968)

(assert (=> b!600760 (= lt!273422 e!343483)))

(declare-fun c!67859 () Bool)

(assert (=> b!600760 (= c!67859 (= lt!273416 Undefined!6256))))

(assert (=> b!600760 (= lt!273416 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!273423 lt!273413 mask!3053))))

(assert (=> b!600760 e!343485))

(declare-fun res!385760 () Bool)

(assert (=> b!600760 (=> (not res!385760) (not e!343485))))

(declare-fun lt!273419 () (_ BitVec 32))

(assert (=> b!600760 (= res!385760 (= lt!273425 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!273419 vacantSpotIndex!68 lt!273423 lt!273413 mask!3053)))))

(assert (=> b!600760 (= lt!273425 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!273419 vacantSpotIndex!68 (select (arr!17809 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!600760 (= lt!273423 (select (store (arr!17809 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!273426 () Unit!18968)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37106 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18968)

(assert (=> b!600760 (= lt!273426 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!273419 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!600760 (= lt!273419 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!600761 () Bool)

(declare-fun res!385775 () Bool)

(assert (=> b!600761 (=> (not res!385775) (not e!343490))))

(assert (=> b!600761 (= res!385775 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!600762 () Bool)

(assert (=> b!600762 (= e!343492 e!343482)))

(declare-fun res!385771 () Bool)

(assert (=> b!600762 (=> (not res!385771) (not e!343482))))

(assert (=> b!600762 (= res!385771 (arrayContainsKey!0 lt!273413 (select (arr!17809 a!2986) j!136) j!136))))

(declare-fun b!600763 () Bool)

(declare-fun res!385761 () Bool)

(assert (=> b!600763 (=> (not res!385761) (not e!343490))))

(assert (=> b!600763 (= res!385761 (validKeyInArray!0 (select (arr!17809 a!2986) j!136)))))

(declare-fun b!600764 () Bool)

(declare-fun Unit!18971 () Unit!18968)

(assert (=> b!600764 (= e!343483 Unit!18971)))

(assert (= (and start!54908 res!385773) b!600753))

(assert (= (and b!600753 res!385774) b!600763))

(assert (= (and b!600763 res!385761) b!600750))

(assert (= (and b!600750 res!385766) b!600761))

(assert (= (and b!600761 res!385775) b!600758))

(assert (= (and b!600758 res!385769) b!600748))

(assert (= (and b!600748 res!385778) b!600755))

(assert (= (and b!600755 res!385770) b!600746))

(assert (= (and b!600746 res!385772) b!600757))

(assert (= (and b!600757 res!385764) b!600751))

(assert (= (and b!600751 res!385763) b!600760))

(assert (= (and b!600760 res!385760) b!600747))

(assert (= (and b!600760 c!67859) b!600743))

(assert (= (and b!600760 (not c!67859)) b!600764))

(assert (= (and b!600760 (not res!385776)) b!600744))

(assert (= (and b!600744 res!385777) b!600754))

(assert (= (and b!600754 (not res!385768)) b!600762))

(assert (= (and b!600762 res!385771) b!600745))

(assert (= (and b!600744 (not res!385762)) b!600759))

(assert (= (and b!600759 (not res!385759)) b!600752))

(assert (= (and b!600752 (not res!385765)) b!600749))

(assert (= (and b!600749 (not res!385767)) b!600756))

(declare-fun m!577999 () Bool)

(assert (=> b!600760 m!577999))

(declare-fun m!578001 () Bool)

(assert (=> b!600760 m!578001))

(declare-fun m!578003 () Bool)

(assert (=> b!600760 m!578003))

(declare-fun m!578005 () Bool)

(assert (=> b!600760 m!578005))

(declare-fun m!578007 () Bool)

(assert (=> b!600760 m!578007))

(declare-fun m!578009 () Bool)

(assert (=> b!600760 m!578009))

(assert (=> b!600760 m!578003))

(declare-fun m!578011 () Bool)

(assert (=> b!600760 m!578011))

(declare-fun m!578013 () Bool)

(assert (=> b!600760 m!578013))

(declare-fun m!578015 () Bool)

(assert (=> b!600758 m!578015))

(assert (=> b!600763 m!578003))

(assert (=> b!600763 m!578003))

(declare-fun m!578017 () Bool)

(assert (=> b!600763 m!578017))

(declare-fun m!578019 () Bool)

(assert (=> b!600755 m!578019))

(declare-fun m!578021 () Bool)

(assert (=> b!600756 m!578021))

(declare-fun m!578023 () Bool)

(assert (=> b!600748 m!578023))

(declare-fun m!578025 () Bool)

(assert (=> start!54908 m!578025))

(declare-fun m!578027 () Bool)

(assert (=> start!54908 m!578027))

(assert (=> b!600745 m!578003))

(assert (=> b!600745 m!578003))

(declare-fun m!578029 () Bool)

(assert (=> b!600745 m!578029))

(declare-fun m!578031 () Bool)

(assert (=> b!600752 m!578031))

(declare-fun m!578033 () Bool)

(assert (=> b!600746 m!578033))

(declare-fun m!578035 () Bool)

(assert (=> b!600750 m!578035))

(declare-fun m!578037 () Bool)

(assert (=> b!600761 m!578037))

(assert (=> b!600744 m!578003))

(assert (=> b!600744 m!578005))

(declare-fun m!578039 () Bool)

(assert (=> b!600744 m!578039))

(assert (=> b!600757 m!578005))

(declare-fun m!578041 () Bool)

(assert (=> b!600757 m!578041))

(assert (=> b!600754 m!578003))

(assert (=> b!600762 m!578003))

(assert (=> b!600762 m!578003))

(declare-fun m!578043 () Bool)

(assert (=> b!600762 m!578043))

(declare-fun m!578045 () Bool)

(assert (=> b!600751 m!578045))

(assert (=> b!600751 m!578003))

(assert (=> b!600751 m!578003))

(declare-fun m!578047 () Bool)

(assert (=> b!600751 m!578047))

(declare-fun m!578049 () Bool)

(assert (=> b!600749 m!578049))

(assert (=> b!600759 m!578003))

(declare-fun m!578051 () Bool)

(assert (=> b!600759 m!578051))

(declare-fun m!578053 () Bool)

(assert (=> b!600759 m!578053))

(assert (=> b!600759 m!578003))

(declare-fun m!578055 () Bool)

(assert (=> b!600759 m!578055))

(declare-fun m!578057 () Bool)

(assert (=> b!600759 m!578057))

(assert (=> b!600759 m!578003))

(declare-fun m!578059 () Bool)

(assert (=> b!600759 m!578059))

(declare-fun m!578061 () Bool)

(assert (=> b!600759 m!578061))

(check-sat (not b!600749) (not start!54908) (not b!600755) (not b!600759) (not b!600751) (not b!600762) (not b!600763) (not b!600748) (not b!600752) (not b!600750) (not b!600761) (not b!600756) (not b!600745) (not b!600758) (not b!600760))
(check-sat)
