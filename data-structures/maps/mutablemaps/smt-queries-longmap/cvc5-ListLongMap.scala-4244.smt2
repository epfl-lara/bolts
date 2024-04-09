; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!58866 () Bool)

(assert start!58866)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun b!648186 () Bool)

(declare-fun e!371770 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!38484 0))(
  ( (array!38485 (arr!18444 (Array (_ BitVec 32) (_ BitVec 64))) (size!18808 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38484)

(declare-fun lt!300871 () array!38484)

(declare-fun arrayContainsKey!0 (array!38484 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!648186 (= e!371770 (arrayContainsKey!0 lt!300871 (select (arr!18444 a!2986) j!136) index!984))))

(declare-fun b!648187 () Bool)

(declare-fun e!371775 () Bool)

(assert (=> b!648187 (= e!371775 true)))

(declare-fun lt!300866 () Bool)

(declare-fun k!1786 () (_ BitVec 64))

(declare-datatypes ((List!12538 0))(
  ( (Nil!12535) (Cons!12534 (h!13579 (_ BitVec 64)) (t!18774 List!12538)) )
))
(declare-fun contains!3161 (List!12538 (_ BitVec 64)) Bool)

(assert (=> b!648187 (= lt!300866 (contains!3161 Nil!12535 k!1786))))

(declare-fun b!648188 () Bool)

(declare-datatypes ((Unit!22018 0))(
  ( (Unit!22019) )
))
(declare-fun e!371771 () Unit!22018)

(declare-fun Unit!22020 () Unit!22018)

(assert (=> b!648188 (= e!371771 Unit!22020)))

(declare-fun b!648189 () Bool)

(declare-fun e!371776 () Bool)

(declare-fun e!371781 () Bool)

(assert (=> b!648189 (= e!371776 e!371781)))

(declare-fun res!420031 () Bool)

(assert (=> b!648189 (=> (not res!420031) (not e!371781))))

(declare-datatypes ((SeekEntryResult!6891 0))(
  ( (MissingZero!6891 (index!29910 (_ BitVec 32))) (Found!6891 (index!29911 (_ BitVec 32))) (Intermediate!6891 (undefined!7703 Bool) (index!29912 (_ BitVec 32)) (x!58729 (_ BitVec 32))) (Undefined!6891) (MissingVacant!6891 (index!29913 (_ BitVec 32))) )
))
(declare-fun lt!300865 () SeekEntryResult!6891)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!648189 (= res!420031 (or (= lt!300865 (MissingZero!6891 i!1108)) (= lt!300865 (MissingVacant!6891 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38484 (_ BitVec 32)) SeekEntryResult!6891)

(assert (=> b!648189 (= lt!300865 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!648190 () Bool)

(declare-fun res!420022 () Bool)

(assert (=> b!648190 (=> (not res!420022) (not e!371776))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!648190 (= res!420022 (validKeyInArray!0 (select (arr!18444 a!2986) j!136)))))

(declare-fun res!420028 () Bool)

(assert (=> start!58866 (=> (not res!420028) (not e!371776))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!58866 (= res!420028 (validMask!0 mask!3053))))

(assert (=> start!58866 e!371776))

(assert (=> start!58866 true))

(declare-fun array_inv!14218 (array!38484) Bool)

(assert (=> start!58866 (array_inv!14218 a!2986)))

(declare-fun b!648191 () Bool)

(declare-fun res!420025 () Bool)

(assert (=> b!648191 (=> res!420025 e!371775)))

(declare-fun noDuplicate!421 (List!12538) Bool)

(assert (=> b!648191 (= res!420025 (not (noDuplicate!421 Nil!12535)))))

(declare-fun b!648192 () Bool)

(declare-fun e!371768 () Bool)

(declare-fun e!371774 () Bool)

(assert (=> b!648192 (= e!371768 (not e!371774))))

(declare-fun res!420024 () Bool)

(assert (=> b!648192 (=> res!420024 e!371774)))

(declare-fun lt!300870 () SeekEntryResult!6891)

(assert (=> b!648192 (= res!420024 (not (= lt!300870 (Found!6891 index!984))))))

(declare-fun lt!300858 () Unit!22018)

(declare-fun e!371767 () Unit!22018)

(assert (=> b!648192 (= lt!300858 e!371767)))

(declare-fun c!74456 () Bool)

(assert (=> b!648192 (= c!74456 (= lt!300870 Undefined!6891))))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!300867 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38484 (_ BitVec 32)) SeekEntryResult!6891)

(assert (=> b!648192 (= lt!300870 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!300867 lt!300871 mask!3053))))

(declare-fun e!371777 () Bool)

(assert (=> b!648192 e!371777))

(declare-fun res!420021 () Bool)

(assert (=> b!648192 (=> (not res!420021) (not e!371777))))

(declare-fun lt!300860 () (_ BitVec 32))

(declare-fun lt!300872 () SeekEntryResult!6891)

(assert (=> b!648192 (= res!420021 (= lt!300872 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!300860 vacantSpotIndex!68 lt!300867 lt!300871 mask!3053)))))

(assert (=> b!648192 (= lt!300872 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!300860 vacantSpotIndex!68 (select (arr!18444 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!648192 (= lt!300867 (select (store (arr!18444 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!300859 () Unit!22018)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38484 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22018)

(assert (=> b!648192 (= lt!300859 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!300860 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!648192 (= lt!300860 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!648193 () Bool)

(declare-fun res!420012 () Bool)

(assert (=> b!648193 (=> (not res!420012) (not e!371781))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38484 (_ BitVec 32)) Bool)

(assert (=> b!648193 (= res!420012 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!648194 () Bool)

(declare-fun e!371779 () Bool)

(assert (=> b!648194 (= e!371779 e!371768)))

(declare-fun res!420014 () Bool)

(assert (=> b!648194 (=> (not res!420014) (not e!371768))))

(declare-fun lt!300862 () SeekEntryResult!6891)

(assert (=> b!648194 (= res!420014 (and (= lt!300862 (Found!6891 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18444 a!2986) index!984) (select (arr!18444 a!2986) j!136))) (not (= (select (arr!18444 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!648194 (= lt!300862 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18444 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!648195 () Bool)

(declare-fun res!420030 () Bool)

(assert (=> b!648195 (=> (not res!420030) (not e!371776))))

(assert (=> b!648195 (= res!420030 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!648196 () Bool)

(assert (=> b!648196 (= e!371781 e!371779)))

(declare-fun res!420018 () Bool)

(assert (=> b!648196 (=> (not res!420018) (not e!371779))))

(assert (=> b!648196 (= res!420018 (= (select (store (arr!18444 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!648196 (= lt!300871 (array!38485 (store (arr!18444 a!2986) i!1108 k!1786) (size!18808 a!2986)))))

(declare-fun b!648197 () Bool)

(declare-fun Unit!22021 () Unit!22018)

(assert (=> b!648197 (= e!371767 Unit!22021)))

(assert (=> b!648197 false))

(declare-fun b!648198 () Bool)

(declare-fun e!371778 () Bool)

(declare-fun e!371780 () Bool)

(assert (=> b!648198 (= e!371778 e!371780)))

(declare-fun res!420011 () Bool)

(assert (=> b!648198 (=> res!420011 e!371780)))

(assert (=> b!648198 (= res!420011 (bvsge index!984 j!136))))

(declare-fun lt!300873 () Unit!22018)

(assert (=> b!648198 (= lt!300873 e!371771)))

(declare-fun c!74455 () Bool)

(assert (=> b!648198 (= c!74455 (bvslt j!136 index!984))))

(declare-fun b!648199 () Bool)

(declare-fun Unit!22022 () Unit!22018)

(assert (=> b!648199 (= e!371767 Unit!22022)))

(declare-fun b!648200 () Bool)

(declare-fun e!371773 () Bool)

(declare-fun e!371769 () Bool)

(assert (=> b!648200 (= e!371773 e!371769)))

(declare-fun res!420027 () Bool)

(assert (=> b!648200 (=> res!420027 e!371769)))

(declare-fun lt!300864 () (_ BitVec 64))

(assert (=> b!648200 (= res!420027 (or (not (= (select (arr!18444 a!2986) j!136) lt!300867)) (not (= (select (arr!18444 a!2986) j!136) lt!300864)) (bvsge j!136 index!984)))))

(declare-fun b!648201 () Bool)

(assert (=> b!648201 (= e!371777 (= lt!300862 lt!300872))))

(declare-fun b!648202 () Bool)

(declare-fun res!420026 () Bool)

(assert (=> b!648202 (=> (not res!420026) (not e!371776))))

(assert (=> b!648202 (= res!420026 (validKeyInArray!0 k!1786))))

(declare-fun b!648203 () Bool)

(assert (=> b!648203 (= e!371769 e!371770)))

(declare-fun res!420029 () Bool)

(assert (=> b!648203 (=> (not res!420029) (not e!371770))))

(assert (=> b!648203 (= res!420029 (arrayContainsKey!0 lt!300871 (select (arr!18444 a!2986) j!136) j!136))))

(declare-fun b!648204 () Bool)

(declare-fun res!420020 () Bool)

(assert (=> b!648204 (=> (not res!420020) (not e!371781))))

(assert (=> b!648204 (= res!420020 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18444 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!648205 () Bool)

(declare-fun Unit!22023 () Unit!22018)

(assert (=> b!648205 (= e!371771 Unit!22023)))

(declare-fun lt!300868 () Unit!22018)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38484 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22018)

(assert (=> b!648205 (= lt!300868 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!300871 (select (arr!18444 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!648205 (arrayContainsKey!0 lt!300871 (select (arr!18444 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!300861 () Unit!22018)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38484 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12538) Unit!22018)

(assert (=> b!648205 (= lt!300861 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12535))))

(declare-fun arrayNoDuplicates!0 (array!38484 (_ BitVec 32) List!12538) Bool)

(assert (=> b!648205 (arrayNoDuplicates!0 lt!300871 #b00000000000000000000000000000000 Nil!12535)))

(declare-fun lt!300869 () Unit!22018)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38484 (_ BitVec 32) (_ BitVec 32)) Unit!22018)

(assert (=> b!648205 (= lt!300869 (lemmaNoDuplicateFromThenFromBigger!0 lt!300871 #b00000000000000000000000000000000 j!136))))

(assert (=> b!648205 (arrayNoDuplicates!0 lt!300871 j!136 Nil!12535)))

(declare-fun lt!300863 () Unit!22018)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38484 (_ BitVec 64) (_ BitVec 32) List!12538) Unit!22018)

(assert (=> b!648205 (= lt!300863 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!300871 (select (arr!18444 a!2986) j!136) j!136 Nil!12535))))

(assert (=> b!648205 false))

(declare-fun e!371772 () Bool)

(declare-fun b!648206 () Bool)

(assert (=> b!648206 (= e!371772 (arrayContainsKey!0 lt!300871 (select (arr!18444 a!2986) j!136) index!984))))

(declare-fun b!648207 () Bool)

(declare-fun res!420032 () Bool)

(assert (=> b!648207 (=> (not res!420032) (not e!371776))))

(assert (=> b!648207 (= res!420032 (and (= (size!18808 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18808 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18808 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!648208 () Bool)

(assert (=> b!648208 (= e!371780 e!371775)))

(declare-fun res!420010 () Bool)

(assert (=> b!648208 (=> res!420010 e!371775)))

(assert (=> b!648208 (= res!420010 (or (bvsge (size!18808 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18808 a!2986))))))

(assert (=> b!648208 (arrayContainsKey!0 lt!300871 (select (arr!18444 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!300857 () Unit!22018)

(assert (=> b!648208 (= lt!300857 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!300871 (select (arr!18444 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!648208 e!371772))

(declare-fun res!420023 () Bool)

(assert (=> b!648208 (=> (not res!420023) (not e!371772))))

(assert (=> b!648208 (= res!420023 (arrayContainsKey!0 lt!300871 (select (arr!18444 a!2986) j!136) j!136))))

(declare-fun b!648209 () Bool)

(assert (=> b!648209 (= e!371774 e!371778)))

(declare-fun res!420013 () Bool)

(assert (=> b!648209 (=> res!420013 e!371778)))

(assert (=> b!648209 (= res!420013 (or (not (= (select (arr!18444 a!2986) j!136) lt!300867)) (not (= (select (arr!18444 a!2986) j!136) lt!300864))))))

(assert (=> b!648209 e!371773))

(declare-fun res!420015 () Bool)

(assert (=> b!648209 (=> (not res!420015) (not e!371773))))

(assert (=> b!648209 (= res!420015 (= lt!300864 (select (arr!18444 a!2986) j!136)))))

(assert (=> b!648209 (= lt!300864 (select (store (arr!18444 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!648210 () Bool)

(declare-fun res!420017 () Bool)

(assert (=> b!648210 (=> res!420017 e!371775)))

(assert (=> b!648210 (= res!420017 (contains!3161 Nil!12535 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!648211 () Bool)

(declare-fun res!420019 () Bool)

(assert (=> b!648211 (=> (not res!420019) (not e!371781))))

(assert (=> b!648211 (= res!420019 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12535))))

(declare-fun b!648212 () Bool)

(declare-fun res!420016 () Bool)

(assert (=> b!648212 (=> res!420016 e!371775)))

(assert (=> b!648212 (= res!420016 (contains!3161 Nil!12535 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!58866 res!420028) b!648207))

(assert (= (and b!648207 res!420032) b!648190))

(assert (= (and b!648190 res!420022) b!648202))

(assert (= (and b!648202 res!420026) b!648195))

(assert (= (and b!648195 res!420030) b!648189))

(assert (= (and b!648189 res!420031) b!648193))

(assert (= (and b!648193 res!420012) b!648211))

(assert (= (and b!648211 res!420019) b!648204))

(assert (= (and b!648204 res!420020) b!648196))

(assert (= (and b!648196 res!420018) b!648194))

(assert (= (and b!648194 res!420014) b!648192))

(assert (= (and b!648192 res!420021) b!648201))

(assert (= (and b!648192 c!74456) b!648197))

(assert (= (and b!648192 (not c!74456)) b!648199))

(assert (= (and b!648192 (not res!420024)) b!648209))

(assert (= (and b!648209 res!420015) b!648200))

(assert (= (and b!648200 (not res!420027)) b!648203))

(assert (= (and b!648203 res!420029) b!648186))

(assert (= (and b!648209 (not res!420013)) b!648198))

(assert (= (and b!648198 c!74455) b!648205))

(assert (= (and b!648198 (not c!74455)) b!648188))

(assert (= (and b!648198 (not res!420011)) b!648208))

(assert (= (and b!648208 res!420023) b!648206))

(assert (= (and b!648208 (not res!420010)) b!648191))

(assert (= (and b!648191 (not res!420025)) b!648212))

(assert (= (and b!648212 (not res!420016)) b!648210))

(assert (= (and b!648210 (not res!420017)) b!648187))

(declare-fun m!621627 () Bool)

(assert (=> b!648186 m!621627))

(assert (=> b!648186 m!621627))

(declare-fun m!621629 () Bool)

(assert (=> b!648186 m!621629))

(assert (=> b!648205 m!621627))

(declare-fun m!621631 () Bool)

(assert (=> b!648205 m!621631))

(assert (=> b!648205 m!621627))

(declare-fun m!621633 () Bool)

(assert (=> b!648205 m!621633))

(assert (=> b!648205 m!621627))

(assert (=> b!648205 m!621627))

(declare-fun m!621635 () Bool)

(assert (=> b!648205 m!621635))

(declare-fun m!621637 () Bool)

(assert (=> b!648205 m!621637))

(declare-fun m!621639 () Bool)

(assert (=> b!648205 m!621639))

(declare-fun m!621641 () Bool)

(assert (=> b!648205 m!621641))

(declare-fun m!621643 () Bool)

(assert (=> b!648205 m!621643))

(declare-fun m!621645 () Bool)

(assert (=> b!648211 m!621645))

(declare-fun m!621647 () Bool)

(assert (=> b!648193 m!621647))

(declare-fun m!621649 () Bool)

(assert (=> b!648210 m!621649))

(declare-fun m!621651 () Bool)

(assert (=> b!648192 m!621651))

(declare-fun m!621653 () Bool)

(assert (=> b!648192 m!621653))

(assert (=> b!648192 m!621627))

(declare-fun m!621655 () Bool)

(assert (=> b!648192 m!621655))

(declare-fun m!621657 () Bool)

(assert (=> b!648192 m!621657))

(assert (=> b!648192 m!621627))

(declare-fun m!621659 () Bool)

(assert (=> b!648192 m!621659))

(declare-fun m!621661 () Bool)

(assert (=> b!648192 m!621661))

(declare-fun m!621663 () Bool)

(assert (=> b!648192 m!621663))

(declare-fun m!621665 () Bool)

(assert (=> b!648212 m!621665))

(assert (=> b!648196 m!621663))

(declare-fun m!621667 () Bool)

(assert (=> b!648196 m!621667))

(declare-fun m!621669 () Bool)

(assert (=> b!648204 m!621669))

(assert (=> b!648200 m!621627))

(declare-fun m!621671 () Bool)

(assert (=> b!648195 m!621671))

(declare-fun m!621673 () Bool)

(assert (=> b!648194 m!621673))

(assert (=> b!648194 m!621627))

(assert (=> b!648194 m!621627))

(declare-fun m!621675 () Bool)

(assert (=> b!648194 m!621675))

(declare-fun m!621677 () Bool)

(assert (=> b!648191 m!621677))

(declare-fun m!621679 () Bool)

(assert (=> b!648202 m!621679))

(declare-fun m!621681 () Bool)

(assert (=> b!648189 m!621681))

(assert (=> b!648208 m!621627))

(assert (=> b!648208 m!621627))

(declare-fun m!621683 () Bool)

(assert (=> b!648208 m!621683))

(assert (=> b!648208 m!621627))

(declare-fun m!621685 () Bool)

(assert (=> b!648208 m!621685))

(assert (=> b!648208 m!621627))

(declare-fun m!621687 () Bool)

(assert (=> b!648208 m!621687))

(assert (=> b!648209 m!621627))

(assert (=> b!648209 m!621663))

(declare-fun m!621689 () Bool)

(assert (=> b!648209 m!621689))

(declare-fun m!621691 () Bool)

(assert (=> start!58866 m!621691))

(declare-fun m!621693 () Bool)

(assert (=> start!58866 m!621693))

(declare-fun m!621695 () Bool)

(assert (=> b!648187 m!621695))

(assert (=> b!648203 m!621627))

(assert (=> b!648203 m!621627))

(assert (=> b!648203 m!621687))

(assert (=> b!648206 m!621627))

(assert (=> b!648206 m!621627))

(assert (=> b!648206 m!621629))

(assert (=> b!648190 m!621627))

(assert (=> b!648190 m!621627))

(declare-fun m!621697 () Bool)

(assert (=> b!648190 m!621697))

(push 1)

