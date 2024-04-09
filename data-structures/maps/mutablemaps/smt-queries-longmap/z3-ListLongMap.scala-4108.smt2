; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!56156 () Bool)

(assert start!56156)

(declare-fun b!620607 () Bool)

(declare-fun res!400027 () Bool)

(declare-fun e!355951 () Bool)

(assert (=> b!620607 (=> (not res!400027) (not e!355951))))

(declare-datatypes ((array!37589 0))(
  ( (array!37590 (arr!18037 (Array (_ BitVec 32) (_ BitVec 64))) (size!18401 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37589)

(declare-datatypes ((List!12131 0))(
  ( (Nil!12128) (Cons!12127 (h!13172 (_ BitVec 64)) (t!18367 List!12131)) )
))
(declare-fun arrayNoDuplicates!0 (array!37589 (_ BitVec 32) List!12131) Bool)

(assert (=> b!620607 (= res!400027 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12128))))

(declare-fun b!620608 () Bool)

(declare-fun res!400021 () Bool)

(assert (=> b!620608 (=> (not res!400021) (not e!355951))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!620608 (= res!400021 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18037 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!620609 () Bool)

(declare-fun res!400016 () Bool)

(declare-fun e!355963 () Bool)

(assert (=> b!620609 (=> (not res!400016) (not e!355963))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!620609 (= res!400016 (validKeyInArray!0 (select (arr!18037 a!2986) j!136)))))

(declare-fun b!620611 () Bool)

(declare-fun res!400026 () Bool)

(assert (=> b!620611 (= res!400026 (bvsge j!136 index!984))))

(declare-fun e!355957 () Bool)

(assert (=> b!620611 (=> res!400026 e!355957)))

(declare-fun e!355950 () Bool)

(assert (=> b!620611 (= e!355950 e!355957)))

(declare-fun b!620612 () Bool)

(declare-datatypes ((Unit!20660 0))(
  ( (Unit!20661) )
))
(declare-fun e!355956 () Unit!20660)

(declare-fun Unit!20662 () Unit!20660)

(assert (=> b!620612 (= e!355956 Unit!20662)))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun res!400025 () Bool)

(assert (=> b!620612 (= res!400025 (= (select (store (arr!18037 a!2986) i!1108 k0!1786) index!984) (select (arr!18037 a!2986) j!136)))))

(assert (=> b!620612 (=> (not res!400025) (not e!355950))))

(assert (=> b!620612 e!355950))

(declare-fun c!70665 () Bool)

(assert (=> b!620612 (= c!70665 (bvslt j!136 index!984))))

(declare-fun lt!287001 () Unit!20660)

(declare-fun e!355961 () Unit!20660)

(assert (=> b!620612 (= lt!287001 e!355961)))

(declare-fun c!70664 () Bool)

(assert (=> b!620612 (= c!70664 (bvslt index!984 j!136))))

(declare-fun lt!287015 () Unit!20660)

(declare-fun e!355960 () Unit!20660)

(assert (=> b!620612 (= lt!287015 e!355960)))

(assert (=> b!620612 false))

(declare-fun b!620613 () Bool)

(declare-fun e!355952 () Bool)

(declare-datatypes ((SeekEntryResult!6484 0))(
  ( (MissingZero!6484 (index!28219 (_ BitVec 32))) (Found!6484 (index!28220 (_ BitVec 32))) (Intermediate!6484 (undefined!7296 Bool) (index!28221 (_ BitVec 32)) (x!57021 (_ BitVec 32))) (Undefined!6484) (MissingVacant!6484 (index!28222 (_ BitVec 32))) )
))
(declare-fun lt!287012 () SeekEntryResult!6484)

(declare-fun lt!287004 () SeekEntryResult!6484)

(assert (=> b!620613 (= e!355952 (= lt!287012 lt!287004))))

(declare-fun b!620614 () Bool)

(assert (=> b!620614 false))

(declare-fun lt!287003 () array!37589)

(declare-fun lt!287002 () Unit!20660)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37589 (_ BitVec 64) (_ BitVec 32) List!12131) Unit!20660)

(assert (=> b!620614 (= lt!287002 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!287003 (select (arr!18037 a!2986) j!136) j!136 Nil!12128))))

(assert (=> b!620614 (arrayNoDuplicates!0 lt!287003 j!136 Nil!12128)))

(declare-fun lt!287006 () Unit!20660)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37589 (_ BitVec 32) (_ BitVec 32)) Unit!20660)

