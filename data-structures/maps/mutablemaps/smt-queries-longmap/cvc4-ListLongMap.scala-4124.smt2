; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56302 () Bool)

(assert start!56302)

(declare-fun b!623946 () Bool)

(declare-fun e!357858 () Bool)

(declare-fun e!357859 () Bool)

(assert (=> b!623946 (= e!357858 e!357859)))

(declare-fun res!402281 () Bool)

(assert (=> b!623946 (=> (not res!402281) (not e!357859))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6533 0))(
  ( (MissingZero!6533 (index!28415 (_ BitVec 32))) (Found!6533 (index!28416 (_ BitVec 32))) (Intermediate!6533 (undefined!7345 Bool) (index!28417 (_ BitVec 32)) (x!57201 (_ BitVec 32))) (Undefined!6533) (MissingVacant!6533 (index!28418 (_ BitVec 32))) )
))
(declare-fun lt!289487 () SeekEntryResult!6533)

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!37690 0))(
  ( (array!37691 (arr!18086 (Array (_ BitVec 32) (_ BitVec 64))) (size!18450 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37690)

(assert (=> b!623946 (= res!402281 (and (= lt!289487 (Found!6533 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18086 a!2986) index!984) (select (arr!18086 a!2986) j!136))) (not (= (select (arr!18086 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37690 (_ BitVec 32)) SeekEntryResult!6533)

(assert (=> b!623946 (= lt!289487 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18086 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!623947 () Bool)

(declare-datatypes ((Unit!21062 0))(
  ( (Unit!21063) )
))
(declare-fun e!357856 () Unit!21062)

(declare-fun Unit!21064 () Unit!21062)

(assert (=> b!623947 (= e!357856 Unit!21064)))

(assert (=> b!623947 false))

(declare-fun b!623948 () Bool)

(declare-fun res!402284 () Bool)

(declare-fun e!357855 () Bool)

(assert (=> b!623948 (=> (not res!402284) (not e!357855))))

(assert (=> b!623948 (= res!402284 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18086 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!623949 () Bool)

(declare-fun res!402287 () Bool)

(declare-fun e!357857 () Bool)

(assert (=> b!623949 (=> (not res!402287) (not e!357857))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!623949 (= res!402287 (validKeyInArray!0 k!1786))))

(declare-fun b!623950 () Bool)

(declare-fun Unit!21065 () Unit!21062)

(assert (=> b!623950 (= e!357856 Unit!21065)))

(declare-fun b!623951 () Bool)

(declare-fun e!357853 () Bool)

(assert (=> b!623951 (= e!357859 (not e!357853))))

(declare-fun res!402280 () Bool)

(assert (=> b!623951 (=> res!402280 e!357853)))

(declare-fun lt!289484 () SeekEntryResult!6533)

(assert (=> b!623951 (= res!402280 (not (= lt!289484 (Found!6533 index!984))))))

(declare-fun lt!289485 () Unit!21062)

(assert (=> b!623951 (= lt!289485 e!357856)))

(declare-fun c!71201 () Bool)

(assert (=> b!623951 (= c!71201 (= lt!289484 Undefined!6533))))

(declare-fun lt!289480 () (_ BitVec 64))

(declare-fun lt!289488 () array!37690)

(assert (=> b!623951 (= lt!289484 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!289480 lt!289488 mask!3053))))

(declare-fun e!357854 () Bool)

(assert (=> b!623951 e!357854))

(declare-fun res!402279 () Bool)

(assert (=> b!623951 (=> (not res!402279) (not e!357854))))

(declare-fun lt!289486 () (_ BitVec 32))

(declare-fun lt!289481 () SeekEntryResult!6533)

(assert (=> b!623951 (= res!402279 (= lt!289481 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!289486 vacantSpotIndex!68 lt!289480 lt!289488 mask!3053)))))

(assert (=> b!623951 (= lt!289481 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!289486 vacantSpotIndex!68 (select (arr!18086 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!623951 (= lt!289480 (select (store (arr!18086 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!289482 () Unit!21062)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37690 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21062)

(assert (=> b!623951 (= lt!289482 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!289486 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!623951 (= lt!289486 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!623952 () Bool)

(declare-fun res!402288 () Bool)

(assert (=> b!623952 (=> (not res!402288) (not e!357855))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37690 (_ BitVec 32)) Bool)

(assert (=> b!623952 (= res!402288 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!623953 () Bool)

(declare-fun res!402290 () Bool)

(assert (=> b!623953 (=> (not res!402290) (not e!357855))))

(declare-datatypes ((List!12180 0))(
  ( (Nil!12177) (Cons!12176 (h!13221 (_ BitVec 64)) (t!18416 List!12180)) )
))
(declare-fun arrayNoDuplicates!0 (array!37690 (_ BitVec 32) List!12180) Bool)

(assert (=> b!623953 (= res!402290 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12177))))

(declare-fun b!623954 () Bool)

(assert (=> b!623954 (= e!357853 (or (not (= (select (arr!18086 a!2986) j!136) lt!289480)) (= (select (arr!18086 a!2986) j!136) (select (store (arr!18086 a!2986) i!1108 k!1786) index!984))))))

(assert (=> b!623954 (= (select (store (arr!18086 a!2986) i!1108 k!1786) index!984) (select (arr!18086 a!2986) j!136))))

(declare-fun res!402289 () Bool)

(assert (=> start!56302 (=> (not res!402289) (not e!357857))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56302 (= res!402289 (validMask!0 mask!3053))))

(assert (=> start!56302 e!357857))

(assert (=> start!56302 true))

(declare-fun array_inv!13860 (array!37690) Bool)

(assert (=> start!56302 (array_inv!13860 a!2986)))

(declare-fun b!623955 () Bool)

(assert (=> b!623955 (= e!357857 e!357855)))

(declare-fun res!402286 () Bool)

(assert (=> b!623955 (=> (not res!402286) (not e!357855))))

(declare-fun lt!289483 () SeekEntryResult!6533)

(assert (=> b!623955 (= res!402286 (or (= lt!289483 (MissingZero!6533 i!1108)) (= lt!289483 (MissingVacant!6533 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37690 (_ BitVec 32)) SeekEntryResult!6533)

(assert (=> b!623955 (= lt!289483 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!623956 () Bool)

(declare-fun res!402285 () Bool)

(assert (=> b!623956 (=> (not res!402285) (not e!357857))))

(assert (=> b!623956 (= res!402285 (and (= (size!18450 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18450 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18450 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!623957 () Bool)

(assert (=> b!623957 (= e!357855 e!357858)))

(declare-fun res!402282 () Bool)

(assert (=> b!623957 (=> (not res!402282) (not e!357858))))

(assert (=> b!623957 (= res!402282 (= (select (store (arr!18086 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!623957 (= lt!289488 (array!37691 (store (arr!18086 a!2986) i!1108 k!1786) (size!18450 a!2986)))))

(declare-fun b!623958 () Bool)

(assert (=> b!623958 (= e!357854 (= lt!289487 lt!289481))))

(declare-fun b!623959 () Bool)

(declare-fun res!402283 () Bool)

(assert (=> b!623959 (=> (not res!402283) (not e!357857))))

(declare-fun arrayContainsKey!0 (array!37690 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!623959 (= res!402283 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!623960 () Bool)

(declare-fun res!402278 () Bool)

(assert (=> b!623960 (=> (not res!402278) (not e!357857))))

(assert (=> b!623960 (= res!402278 (validKeyInArray!0 (select (arr!18086 a!2986) j!136)))))

(assert (= (and start!56302 res!402289) b!623956))

(assert (= (and b!623956 res!402285) b!623960))

(assert (= (and b!623960 res!402278) b!623949))

(assert (= (and b!623949 res!402287) b!623959))

(assert (= (and b!623959 res!402283) b!623955))

(assert (= (and b!623955 res!402286) b!623952))

(assert (= (and b!623952 res!402288) b!623953))

(assert (= (and b!623953 res!402290) b!623948))

(assert (= (and b!623948 res!402284) b!623957))

(assert (= (and b!623957 res!402282) b!623946))

(assert (= (and b!623946 res!402281) b!623951))

(assert (= (and b!623951 res!402279) b!623958))

(assert (= (and b!623951 c!71201) b!623947))

(assert (= (and b!623951 (not c!71201)) b!623950))

(assert (= (and b!623951 (not res!402280)) b!623954))

(declare-fun m!599733 () Bool)

(assert (=> b!623959 m!599733))

(declare-fun m!599735 () Bool)

(assert (=> b!623946 m!599735))

(declare-fun m!599737 () Bool)

(assert (=> b!623946 m!599737))

(assert (=> b!623946 m!599737))

(declare-fun m!599739 () Bool)

(assert (=> b!623946 m!599739))

(declare-fun m!599741 () Bool)

(assert (=> b!623951 m!599741))

(declare-fun m!599743 () Bool)

(assert (=> b!623951 m!599743))

(assert (=> b!623951 m!599737))

(declare-fun m!599745 () Bool)

(assert (=> b!623951 m!599745))

(declare-fun m!599747 () Bool)

(assert (=> b!623951 m!599747))

(declare-fun m!599749 () Bool)

(assert (=> b!623951 m!599749))

(assert (=> b!623951 m!599737))

(declare-fun m!599751 () Bool)

(assert (=> b!623951 m!599751))

(declare-fun m!599753 () Bool)

(assert (=> b!623951 m!599753))

(declare-fun m!599755 () Bool)

(assert (=> b!623955 m!599755))

(assert (=> b!623960 m!599737))

(assert (=> b!623960 m!599737))

(declare-fun m!599757 () Bool)

(assert (=> b!623960 m!599757))

(declare-fun m!599759 () Bool)

(assert (=> b!623953 m!599759))

(assert (=> b!623954 m!599737))

(assert (=> b!623954 m!599747))

(declare-fun m!599761 () Bool)

(assert (=> b!623954 m!599761))

(declare-fun m!599763 () Bool)

(assert (=> b!623949 m!599763))

(assert (=> b!623957 m!599747))

(declare-fun m!599765 () Bool)

(assert (=> b!623957 m!599765))

(declare-fun m!599767 () Bool)

(assert (=> b!623952 m!599767))

(declare-fun m!599769 () Bool)

(assert (=> start!56302 m!599769))

(declare-fun m!599771 () Bool)

(assert (=> start!56302 m!599771))

(declare-fun m!599773 () Bool)

(assert (=> b!623948 m!599773))

(push 1)

