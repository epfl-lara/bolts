; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59340 () Bool)

(assert start!59340)

(declare-fun b!654025 () Bool)

(declare-fun e!375572 () Bool)

(declare-fun e!375568 () Bool)

(assert (=> b!654025 (= e!375572 e!375568)))

(declare-fun res!424284 () Bool)

(assert (=> b!654025 (=> (not res!424284) (not e!375568))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-datatypes ((array!38616 0))(
  ( (array!38617 (arr!18504 (Array (_ BitVec 32) (_ BitVec 64))) (size!18868 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38616)

(assert (=> b!654025 (= res!424284 (= (select (store (arr!18504 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!304647 () array!38616)

(assert (=> b!654025 (= lt!304647 (array!38617 (store (arr!18504 a!2986) i!1108 k!1786) (size!18868 a!2986)))))

(declare-fun b!654026 () Bool)

(declare-fun e!375567 () Bool)

(assert (=> b!654026 (= e!375568 e!375567)))

(declare-fun res!424273 () Bool)

(assert (=> b!654026 (=> (not res!424273) (not e!375567))))

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6951 0))(
  ( (MissingZero!6951 (index!30162 (_ BitVec 32))) (Found!6951 (index!30163 (_ BitVec 32))) (Intermediate!6951 (undefined!7763 Bool) (index!30164 (_ BitVec 32)) (x!58985 (_ BitVec 32))) (Undefined!6951) (MissingVacant!6951 (index!30165 (_ BitVec 32))) )
))
(declare-fun lt!304639 () SeekEntryResult!6951)

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!654026 (= res!424273 (and (= lt!304639 (Found!6951 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18504 a!2986) index!984) (select (arr!18504 a!2986) j!136))) (not (= (select (arr!18504 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38616 (_ BitVec 32)) SeekEntryResult!6951)

(assert (=> b!654026 (= lt!304639 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18504 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!654027 () Bool)

(declare-fun res!424289 () Bool)

(declare-fun e!375574 () Bool)

(assert (=> b!654027 (=> (not res!424289) (not e!375574))))

(declare-fun arrayContainsKey!0 (array!38616 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!654027 (= res!424289 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!654028 () Bool)

(assert (=> b!654028 (= e!375574 e!375572)))

(declare-fun res!424287 () Bool)

(assert (=> b!654028 (=> (not res!424287) (not e!375572))))

(declare-fun lt!304636 () SeekEntryResult!6951)

(assert (=> b!654028 (= res!424287 (or (= lt!304636 (MissingZero!6951 i!1108)) (= lt!304636 (MissingVacant!6951 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38616 (_ BitVec 32)) SeekEntryResult!6951)

(assert (=> b!654028 (= lt!304636 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!654029 () Bool)

(declare-fun res!424279 () Bool)

(assert (=> b!654029 (=> (not res!424279) (not e!375574))))

(assert (=> b!654029 (= res!424279 (and (= (size!18868 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18868 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18868 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!654030 () Bool)

(declare-fun e!375570 () Bool)

(declare-fun e!375571 () Bool)

(assert (=> b!654030 (= e!375570 e!375571)))

(declare-fun res!424274 () Bool)

(assert (=> b!654030 (=> res!424274 e!375571)))

(declare-fun lt!304632 () (_ BitVec 64))

(declare-fun lt!304646 () (_ BitVec 64))

(assert (=> b!654030 (= res!424274 (or (not (= (select (arr!18504 a!2986) j!136) lt!304646)) (not (= (select (arr!18504 a!2986) j!136) lt!304632))))))

(declare-fun e!375573 () Bool)

(assert (=> b!654030 e!375573))

(declare-fun res!424276 () Bool)

(assert (=> b!654030 (=> (not res!424276) (not e!375573))))

(assert (=> b!654030 (= res!424276 (= lt!304632 (select (arr!18504 a!2986) j!136)))))

(assert (=> b!654030 (= lt!304632 (select (store (arr!18504 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!654031 () Bool)

(declare-datatypes ((Unit!22378 0))(
  ( (Unit!22379) )
))
(declare-fun e!375575 () Unit!22378)

(declare-fun Unit!22380 () Unit!22378)

(assert (=> b!654031 (= e!375575 Unit!22380)))

(declare-fun res!424288 () Bool)

(assert (=> start!59340 (=> (not res!424288) (not e!375574))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!59340 (= res!424288 (validMask!0 mask!3053))))

(assert (=> start!59340 e!375574))

(assert (=> start!59340 true))

(declare-fun array_inv!14278 (array!38616) Bool)

(assert (=> start!59340 (array_inv!14278 a!2986)))

(declare-fun b!654032 () Bool)

(declare-fun e!375564 () Bool)

(assert (=> b!654032 (= e!375564 true)))

(assert (=> b!654032 false))

(declare-fun lt!304645 () Unit!22378)

(declare-datatypes ((List!12598 0))(
  ( (Nil!12595) (Cons!12594 (h!13639 (_ BitVec 64)) (t!18834 List!12598)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38616 (_ BitVec 64) (_ BitVec 32) List!12598) Unit!22378)

(assert (=> b!654032 (= lt!304645 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!304647 (select (arr!18504 a!2986) j!136) index!984 Nil!12595))))

(declare-fun arrayNoDuplicates!0 (array!38616 (_ BitVec 32) List!12598) Bool)

(assert (=> b!654032 (arrayNoDuplicates!0 lt!304647 index!984 Nil!12595)))

(declare-fun lt!304643 () Unit!22378)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38616 (_ BitVec 32) (_ BitVec 32)) Unit!22378)

(assert (=> b!654032 (= lt!304643 (lemmaNoDuplicateFromThenFromBigger!0 lt!304647 #b00000000000000000000000000000000 index!984))))

(assert (=> b!654032 (arrayNoDuplicates!0 lt!304647 #b00000000000000000000000000000000 Nil!12595)))

(declare-fun lt!304641 () Unit!22378)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38616 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12598) Unit!22378)

(assert (=> b!654032 (= lt!304641 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12595))))

(assert (=> b!654032 (arrayContainsKey!0 lt!304647 (select (arr!18504 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!304633 () Unit!22378)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38616 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22378)

(assert (=> b!654032 (= lt!304633 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!304647 (select (arr!18504 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!375566 () Bool)

(assert (=> b!654032 e!375566))

(declare-fun res!424280 () Bool)

(assert (=> b!654032 (=> (not res!424280) (not e!375566))))

(assert (=> b!654032 (= res!424280 (arrayContainsKey!0 lt!304647 (select (arr!18504 a!2986) j!136) j!136))))

(declare-fun b!654033 () Bool)

(declare-fun e!375563 () Unit!22378)

(declare-fun Unit!22381 () Unit!22378)

(assert (=> b!654033 (= e!375563 Unit!22381)))

(assert (=> b!654033 false))

(declare-fun b!654034 () Bool)

(declare-fun Unit!22382 () Unit!22378)

(assert (=> b!654034 (= e!375575 Unit!22382)))

(declare-fun lt!304634 () Unit!22378)

(assert (=> b!654034 (= lt!304634 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!304647 (select (arr!18504 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!654034 (arrayContainsKey!0 lt!304647 (select (arr!18504 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!304630 () Unit!22378)

(assert (=> b!654034 (= lt!304630 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12595))))

(assert (=> b!654034 (arrayNoDuplicates!0 lt!304647 #b00000000000000000000000000000000 Nil!12595)))

(declare-fun lt!304629 () Unit!22378)

(assert (=> b!654034 (= lt!304629 (lemmaNoDuplicateFromThenFromBigger!0 lt!304647 #b00000000000000000000000000000000 j!136))))

(assert (=> b!654034 (arrayNoDuplicates!0 lt!304647 j!136 Nil!12595)))

(declare-fun lt!304644 () Unit!22378)

(assert (=> b!654034 (= lt!304644 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!304647 (select (arr!18504 a!2986) j!136) j!136 Nil!12595))))

(assert (=> b!654034 false))

(declare-fun b!654035 () Bool)

(declare-fun res!424271 () Bool)

(assert (=> b!654035 (=> (not res!424271) (not e!375572))))

(assert (=> b!654035 (= res!424271 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12595))))

(declare-fun b!654036 () Bool)

(declare-fun e!375565 () Bool)

(assert (=> b!654036 (= e!375565 (arrayContainsKey!0 lt!304647 (select (arr!18504 a!2986) j!136) index!984))))

(declare-fun b!654037 () Bool)

(declare-fun e!375577 () Bool)

(assert (=> b!654037 (= e!375573 e!375577)))

(declare-fun res!424278 () Bool)

(assert (=> b!654037 (=> res!424278 e!375577)))

(assert (=> b!654037 (= res!424278 (or (not (= (select (arr!18504 a!2986) j!136) lt!304646)) (not (= (select (arr!18504 a!2986) j!136) lt!304632)) (bvsge j!136 index!984)))))

(declare-fun b!654038 () Bool)

(declare-fun e!375576 () Bool)

(declare-fun lt!304640 () SeekEntryResult!6951)

(assert (=> b!654038 (= e!375576 (= lt!304639 lt!304640))))

(declare-fun b!654039 () Bool)

(assert (=> b!654039 (= e!375577 e!375565)))

(declare-fun res!424282 () Bool)

(assert (=> b!654039 (=> (not res!424282) (not e!375565))))

(assert (=> b!654039 (= res!424282 (arrayContainsKey!0 lt!304647 (select (arr!18504 a!2986) j!136) j!136))))

(declare-fun b!654040 () Bool)

(declare-fun res!424285 () Bool)

(assert (=> b!654040 (=> (not res!424285) (not e!375572))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38616 (_ BitVec 32)) Bool)

(assert (=> b!654040 (= res!424285 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!654041 () Bool)

(declare-fun res!424277 () Bool)

(assert (=> b!654041 (=> (not res!424277) (not e!375572))))

(assert (=> b!654041 (= res!424277 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18504 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!654042 () Bool)

(assert (=> b!654042 (= e!375571 e!375564)))

(declare-fun res!424275 () Bool)

(assert (=> b!654042 (=> res!424275 e!375564)))

(assert (=> b!654042 (= res!424275 (bvsge index!984 j!136))))

(declare-fun lt!304642 () Unit!22378)

(assert (=> b!654042 (= lt!304642 e!375575)))

(declare-fun c!75245 () Bool)

(assert (=> b!654042 (= c!75245 (bvslt j!136 index!984))))

(declare-fun b!654043 () Bool)

(declare-fun Unit!22383 () Unit!22378)

(assert (=> b!654043 (= e!375563 Unit!22383)))

(declare-fun b!654044 () Bool)

(assert (=> b!654044 (= e!375567 (not e!375570))))

(declare-fun res!424286 () Bool)

(assert (=> b!654044 (=> res!424286 e!375570)))

(declare-fun lt!304638 () SeekEntryResult!6951)

(assert (=> b!654044 (= res!424286 (not (= lt!304638 (Found!6951 index!984))))))

(declare-fun lt!304637 () Unit!22378)

(assert (=> b!654044 (= lt!304637 e!375563)))

(declare-fun c!75244 () Bool)

(assert (=> b!654044 (= c!75244 (= lt!304638 Undefined!6951))))

(assert (=> b!654044 (= lt!304638 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!304646 lt!304647 mask!3053))))

(assert (=> b!654044 e!375576))

(declare-fun res!424283 () Bool)

(assert (=> b!654044 (=> (not res!424283) (not e!375576))))

(declare-fun lt!304635 () (_ BitVec 32))

(assert (=> b!654044 (= res!424283 (= lt!304640 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!304635 vacantSpotIndex!68 lt!304646 lt!304647 mask!3053)))))

(assert (=> b!654044 (= lt!304640 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!304635 vacantSpotIndex!68 (select (arr!18504 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!654044 (= lt!304646 (select (store (arr!18504 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!304631 () Unit!22378)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38616 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22378)

(assert (=> b!654044 (= lt!304631 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!304635 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!654044 (= lt!304635 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!654045 () Bool)

(declare-fun res!424281 () Bool)

(assert (=> b!654045 (=> (not res!424281) (not e!375574))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!654045 (= res!424281 (validKeyInArray!0 (select (arr!18504 a!2986) j!136)))))

(declare-fun b!654046 () Bool)

(declare-fun res!424272 () Bool)

(assert (=> b!654046 (=> (not res!424272) (not e!375574))))

(assert (=> b!654046 (= res!424272 (validKeyInArray!0 k!1786))))

(declare-fun b!654047 () Bool)

(assert (=> b!654047 (= e!375566 (arrayContainsKey!0 lt!304647 (select (arr!18504 a!2986) j!136) index!984))))

(assert (= (and start!59340 res!424288) b!654029))

(assert (= (and b!654029 res!424279) b!654045))

(assert (= (and b!654045 res!424281) b!654046))

(assert (= (and b!654046 res!424272) b!654027))

(assert (= (and b!654027 res!424289) b!654028))

(assert (= (and b!654028 res!424287) b!654040))

(assert (= (and b!654040 res!424285) b!654035))

(assert (= (and b!654035 res!424271) b!654041))

(assert (= (and b!654041 res!424277) b!654025))

(assert (= (and b!654025 res!424284) b!654026))

(assert (= (and b!654026 res!424273) b!654044))

(assert (= (and b!654044 res!424283) b!654038))

(assert (= (and b!654044 c!75244) b!654033))

(assert (= (and b!654044 (not c!75244)) b!654043))

(assert (= (and b!654044 (not res!424286)) b!654030))

(assert (= (and b!654030 res!424276) b!654037))

(assert (= (and b!654037 (not res!424278)) b!654039))

(assert (= (and b!654039 res!424282) b!654036))

(assert (= (and b!654030 (not res!424274)) b!654042))

(assert (= (and b!654042 c!75245) b!654034))

(assert (= (and b!654042 (not c!75245)) b!654031))

(assert (= (and b!654042 (not res!424275)) b!654032))

(assert (= (and b!654032 res!424280) b!654047))

(declare-fun m!627201 () Bool)

(assert (=> b!654025 m!627201))

(declare-fun m!627203 () Bool)

(assert (=> b!654025 m!627203))

(declare-fun m!627205 () Bool)

(assert (=> b!654046 m!627205))

(declare-fun m!627207 () Bool)

(assert (=> b!654037 m!627207))

(declare-fun m!627209 () Bool)

(assert (=> b!654034 m!627209))

(declare-fun m!627211 () Bool)

(assert (=> b!654034 m!627211))

(assert (=> b!654034 m!627207))

(declare-fun m!627213 () Bool)

(assert (=> b!654034 m!627213))

(declare-fun m!627215 () Bool)

(assert (=> b!654034 m!627215))

(assert (=> b!654034 m!627207))

(declare-fun m!627217 () Bool)

(assert (=> b!654034 m!627217))

(declare-fun m!627219 () Bool)

(assert (=> b!654034 m!627219))

(assert (=> b!654034 m!627207))

(declare-fun m!627221 () Bool)

(assert (=> b!654034 m!627221))

(assert (=> b!654034 m!627207))

(assert (=> b!654036 m!627207))

(assert (=> b!654036 m!627207))

(declare-fun m!627223 () Bool)

(assert (=> b!654036 m!627223))

(assert (=> b!654032 m!627207))

(declare-fun m!627225 () Bool)

(assert (=> b!654032 m!627225))

(assert (=> b!654032 m!627207))

(declare-fun m!627227 () Bool)

(assert (=> b!654032 m!627227))

(assert (=> b!654032 m!627207))

(declare-fun m!627229 () Bool)

(assert (=> b!654032 m!627229))

(assert (=> b!654032 m!627207))

(assert (=> b!654032 m!627207))

(declare-fun m!627231 () Bool)

(assert (=> b!654032 m!627231))

(assert (=> b!654032 m!627209))

(declare-fun m!627233 () Bool)

(assert (=> b!654032 m!627233))

(declare-fun m!627235 () Bool)

(assert (=> b!654032 m!627235))

(assert (=> b!654032 m!627219))

(declare-fun m!627237 () Bool)

(assert (=> b!654044 m!627237))

(declare-fun m!627239 () Bool)

(assert (=> b!654044 m!627239))

(assert (=> b!654044 m!627207))

(assert (=> b!654044 m!627201))

(assert (=> b!654044 m!627207))

(declare-fun m!627241 () Bool)

(assert (=> b!654044 m!627241))

(declare-fun m!627243 () Bool)

(assert (=> b!654044 m!627243))

(declare-fun m!627245 () Bool)

(assert (=> b!654044 m!627245))

(declare-fun m!627247 () Bool)

(assert (=> b!654044 m!627247))

(assert (=> b!654047 m!627207))

(assert (=> b!654047 m!627207))

(assert (=> b!654047 m!627223))

(declare-fun m!627249 () Bool)

(assert (=> b!654035 m!627249))

(assert (=> b!654039 m!627207))

(assert (=> b!654039 m!627207))

(assert (=> b!654039 m!627229))

(declare-fun m!627251 () Bool)

(assert (=> b!654041 m!627251))

(assert (=> b!654045 m!627207))

(assert (=> b!654045 m!627207))

(declare-fun m!627253 () Bool)

(assert (=> b!654045 m!627253))

(declare-fun m!627255 () Bool)

(assert (=> b!654028 m!627255))

(declare-fun m!627257 () Bool)

(assert (=> b!654040 m!627257))

(declare-fun m!627259 () Bool)

(assert (=> b!654026 m!627259))

(assert (=> b!654026 m!627207))

(assert (=> b!654026 m!627207))

(declare-fun m!627261 () Bool)

(assert (=> b!654026 m!627261))

(assert (=> b!654030 m!627207))

(assert (=> b!654030 m!627201))

(declare-fun m!627263 () Bool)

(assert (=> b!654030 m!627263))

(declare-fun m!627265 () Bool)

(assert (=> b!654027 m!627265))

(declare-fun m!627267 () Bool)

(assert (=> start!59340 m!627267))

(declare-fun m!627269 () Bool)

(assert (=> start!59340 m!627269))

(push 1)

