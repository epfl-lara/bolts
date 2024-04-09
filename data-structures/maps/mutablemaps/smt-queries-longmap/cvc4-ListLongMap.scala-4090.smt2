; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56050 () Bool)

(assert start!56050)

(declare-fun b!616664 () Bool)

(declare-datatypes ((Unit!20130 0))(
  ( (Unit!20131) )
))
(declare-fun e!353609 () Unit!20130)

(declare-fun Unit!20132 () Unit!20130)

(assert (=> b!616664 (= e!353609 Unit!20132)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun res!397347 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!37483 0))(
  ( (array!37484 (arr!17984 (Array (_ BitVec 32) (_ BitVec 64))) (size!18348 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37483)

(assert (=> b!616664 (= res!397347 (= (select (store (arr!17984 a!2986) i!1108 k!1786) index!984) (select (arr!17984 a!2986) j!136)))))

(declare-fun e!353603 () Bool)

(assert (=> b!616664 (=> (not res!397347) (not e!353603))))

(assert (=> b!616664 e!353603))

(declare-fun c!70028 () Bool)

(assert (=> b!616664 (= c!70028 (bvslt j!136 index!984))))

(declare-fun lt!283828 () Unit!20130)

(declare-fun e!353604 () Unit!20130)

(assert (=> b!616664 (= lt!283828 e!353604)))

(declare-fun c!70030 () Bool)

(assert (=> b!616664 (= c!70030 (bvslt index!984 j!136))))

(declare-fun lt!283831 () Unit!20130)

(declare-fun e!353601 () Unit!20130)

(assert (=> b!616664 (= lt!283831 e!353601)))

(assert (=> b!616664 false))

(declare-fun b!616665 () Bool)

(declare-fun Unit!20133 () Unit!20130)

(assert (=> b!616665 (= e!353609 Unit!20133)))

(declare-fun b!616666 () Bool)

(declare-fun e!353608 () Bool)

(declare-fun e!353597 () Bool)

(assert (=> b!616666 (= e!353608 e!353597)))

(declare-fun res!397353 () Bool)

(assert (=> b!616666 (=> (not res!397353) (not e!353597))))

(declare-datatypes ((SeekEntryResult!6431 0))(
  ( (MissingZero!6431 (index!28007 (_ BitVec 32))) (Found!6431 (index!28008 (_ BitVec 32))) (Intermediate!6431 (undefined!7243 Bool) (index!28009 (_ BitVec 32)) (x!56824 (_ BitVec 32))) (Undefined!6431) (MissingVacant!6431 (index!28010 (_ BitVec 32))) )
))
(declare-fun lt!283827 () SeekEntryResult!6431)

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!616666 (= res!397353 (and (= lt!283827 (Found!6431 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17984 a!2986) index!984) (select (arr!17984 a!2986) j!136))) (not (= (select (arr!17984 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37483 (_ BitVec 32)) SeekEntryResult!6431)

(assert (=> b!616666 (= lt!283827 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17984 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!616667 () Bool)

(declare-fun res!397349 () Bool)

(declare-fun e!353610 () Bool)

(assert (=> b!616667 (=> (not res!397349) (not e!353610))))

(assert (=> b!616667 (= res!397349 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17984 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!616668 () Bool)

(declare-fun res!397344 () Bool)

(assert (=> b!616668 (=> (not res!397344) (not e!353610))))

(declare-datatypes ((List!12078 0))(
  ( (Nil!12075) (Cons!12074 (h!13119 (_ BitVec 64)) (t!18314 List!12078)) )
))
(declare-fun arrayNoDuplicates!0 (array!37483 (_ BitVec 32) List!12078) Bool)

(assert (=> b!616668 (= res!397344 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12075))))

(declare-fun res!397357 () Bool)

(declare-fun e!353602 () Bool)

(assert (=> start!56050 (=> (not res!397357) (not e!353602))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56050 (= res!397357 (validMask!0 mask!3053))))

(assert (=> start!56050 e!353602))

(assert (=> start!56050 true))

(declare-fun array_inv!13758 (array!37483) Bool)

(assert (=> start!56050 (array_inv!13758 a!2986)))

(declare-fun b!616669 () Bool)

(declare-fun res!397346 () Bool)

(assert (=> b!616669 (=> (not res!397346) (not e!353610))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37483 (_ BitVec 32)) Bool)

(assert (=> b!616669 (= res!397346 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!616670 () Bool)

(declare-fun res!397358 () Bool)

(assert (=> b!616670 (=> (not res!397358) (not e!353602))))

(declare-fun arrayContainsKey!0 (array!37483 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!616670 (= res!397358 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!616671 () Bool)

(declare-fun Unit!20134 () Unit!20130)

(assert (=> b!616671 (= e!353604 Unit!20134)))

(declare-fun b!616672 () Bool)

(declare-fun Unit!20135 () Unit!20130)

(assert (=> b!616672 (= e!353601 Unit!20135)))

(declare-fun b!616673 () Bool)

(declare-fun res!397342 () Bool)

(declare-fun lt!283835 () array!37483)

(assert (=> b!616673 (= res!397342 (arrayContainsKey!0 lt!283835 (select (arr!17984 a!2986) j!136) j!136))))

(declare-fun e!353611 () Bool)

(assert (=> b!616673 (=> (not res!397342) (not e!353611))))

(declare-fun e!353599 () Bool)

(assert (=> b!616673 (= e!353599 e!353611)))

(declare-fun b!616674 () Bool)

(declare-fun e!353607 () Bool)

(declare-fun lt!283822 () SeekEntryResult!6431)

(assert (=> b!616674 (= e!353607 (= lt!283827 lt!283822))))

(declare-fun b!616675 () Bool)

(assert (=> b!616675 false))

(declare-fun lt!283836 () Unit!20130)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37483 (_ BitVec 64) (_ BitVec 32) List!12078) Unit!20130)

(assert (=> b!616675 (= lt!283836 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!283835 (select (arr!17984 a!2986) j!136) index!984 Nil!12075))))

(assert (=> b!616675 (arrayNoDuplicates!0 lt!283835 index!984 Nil!12075)))

(declare-fun lt!283817 () Unit!20130)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37483 (_ BitVec 32) (_ BitVec 32)) Unit!20130)

(assert (=> b!616675 (= lt!283817 (lemmaNoDuplicateFromThenFromBigger!0 lt!283835 #b00000000000000000000000000000000 index!984))))

(assert (=> b!616675 (arrayNoDuplicates!0 lt!283835 #b00000000000000000000000000000000 Nil!12075)))

(declare-fun lt!283820 () Unit!20130)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37483 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12078) Unit!20130)

(assert (=> b!616675 (= lt!283820 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12075))))

(assert (=> b!616675 (arrayContainsKey!0 lt!283835 (select (arr!17984 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!283823 () Unit!20130)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37483 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!20130)

(assert (=> b!616675 (= lt!283823 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!283835 (select (arr!17984 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!353600 () Bool)

(assert (=> b!616675 e!353600))

(declare-fun res!397348 () Bool)

(assert (=> b!616675 (=> (not res!397348) (not e!353600))))

(assert (=> b!616675 (= res!397348 (arrayContainsKey!0 lt!283835 (select (arr!17984 a!2986) j!136) j!136))))

(declare-fun Unit!20136 () Unit!20130)

(assert (=> b!616675 (= e!353601 Unit!20136)))

(declare-fun b!616676 () Bool)

(declare-fun e!353606 () Bool)

(assert (=> b!616676 (= e!353597 (not e!353606))))

(declare-fun res!397356 () Bool)

(assert (=> b!616676 (=> res!397356 e!353606)))

(declare-fun lt!283832 () SeekEntryResult!6431)

(assert (=> b!616676 (= res!397356 (not (= lt!283832 (MissingVacant!6431 vacantSpotIndex!68))))))

(declare-fun lt!283824 () Unit!20130)

(assert (=> b!616676 (= lt!283824 e!353609)))

(declare-fun c!70029 () Bool)

(assert (=> b!616676 (= c!70029 (= lt!283832 (Found!6431 index!984)))))

(declare-fun lt!283830 () Unit!20130)

(declare-fun e!353598 () Unit!20130)

(assert (=> b!616676 (= lt!283830 e!353598)))

(declare-fun c!70031 () Bool)

(assert (=> b!616676 (= c!70031 (= lt!283832 Undefined!6431))))

(declare-fun lt!283834 () (_ BitVec 64))

(assert (=> b!616676 (= lt!283832 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!283834 lt!283835 mask!3053))))

(assert (=> b!616676 e!353607))

(declare-fun res!397355 () Bool)

(assert (=> b!616676 (=> (not res!397355) (not e!353607))))

(declare-fun lt!283819 () (_ BitVec 32))

(assert (=> b!616676 (= res!397355 (= lt!283822 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!283819 vacantSpotIndex!68 lt!283834 lt!283835 mask!3053)))))

(assert (=> b!616676 (= lt!283822 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!283819 vacantSpotIndex!68 (select (arr!17984 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!616676 (= lt!283834 (select (store (arr!17984 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!283826 () Unit!20130)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37483 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!20130)

(assert (=> b!616676 (= lt!283826 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!283819 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!616676 (= lt!283819 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!616677 () Bool)

(assert (=> b!616677 (= e!353610 e!353608)))

(declare-fun res!397352 () Bool)

(assert (=> b!616677 (=> (not res!397352) (not e!353608))))

(assert (=> b!616677 (= res!397352 (= (select (store (arr!17984 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!616677 (= lt!283835 (array!37484 (store (arr!17984 a!2986) i!1108 k!1786) (size!18348 a!2986)))))

(declare-fun b!616678 () Bool)

(assert (=> b!616678 (= e!353600 (arrayContainsKey!0 lt!283835 (select (arr!17984 a!2986) j!136) index!984))))

(declare-fun b!616679 () Bool)

(assert (=> b!616679 (= e!353611 (arrayContainsKey!0 lt!283835 (select (arr!17984 a!2986) j!136) index!984))))

(declare-fun b!616680 () Bool)

(declare-fun Unit!20137 () Unit!20130)

(assert (=> b!616680 (= e!353598 Unit!20137)))

(assert (=> b!616680 false))

(declare-fun b!616681 () Bool)

(declare-fun Unit!20138 () Unit!20130)

(assert (=> b!616681 (= e!353598 Unit!20138)))

(declare-fun b!616682 () Bool)

(declare-fun res!397345 () Bool)

(assert (=> b!616682 (=> (not res!397345) (not e!353602))))

(assert (=> b!616682 (= res!397345 (and (= (size!18348 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18348 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18348 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!616683 () Bool)

(declare-fun res!397354 () Bool)

(assert (=> b!616683 (= res!397354 (bvsge j!136 index!984))))

(assert (=> b!616683 (=> res!397354 e!353599)))

(assert (=> b!616683 (= e!353603 e!353599)))

(declare-fun b!616684 () Bool)

(declare-fun res!397351 () Bool)

(assert (=> b!616684 (=> (not res!397351) (not e!353602))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!616684 (= res!397351 (validKeyInArray!0 (select (arr!17984 a!2986) j!136)))))

(declare-fun b!616685 () Bool)

(declare-fun res!397350 () Bool)

(assert (=> b!616685 (=> (not res!397350) (not e!353602))))

(assert (=> b!616685 (= res!397350 (validKeyInArray!0 k!1786))))

(declare-fun b!616686 () Bool)

(assert (=> b!616686 false))

(declare-fun lt!283818 () Unit!20130)

(assert (=> b!616686 (= lt!283818 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!283835 (select (arr!17984 a!2986) j!136) j!136 Nil!12075))))

(assert (=> b!616686 (arrayNoDuplicates!0 lt!283835 j!136 Nil!12075)))

(declare-fun lt!283821 () Unit!20130)

(assert (=> b!616686 (= lt!283821 (lemmaNoDuplicateFromThenFromBigger!0 lt!283835 #b00000000000000000000000000000000 j!136))))

(assert (=> b!616686 (arrayNoDuplicates!0 lt!283835 #b00000000000000000000000000000000 Nil!12075)))

(declare-fun lt!283829 () Unit!20130)

(assert (=> b!616686 (= lt!283829 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12075))))

(assert (=> b!616686 (arrayContainsKey!0 lt!283835 (select (arr!17984 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!283833 () Unit!20130)

(assert (=> b!616686 (= lt!283833 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!283835 (select (arr!17984 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!20139 () Unit!20130)

(assert (=> b!616686 (= e!353604 Unit!20139)))

(declare-fun b!616687 () Bool)

(assert (=> b!616687 (= e!353606 true)))

(assert (=> b!616687 (= (select (store (arr!17984 a!2986) i!1108 k!1786) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun b!616688 () Bool)

(assert (=> b!616688 (= e!353602 e!353610)))

(declare-fun res!397343 () Bool)

(assert (=> b!616688 (=> (not res!397343) (not e!353610))))

(declare-fun lt!283825 () SeekEntryResult!6431)

(assert (=> b!616688 (= res!397343 (or (= lt!283825 (MissingZero!6431 i!1108)) (= lt!283825 (MissingVacant!6431 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37483 (_ BitVec 32)) SeekEntryResult!6431)

(assert (=> b!616688 (= lt!283825 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(assert (= (and start!56050 res!397357) b!616682))

(assert (= (and b!616682 res!397345) b!616684))

(assert (= (and b!616684 res!397351) b!616685))

(assert (= (and b!616685 res!397350) b!616670))

(assert (= (and b!616670 res!397358) b!616688))

(assert (= (and b!616688 res!397343) b!616669))

(assert (= (and b!616669 res!397346) b!616668))

(assert (= (and b!616668 res!397344) b!616667))

(assert (= (and b!616667 res!397349) b!616677))

(assert (= (and b!616677 res!397352) b!616666))

(assert (= (and b!616666 res!397353) b!616676))

(assert (= (and b!616676 res!397355) b!616674))

(assert (= (and b!616676 c!70031) b!616680))

(assert (= (and b!616676 (not c!70031)) b!616681))

(assert (= (and b!616676 c!70029) b!616664))

(assert (= (and b!616676 (not c!70029)) b!616665))

(assert (= (and b!616664 res!397347) b!616683))

(assert (= (and b!616683 (not res!397354)) b!616673))

(assert (= (and b!616673 res!397342) b!616679))

(assert (= (and b!616664 c!70028) b!616686))

(assert (= (and b!616664 (not c!70028)) b!616671))

(assert (= (and b!616664 c!70030) b!616675))

(assert (= (and b!616664 (not c!70030)) b!616672))

(assert (= (and b!616675 res!397348) b!616678))

(assert (= (and b!616676 (not res!397356)) b!616687))

(declare-fun m!592859 () Bool)

(assert (=> b!616677 m!592859))

(declare-fun m!592861 () Bool)

(assert (=> b!616677 m!592861))

(declare-fun m!592863 () Bool)

(assert (=> b!616679 m!592863))

(assert (=> b!616679 m!592863))

(declare-fun m!592865 () Bool)

(assert (=> b!616679 m!592865))

(declare-fun m!592867 () Bool)

(assert (=> b!616688 m!592867))

(declare-fun m!592869 () Bool)

(assert (=> start!56050 m!592869))

(declare-fun m!592871 () Bool)

(assert (=> start!56050 m!592871))

(declare-fun m!592873 () Bool)

(assert (=> b!616685 m!592873))

(assert (=> b!616687 m!592859))

(declare-fun m!592875 () Bool)

(assert (=> b!616687 m!592875))

(declare-fun m!592877 () Bool)

(assert (=> b!616670 m!592877))

(declare-fun m!592879 () Bool)

(assert (=> b!616668 m!592879))

(assert (=> b!616684 m!592863))

(assert (=> b!616684 m!592863))

(declare-fun m!592881 () Bool)

(assert (=> b!616684 m!592881))

(assert (=> b!616673 m!592863))

(assert (=> b!616673 m!592863))

(declare-fun m!592883 () Bool)

(assert (=> b!616673 m!592883))

(assert (=> b!616664 m!592859))

(assert (=> b!616664 m!592875))

(assert (=> b!616664 m!592863))

(declare-fun m!592885 () Bool)

(assert (=> b!616666 m!592885))

(assert (=> b!616666 m!592863))

(assert (=> b!616666 m!592863))

(declare-fun m!592887 () Bool)

(assert (=> b!616666 m!592887))

(declare-fun m!592889 () Bool)

(assert (=> b!616667 m!592889))

(assert (=> b!616678 m!592863))

(assert (=> b!616678 m!592863))

(assert (=> b!616678 m!592865))

(declare-fun m!592891 () Bool)

(assert (=> b!616676 m!592891))

(declare-fun m!592893 () Bool)

(assert (=> b!616676 m!592893))

(assert (=> b!616676 m!592863))

(assert (=> b!616676 m!592859))

(assert (=> b!616676 m!592863))

(declare-fun m!592895 () Bool)

(assert (=> b!616676 m!592895))

(declare-fun m!592897 () Bool)

(assert (=> b!616676 m!592897))

(declare-fun m!592899 () Bool)

(assert (=> b!616676 m!592899))

(declare-fun m!592901 () Bool)

(assert (=> b!616676 m!592901))

(declare-fun m!592903 () Bool)

(assert (=> b!616675 m!592903))

(assert (=> b!616675 m!592863))

(declare-fun m!592905 () Bool)

(assert (=> b!616675 m!592905))

(assert (=> b!616675 m!592863))

(declare-fun m!592907 () Bool)

(assert (=> b!616675 m!592907))

(assert (=> b!616675 m!592863))

(declare-fun m!592909 () Bool)

(assert (=> b!616675 m!592909))

(assert (=> b!616675 m!592863))

(assert (=> b!616675 m!592883))

(declare-fun m!592911 () Bool)

(assert (=> b!616675 m!592911))

(declare-fun m!592913 () Bool)

(assert (=> b!616675 m!592913))

(assert (=> b!616675 m!592863))

(declare-fun m!592915 () Bool)

(assert (=> b!616675 m!592915))

(assert (=> b!616686 m!592863))

(declare-fun m!592917 () Bool)

(assert (=> b!616686 m!592917))

(assert (=> b!616686 m!592863))

(assert (=> b!616686 m!592907))

(assert (=> b!616686 m!592863))

(declare-fun m!592919 () Bool)

(assert (=> b!616686 m!592919))

(assert (=> b!616686 m!592863))

(declare-fun m!592921 () Bool)

(assert (=> b!616686 m!592921))

(declare-fun m!592923 () Bool)

(assert (=> b!616686 m!592923))

(declare-fun m!592925 () Bool)

(assert (=> b!616686 m!592925))

(assert (=> b!616686 m!592911))

(declare-fun m!592927 () Bool)

(assert (=> b!616669 m!592927))

(push 1)

