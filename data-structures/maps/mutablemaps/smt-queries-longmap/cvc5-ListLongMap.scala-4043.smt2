; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!55140 () Bool)

(assert start!55140)

(declare-fun b!603520 () Bool)

(declare-datatypes ((Unit!19156 0))(
  ( (Unit!19157) )
))
(declare-fun e!345281 () Unit!19156)

(declare-fun Unit!19158 () Unit!19156)

(assert (=> b!603520 (= e!345281 Unit!19158)))

(assert (=> b!603520 false))

(declare-fun res!387754 () Bool)

(declare-fun e!345283 () Bool)

(assert (=> start!55140 (=> (not res!387754) (not e!345283))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55140 (= res!387754 (validMask!0 mask!3053))))

(assert (=> start!55140 e!345283))

(assert (=> start!55140 true))

(declare-datatypes ((array!37176 0))(
  ( (array!37177 (arr!17841 (Array (_ BitVec 32) (_ BitVec 64))) (size!18205 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37176)

(declare-fun array_inv!13615 (array!37176) Bool)

(assert (=> start!55140 (array_inv!13615 a!2986)))

(declare-fun b!603521 () Bool)

(declare-fun e!345275 () Bool)

(declare-fun e!345282 () Bool)

(assert (=> b!603521 (= e!345275 e!345282)))

(declare-fun res!387744 () Bool)

(assert (=> b!603521 (=> (not res!387744) (not e!345282))))

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6288 0))(
  ( (MissingZero!6288 (index!27414 (_ BitVec 32))) (Found!6288 (index!27415 (_ BitVec 32))) (Intermediate!6288 (undefined!7100 Bool) (index!27416 (_ BitVec 32)) (x!56242 (_ BitVec 32))) (Undefined!6288) (MissingVacant!6288 (index!27417 (_ BitVec 32))) )
))
(declare-fun lt!275141 () SeekEntryResult!6288)

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!603521 (= res!387744 (and (= lt!275141 (Found!6288 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17841 a!2986) index!984) (select (arr!17841 a!2986) j!136))) (not (= (select (arr!17841 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37176 (_ BitVec 32)) SeekEntryResult!6288)

(assert (=> b!603521 (= lt!275141 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17841 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!603522 () Bool)

(declare-fun Unit!19159 () Unit!19156)

(assert (=> b!603522 (= e!345281 Unit!19159)))

(declare-fun b!603523 () Bool)

(declare-fun e!345278 () Bool)

(assert (=> b!603523 (= e!345283 e!345278)))

(declare-fun res!387757 () Bool)

(assert (=> b!603523 (=> (not res!387757) (not e!345278))))

(declare-fun lt!275138 () SeekEntryResult!6288)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!603523 (= res!387757 (or (= lt!275138 (MissingZero!6288 i!1108)) (= lt!275138 (MissingVacant!6288 i!1108))))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37176 (_ BitVec 32)) SeekEntryResult!6288)

(assert (=> b!603523 (= lt!275138 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!603524 () Bool)

(declare-fun res!387756 () Bool)

(assert (=> b!603524 (=> (not res!387756) (not e!345283))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!603524 (= res!387756 (validKeyInArray!0 k!1786))))

(declare-fun b!603525 () Bool)

(declare-fun e!345279 () Unit!19156)

(declare-fun Unit!19160 () Unit!19156)

(assert (=> b!603525 (= e!345279 Unit!19160)))

(declare-fun lt!275146 () Unit!19156)

(declare-fun lt!275149 () array!37176)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37176 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19156)

(assert (=> b!603525 (= lt!275146 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!275149 (select (arr!17841 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun arrayContainsKey!0 (array!37176 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!603525 (arrayContainsKey!0 lt!275149 (select (arr!17841 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!275137 () Unit!19156)

(declare-datatypes ((List!11935 0))(
  ( (Nil!11932) (Cons!11931 (h!12976 (_ BitVec 64)) (t!18171 List!11935)) )
))
(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37176 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11935) Unit!19156)

(assert (=> b!603525 (= lt!275137 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11932))))

(declare-fun arrayNoDuplicates!0 (array!37176 (_ BitVec 32) List!11935) Bool)

(assert (=> b!603525 (arrayNoDuplicates!0 lt!275149 #b00000000000000000000000000000000 Nil!11932)))

(declare-fun lt!275139 () Unit!19156)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37176 (_ BitVec 32) (_ BitVec 32)) Unit!19156)

(assert (=> b!603525 (= lt!275139 (lemmaNoDuplicateFromThenFromBigger!0 lt!275149 #b00000000000000000000000000000000 j!136))))

(assert (=> b!603525 (arrayNoDuplicates!0 lt!275149 j!136 Nil!11932)))

(declare-fun lt!275140 () Unit!19156)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37176 (_ BitVec 64) (_ BitVec 32) List!11935) Unit!19156)

(assert (=> b!603525 (= lt!275140 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!275149 (select (arr!17841 a!2986) j!136) j!136 Nil!11932))))

(assert (=> b!603525 false))

(declare-fun b!603526 () Bool)

(declare-fun e!345285 () Bool)

(assert (=> b!603526 (= e!345285 (arrayContainsKey!0 lt!275149 (select (arr!17841 a!2986) j!136) index!984))))

(declare-fun b!603527 () Bool)

(declare-fun e!345289 () Bool)

(assert (=> b!603527 (= e!345289 true)))

(assert (=> b!603527 e!345285))

(declare-fun res!387740 () Bool)

(assert (=> b!603527 (=> (not res!387740) (not e!345285))))

(assert (=> b!603527 (= res!387740 (arrayContainsKey!0 lt!275149 (select (arr!17841 a!2986) j!136) j!136))))

(declare-fun b!603528 () Bool)

(declare-fun res!387755 () Bool)

(assert (=> b!603528 (=> (not res!387755) (not e!345283))))

(assert (=> b!603528 (= res!387755 (validKeyInArray!0 (select (arr!17841 a!2986) j!136)))))

(declare-fun b!603529 () Bool)

(declare-fun res!387753 () Bool)

(assert (=> b!603529 (=> (not res!387753) (not e!345278))))

(assert (=> b!603529 (= res!387753 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11932))))

(declare-fun b!603530 () Bool)

(declare-fun res!387742 () Bool)

(assert (=> b!603530 (=> (not res!387742) (not e!345283))))

(assert (=> b!603530 (= res!387742 (and (= (size!18205 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18205 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18205 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!603531 () Bool)

(declare-fun e!345280 () Bool)

(assert (=> b!603531 (= e!345282 (not e!345280))))

(declare-fun res!387749 () Bool)

(assert (=> b!603531 (=> res!387749 e!345280)))

(declare-fun lt!275143 () SeekEntryResult!6288)

(assert (=> b!603531 (= res!387749 (not (= lt!275143 (Found!6288 index!984))))))

(declare-fun lt!275151 () Unit!19156)

(assert (=> b!603531 (= lt!275151 e!345281)))

(declare-fun c!68257 () Bool)

(assert (=> b!603531 (= c!68257 (= lt!275143 Undefined!6288))))

(declare-fun lt!275147 () (_ BitVec 64))

(assert (=> b!603531 (= lt!275143 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!275147 lt!275149 mask!3053))))

(declare-fun e!345284 () Bool)

(assert (=> b!603531 e!345284))

(declare-fun res!387745 () Bool)

(assert (=> b!603531 (=> (not res!387745) (not e!345284))))

(declare-fun lt!275145 () (_ BitVec 32))

(declare-fun lt!275142 () SeekEntryResult!6288)

(assert (=> b!603531 (= res!387745 (= lt!275142 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!275145 vacantSpotIndex!68 lt!275147 lt!275149 mask!3053)))))

(assert (=> b!603531 (= lt!275142 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!275145 vacantSpotIndex!68 (select (arr!17841 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!603531 (= lt!275147 (select (store (arr!17841 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!275144 () Unit!19156)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37176 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19156)

(assert (=> b!603531 (= lt!275144 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!275145 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!603531 (= lt!275145 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!603532 () Bool)

(declare-fun e!345277 () Bool)

(assert (=> b!603532 (= e!345277 (arrayContainsKey!0 lt!275149 (select (arr!17841 a!2986) j!136) index!984))))

(declare-fun b!603533 () Bool)

(assert (=> b!603533 (= e!345284 (= lt!275141 lt!275142))))

(declare-fun b!603534 () Bool)

(declare-fun res!387748 () Bool)

(assert (=> b!603534 (=> (not res!387748) (not e!345278))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37176 (_ BitVec 32)) Bool)

(assert (=> b!603534 (= res!387748 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!603535 () Bool)

(assert (=> b!603535 (= e!345278 e!345275)))

(declare-fun res!387747 () Bool)

(assert (=> b!603535 (=> (not res!387747) (not e!345275))))

(assert (=> b!603535 (= res!387747 (= (select (store (arr!17841 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!603535 (= lt!275149 (array!37177 (store (arr!17841 a!2986) i!1108 k!1786) (size!18205 a!2986)))))

(declare-fun b!603536 () Bool)

(declare-fun res!387751 () Bool)

(assert (=> b!603536 (=> (not res!387751) (not e!345283))))

(assert (=> b!603536 (= res!387751 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!603537 () Bool)

(declare-fun Unit!19161 () Unit!19156)

(assert (=> b!603537 (= e!345279 Unit!19161)))

(declare-fun b!603538 () Bool)

(declare-fun e!345276 () Bool)

(assert (=> b!603538 (= e!345280 e!345276)))

(declare-fun res!387752 () Bool)

(assert (=> b!603538 (=> res!387752 e!345276)))

(declare-fun lt!275150 () (_ BitVec 64))

(assert (=> b!603538 (= res!387752 (or (not (= (select (arr!17841 a!2986) j!136) lt!275147)) (not (= (select (arr!17841 a!2986) j!136) lt!275150))))))

(declare-fun e!345287 () Bool)

(assert (=> b!603538 e!345287))

(declare-fun res!387741 () Bool)

(assert (=> b!603538 (=> (not res!387741) (not e!345287))))

(assert (=> b!603538 (= res!387741 (= lt!275150 (select (arr!17841 a!2986) j!136)))))

(assert (=> b!603538 (= lt!275150 (select (store (arr!17841 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!603539 () Bool)

(declare-fun e!345286 () Bool)

(assert (=> b!603539 (= e!345287 e!345286)))

(declare-fun res!387746 () Bool)

(assert (=> b!603539 (=> res!387746 e!345286)))

(assert (=> b!603539 (= res!387746 (or (not (= (select (arr!17841 a!2986) j!136) lt!275147)) (not (= (select (arr!17841 a!2986) j!136) lt!275150)) (bvsge j!136 index!984)))))

(declare-fun b!603540 () Bool)

(assert (=> b!603540 (= e!345276 e!345289)))

(declare-fun res!387750 () Bool)

(assert (=> b!603540 (=> res!387750 e!345289)))

(assert (=> b!603540 (= res!387750 (bvsge index!984 j!136))))

(declare-fun lt!275148 () Unit!19156)

(assert (=> b!603540 (= lt!275148 e!345279)))

(declare-fun c!68258 () Bool)

(assert (=> b!603540 (= c!68258 (bvslt j!136 index!984))))

(declare-fun b!603541 () Bool)

(assert (=> b!603541 (= e!345286 e!345277)))

(declare-fun res!387758 () Bool)

(assert (=> b!603541 (=> (not res!387758) (not e!345277))))

(assert (=> b!603541 (= res!387758 (arrayContainsKey!0 lt!275149 (select (arr!17841 a!2986) j!136) j!136))))

(declare-fun b!603542 () Bool)

(declare-fun res!387743 () Bool)

(assert (=> b!603542 (=> (not res!387743) (not e!345278))))

(assert (=> b!603542 (= res!387743 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17841 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!55140 res!387754) b!603530))

(assert (= (and b!603530 res!387742) b!603528))

(assert (= (and b!603528 res!387755) b!603524))

(assert (= (and b!603524 res!387756) b!603536))

(assert (= (and b!603536 res!387751) b!603523))

(assert (= (and b!603523 res!387757) b!603534))

(assert (= (and b!603534 res!387748) b!603529))

(assert (= (and b!603529 res!387753) b!603542))

(assert (= (and b!603542 res!387743) b!603535))

(assert (= (and b!603535 res!387747) b!603521))

(assert (= (and b!603521 res!387744) b!603531))

(assert (= (and b!603531 res!387745) b!603533))

(assert (= (and b!603531 c!68257) b!603520))

(assert (= (and b!603531 (not c!68257)) b!603522))

(assert (= (and b!603531 (not res!387749)) b!603538))

(assert (= (and b!603538 res!387741) b!603539))

(assert (= (and b!603539 (not res!387746)) b!603541))

(assert (= (and b!603541 res!387758) b!603532))

(assert (= (and b!603538 (not res!387752)) b!603540))

(assert (= (and b!603540 c!68258) b!603525))

(assert (= (and b!603540 (not c!68258)) b!603537))

(assert (= (and b!603540 (not res!387750)) b!603527))

(assert (= (and b!603527 res!387740) b!603526))

(declare-fun m!580551 () Bool)

(assert (=> start!55140 m!580551))

(declare-fun m!580553 () Bool)

(assert (=> start!55140 m!580553))

(declare-fun m!580555 () Bool)

(assert (=> b!603521 m!580555))

(declare-fun m!580557 () Bool)

(assert (=> b!603521 m!580557))

(assert (=> b!603521 m!580557))

(declare-fun m!580559 () Bool)

(assert (=> b!603521 m!580559))

(declare-fun m!580561 () Bool)

(assert (=> b!603523 m!580561))

(assert (=> b!603539 m!580557))

(declare-fun m!580563 () Bool)

(assert (=> b!603529 m!580563))

(declare-fun m!580565 () Bool)

(assert (=> b!603535 m!580565))

(declare-fun m!580567 () Bool)

(assert (=> b!603535 m!580567))

(declare-fun m!580569 () Bool)

(assert (=> b!603542 m!580569))

(assert (=> b!603528 m!580557))

(assert (=> b!603528 m!580557))

(declare-fun m!580571 () Bool)

(assert (=> b!603528 m!580571))

(declare-fun m!580573 () Bool)

(assert (=> b!603524 m!580573))

(assert (=> b!603527 m!580557))

(assert (=> b!603527 m!580557))

(declare-fun m!580575 () Bool)

(assert (=> b!603527 m!580575))

(assert (=> b!603525 m!580557))

(assert (=> b!603525 m!580557))

(declare-fun m!580577 () Bool)

(assert (=> b!603525 m!580577))

(declare-fun m!580579 () Bool)

(assert (=> b!603525 m!580579))

(declare-fun m!580581 () Bool)

(assert (=> b!603525 m!580581))

(assert (=> b!603525 m!580557))

(declare-fun m!580583 () Bool)

(assert (=> b!603525 m!580583))

(declare-fun m!580585 () Bool)

(assert (=> b!603525 m!580585))

(declare-fun m!580587 () Bool)

(assert (=> b!603525 m!580587))

(assert (=> b!603525 m!580557))

(declare-fun m!580589 () Bool)

(assert (=> b!603525 m!580589))

(declare-fun m!580591 () Bool)

(assert (=> b!603534 m!580591))

(assert (=> b!603526 m!580557))

(assert (=> b!603526 m!580557))

(declare-fun m!580593 () Bool)

(assert (=> b!603526 m!580593))

(declare-fun m!580595 () Bool)

(assert (=> b!603536 m!580595))

(declare-fun m!580597 () Bool)

(assert (=> b!603531 m!580597))

(declare-fun m!580599 () Bool)

(assert (=> b!603531 m!580599))

(declare-fun m!580601 () Bool)

(assert (=> b!603531 m!580601))

(assert (=> b!603531 m!580557))

(assert (=> b!603531 m!580565))

(assert (=> b!603531 m!580557))

(declare-fun m!580603 () Bool)

(assert (=> b!603531 m!580603))

(declare-fun m!580605 () Bool)

(assert (=> b!603531 m!580605))

(declare-fun m!580607 () Bool)

(assert (=> b!603531 m!580607))

(assert (=> b!603532 m!580557))

(assert (=> b!603532 m!580557))

(assert (=> b!603532 m!580593))

(assert (=> b!603541 m!580557))

(assert (=> b!603541 m!580557))

(assert (=> b!603541 m!580575))

(assert (=> b!603538 m!580557))

(assert (=> b!603538 m!580565))

(declare-fun m!580609 () Bool)

(assert (=> b!603538 m!580609))

(push 1)