(assert (=> b!620614 (= lt!287006 (lemmaNoDuplicateFromThenFromBigger!0 lt!287003 #b00000000000000000000000000000000 j!136))))

(assert (=> b!620614 (arrayNoDuplicates!0 lt!287003 #b00000000000000000000000000000000 Nil!12128)))

(declare-fun lt!287000 () Unit!20660)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37589 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12131) Unit!20660)

(assert (=> b!620614 (= lt!287000 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12128))))

(declare-fun arrayContainsKey!0 (array!37589 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!620614 (arrayContainsKey!0 lt!287003 (select (arr!18037 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!286999 () Unit!20660)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37589 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!20660)

(assert (=> b!620614 (= lt!286999 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!287003 (select (arr!18037 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!20663 () Unit!20660)

(assert (=> b!620614 (= e!355961 Unit!20663)))

(declare-fun b!620615 () Bool)

(declare-fun e!355955 () Bool)

(assert (=> b!620615 (= e!355955 (arrayContainsKey!0 lt!287003 (select (arr!18037 a!2986) j!136) index!984))))

(declare-fun b!620616 () Bool)

(assert (=> b!620616 (= e!355963 e!355951)))

(declare-fun res!400020 () Bool)

(assert (=> b!620616 (=> (not res!400020) (not e!355951))))

(declare-fun lt!287011 () SeekEntryResult!6484)

(assert (=> b!620616 (= res!400020 (or (= lt!287011 (MissingZero!6484 i!1108)) (= lt!287011 (MissingVacant!6484 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37589 (_ BitVec 32)) SeekEntryResult!6484)

(assert (=> b!620616 (= lt!287011 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!620617 () Bool)

(declare-fun Unit!20664 () Unit!20660)

(assert (=> b!620617 (= e!355956 Unit!20664)))

(declare-fun b!620618 () Bool)

(declare-fun e!355962 () Unit!20660)

(declare-fun Unit!20665 () Unit!20660)

(assert (=> b!620618 (= e!355962 Unit!20665)))

(assert (=> b!620618 false))

(declare-fun b!620619 () Bool)

(declare-fun e!355958 () Bool)

(assert (=> b!620619 (= e!355958 (arrayContainsKey!0 lt!287003 (select (arr!18037 a!2986) j!136) index!984))))

(declare-fun b!620620 () Bool)

(declare-fun e!355953 () Bool)

(assert (=> b!620620 (= e!355951 e!355953)))

(declare-fun res!400015 () Bool)

(assert (=> b!620620 (=> (not res!400015) (not e!355953))))

(assert (=> b!620620 (= res!400015 (= (select (store (arr!18037 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!620620 (= lt!287003 (array!37590 (store (arr!18037 a!2986) i!1108 k0!1786) (size!18401 a!2986)))))

(declare-fun b!620621 () Bool)

(declare-fun res!400028 () Bool)

(assert (=> b!620621 (= res!400028 (arrayContainsKey!0 lt!287003 (select (arr!18037 a!2986) j!136) j!136))))

(assert (=> b!620621 (=> (not res!400028) (not e!355958))))

(assert (=> b!620621 (= e!355957 e!355958)))

(declare-fun b!620622 () Bool)

(declare-fun res!400023 () Bool)

(assert (=> b!620622 (=> (not res!400023) (not e!355963))))

(assert (=> b!620622 (= res!400023 (and (= (size!18401 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18401 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18401 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!620623 () Bool)

(declare-fun Unit!20666 () Unit!20660)

(assert (=> b!620623 (= e!355960 Unit!20666)))

(declare-fun b!620624 () Bool)

(declare-fun Unit!20667 () Unit!20660)

(assert (=> b!620624 (= e!355962 Unit!20667)))

(declare-fun res!400018 () Bool)

(assert (=> start!56156 (=> (not res!400018) (not e!355963))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56156 (= res!400018 (validMask!0 mask!3053))))

(assert (=> start!56156 e!355963))

(assert (=> start!56156 true))

(declare-fun array_inv!13811 (array!37589) Bool)

(assert (=> start!56156 (array_inv!13811 a!2986)))

(declare-fun b!620610 () Bool)

(assert (=> b!620610 false))

(declare-fun lt!287005 () Unit!20660)

(assert (=> b!620610 (= lt!287005 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!287003 (select (arr!18037 a!2986) j!136) index!984 Nil!12128))))

(assert (=> b!620610 (arrayNoDuplicates!0 lt!287003 index!984 Nil!12128)))

(declare-fun lt!287016 () Unit!20660)

(assert (=> b!620610 (= lt!287016 (lemmaNoDuplicateFromThenFromBigger!0 lt!287003 #b00000000000000000000000000000000 index!984))))

(assert (=> b!620610 (arrayNoDuplicates!0 lt!287003 #b00000000000000000000000000000000 Nil!12128)))

(declare-fun lt!287008 () Unit!20660)

(assert (=> b!620610 (= lt!287008 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12128))))

(assert (=> b!620610 (arrayContainsKey!0 lt!287003 (select (arr!18037 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!287013 () Unit!20660)

(assert (=> b!620610 (= lt!287013 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!287003 (select (arr!18037 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!620610 e!355955))

(declare-fun res!400013 () Bool)

(assert (=> b!620610 (=> (not res!400013) (not e!355955))))

(assert (=> b!620610 (= res!400013 (arrayContainsKey!0 lt!287003 (select (arr!18037 a!2986) j!136) j!136))))

(declare-fun Unit!20668 () Unit!20660)

(assert (=> b!620610 (= e!355960 Unit!20668)))

(declare-fun b!620625 () Bool)

(declare-fun res!400019 () Bool)

(assert (=> b!620625 (=> (not res!400019) (not e!355951))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37589 (_ BitVec 32)) Bool)

(assert (=> b!620625 (= res!400019 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!620626 () Bool)

(declare-fun e!355959 () Bool)

(assert (=> b!620626 (= e!355959 (not true))))

(declare-fun lt!287009 () Unit!20660)

(assert (=> b!620626 (= lt!287009 e!355956)))

(declare-fun c!70667 () Bool)

(declare-fun lt!286997 () SeekEntryResult!6484)

(assert (=> b!620626 (= c!70667 (= lt!286997 (Found!6484 index!984)))))

(declare-fun lt!287014 () Unit!20660)

(assert (=> b!620626 (= lt!287014 e!355962)))

(declare-fun c!70666 () Bool)

(assert (=> b!620626 (= c!70666 (= lt!286997 Undefined!6484))))

(declare-fun lt!286998 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37589 (_ BitVec 32)) SeekEntryResult!6484)

(assert (=> b!620626 (= lt!286997 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!286998 lt!287003 mask!3053))))

(assert (=> b!620626 e!355952))

(declare-fun res!400017 () Bool)

(assert (=> b!620626 (=> (not res!400017) (not e!355952))))

(declare-fun lt!287010 () (_ BitVec 32))

(assert (=> b!620626 (= res!400017 (= lt!287004 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!287010 vacantSpotIndex!68 lt!286998 lt!287003 mask!3053)))))

(assert (=> b!620626 (= lt!287004 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!287010 vacantSpotIndex!68 (select (arr!18037 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!620626 (= lt!286998 (select (store (arr!18037 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!287007 () Unit!20660)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37589 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!20660)

(assert (=> b!620626 (= lt!287007 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!287010 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!620626 (= lt!287010 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!620627 () Bool)

(declare-fun Unit!20669 () Unit!20660)

(assert (=> b!620627 (= e!355961 Unit!20669)))

(declare-fun b!620628 () Bool)

(declare-fun res!400024 () Bool)

(assert (=> b!620628 (=> (not res!400024) (not e!355963))))

(assert (=> b!620628 (= res!400024 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!620629 () Bool)

(assert (=> b!620629 (= e!355953 e!355959)))

(declare-fun res!400022 () Bool)

(assert (=> b!620629 (=> (not res!400022) (not e!355959))))

(assert (=> b!620629 (= res!400022 (and (= lt!287012 (Found!6484 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18037 a!2986) index!984) (select (arr!18037 a!2986) j!136))) (not (= (select (arr!18037 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!620629 (= lt!287012 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18037 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!620630 () Bool)

(declare-fun res!400014 () Bool)

(assert (=> b!620630 (=> (not res!400014) (not e!355963))))

(assert (=> b!620630 (= res!400014 (validKeyInArray!0 k0!1786))))

(assert (= (and start!56156 res!400018) b!620622))

(assert (= (and b!620622 res!400023) b!620609))

(assert (= (and b!620609 res!400016) b!620630))

(assert (= (and b!620630 res!400014) b!620628))

(assert (= (and b!620628 res!400024) b!620616))

(assert (= (and b!620616 res!400020) b!620625))

(assert (= (and b!620625 res!400019) b!620607))

(assert (= (and b!620607 res!400027) b!620608))

(assert (= (and b!620608 res!400021) b!620620))

(assert (= (and b!620620 res!400015) b!620629))

(assert (= (and b!620629 res!400022) b!620626))

(assert (= (and b!620626 res!400017) b!620613))

(assert (= (and b!620626 c!70666) b!620618))

(assert (= (and b!620626 (not c!70666)) b!620624))

(assert (= (and b!620626 c!70667) b!620612))

(assert (= (and b!620626 (not c!70667)) b!620617))

(assert (= (and b!620612 res!400025) b!620611))

(assert (= (and b!620611 (not res!400026)) b!620621))

(assert (= (and b!620621 res!400028) b!620619))

(assert (= (and b!620612 c!70665) b!620614))

(assert (= (and b!620612 (not c!70665)) b!620627))

(assert (= (and b!620612 c!70664) b!620610))

(assert (= (and b!620612 (not c!70664)) b!620623))

(assert (= (and b!620610 res!400013) b!620615))

(declare-fun m!596569 () Bool)

(assert (=> b!620612 m!596569))

(declare-fun m!596571 () Bool)

(assert (=> b!620612 m!596571))

(declare-fun m!596573 () Bool)

(assert (=> b!620612 m!596573))

(declare-fun m!596575 () Bool)

(assert (=> b!620607 m!596575))

(declare-fun m!596577 () Bool)

(assert (=> b!620628 m!596577))

(declare-fun m!596579 () Bool)

(assert (=> b!620629 m!596579))

(assert (=> b!620629 m!596573))

(assert (=> b!620629 m!596573))

(declare-fun m!596581 () Bool)

(assert (=> b!620629 m!596581))

(assert (=> b!620609 m!596573))

(assert (=> b!620609 m!596573))

(declare-fun m!596583 () Bool)

(assert (=> b!620609 m!596583))

(declare-fun m!596585 () Bool)

(assert (=> start!56156 m!596585))

(declare-fun m!596587 () Bool)

(assert (=> start!56156 m!596587))

(assert (=> b!620614 m!596573))

(assert (=> b!620614 m!596573))

(declare-fun m!596589 () Bool)

(assert (=> b!620614 m!596589))

(declare-fun m!596591 () Bool)

(assert (=> b!620614 m!596591))

(assert (=> b!620614 m!596573))

(declare-fun m!596593 () Bool)

(assert (=> b!620614 m!596593))

(declare-fun m!596595 () Bool)

(assert (=> b!620614 m!596595))

(assert (=> b!620614 m!596573))

(declare-fun m!596597 () Bool)

(assert (=> b!620614 m!596597))

(declare-fun m!596599 () Bool)

(assert (=> b!620614 m!596599))

(declare-fun m!596601 () Bool)

(assert (=> b!620614 m!596601))

(assert (=> b!620619 m!596573))

(assert (=> b!620619 m!596573))

(declare-fun m!596603 () Bool)

(assert (=> b!620619 m!596603))

(assert (=> b!620621 m!596573))

(assert (=> b!620621 m!596573))

(declare-fun m!596605 () Bool)

(assert (=> b!620621 m!596605))

(declare-fun m!596607 () Bool)

(assert (=> b!620616 m!596607))

(declare-fun m!596609 () Bool)

(assert (=> b!620625 m!596609))

(declare-fun m!596611 () Bool)

(assert (=> b!620626 m!596611))

(declare-fun m!596613 () Bool)

(assert (=> b!620626 m!596613))

(declare-fun m!596615 () Bool)

(assert (=> b!620626 m!596615))

(assert (=> b!620626 m!596569))

(assert (=> b!620626 m!596573))

(declare-fun m!596617 () Bool)

(assert (=> b!620626 m!596617))

(declare-fun m!596619 () Bool)

(assert (=> b!620626 m!596619))

(assert (=> b!620626 m!596573))

(declare-fun m!596621 () Bool)

(assert (=> b!620626 m!596621))

(assert (=> b!620615 m!596573))

(assert (=> b!620615 m!596573))

(assert (=> b!620615 m!596603))

(assert (=> b!620620 m!596569))

(declare-fun m!596623 () Bool)

(assert (=> b!620620 m!596623))

(declare-fun m!596625 () Bool)

(assert (=> b!620608 m!596625))

(assert (=> b!620610 m!596573))

(declare-fun m!596627 () Bool)

(assert (=> b!620610 m!596627))

(assert (=> b!620610 m!596573))

(assert (=> b!620610 m!596605))

(declare-fun m!596629 () Bool)

(assert (=> b!620610 m!596629))

(declare-fun m!596631 () Bool)

(assert (=> b!620610 m!596631))

(assert (=> b!620610 m!596573))

(declare-fun m!596633 () Bool)

(assert (=> b!620610 m!596633))

(assert (=> b!620610 m!596599))

(assert (=> b!620610 m!596601))

(assert (=> b!620610 m!596573))

(declare-fun m!596635 () Bool)

(assert (=> b!620610 m!596635))

(assert (=> b!620610 m!596573))

(declare-fun m!596637 () Bool)

(assert (=> b!620630 m!596637))

(check-sat (not b!620626) (not b!620619) (not b!620610) (not b!620625) (not b!620630) (not b!620614) (not start!56156) (not b!620607) (not b!620629) (not b!620621) (not b!620628) (not b!620615) (not b!620616) (not b!620609))
(check-sat)
