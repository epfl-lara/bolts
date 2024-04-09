; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53998 () Bool)

(assert start!53998)

(declare-fun b!589443 () Bool)

(declare-fun e!336520 () Bool)

(declare-fun e!336518 () Bool)

(assert (=> b!589443 (= e!336520 (not e!336518))))

(declare-fun res!377093 () Bool)

(assert (=> b!589443 (=> res!377093 e!336518)))

(declare-datatypes ((SeekEntryResult!6114 0))(
  ( (MissingZero!6114 (index!26686 (_ BitVec 32))) (Found!6114 (index!26687 (_ BitVec 32))) (Intermediate!6114 (undefined!6926 Bool) (index!26688 (_ BitVec 32)) (x!55507 (_ BitVec 32))) (Undefined!6114) (MissingVacant!6114 (index!26689 (_ BitVec 32))) )
))
(declare-fun lt!267415 () SeekEntryResult!6114)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!589443 (= res!377093 (not (= lt!267415 (Found!6114 index!984))))))

(declare-datatypes ((Unit!18400 0))(
  ( (Unit!18401) )
))
(declare-fun lt!267419 () Unit!18400)

(declare-fun e!336523 () Unit!18400)

(assert (=> b!589443 (= lt!267419 e!336523)))

(declare-fun c!66548 () Bool)

(assert (=> b!589443 (= c!66548 (= lt!267415 Undefined!6114))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!267416 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-datatypes ((array!36796 0))(
  ( (array!36797 (arr!17667 (Array (_ BitVec 32) (_ BitVec 64))) (size!18031 (_ BitVec 32))) )
))
(declare-fun lt!267414 () array!36796)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36796 (_ BitVec 32)) SeekEntryResult!6114)

(assert (=> b!589443 (= lt!267415 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!267416 lt!267414 mask!3053))))

(declare-fun e!336521 () Bool)

(assert (=> b!589443 e!336521))

(declare-fun res!377083 () Bool)

(assert (=> b!589443 (=> (not res!377083) (not e!336521))))

(declare-fun lt!267412 () (_ BitVec 32))

(declare-fun lt!267411 () SeekEntryResult!6114)

(assert (=> b!589443 (= res!377083 (= lt!267411 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!267412 vacantSpotIndex!68 lt!267416 lt!267414 mask!3053)))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun a!2986 () array!36796)

