; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!57844 () Bool)

(assert start!57844)

(declare-fun b!639656 () Bool)

(declare-datatypes ((Unit!21618 0))(
  ( (Unit!21619) )
))
(declare-fun e!366117 () Unit!21618)

(declare-fun Unit!21620 () Unit!21618)

(assert (=> b!639656 (= e!366117 Unit!21620)))

(assert (=> b!639656 false))

(declare-fun b!639657 () Bool)

(declare-fun Unit!21621 () Unit!21618)

(assert (=> b!639657 (= e!366117 Unit!21621)))

(declare-fun b!639658 () Bool)

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((array!38302 0))(
  ( (array!38303 (arr!18368 (Array (_ BitVec 32) (_ BitVec 64))) (size!18732 (_ BitVec 32))) )
))
(declare-fun lt!296036 () array!38302)

(declare-fun e!366118 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun a!2986 () array!38302)

(declare-fun arrayContainsKey!0 (array!38302 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!639658 (= e!366118 (arrayContainsKey!0 lt!296036 (select (arr!18368 a!2986) j!136) index!984))))

(declare-fun b!639659 () Bool)

(declare-fun e!366125 () Bool)

(declare-fun e!366120 () Bool)

(assert (=> b!639659 (= e!366125 e!366120)))

(declare-fun res!414330 () Bool)

(assert (=> b!639659 (=> res!414330 e!366120)))

(declare-fun lt!296045 () (_ BitVec 64))

(declare-fun lt!296040 () (_ BitVec 64))

(assert (=> b!639659 (= res!414330 (or (not (= (select (arr!18368 a!2986) j!136) lt!296045)) (not (= (select (arr!18368 a!2986) j!136) lt!296040)) (bvsge j!136 index!984)))))

(declare-fun e!366127 () Bool)

(assert (=> b!639659 e!366127))

(declare-fun res!414332 () Bool)

(assert (=> b!639659 (=> (not res!414332) (not e!366127))))

