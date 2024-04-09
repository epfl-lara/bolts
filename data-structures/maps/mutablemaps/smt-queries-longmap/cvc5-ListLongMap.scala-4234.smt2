; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!58356 () Bool)

(assert start!58356)

(declare-fun b!644269 () Bool)

(declare-fun e!369144 () Bool)

(declare-fun e!369140 () Bool)

(assert (=> b!644269 (= e!369144 e!369140)))

(declare-fun res!417517 () Bool)

(assert (=> b!644269 (=> res!417517 e!369140)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!298679 () (_ BitVec 64))

(declare-fun lt!298676 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!38409 0))(
  ( (array!38410 (arr!18414 (Array (_ BitVec 32) (_ BitVec 64))) (size!18778 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38409)

(assert (=> b!644269 (= res!417517 (or (not (= (select (arr!18414 a!2986) j!136) lt!298676)) (not (= (select (arr!18414 a!2986) j!136) lt!298679)) (bvsge j!136 index!984)))))

(declare-fun b!644270 () Bool)

(declare-fun e!369151 () Bool)

(declare-fun e!369139 () Bool)

(assert (=> b!644270 (= e!369151 e!369139)))

(declare-fun res!417509 () Bool)

(assert (=> b!644270 (=> (not res!417509) (not e!369139))))

(declare-datatypes ((SeekEntryResult!6861 0))(
  ( (MissingZero!6861 (index!29775 (_ BitVec 32))) (Found!6861 (index!29776 (_ BitVec 32))) (Intermediate!6861 (undefined!7673 Bool) (index!29777 (_ BitVec 32)) (x!58574 (_ BitVec 32))) (Undefined!6861) (MissingVacant!6861 (index!29778 (_ BitVec 32))) )
))
(declare-fun lt!298677 () SeekEntryResult!6861)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!644270 (= res!417509 (or (= lt!298677 (MissingZero!6861 i!1108)) (= lt!298677 (MissingVacant!6861 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38409 (_ BitVec 32)) SeekEntryResult!6861)

(assert (=> b!644270 (= lt!298677 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun lt!298673 () array!38409)

(declare-fun e!369142 () Bool)

(declare-fun b!644271 () Bool)

(declare-fun arrayContainsKey!0 (array!38409 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!644271 (= e!369142 (arrayContainsKey!0 lt!298673 (select (arr!18414 a!2986) j!136) index!984))))

(declare-fun b!644272 () Bool)

(declare-fun e!369141 () Bool)

(assert (=> b!644272 (= e!369141 (or (bvslt (bvadd #b00000000000000000000000000000001 index!984) #b00000000000000000000000000000000) (bvslt (size!18778 a!2986) #b01111111111111111111111111111111)))))

(assert (=> b!644272 e!369142))

(declare-fun res!417510 () Bool)

(assert (=> b!644272 (=> (not res!417510) (not e!369142))))

(assert (=> b!644272 (= res!417510 (arrayContainsKey!0 lt!298673 (select (arr!18414 a!2986) j!136) j!136))))

(declare-fun b!644273 () Bool)

(declare-fun e!369138 () Bool)

(declare-fun e!369150 () Bool)

(assert (=> b!644273 (= e!369138 (not e!369150))))

(declare-fun res!417505 () Bool)

(assert (=> b!644273 (=> res!417505 e!369150)))

(declare-fun lt!298681 () SeekEntryResult!6861)

(assert (=> b!644273 (= res!417505 (not (= lt!298681 (Found!6861 index!984))))))

(declare-datatypes ((Unit!21838 0))(
  ( (Unit!21839) )
))
(declare-fun lt!298683 () Unit!21838)

(declare-fun e!369137 () Unit!21838)

(assert (=> b!644273 (= lt!298683 e!369137)))

(declare-fun c!73750 () Bool)

(assert (=> b!644273 (= c!73750 (= lt!298681 Undefined!6861))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38409 (_ BitVec 32)) SeekEntryResult!6861)

(assert (=> b!644273 (= lt!298681 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!298676 lt!298673 mask!3053))))

(declare-fun e!369146 () Bool)

(assert (=> b!644273 e!369146))

(declare-fun res!417521 () Bool)

(assert (=> b!644273 (=> (not res!417521) (not e!369146))))

(declare-fun lt!298682 () (_ BitVec 32))

(declare-fun lt!298675 () SeekEntryResult!6861)

(assert (=> b!644273 (= res!417521 (= lt!298675 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!298682 vacantSpotIndex!68 lt!298676 lt!298673 mask!3053)))))

(assert (=> b!644273 (= lt!298675 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!298682 vacantSpotIndex!68 (select (arr!18414 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!644273 (= lt!298676 (select (store (arr!18414 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!298686 () Unit!21838)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38409 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21838)

(assert (=> b!644273 (= lt!298686 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!298682 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!644273 (= lt!298682 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!644274 () Bool)

(declare-fun res!417516 () Bool)

(assert (=> b!644274 (=> (not res!417516) (not e!369139))))

(assert (=> b!644274 (= res!417516 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18414 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!644275 () Bool)

(declare-fun lt!298684 () SeekEntryResult!6861)

(assert (=> b!644275 (= e!369146 (= lt!298684 lt!298675))))

(declare-fun b!644276 () Bool)

(declare-fun e!369145 () Bool)

(assert (=> b!644276 (= e!369140 e!369145)))

(declare-fun res!417519 () Bool)

(assert (=> b!644276 (=> (not res!417519) (not e!369145))))

(assert (=> b!644276 (= res!417519 (arrayContainsKey!0 lt!298673 (select (arr!18414 a!2986) j!136) j!136))))

(declare-fun b!644277 () Bool)

(declare-fun Unit!21840 () Unit!21838)

(assert (=> b!644277 (= e!369137 Unit!21840)))

(declare-fun b!644278 () Bool)

(declare-fun res!417513 () Bool)

(assert (=> b!644278 (=> (not res!417513) (not e!369139))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38409 (_ BitVec 32)) Bool)

(assert (=> b!644278 (= res!417513 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!644279 () Bool)

(declare-fun e!369147 () Bool)

(assert (=> b!644279 (= e!369147 e!369141)))

(declare-fun res!417520 () Bool)

(assert (=> b!644279 (=> res!417520 e!369141)))

(assert (=> b!644279 (= res!417520 (bvsge index!984 j!136))))

(declare-fun lt!298678 () Unit!21838)

(declare-fun e!369148 () Unit!21838)

(assert (=> b!644279 (= lt!298678 e!369148)))

(declare-fun c!73751 () Bool)

(assert (=> b!644279 (= c!73751 (bvslt j!136 index!984))))

(declare-fun b!644280 () Bool)

(declare-fun res!417506 () Bool)

(assert (=> b!644280 (=> (not res!417506) (not e!369151))))

(assert (=> b!644280 (= res!417506 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!644281 () Bool)

(declare-fun res!417515 () Bool)

(assert (=> b!644281 (=> (not res!417515) (not e!369139))))

(declare-datatypes ((List!12508 0))(
  ( (Nil!12505) (Cons!12504 (h!13549 (_ BitVec 64)) (t!18744 List!12508)) )
))
(declare-fun arrayNoDuplicates!0 (array!38409 (_ BitVec 32) List!12508) Bool)

(assert (=> b!644281 (= res!417515 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12505))))

(declare-fun b!644282 () Bool)

(declare-fun Unit!21841 () Unit!21838)

(assert (=> b!644282 (= e!369137 Unit!21841)))

(assert (=> b!644282 false))

(declare-fun b!644283 () Bool)

(declare-fun Unit!21842 () Unit!21838)

(assert (=> b!644283 (= e!369148 Unit!21842)))

(declare-fun lt!298685 () Unit!21838)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38409 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21838)

(assert (=> b!644283 (= lt!298685 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!298673 (select (arr!18414 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!644283 (arrayContainsKey!0 lt!298673 (select (arr!18414 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!298674 () Unit!21838)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38409 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12508) Unit!21838)

(assert (=> b!644283 (= lt!298674 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12505))))

(assert (=> b!644283 (arrayNoDuplicates!0 lt!298673 #b00000000000000000000000000000000 Nil!12505)))

(declare-fun lt!298680 () Unit!21838)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38409 (_ BitVec 32) (_ BitVec 32)) Unit!21838)

(assert (=> b!644283 (= lt!298680 (lemmaNoDuplicateFromThenFromBigger!0 lt!298673 #b00000000000000000000000000000000 j!136))))

(assert (=> b!644283 (arrayNoDuplicates!0 lt!298673 j!136 Nil!12505)))

(declare-fun lt!298672 () Unit!21838)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38409 (_ BitVec 64) (_ BitVec 32) List!12508) Unit!21838)

(assert (=> b!644283 (= lt!298672 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!298673 (select (arr!18414 a!2986) j!136) j!136 Nil!12505))))

(assert (=> b!644283 false))

(declare-fun res!417504 () Bool)

(assert (=> start!58356 (=> (not res!417504) (not e!369151))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!58356 (= res!417504 (validMask!0 mask!3053))))

(assert (=> start!58356 e!369151))

(assert (=> start!58356 true))

(declare-fun array_inv!14188 (array!38409) Bool)

(assert (=> start!58356 (array_inv!14188 a!2986)))

(declare-fun b!644284 () Bool)

(declare-fun Unit!21843 () Unit!21838)

(assert (=> b!644284 (= e!369148 Unit!21843)))

(declare-fun b!644285 () Bool)

(declare-fun res!417508 () Bool)

(assert (=> b!644285 (=> (not res!417508) (not e!369151))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!644285 (= res!417508 (validKeyInArray!0 (select (arr!18414 a!2986) j!136)))))

(declare-fun b!644286 () Bool)

(declare-fun res!417511 () Bool)

(assert (=> b!644286 (=> (not res!417511) (not e!369151))))

(assert (=> b!644286 (= res!417511 (and (= (size!18778 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18778 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18778 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!644287 () Bool)

(assert (=> b!644287 (= e!369150 e!369147)))

(declare-fun res!417503 () Bool)

(assert (=> b!644287 (=> res!417503 e!369147)))

(assert (=> b!644287 (= res!417503 (or (not (= (select (arr!18414 a!2986) j!136) lt!298676)) (not (= (select (arr!18414 a!2986) j!136) lt!298679))))))

(assert (=> b!644287 e!369144))

(declare-fun res!417512 () Bool)

(assert (=> b!644287 (=> (not res!417512) (not e!369144))))

(assert (=> b!644287 (= res!417512 (= lt!298679 (select (arr!18414 a!2986) j!136)))))

(assert (=> b!644287 (= lt!298679 (select (store (arr!18414 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!644288 () Bool)

(declare-fun e!369143 () Bool)

(assert (=> b!644288 (= e!369139 e!369143)))

(declare-fun res!417514 () Bool)

(assert (=> b!644288 (=> (not res!417514) (not e!369143))))

(assert (=> b!644288 (= res!417514 (= (select (store (arr!18414 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!644288 (= lt!298673 (array!38410 (store (arr!18414 a!2986) i!1108 k!1786) (size!18778 a!2986)))))

(declare-fun b!644289 () Bool)

(assert (=> b!644289 (= e!369145 (arrayContainsKey!0 lt!298673 (select (arr!18414 a!2986) j!136) index!984))))

(declare-fun b!644290 () Bool)

(declare-fun res!417518 () Bool)

(assert (=> b!644290 (=> (not res!417518) (not e!369151))))

(assert (=> b!644290 (= res!417518 (validKeyInArray!0 k!1786))))

(declare-fun b!644291 () Bool)

(assert (=> b!644291 (= e!369143 e!369138)))

(declare-fun res!417507 () Bool)

(assert (=> b!644291 (=> (not res!417507) (not e!369138))))

(assert (=> b!644291 (= res!417507 (and (= lt!298684 (Found!6861 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18414 a!2986) index!984) (select (arr!18414 a!2986) j!136))) (not (= (select (arr!18414 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!644291 (= lt!298684 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18414 a!2986) j!136) a!2986 mask!3053))))

(assert (= (and start!58356 res!417504) b!644286))

(assert (= (and b!644286 res!417511) b!644285))

(assert (= (and b!644285 res!417508) b!644290))

(assert (= (and b!644290 res!417518) b!644280))

(assert (= (and b!644280 res!417506) b!644270))

(assert (= (and b!644270 res!417509) b!644278))

(assert (= (and b!644278 res!417513) b!644281))

(assert (= (and b!644281 res!417515) b!644274))

(assert (= (and b!644274 res!417516) b!644288))

(assert (= (and b!644288 res!417514) b!644291))

(assert (= (and b!644291 res!417507) b!644273))

(assert (= (and b!644273 res!417521) b!644275))

(assert (= (and b!644273 c!73750) b!644282))

(assert (= (and b!644273 (not c!73750)) b!644277))

(assert (= (and b!644273 (not res!417505)) b!644287))

(assert (= (and b!644287 res!417512) b!644269))

(assert (= (and b!644269 (not res!417517)) b!644276))

(assert (= (and b!644276 res!417519) b!644289))

(assert (= (and b!644287 (not res!417503)) b!644279))

(assert (= (and b!644279 c!73751) b!644283))

(assert (= (and b!644279 (not c!73751)) b!644284))

(assert (= (and b!644279 (not res!417520)) b!644272))

(assert (= (and b!644272 res!417510) b!644271))

(declare-fun m!617943 () Bool)

(assert (=> b!644278 m!617943))

(declare-fun m!617945 () Bool)

(assert (=> b!644274 m!617945))

(declare-fun m!617947 () Bool)

(assert (=> b!644281 m!617947))

(declare-fun m!617949 () Bool)

(assert (=> b!644280 m!617949))

(declare-fun m!617951 () Bool)

(assert (=> b!644271 m!617951))

(assert (=> b!644271 m!617951))

(declare-fun m!617953 () Bool)

(assert (=> b!644271 m!617953))

(declare-fun m!617955 () Bool)

(assert (=> b!644270 m!617955))

(assert (=> b!644285 m!617951))

(assert (=> b!644285 m!617951))

(declare-fun m!617957 () Bool)

(assert (=> b!644285 m!617957))

(declare-fun m!617959 () Bool)

(assert (=> b!644290 m!617959))

(declare-fun m!617961 () Bool)

(assert (=> b!644273 m!617961))

(assert (=> b!644273 m!617951))

(declare-fun m!617963 () Bool)

(assert (=> b!644273 m!617963))

(declare-fun m!617965 () Bool)

(assert (=> b!644273 m!617965))

(assert (=> b!644273 m!617951))

(declare-fun m!617967 () Bool)

(assert (=> b!644273 m!617967))

(declare-fun m!617969 () Bool)

(assert (=> b!644273 m!617969))

(declare-fun m!617971 () Bool)

(assert (=> b!644273 m!617971))

(declare-fun m!617973 () Bool)

(assert (=> b!644273 m!617973))

(assert (=> b!644269 m!617951))

(assert (=> b!644289 m!617951))

(assert (=> b!644289 m!617951))

(assert (=> b!644289 m!617953))

(declare-fun m!617975 () Bool)

(assert (=> start!58356 m!617975))

(declare-fun m!617977 () Bool)

(assert (=> start!58356 m!617977))

(declare-fun m!617979 () Bool)

(assert (=> b!644291 m!617979))

(assert (=> b!644291 m!617951))

(assert (=> b!644291 m!617951))

(declare-fun m!617981 () Bool)

(assert (=> b!644291 m!617981))

(assert (=> b!644272 m!617951))

(assert (=> b!644272 m!617951))

(declare-fun m!617983 () Bool)

(assert (=> b!644272 m!617983))

(assert (=> b!644287 m!617951))

(assert (=> b!644287 m!617963))

(declare-fun m!617985 () Bool)

(assert (=> b!644287 m!617985))

(declare-fun m!617987 () Bool)

(assert (=> b!644283 m!617987))

(declare-fun m!617989 () Bool)

(assert (=> b!644283 m!617989))

(assert (=> b!644283 m!617951))

(declare-fun m!617991 () Bool)

(assert (=> b!644283 m!617991))

(assert (=> b!644283 m!617951))

(declare-fun m!617993 () Bool)

(assert (=> b!644283 m!617993))

(assert (=> b!644283 m!617951))

(declare-fun m!617995 () Bool)

(assert (=> b!644283 m!617995))

(declare-fun m!617997 () Bool)

(assert (=> b!644283 m!617997))

(declare-fun m!617999 () Bool)

(assert (=> b!644283 m!617999))

(assert (=> b!644283 m!617951))

(assert (=> b!644288 m!617963))

(declare-fun m!618001 () Bool)

(assert (=> b!644288 m!618001))

(assert (=> b!644276 m!617951))

(assert (=> b!644276 m!617951))

(assert (=> b!644276 m!617983))

(push 1)

(assert (not b!644270))

(assert (not b!644276))

(assert (not b!644273))

(assert (not b!644289))

(assert (not b!644272))

(assert (not b!644271))

(assert (not b!644285))

(assert (not b!644283))

(assert (not b!644280))

(assert (not b!644281))

(assert (not b!644291))

(assert (not start!58356))

(assert (not b!644290))

(assert (not b!644278))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!644550 () Bool)

(declare-fun e!369330 () SeekEntryResult!6861)

(assert (=> b!644550 (= e!369330 (MissingVacant!6861 vacantSpotIndex!68))))

(declare-fun b!644551 () Bool)

(declare-fun e!369331 () SeekEntryResult!6861)

