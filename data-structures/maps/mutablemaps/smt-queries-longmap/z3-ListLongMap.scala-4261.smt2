; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!59228 () Bool)

(assert start!59228)

(declare-fun b!653017 () Bool)

(declare-fun e!374904 () Bool)

(declare-fun e!374896 () Bool)

(assert (=> b!653017 (= e!374904 e!374896)))

(declare-fun res!423578 () Bool)

(assert (=> b!653017 (=> (not res!423578) (not e!374896))))

(declare-datatypes ((List!12590 0))(
  ( (Nil!12587) (Cons!12586 (h!13631 (_ BitVec 64)) (t!18826 List!12590)) )
))
(declare-fun contains!3184 (List!12590 (_ BitVec 64)) Bool)

(assert (=> b!653017 (= res!423578 (not (contains!3184 Nil!12587 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!653018 () Bool)

(assert (=> b!653018 (= e!374896 (not (contains!3184 Nil!12587 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!653020 () Bool)

(declare-fun res!423587 () Bool)

(declare-fun e!374897 () Bool)

(assert (=> b!653020 (=> (not res!423587) (not e!374897))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!38597 0))(
  ( (array!38598 (arr!18496 (Array (_ BitVec 32) (_ BitVec 64))) (size!18860 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38597)

(assert (=> b!653020 (= res!423587 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18496 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!653021 () Bool)

(declare-fun e!374902 () Bool)

(assert (=> b!653021 (= e!374902 e!374904)))

(declare-fun res!423581 () Bool)

(assert (=> b!653021 (=> res!423581 e!374904)))

(assert (=> b!653021 (= res!423581 (or (bvsge (size!18860 a!2986) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 index!984) (size!18860 a!2986)) (bvsge index!984 (size!18860 a!2986))))))

(declare-fun lt!304030 () array!38597)

(declare-fun arrayNoDuplicates!0 (array!38597 (_ BitVec 32) List!12590) Bool)

(assert (=> b!653021 (arrayNoDuplicates!0 lt!304030 index!984 Nil!12587)))

(declare-datatypes ((Unit!22330 0))(
  ( (Unit!22331) )
))
(declare-fun lt!304026 () Unit!22330)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38597 (_ BitVec 32) (_ BitVec 32)) Unit!22330)

(assert (=> b!653021 (= lt!304026 (lemmaNoDuplicateFromThenFromBigger!0 lt!304030 #b00000000000000000000000000000000 index!984))))

(assert (=> b!653021 (arrayNoDuplicates!0 lt!304030 #b00000000000000000000000000000000 Nil!12587)))

(declare-fun lt!304029 () Unit!22330)

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38597 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12590) Unit!22330)

(assert (=> b!653021 (= lt!304029 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12587))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!38597 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!653021 (arrayContainsKey!0 lt!304030 (select (arr!18496 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!304018 () Unit!22330)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38597 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22330)

(assert (=> b!653021 (= lt!304018 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!304030 (select (arr!18496 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!374901 () Bool)

(assert (=> b!653021 e!374901))

(declare-fun res!423588 () Bool)

(assert (=> b!653021 (=> (not res!423588) (not e!374901))))

(assert (=> b!653021 (= res!423588 (arrayContainsKey!0 lt!304030 (select (arr!18496 a!2986) j!136) j!136))))

(declare-fun b!653022 () Bool)

(declare-fun e!374911 () Unit!22330)

(declare-fun Unit!22332 () Unit!22330)

(assert (=> b!653022 (= e!374911 Unit!22332)))

(declare-fun lt!304015 () Unit!22330)

(assert (=> b!653022 (= lt!304015 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!304030 (select (arr!18496 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!653022 (arrayContainsKey!0 lt!304030 (select (arr!18496 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!304023 () Unit!22330)

(assert (=> b!653022 (= lt!304023 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12587))))

(assert (=> b!653022 (arrayNoDuplicates!0 lt!304030 #b00000000000000000000000000000000 Nil!12587)))

(declare-fun lt!304025 () Unit!22330)

(assert (=> b!653022 (= lt!304025 (lemmaNoDuplicateFromThenFromBigger!0 lt!304030 #b00000000000000000000000000000000 j!136))))

(assert (=> b!653022 (arrayNoDuplicates!0 lt!304030 j!136 Nil!12587)))

(declare-fun lt!304016 () Unit!22330)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38597 (_ BitVec 64) (_ BitVec 32) List!12590) Unit!22330)

(assert (=> b!653022 (= lt!304016 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!304030 (select (arr!18496 a!2986) j!136) j!136 Nil!12587))))

(assert (=> b!653022 false))

(declare-fun b!653023 () Bool)

(declare-fun res!423577 () Bool)

(assert (=> b!653023 (=> (not res!423577) (not e!374897))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38597 (_ BitVec 32)) Bool)

(assert (=> b!653023 (= res!423577 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!653024 () Bool)

(declare-fun e!374898 () Bool)

(declare-datatypes ((SeekEntryResult!6943 0))(
  ( (MissingZero!6943 (index!30127 (_ BitVec 32))) (Found!6943 (index!30128 (_ BitVec 32))) (Intermediate!6943 (undefined!7755 Bool) (index!30129 (_ BitVec 32)) (x!58944 (_ BitVec 32))) (Undefined!6943) (MissingVacant!6943 (index!30130 (_ BitVec 32))) )
))
(declare-fun lt!304031 () SeekEntryResult!6943)

(declare-fun lt!304032 () SeekEntryResult!6943)

(assert (=> b!653024 (= e!374898 (= lt!304031 lt!304032))))

(declare-fun b!653025 () Bool)

(assert (=> b!653025 (= e!374901 (arrayContainsKey!0 lt!304030 (select (arr!18496 a!2986) j!136) index!984))))

(declare-fun b!653026 () Bool)

(declare-fun res!423596 () Bool)

(assert (=> b!653026 (=> res!423596 e!374904)))

(declare-fun noDuplicate!440 (List!12590) Bool)

(assert (=> b!653026 (= res!423596 (not (noDuplicate!440 Nil!12587)))))

(declare-fun b!653027 () Bool)

(declare-fun e!374906 () Unit!22330)

(declare-fun Unit!22333 () Unit!22330)

(assert (=> b!653027 (= e!374906 Unit!22333)))

(assert (=> b!653027 false))

(declare-fun e!374910 () Bool)

(declare-fun b!653028 () Bool)

(assert (=> b!653028 (= e!374910 (arrayContainsKey!0 lt!304030 (select (arr!18496 a!2986) j!136) index!984))))

(declare-fun b!653029 () Bool)

(declare-fun e!374899 () Bool)

(assert (=> b!653029 (= e!374899 e!374902)))

(declare-fun res!423584 () Bool)

(assert (=> b!653029 (=> res!423584 e!374902)))

(assert (=> b!653029 (= res!423584 (bvsge index!984 j!136))))

(declare-fun lt!304028 () Unit!22330)

(assert (=> b!653029 (= lt!304028 e!374911)))

(declare-fun c!75089 () Bool)

(assert (=> b!653029 (= c!75089 (bvslt j!136 index!984))))

(declare-fun b!653030 () Bool)

(declare-fun e!374908 () Bool)

(assert (=> b!653030 (= e!374897 e!374908)))

(declare-fun res!423579 () Bool)

(assert (=> b!653030 (=> (not res!423579) (not e!374908))))

(assert (=> b!653030 (= res!423579 (= (select (store (arr!18496 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!653030 (= lt!304030 (array!38598 (store (arr!18496 a!2986) i!1108 k0!1786) (size!18860 a!2986)))))

(declare-fun res!423585 () Bool)

(declare-fun e!374909 () Bool)

(assert (=> start!59228 (=> (not res!423585) (not e!374909))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!59228 (= res!423585 (validMask!0 mask!3053))))

(assert (=> start!59228 e!374909))

(assert (=> start!59228 true))

(declare-fun array_inv!14270 (array!38597) Bool)

(assert (=> start!59228 (array_inv!14270 a!2986)))

(declare-fun b!653019 () Bool)

(declare-fun e!374903 () Bool)

(declare-fun e!374905 () Bool)

(assert (=> b!653019 (= e!374903 (not e!374905))))

(declare-fun res!423595 () Bool)

(assert (=> b!653019 (=> res!423595 e!374905)))

(declare-fun lt!304022 () SeekEntryResult!6943)

(assert (=> b!653019 (= res!423595 (not (= lt!304022 (Found!6943 index!984))))))

(declare-fun lt!304017 () Unit!22330)

(assert (=> b!653019 (= lt!304017 e!374906)))

(declare-fun c!75088 () Bool)

(assert (=> b!653019 (= c!75088 (= lt!304022 Undefined!6943))))

(declare-fun lt!304024 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38597 (_ BitVec 32)) SeekEntryResult!6943)

(assert (=> b!653019 (= lt!304022 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!304024 lt!304030 mask!3053))))

(assert (=> b!653019 e!374898))

(declare-fun res!423582 () Bool)

(assert (=> b!653019 (=> (not res!423582) (not e!374898))))

(declare-fun lt!304020 () (_ BitVec 32))

(assert (=> b!653019 (= res!423582 (= lt!304032 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!304020 vacantSpotIndex!68 lt!304024 lt!304030 mask!3053)))))

(assert (=> b!653019 (= lt!304032 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!304020 vacantSpotIndex!68 (select (arr!18496 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!653019 (= lt!304024 (select (store (arr!18496 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!304021 () Unit!22330)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38597 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22330)

(assert (=> b!653019 (= lt!304021 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!304020 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!653019 (= lt!304020 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!653031 () Bool)

(declare-fun e!374895 () Bool)

(declare-fun e!374907 () Bool)

(assert (=> b!653031 (= e!374895 e!374907)))

(declare-fun res!423576 () Bool)

(assert (=> b!653031 (=> res!423576 e!374907)))

(declare-fun lt!304027 () (_ BitVec 64))

(assert (=> b!653031 (= res!423576 (or (not (= (select (arr!18496 a!2986) j!136) lt!304024)) (not (= (select (arr!18496 a!2986) j!136) lt!304027)) (bvsge j!136 index!984)))))

(declare-fun b!653032 () Bool)

(declare-fun res!423593 () Bool)

(assert (=> b!653032 (=> (not res!423593) (not e!374897))))

(assert (=> b!653032 (= res!423593 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12587))))

(declare-fun b!653033 () Bool)

(declare-fun Unit!22334 () Unit!22330)

(assert (=> b!653033 (= e!374911 Unit!22334)))

(declare-fun b!653034 () Bool)

(declare-fun res!423583 () Bool)

(assert (=> b!653034 (=> (not res!423583) (not e!374909))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!653034 (= res!423583 (validKeyInArray!0 (select (arr!18496 a!2986) j!136)))))

(declare-fun b!653035 () Bool)

(declare-fun res!423591 () Bool)

(assert (=> b!653035 (=> (not res!423591) (not e!374909))))

(assert (=> b!653035 (= res!423591 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!653036 () Bool)

(assert (=> b!653036 (= e!374908 e!374903)))

(declare-fun res!423590 () Bool)

(assert (=> b!653036 (=> (not res!423590) (not e!374903))))

(assert (=> b!653036 (= res!423590 (and (= lt!304031 (Found!6943 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18496 a!2986) index!984) (select (arr!18496 a!2986) j!136))) (not (= (select (arr!18496 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!653036 (= lt!304031 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18496 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!653037 () Bool)

(assert (=> b!653037 (= e!374909 e!374897)))

(declare-fun res!423589 () Bool)

(assert (=> b!653037 (=> (not res!423589) (not e!374897))))

(declare-fun lt!304019 () SeekEntryResult!6943)

(assert (=> b!653037 (= res!423589 (or (= lt!304019 (MissingZero!6943 i!1108)) (= lt!304019 (MissingVacant!6943 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38597 (_ BitVec 32)) SeekEntryResult!6943)

(assert (=> b!653037 (= lt!304019 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!653038 () Bool)

(assert (=> b!653038 (= e!374905 e!374899)))

(declare-fun res!423575 () Bool)

(assert (=> b!653038 (=> res!423575 e!374899)))

(assert (=> b!653038 (= res!423575 (or (not (= (select (arr!18496 a!2986) j!136) lt!304024)) (not (= (select (arr!18496 a!2986) j!136) lt!304027))))))

(assert (=> b!653038 e!374895))

(declare-fun res!423580 () Bool)

(assert (=> b!653038 (=> (not res!423580) (not e!374895))))

(assert (=> b!653038 (= res!423580 (= lt!304027 (select (arr!18496 a!2986) j!136)))))

(assert (=> b!653038 (= lt!304027 (select (store (arr!18496 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!653039 () Bool)

(declare-fun res!423592 () Bool)

(assert (=> b!653039 (=> (not res!423592) (not e!374909))))

(assert (=> b!653039 (= res!423592 (and (= (size!18860 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18860 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18860 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!653040 () Bool)

(assert (=> b!653040 (= e!374907 e!374910)))

(declare-fun res!423594 () Bool)

(assert (=> b!653040 (=> (not res!423594) (not e!374910))))

(assert (=> b!653040 (= res!423594 (arrayContainsKey!0 lt!304030 (select (arr!18496 a!2986) j!136) j!136))))

(declare-fun b!653041 () Bool)

(declare-fun res!423586 () Bool)

(assert (=> b!653041 (=> (not res!423586) (not e!374909))))

(assert (=> b!653041 (= res!423586 (validKeyInArray!0 k0!1786))))

(declare-fun b!653042 () Bool)

(declare-fun Unit!22335 () Unit!22330)

(assert (=> b!653042 (= e!374906 Unit!22335)))

(assert (= (and start!59228 res!423585) b!653039))

(assert (= (and b!653039 res!423592) b!653034))

(assert (= (and b!653034 res!423583) b!653041))

(assert (= (and b!653041 res!423586) b!653035))

(assert (= (and b!653035 res!423591) b!653037))

(assert (= (and b!653037 res!423589) b!653023))

(assert (= (and b!653023 res!423577) b!653032))

(assert (= (and b!653032 res!423593) b!653020))

(assert (= (and b!653020 res!423587) b!653030))

(assert (= (and b!653030 res!423579) b!653036))

(assert (= (and b!653036 res!423590) b!653019))

(assert (= (and b!653019 res!423582) b!653024))

(assert (= (and b!653019 c!75088) b!653027))

(assert (= (and b!653019 (not c!75088)) b!653042))

(assert (= (and b!653019 (not res!423595)) b!653038))

(assert (= (and b!653038 res!423580) b!653031))

(assert (= (and b!653031 (not res!423576)) b!653040))

(assert (= (and b!653040 res!423594) b!653028))

(assert (= (and b!653038 (not res!423575)) b!653029))

(assert (= (and b!653029 c!75089) b!653022))

(assert (= (and b!653029 (not c!75089)) b!653033))

(assert (= (and b!653029 (not res!423584)) b!653021))

(assert (= (and b!653021 res!423588) b!653025))

(assert (= (and b!653021 (not res!423581)) b!653026))

(assert (= (and b!653026 (not res!423596)) b!653017))

(assert (= (and b!653017 res!423578) b!653018))

(declare-fun m!626213 () Bool)

(assert (=> b!653040 m!626213))

(assert (=> b!653040 m!626213))

(declare-fun m!626215 () Bool)

(assert (=> b!653040 m!626215))

(assert (=> b!653022 m!626213))

(declare-fun m!626217 () Bool)

(assert (=> b!653022 m!626217))

(assert (=> b!653022 m!626213))

(declare-fun m!626219 () Bool)

(assert (=> b!653022 m!626219))

(declare-fun m!626221 () Bool)

(assert (=> b!653022 m!626221))

(declare-fun m!626223 () Bool)

(assert (=> b!653022 m!626223))

(assert (=> b!653022 m!626213))

(declare-fun m!626225 () Bool)

(assert (=> b!653022 m!626225))

(assert (=> b!653022 m!626213))

(declare-fun m!626227 () Bool)

(assert (=> b!653022 m!626227))

(declare-fun m!626229 () Bool)

(assert (=> b!653022 m!626229))

(declare-fun m!626231 () Bool)

(assert (=> b!653023 m!626231))

(declare-fun m!626233 () Bool)

(assert (=> b!653030 m!626233))

(declare-fun m!626235 () Bool)

(assert (=> b!653030 m!626235))

(declare-fun m!626237 () Bool)

(assert (=> b!653026 m!626237))

(declare-fun m!626239 () Bool)

(assert (=> b!653017 m!626239))

(assert (=> b!653028 m!626213))

(assert (=> b!653028 m!626213))

(declare-fun m!626241 () Bool)

(assert (=> b!653028 m!626241))

(declare-fun m!626243 () Bool)

(assert (=> b!653036 m!626243))

(assert (=> b!653036 m!626213))

(assert (=> b!653036 m!626213))

(declare-fun m!626245 () Bool)

(assert (=> b!653036 m!626245))

(assert (=> b!653031 m!626213))

(assert (=> b!653034 m!626213))

(assert (=> b!653034 m!626213))

(declare-fun m!626247 () Bool)

(assert (=> b!653034 m!626247))

(declare-fun m!626249 () Bool)

(assert (=> b!653035 m!626249))

(assert (=> b!653038 m!626213))

(assert (=> b!653038 m!626233))

(declare-fun m!626251 () Bool)

(assert (=> b!653038 m!626251))

(assert (=> b!653025 m!626213))

(assert (=> b!653025 m!626213))

(assert (=> b!653025 m!626241))

(declare-fun m!626253 () Bool)

(assert (=> b!653041 m!626253))

(declare-fun m!626255 () Bool)

(assert (=> b!653037 m!626255))

(assert (=> b!653021 m!626213))

(declare-fun m!626257 () Bool)

(assert (=> b!653021 m!626257))

(assert (=> b!653021 m!626213))

(assert (=> b!653021 m!626213))

(declare-fun m!626259 () Bool)

(assert (=> b!653021 m!626259))

(declare-fun m!626261 () Bool)

(assert (=> b!653021 m!626261))

(assert (=> b!653021 m!626213))

(assert (=> b!653021 m!626215))

(declare-fun m!626263 () Bool)

(assert (=> b!653021 m!626263))

(assert (=> b!653021 m!626223))

(assert (=> b!653021 m!626229))

(declare-fun m!626265 () Bool)

(assert (=> b!653032 m!626265))

(declare-fun m!626267 () Bool)

(assert (=> b!653018 m!626267))

(declare-fun m!626269 () Bool)

(assert (=> b!653020 m!626269))

(declare-fun m!626271 () Bool)

(assert (=> b!653019 m!626271))

(assert (=> b!653019 m!626213))

(declare-fun m!626273 () Bool)

(assert (=> b!653019 m!626273))

(declare-fun m!626275 () Bool)

(assert (=> b!653019 m!626275))

(declare-fun m!626277 () Bool)

(assert (=> b!653019 m!626277))

(declare-fun m!626279 () Bool)

(assert (=> b!653019 m!626279))

(assert (=> b!653019 m!626213))

(declare-fun m!626281 () Bool)

(assert (=> b!653019 m!626281))

(assert (=> b!653019 m!626233))

(declare-fun m!626283 () Bool)

(assert (=> start!59228 m!626283))

(declare-fun m!626285 () Bool)

(assert (=> start!59228 m!626285))

(check-sat (not b!653041) (not start!59228) (not b!653032) (not b!653022) (not b!653040) (not b!653019) (not b!653034) (not b!653017) (not b!653023) (not b!653028) (not b!653018) (not b!653025) (not b!653026) (not b!653037) (not b!653035) (not b!653021) (not b!653036))
(check-sat)
(get-model)

(declare-fun d!92267 () Bool)

(declare-fun lt!304089 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!253 (List!12590) (InoxSet (_ BitVec 64)))

(assert (=> d!92267 (= lt!304089 (select (content!253 Nil!12587) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!374967 () Bool)

(assert (=> d!92267 (= lt!304089 e!374967)))

(declare-fun res!423667 () Bool)

(assert (=> d!92267 (=> (not res!423667) (not e!374967))))

(get-info :version)

(assert (=> d!92267 (= res!423667 ((_ is Cons!12586) Nil!12587))))

(assert (=> d!92267 (= (contains!3184 Nil!12587 #b0000000000000000000000000000000000000000000000000000000000000000) lt!304089)))

(declare-fun b!653125 () Bool)

(declare-fun e!374968 () Bool)

(assert (=> b!653125 (= e!374967 e!374968)))

(declare-fun res!423668 () Bool)

(assert (=> b!653125 (=> res!423668 e!374968)))

(assert (=> b!653125 (= res!423668 (= (h!13631 Nil!12587) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!653126 () Bool)

(assert (=> b!653126 (= e!374968 (contains!3184 (t!18826 Nil!12587) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!92267 res!423667) b!653125))

(assert (= (and b!653125 (not res!423668)) b!653126))

(declare-fun m!626361 () Bool)

(assert (=> d!92267 m!626361))

(declare-fun m!626363 () Bool)

(assert (=> d!92267 m!626363))

(declare-fun m!626365 () Bool)

(assert (=> b!653126 m!626365))

(assert (=> b!653017 d!92267))

(declare-fun d!92269 () Bool)

(declare-fun lt!304090 () Bool)

(assert (=> d!92269 (= lt!304090 (select (content!253 Nil!12587) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!374969 () Bool)

(assert (=> d!92269 (= lt!304090 e!374969)))

(declare-fun res!423669 () Bool)

(assert (=> d!92269 (=> (not res!423669) (not e!374969))))

(assert (=> d!92269 (= res!423669 ((_ is Cons!12586) Nil!12587))))

(assert (=> d!92269 (= (contains!3184 Nil!12587 #b1000000000000000000000000000000000000000000000000000000000000000) lt!304090)))

(declare-fun b!653127 () Bool)

(declare-fun e!374970 () Bool)

(assert (=> b!653127 (= e!374969 e!374970)))

(declare-fun res!423670 () Bool)

(assert (=> b!653127 (=> res!423670 e!374970)))

(assert (=> b!653127 (= res!423670 (= (h!13631 Nil!12587) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!653128 () Bool)

(assert (=> b!653128 (= e!374970 (contains!3184 (t!18826 Nil!12587) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!92269 res!423669) b!653127))

(assert (= (and b!653127 (not res!423670)) b!653128))

(assert (=> d!92269 m!626361))

(declare-fun m!626367 () Bool)

(assert (=> d!92269 m!626367))

(declare-fun m!626369 () Bool)

(assert (=> b!653128 m!626369))

(assert (=> b!653018 d!92269))

(declare-fun d!92271 () Bool)

(declare-fun res!423675 () Bool)

(declare-fun e!374975 () Bool)

(assert (=> d!92271 (=> res!423675 e!374975)))

(assert (=> d!92271 (= res!423675 (= (select (arr!18496 lt!304030) index!984) (select (arr!18496 a!2986) j!136)))))

(assert (=> d!92271 (= (arrayContainsKey!0 lt!304030 (select (arr!18496 a!2986) j!136) index!984) e!374975)))

(declare-fun b!653133 () Bool)

(declare-fun e!374976 () Bool)

(assert (=> b!653133 (= e!374975 e!374976)))

(declare-fun res!423676 () Bool)

(assert (=> b!653133 (=> (not res!423676) (not e!374976))))

(assert (=> b!653133 (= res!423676 (bvslt (bvadd index!984 #b00000000000000000000000000000001) (size!18860 lt!304030)))))

(declare-fun b!653134 () Bool)

(assert (=> b!653134 (= e!374976 (arrayContainsKey!0 lt!304030 (select (arr!18496 a!2986) j!136) (bvadd index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!92271 (not res!423675)) b!653133))

(assert (= (and b!653133 res!423676) b!653134))

(declare-fun m!626371 () Bool)

(assert (=> d!92271 m!626371))

(assert (=> b!653134 m!626213))

(declare-fun m!626373 () Bool)

(assert (=> b!653134 m!626373))

(assert (=> b!653028 d!92271))

(assert (=> b!653025 d!92271))

(declare-fun d!92273 () Bool)

(declare-fun res!423677 () Bool)

(declare-fun e!374977 () Bool)

(assert (=> d!92273 (=> res!423677 e!374977)))

(assert (=> d!92273 (= res!423677 (= (select (arr!18496 a!2986) #b00000000000000000000000000000000) k0!1786))))

(assert (=> d!92273 (= (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000) e!374977)))

(declare-fun b!653135 () Bool)

(declare-fun e!374978 () Bool)

(assert (=> b!653135 (= e!374977 e!374978)))

(declare-fun res!423678 () Bool)

(assert (=> b!653135 (=> (not res!423678) (not e!374978))))

(assert (=> b!653135 (= res!423678 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!18860 a!2986)))))

(declare-fun b!653136 () Bool)

(assert (=> b!653136 (= e!374978 (arrayContainsKey!0 a!2986 k0!1786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!92273 (not res!423677)) b!653135))

(assert (= (and b!653135 res!423678) b!653136))

(declare-fun m!626375 () Bool)

(assert (=> d!92273 m!626375))

(declare-fun m!626377 () Bool)

(assert (=> b!653136 m!626377))

(assert (=> b!653035 d!92273))

(declare-fun b!653149 () Bool)

(declare-fun c!75102 () Bool)

(declare-fun lt!304097 () (_ BitVec 64))

(assert (=> b!653149 (= c!75102 (= lt!304097 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!374985 () SeekEntryResult!6943)

(declare-fun e!374986 () SeekEntryResult!6943)

(assert (=> b!653149 (= e!374985 e!374986)))

(declare-fun lt!304098 () SeekEntryResult!6943)

(declare-fun b!653150 () Bool)

(assert (=> b!653150 (= e!374986 (seekKeyOrZeroReturnVacant!0 (x!58944 lt!304098) (index!30129 lt!304098) (index!30129 lt!304098) k0!1786 a!2986 mask!3053))))

(declare-fun b!653151 () Bool)

(assert (=> b!653151 (= e!374986 (MissingZero!6943 (index!30129 lt!304098)))))

(declare-fun b!653152 () Bool)

(declare-fun e!374987 () SeekEntryResult!6943)

(assert (=> b!653152 (= e!374987 e!374985)))

(assert (=> b!653152 (= lt!304097 (select (arr!18496 a!2986) (index!30129 lt!304098)))))

(declare-fun c!75104 () Bool)

(assert (=> b!653152 (= c!75104 (= lt!304097 k0!1786))))

(declare-fun b!653153 () Bool)

(assert (=> b!653153 (= e!374987 Undefined!6943)))

(declare-fun d!92275 () Bool)

(declare-fun lt!304099 () SeekEntryResult!6943)

(assert (=> d!92275 (and (or ((_ is Undefined!6943) lt!304099) (not ((_ is Found!6943) lt!304099)) (and (bvsge (index!30128 lt!304099) #b00000000000000000000000000000000) (bvslt (index!30128 lt!304099) (size!18860 a!2986)))) (or ((_ is Undefined!6943) lt!304099) ((_ is Found!6943) lt!304099) (not ((_ is MissingZero!6943) lt!304099)) (and (bvsge (index!30127 lt!304099) #b00000000000000000000000000000000) (bvslt (index!30127 lt!304099) (size!18860 a!2986)))) (or ((_ is Undefined!6943) lt!304099) ((_ is Found!6943) lt!304099) ((_ is MissingZero!6943) lt!304099) (not ((_ is MissingVacant!6943) lt!304099)) (and (bvsge (index!30130 lt!304099) #b00000000000000000000000000000000) (bvslt (index!30130 lt!304099) (size!18860 a!2986)))) (or ((_ is Undefined!6943) lt!304099) (ite ((_ is Found!6943) lt!304099) (= (select (arr!18496 a!2986) (index!30128 lt!304099)) k0!1786) (ite ((_ is MissingZero!6943) lt!304099) (= (select (arr!18496 a!2986) (index!30127 lt!304099)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!6943) lt!304099) (= (select (arr!18496 a!2986) (index!30130 lt!304099)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!92275 (= lt!304099 e!374987)))

(declare-fun c!75103 () Bool)

(assert (=> d!92275 (= c!75103 (and ((_ is Intermediate!6943) lt!304098) (undefined!7755 lt!304098)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38597 (_ BitVec 32)) SeekEntryResult!6943)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!92275 (= lt!304098 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1786 mask!3053) k0!1786 a!2986 mask!3053))))

(assert (=> d!92275 (validMask!0 mask!3053)))

(assert (=> d!92275 (= (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053) lt!304099)))

(declare-fun b!653154 () Bool)

(assert (=> b!653154 (= e!374985 (Found!6943 (index!30129 lt!304098)))))

(assert (= (and d!92275 c!75103) b!653153))

(assert (= (and d!92275 (not c!75103)) b!653152))

(assert (= (and b!653152 c!75104) b!653154))

(assert (= (and b!653152 (not c!75104)) b!653149))

(assert (= (and b!653149 c!75102) b!653151))

(assert (= (and b!653149 (not c!75102)) b!653150))

(declare-fun m!626379 () Bool)

(assert (=> b!653150 m!626379))

(declare-fun m!626381 () Bool)

(assert (=> b!653152 m!626381))

(declare-fun m!626383 () Bool)

(assert (=> d!92275 m!626383))

(assert (=> d!92275 m!626283))

(declare-fun m!626385 () Bool)

(assert (=> d!92275 m!626385))

(declare-fun m!626387 () Bool)

(assert (=> d!92275 m!626387))

(assert (=> d!92275 m!626383))

(declare-fun m!626389 () Bool)

(assert (=> d!92275 m!626389))

(declare-fun m!626391 () Bool)

(assert (=> d!92275 m!626391))

(assert (=> b!653037 d!92275))

(declare-fun d!92277 () Bool)

(declare-fun res!423683 () Bool)

(declare-fun e!374992 () Bool)

(assert (=> d!92277 (=> res!423683 e!374992)))

(assert (=> d!92277 (= res!423683 ((_ is Nil!12587) Nil!12587))))

(assert (=> d!92277 (= (noDuplicate!440 Nil!12587) e!374992)))

(declare-fun b!653159 () Bool)

(declare-fun e!374993 () Bool)

(assert (=> b!653159 (= e!374992 e!374993)))

(declare-fun res!423684 () Bool)

(assert (=> b!653159 (=> (not res!423684) (not e!374993))))

(assert (=> b!653159 (= res!423684 (not (contains!3184 (t!18826 Nil!12587) (h!13631 Nil!12587))))))

(declare-fun b!653160 () Bool)

(assert (=> b!653160 (= e!374993 (noDuplicate!440 (t!18826 Nil!12587)))))

(assert (= (and d!92277 (not res!423683)) b!653159))

(assert (= (and b!653159 res!423684) b!653160))

(declare-fun m!626393 () Bool)

(assert (=> b!653159 m!626393))

(declare-fun m!626395 () Bool)

(assert (=> b!653160 m!626395))

(assert (=> b!653026 d!92277))

(declare-fun b!653191 () Bool)

(declare-fun e!375019 () SeekEntryResult!6943)

(declare-fun e!375018 () SeekEntryResult!6943)

(assert (=> b!653191 (= e!375019 e!375018)))

(declare-fun lt!304107 () (_ BitVec 64))

(declare-fun c!75112 () Bool)

(assert (=> b!653191 (= c!75112 (= lt!304107 (select (arr!18496 a!2986) j!136)))))

(declare-fun b!653192 () Bool)

(declare-fun e!375020 () SeekEntryResult!6943)

(assert (=> b!653192 (= e!375020 (MissingVacant!6943 vacantSpotIndex!68))))

(declare-fun b!653193 () Bool)

(assert (=> b!653193 (= e!375018 (Found!6943 index!984))))

(declare-fun b!653194 () Bool)

(assert (=> b!653194 (= e!375020 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 (select (arr!18496 a!2986) j!136) a!2986 mask!3053))))

(declare-fun d!92281 () Bool)

(declare-fun lt!304108 () SeekEntryResult!6943)

(assert (=> d!92281 (and (or ((_ is Undefined!6943) lt!304108) (not ((_ is Found!6943) lt!304108)) (and (bvsge (index!30128 lt!304108) #b00000000000000000000000000000000) (bvslt (index!30128 lt!304108) (size!18860 a!2986)))) (or ((_ is Undefined!6943) lt!304108) ((_ is Found!6943) lt!304108) (not ((_ is MissingVacant!6943) lt!304108)) (not (= (index!30130 lt!304108) vacantSpotIndex!68)) (and (bvsge (index!30130 lt!304108) #b00000000000000000000000000000000) (bvslt (index!30130 lt!304108) (size!18860 a!2986)))) (or ((_ is Undefined!6943) lt!304108) (ite ((_ is Found!6943) lt!304108) (= (select (arr!18496 a!2986) (index!30128 lt!304108)) (select (arr!18496 a!2986) j!136)) (and ((_ is MissingVacant!6943) lt!304108) (= (index!30130 lt!304108) vacantSpotIndex!68) (= (select (arr!18496 a!2986) (index!30130 lt!304108)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!92281 (= lt!304108 e!375019)))

(declare-fun c!75111 () Bool)

(assert (=> d!92281 (= c!75111 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!92281 (= lt!304107 (select (arr!18496 a!2986) index!984))))

(assert (=> d!92281 (validMask!0 mask!3053)))

(assert (=> d!92281 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18496 a!2986) j!136) a!2986 mask!3053) lt!304108)))

(declare-fun b!653195 () Bool)

(assert (=> b!653195 (= e!375019 Undefined!6943)))

(declare-fun b!653196 () Bool)

(declare-fun c!75113 () Bool)

(assert (=> b!653196 (= c!75113 (= lt!304107 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!653196 (= e!375018 e!375020)))

(assert (= (and d!92281 c!75111) b!653195))

(assert (= (and d!92281 (not c!75111)) b!653191))

(assert (= (and b!653191 c!75112) b!653193))

(assert (= (and b!653191 (not c!75112)) b!653196))

(assert (= (and b!653196 c!75113) b!653192))

(assert (= (and b!653196 (not c!75113)) b!653194))

(assert (=> b!653194 m!626271))

(assert (=> b!653194 m!626271))

(assert (=> b!653194 m!626213))

(declare-fun m!626411 () Bool)

(assert (=> b!653194 m!626411))

(declare-fun m!626413 () Bool)

(assert (=> d!92281 m!626413))

(declare-fun m!626415 () Bool)

(assert (=> d!92281 m!626415))

(assert (=> d!92281 m!626243))

(assert (=> d!92281 m!626283))

(assert (=> b!653036 d!92281))

(declare-fun b!653217 () Bool)

(declare-fun e!375039 () Bool)

(assert (=> b!653217 (= e!375039 (contains!3184 Nil!12587 (select (arr!18496 lt!304030) #b00000000000000000000000000000000)))))

(declare-fun b!653218 () Bool)

(declare-fun e!375040 () Bool)

(declare-fun e!375037 () Bool)

(assert (=> b!653218 (= e!375040 e!375037)))

(declare-fun c!75118 () Bool)

(assert (=> b!653218 (= c!75118 (validKeyInArray!0 (select (arr!18496 lt!304030) #b00000000000000000000000000000000)))))

(declare-fun d!92289 () Bool)

(declare-fun res!423715 () Bool)

(declare-fun e!375038 () Bool)

(assert (=> d!92289 (=> res!423715 e!375038)))

(assert (=> d!92289 (= res!423715 (bvsge #b00000000000000000000000000000000 (size!18860 lt!304030)))))

(assert (=> d!92289 (= (arrayNoDuplicates!0 lt!304030 #b00000000000000000000000000000000 Nil!12587) e!375038)))

(declare-fun bm!33805 () Bool)

(declare-fun call!33808 () Bool)

(assert (=> bm!33805 (= call!33808 (arrayNoDuplicates!0 lt!304030 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!75118 (Cons!12586 (select (arr!18496 lt!304030) #b00000000000000000000000000000000) Nil!12587) Nil!12587)))))

(declare-fun b!653219 () Bool)

(assert (=> b!653219 (= e!375038 e!375040)))

(declare-fun res!423716 () Bool)

(assert (=> b!653219 (=> (not res!423716) (not e!375040))))

(assert (=> b!653219 (= res!423716 (not e!375039))))

(declare-fun res!423717 () Bool)

(assert (=> b!653219 (=> (not res!423717) (not e!375039))))

(assert (=> b!653219 (= res!423717 (validKeyInArray!0 (select (arr!18496 lt!304030) #b00000000000000000000000000000000)))))

(declare-fun b!653220 () Bool)

(assert (=> b!653220 (= e!375037 call!33808)))

(declare-fun b!653221 () Bool)

(assert (=> b!653221 (= e!375037 call!33808)))

(assert (= (and d!92289 (not res!423715)) b!653219))

(assert (= (and b!653219 res!423717) b!653217))

(assert (= (and b!653219 res!423716) b!653218))

(assert (= (and b!653218 c!75118) b!653221))

(assert (= (and b!653218 (not c!75118)) b!653220))

(assert (= (or b!653221 b!653220) bm!33805))

(declare-fun m!626417 () Bool)

(assert (=> b!653217 m!626417))

(assert (=> b!653217 m!626417))

(declare-fun m!626419 () Bool)

(assert (=> b!653217 m!626419))

(assert (=> b!653218 m!626417))

(assert (=> b!653218 m!626417))

(declare-fun m!626421 () Bool)

(assert (=> b!653218 m!626421))

(assert (=> bm!33805 m!626417))

(declare-fun m!626423 () Bool)

(assert (=> bm!33805 m!626423))

(assert (=> b!653219 m!626417))

(assert (=> b!653219 m!626417))

(assert (=> b!653219 m!626421))

(assert (=> b!653022 d!92289))

(declare-fun d!92293 () Bool)

(assert (=> d!92293 (arrayNoDuplicates!0 lt!304030 j!136 Nil!12587)))

(declare-fun lt!304111 () Unit!22330)

(declare-fun choose!39 (array!38597 (_ BitVec 32) (_ BitVec 32)) Unit!22330)

(assert (=> d!92293 (= lt!304111 (choose!39 lt!304030 #b00000000000000000000000000000000 j!136))))

(assert (=> d!92293 (bvslt (size!18860 lt!304030) #b01111111111111111111111111111111)))

(assert (=> d!92293 (= (lemmaNoDuplicateFromThenFromBigger!0 lt!304030 #b00000000000000000000000000000000 j!136) lt!304111)))

(declare-fun bs!19469 () Bool)

(assert (= bs!19469 d!92293))

(assert (=> bs!19469 m!626221))

(declare-fun m!626433 () Bool)

(assert (=> bs!19469 m!626433))

(assert (=> b!653022 d!92293))

(declare-fun d!92297 () Bool)

(declare-fun res!423725 () Bool)

(declare-fun e!375049 () Bool)

(assert (=> d!92297 (=> res!423725 e!375049)))

(assert (=> d!92297 (= res!423725 (= (select (arr!18496 lt!304030) (bvadd #b00000000000000000000000000000001 j!136)) (select (arr!18496 a!2986) j!136)))))

(assert (=> d!92297 (= (arrayContainsKey!0 lt!304030 (select (arr!18496 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136)) e!375049)))

(declare-fun b!653231 () Bool)

(declare-fun e!375050 () Bool)

(assert (=> b!653231 (= e!375049 e!375050)))

(declare-fun res!423726 () Bool)

(assert (=> b!653231 (=> (not res!423726) (not e!375050))))

(assert (=> b!653231 (= res!423726 (bvslt (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001) (size!18860 lt!304030)))))

(declare-fun b!653232 () Bool)

(assert (=> b!653232 (= e!375050 (arrayContainsKey!0 lt!304030 (select (arr!18496 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!92297 (not res!423725)) b!653231))

(assert (= (and b!653231 res!423726) b!653232))

(declare-fun m!626435 () Bool)

(assert (=> d!92297 m!626435))

(assert (=> b!653232 m!626213))

(declare-fun m!626437 () Bool)

(assert (=> b!653232 m!626437))

(assert (=> b!653022 d!92297))

(declare-fun b!653233 () Bool)

(declare-fun e!375053 () Bool)

(assert (=> b!653233 (= e!375053 (contains!3184 Nil!12587 (select (arr!18496 lt!304030) j!136)))))

(declare-fun b!653234 () Bool)

(declare-fun e!375054 () Bool)

(declare-fun e!375051 () Bool)

(assert (=> b!653234 (= e!375054 e!375051)))

(declare-fun c!75120 () Bool)

(assert (=> b!653234 (= c!75120 (validKeyInArray!0 (select (arr!18496 lt!304030) j!136)))))

(declare-fun d!92299 () Bool)

(declare-fun res!423727 () Bool)

(declare-fun e!375052 () Bool)

(assert (=> d!92299 (=> res!423727 e!375052)))

(assert (=> d!92299 (= res!423727 (bvsge j!136 (size!18860 lt!304030)))))

(assert (=> d!92299 (= (arrayNoDuplicates!0 lt!304030 j!136 Nil!12587) e!375052)))

(declare-fun bm!33807 () Bool)

(declare-fun call!33810 () Bool)

(assert (=> bm!33807 (= call!33810 (arrayNoDuplicates!0 lt!304030 (bvadd j!136 #b00000000000000000000000000000001) (ite c!75120 (Cons!12586 (select (arr!18496 lt!304030) j!136) Nil!12587) Nil!12587)))))

(declare-fun b!653235 () Bool)

(assert (=> b!653235 (= e!375052 e!375054)))

(declare-fun res!423728 () Bool)

(assert (=> b!653235 (=> (not res!423728) (not e!375054))))

(assert (=> b!653235 (= res!423728 (not e!375053))))

(declare-fun res!423729 () Bool)

(assert (=> b!653235 (=> (not res!423729) (not e!375053))))

(assert (=> b!653235 (= res!423729 (validKeyInArray!0 (select (arr!18496 lt!304030) j!136)))))

(declare-fun b!653236 () Bool)

(assert (=> b!653236 (= e!375051 call!33810)))

(declare-fun b!653237 () Bool)

(assert (=> b!653237 (= e!375051 call!33810)))

(assert (= (and d!92299 (not res!423727)) b!653235))

(assert (= (and b!653235 res!423729) b!653233))

(assert (= (and b!653235 res!423728) b!653234))

(assert (= (and b!653234 c!75120) b!653237))

(assert (= (and b!653234 (not c!75120)) b!653236))

(assert (= (or b!653237 b!653236) bm!33807))

(declare-fun m!626443 () Bool)

(assert (=> b!653233 m!626443))

(assert (=> b!653233 m!626443))

(declare-fun m!626445 () Bool)

(assert (=> b!653233 m!626445))

(assert (=> b!653234 m!626443))

(assert (=> b!653234 m!626443))

(declare-fun m!626447 () Bool)

(assert (=> b!653234 m!626447))

(assert (=> bm!33807 m!626443))

(declare-fun m!626449 () Bool)

(assert (=> bm!33807 m!626449))

(assert (=> b!653235 m!626443))

(assert (=> b!653235 m!626443))

(assert (=> b!653235 m!626447))

(assert (=> b!653022 d!92299))

(declare-fun d!92303 () Bool)

(declare-fun e!375059 () Bool)

(assert (=> d!92303 e!375059))

(declare-fun res!423734 () Bool)

(assert (=> d!92303 (=> (not res!423734) (not e!375059))))

(assert (=> d!92303 (= res!423734 (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18860 a!2986))))))

(declare-fun lt!304120 () Unit!22330)

(declare-fun choose!41 (array!38597 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12590) Unit!22330)

(assert (=> d!92303 (= lt!304120 (choose!41 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12587))))

(assert (=> d!92303 (bvslt (size!18860 a!2986) #b01111111111111111111111111111111)))

(assert (=> d!92303 (= (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12587) lt!304120)))

(declare-fun b!653242 () Bool)

(assert (=> b!653242 (= e!375059 (arrayNoDuplicates!0 (array!38598 (store (arr!18496 a!2986) i!1108 k0!1786) (size!18860 a!2986)) #b00000000000000000000000000000000 Nil!12587))))

(assert (= (and d!92303 res!423734) b!653242))

(declare-fun m!626455 () Bool)

(assert (=> d!92303 m!626455))

(assert (=> b!653242 m!626233))

(declare-fun m!626457 () Bool)

(assert (=> b!653242 m!626457))

(assert (=> b!653022 d!92303))

(declare-fun d!92309 () Bool)

(assert (=> d!92309 (arrayContainsKey!0 lt!304030 (select (arr!18496 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!304123 () Unit!22330)

(declare-fun choose!114 (array!38597 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22330)

(assert (=> d!92309 (= lt!304123 (choose!114 lt!304030 (select (arr!18496 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> d!92309 (bvsge index!984 #b00000000000000000000000000000000)))

(assert (=> d!92309 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!304030 (select (arr!18496 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)) lt!304123)))

(declare-fun bs!19472 () Bool)

(assert (= bs!19472 d!92309))

(assert (=> bs!19472 m!626213))

(assert (=> bs!19472 m!626217))

(assert (=> bs!19472 m!626213))

(declare-fun m!626467 () Bool)

(assert (=> bs!19472 m!626467))

(assert (=> b!653022 d!92309))

(declare-fun d!92313 () Bool)

(assert (=> d!92313 (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18860 lt!304030)) (not (= (select (arr!18496 lt!304030) j!136) (select (arr!18496 a!2986) j!136))))))

(declare-fun lt!304135 () Unit!22330)

(declare-fun choose!21 (array!38597 (_ BitVec 64) (_ BitVec 32) List!12590) Unit!22330)

(assert (=> d!92313 (= lt!304135 (choose!21 lt!304030 (select (arr!18496 a!2986) j!136) j!136 Nil!12587))))

(assert (=> d!92313 (bvslt (size!18860 lt!304030) #b01111111111111111111111111111111)))

(assert (=> d!92313 (= (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!304030 (select (arr!18496 a!2986) j!136) j!136 Nil!12587) lt!304135)))

(declare-fun bs!19473 () Bool)

(assert (= bs!19473 d!92313))

(assert (=> bs!19473 m!626443))

(assert (=> bs!19473 m!626213))

(declare-fun m!626473 () Bool)

(assert (=> bs!19473 m!626473))

(assert (=> b!653022 d!92313))

(declare-fun d!92317 () Bool)

(assert (=> d!92317 (= (validMask!0 mask!3053) (and (or (= mask!3053 #b00000000000000000000000000000111) (= mask!3053 #b00000000000000000000000000001111) (= mask!3053 #b00000000000000000000000000011111) (= mask!3053 #b00000000000000000000000000111111) (= mask!3053 #b00000000000000000000000001111111) (= mask!3053 #b00000000000000000000000011111111) (= mask!3053 #b00000000000000000000000111111111) (= mask!3053 #b00000000000000000000001111111111) (= mask!3053 #b00000000000000000000011111111111) (= mask!3053 #b00000000000000000000111111111111) (= mask!3053 #b00000000000000000001111111111111) (= mask!3053 #b00000000000000000011111111111111) (= mask!3053 #b00000000000000000111111111111111) (= mask!3053 #b00000000000000001111111111111111) (= mask!3053 #b00000000000000011111111111111111) (= mask!3053 #b00000000000000111111111111111111) (= mask!3053 #b00000000000001111111111111111111) (= mask!3053 #b00000000000011111111111111111111) (= mask!3053 #b00000000000111111111111111111111) (= mask!3053 #b00000000001111111111111111111111) (= mask!3053 #b00000000011111111111111111111111) (= mask!3053 #b00000000111111111111111111111111) (= mask!3053 #b00000001111111111111111111111111) (= mask!3053 #b00000011111111111111111111111111) (= mask!3053 #b00000111111111111111111111111111) (= mask!3053 #b00001111111111111111111111111111) (= mask!3053 #b00011111111111111111111111111111) (= mask!3053 #b00111111111111111111111111111111)) (bvsle mask!3053 #b00111111111111111111111111111111)))))

(assert (=> start!59228 d!92317))

(declare-fun d!92335 () Bool)

(assert (=> d!92335 (= (array_inv!14270 a!2986) (bvsge (size!18860 a!2986) #b00000000000000000000000000000000))))

(assert (=> start!59228 d!92335))

(declare-fun b!653291 () Bool)

(declare-fun e!375098 () Bool)

(assert (=> b!653291 (= e!375098 (contains!3184 Nil!12587 (select (arr!18496 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!653292 () Bool)

(declare-fun e!375099 () Bool)

(declare-fun e!375096 () Bool)

(assert (=> b!653292 (= e!375099 e!375096)))

(declare-fun c!75133 () Bool)

(assert (=> b!653292 (= c!75133 (validKeyInArray!0 (select (arr!18496 a!2986) #b00000000000000000000000000000000)))))

(declare-fun d!92337 () Bool)

(declare-fun res!423759 () Bool)

(declare-fun e!375097 () Bool)

(assert (=> d!92337 (=> res!423759 e!375097)))

(assert (=> d!92337 (= res!423759 (bvsge #b00000000000000000000000000000000 (size!18860 a!2986)))))

(assert (=> d!92337 (= (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12587) e!375097)))

(declare-fun bm!33811 () Bool)

(declare-fun call!33814 () Bool)

(assert (=> bm!33811 (= call!33814 (arrayNoDuplicates!0 a!2986 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!75133 (Cons!12586 (select (arr!18496 a!2986) #b00000000000000000000000000000000) Nil!12587) Nil!12587)))))

(declare-fun b!653293 () Bool)

(assert (=> b!653293 (= e!375097 e!375099)))

(declare-fun res!423760 () Bool)

(assert (=> b!653293 (=> (not res!423760) (not e!375099))))

(assert (=> b!653293 (= res!423760 (not e!375098))))

(declare-fun res!423761 () Bool)

(assert (=> b!653293 (=> (not res!423761) (not e!375098))))

(assert (=> b!653293 (= res!423761 (validKeyInArray!0 (select (arr!18496 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!653294 () Bool)

(assert (=> b!653294 (= e!375096 call!33814)))

(declare-fun b!653295 () Bool)

(assert (=> b!653295 (= e!375096 call!33814)))

(assert (= (and d!92337 (not res!423759)) b!653293))

(assert (= (and b!653293 res!423761) b!653291))

(assert (= (and b!653293 res!423760) b!653292))

(assert (= (and b!653292 c!75133) b!653295))

(assert (= (and b!653292 (not c!75133)) b!653294))

(assert (= (or b!653295 b!653294) bm!33811))

(assert (=> b!653291 m!626375))

(assert (=> b!653291 m!626375))

(declare-fun m!626505 () Bool)

(assert (=> b!653291 m!626505))

(assert (=> b!653292 m!626375))

(assert (=> b!653292 m!626375))

(declare-fun m!626507 () Bool)

(assert (=> b!653292 m!626507))

(assert (=> bm!33811 m!626375))

(declare-fun m!626509 () Bool)

(assert (=> bm!33811 m!626509))

(assert (=> b!653293 m!626375))

(assert (=> b!653293 m!626375))

(assert (=> b!653293 m!626507))

(assert (=> b!653032 d!92337))

(declare-fun d!92339 () Bool)

(assert (=> d!92339 (= (validKeyInArray!0 (select (arr!18496 a!2986) j!136)) (and (not (= (select (arr!18496 a!2986) j!136) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!18496 a!2986) j!136) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!653034 d!92339))

(declare-fun bm!33815 () Bool)

(declare-fun call!33818 () Bool)

(assert (=> bm!33815 (= call!33818 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2986 mask!3053))))

(declare-fun b!653309 () Bool)

(declare-fun e!375111 () Bool)

(assert (=> b!653309 (= e!375111 call!33818)))

(declare-fun b!653310 () Bool)

(declare-fun e!375110 () Bool)

(assert (=> b!653310 (= e!375110 e!375111)))

(declare-fun lt!304150 () (_ BitVec 64))

(assert (=> b!653310 (= lt!304150 (select (arr!18496 a!2986) #b00000000000000000000000000000000))))

(declare-fun lt!304149 () Unit!22330)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38597 (_ BitVec 64) (_ BitVec 32)) Unit!22330)

(assert (=> b!653310 (= lt!304149 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2986 lt!304150 #b00000000000000000000000000000000))))

(assert (=> b!653310 (arrayContainsKey!0 a!2986 lt!304150 #b00000000000000000000000000000000)))

(declare-fun lt!304148 () Unit!22330)

(assert (=> b!653310 (= lt!304148 lt!304149)))

(declare-fun res!423770 () Bool)

(assert (=> b!653310 (= res!423770 (= (seekEntryOrOpen!0 (select (arr!18496 a!2986) #b00000000000000000000000000000000) a!2986 mask!3053) (Found!6943 #b00000000000000000000000000000000)))))

(assert (=> b!653310 (=> (not res!423770) (not e!375111))))

(declare-fun d!92341 () Bool)

(declare-fun res!423769 () Bool)

(declare-fun e!375112 () Bool)

(assert (=> d!92341 (=> res!423769 e!375112)))

(assert (=> d!92341 (= res!423769 (bvsge #b00000000000000000000000000000000 (size!18860 a!2986)))))

(assert (=> d!92341 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053) e!375112)))

(declare-fun b!653311 () Bool)

(assert (=> b!653311 (= e!375112 e!375110)))

(declare-fun c!75137 () Bool)

(assert (=> b!653311 (= c!75137 (validKeyInArray!0 (select (arr!18496 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!653312 () Bool)

(assert (=> b!653312 (= e!375110 call!33818)))

(assert (= (and d!92341 (not res!423769)) b!653311))

(assert (= (and b!653311 c!75137) b!653310))

(assert (= (and b!653311 (not c!75137)) b!653312))

(assert (= (and b!653310 res!423770) b!653309))

(assert (= (or b!653309 b!653312) bm!33815))

(declare-fun m!626519 () Bool)

(assert (=> bm!33815 m!626519))

(assert (=> b!653310 m!626375))

(declare-fun m!626521 () Bool)

(assert (=> b!653310 m!626521))

(declare-fun m!626523 () Bool)

(assert (=> b!653310 m!626523))

(assert (=> b!653310 m!626375))

(declare-fun m!626525 () Bool)

(assert (=> b!653310 m!626525))

(assert (=> b!653311 m!626375))

(assert (=> b!653311 m!626375))

(assert (=> b!653311 m!626507))

(assert (=> b!653023 d!92341))

(declare-fun d!92345 () Bool)

(assert (=> d!92345 (= (validKeyInArray!0 k0!1786) (and (not (= k0!1786 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1786 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!653041 d!92345))

(declare-fun b!653313 () Bool)

(declare-fun e!375114 () SeekEntryResult!6943)

(declare-fun e!375113 () SeekEntryResult!6943)

(assert (=> b!653313 (= e!375114 e!375113)))

(declare-fun c!75139 () Bool)

(declare-fun lt!304151 () (_ BitVec 64))

(assert (=> b!653313 (= c!75139 (= lt!304151 lt!304024))))

(declare-fun b!653314 () Bool)

(declare-fun e!375115 () SeekEntryResult!6943)

(assert (=> b!653314 (= e!375115 (MissingVacant!6943 vacantSpotIndex!68))))

(declare-fun b!653315 () Bool)

(assert (=> b!653315 (= e!375113 (Found!6943 lt!304020))))

(declare-fun b!653316 () Bool)

(assert (=> b!653316 (= e!375115 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!304020 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 lt!304024 lt!304030 mask!3053))))

(declare-fun lt!304152 () SeekEntryResult!6943)

(declare-fun d!92347 () Bool)

(assert (=> d!92347 (and (or ((_ is Undefined!6943) lt!304152) (not ((_ is Found!6943) lt!304152)) (and (bvsge (index!30128 lt!304152) #b00000000000000000000000000000000) (bvslt (index!30128 lt!304152) (size!18860 lt!304030)))) (or ((_ is Undefined!6943) lt!304152) ((_ is Found!6943) lt!304152) (not ((_ is MissingVacant!6943) lt!304152)) (not (= (index!30130 lt!304152) vacantSpotIndex!68)) (and (bvsge (index!30130 lt!304152) #b00000000000000000000000000000000) (bvslt (index!30130 lt!304152) (size!18860 lt!304030)))) (or ((_ is Undefined!6943) lt!304152) (ite ((_ is Found!6943) lt!304152) (= (select (arr!18496 lt!304030) (index!30128 lt!304152)) lt!304024) (and ((_ is MissingVacant!6943) lt!304152) (= (index!30130 lt!304152) vacantSpotIndex!68) (= (select (arr!18496 lt!304030) (index!30130 lt!304152)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!92347 (= lt!304152 e!375114)))

(declare-fun c!75138 () Bool)

(assert (=> d!92347 (= c!75138 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!92347 (= lt!304151 (select (arr!18496 lt!304030) lt!304020))))

(assert (=> d!92347 (validMask!0 mask!3053)))

(assert (=> d!92347 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!304020 vacantSpotIndex!68 lt!304024 lt!304030 mask!3053) lt!304152)))

(declare-fun b!653317 () Bool)

(assert (=> b!653317 (= e!375114 Undefined!6943)))

(declare-fun b!653318 () Bool)

(declare-fun c!75140 () Bool)

(assert (=> b!653318 (= c!75140 (= lt!304151 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!653318 (= e!375113 e!375115)))

(assert (= (and d!92347 c!75138) b!653317))

(assert (= (and d!92347 (not c!75138)) b!653313))

(assert (= (and b!653313 c!75139) b!653315))

(assert (= (and b!653313 (not c!75139)) b!653318))

(assert (= (and b!653318 c!75140) b!653314))

(assert (= (and b!653318 (not c!75140)) b!653316))

(declare-fun m!626527 () Bool)

(assert (=> b!653316 m!626527))

(assert (=> b!653316 m!626527))

(declare-fun m!626529 () Bool)

(assert (=> b!653316 m!626529))

(declare-fun m!626531 () Bool)

(assert (=> d!92347 m!626531))

(declare-fun m!626533 () Bool)

(assert (=> d!92347 m!626533))

(declare-fun m!626535 () Bool)

(assert (=> d!92347 m!626535))

(assert (=> d!92347 m!626283))

(assert (=> b!653019 d!92347))

(declare-fun b!653319 () Bool)

(declare-fun e!375117 () SeekEntryResult!6943)

(declare-fun e!375116 () SeekEntryResult!6943)

(assert (=> b!653319 (= e!375117 e!375116)))

(declare-fun c!75142 () Bool)

(declare-fun lt!304153 () (_ BitVec 64))

(assert (=> b!653319 (= c!75142 (= lt!304153 (select (arr!18496 a!2986) j!136)))))

(declare-fun b!653320 () Bool)

(declare-fun e!375118 () SeekEntryResult!6943)

(assert (=> b!653320 (= e!375118 (MissingVacant!6943 vacantSpotIndex!68))))

(declare-fun b!653321 () Bool)

(assert (=> b!653321 (= e!375116 (Found!6943 lt!304020))))

(declare-fun b!653322 () Bool)

(assert (=> b!653322 (= e!375118 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!304020 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 (select (arr!18496 a!2986) j!136) a!2986 mask!3053))))

(declare-fun lt!304154 () SeekEntryResult!6943)

(declare-fun d!92349 () Bool)

(assert (=> d!92349 (and (or ((_ is Undefined!6943) lt!304154) (not ((_ is Found!6943) lt!304154)) (and (bvsge (index!30128 lt!304154) #b00000000000000000000000000000000) (bvslt (index!30128 lt!304154) (size!18860 a!2986)))) (or ((_ is Undefined!6943) lt!304154) ((_ is Found!6943) lt!304154) (not ((_ is MissingVacant!6943) lt!304154)) (not (= (index!30130 lt!304154) vacantSpotIndex!68)) (and (bvsge (index!30130 lt!304154) #b00000000000000000000000000000000) (bvslt (index!30130 lt!304154) (size!18860 a!2986)))) (or ((_ is Undefined!6943) lt!304154) (ite ((_ is Found!6943) lt!304154) (= (select (arr!18496 a!2986) (index!30128 lt!304154)) (select (arr!18496 a!2986) j!136)) (and ((_ is MissingVacant!6943) lt!304154) (= (index!30130 lt!304154) vacantSpotIndex!68) (= (select (arr!18496 a!2986) (index!30130 lt!304154)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!92349 (= lt!304154 e!375117)))

(declare-fun c!75141 () Bool)

(assert (=> d!92349 (= c!75141 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!92349 (= lt!304153 (select (arr!18496 a!2986) lt!304020))))

(assert (=> d!92349 (validMask!0 mask!3053)))

(assert (=> d!92349 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!304020 vacantSpotIndex!68 (select (arr!18496 a!2986) j!136) a!2986 mask!3053) lt!304154)))

(declare-fun b!653323 () Bool)

(assert (=> b!653323 (= e!375117 Undefined!6943)))

(declare-fun b!653324 () Bool)

(declare-fun c!75143 () Bool)

(assert (=> b!653324 (= c!75143 (= lt!304153 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!653324 (= e!375116 e!375118)))

(assert (= (and d!92349 c!75141) b!653323))

(assert (= (and d!92349 (not c!75141)) b!653319))

(assert (= (and b!653319 c!75142) b!653321))

(assert (= (and b!653319 (not c!75142)) b!653324))

(assert (= (and b!653324 c!75143) b!653320))

(assert (= (and b!653324 (not c!75143)) b!653322))

(assert (=> b!653322 m!626527))

(assert (=> b!653322 m!626527))

(assert (=> b!653322 m!626213))

(declare-fun m!626537 () Bool)

(assert (=> b!653322 m!626537))

(declare-fun m!626539 () Bool)

(assert (=> d!92349 m!626539))

(declare-fun m!626541 () Bool)

(assert (=> d!92349 m!626541))

(declare-fun m!626543 () Bool)

(assert (=> d!92349 m!626543))

(assert (=> d!92349 m!626283))

(assert (=> b!653019 d!92349))

(declare-fun d!92351 () Bool)

(declare-fun lt!304163 () (_ BitVec 32))

(assert (=> d!92351 (and (bvsge lt!304163 #b00000000000000000000000000000000) (bvslt lt!304163 (bvadd mask!3053 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!92351 (= lt!304163 (choose!52 index!984 x!910 mask!3053))))

(assert (=> d!92351 (validMask!0 mask!3053)))

(assert (=> d!92351 (= (nextIndex!0 index!984 x!910 mask!3053) lt!304163)))

(declare-fun bs!19475 () Bool)

(assert (= bs!19475 d!92351))

(declare-fun m!626545 () Bool)

(assert (=> bs!19475 m!626545))

(assert (=> bs!19475 m!626283))

(assert (=> b!653019 d!92351))

(declare-fun b!653337 () Bool)

(declare-fun e!375126 () SeekEntryResult!6943)

(declare-fun e!375125 () SeekEntryResult!6943)

(assert (=> b!653337 (= e!375126 e!375125)))

(declare-fun c!75151 () Bool)

(declare-fun lt!304164 () (_ BitVec 64))

(assert (=> b!653337 (= c!75151 (= lt!304164 lt!304024))))

(declare-fun b!653338 () Bool)

(declare-fun e!375127 () SeekEntryResult!6943)

(assert (=> b!653338 (= e!375127 (MissingVacant!6943 vacantSpotIndex!68))))

(declare-fun b!653339 () Bool)

(assert (=> b!653339 (= e!375125 (Found!6943 index!984))))

(declare-fun b!653340 () Bool)

(assert (=> b!653340 (= e!375127 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 lt!304024 lt!304030 mask!3053))))

(declare-fun lt!304165 () SeekEntryResult!6943)

(declare-fun d!92353 () Bool)

(assert (=> d!92353 (and (or ((_ is Undefined!6943) lt!304165) (not ((_ is Found!6943) lt!304165)) (and (bvsge (index!30128 lt!304165) #b00000000000000000000000000000000) (bvslt (index!30128 lt!304165) (size!18860 lt!304030)))) (or ((_ is Undefined!6943) lt!304165) ((_ is Found!6943) lt!304165) (not ((_ is MissingVacant!6943) lt!304165)) (not (= (index!30130 lt!304165) vacantSpotIndex!68)) (and (bvsge (index!30130 lt!304165) #b00000000000000000000000000000000) (bvslt (index!30130 lt!304165) (size!18860 lt!304030)))) (or ((_ is Undefined!6943) lt!304165) (ite ((_ is Found!6943) lt!304165) (= (select (arr!18496 lt!304030) (index!30128 lt!304165)) lt!304024) (and ((_ is MissingVacant!6943) lt!304165) (= (index!30130 lt!304165) vacantSpotIndex!68) (= (select (arr!18496 lt!304030) (index!30130 lt!304165)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!92353 (= lt!304165 e!375126)))

(declare-fun c!75150 () Bool)

(assert (=> d!92353 (= c!75150 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!92353 (= lt!304164 (select (arr!18496 lt!304030) index!984))))

(assert (=> d!92353 (validMask!0 mask!3053)))

(assert (=> d!92353 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!304024 lt!304030 mask!3053) lt!304165)))

(declare-fun b!653341 () Bool)

(assert (=> b!653341 (= e!375126 Undefined!6943)))

(declare-fun b!653342 () Bool)

(declare-fun c!75152 () Bool)

(assert (=> b!653342 (= c!75152 (= lt!304164 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!653342 (= e!375125 e!375127)))

(assert (= (and d!92353 c!75150) b!653341))

(assert (= (and d!92353 (not c!75150)) b!653337))

(assert (= (and b!653337 c!75151) b!653339))

(assert (= (and b!653337 (not c!75151)) b!653342))

(assert (= (and b!653342 c!75152) b!653338))

(assert (= (and b!653342 (not c!75152)) b!653340))

(assert (=> b!653340 m!626271))

(assert (=> b!653340 m!626271))

(declare-fun m!626547 () Bool)

(assert (=> b!653340 m!626547))

(declare-fun m!626549 () Bool)

(assert (=> d!92353 m!626549))

(declare-fun m!626551 () Bool)

(assert (=> d!92353 m!626551))

(assert (=> d!92353 m!626371))

(assert (=> d!92353 m!626283))

(assert (=> b!653019 d!92353))

(declare-fun d!92355 () Bool)

(declare-fun e!375148 () Bool)

(assert (=> d!92355 e!375148))

(declare-fun res!423773 () Bool)

(assert (=> d!92355 (=> (not res!423773) (not e!375148))))

(assert (=> d!92355 (= res!423773 (and (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18860 a!2986)) (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18860 a!2986)))) (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18860 a!2986)) (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18860 a!2986)))) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18860 a!2986))))))

(declare-fun lt!304184 () Unit!22330)

(declare-fun choose!9 (array!38597 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22330)

(assert (=> d!92355 (= lt!304184 (choose!9 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!304020 vacantSpotIndex!68 mask!3053))))

(assert (=> d!92355 (validMask!0 mask!3053)))

(assert (=> d!92355 (= (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!304020 vacantSpotIndex!68 mask!3053) lt!304184)))

(declare-fun b!653381 () Bool)

(assert (=> b!653381 (= e!375148 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!304020 vacantSpotIndex!68 (select (arr!18496 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!304020 vacantSpotIndex!68 (select (store (arr!18496 a!2986) i!1108 k0!1786) j!136) (array!38598 (store (arr!18496 a!2986) i!1108 k0!1786) (size!18860 a!2986)) mask!3053)))))

(assert (= (and d!92355 res!423773) b!653381))

(declare-fun m!626593 () Bool)

(assert (=> d!92355 m!626593))

(assert (=> d!92355 m!626283))

(assert (=> b!653381 m!626233))

(assert (=> b!653381 m!626213))

(assert (=> b!653381 m!626281))

(assert (=> b!653381 m!626277))

(assert (=> b!653381 m!626213))

(assert (=> b!653381 m!626277))

(declare-fun m!626595 () Bool)

(assert (=> b!653381 m!626595))

(assert (=> b!653019 d!92355))

(declare-fun d!92367 () Bool)

(declare-fun res!423774 () Bool)

(declare-fun e!375155 () Bool)

(assert (=> d!92367 (=> res!423774 e!375155)))

(assert (=> d!92367 (= res!423774 (= (select (arr!18496 lt!304030) j!136) (select (arr!18496 a!2986) j!136)))))

(assert (=> d!92367 (= (arrayContainsKey!0 lt!304030 (select (arr!18496 a!2986) j!136) j!136) e!375155)))

(declare-fun b!653394 () Bool)

(declare-fun e!375156 () Bool)

(assert (=> b!653394 (= e!375155 e!375156)))

(declare-fun res!423775 () Bool)

(assert (=> b!653394 (=> (not res!423775) (not e!375156))))

(assert (=> b!653394 (= res!423775 (bvslt (bvadd j!136 #b00000000000000000000000000000001) (size!18860 lt!304030)))))

(declare-fun b!653395 () Bool)

(assert (=> b!653395 (= e!375156 (arrayContainsKey!0 lt!304030 (select (arr!18496 a!2986) j!136) (bvadd j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!92367 (not res!423774)) b!653394))

(assert (= (and b!653394 res!423775) b!653395))

(assert (=> d!92367 m!626443))

(assert (=> b!653395 m!626213))

(declare-fun m!626597 () Bool)

(assert (=> b!653395 m!626597))

(assert (=> b!653040 d!92367))

(declare-fun d!92369 () Bool)

(assert (=> d!92369 (arrayContainsKey!0 lt!304030 (select (arr!18496 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!304189 () Unit!22330)

(assert (=> d!92369 (= lt!304189 (choose!114 lt!304030 (select (arr!18496 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> d!92369 (bvsge j!136 #b00000000000000000000000000000000)))

(assert (=> d!92369 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!304030 (select (arr!18496 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)) lt!304189)))

(declare-fun bs!19477 () Bool)

(assert (= bs!19477 d!92369))

(assert (=> bs!19477 m!626213))

(assert (=> bs!19477 m!626257))

(assert (=> bs!19477 m!626213))

(declare-fun m!626599 () Bool)

(assert (=> bs!19477 m!626599))

(assert (=> b!653021 d!92369))

(declare-fun d!92371 () Bool)

(assert (=> d!92371 (arrayNoDuplicates!0 lt!304030 index!984 Nil!12587)))

(declare-fun lt!304190 () Unit!22330)

(assert (=> d!92371 (= lt!304190 (choose!39 lt!304030 #b00000000000000000000000000000000 index!984))))

(assert (=> d!92371 (bvslt (size!18860 lt!304030) #b01111111111111111111111111111111)))

(assert (=> d!92371 (= (lemmaNoDuplicateFromThenFromBigger!0 lt!304030 #b00000000000000000000000000000000 index!984) lt!304190)))

(declare-fun bs!19478 () Bool)

(assert (= bs!19478 d!92371))

(assert (=> bs!19478 m!626261))

(declare-fun m!626601 () Bool)

(assert (=> bs!19478 m!626601))

(assert (=> b!653021 d!92371))

(declare-fun d!92373 () Bool)

(declare-fun res!423776 () Bool)

(declare-fun e!375157 () Bool)

(assert (=> d!92373 (=> res!423776 e!375157)))

(assert (=> d!92373 (= res!423776 (= (select (arr!18496 lt!304030) (bvadd #b00000000000000000000000000000001 index!984)) (select (arr!18496 a!2986) j!136)))))

(assert (=> d!92373 (= (arrayContainsKey!0 lt!304030 (select (arr!18496 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984)) e!375157)))

(declare-fun b!653396 () Bool)

(declare-fun e!375158 () Bool)

(assert (=> b!653396 (= e!375157 e!375158)))

(declare-fun res!423777 () Bool)

(assert (=> b!653396 (=> (not res!423777) (not e!375158))))

(assert (=> b!653396 (= res!423777 (bvslt (bvadd #b00000000000000000000000000000001 index!984 #b00000000000000000000000000000001) (size!18860 lt!304030)))))

(declare-fun b!653397 () Bool)

(assert (=> b!653397 (= e!375158 (arrayContainsKey!0 lt!304030 (select (arr!18496 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!92373 (not res!423776)) b!653396))

(assert (= (and b!653396 res!423777) b!653397))

(declare-fun m!626603 () Bool)

(assert (=> d!92373 m!626603))

(assert (=> b!653397 m!626213))

(declare-fun m!626605 () Bool)

(assert (=> b!653397 m!626605))

(assert (=> b!653021 d!92373))

(assert (=> b!653021 d!92367))

(assert (=> b!653021 d!92303))

(declare-fun b!653398 () Bool)

(declare-fun e!375161 () Bool)

(assert (=> b!653398 (= e!375161 (contains!3184 Nil!12587 (select (arr!18496 lt!304030) index!984)))))

(declare-fun b!653399 () Bool)

(declare-fun e!375162 () Bool)

(declare-fun e!375159 () Bool)

(assert (=> b!653399 (= e!375162 e!375159)))

(declare-fun c!75177 () Bool)

(assert (=> b!653399 (= c!75177 (validKeyInArray!0 (select (arr!18496 lt!304030) index!984)))))

(declare-fun d!92375 () Bool)

(declare-fun res!423778 () Bool)

(declare-fun e!375160 () Bool)

(assert (=> d!92375 (=> res!423778 e!375160)))

(assert (=> d!92375 (= res!423778 (bvsge index!984 (size!18860 lt!304030)))))

(assert (=> d!92375 (= (arrayNoDuplicates!0 lt!304030 index!984 Nil!12587) e!375160)))

(declare-fun call!33819 () Bool)

(declare-fun bm!33816 () Bool)

(assert (=> bm!33816 (= call!33819 (arrayNoDuplicates!0 lt!304030 (bvadd index!984 #b00000000000000000000000000000001) (ite c!75177 (Cons!12586 (select (arr!18496 lt!304030) index!984) Nil!12587) Nil!12587)))))

(declare-fun b!653400 () Bool)

(assert (=> b!653400 (= e!375160 e!375162)))

(declare-fun res!423779 () Bool)

(assert (=> b!653400 (=> (not res!423779) (not e!375162))))

(assert (=> b!653400 (= res!423779 (not e!375161))))

(declare-fun res!423780 () Bool)

(assert (=> b!653400 (=> (not res!423780) (not e!375161))))

(assert (=> b!653400 (= res!423780 (validKeyInArray!0 (select (arr!18496 lt!304030) index!984)))))

(declare-fun b!653401 () Bool)

(assert (=> b!653401 (= e!375159 call!33819)))

(declare-fun b!653402 () Bool)

(assert (=> b!653402 (= e!375159 call!33819)))

(assert (= (and d!92375 (not res!423778)) b!653400))

(assert (= (and b!653400 res!423780) b!653398))

(assert (= (and b!653400 res!423779) b!653399))

(assert (= (and b!653399 c!75177) b!653402))

(assert (= (and b!653399 (not c!75177)) b!653401))

(assert (= (or b!653402 b!653401) bm!33816))

(assert (=> b!653398 m!626371))

(assert (=> b!653398 m!626371))

(declare-fun m!626607 () Bool)

(assert (=> b!653398 m!626607))

(assert (=> b!653399 m!626371))

(assert (=> b!653399 m!626371))

(declare-fun m!626609 () Bool)

(assert (=> b!653399 m!626609))

(assert (=> bm!33816 m!626371))

(declare-fun m!626611 () Bool)

(assert (=> bm!33816 m!626611))

(assert (=> b!653400 m!626371))

(assert (=> b!653400 m!626371))

(assert (=> b!653400 m!626609))

(assert (=> b!653021 d!92375))

(assert (=> b!653021 d!92289))

(check-sat (not b!653400) (not b!653322) (not b!653235) (not d!92309) (not d!92355) (not bm!33816) (not d!92349) (not b!653242) (not b!653311) (not d!92351) (not b!653150) (not b!653293) (not b!653310) (not bm!33807) (not bm!33815) (not d!92275) (not b!653233) (not b!653126) (not bm!33811) (not b!653218) (not b!653381) (not b!653159) (not b!653217) (not b!653194) (not d!92353) (not b!653397) (not b!653134) (not d!92267) (not b!653316) (not b!653291) (not d!92281) (not d!92369) (not b!653160) (not b!653219) (not d!92371) (not b!653398) (not b!653232) (not bm!33805) (not b!653399) (not d!92347) (not b!653234) (not b!653292) (not b!653128) (not d!92293) (not b!653395) (not d!92303) (not b!653340) (not b!653136) (not d!92269) (not d!92313))
(check-sat)
