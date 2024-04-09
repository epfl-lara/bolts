; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!56288 () Bool)

(assert start!56288)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun e!357706 () Bool)

(declare-fun b!623651 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!37676 0))(
  ( (array!37677 (arr!18079 (Array (_ BitVec 32) (_ BitVec 64))) (size!18443 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37676)

(assert (=> b!623651 (= e!357706 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18079 a!2986) index!984) (select (arr!18079 a!2986) j!136))) (not (= (select (arr!18079 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (= index!984 j!136)))))

(declare-fun b!623652 () Bool)

(declare-fun res!402025 () Bool)

(declare-fun e!357704 () Bool)

(assert (=> b!623652 (=> (not res!402025) (not e!357704))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!623652 (= res!402025 (and (= (size!18443 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18443 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18443 a!2986)) (not (= i!1108 j!136))))))

(declare-fun res!402023 () Bool)

(assert (=> start!56288 (=> (not res!402023) (not e!357704))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56288 (= res!402023 (validMask!0 mask!3053))))

(assert (=> start!56288 e!357704))

(assert (=> start!56288 true))

(declare-fun array_inv!13853 (array!37676) Bool)

(assert (=> start!56288 (array_inv!13853 a!2986)))

(declare-fun b!623653 () Bool)

(assert (=> b!623653 (= e!357704 e!357706)))

(declare-fun res!402024 () Bool)

(assert (=> b!623653 (=> (not res!402024) (not e!357706))))

(declare-datatypes ((SeekEntryResult!6526 0))(
  ( (MissingZero!6526 (index!28387 (_ BitVec 32))) (Found!6526 (index!28388 (_ BitVec 32))) (Intermediate!6526 (undefined!7338 Bool) (index!28389 (_ BitVec 32)) (x!57178 (_ BitVec 32))) (Undefined!6526) (MissingVacant!6526 (index!28390 (_ BitVec 32))) )
))
(declare-fun lt!289323 () SeekEntryResult!6526)

(assert (=> b!623653 (= res!402024 (or (= lt!289323 (MissingZero!6526 i!1108)) (= lt!289323 (MissingVacant!6526 i!1108))))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37676 (_ BitVec 32)) SeekEntryResult!6526)

(assert (=> b!623653 (= lt!289323 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!623654 () Bool)

(declare-fun res!402026 () Bool)

(assert (=> b!623654 (=> (not res!402026) (not e!357704))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!623654 (= res!402026 (validKeyInArray!0 k0!1786))))

(declare-fun b!623655 () Bool)

(declare-fun res!402017 () Bool)

(assert (=> b!623655 (=> (not res!402017) (not e!357704))))

(declare-fun arrayContainsKey!0 (array!37676 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!623655 (= res!402017 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!623656 () Bool)

(declare-fun res!402020 () Bool)

(assert (=> b!623656 (=> (not res!402020) (not e!357706))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37676 (_ BitVec 32)) Bool)

(assert (=> b!623656 (= res!402020 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!623657 () Bool)

(declare-fun res!402021 () Bool)

(assert (=> b!623657 (=> (not res!402021) (not e!357706))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37676 (_ BitVec 32)) SeekEntryResult!6526)

(assert (=> b!623657 (= res!402021 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18079 a!2986) j!136) a!2986 mask!3053) (Found!6526 j!136)))))

(declare-fun b!623658 () Bool)

(declare-fun res!402018 () Bool)

(assert (=> b!623658 (=> (not res!402018) (not e!357704))))

(assert (=> b!623658 (= res!402018 (validKeyInArray!0 (select (arr!18079 a!2986) j!136)))))

(declare-fun b!623659 () Bool)

(declare-fun res!402022 () Bool)

(assert (=> b!623659 (=> (not res!402022) (not e!357706))))

(assert (=> b!623659 (= res!402022 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18079 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18079 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!623660 () Bool)

(declare-fun res!402019 () Bool)

(assert (=> b!623660 (=> (not res!402019) (not e!357706))))

(declare-datatypes ((List!12173 0))(
  ( (Nil!12170) (Cons!12169 (h!13214 (_ BitVec 64)) (t!18409 List!12173)) )
))
(declare-fun arrayNoDuplicates!0 (array!37676 (_ BitVec 32) List!12173) Bool)

(assert (=> b!623660 (= res!402019 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12170))))

(assert (= (and start!56288 res!402023) b!623652))

(assert (= (and b!623652 res!402025) b!623658))

(assert (= (and b!623658 res!402018) b!623654))

(assert (= (and b!623654 res!402026) b!623655))

(assert (= (and b!623655 res!402017) b!623653))

(assert (= (and b!623653 res!402024) b!623656))

(assert (= (and b!623656 res!402020) b!623660))

(assert (= (and b!623660 res!402019) b!623659))

(assert (= (and b!623659 res!402022) b!623657))

(assert (= (and b!623657 res!402021) b!623651))

(declare-fun m!599467 () Bool)

(assert (=> start!56288 m!599467))

(declare-fun m!599469 () Bool)

(assert (=> start!56288 m!599469))

(declare-fun m!599471 () Bool)

(assert (=> b!623651 m!599471))

(declare-fun m!599473 () Bool)

(assert (=> b!623651 m!599473))

(declare-fun m!599475 () Bool)

(assert (=> b!623660 m!599475))

(declare-fun m!599477 () Bool)

(assert (=> b!623659 m!599477))

(declare-fun m!599479 () Bool)

(assert (=> b!623659 m!599479))

(declare-fun m!599481 () Bool)

(assert (=> b!623659 m!599481))

(declare-fun m!599483 () Bool)

(assert (=> b!623653 m!599483))

(declare-fun m!599485 () Bool)

(assert (=> b!623656 m!599485))

(declare-fun m!599487 () Bool)

(assert (=> b!623655 m!599487))

(assert (=> b!623657 m!599473))

(assert (=> b!623657 m!599473))

(declare-fun m!599489 () Bool)

(assert (=> b!623657 m!599489))

(assert (=> b!623658 m!599473))

(assert (=> b!623658 m!599473))

(declare-fun m!599491 () Bool)

(assert (=> b!623658 m!599491))

(declare-fun m!599493 () Bool)

(assert (=> b!623654 m!599493))

(check-sat (not b!623656) (not b!623654) (not b!623658) (not b!623655) (not b!623660) (not b!623657) (not b!623653) (not start!56288))
(check-sat)