(assert (=> b!589443 (= lt!267411 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!267412 vacantSpotIndex!68 (select (arr!17667 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!589443 (= lt!267416 (select (store (arr!17667 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!267417 () Unit!18400)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36796 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18400)

(assert (=> b!589443 (= lt!267417 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!267412 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!589443 (= lt!267412 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!589444 () Bool)

(declare-fun Unit!18402 () Unit!18400)

(assert (=> b!589444 (= e!336523 Unit!18402)))

(declare-fun b!589446 () Bool)

(declare-fun e!336517 () Bool)

(declare-fun e!336519 () Bool)

(assert (=> b!589446 (= e!336517 e!336519)))

(declare-fun res!377086 () Bool)

(assert (=> b!589446 (=> (not res!377086) (not e!336519))))

(assert (=> b!589446 (= res!377086 (= (select (store (arr!17667 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!589446 (= lt!267414 (array!36797 (store (arr!17667 a!2986) i!1108 k!1786) (size!18031 a!2986)))))

(declare-fun b!589447 () Bool)

(declare-fun e!336516 () Bool)

(assert (=> b!589447 (= e!336516 e!336517)))

(declare-fun res!377092 () Bool)

(assert (=> b!589447 (=> (not res!377092) (not e!336517))))

(declare-fun lt!267413 () SeekEntryResult!6114)

(assert (=> b!589447 (= res!377092 (or (= lt!267413 (MissingZero!6114 i!1108)) (= lt!267413 (MissingVacant!6114 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36796 (_ BitVec 32)) SeekEntryResult!6114)

(assert (=> b!589447 (= lt!267413 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!589448 () Bool)

(declare-fun Unit!18403 () Unit!18400)

(assert (=> b!589448 (= e!336523 Unit!18403)))

(assert (=> b!589448 false))

(declare-fun b!589449 () Bool)

(declare-fun res!377087 () Bool)

(assert (=> b!589449 (=> (not res!377087) (not e!336516))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!589449 (= res!377087 (validKeyInArray!0 (select (arr!17667 a!2986) j!136)))))

(declare-fun b!589450 () Bool)

(declare-fun res!377082 () Bool)

(assert (=> b!589450 (=> (not res!377082) (not e!336516))))

(declare-fun arrayContainsKey!0 (array!36796 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!589450 (= res!377082 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!589451 () Bool)

(declare-fun res!377089 () Bool)

(assert (=> b!589451 (=> (not res!377089) (not e!336516))))

(assert (=> b!589451 (= res!377089 (validKeyInArray!0 k!1786))))

(declare-fun b!589452 () Bool)

(declare-fun res!377085 () Bool)

(assert (=> b!589452 (=> (not res!377085) (not e!336517))))

(assert (=> b!589452 (= res!377085 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17667 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!589453 () Bool)

(declare-fun res!377088 () Bool)

(assert (=> b!589453 (=> (not res!377088) (not e!336516))))

(assert (=> b!589453 (= res!377088 (and (= (size!18031 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18031 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18031 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!589454 () Bool)

(declare-fun lt!267418 () SeekEntryResult!6114)

(assert (=> b!589454 (= e!336521 (= lt!267418 lt!267411))))

(declare-fun res!377081 () Bool)

(assert (=> start!53998 (=> (not res!377081) (not e!336516))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53998 (= res!377081 (validMask!0 mask!3053))))

(assert (=> start!53998 e!336516))

(assert (=> start!53998 true))

(declare-fun array_inv!13441 (array!36796) Bool)

(assert (=> start!53998 (array_inv!13441 a!2986)))

(declare-fun b!589445 () Bool)

(declare-fun res!377091 () Bool)

(assert (=> b!589445 (=> (not res!377091) (not e!336517))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36796 (_ BitVec 32)) Bool)

(assert (=> b!589445 (= res!377091 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!589455 () Bool)

(assert (=> b!589455 (= e!336519 e!336520)))

(declare-fun res!377084 () Bool)

(assert (=> b!589455 (=> (not res!377084) (not e!336520))))

(assert (=> b!589455 (= res!377084 (and (= lt!267418 (Found!6114 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17667 a!2986) index!984) (select (arr!17667 a!2986) j!136))) (not (= (select (arr!17667 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!589455 (= lt!267418 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17667 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!589456 () Bool)

(assert (=> b!589456 (= e!336518 true)))

(assert (=> b!589456 (= (select (store (arr!17667 a!2986) i!1108 k!1786) index!984) (select (arr!17667 a!2986) j!136))))

(declare-fun b!589457 () Bool)

(declare-fun res!377090 () Bool)

(assert (=> b!589457 (=> (not res!377090) (not e!336517))))

(declare-datatypes ((List!11761 0))(
  ( (Nil!11758) (Cons!11757 (h!12802 (_ BitVec 64)) (t!17997 List!11761)) )
))
(declare-fun arrayNoDuplicates!0 (array!36796 (_ BitVec 32) List!11761) Bool)

(assert (=> b!589457 (= res!377090 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11758))))

(assert (= (and start!53998 res!377081) b!589453))

(assert (= (and b!589453 res!377088) b!589449))

(assert (= (and b!589449 res!377087) b!589451))

(assert (= (and b!589451 res!377089) b!589450))

(assert (= (and b!589450 res!377082) b!589447))

(assert (= (and b!589447 res!377092) b!589445))

(assert (= (and b!589445 res!377091) b!589457))

(assert (= (and b!589457 res!377090) b!589452))

(assert (= (and b!589452 res!377085) b!589446))

(assert (= (and b!589446 res!377086) b!589455))

(assert (= (and b!589455 res!377084) b!589443))

(assert (= (and b!589443 res!377083) b!589454))

(assert (= (and b!589443 c!66548) b!589448))

(assert (= (and b!589443 (not c!66548)) b!589444))

(assert (= (and b!589443 (not res!377093)) b!589456))

(declare-fun m!568009 () Bool)

(assert (=> b!589457 m!568009))

(declare-fun m!568011 () Bool)

(assert (=> b!589456 m!568011))

(declare-fun m!568013 () Bool)

(assert (=> b!589456 m!568013))

(declare-fun m!568015 () Bool)

(assert (=> b!589456 m!568015))

(declare-fun m!568017 () Bool)

(assert (=> b!589451 m!568017))

(declare-fun m!568019 () Bool)

(assert (=> start!53998 m!568019))

(declare-fun m!568021 () Bool)

(assert (=> start!53998 m!568021))

(declare-fun m!568023 () Bool)

(assert (=> b!589455 m!568023))

(assert (=> b!589455 m!568015))

(assert (=> b!589455 m!568015))

(declare-fun m!568025 () Bool)

(assert (=> b!589455 m!568025))

(assert (=> b!589449 m!568015))

(assert (=> b!589449 m!568015))

(declare-fun m!568027 () Bool)

(assert (=> b!589449 m!568027))

(declare-fun m!568029 () Bool)

(assert (=> b!589443 m!568029))

(declare-fun m!568031 () Bool)

(assert (=> b!589443 m!568031))

(declare-fun m!568033 () Bool)

(assert (=> b!589443 m!568033))

(assert (=> b!589443 m!568015))

(assert (=> b!589443 m!568011))

(declare-fun m!568035 () Bool)

(assert (=> b!589443 m!568035))

(declare-fun m!568037 () Bool)

(assert (=> b!589443 m!568037))

(assert (=> b!589443 m!568015))

(declare-fun m!568039 () Bool)

(assert (=> b!589443 m!568039))

(declare-fun m!568041 () Bool)

(assert (=> b!589450 m!568041))

(declare-fun m!568043 () Bool)

(assert (=> b!589452 m!568043))

(declare-fun m!568045 () Bool)

(assert (=> b!589447 m!568045))

(assert (=> b!589446 m!568011))

(declare-fun m!568047 () Bool)

(assert (=> b!589446 m!568047))

(declare-fun m!568049 () Bool)

(assert (=> b!589445 m!568049))

(push 1)

