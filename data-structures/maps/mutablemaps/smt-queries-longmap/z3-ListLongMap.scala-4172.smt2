; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!56840 () Bool)

(assert start!56840)

(declare-fun b!629290 () Bool)

(declare-fun res!406871 () Bool)

(declare-fun e!359882 () Bool)

(assert (=> b!629290 (=> (not res!406871) (not e!359882))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!37991 0))(
  ( (array!37992 (arr!18229 (Array (_ BitVec 32) (_ BitVec 64))) (size!18593 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37991)

(assert (=> b!629290 (= res!406871 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18229 a!2986) index!984) (select (arr!18229 a!2986) j!136))) (not (= (select (arr!18229 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!629291 () Bool)

(declare-fun res!406867 () Bool)

(assert (=> b!629291 (=> (not res!406867) (not e!359882))))

(declare-datatypes ((List!12323 0))(
  ( (Nil!12320) (Cons!12319 (h!13364 (_ BitVec 64)) (t!18559 List!12323)) )
))
(declare-fun arrayNoDuplicates!0 (array!37991 (_ BitVec 32) List!12323) Bool)

(assert (=> b!629291 (= res!406867 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12320))))

(declare-fun b!629292 () Bool)

(declare-fun res!406872 () Bool)

(declare-fun e!359884 () Bool)

(assert (=> b!629292 (=> (not res!406872) (not e!359884))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!629292 (= res!406872 (validKeyInArray!0 (select (arr!18229 a!2986) j!136)))))

(declare-fun b!629293 () Bool)

(declare-fun res!406868 () Bool)

(assert (=> b!629293 (=> (not res!406868) (not e!359884))))

(declare-fun k0!1786 () (_ BitVec 64))

(assert (=> b!629293 (= res!406868 (validKeyInArray!0 k0!1786))))

(declare-fun b!629294 () Bool)

(assert (=> b!629294 (= e!359884 e!359882)))

(declare-fun res!406864 () Bool)

(assert (=> b!629294 (=> (not res!406864) (not e!359882))))

(declare-datatypes ((SeekEntryResult!6676 0))(
  ( (MissingZero!6676 (index!28987 (_ BitVec 32))) (Found!6676 (index!28988 (_ BitVec 32))) (Intermediate!6676 (undefined!7488 Bool) (index!28989 (_ BitVec 32)) (x!57749 (_ BitVec 32))) (Undefined!6676) (MissingVacant!6676 (index!28990 (_ BitVec 32))) )
))
(declare-fun lt!290713 () SeekEntryResult!6676)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!629294 (= res!406864 (or (= lt!290713 (MissingZero!6676 i!1108)) (= lt!290713 (MissingVacant!6676 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37991 (_ BitVec 32)) SeekEntryResult!6676)

(assert (=> b!629294 (= lt!290713 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!629295 () Bool)

(declare-fun res!406870 () Bool)

(assert (=> b!629295 (=> (not res!406870) (not e!359884))))

(assert (=> b!629295 (= res!406870 (and (= (size!18593 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18593 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18593 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!629296 () Bool)

(declare-fun res!406866 () Bool)

(assert (=> b!629296 (=> (not res!406866) (not e!359882))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!629296 (= res!406866 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18229 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18229 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!406869 () Bool)

(assert (=> start!56840 (=> (not res!406869) (not e!359884))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56840 (= res!406869 (validMask!0 mask!3053))))

(assert (=> start!56840 e!359884))

(assert (=> start!56840 true))

(declare-fun array_inv!14003 (array!37991) Bool)

(assert (=> start!56840 (array_inv!14003 a!2986)))

(declare-fun b!629297 () Bool)

(declare-fun res!406865 () Bool)

(assert (=> b!629297 (=> (not res!406865) (not e!359882))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37991 (_ BitVec 32)) SeekEntryResult!6676)

(assert (=> b!629297 (= res!406865 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18229 a!2986) j!136) a!2986 mask!3053) (Found!6676 j!136)))))

(declare-fun b!629298 () Bool)

(declare-fun res!406873 () Bool)

(assert (=> b!629298 (=> (not res!406873) (not e!359882))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37991 (_ BitVec 32)) Bool)

(assert (=> b!629298 (= res!406873 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!629299 () Bool)

(declare-fun res!406874 () Bool)

(assert (=> b!629299 (=> (not res!406874) (not e!359884))))

(declare-fun arrayContainsKey!0 (array!37991 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!629299 (= res!406874 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!629300 () Bool)

(assert (=> b!629300 (= e!359882 (not true))))

(declare-fun lt!290714 () (_ BitVec 32))

(assert (=> b!629300 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!290714 vacantSpotIndex!68 (select (arr!18229 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!290714 vacantSpotIndex!68 (select (store (arr!18229 a!2986) i!1108 k0!1786) j!136) (array!37992 (store (arr!18229 a!2986) i!1108 k0!1786) (size!18593 a!2986)) mask!3053))))

(declare-datatypes ((Unit!21096 0))(
  ( (Unit!21097) )
))
(declare-fun lt!290715 () Unit!21096)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37991 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21096)

(assert (=> b!629300 (= lt!290715 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!290714 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!629300 (= lt!290714 (nextIndex!0 index!984 x!910 mask!3053))))

(assert (= (and start!56840 res!406869) b!629295))

(assert (= (and b!629295 res!406870) b!629292))

(assert (= (and b!629292 res!406872) b!629293))

(assert (= (and b!629293 res!406868) b!629299))

(assert (= (and b!629299 res!406874) b!629294))

(assert (= (and b!629294 res!406864) b!629298))

(assert (= (and b!629298 res!406873) b!629291))

(assert (= (and b!629291 res!406867) b!629296))

(assert (= (and b!629296 res!406866) b!629297))

(assert (= (and b!629297 res!406865) b!629290))

(assert (= (and b!629290 res!406871) b!629300))

(declare-fun m!604367 () Bool)

(assert (=> b!629293 m!604367))

(declare-fun m!604369 () Bool)

(assert (=> b!629297 m!604369))

(assert (=> b!629297 m!604369))

(declare-fun m!604371 () Bool)

(assert (=> b!629297 m!604371))

(declare-fun m!604373 () Bool)

(assert (=> b!629299 m!604373))

(declare-fun m!604375 () Bool)

(assert (=> b!629300 m!604375))

(declare-fun m!604377 () Bool)

(assert (=> b!629300 m!604377))

(assert (=> b!629300 m!604369))

(declare-fun m!604379 () Bool)

(assert (=> b!629300 m!604379))

(assert (=> b!629300 m!604369))

(declare-fun m!604381 () Bool)

(assert (=> b!629300 m!604381))

(declare-fun m!604383 () Bool)

(assert (=> b!629300 m!604383))

(assert (=> b!629300 m!604377))

(declare-fun m!604385 () Bool)

(assert (=> b!629300 m!604385))

(assert (=> b!629292 m!604369))

(assert (=> b!629292 m!604369))

(declare-fun m!604387 () Bool)

(assert (=> b!629292 m!604387))

(declare-fun m!604389 () Bool)

(assert (=> b!629296 m!604389))

(assert (=> b!629296 m!604381))

(declare-fun m!604391 () Bool)

(assert (=> b!629296 m!604391))

(declare-fun m!604393 () Bool)

(assert (=> b!629298 m!604393))

(declare-fun m!604395 () Bool)

(assert (=> b!629290 m!604395))

(assert (=> b!629290 m!604369))

(declare-fun m!604397 () Bool)

(assert (=> b!629291 m!604397))

(declare-fun m!604399 () Bool)

(assert (=> b!629294 m!604399))

(declare-fun m!604401 () Bool)

(assert (=> start!56840 m!604401))

(declare-fun m!604403 () Bool)

(assert (=> start!56840 m!604403))

(check-sat (not b!629294) (not start!56840) (not b!629300) (not b!629291) (not b!629298) (not b!629299) (not b!629292) (not b!629297) (not b!629293))
(check-sat)
