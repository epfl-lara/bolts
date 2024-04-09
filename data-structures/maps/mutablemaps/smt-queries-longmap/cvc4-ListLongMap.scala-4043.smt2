; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!55144 () Bool)

(assert start!55144)

(declare-fun e!345378 () Bool)

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((array!37180 0))(
  ( (array!37181 (arr!17843 (Array (_ BitVec 32) (_ BitVec 64))) (size!18207 (_ BitVec 32))) )
))
(declare-fun lt!275237 () array!37180)

(declare-fun b!603658 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun a!2986 () array!37180)

(declare-fun arrayContainsKey!0 (array!37180 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!603658 (= e!345378 (arrayContainsKey!0 lt!275237 (select (arr!17843 a!2986) j!136) index!984))))

(declare-fun b!603659 () Bool)

(declare-fun e!345369 () Bool)

(declare-fun e!345371 () Bool)

(assert (=> b!603659 (= e!345369 e!345371)))

(declare-fun res!387863 () Bool)

(assert (=> b!603659 (=> (not res!387863) (not e!345371))))

(declare-datatypes ((SeekEntryResult!6290 0))(
  ( (MissingZero!6290 (index!27422 (_ BitVec 32))) (Found!6290 (index!27423 (_ BitVec 32))) (Intermediate!6290 (undefined!7102 Bool) (index!27424 (_ BitVec 32)) (x!56244 (_ BitVec 32))) (Undefined!6290) (MissingVacant!6290 (index!27425 (_ BitVec 32))) )
))
(declare-fun lt!275234 () SeekEntryResult!6290)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!603659 (= res!387863 (or (= lt!275234 (MissingZero!6290 i!1108)) (= lt!275234 (MissingVacant!6290 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37180 (_ BitVec 32)) SeekEntryResult!6290)

(assert (=> b!603659 (= lt!275234 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!603660 () Bool)

(declare-fun e!345372 () Bool)

(declare-fun e!345367 () Bool)

(assert (=> b!603660 (= e!345372 e!345367)))

(declare-fun res!387860 () Bool)

(assert (=> b!603660 (=> (not res!387860) (not e!345367))))

(declare-fun lt!275240 () SeekEntryResult!6290)

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!603660 (= res!387860 (and (= lt!275240 (Found!6290 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17843 a!2986) index!984) (select (arr!17843 a!2986) j!136))) (not (= (select (arr!17843 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37180 (_ BitVec 32)) SeekEntryResult!6290)

(assert (=> b!603660 (= lt!275240 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17843 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!603661 () Bool)

(declare-fun e!345374 () Bool)

(declare-fun e!345375 () Bool)

(assert (=> b!603661 (= e!345374 e!345375)))

(declare-fun res!387870 () Bool)

(assert (=> b!603661 (=> res!387870 e!345375)))

(declare-fun lt!275235 () (_ BitVec 64))

(declare-fun lt!275241 () (_ BitVec 64))

(assert (=> b!603661 (= res!387870 (or (not (= (select (arr!17843 a!2986) j!136) lt!275241)) (not (= (select (arr!17843 a!2986) j!136) lt!275235)) (bvsge j!136 index!984)))))

(declare-fun b!603662 () Bool)

(declare-fun e!345370 () Bool)

(assert (=> b!603662 (= e!345370 true)))

(assert (=> b!603662 e!345378))

(declare-fun res!387858 () Bool)

(assert (=> b!603662 (=> (not res!387858) (not e!345378))))

(assert (=> b!603662 (= res!387858 (arrayContainsKey!0 lt!275237 (select (arr!17843 a!2986) j!136) j!136))))

(declare-fun b!603663 () Bool)

(declare-fun res!387864 () Bool)

(assert (=> b!603663 (=> (not res!387864) (not e!345371))))

(declare-datatypes ((List!11937 0))(
  ( (Nil!11934) (Cons!11933 (h!12978 (_ BitVec 64)) (t!18173 List!11937)) )
))
(declare-fun arrayNoDuplicates!0 (array!37180 (_ BitVec 32) List!11937) Bool)

(assert (=> b!603663 (= res!387864 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11934))))

(declare-fun b!603664 () Bool)

(declare-fun res!387865 () Bool)

(assert (=> b!603664 (=> (not res!387865) (not e!345369))))

(assert (=> b!603664 (= res!387865 (and (= (size!18207 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18207 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18207 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!603666 () Bool)

(declare-datatypes ((Unit!19168 0))(
  ( (Unit!19169) )
))
(declare-fun e!345379 () Unit!19168)

(declare-fun Unit!19170 () Unit!19168)

(assert (=> b!603666 (= e!345379 Unit!19170)))

(declare-fun b!603667 () Bool)

(declare-fun e!345376 () Bool)

(declare-fun e!345377 () Bool)

(assert (=> b!603667 (= e!345376 e!345377)))

(declare-fun res!387859 () Bool)

(assert (=> b!603667 (=> res!387859 e!345377)))

(assert (=> b!603667 (= res!387859 (or (not (= (select (arr!17843 a!2986) j!136) lt!275241)) (not (= (select (arr!17843 a!2986) j!136) lt!275235))))))

(assert (=> b!603667 e!345374))

(declare-fun res!387872 () Bool)

(assert (=> b!603667 (=> (not res!387872) (not e!345374))))

(assert (=> b!603667 (= res!387872 (= lt!275235 (select (arr!17843 a!2986) j!136)))))

(assert (=> b!603667 (= lt!275235 (select (store (arr!17843 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!603668 () Bool)

(assert (=> b!603668 (= e!345371 e!345372)))

(declare-fun res!387867 () Bool)

(assert (=> b!603668 (=> (not res!387867) (not e!345372))))

(assert (=> b!603668 (= res!387867 (= (select (store (arr!17843 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!603668 (= lt!275237 (array!37181 (store (arr!17843 a!2986) i!1108 k!1786) (size!18207 a!2986)))))

(declare-fun b!603669 () Bool)

(declare-fun res!387871 () Bool)

(assert (=> b!603669 (=> (not res!387871) (not e!345369))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!603669 (= res!387871 (validKeyInArray!0 (select (arr!17843 a!2986) j!136)))))

(declare-fun b!603670 () Bool)

(assert (=> b!603670 (= e!345377 e!345370)))

(declare-fun res!387854 () Bool)

(assert (=> b!603670 (=> res!387854 e!345370)))

(assert (=> b!603670 (= res!387854 (bvsge index!984 j!136))))

(declare-fun lt!275232 () Unit!19168)

(assert (=> b!603670 (= lt!275232 e!345379)))

(declare-fun c!68270 () Bool)

(assert (=> b!603670 (= c!68270 (bvslt j!136 index!984))))

(declare-fun b!603671 () Bool)

(declare-fun Unit!19171 () Unit!19168)

(assert (=> b!603671 (= e!345379 Unit!19171)))

(declare-fun lt!275236 () Unit!19168)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37180 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19168)

(assert (=> b!603671 (= lt!275236 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!275237 (select (arr!17843 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!603671 (arrayContainsKey!0 lt!275237 (select (arr!17843 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!275233 () Unit!19168)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37180 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11937) Unit!19168)

(assert (=> b!603671 (= lt!275233 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11934))))

(assert (=> b!603671 (arrayNoDuplicates!0 lt!275237 #b00000000000000000000000000000000 Nil!11934)))

(declare-fun lt!275228 () Unit!19168)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37180 (_ BitVec 32) (_ BitVec 32)) Unit!19168)

(assert (=> b!603671 (= lt!275228 (lemmaNoDuplicateFromThenFromBigger!0 lt!275237 #b00000000000000000000000000000000 j!136))))

(assert (=> b!603671 (arrayNoDuplicates!0 lt!275237 j!136 Nil!11934)))

(declare-fun lt!275227 () Unit!19168)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37180 (_ BitVec 64) (_ BitVec 32) List!11937) Unit!19168)

(assert (=> b!603671 (= lt!275227 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!275237 (select (arr!17843 a!2986) j!136) j!136 Nil!11934))))

(assert (=> b!603671 false))

(declare-fun b!603672 () Bool)

(assert (=> b!603672 (= e!345367 (not e!345376))))

(declare-fun res!387856 () Bool)

(assert (=> b!603672 (=> res!387856 e!345376)))

(declare-fun lt!275238 () SeekEntryResult!6290)

(assert (=> b!603672 (= res!387856 (not (= lt!275238 (Found!6290 index!984))))))

(declare-fun lt!275230 () Unit!19168)

(declare-fun e!345366 () Unit!19168)

(assert (=> b!603672 (= lt!275230 e!345366)))

(declare-fun c!68269 () Bool)

(assert (=> b!603672 (= c!68269 (= lt!275238 Undefined!6290))))

(assert (=> b!603672 (= lt!275238 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!275241 lt!275237 mask!3053))))

(declare-fun e!345368 () Bool)

(assert (=> b!603672 e!345368))

(declare-fun res!387862 () Bool)

(assert (=> b!603672 (=> (not res!387862) (not e!345368))))

(declare-fun lt!275231 () SeekEntryResult!6290)

(declare-fun lt!275239 () (_ BitVec 32))

(assert (=> b!603672 (= res!387862 (= lt!275231 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!275239 vacantSpotIndex!68 lt!275241 lt!275237 mask!3053)))))

(assert (=> b!603672 (= lt!275231 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!275239 vacantSpotIndex!68 (select (arr!17843 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!603672 (= lt!275241 (select (store (arr!17843 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!275229 () Unit!19168)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37180 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19168)

(assert (=> b!603672 (= lt!275229 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!275239 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!603672 (= lt!275239 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!603673 () Bool)

(declare-fun res!387868 () Bool)

(assert (=> b!603673 (=> (not res!387868) (not e!345369))))

(assert (=> b!603673 (= res!387868 (validKeyInArray!0 k!1786))))

(declare-fun b!603674 () Bool)

(declare-fun res!387866 () Bool)

(assert (=> b!603674 (=> (not res!387866) (not e!345371))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37180 (_ BitVec 32)) Bool)

(assert (=> b!603674 (= res!387866 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun res!387855 () Bool)

(assert (=> start!55144 (=> (not res!387855) (not e!345369))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55144 (= res!387855 (validMask!0 mask!3053))))

(assert (=> start!55144 e!345369))

(assert (=> start!55144 true))

(declare-fun array_inv!13617 (array!37180) Bool)

(assert (=> start!55144 (array_inv!13617 a!2986)))

(declare-fun e!345365 () Bool)

(declare-fun b!603665 () Bool)

(assert (=> b!603665 (= e!345365 (arrayContainsKey!0 lt!275237 (select (arr!17843 a!2986) j!136) index!984))))

(declare-fun b!603675 () Bool)

(declare-fun Unit!19172 () Unit!19168)

(assert (=> b!603675 (= e!345366 Unit!19172)))

(assert (=> b!603675 false))

(declare-fun b!603676 () Bool)

(declare-fun res!387857 () Bool)

(assert (=> b!603676 (=> (not res!387857) (not e!345371))))

(assert (=> b!603676 (= res!387857 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17843 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!603677 () Bool)

(assert (=> b!603677 (= e!345368 (= lt!275240 lt!275231))))

(declare-fun b!603678 () Bool)

(assert (=> b!603678 (= e!345375 e!345365)))

(declare-fun res!387861 () Bool)

(assert (=> b!603678 (=> (not res!387861) (not e!345365))))

(assert (=> b!603678 (= res!387861 (arrayContainsKey!0 lt!275237 (select (arr!17843 a!2986) j!136) j!136))))

(declare-fun b!603679 () Bool)

(declare-fun res!387869 () Bool)

(assert (=> b!603679 (=> (not res!387869) (not e!345369))))

(assert (=> b!603679 (= res!387869 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!603680 () Bool)

(declare-fun Unit!19173 () Unit!19168)

(assert (=> b!603680 (= e!345366 Unit!19173)))

(assert (= (and start!55144 res!387855) b!603664))

(assert (= (and b!603664 res!387865) b!603669))

(assert (= (and b!603669 res!387871) b!603673))

(assert (= (and b!603673 res!387868) b!603679))

(assert (= (and b!603679 res!387869) b!603659))

(assert (= (and b!603659 res!387863) b!603674))

(assert (= (and b!603674 res!387866) b!603663))

(assert (= (and b!603663 res!387864) b!603676))

(assert (= (and b!603676 res!387857) b!603668))

(assert (= (and b!603668 res!387867) b!603660))

(assert (= (and b!603660 res!387860) b!603672))

(assert (= (and b!603672 res!387862) b!603677))

(assert (= (and b!603672 c!68269) b!603675))

(assert (= (and b!603672 (not c!68269)) b!603680))

(assert (= (and b!603672 (not res!387856)) b!603667))

(assert (= (and b!603667 res!387872) b!603661))

(assert (= (and b!603661 (not res!387870)) b!603678))

(assert (= (and b!603678 res!387861) b!603665))

(assert (= (and b!603667 (not res!387859)) b!603670))

(assert (= (and b!603670 c!68270) b!603671))

(assert (= (and b!603670 (not c!68270)) b!603666))

(assert (= (and b!603670 (not res!387854)) b!603662))

(assert (= (and b!603662 res!387858) b!603658))

(declare-fun m!580671 () Bool)

(assert (=> b!603658 m!580671))

(assert (=> b!603658 m!580671))

(declare-fun m!580673 () Bool)

(assert (=> b!603658 m!580673))

(declare-fun m!580675 () Bool)

(assert (=> b!603672 m!580675))

(declare-fun m!580677 () Bool)

(assert (=> b!603672 m!580677))

(assert (=> b!603672 m!580671))

(declare-fun m!580679 () Bool)

(assert (=> b!603672 m!580679))

(declare-fun m!580681 () Bool)

(assert (=> b!603672 m!580681))

(declare-fun m!580683 () Bool)

(assert (=> b!603672 m!580683))

(assert (=> b!603672 m!580671))

(declare-fun m!580685 () Bool)

(assert (=> b!603672 m!580685))

(declare-fun m!580687 () Bool)

(assert (=> b!603672 m!580687))

(declare-fun m!580689 () Bool)

(assert (=> b!603676 m!580689))

(declare-fun m!580691 () Bool)

(assert (=> b!603679 m!580691))

(assert (=> b!603662 m!580671))

(assert (=> b!603662 m!580671))

(declare-fun m!580693 () Bool)

(assert (=> b!603662 m!580693))

(assert (=> b!603669 m!580671))

(assert (=> b!603669 m!580671))

(declare-fun m!580695 () Bool)

(assert (=> b!603669 m!580695))

(declare-fun m!580697 () Bool)

(assert (=> b!603663 m!580697))

(assert (=> b!603678 m!580671))

(assert (=> b!603678 m!580671))

(assert (=> b!603678 m!580693))

(assert (=> b!603661 m!580671))

(assert (=> b!603668 m!580687))

(declare-fun m!580699 () Bool)

(assert (=> b!603668 m!580699))

(declare-fun m!580701 () Bool)

(assert (=> b!603673 m!580701))

(declare-fun m!580703 () Bool)

(assert (=> b!603659 m!580703))

(assert (=> b!603671 m!580671))

(declare-fun m!580705 () Bool)

(assert (=> b!603671 m!580705))

(declare-fun m!580707 () Bool)

(assert (=> b!603671 m!580707))

(assert (=> b!603671 m!580671))

(assert (=> b!603671 m!580671))

(declare-fun m!580709 () Bool)

(assert (=> b!603671 m!580709))

(declare-fun m!580711 () Bool)

(assert (=> b!603671 m!580711))

(declare-fun m!580713 () Bool)

(assert (=> b!603671 m!580713))

(assert (=> b!603671 m!580671))

(declare-fun m!580715 () Bool)

(assert (=> b!603671 m!580715))

(declare-fun m!580717 () Bool)

(assert (=> b!603671 m!580717))

(assert (=> b!603665 m!580671))

(assert (=> b!603665 m!580671))

(assert (=> b!603665 m!580673))

(declare-fun m!580719 () Bool)

(assert (=> b!603660 m!580719))

(assert (=> b!603660 m!580671))

(assert (=> b!603660 m!580671))

(declare-fun m!580721 () Bool)

(assert (=> b!603660 m!580721))

(declare-fun m!580723 () Bool)

(assert (=> start!55144 m!580723))

(declare-fun m!580725 () Bool)

(assert (=> start!55144 m!580725))

(assert (=> b!603667 m!580671))

(assert (=> b!603667 m!580687))

(declare-fun m!580727 () Bool)

(assert (=> b!603667 m!580727))

(declare-fun m!580729 () Bool)

(assert (=> b!603674 m!580729))

(push 1)

