; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59388 () Bool)

(assert start!59388)

(declare-datatypes ((array!38664 0))(
  ( (array!38665 (arr!18528 (Array (_ BitVec 32) (_ BitVec 64))) (size!18892 (_ BitVec 32))) )
))
(declare-fun lt!306073 () array!38664)

(declare-fun e!376600 () Bool)

(declare-fun b!655746 () Bool)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun a!2986 () array!38664)

(declare-fun arrayContainsKey!0 (array!38664 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!655746 (= e!376600 (arrayContainsKey!0 lt!306073 (select (arr!18528 a!2986) j!136) index!984))))

(declare-fun b!655747 () Bool)

(declare-fun e!376604 () Bool)

(declare-datatypes ((SeekEntryResult!6975 0))(
  ( (MissingZero!6975 (index!30258 (_ BitVec 32))) (Found!6975 (index!30259 (_ BitVec 32))) (Intermediate!6975 (undefined!7787 Bool) (index!30260 (_ BitVec 32)) (x!59073 (_ BitVec 32))) (Undefined!6975) (MissingVacant!6975 (index!30261 (_ BitVec 32))) )
))
(declare-fun lt!306064 () SeekEntryResult!6975)

(declare-fun lt!306074 () SeekEntryResult!6975)

(assert (=> b!655747 (= e!376604 (= lt!306064 lt!306074))))

(declare-fun b!655748 () Bool)

(declare-fun res!425487 () Bool)

(declare-fun e!376603 () Bool)

(assert (=> b!655748 (=> (not res!425487) (not e!376603))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!655748 (= res!425487 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18528 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!655749 () Bool)

(declare-datatypes ((Unit!22594 0))(
  ( (Unit!22595) )
))
(declare-fun e!376601 () Unit!22594)

(declare-fun Unit!22596 () Unit!22594)

(assert (=> b!655749 (= e!376601 Unit!22596)))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun res!425493 () Bool)

(assert (=> b!655749 (= res!425493 (= (select (store (arr!18528 a!2986) i!1108 k!1786) index!984) (select (arr!18528 a!2986) j!136)))))

(declare-fun e!376596 () Bool)

(assert (=> b!655749 (=> (not res!425493) (not e!376596))))

(assert (=> b!655749 e!376596))

(declare-fun c!75503 () Bool)

(assert (=> b!655749 (= c!75503 (bvslt j!136 index!984))))

(declare-fun lt!306067 () Unit!22594)

(declare-fun e!376608 () Unit!22594)

(assert (=> b!655749 (= lt!306067 e!376608)))

(declare-fun c!75500 () Bool)

(assert (=> b!655749 (= c!75500 (bvslt index!984 j!136))))

(declare-fun lt!306080 () Unit!22594)

(declare-fun e!376607 () Unit!22594)

(assert (=> b!655749 (= lt!306080 e!376607)))

(assert (=> b!655749 false))

(declare-fun e!376602 () Bool)

(declare-fun b!655750 () Bool)

(assert (=> b!655750 (= e!376602 (arrayContainsKey!0 lt!306073 (select (arr!18528 a!2986) j!136) index!984))))

(declare-fun b!655751 () Bool)

(assert (=> b!655751 false))

(declare-fun lt!306065 () Unit!22594)

(declare-datatypes ((List!12622 0))(
  ( (Nil!12619) (Cons!12618 (h!13663 (_ BitVec 64)) (t!18858 List!12622)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38664 (_ BitVec 64) (_ BitVec 32) List!12622) Unit!22594)

(assert (=> b!655751 (= lt!306065 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!306073 (select (arr!18528 a!2986) j!136) j!136 Nil!12619))))

(declare-fun arrayNoDuplicates!0 (array!38664 (_ BitVec 32) List!12622) Bool)

(assert (=> b!655751 (arrayNoDuplicates!0 lt!306073 j!136 Nil!12619)))

(declare-fun lt!306063 () Unit!22594)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38664 (_ BitVec 32) (_ BitVec 32)) Unit!22594)