(assert (=> b!639659 (= res!414332 (= lt!296040 (select (arr!18368 a!2986) j!136)))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!639659 (= lt!296040 (select (store (arr!18368 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!639660 () Bool)

(declare-fun res!414334 () Bool)

(declare-fun e!366121 () Bool)

(assert (=> b!639660 (=> (not res!414334) (not e!366121))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!639660 (= res!414334 (validKeyInArray!0 k!1786))))

(declare-fun b!639661 () Bool)

(declare-fun e!366119 () Bool)

(declare-fun e!366123 () Bool)

(assert (=> b!639661 (= e!366119 e!366123)))

(declare-fun res!414339 () Bool)

(assert (=> b!639661 (=> (not res!414339) (not e!366123))))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6815 0))(
  ( (MissingZero!6815 (index!29576 (_ BitVec 32))) (Found!6815 (index!29577 (_ BitVec 32))) (Intermediate!6815 (undefined!7627 Bool) (index!29578 (_ BitVec 32)) (x!58355 (_ BitVec 32))) (Undefined!6815) (MissingVacant!6815 (index!29579 (_ BitVec 32))) )
))
(declare-fun lt!296039 () SeekEntryResult!6815)

(assert (=> b!639661 (= res!414339 (and (= lt!296039 (Found!6815 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18368 a!2986) index!984) (select (arr!18368 a!2986) j!136))) (not (= (select (arr!18368 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38302 (_ BitVec 32)) SeekEntryResult!6815)

(assert (=> b!639661 (= lt!296039 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18368 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!639662 () Bool)

(declare-fun res!414338 () Bool)

(declare-fun e!366124 () Bool)

(assert (=> b!639662 (=> (not res!414338) (not e!366124))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38302 (_ BitVec 32)) Bool)

(assert (=> b!639662 (= res!414338 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!639663 () Bool)

(assert (=> b!639663 (= e!366121 e!366124)))

(declare-fun res!414340 () Bool)

(assert (=> b!639663 (=> (not res!414340) (not e!366124))))

(declare-fun lt!296038 () SeekEntryResult!6815)

(assert (=> b!639663 (= res!414340 (or (= lt!296038 (MissingZero!6815 i!1108)) (= lt!296038 (MissingVacant!6815 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38302 (_ BitVec 32)) SeekEntryResult!6815)

(assert (=> b!639663 (= lt!296038 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!639664 () Bool)

(declare-fun e!366116 () Bool)

(assert (=> b!639664 (= e!366127 e!366116)))

(declare-fun res!414343 () Bool)

(assert (=> b!639664 (=> res!414343 e!366116)))

(assert (=> b!639664 (= res!414343 (or (not (= (select (arr!18368 a!2986) j!136) lt!296045)) (not (= (select (arr!18368 a!2986) j!136) lt!296040)) (bvsge j!136 index!984)))))

(declare-fun b!639665 () Bool)

(assert (=> b!639665 (= e!366123 (not e!366125))))

(declare-fun res!414333 () Bool)

(assert (=> b!639665 (=> res!414333 e!366125)))

(declare-fun lt!296044 () SeekEntryResult!6815)

(assert (=> b!639665 (= res!414333 (not (= lt!296044 (Found!6815 index!984))))))

(declare-fun lt!296043 () Unit!21618)

(assert (=> b!639665 (= lt!296043 e!366117)))

(declare-fun c!73031 () Bool)

(assert (=> b!639665 (= c!73031 (= lt!296044 Undefined!6815))))

(assert (=> b!639665 (= lt!296044 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!296045 lt!296036 mask!3053))))

(declare-fun e!366126 () Bool)

(assert (=> b!639665 e!366126))

(declare-fun res!414328 () Bool)

(assert (=> b!639665 (=> (not res!414328) (not e!366126))))

(declare-fun lt!296037 () (_ BitVec 32))

(declare-fun lt!296042 () SeekEntryResult!6815)

(assert (=> b!639665 (= res!414328 (= lt!296042 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!296037 vacantSpotIndex!68 lt!296045 lt!296036 mask!3053)))))

(assert (=> b!639665 (= lt!296042 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!296037 vacantSpotIndex!68 (select (arr!18368 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!639665 (= lt!296045 (select (store (arr!18368 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!296046 () Unit!21618)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38302 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21618)

(assert (=> b!639665 (= lt!296046 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!296037 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!639665 (= lt!296037 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!639666 () Bool)

(assert (=> b!639666 (= e!366126 (= lt!296039 lt!296042))))

(declare-fun b!639667 () Bool)

(declare-fun res!414342 () Bool)

(assert (=> b!639667 (=> (not res!414342) (not e!366121))))

(assert (=> b!639667 (= res!414342 (validKeyInArray!0 (select (arr!18368 a!2986) j!136)))))

(declare-fun b!639668 () Bool)

(assert (=> b!639668 (= e!366116 e!366118)))

(declare-fun res!414344 () Bool)

(assert (=> b!639668 (=> (not res!414344) (not e!366118))))

(assert (=> b!639668 (= res!414344 (arrayContainsKey!0 lt!296036 (select (arr!18368 a!2986) j!136) j!136))))

(declare-fun b!639669 () Bool)

(declare-fun res!414341 () Bool)

(assert (=> b!639669 (=> (not res!414341) (not e!366124))))

(assert (=> b!639669 (= res!414341 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18368 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!639671 () Bool)

(declare-fun res!414331 () Bool)

(assert (=> b!639671 (=> (not res!414331) (not e!366121))))

(assert (=> b!639671 (= res!414331 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!639672 () Bool)

(declare-fun res!414329 () Bool)

(assert (=> b!639672 (=> (not res!414329) (not e!366121))))

(assert (=> b!639672 (= res!414329 (and (= (size!18732 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18732 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18732 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!639673 () Bool)

(assert (=> b!639673 (= e!366120 (bvslt (size!18732 a!2986) #b01111111111111111111111111111111))))

(declare-datatypes ((List!12462 0))(
  ( (Nil!12459) (Cons!12458 (h!13503 (_ BitVec 64)) (t!18698 List!12462)) )
))
(declare-fun arrayNoDuplicates!0 (array!38302 (_ BitVec 32) List!12462) Bool)

(assert (=> b!639673 (arrayNoDuplicates!0 lt!296036 j!136 Nil!12459)))

(declare-fun lt!296041 () Unit!21618)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38302 (_ BitVec 32) (_ BitVec 32)) Unit!21618)

(assert (=> b!639673 (= lt!296041 (lemmaNoDuplicateFromThenFromBigger!0 lt!296036 #b00000000000000000000000000000000 j!136))))

(assert (=> b!639673 (arrayNoDuplicates!0 lt!296036 #b00000000000000000000000000000000 Nil!12459)))

(declare-fun lt!296034 () Unit!21618)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38302 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12462) Unit!21618)

(assert (=> b!639673 (= lt!296034 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12459))))

(assert (=> b!639673 (arrayContainsKey!0 lt!296036 (select (arr!18368 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!296035 () Unit!21618)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38302 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21618)

(assert (=> b!639673 (= lt!296035 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!296036 (select (arr!18368 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!639674 () Bool)

(declare-fun res!414337 () Bool)

(assert (=> b!639674 (=> (not res!414337) (not e!366124))))

(assert (=> b!639674 (= res!414337 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12459))))

(declare-fun b!639670 () Bool)

(assert (=> b!639670 (= e!366124 e!366119)))

(declare-fun res!414335 () Bool)

(assert (=> b!639670 (=> (not res!414335) (not e!366119))))

(assert (=> b!639670 (= res!414335 (= (select (store (arr!18368 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!639670 (= lt!296036 (array!38303 (store (arr!18368 a!2986) i!1108 k!1786) (size!18732 a!2986)))))

(declare-fun res!414336 () Bool)

(assert (=> start!57844 (=> (not res!414336) (not e!366121))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57844 (= res!414336 (validMask!0 mask!3053))))

(assert (=> start!57844 e!366121))

(assert (=> start!57844 true))

(declare-fun array_inv!14142 (array!38302) Bool)

(assert (=> start!57844 (array_inv!14142 a!2986)))

(assert (= (and start!57844 res!414336) b!639672))

(assert (= (and b!639672 res!414329) b!639667))

(assert (= (and b!639667 res!414342) b!639660))

(assert (= (and b!639660 res!414334) b!639671))

(assert (= (and b!639671 res!414331) b!639663))

(assert (= (and b!639663 res!414340) b!639662))

(assert (= (and b!639662 res!414338) b!639674))

(assert (= (and b!639674 res!414337) b!639669))

(assert (= (and b!639669 res!414341) b!639670))

(assert (= (and b!639670 res!414335) b!639661))

(assert (= (and b!639661 res!414339) b!639665))

(assert (= (and b!639665 res!414328) b!639666))

(assert (= (and b!639665 c!73031) b!639656))

(assert (= (and b!639665 (not c!73031)) b!639657))

(assert (= (and b!639665 (not res!414333)) b!639659))

(assert (= (and b!639659 res!414332) b!639664))

(assert (= (and b!639664 (not res!414343)) b!639668))

(assert (= (and b!639668 res!414344) b!639658))

(assert (= (and b!639659 (not res!414330)) b!639673))

(declare-fun m!613577 () Bool)

(assert (=> b!639659 m!613577))

(declare-fun m!613579 () Bool)

(assert (=> b!639659 m!613579))

(declare-fun m!613581 () Bool)

(assert (=> b!639659 m!613581))

(declare-fun m!613583 () Bool)

(assert (=> b!639674 m!613583))

(declare-fun m!613585 () Bool)

(assert (=> start!57844 m!613585))

(declare-fun m!613587 () Bool)

(assert (=> start!57844 m!613587))

(declare-fun m!613589 () Bool)

(assert (=> b!639663 m!613589))

(declare-fun m!613591 () Bool)

(assert (=> b!639669 m!613591))

(assert (=> b!639673 m!613577))

(declare-fun m!613593 () Bool)

(assert (=> b!639673 m!613593))

(declare-fun m!613595 () Bool)

(assert (=> b!639673 m!613595))

(assert (=> b!639673 m!613577))

(declare-fun m!613597 () Bool)

(assert (=> b!639673 m!613597))

(assert (=> b!639673 m!613577))

(declare-fun m!613599 () Bool)

(assert (=> b!639673 m!613599))

(declare-fun m!613601 () Bool)

(assert (=> b!639673 m!613601))

(declare-fun m!613603 () Bool)

(assert (=> b!639673 m!613603))

(assert (=> b!639658 m!613577))

(assert (=> b!639658 m!613577))

(declare-fun m!613605 () Bool)

(assert (=> b!639658 m!613605))

(declare-fun m!613607 () Bool)

(assert (=> b!639660 m!613607))

(assert (=> b!639664 m!613577))

(declare-fun m!613609 () Bool)

(assert (=> b!639665 m!613609))

(declare-fun m!613611 () Bool)

(assert (=> b!639665 m!613611))

(declare-fun m!613613 () Bool)

(assert (=> b!639665 m!613613))

(assert (=> b!639665 m!613579))

(assert (=> b!639665 m!613577))

(declare-fun m!613615 () Bool)

(assert (=> b!639665 m!613615))

(declare-fun m!613617 () Bool)

(assert (=> b!639665 m!613617))

(assert (=> b!639665 m!613577))

(declare-fun m!613619 () Bool)

(assert (=> b!639665 m!613619))

(assert (=> b!639670 m!613579))

(declare-fun m!613621 () Bool)

(assert (=> b!639670 m!613621))

(assert (=> b!639667 m!613577))

(assert (=> b!639667 m!613577))

(declare-fun m!613623 () Bool)

(assert (=> b!639667 m!613623))

(assert (=> b!639668 m!613577))

(assert (=> b!639668 m!613577))

(declare-fun m!613625 () Bool)

(assert (=> b!639668 m!613625))

(declare-fun m!613627 () Bool)

(assert (=> b!639662 m!613627))

(declare-fun m!613629 () Bool)

(assert (=> b!639661 m!613629))

(assert (=> b!639661 m!613577))

(assert (=> b!639661 m!613577))

(declare-fun m!613631 () Bool)

(assert (=> b!639661 m!613631))

(declare-fun m!613633 () Bool)

(assert (=> b!639671 m!613633))

(push 1)

(assert (not b!639658))

(assert (not b!639671))

(assert (not b!639662))

(assert (not b!639673))

(assert (not b!639665))

(assert (not b!639661))

(assert (not start!57844))

(assert (not b!639667))

(assert (not b!639663))

(assert (not b!639668))

(assert (not b!639674))

(assert (not b!639660))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!639754 () Bool)

(declare-fun e!366179 () Bool)

(declare-fun call!33491 () Bool)

(assert (=> b!639754 (= e!366179 call!33491)))

(declare-fun b!639755 () Bool)

(declare-fun e!366178 () Bool)

(assert (=> b!639755 (= e!366178 e!366179)))

(declare-fun c!73061 () Bool)

(assert (=> b!639755 (= c!73061 (validKeyInArray!0 (select (arr!18368 a!2986) #b00000000000000000000000000000000)))))

(declare-fun bm!33488 () Bool)

(assert (=> bm!33488 (= call!33491 (arrayNoDuplicates!0 a!2986 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!73061 (Cons!12458 (select (arr!18368 a!2986) #b00000000000000000000000000000000) Nil!12459) Nil!12459)))))

(declare-fun b!639757 () Bool)

(assert (=> b!639757 (= e!366179 call!33491)))

(declare-fun b!639758 () Bool)

(declare-fun e!366180 () Bool)

(assert (=> b!639758 (= e!366180 e!366178)))

(declare-fun res!414367 () Bool)

(assert (=> b!639758 (=> (not res!414367) (not e!366178))))

(declare-fun e!366181 () Bool)

(assert (=> b!639758 (= res!414367 (not e!366181))))

(declare-fun res!414366 () Bool)

(assert (=> b!639758 (=> (not res!414366) (not e!366181))))

(assert (=> b!639758 (= res!414366 (validKeyInArray!0 (select (arr!18368 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!639756 () Bool)

(declare-fun contains!3127 (List!12462 (_ BitVec 64)) Bool)

(assert (=> b!639756 (= e!366181 (contains!3127 Nil!12459 (select (arr!18368 a!2986) #b00000000000000000000000000000000)))))

(declare-fun d!90227 () Bool)

(declare-fun res!414368 () Bool)

(assert (=> d!90227 (=> res!414368 e!366180)))

(assert (=> d!90227 (= res!414368 (bvsge #b00000000000000000000000000000000 (size!18732 a!2986)))))

(assert (=> d!90227 (= (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12459) e!366180)))

(assert (= (and d!90227 (not res!414368)) b!639758))

(assert (= (and b!639758 res!414366) b!639756))

(assert (= (and b!639758 res!414367) b!639755))

(assert (= (and b!639755 c!73061) b!639754))

(assert (= (and b!639755 (not c!73061)) b!639757))

(assert (= (or b!639754 b!639757) bm!33488))

(declare-fun m!613695 () Bool)

(assert (=> b!639755 m!613695))

(assert (=> b!639755 m!613695))

(declare-fun m!613697 () Bool)

(assert (=> b!639755 m!613697))

(assert (=> bm!33488 m!613695))

(declare-fun m!613699 () Bool)

(assert (=> bm!33488 m!613699))

(assert (=> b!639758 m!613695))

(assert (=> b!639758 m!613695))

(assert (=> b!639758 m!613697))

(assert (=> b!639756 m!613695))

(assert (=> b!639756 m!613695))

(declare-fun m!613701 () Bool)

(assert (=> b!639756 m!613701))

(assert (=> b!639674 d!90227))

(declare-fun b!639789 () Bool)

(declare-fun e!366207 () Bool)

(declare-fun call!33497 () Bool)

(assert (=> b!639789 (= e!366207 call!33497)))

(declare-fun b!639790 () Bool)

(declare-fun e!366208 () Bool)

(declare-fun e!366206 () Bool)

(assert (=> b!639790 (= e!366208 e!366206)))

(declare-fun c!73067 () Bool)

(assert (=> b!639790 (= c!73067 (validKeyInArray!0 (select (arr!18368 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!639791 () Bool)

(assert (=> b!639791 (= e!366206 call!33497)))

(declare-fun bm!33494 () Bool)

(assert (=> bm!33494 (= call!33497 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2986 mask!3053))))

(declare-fun b!639788 () Bool)

(assert (=> b!639788 (= e!366206 e!366207)))

(declare-fun lt!296087 () (_ BitVec 64))

(assert (=> b!639788 (= lt!296087 (select (arr!18368 a!2986) #b00000000000000000000000000000000))))

(declare-fun lt!296089 () Unit!21618)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38302 (_ BitVec 64) (_ BitVec 32)) Unit!21618)

(assert (=> b!639788 (= lt!296089 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2986 lt!296087 #b00000000000000000000000000000000))))

(assert (=> b!639788 (arrayContainsKey!0 a!2986 lt!296087 #b00000000000000000000000000000000)))

(declare-fun lt!296088 () Unit!21618)

(assert (=> b!639788 (= lt!296088 lt!296089)))

(declare-fun res!414388 () Bool)

(assert (=> b!639788 (= res!414388 (= (seekEntryOrOpen!0 (select (arr!18368 a!2986) #b00000000000000000000000000000000) a!2986 mask!3053) (Found!6815 #b00000000000000000000000000000000)))))

(assert (=> b!639788 (=> (not res!414388) (not e!366207))))

(declare-fun d!90243 () Bool)

(declare-fun res!414389 () Bool)

(assert (=> d!90243 (=> res!414389 e!366208)))

(assert (=> d!90243 (= res!414389 (bvsge #b00000000000000000000000000000000 (size!18732 a!2986)))))

(assert (=> d!90243 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053) e!366208)))

(assert (= (and d!90243 (not res!414389)) b!639790))

(assert (= (and b!639790 c!73067) b!639788))

(assert (= (and b!639790 (not c!73067)) b!639791))

(assert (= (and b!639788 res!414388) b!639789))

(assert (= (or b!639789 b!639791) bm!33494))

(assert (=> b!639790 m!613695))

(assert (=> b!639790 m!613695))

(assert (=> b!639790 m!613697))

(declare-fun m!613709 () Bool)

(assert (=> bm!33494 m!613709))

(assert (=> b!639788 m!613695))

(declare-fun m!613711 () Bool)

(assert (=> b!639788 m!613711))

(declare-fun m!613713 () Bool)

(assert (=> b!639788 m!613713))

(assert (=> b!639788 m!613695))

(declare-fun m!613715 () Bool)

(assert (=> b!639788 m!613715))

(assert (=> b!639662 d!90243))

(declare-fun d!90249 () Bool)

(assert (=> d!90249 (arrayNoDuplicates!0 lt!296036 j!136 Nil!12459)))

(declare-fun lt!296094 () Unit!21618)

(declare-fun choose!39 (array!38302 (_ BitVec 32) (_ BitVec 32)) Unit!21618)

(assert (=> d!90249 (= lt!296094 (choose!39 lt!296036 #b00000000000000000000000000000000 j!136))))

(assert (=> d!90249 (bvslt (size!18732 lt!296036) #b01111111111111111111111111111111)))

(assert (=> d!90249 (= (lemmaNoDuplicateFromThenFromBigger!0 lt!296036 #b00000000000000000000000000000000 j!136) lt!296094)))

(declare-fun bs!19167 () Bool)

(assert (= bs!19167 d!90249))

(assert (=> bs!19167 m!613595))

(declare-fun m!613717 () Bool)

(assert (=> bs!19167 m!613717))

(assert (=> b!639673 d!90249))

(declare-fun d!90255 () Bool)

(declare-fun res!414394 () Bool)

(declare-fun e!366216 () Bool)

(assert (=> d!90255 (=> res!414394 e!366216)))

(assert (=> d!90255 (= res!414394 (= (select (arr!18368 lt!296036) (bvadd #b00000000000000000000000000000001 j!136)) (select (arr!18368 a!2986) j!136)))))

(assert (=> d!90255 (= (arrayContainsKey!0 lt!296036 (select (arr!18368 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136)) e!366216)))

(declare-fun b!639802 () Bool)

(declare-fun e!366217 () Bool)

(assert (=> b!639802 (= e!366216 e!366217)))

(declare-fun res!414395 () Bool)

(assert (=> b!639802 (=> (not res!414395) (not e!366217))))

(assert (=> b!639802 (= res!414395 (bvslt (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001) (size!18732 lt!296036)))))

(declare-fun b!639803 () Bool)

(assert (=> b!639803 (= e!366217 (arrayContainsKey!0 lt!296036 (select (arr!18368 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!90255 (not res!414394)) b!639802))

(assert (= (and b!639802 res!414395) b!639803))

(declare-fun m!613725 () Bool)

(assert (=> d!90255 m!613725))

(assert (=> b!639803 m!613577))

(declare-fun m!613727 () Bool)

(assert (=> b!639803 m!613727))

(assert (=> b!639673 d!90255))

(declare-fun d!90261 () Bool)

(declare-fun e!366236 () Bool)

(assert (=> d!90261 e!366236))

(declare-fun res!414406 () Bool)

(assert (=> d!90261 (=> (not res!414406) (not e!366236))))

(assert (=> d!90261 (= res!414406 (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18732 a!2986))))))

(declare-fun lt!296104 () Unit!21618)

(declare-fun choose!41 (array!38302 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12462) Unit!21618)

(assert (=> d!90261 (= lt!296104 (choose!41 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12459))))

(assert (=> d!90261 (bvslt (size!18732 a!2986) #b01111111111111111111111111111111)))

(assert (=> d!90261 (= (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12459) lt!296104)))

(declare-fun b!639830 () Bool)

(assert (=> b!639830 (= e!366236 (arrayNoDuplicates!0 (array!38303 (store (arr!18368 a!2986) i!1108 k!1786) (size!18732 a!2986)) #b00000000000000000000000000000000 Nil!12459))))

(assert (= (and d!90261 res!414406) b!639830))

(declare-fun m!613735 () Bool)

(assert (=> d!90261 m!613735))

(assert (=> b!639830 m!613579))

(declare-fun m!613737 () Bool)

(assert (=> b!639830 m!613737))

(assert (=> b!639673 d!90261))

(declare-fun b!639831 () Bool)

(declare-fun e!366238 () Bool)

(declare-fun call!33500 () Bool)

(assert (=> b!639831 (= e!366238 call!33500)))

(declare-fun b!639832 () Bool)

(declare-fun e!366237 () Bool)

(assert (=> b!639832 (= e!366237 e!366238)))

(declare-fun c!73079 () Bool)

(assert (=> b!639832 (= c!73079 (validKeyInArray!0 (select (arr!18368 lt!296036) j!136)))))

(declare-fun bm!33497 () Bool)

(assert (=> bm!33497 (= call!33500 (arrayNoDuplicates!0 lt!296036 (bvadd j!136 #b00000000000000000000000000000001) (ite c!73079 (Cons!12458 (select (arr!18368 lt!296036) j!136) Nil!12459) Nil!12459)))))

(declare-fun b!639834 () Bool)

(assert (=> b!639834 (= e!366238 call!33500)))

(declare-fun b!639835 () Bool)

(declare-fun e!366239 () Bool)

(assert (=> b!639835 (= e!366239 e!366237)))

(declare-fun res!414408 () Bool)

(assert (=> b!639835 (=> (not res!414408) (not e!366237))))

(declare-fun e!366240 () Bool)

(assert (=> b!639835 (= res!414408 (not e!366240))))

(declare-fun res!414407 () Bool)

(assert (=> b!639835 (=> (not res!414407) (not e!366240))))

(assert (=> b!639835 (= res!414407 (validKeyInArray!0 (select (arr!18368 lt!296036) j!136)))))

(declare-fun b!639833 () Bool)

(assert (=> b!639833 (= e!366240 (contains!3127 Nil!12459 (select (arr!18368 lt!296036) j!136)))))

(declare-fun d!90267 () Bool)

(declare-fun res!414409 () Bool)

(assert (=> d!90267 (=> res!414409 e!366239)))

(assert (=> d!90267 (= res!414409 (bvsge j!136 (size!18732 lt!296036)))))

(assert (=> d!90267 (= (arrayNoDuplicates!0 lt!296036 j!136 Nil!12459) e!366239)))

(assert (= (and d!90267 (not res!414409)) b!639835))

(assert (= (and b!639835 res!414407) b!639833))

(assert (= (and b!639835 res!414408) b!639832))

(assert (= (and b!639832 c!73079) b!639831))

(assert (= (and b!639832 (not c!73079)) b!639834))

(assert (= (or b!639831 b!639834) bm!33497))

(declare-fun m!613739 () Bool)

(assert (=> b!639832 m!613739))

(assert (=> b!639832 m!613739))

(declare-fun m!613741 () Bool)

(assert (=> b!639832 m!613741))

(assert (=> bm!33497 m!613739))

(declare-fun m!613743 () Bool)

(assert (=> bm!33497 m!613743))

(assert (=> b!639835 m!613739))

(assert (=> b!639835 m!613739))

(assert (=> b!639835 m!613741))

(assert (=> b!639833 m!613739))

(assert (=> b!639833 m!613739))

(declare-fun m!613745 () Bool)

(assert (=> b!639833 m!613745))

(assert (=> b!639673 d!90267))

(declare-fun d!90269 () Bool)

(assert (=> d!90269 (arrayContainsKey!0 lt!296036 (select (arr!18368 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!296111 () Unit!21618)

(declare-fun choose!114 (array!38302 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21618)

(assert (=> d!90269 (= lt!296111 (choose!114 lt!296036 (select (arr!18368 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> d!90269 (bvsge index!984 #b00000000000000000000000000000000)))

(assert (=> d!90269 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!296036 (select (arr!18368 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)) lt!296111)))

(declare-fun bs!19169 () Bool)

