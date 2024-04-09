; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53790 () Bool)

(assert start!53790)

(declare-fun res!374473 () Bool)

(declare-fun e!335229 () Bool)

(assert (=> start!53790 (=> (not res!374473) (not e!335229))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53790 (= res!374473 (validMask!0 mask!3053))))

(assert (=> start!53790 e!335229))

(assert (=> start!53790 true))

(declare-datatypes ((array!36645 0))(
  ( (array!36646 (arr!17593 (Array (_ BitVec 32) (_ BitVec 64))) (size!17957 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36645)

(declare-fun array_inv!13367 (array!36645) Bool)

(assert (=> start!53790 (array_inv!13367 a!2986)))

(declare-fun b!586507 () Bool)

(declare-fun res!374477 () Bool)

(declare-fun e!335230 () Bool)

(assert (=> b!586507 (=> (not res!374477) (not e!335230))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6040 0))(
  ( (MissingZero!6040 (index!26387 (_ BitVec 32))) (Found!6040 (index!26388 (_ BitVec 32))) (Intermediate!6040 (undefined!6852 Bool) (index!26389 (_ BitVec 32)) (x!55224 (_ BitVec 32))) (Undefined!6040) (MissingVacant!6040 (index!26390 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36645 (_ BitVec 32)) SeekEntryResult!6040)

(assert (=> b!586507 (= res!374477 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17593 a!2986) j!136) a!2986 mask!3053) (Found!6040 j!136)))))

(declare-fun b!586508 () Bool)

(declare-fun res!374481 () Bool)

(assert (=> b!586508 (=> (not res!374481) (not e!335230))))

(assert (=> b!586508 (= res!374481 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17593 a!2986) index!984) (select (arr!17593 a!2986) j!136))) (not (= (select (arr!17593 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!586509 () Bool)

(declare-fun res!374478 () Bool)

(assert (=> b!586509 (=> (not res!374478) (not e!335229))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!586509 (= res!374478 (validKeyInArray!0 (select (arr!17593 a!2986) j!136)))))

(declare-fun b!586510 () Bool)

(declare-fun res!374480 () Bool)

(assert (=> b!586510 (=> (not res!374480) (not e!335230))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36645 (_ BitVec 32)) Bool)

(assert (=> b!586510 (= res!374480 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!586511 () Bool)

(declare-fun res!374474 () Bool)

(assert (=> b!586511 (=> (not res!374474) (not e!335230))))

(declare-datatypes ((List!11687 0))(
  ( (Nil!11684) (Cons!11683 (h!12728 (_ BitVec 64)) (t!17923 List!11687)) )
))
(declare-fun arrayNoDuplicates!0 (array!36645 (_ BitVec 32) List!11687) Bool)

(assert (=> b!586511 (= res!374474 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11684))))

(declare-fun b!586512 () Bool)

(declare-fun res!374475 () Bool)

(assert (=> b!586512 (=> (not res!374475) (not e!335229))))

(declare-fun k0!1786 () (_ BitVec 64))

(assert (=> b!586512 (= res!374475 (validKeyInArray!0 k0!1786))))

(declare-fun b!586513 () Bool)

(declare-fun res!374483 () Bool)

(assert (=> b!586513 (=> (not res!374483) (not e!335229))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!586513 (= res!374483 (and (= (size!17957 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17957 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17957 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!586514 () Bool)

(assert (=> b!586514 (= e!335229 e!335230)))

(declare-fun res!374479 () Bool)

(assert (=> b!586514 (=> (not res!374479) (not e!335230))))

(declare-fun lt!266129 () SeekEntryResult!6040)

(assert (=> b!586514 (= res!374479 (or (= lt!266129 (MissingZero!6040 i!1108)) (= lt!266129 (MissingVacant!6040 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36645 (_ BitVec 32)) SeekEntryResult!6040)

(assert (=> b!586514 (= lt!266129 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!586515 () Bool)

(declare-fun res!374476 () Bool)

(assert (=> b!586515 (=> (not res!374476) (not e!335229))))

(declare-fun arrayContainsKey!0 (array!36645 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!586515 (= res!374476 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!586516 () Bool)

(declare-fun res!374482 () Bool)

(assert (=> b!586516 (=> (not res!374482) (not e!335230))))

(assert (=> b!586516 (= res!374482 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17593 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17593 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!586517 () Bool)

(assert (=> b!586517 (= e!335230 (not true))))

(declare-fun lt!266127 () (_ BitVec 32))

(assert (=> b!586517 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266127 vacantSpotIndex!68 (select (arr!17593 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266127 vacantSpotIndex!68 (select (store (arr!17593 a!2986) i!1108 k0!1786) j!136) (array!36646 (store (arr!17593 a!2986) i!1108 k0!1786) (size!17957 a!2986)) mask!3053))))

(declare-datatypes ((Unit!18204 0))(
  ( (Unit!18205) )
))
(declare-fun lt!266128 () Unit!18204)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36645 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18204)

(assert (=> b!586517 (= lt!266128 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!266127 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!586517 (= lt!266127 (nextIndex!0 index!984 x!910 mask!3053))))

(assert (= (and start!53790 res!374473) b!586513))

(assert (= (and b!586513 res!374483) b!586509))

(assert (= (and b!586509 res!374478) b!586512))

(assert (= (and b!586512 res!374475) b!586515))

(assert (= (and b!586515 res!374476) b!586514))

(assert (= (and b!586514 res!374479) b!586510))

(assert (= (and b!586510 res!374480) b!586511))

(assert (= (and b!586511 res!374474) b!586516))

(assert (= (and b!586516 res!374482) b!586507))

(assert (= (and b!586507 res!374477) b!586508))

(assert (= (and b!586508 res!374481) b!586517))

(declare-fun m!564957 () Bool)

(assert (=> b!586517 m!564957))

(declare-fun m!564959 () Bool)

(assert (=> b!586517 m!564959))

(declare-fun m!564961 () Bool)

(assert (=> b!586517 m!564961))

(assert (=> b!586517 m!564961))

(declare-fun m!564963 () Bool)

(assert (=> b!586517 m!564963))

(assert (=> b!586517 m!564959))

(declare-fun m!564965 () Bool)

(assert (=> b!586517 m!564965))

(declare-fun m!564967 () Bool)

(assert (=> b!586517 m!564967))

(declare-fun m!564969 () Bool)

(assert (=> b!586517 m!564969))

(declare-fun m!564971 () Bool)

(assert (=> b!586514 m!564971))

(declare-fun m!564973 () Bool)

(assert (=> b!586508 m!564973))

(assert (=> b!586508 m!564961))

(declare-fun m!564975 () Bool)

(assert (=> b!586510 m!564975))

(declare-fun m!564977 () Bool)

(assert (=> start!53790 m!564977))

(declare-fun m!564979 () Bool)

(assert (=> start!53790 m!564979))

(declare-fun m!564981 () Bool)

(assert (=> b!586511 m!564981))

(declare-fun m!564983 () Bool)

(assert (=> b!586515 m!564983))

(declare-fun m!564985 () Bool)

(assert (=> b!586516 m!564985))

(assert (=> b!586516 m!564967))

(declare-fun m!564987 () Bool)

(assert (=> b!586516 m!564987))

(declare-fun m!564989 () Bool)

(assert (=> b!586512 m!564989))

(assert (=> b!586509 m!564961))

(assert (=> b!586509 m!564961))

(declare-fun m!564991 () Bool)

(assert (=> b!586509 m!564991))

(assert (=> b!586507 m!564961))

(assert (=> b!586507 m!564961))

(declare-fun m!564993 () Bool)

(assert (=> b!586507 m!564993))

(check-sat (not b!586510) (not b!586512) (not b!586517) (not b!586514) (not b!586515) (not b!586509) (not b!586507) (not start!53790) (not b!586511))
(check-sat)
