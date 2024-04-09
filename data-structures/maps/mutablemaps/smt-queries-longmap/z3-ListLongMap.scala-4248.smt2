; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!58892 () Bool)

(assert start!58892)

(declare-fun b!649239 () Bool)

(declare-fun e!372400 () Bool)

(declare-fun e!372391 () Bool)

(assert (=> b!649239 (= e!372400 e!372391)))

(declare-fun res!420918 () Bool)

(assert (=> b!649239 (=> (not res!420918) (not e!372391))))

(declare-datatypes ((SeekEntryResult!6904 0))(
  ( (MissingZero!6904 (index!29962 (_ BitVec 32))) (Found!6904 (index!29963 (_ BitVec 32))) (Intermediate!6904 (undefined!7716 Bool) (index!29964 (_ BitVec 32)) (x!58774 (_ BitVec 32))) (Undefined!6904) (MissingVacant!6904 (index!29965 (_ BitVec 32))) )
))
(declare-fun lt!301528 () SeekEntryResult!6904)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!649239 (= res!420918 (or (= lt!301528 (MissingZero!6904 i!1108)) (= lt!301528 (MissingVacant!6904 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-datatypes ((array!38510 0))(
  ( (array!38511 (arr!18457 (Array (_ BitVec 32) (_ BitVec 64))) (size!18821 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38510)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38510 (_ BitVec 32)) SeekEntryResult!6904)

(assert (=> b!649239 (= lt!301528 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!649240 () Bool)

(declare-datatypes ((Unit!22096 0))(
  ( (Unit!22097) )
))
(declare-fun e!372396 () Unit!22096)

(declare-fun Unit!22098 () Unit!22096)

(assert (=> b!649240 (= e!372396 Unit!22098)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!301520 () Unit!22096)

(declare-fun lt!301525 () array!38510)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38510 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22096)

(assert (=> b!649240 (= lt!301520 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!301525 (select (arr!18457 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun arrayContainsKey!0 (array!38510 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!649240 (arrayContainsKey!0 lt!301525 (select (arr!18457 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!301530 () Unit!22096)

(declare-datatypes ((List!12551 0))(
  ( (Nil!12548) (Cons!12547 (h!13592 (_ BitVec 64)) (t!18787 List!12551)) )
))
(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38510 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12551) Unit!22096)

(assert (=> b!649240 (= lt!301530 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12548))))

(declare-fun arrayNoDuplicates!0 (array!38510 (_ BitVec 32) List!12551) Bool)

(assert (=> b!649240 (arrayNoDuplicates!0 lt!301525 #b00000000000000000000000000000000 Nil!12548)))

(declare-fun lt!301524 () Unit!22096)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38510 (_ BitVec 32) (_ BitVec 32)) Unit!22096)

(assert (=> b!649240 (= lt!301524 (lemmaNoDuplicateFromThenFromBigger!0 lt!301525 #b00000000000000000000000000000000 j!136))))

(assert (=> b!649240 (arrayNoDuplicates!0 lt!301525 j!136 Nil!12548)))

(declare-fun lt!301523 () Unit!22096)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38510 (_ BitVec 64) (_ BitVec 32) List!12551) Unit!22096)

(assert (=> b!649240 (= lt!301523 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!301525 (select (arr!18457 a!2986) j!136) j!136 Nil!12548))))

(assert (=> b!649240 false))

(declare-fun b!649241 () Bool)

(declare-fun res!420907 () Bool)

(assert (=> b!649241 (=> (not res!420907) (not e!372400))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!649241 (= res!420907 (validKeyInArray!0 (select (arr!18457 a!2986) j!136)))))

(declare-fun b!649242 () Bool)

(declare-fun e!372402 () Bool)

(declare-fun e!372394 () Bool)

(assert (=> b!649242 (= e!372402 e!372394)))

(declare-fun res!420921 () Bool)

(assert (=> b!649242 (=> res!420921 e!372394)))

(assert (=> b!649242 (= res!420921 (or (bvsge (size!18821 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18821 a!2986))))))

(assert (=> b!649242 (arrayContainsKey!0 lt!301525 (select (arr!18457 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!301527 () Unit!22096)

(assert (=> b!649242 (= lt!301527 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!301525 (select (arr!18457 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!372406 () Bool)

(assert (=> b!649242 e!372406))

(declare-fun res!420915 () Bool)

(assert (=> b!649242 (=> (not res!420915) (not e!372406))))

(assert (=> b!649242 (= res!420915 (arrayContainsKey!0 lt!301525 (select (arr!18457 a!2986) j!136) j!136))))

(declare-fun b!649243 () Bool)

(declare-fun res!420923 () Bool)

(assert (=> b!649243 (=> res!420923 e!372394)))

(declare-fun contains!3174 (List!12551 (_ BitVec 64)) Bool)

(assert (=> b!649243 (= res!420923 (contains!3174 Nil!12548 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!649244 () Bool)

(declare-fun e!372395 () Bool)

(declare-fun e!372397 () Bool)

(assert (=> b!649244 (= e!372395 (not e!372397))))

(declare-fun res!420925 () Bool)

(assert (=> b!649244 (=> res!420925 e!372397)))

(declare-fun lt!301521 () SeekEntryResult!6904)

(assert (=> b!649244 (= res!420925 (not (= lt!301521 (Found!6904 index!984))))))

(declare-fun lt!301526 () Unit!22096)

(declare-fun e!372398 () Unit!22096)

(assert (=> b!649244 (= lt!301526 e!372398)))

(declare-fun c!74534 () Bool)

(assert (=> b!649244 (= c!74534 (= lt!301521 Undefined!6904))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun lt!301535 () (_ BitVec 64))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38510 (_ BitVec 32)) SeekEntryResult!6904)

(assert (=> b!649244 (= lt!301521 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!301535 lt!301525 mask!3053))))

(declare-fun e!372399 () Bool)

(assert (=> b!649244 e!372399))

(declare-fun res!420929 () Bool)

(assert (=> b!649244 (=> (not res!420929) (not e!372399))))

(declare-fun lt!301529 () (_ BitVec 32))

(declare-fun lt!301522 () SeekEntryResult!6904)

(assert (=> b!649244 (= res!420929 (= lt!301522 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!301529 vacantSpotIndex!68 lt!301535 lt!301525 mask!3053)))))

(assert (=> b!649244 (= lt!301522 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!301529 vacantSpotIndex!68 (select (arr!18457 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!649244 (= lt!301535 (select (store (arr!18457 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!301533 () Unit!22096)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38510 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22096)

(assert (=> b!649244 (= lt!301533 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!301529 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!649244 (= lt!301529 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!649245 () Bool)

(declare-fun Unit!22099 () Unit!22096)

(assert (=> b!649245 (= e!372398 Unit!22099)))

(assert (=> b!649245 false))

(declare-fun b!649246 () Bool)

(declare-fun res!420913 () Bool)

(assert (=> b!649246 (=> (not res!420913) (not e!372400))))

(assert (=> b!649246 (= res!420913 (validKeyInArray!0 k0!1786))))

(declare-fun b!649247 () Bool)

(declare-fun Unit!22100 () Unit!22096)

(assert (=> b!649247 (= e!372396 Unit!22100)))

(declare-fun b!649248 () Bool)

(declare-fun res!420922 () Bool)

(assert (=> b!649248 (=> (not res!420922) (not e!372400))))

(assert (=> b!649248 (= res!420922 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!649249 () Bool)

(declare-fun e!372405 () Bool)

(assert (=> b!649249 (= e!372405 e!372402)))

(declare-fun res!420909 () Bool)

(assert (=> b!649249 (=> res!420909 e!372402)))

(assert (=> b!649249 (= res!420909 (bvsge index!984 j!136))))

(declare-fun lt!301531 () Unit!22096)

(assert (=> b!649249 (= lt!301531 e!372396)))

(declare-fun c!74533 () Bool)

(assert (=> b!649249 (= c!74533 (bvslt j!136 index!984))))

(declare-fun b!649250 () Bool)

(assert (=> b!649250 (= e!372397 e!372405)))

(declare-fun res!420924 () Bool)

(assert (=> b!649250 (=> res!420924 e!372405)))

(declare-fun lt!301532 () (_ BitVec 64))

(assert (=> b!649250 (= res!420924 (or (not (= (select (arr!18457 a!2986) j!136) lt!301535)) (not (= (select (arr!18457 a!2986) j!136) lt!301532))))))

(declare-fun e!372393 () Bool)

(assert (=> b!649250 e!372393))

(declare-fun res!420926 () Bool)

(assert (=> b!649250 (=> (not res!420926) (not e!372393))))

(assert (=> b!649250 (= res!420926 (= lt!301532 (select (arr!18457 a!2986) j!136)))))

(assert (=> b!649250 (= lt!301532 (select (store (arr!18457 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!649251 () Bool)

(declare-fun e!372403 () Bool)

(assert (=> b!649251 (= e!372403 e!372395)))

(declare-fun res!420911 () Bool)

(assert (=> b!649251 (=> (not res!420911) (not e!372395))))

(declare-fun lt!301536 () SeekEntryResult!6904)

(assert (=> b!649251 (= res!420911 (and (= lt!301536 (Found!6904 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18457 a!2986) index!984) (select (arr!18457 a!2986) j!136))) (not (= (select (arr!18457 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!649251 (= lt!301536 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18457 a!2986) j!136) a!2986 mask!3053))))

(declare-fun res!420919 () Bool)

(assert (=> start!58892 (=> (not res!420919) (not e!372400))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!58892 (= res!420919 (validMask!0 mask!3053))))

(assert (=> start!58892 e!372400))

(assert (=> start!58892 true))

(declare-fun array_inv!14231 (array!38510) Bool)

(assert (=> start!58892 (array_inv!14231 a!2986)))

(declare-fun b!649252 () Bool)

(declare-fun res!420917 () Bool)

(assert (=> b!649252 (=> res!420917 e!372394)))

(assert (=> b!649252 (= res!420917 (contains!3174 Nil!12548 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!649253 () Bool)

(assert (=> b!649253 (= e!372394 true)))

(declare-fun lt!301534 () Bool)

(assert (=> b!649253 (= lt!301534 (contains!3174 Nil!12548 k0!1786))))

(declare-fun b!649254 () Bool)

(assert (=> b!649254 (= e!372406 (arrayContainsKey!0 lt!301525 (select (arr!18457 a!2986) j!136) index!984))))

(declare-fun b!649255 () Bool)

(assert (=> b!649255 (= e!372391 e!372403)))

(declare-fun res!420916 () Bool)

(assert (=> b!649255 (=> (not res!420916) (not e!372403))))

(assert (=> b!649255 (= res!420916 (= (select (store (arr!18457 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!649255 (= lt!301525 (array!38511 (store (arr!18457 a!2986) i!1108 k0!1786) (size!18821 a!2986)))))

(declare-fun b!649256 () Bool)

(declare-fun res!420910 () Bool)

(assert (=> b!649256 (=> (not res!420910) (not e!372391))))

(assert (=> b!649256 (= res!420910 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12548))))

(declare-fun b!649257 () Bool)

(declare-fun e!372392 () Bool)

(assert (=> b!649257 (= e!372393 e!372392)))

(declare-fun res!420928 () Bool)

(assert (=> b!649257 (=> res!420928 e!372392)))

(assert (=> b!649257 (= res!420928 (or (not (= (select (arr!18457 a!2986) j!136) lt!301535)) (not (= (select (arr!18457 a!2986) j!136) lt!301532)) (bvsge j!136 index!984)))))

(declare-fun b!649258 () Bool)

(declare-fun res!420927 () Bool)

(assert (=> b!649258 (=> (not res!420927) (not e!372391))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38510 (_ BitVec 32)) Bool)

(assert (=> b!649258 (= res!420927 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun e!372401 () Bool)

(declare-fun b!649259 () Bool)

(assert (=> b!649259 (= e!372401 (arrayContainsKey!0 lt!301525 (select (arr!18457 a!2986) j!136) index!984))))

(declare-fun b!649260 () Bool)

(declare-fun res!420908 () Bool)

(assert (=> b!649260 (=> (not res!420908) (not e!372391))))

(assert (=> b!649260 (= res!420908 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18457 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!649261 () Bool)

(assert (=> b!649261 (= e!372399 (= lt!301536 lt!301522))))

(declare-fun b!649262 () Bool)

(declare-fun res!420912 () Bool)

(assert (=> b!649262 (=> res!420912 e!372394)))

(declare-fun noDuplicate!434 (List!12551) Bool)

(assert (=> b!649262 (= res!420912 (not (noDuplicate!434 Nil!12548)))))

(declare-fun b!649263 () Bool)

(declare-fun res!420914 () Bool)

(assert (=> b!649263 (=> (not res!420914) (not e!372400))))

(assert (=> b!649263 (= res!420914 (and (= (size!18821 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18821 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18821 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!649264 () Bool)

(assert (=> b!649264 (= e!372392 e!372401)))

(declare-fun res!420920 () Bool)

(assert (=> b!649264 (=> (not res!420920) (not e!372401))))

(assert (=> b!649264 (= res!420920 (arrayContainsKey!0 lt!301525 (select (arr!18457 a!2986) j!136) j!136))))

(declare-fun b!649265 () Bool)

(declare-fun Unit!22101 () Unit!22096)

(assert (=> b!649265 (= e!372398 Unit!22101)))

(assert (= (and start!58892 res!420919) b!649263))

(assert (= (and b!649263 res!420914) b!649241))

(assert (= (and b!649241 res!420907) b!649246))

(assert (= (and b!649246 res!420913) b!649248))

(assert (= (and b!649248 res!420922) b!649239))

(assert (= (and b!649239 res!420918) b!649258))

(assert (= (and b!649258 res!420927) b!649256))

(assert (= (and b!649256 res!420910) b!649260))

(assert (= (and b!649260 res!420908) b!649255))

(assert (= (and b!649255 res!420916) b!649251))

(assert (= (and b!649251 res!420911) b!649244))

(assert (= (and b!649244 res!420929) b!649261))

(assert (= (and b!649244 c!74534) b!649245))

(assert (= (and b!649244 (not c!74534)) b!649265))

(assert (= (and b!649244 (not res!420925)) b!649250))

(assert (= (and b!649250 res!420926) b!649257))

(assert (= (and b!649257 (not res!420928)) b!649264))

(assert (= (and b!649264 res!420920) b!649259))

(assert (= (and b!649250 (not res!420924)) b!649249))

(assert (= (and b!649249 c!74533) b!649240))

(assert (= (and b!649249 (not c!74533)) b!649247))

(assert (= (and b!649249 (not res!420909)) b!649242))

(assert (= (and b!649242 res!420915) b!649254))

(assert (= (and b!649242 (not res!420921)) b!649262))

(assert (= (and b!649262 (not res!420912)) b!649252))

(assert (= (and b!649252 (not res!420917)) b!649243))

(assert (= (and b!649243 (not res!420923)) b!649253))

(declare-fun m!622563 () Bool)

(assert (=> b!649239 m!622563))

(declare-fun m!622565 () Bool)

(assert (=> b!649250 m!622565))

(declare-fun m!622567 () Bool)

(assert (=> b!649250 m!622567))

(declare-fun m!622569 () Bool)

(assert (=> b!649250 m!622569))

(assert (=> b!649259 m!622565))

(assert (=> b!649259 m!622565))

(declare-fun m!622571 () Bool)

(assert (=> b!649259 m!622571))

(declare-fun m!622573 () Bool)

(assert (=> b!649260 m!622573))

(assert (=> b!649255 m!622567))

(declare-fun m!622575 () Bool)

(assert (=> b!649255 m!622575))

(declare-fun m!622577 () Bool)

(assert (=> b!649262 m!622577))

(declare-fun m!622579 () Bool)

(assert (=> b!649251 m!622579))

(assert (=> b!649251 m!622565))

(assert (=> b!649251 m!622565))

(declare-fun m!622581 () Bool)

(assert (=> b!649251 m!622581))

(declare-fun m!622583 () Bool)

(assert (=> start!58892 m!622583))

(declare-fun m!622585 () Bool)

(assert (=> start!58892 m!622585))

(declare-fun m!622587 () Bool)

(assert (=> b!649256 m!622587))

(assert (=> b!649242 m!622565))

(assert (=> b!649242 m!622565))

(declare-fun m!622589 () Bool)

(assert (=> b!649242 m!622589))

(assert (=> b!649242 m!622565))

(declare-fun m!622591 () Bool)

(assert (=> b!649242 m!622591))

(assert (=> b!649242 m!622565))

(declare-fun m!622593 () Bool)

(assert (=> b!649242 m!622593))

(declare-fun m!622595 () Bool)

(assert (=> b!649248 m!622595))

(assert (=> b!649257 m!622565))

(declare-fun m!622597 () Bool)

(assert (=> b!649252 m!622597))

(declare-fun m!622599 () Bool)

(assert (=> b!649253 m!622599))

(assert (=> b!649254 m!622565))

(assert (=> b!649254 m!622565))

(assert (=> b!649254 m!622571))

(declare-fun m!622601 () Bool)

(assert (=> b!649258 m!622601))

(declare-fun m!622603 () Bool)

(assert (=> b!649243 m!622603))

(assert (=> b!649241 m!622565))

(assert (=> b!649241 m!622565))

(declare-fun m!622605 () Bool)

(assert (=> b!649241 m!622605))

(declare-fun m!622607 () Bool)

(assert (=> b!649246 m!622607))

(assert (=> b!649264 m!622565))

(assert (=> b!649264 m!622565))

(assert (=> b!649264 m!622593))

(declare-fun m!622609 () Bool)

(assert (=> b!649244 m!622609))

(declare-fun m!622611 () Bool)

(assert (=> b!649244 m!622611))

(assert (=> b!649244 m!622565))

(declare-fun m!622613 () Bool)

(assert (=> b!649244 m!622613))

(assert (=> b!649244 m!622567))

(declare-fun m!622615 () Bool)

(assert (=> b!649244 m!622615))

(declare-fun m!622617 () Bool)

(assert (=> b!649244 m!622617))

(assert (=> b!649244 m!622565))

(declare-fun m!622619 () Bool)

(assert (=> b!649244 m!622619))

(assert (=> b!649240 m!622565))

(assert (=> b!649240 m!622565))

(declare-fun m!622621 () Bool)

(assert (=> b!649240 m!622621))

(assert (=> b!649240 m!622565))

(declare-fun m!622623 () Bool)

(assert (=> b!649240 m!622623))

(declare-fun m!622625 () Bool)

(assert (=> b!649240 m!622625))

(assert (=> b!649240 m!622565))

(declare-fun m!622627 () Bool)

(assert (=> b!649240 m!622627))

(declare-fun m!622629 () Bool)

(assert (=> b!649240 m!622629))

(declare-fun m!622631 () Bool)

(assert (=> b!649240 m!622631))

(declare-fun m!622633 () Bool)

(assert (=> b!649240 m!622633))

(check-sat (not b!649258) (not b!649241) (not b!649259) (not b!649256) (not b!649264) (not b!649246) (not b!649244) (not b!649243) (not b!649262) (not b!649239) (not b!649254) (not start!58892) (not b!649240) (not b!649251) (not b!649253) (not b!649252) (not b!649248) (not b!649242))
(check-sat)