(assert (=> b!655751 (= lt!306063 (lemmaNoDuplicateFromThenFromBigger!0 lt!306073 #b00000000000000000000000000000000 j!136))))

(assert (=> b!655751 (arrayNoDuplicates!0 lt!306073 #b00000000000000000000000000000000 Nil!12619)))

(declare-fun lt!306075 () Unit!22594)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38664 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12622) Unit!22594)

(assert (=> b!655751 (= lt!306075 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12619))))

(assert (=> b!655751 (arrayContainsKey!0 lt!306073 (select (arr!18528 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!306070 () Unit!22594)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38664 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22594)

(assert (=> b!655751 (= lt!306070 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!306073 (select (arr!18528 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!22597 () Unit!22594)

(assert (=> b!655751 (= e!376608 Unit!22597)))

(declare-fun b!655752 () Bool)

(declare-fun res!425486 () Bool)

(declare-fun e!376606 () Bool)

(assert (=> b!655752 (=> (not res!425486) (not e!376606))))

(assert (=> b!655752 (= res!425486 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!655753 () Bool)

(declare-fun e!376598 () Bool)

(declare-fun e!376609 () Bool)

(assert (=> b!655753 (= e!376598 e!376609)))

(declare-fun res!425495 () Bool)

(assert (=> b!655753 (=> (not res!425495) (not e!376609))))

(assert (=> b!655753 (= res!425495 (and (= lt!306064 (Found!6975 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18528 a!2986) index!984) (select (arr!18528 a!2986) j!136))) (not (= (select (arr!18528 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38664 (_ BitVec 32)) SeekEntryResult!6975)

(assert (=> b!655753 (= lt!306064 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18528 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!655754 () Bool)

(assert (=> b!655754 (= e!376603 e!376598)))

(declare-fun res!425485 () Bool)

(assert (=> b!655754 (=> (not res!425485) (not e!376598))))

(assert (=> b!655754 (= res!425485 (= (select (store (arr!18528 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!655754 (= lt!306073 (array!38665 (store (arr!18528 a!2986) i!1108 k!1786) (size!18892 a!2986)))))

(declare-fun b!655755 () Bool)

(assert (=> b!655755 (= e!376606 e!376603)))

(declare-fun res!425484 () Bool)

(assert (=> b!655755 (=> (not res!425484) (not e!376603))))

(declare-fun lt!306069 () SeekEntryResult!6975)

(assert (=> b!655755 (= res!425484 (or (= lt!306069 (MissingZero!6975 i!1108)) (= lt!306069 (MissingVacant!6975 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38664 (_ BitVec 32)) SeekEntryResult!6975)

(assert (=> b!655755 (= lt!306069 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!655756 () Bool)

(declare-fun res!425490 () Bool)

(assert (=> b!655756 (=> (not res!425490) (not e!376603))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38664 (_ BitVec 32)) Bool)

(assert (=> b!655756 (= res!425490 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!655757 () Bool)

(declare-fun res!425481 () Bool)

(assert (=> b!655757 (= res!425481 (bvsge j!136 index!984))))

(declare-fun e!376605 () Bool)

(assert (=> b!655757 (=> res!425481 e!376605)))

(assert (=> b!655757 (= e!376596 e!376605)))

(declare-fun b!655758 () Bool)

(assert (=> b!655758 false))

(declare-fun lt!306078 () Unit!22594)

(assert (=> b!655758 (= lt!306078 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!306073 (select (arr!18528 a!2986) j!136) index!984 Nil!12619))))

(assert (=> b!655758 (arrayNoDuplicates!0 lt!306073 index!984 Nil!12619)))

(declare-fun lt!306068 () Unit!22594)

(assert (=> b!655758 (= lt!306068 (lemmaNoDuplicateFromThenFromBigger!0 lt!306073 #b00000000000000000000000000000000 index!984))))

(assert (=> b!655758 (arrayNoDuplicates!0 lt!306073 #b00000000000000000000000000000000 Nil!12619)))

(declare-fun lt!306079 () Unit!22594)

(assert (=> b!655758 (= lt!306079 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12619))))

(assert (=> b!655758 (arrayContainsKey!0 lt!306073 (select (arr!18528 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!306076 () Unit!22594)

(assert (=> b!655758 (= lt!306076 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!306073 (select (arr!18528 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!655758 e!376602))

(declare-fun res!425492 () Bool)

(assert (=> b!655758 (=> (not res!425492) (not e!376602))))

(assert (=> b!655758 (= res!425492 (arrayContainsKey!0 lt!306073 (select (arr!18528 a!2986) j!136) j!136))))

(declare-fun Unit!22598 () Unit!22594)

(assert (=> b!655758 (= e!376607 Unit!22598)))

(declare-fun res!425489 () Bool)

(assert (=> start!59388 (=> (not res!425489) (not e!376606))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!59388 (= res!425489 (validMask!0 mask!3053))))

(assert (=> start!59388 e!376606))

(assert (=> start!59388 true))

(declare-fun array_inv!14302 (array!38664) Bool)

(assert (=> start!59388 (array_inv!14302 a!2986)))

(declare-fun lt!306071 () SeekEntryResult!6975)

(declare-fun b!655759 () Bool)

(assert (=> b!655759 (= e!376609 (not (or (not (= lt!306071 (MissingVacant!6975 vacantSpotIndex!68))) (= (select (store (arr!18528 a!2986) i!1108 k!1786) index!984) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!306072 () Unit!22594)

(assert (=> b!655759 (= lt!306072 e!376601)))

(declare-fun c!75502 () Bool)

(assert (=> b!655759 (= c!75502 (= lt!306071 (Found!6975 index!984)))))

(declare-fun lt!306066 () Unit!22594)

(declare-fun e!376599 () Unit!22594)

(assert (=> b!655759 (= lt!306066 e!376599)))

(declare-fun c!75501 () Bool)

(assert (=> b!655759 (= c!75501 (= lt!306071 Undefined!6975))))

(declare-fun lt!306062 () (_ BitVec 64))

(assert (=> b!655759 (= lt!306071 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!306062 lt!306073 mask!3053))))

(assert (=> b!655759 e!376604))

(declare-fun res!425482 () Bool)

(assert (=> b!655759 (=> (not res!425482) (not e!376604))))

(declare-fun lt!306081 () (_ BitVec 32))

(assert (=> b!655759 (= res!425482 (= lt!306074 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!306081 vacantSpotIndex!68 lt!306062 lt!306073 mask!3053)))))

(assert (=> b!655759 (= lt!306074 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!306081 vacantSpotIndex!68 (select (arr!18528 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!655759 (= lt!306062 (select (store (arr!18528 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!306077 () Unit!22594)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38664 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22594)

(assert (=> b!655759 (= lt!306077 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!306081 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!655759 (= lt!306081 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!655760 () Bool)

(declare-fun res!425483 () Bool)

(assert (=> b!655760 (=> (not res!425483) (not e!376606))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!655760 (= res!425483 (validKeyInArray!0 k!1786))))

(declare-fun b!655761 () Bool)

(declare-fun Unit!22599 () Unit!22594)

(assert (=> b!655761 (= e!376608 Unit!22599)))

(declare-fun b!655762 () Bool)

(declare-fun Unit!22600 () Unit!22594)

(assert (=> b!655762 (= e!376599 Unit!22600)))

(assert (=> b!655762 false))

(declare-fun b!655763 () Bool)

(declare-fun Unit!22601 () Unit!22594)

(assert (=> b!655763 (= e!376601 Unit!22601)))

(declare-fun b!655764 () Bool)

(declare-fun res!425494 () Bool)

(assert (=> b!655764 (= res!425494 (arrayContainsKey!0 lt!306073 (select (arr!18528 a!2986) j!136) j!136))))

(assert (=> b!655764 (=> (not res!425494) (not e!376600))))

(assert (=> b!655764 (= e!376605 e!376600)))

(declare-fun b!655765 () Bool)

(declare-fun res!425480 () Bool)

(assert (=> b!655765 (=> (not res!425480) (not e!376606))))

(assert (=> b!655765 (= res!425480 (and (= (size!18892 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18892 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18892 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!655766 () Bool)

(declare-fun res!425488 () Bool)

(assert (=> b!655766 (=> (not res!425488) (not e!376603))))

(assert (=> b!655766 (= res!425488 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12619))))

(declare-fun b!655767 () Bool)

(declare-fun Unit!22602 () Unit!22594)

(assert (=> b!655767 (= e!376607 Unit!22602)))

(declare-fun b!655768 () Bool)

(declare-fun res!425491 () Bool)

(assert (=> b!655768 (=> (not res!425491) (not e!376606))))

(assert (=> b!655768 (= res!425491 (validKeyInArray!0 (select (arr!18528 a!2986) j!136)))))

(declare-fun b!655769 () Bool)

(declare-fun Unit!22603 () Unit!22594)

(assert (=> b!655769 (= e!376599 Unit!22603)))

(assert (= (and start!59388 res!425489) b!655765))

(assert (= (and b!655765 res!425480) b!655768))

(assert (= (and b!655768 res!425491) b!655760))

(assert (= (and b!655760 res!425483) b!655752))

(assert (= (and b!655752 res!425486) b!655755))

(assert (= (and b!655755 res!425484) b!655756))

(assert (= (and b!655756 res!425490) b!655766))

(assert (= (and b!655766 res!425488) b!655748))

(assert (= (and b!655748 res!425487) b!655754))

(assert (= (and b!655754 res!425485) b!655753))

(assert (= (and b!655753 res!425495) b!655759))

(assert (= (and b!655759 res!425482) b!655747))

(assert (= (and b!655759 c!75501) b!655762))

(assert (= (and b!655759 (not c!75501)) b!655769))

(assert (= (and b!655759 c!75502) b!655749))

(assert (= (and b!655759 (not c!75502)) b!655763))

(assert (= (and b!655749 res!425493) b!655757))

(assert (= (and b!655757 (not res!425481)) b!655764))

(assert (= (and b!655764 res!425494) b!655746))

(assert (= (and b!655749 c!75503) b!655751))

(assert (= (and b!655749 (not c!75503)) b!655761))

(assert (= (and b!655749 c!75500) b!655758))

(assert (= (and b!655749 (not c!75500)) b!655767))

(assert (= (and b!655758 res!425492) b!655750))

(declare-fun m!628881 () Bool)

(assert (=> b!655750 m!628881))

(assert (=> b!655750 m!628881))

(declare-fun m!628883 () Bool)

(assert (=> b!655750 m!628883))

(assert (=> b!655746 m!628881))

(assert (=> b!655746 m!628881))

(assert (=> b!655746 m!628883))

(declare-fun m!628885 () Bool)

(assert (=> start!59388 m!628885))

(declare-fun m!628887 () Bool)

(assert (=> start!59388 m!628887))

(assert (=> b!655764 m!628881))

(assert (=> b!655764 m!628881))

(declare-fun m!628889 () Bool)

(assert (=> b!655764 m!628889))

(assert (=> b!655768 m!628881))

(assert (=> b!655768 m!628881))

(declare-fun m!628891 () Bool)

(assert (=> b!655768 m!628891))

(declare-fun m!628893 () Bool)

(assert (=> b!655766 m!628893))

(declare-fun m!628895 () Bool)

(assert (=> b!655760 m!628895))

(declare-fun m!628897 () Bool)

(assert (=> b!655748 m!628897))

(declare-fun m!628899 () Bool)

(assert (=> b!655756 m!628899))

(assert (=> b!655751 m!628881))

(declare-fun m!628901 () Bool)

(assert (=> b!655751 m!628901))

(assert (=> b!655751 m!628881))

(declare-fun m!628903 () Bool)

(assert (=> b!655751 m!628903))

(assert (=> b!655751 m!628881))

(declare-fun m!628905 () Bool)

(assert (=> b!655751 m!628905))

(declare-fun m!628907 () Bool)

(assert (=> b!655751 m!628907))

(declare-fun m!628909 () Bool)

(assert (=> b!655751 m!628909))

(declare-fun m!628911 () Bool)

(assert (=> b!655751 m!628911))

(assert (=> b!655751 m!628881))

(declare-fun m!628913 () Bool)

(assert (=> b!655751 m!628913))

(declare-fun m!628915 () Bool)

(assert (=> b!655755 m!628915))

(declare-fun m!628917 () Bool)

(assert (=> b!655754 m!628917))

(declare-fun m!628919 () Bool)

(assert (=> b!655754 m!628919))

(declare-fun m!628921 () Bool)

(assert (=> b!655759 m!628921))

(declare-fun m!628923 () Bool)

(assert (=> b!655759 m!628923))

(declare-fun m!628925 () Bool)

(assert (=> b!655759 m!628925))

(assert (=> b!655759 m!628917))

(assert (=> b!655759 m!628881))

(declare-fun m!628927 () Bool)

(assert (=> b!655759 m!628927))

(declare-fun m!628929 () Bool)

(assert (=> b!655759 m!628929))

(declare-fun m!628931 () Bool)

(assert (=> b!655759 m!628931))

(assert (=> b!655759 m!628881))

(declare-fun m!628933 () Bool)

(assert (=> b!655759 m!628933))

(assert (=> b!655749 m!628917))

(assert (=> b!655749 m!628929))

(assert (=> b!655749 m!628881))

(declare-fun m!628935 () Bool)

(assert (=> b!655752 m!628935))

(declare-fun m!628937 () Bool)

(assert (=> b!655753 m!628937))

(assert (=> b!655753 m!628881))

(assert (=> b!655753 m!628881))

(declare-fun m!628939 () Bool)

(assert (=> b!655753 m!628939))

(assert (=> b!655758 m!628881))

(assert (=> b!655758 m!628881))

(assert (=> b!655758 m!628889))

(declare-fun m!628941 () Bool)

(assert (=> b!655758 m!628941))

(assert (=> b!655758 m!628881))

(declare-fun m!628943 () Bool)

(assert (=> b!655758 m!628943))

(assert (=> b!655758 m!628911))

(assert (=> b!655758 m!628881))

(declare-fun m!628945 () Bool)

(assert (=> b!655758 m!628945))

(assert (=> b!655758 m!628909))

(declare-fun m!628947 () Bool)

(assert (=> b!655758 m!628947))

(assert (=> b!655758 m!628881))

(declare-fun m!628949 () Bool)

(assert (=> b!655758 m!628949))

(push 1)

(assert (not b!655764))

(assert (not b!655751))

(assert (not b!655759))

(assert (not b!655756))

(assert (not b!655760))

(assert (not b!655750))

(assert (not b!655746))

(assert (not b!655768))

(assert (not b!655758))

(assert (not b!655766))

(assert (not b!655752))

(assert (not b!655755))

(assert (not b!655753))

(assert (not start!59388))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!92489 () Bool)

(assert (=> d!92489 (= (validKeyInArray!0 (select (arr!18528 a!2986) j!136)) (and (not (= (select (arr!18528 a!2986) j!136) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!18528 a!2986) j!136) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!655768 d!92489))

(declare-fun d!92493 () Bool)

(assert (=> d!92493 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (size!18892 lt!306073)) (not (= (select (arr!18528 lt!306073) index!984) (select (arr!18528 a!2986) j!136))))))

(declare-fun lt!306244 () Unit!22594)

(declare-fun choose!21 (array!38664 (_ BitVec 64) (_ BitVec 32) List!12622) Unit!22594)

(assert (=> d!92493 (= lt!306244 (choose!21 lt!306073 (select (arr!18528 a!2986) j!136) index!984 Nil!12619))))

(assert (=> d!92493 (bvslt (size!18892 lt!306073) #b01111111111111111111111111111111)))

(assert (=> d!92493 (= (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!306073 (select (arr!18528 a!2986) j!136) index!984 Nil!12619) lt!306244)))

(declare-fun bs!19521 () Bool)

(assert (= bs!19521 d!92493))

(declare-fun m!629159 () Bool)

(assert (=> bs!19521 m!629159))

(assert (=> bs!19521 m!628881))

(declare-fun m!629161 () Bool)

(assert (=> bs!19521 m!629161))

(assert (=> b!655758 d!92493))

(declare-fun d!92497 () Bool)

(assert (=> d!92497 (arrayNoDuplicates!0 lt!306073 index!984 Nil!12619)))

(declare-fun lt!306253 () Unit!22594)

(declare-fun choose!39 (array!38664 (_ BitVec 32) (_ BitVec 32)) Unit!22594)

(assert (=> d!92497 (= lt!306253 (choose!39 lt!306073 #b00000000000000000000000000000000 index!984))))

(assert (=> d!92497 (bvslt (size!18892 lt!306073) #b01111111111111111111111111111111)))

(assert (=> d!92497 (= (lemmaNoDuplicateFromThenFromBigger!0 lt!306073 #b00000000000000000000000000000000 index!984) lt!306253)))

(declare-fun bs!19522 () Bool)

(assert (= bs!19522 d!92497))

(assert (=> bs!19522 m!628947))

(declare-fun m!629167 () Bool)

(assert (=> bs!19522 m!629167))

(assert (=> b!655758 d!92497))

(declare-fun b!656039 () Bool)

(declare-fun e!376772 () Bool)

(declare-fun call!33836 () Bool)

(assert (=> b!656039 (= e!376772 call!33836)))

(declare-fun b!656040 () Bool)

(declare-fun e!376775 () Bool)

(declare-fun e!376773 () Bool)

(assert (=> b!656040 (= e!376775 e!376773)))

(declare-fun res!425624 () Bool)

(assert (=> b!656040 (=> (not res!425624) (not e!376773))))

(declare-fun e!376774 () Bool)

(assert (=> b!656040 (= res!425624 (not e!376774))))

(declare-fun res!425623 () Bool)

(assert (=> b!656040 (=> (not res!425623) (not e!376774))))

(assert (=> b!656040 (= res!425623 (validKeyInArray!0 (select (arr!18528 lt!306073) index!984)))))

(declare-fun b!656041 () Bool)

(assert (=> b!656041 (= e!376772 call!33836)))

(declare-fun d!92507 () Bool)

(declare-fun res!425625 () Bool)

(assert (=> d!92507 (=> res!425625 e!376775)))

(assert (=> d!92507 (= res!425625 (bvsge index!984 (size!18892 lt!306073)))))

(assert (=> d!92507 (= (arrayNoDuplicates!0 lt!306073 index!984 Nil!12619) e!376775)))

(declare-fun b!656042 () Bool)

(assert (=> b!656042 (= e!376773 e!376772)))

(declare-fun c!75575 () Bool)

(assert (=> b!656042 (= c!75575 (validKeyInArray!0 (select (arr!18528 lt!306073) index!984)))))

(declare-fun bm!33833 () Bool)

(assert (=> bm!33833 (= call!33836 (arrayNoDuplicates!0 lt!306073 (bvadd index!984 #b00000000000000000000000000000001) (ite c!75575 (Cons!12618 (select (arr!18528 lt!306073) index!984) Nil!12619) Nil!12619)))))

(declare-fun b!656043 () Bool)

(declare-fun contains!3193 (List!12622 (_ BitVec 64)) Bool)

(assert (=> b!656043 (= e!376774 (contains!3193 Nil!12619 (select (arr!18528 lt!306073) index!984)))))

(assert (= (and d!92507 (not res!425625)) b!656040))

(assert (= (and b!656040 res!425623) b!656043))

(assert (= (and b!656040 res!425624) b!656042))

(assert (= (and b!656042 c!75575) b!656041))

(assert (= (and b!656042 (not c!75575)) b!656039))

(assert (= (or b!656041 b!656039) bm!33833))

(assert (=> b!656040 m!629159))

(assert (=> b!656040 m!629159))

(declare-fun m!629195 () Bool)

(assert (=> b!656040 m!629195))

(assert (=> b!656042 m!629159))

(assert (=> b!656042 m!629159))

(assert (=> b!656042 m!629195))

(assert (=> bm!33833 m!629159))

(declare-fun m!629197 () Bool)

(assert (=> bm!33833 m!629197))

(assert (=> b!656043 m!629159))

(assert (=> b!656043 m!629159))

(declare-fun m!629199 () Bool)

(assert (=> b!656043 m!629199))

(assert (=> b!655758 d!92507))

(declare-fun d!92523 () Bool)

(declare-fun e!376783 () Bool)

(assert (=> d!92523 e!376783))

(declare-fun res!425633 () Bool)

(assert (=> d!92523 (=> (not res!425633) (not e!376783))))

(assert (=> d!92523 (= res!425633 (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18892 a!2986))))))

(declare-fun lt!306277 () Unit!22594)

(declare-fun choose!41 (array!38664 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12622) Unit!22594)

(assert (=> d!92523 (= lt!306277 (choose!41 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12619))))

(assert (=> d!92523 (bvslt (size!18892 a!2986) #b01111111111111111111111111111111)))

(assert (=> d!92523 (= (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12619) lt!306277)))

(declare-fun b!656049 () Bool)

(assert (=> b!656049 (= e!376783 (arrayNoDuplicates!0 (array!38665 (store (arr!18528 a!2986) i!1108 k!1786) (size!18892 a!2986)) #b00000000000000000000000000000000 Nil!12619))))

(assert (= (and d!92523 res!425633) b!656049))

(declare-fun m!629209 () Bool)

(assert (=> d!92523 m!629209))

(assert (=> b!656049 m!628917))

(declare-fun m!629211 () Bool)

(assert (=> b!656049 m!629211))

(assert (=> b!655758 d!92523))

(declare-fun d!92529 () Bool)

(assert (=> d!92529 (arrayContainsKey!0 lt!306073 (select (arr!18528 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!306280 () Unit!22594)

(declare-fun choose!114 (array!38664 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22594)

(assert (=> d!92529 (= lt!306280 (choose!114 lt!306073 (select (arr!18528 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> d!92529 (bvsge j!136 #b00000000000000000000000000000000)))

(assert (=> d!92529 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!306073 (select (arr!18528 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)) lt!306280)))

(declare-fun bs!19528 () Bool)

(assert (= bs!19528 d!92529))

(assert (=> bs!19528 m!628881))

(assert (=> bs!19528 m!628949))

(assert (=> bs!19528 m!628881))

(declare-fun m!629213 () Bool)

(assert (=> bs!19528 m!629213))

(assert (=> b!655758 d!92529))

(declare-fun d!92531 () Bool)

(declare-fun res!425657 () Bool)

(declare-fun e!376814 () Bool)

(assert (=> d!92531 (=> res!425657 e!376814)))

(assert (=> d!92531 (= res!425657 (= (select (arr!18528 lt!306073) j!136) (select (arr!18528 a!2986) j!136)))))

(assert (=> d!92531 (= (arrayContainsKey!0 lt!306073 (select (arr!18528 a!2986) j!136) j!136) e!376814)))

(declare-fun b!656089 () Bool)

(declare-fun e!376815 () Bool)

(assert (=> b!656089 (= e!376814 e!376815)))

(declare-fun res!425658 () Bool)

(assert (=> b!656089 (=> (not res!425658) (not e!376815))))

(assert (=> b!656089 (= res!425658 (bvslt (bvadd j!136 #b00000000000000000000000000000001) (size!18892 lt!306073)))))

(declare-fun b!656090 () Bool)

(assert (=> b!656090 (= e!376815 (arrayContainsKey!0 lt!306073 (select (arr!18528 a!2986) j!136) (bvadd j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!92531 (not res!425657)) b!656089))

(assert (= (and b!656089 res!425658) b!656090))

(declare-fun m!629237 () Bool)

(assert (=> d!92531 m!629237))

(assert (=> b!656090 m!628881))

(declare-fun m!629241 () Bool)

(assert (=> b!656090 m!629241))

(assert (=> b!655758 d!92531))

(declare-fun b!656093 () Bool)

(declare-fun e!376818 () Bool)

(declare-fun call!33844 () Bool)

(assert (=> b!656093 (= e!376818 call!33844)))

(declare-fun b!656094 () Bool)

(declare-fun e!376821 () Bool)

(declare-fun e!376819 () Bool)

(assert (=> b!656094 (= e!376821 e!376819)))

(declare-fun res!425662 () Bool)

(assert (=> b!656094 (=> (not res!425662) (not e!376819))))

(declare-fun e!376820 () Bool)

(assert (=> b!656094 (= res!425662 (not e!376820))))

(declare-fun res!425661 () Bool)

(assert (=> b!656094 (=> (not res!425661) (not e!376820))))

(assert (=> b!656094 (= res!425661 (validKeyInArray!0 (select (arr!18528 lt!306073) #b00000000000000000000000000000000)))))

(declare-fun b!656095 () Bool)

(assert (=> b!656095 (= e!376818 call!33844)))

(declare-fun d!92541 () Bool)

(declare-fun res!425663 () Bool)

(assert (=> d!92541 (=> res!425663 e!376821)))

(assert (=> d!92541 (= res!425663 (bvsge #b00000000000000000000000000000000 (size!18892 lt!306073)))))

(assert (=> d!92541 (= (arrayNoDuplicates!0 lt!306073 #b00000000000000000000000000000000 Nil!12619) e!376821)))

(declare-fun b!656096 () Bool)

(assert (=> b!656096 (= e!376819 e!376818)))

(declare-fun c!75583 () Bool)

(assert (=> b!656096 (= c!75583 (validKeyInArray!0 (select (arr!18528 lt!306073) #b00000000000000000000000000000000)))))

(declare-fun bm!33841 () Bool)

(assert (=> bm!33841 (= call!33844 (arrayNoDuplicates!0 lt!306073 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!75583 (Cons!12618 (select (arr!18528 lt!306073) #b00000000000000000000000000000000) Nil!12619) Nil!12619)))))

(declare-fun b!656097 () Bool)

(assert (=> b!656097 (= e!376820 (contains!3193 Nil!12619 (select (arr!18528 lt!306073) #b00000000000000000000000000000000)))))

(assert (= (and d!92541 (not res!425663)) b!656094))

(assert (= (and b!656094 res!425661) b!656097))

(assert (= (and b!656094 res!425662) b!656096))

(assert (= (and b!656096 c!75583) b!656095))

(assert (= (and b!656096 (not c!75583)) b!656093))

(assert (= (or b!656095 b!656093) bm!33841))

(declare-fun m!629247 () Bool)

(assert (=> b!656094 m!629247))

(assert (=> b!656094 m!629247))

(declare-fun m!629249 () Bool)

(assert (=> b!656094 m!629249))

(assert (=> b!656096 m!629247))

(assert (=> b!656096 m!629247))

(assert (=> b!656096 m!629249))

(assert (=> bm!33841 m!629247))

(declare-fun m!629255 () Bool)

(assert (=> bm!33841 m!629255))

(assert (=> b!656097 m!629247))

(assert (=> b!656097 m!629247))

(declare-fun m!629257 () Bool)

(assert (=> b!656097 m!629257))

(assert (=> b!655758 d!92541))

(declare-fun d!92551 () Bool)

(declare-fun res!425666 () Bool)

(declare-fun e!376824 () Bool)

(assert (=> d!92551 (=> res!425666 e!376824)))

(assert (=> d!92551 (= res!425666 (= (select (arr!18528 lt!306073) (bvadd #b00000000000000000000000000000001 index!984)) (select (arr!18528 a!2986) j!136)))))

(assert (=> d!92551 (= (arrayContainsKey!0 lt!306073 (select (arr!18528 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984)) e!376824)))

(declare-fun b!656100 () Bool)

(declare-fun e!376825 () Bool)

(assert (=> b!656100 (= e!376824 e!376825)))

(declare-fun res!425667 () Bool)

(assert (=> b!656100 (=> (not res!425667) (not e!376825))))

(assert (=> b!656100 (= res!425667 (bvslt (bvadd #b00000000000000000000000000000001 index!984 #b00000000000000000000000000000001) (size!18892 lt!306073)))))

(declare-fun b!656101 () Bool)

(assert (=> b!656101 (= e!376825 (arrayContainsKey!0 lt!306073 (select (arr!18528 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!92551 (not res!425666)) b!656100))

(assert (= (and b!656100 res!425667) b!656101))

(declare-fun m!629261 () Bool)

(assert (=> d!92551 m!629261))

(assert (=> b!656101 m!628881))

(declare-fun m!629263 () Bool)

(assert (=> b!656101 m!629263))

(assert (=> b!655758 d!92551))

(declare-fun b!656153 () Bool)

(declare-fun e!376866 () Bool)

(declare-fun e!376868 () Bool)

(assert (=> b!656153 (= e!376866 e!376868)))

(declare-fun lt!306309 () (_ BitVec 64))

(assert (=> b!656153 (= lt!306309 (select (arr!18528 a!2986) #b00000000000000000000000000000000))))

(declare-fun lt!306307 () Unit!22594)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38664 (_ BitVec 64) (_ BitVec 32)) Unit!22594)

(assert (=> b!656153 (= lt!306307 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2986 lt!306309 #b00000000000000000000000000000000))))

(assert (=> b!656153 (arrayContainsKey!0 a!2986 lt!306309 #b00000000000000000000000000000000)))

(declare-fun lt!306308 () Unit!22594)

(assert (=> b!656153 (= lt!306308 lt!306307)))

(declare-fun res!425698 () Bool)

(assert (=> b!656153 (= res!425698 (= (seekEntryOrOpen!0 (select (arr!18528 a!2986) #b00000000000000000000000000000000) a!2986 mask!3053) (Found!6975 #b00000000000000000000000000000000)))))

(assert (=> b!656153 (=> (not res!425698) (not e!376868))))

(declare-fun d!92555 () Bool)

(declare-fun res!425697 () Bool)

(declare-fun e!376867 () Bool)

(assert (=> d!92555 (=> res!425697 e!376867)))

(assert (=> d!92555 (= res!425697 (bvsge #b00000000000000000000000000000000 (size!18892 a!2986)))))

(assert (=> d!92555 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053) e!376867)))

(declare-fun bm!33850 () Bool)

(declare-fun call!33853 () Bool)

(assert (=> bm!33850 (= call!33853 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2986 mask!3053))))

(declare-fun b!656154 () Bool)

(assert (=> b!656154 (= e!376868 call!33853)))

(declare-fun b!656155 () Bool)

(assert (=> b!656155 (= e!376866 call!33853)))

(declare-fun b!656156 () Bool)

(assert (=> b!656156 (= e!376867 e!376866)))

(declare-fun c!75595 () Bool)

(assert (=> b!656156 (= c!75595 (validKeyInArray!0 (select (arr!18528 a!2986) #b00000000000000000000000000000000)))))

(assert (= (and d!92555 (not res!425697)) b!656156))

(assert (= (and b!656156 c!75595) b!656153))

(assert (= (and b!656156 (not c!75595)) b!656155))

(assert (= (and b!656153 res!425698) b!656154))

(assert (= (or b!656154 b!656155) bm!33850))

(declare-fun m!629321 () Bool)

(assert (=> b!656153 m!629321))

(declare-fun m!629323 () Bool)

(assert (=> b!656153 m!629323))

(declare-fun m!629325 () Bool)

(assert (=> b!656153 m!629325))

(assert (=> b!656153 m!629321))

(declare-fun m!629327 () Bool)

(assert (=> b!656153 m!629327))

(declare-fun m!629329 () Bool)

(assert (=> bm!33850 m!629329))

(assert (=> b!656156 m!629321))

(assert (=> b!656156 m!629321))

(declare-fun m!629331 () Bool)

(assert (=> b!656156 m!629331))

(assert (=> b!655756 d!92555))

(declare-fun d!92583 () Bool)

(declare-fun res!425701 () Bool)

(declare-fun e!376872 () Bool)

(assert (=> d!92583 (=> res!425701 e!376872)))

(assert (=> d!92583 (= res!425701 (= (select (arr!18528 lt!306073) index!984) (select (arr!18528 a!2986) j!136)))))

(assert (=> d!92583 (= (arrayContainsKey!0 lt!306073 (select (arr!18528 a!2986) j!136) index!984) e!376872)))

(declare-fun b!656161 () Bool)

(declare-fun e!376873 () Bool)

(assert (=> b!656161 (= e!376872 e!376873)))

(declare-fun res!425702 () Bool)

(assert (=> b!656161 (=> (not res!425702) (not e!376873))))

(assert (=> b!656161 (= res!425702 (bvslt (bvadd index!984 #b00000000000000000000000000000001) (size!18892 lt!306073)))))

(declare-fun b!656162 () Bool)

(assert (=> b!656162 (= e!376873 (arrayContainsKey!0 lt!306073 (select (arr!18528 a!2986) j!136) (bvadd index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!92583 (not res!425701)) b!656161))

(assert (= (and b!656161 res!425702) b!656162))

(assert (=> d!92583 m!629159))

(assert (=> b!656162 m!628881))

(declare-fun m!629335 () Bool)

(assert (=> b!656162 m!629335))

(assert (=> b!655746 d!92583))

(declare-fun b!656163 () Bool)

(declare-fun e!376874 () Bool)

(declare-fun call!33855 () Bool)

(assert (=> b!656163 (= e!376874 call!33855)))

(declare-fun b!656164 () Bool)

(declare-fun e!376877 () Bool)

(declare-fun e!376875 () Bool)

(assert (=> b!656164 (= e!376877 e!376875)))

(declare-fun res!425704 () Bool)

(assert (=> b!656164 (=> (not res!425704) (not e!376875))))

(declare-fun e!376876 () Bool)

(assert (=> b!656164 (= res!425704 (not e!376876))))

(declare-fun res!425703 () Bool)

(assert (=> b!656164 (=> (not res!425703) (not e!376876))))

(assert (=> b!656164 (= res!425703 (validKeyInArray!0 (select (arr!18528 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!656165 () Bool)

(assert (=> b!656165 (= e!376874 call!33855)))

(declare-fun d!92585 () Bool)

(declare-fun res!425705 () Bool)

(assert (=> d!92585 (=> res!425705 e!376877)))

(assert (=> d!92585 (= res!425705 (bvsge #b00000000000000000000000000000000 (size!18892 a!2986)))))

(assert (=> d!92585 (= (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12619) e!376877)))

(declare-fun b!656166 () Bool)

(assert (=> b!656166 (= e!376875 e!376874)))

(declare-fun c!75597 () Bool)

(assert (=> b!656166 (= c!75597 (validKeyInArray!0 (select (arr!18528 a!2986) #b00000000000000000000000000000000)))))

(declare-fun bm!33852 () Bool)

(assert (=> bm!33852 (= call!33855 (arrayNoDuplicates!0 a!2986 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!75597 (Cons!12618 (select (arr!18528 a!2986) #b00000000000000000000000000000000) Nil!12619) Nil!12619)))))

(declare-fun b!656167 () Bool)

(assert (=> b!656167 (= e!376876 (contains!3193 Nil!12619 (select (arr!18528 a!2986) #b00000000000000000000000000000000)))))

(assert (= (and d!92585 (not res!425705)) b!656164))

(assert (= (and b!656164 res!425703) b!656167))

(assert (= (and b!656164 res!425704) b!656166))

(assert (= (and b!656166 c!75597) b!656165))

(assert (= (and b!656166 (not c!75597)) b!656163))

(assert (= (or b!656165 b!656163) bm!33852))

(assert (=> b!656164 m!629321))

(assert (=> b!656164 m!629321))

(assert (=> b!656164 m!629331))

(assert (=> b!656166 m!629321))

(assert (=> b!656166 m!629321))

(assert (=> b!656166 m!629331))

(assert (=> bm!33852 m!629321))

(declare-fun m!629343 () Bool)

(assert (=> bm!33852 m!629343))

(assert (=> b!656167 m!629321))

(assert (=> b!656167 m!629321))

(declare-fun m!629345 () Bool)

(assert (=> b!656167 m!629345))

(assert (=> b!655766 d!92585))

(declare-fun d!92587 () Bool)

(declare-fun lt!306331 () SeekEntryResult!6975)

(assert (=> d!92587 (and (or (is-Undefined!6975 lt!306331) (not (is-Found!6975 lt!306331)) (and (bvsge (index!30259 lt!306331) #b00000000000000000000000000000000) (bvslt (index!30259 lt!306331) (size!18892 a!2986)))) (or (is-Undefined!6975 lt!306331) (is-Found!6975 lt!306331) (not (is-MissingZero!6975 lt!306331)) (and (bvsge (index!30258 lt!306331) #b00000000000000000000000000000000) (bvslt (index!30258 lt!306331) (size!18892 a!2986)))) (or (is-Undefined!6975 lt!306331) (is-Found!6975 lt!306331) (is-MissingZero!6975 lt!306331) (not (is-MissingVacant!6975 lt!306331)) (and (bvsge (index!30261 lt!306331) #b00000000000000000000000000000000) (bvslt (index!30261 lt!306331) (size!18892 a!2986)))) (or (is-Undefined!6975 lt!306331) (ite (is-Found!6975 lt!306331) (= (select (arr!18528 a!2986) (index!30259 lt!306331)) k!1786) (ite (is-MissingZero!6975 lt!306331) (= (select (arr!18528 a!2986) (index!30258 lt!306331)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!6975 lt!306331) (= (select (arr!18528 a!2986) (index!30261 lt!306331)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!376898 () SeekEntryResult!6975)

(assert (=> d!92587 (= lt!306331 e!376898)))

(declare-fun c!75614 () Bool)

(declare-fun lt!306332 () SeekEntryResult!6975)

(assert (=> d!92587 (= c!75614 (and (is-Intermediate!6975 lt!306332) (undefined!7787 lt!306332)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38664 (_ BitVec 32)) SeekEntryResult!6975)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!92587 (= lt!306332 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1786 mask!3053) k!1786 a!2986 mask!3053))))

(assert (=> d!92587 (validMask!0 mask!3053)))

(assert (=> d!92587 (= (seekEntryOrOpen!0 k!1786 a!2986 mask!3053) lt!306331)))

(declare-fun b!656201 () Bool)

(declare-fun e!376897 () SeekEntryResult!6975)

(assert (=> b!656201 (= e!376897 (MissingZero!6975 (index!30260 lt!306332)))))

(declare-fun b!656202 () Bool)

(declare-fun e!376896 () SeekEntryResult!6975)

(assert (=> b!656202 (= e!376898 e!376896)))

(declare-fun lt!306333 () (_ BitVec 64))

(assert (=> b!656202 (= lt!306333 (select (arr!18528 a!2986) (index!30260 lt!306332)))))

(declare-fun c!75615 () Bool)

(assert (=> b!656202 (= c!75615 (= lt!306333 k!1786))))

(declare-fun b!656203 () Bool)

(declare-fun c!75613 () Bool)

(assert (=> b!656203 (= c!75613 (= lt!306333 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!656203 (= e!376896 e!376897)))

(declare-fun b!656204 () Bool)

(assert (=> b!656204 (= e!376896 (Found!6975 (index!30260 lt!306332)))))

(declare-fun b!656205 () Bool)

(assert (=> b!656205 (= e!376897 (seekKeyOrZeroReturnVacant!0 (x!59073 lt!306332) (index!30260 lt!306332) (index!30260 lt!306332) k!1786 a!2986 mask!3053))))

(declare-fun b!656206 () Bool)

(assert (=> b!656206 (= e!376898 Undefined!6975)))

