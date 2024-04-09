; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53762 () Bool)

(assert start!53762)

(declare-fun b!586045 () Bool)

(declare-fun e!335102 () Bool)

(assert (=> b!586045 (= e!335102 (not true))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!266002 () (_ BitVec 32))

(declare-datatypes ((array!36617 0))(
  ( (array!36618 (arr!17579 (Array (_ BitVec 32) (_ BitVec 64))) (size!17943 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36617)

(declare-datatypes ((SeekEntryResult!6026 0))(
  ( (MissingZero!6026 (index!26331 (_ BitVec 32))) (Found!6026 (index!26332 (_ BitVec 32))) (Intermediate!6026 (undefined!6838 Bool) (index!26333 (_ BitVec 32)) (x!55170 (_ BitVec 32))) (Undefined!6026) (MissingVacant!6026 (index!26334 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36617 (_ BitVec 32)) SeekEntryResult!6026)

(assert (=> b!586045 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266002 vacantSpotIndex!68 (select (arr!17579 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266002 vacantSpotIndex!68 (select (store (arr!17579 a!2986) i!1108 k!1786) j!136) (array!36618 (store (arr!17579 a!2986) i!1108 k!1786) (size!17943 a!2986)) mask!3053))))

(declare-datatypes ((Unit!18176 0))(
  ( (Unit!18177) )
))
(declare-fun lt!266001 () Unit!18176)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36617 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18176)

(assert (=> b!586045 (= lt!266001 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!266002 vacantSpotIndex!68 mask!3053))))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!586045 (= lt!266002 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!586046 () Bool)

(declare-fun res!374011 () Bool)

(assert (=> b!586046 (=> (not res!374011) (not e!335102))))

(assert (=> b!586046 (= res!374011 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17579 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17579 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!586047 () Bool)

(declare-fun res!374015 () Bool)

(declare-fun e!335103 () Bool)

(assert (=> b!586047 (=> (not res!374015) (not e!335103))))

(assert (=> b!586047 (= res!374015 (and (= (size!17943 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17943 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17943 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!586048 () Bool)

(declare-fun res!374012 () Bool)

(assert (=> b!586048 (=> (not res!374012) (not e!335102))))

(assert (=> b!586048 (= res!374012 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17579 a!2986) j!136) a!2986 mask!3053) (Found!6026 j!136)))))

(declare-fun b!586049 () Bool)

(declare-fun res!374014 () Bool)

(assert (=> b!586049 (=> (not res!374014) (not e!335103))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!586049 (= res!374014 (validKeyInArray!0 k!1786))))

(declare-fun b!586050 () Bool)

(declare-fun res!374020 () Bool)

(assert (=> b!586050 (=> (not res!374020) (not e!335103))))

(assert (=> b!586050 (= res!374020 (validKeyInArray!0 (select (arr!17579 a!2986) j!136)))))

(declare-fun b!586051 () Bool)

(declare-fun res!374013 () Bool)

(assert (=> b!586051 (=> (not res!374013) (not e!335103))))

(declare-fun arrayContainsKey!0 (array!36617 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!586051 (= res!374013 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!586052 () Bool)

(declare-fun res!374021 () Bool)

(assert (=> b!586052 (=> (not res!374021) (not e!335102))))

(assert (=> b!586052 (= res!374021 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17579 a!2986) index!984) (select (arr!17579 a!2986) j!136))) (not (= (select (arr!17579 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!586054 () Bool)

(assert (=> b!586054 (= e!335103 e!335102)))

(declare-fun res!374019 () Bool)

(assert (=> b!586054 (=> (not res!374019) (not e!335102))))

(declare-fun lt!266003 () SeekEntryResult!6026)

(assert (=> b!586054 (= res!374019 (or (= lt!266003 (MissingZero!6026 i!1108)) (= lt!266003 (MissingVacant!6026 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36617 (_ BitVec 32)) SeekEntryResult!6026)

(assert (=> b!586054 (= lt!266003 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!586055 () Bool)

(declare-fun res!374016 () Bool)

(assert (=> b!586055 (=> (not res!374016) (not e!335102))))

(declare-datatypes ((List!11673 0))(
  ( (Nil!11670) (Cons!11669 (h!12714 (_ BitVec 64)) (t!17909 List!11673)) )
))
(declare-fun arrayNoDuplicates!0 (array!36617 (_ BitVec 32) List!11673) Bool)

(assert (=> b!586055 (= res!374016 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11670))))

(declare-fun res!374017 () Bool)

(assert (=> start!53762 (=> (not res!374017) (not e!335103))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53762 (= res!374017 (validMask!0 mask!3053))))

(assert (=> start!53762 e!335103))

(assert (=> start!53762 true))

(declare-fun array_inv!13353 (array!36617) Bool)

(assert (=> start!53762 (array_inv!13353 a!2986)))

(declare-fun b!586053 () Bool)

(declare-fun res!374018 () Bool)

(assert (=> b!586053 (=> (not res!374018) (not e!335102))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36617 (_ BitVec 32)) Bool)

(assert (=> b!586053 (= res!374018 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(assert (= (and start!53762 res!374017) b!586047))

(assert (= (and b!586047 res!374015) b!586050))

(assert (= (and b!586050 res!374020) b!586049))

(assert (= (and b!586049 res!374014) b!586051))

(assert (= (and b!586051 res!374013) b!586054))

(assert (= (and b!586054 res!374019) b!586053))

(assert (= (and b!586053 res!374018) b!586055))

(assert (= (and b!586055 res!374016) b!586046))

(assert (= (and b!586046 res!374011) b!586048))

(assert (= (and b!586048 res!374012) b!586052))

(assert (= (and b!586052 res!374021) b!586045))

(declare-fun m!564425 () Bool)

(assert (=> b!586048 m!564425))

(assert (=> b!586048 m!564425))

(declare-fun m!564427 () Bool)

(assert (=> b!586048 m!564427))

(declare-fun m!564429 () Bool)

(assert (=> b!586046 m!564429))

(declare-fun m!564431 () Bool)

(assert (=> b!586046 m!564431))

(declare-fun m!564433 () Bool)

(assert (=> b!586046 m!564433))

(declare-fun m!564435 () Bool)

(assert (=> b!586053 m!564435))

(declare-fun m!564437 () Bool)

(assert (=> b!586051 m!564437))

(declare-fun m!564439 () Bool)

(assert (=> b!586052 m!564439))

(assert (=> b!586052 m!564425))

(declare-fun m!564441 () Bool)

(assert (=> b!586049 m!564441))

(declare-fun m!564443 () Bool)

(assert (=> b!586045 m!564443))

(declare-fun m!564445 () Bool)

(assert (=> b!586045 m!564445))

(assert (=> b!586045 m!564425))

(declare-fun m!564447 () Bool)

(assert (=> b!586045 m!564447))

(assert (=> b!586045 m!564425))

(assert (=> b!586045 m!564431))

(assert (=> b!586045 m!564445))

(declare-fun m!564449 () Bool)

(assert (=> b!586045 m!564449))

(declare-fun m!564451 () Bool)

(assert (=> b!586045 m!564451))

(declare-fun m!564453 () Bool)

(assert (=> b!586055 m!564453))

(assert (=> b!586050 m!564425))

(assert (=> b!586050 m!564425))

(declare-fun m!564455 () Bool)

(assert (=> b!586050 m!564455))

(declare-fun m!564457 () Bool)

(assert (=> b!586054 m!564457))

(declare-fun m!564459 () Bool)

(assert (=> start!53762 m!564459))

(declare-fun m!564461 () Bool)

(assert (=> start!53762 m!564461))

(push 1)

