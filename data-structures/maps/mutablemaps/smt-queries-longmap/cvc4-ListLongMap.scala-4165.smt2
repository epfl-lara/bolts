; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56746 () Bool)

(assert start!56746)

(declare-fun b!628378 () Bool)

(declare-fun res!406119 () Bool)

(declare-fun e!359523 () Bool)

(assert (=> b!628378 (=> (not res!406119) (not e!359523))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!37948 0))(
  ( (array!37949 (arr!18209 (Array (_ BitVec 32) (_ BitVec 64))) (size!18573 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37948)

(declare-datatypes ((SeekEntryResult!6656 0))(
  ( (MissingZero!6656 (index!28907 (_ BitVec 32))) (Found!6656 (index!28908 (_ BitVec 32))) (Intermediate!6656 (undefined!7468 Bool) (index!28909 (_ BitVec 32)) (x!57667 (_ BitVec 32))) (Undefined!6656) (MissingVacant!6656 (index!28910 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37948 (_ BitVec 32)) SeekEntryResult!6656)

(assert (=> b!628378 (= res!406119 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18209 a!2986) j!136) a!2986 mask!3053) (Found!6656 j!136)))))

(declare-fun res!406114 () Bool)

(declare-fun e!359522 () Bool)

(assert (=> start!56746 (=> (not res!406114) (not e!359522))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56746 (= res!406114 (validMask!0 mask!3053))))

(assert (=> start!56746 e!359522))

(assert (=> start!56746 true))

(declare-fun array_inv!13983 (array!37948) Bool)

(assert (=> start!56746 (array_inv!13983 a!2986)))

(declare-fun b!628379 () Bool)

(assert (=> b!628379 (= e!359522 e!359523)))

(declare-fun res!406122 () Bool)

(assert (=> b!628379 (=> (not res!406122) (not e!359523))))

(declare-fun lt!290474 () SeekEntryResult!6656)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!628379 (= res!406122 (or (= lt!290474 (MissingZero!6656 i!1108)) (= lt!290474 (MissingVacant!6656 i!1108))))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37948 (_ BitVec 32)) SeekEntryResult!6656)

(assert (=> b!628379 (= lt!290474 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!628380 () Bool)

(declare-fun res!406120 () Bool)

(assert (=> b!628380 (=> (not res!406120) (not e!359522))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!628380 (= res!406120 (validKeyInArray!0 (select (arr!18209 a!2986) j!136)))))

(declare-fun b!628381 () Bool)

(declare-fun res!406117 () Bool)

(assert (=> b!628381 (=> (not res!406117) (not e!359522))))

(declare-fun arrayContainsKey!0 (array!37948 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!628381 (= res!406117 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!628382 () Bool)

(declare-fun res!406118 () Bool)

(assert (=> b!628382 (=> (not res!406118) (not e!359523))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37948 (_ BitVec 32)) Bool)

(assert (=> b!628382 (= res!406118 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!628383 () Bool)

(declare-fun res!406115 () Bool)

(assert (=> b!628383 (=> (not res!406115) (not e!359523))))

(declare-datatypes ((List!12303 0))(
  ( (Nil!12300) (Cons!12299 (h!13344 (_ BitVec 64)) (t!18539 List!12303)) )
))
(declare-fun arrayNoDuplicates!0 (array!37948 (_ BitVec 32) List!12303) Bool)

(assert (=> b!628383 (= res!406115 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12300))))

(declare-fun lt!290475 () (_ BitVec 32))

(declare-fun b!628384 () Bool)

(assert (=> b!628384 (= e!359523 (and (bvsge lt!290475 #b00000000000000000000000000000000) (bvslt lt!290475 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvslt (bvadd #b00000000000000000000000000000001 x!910) #b00000000000000000000000000000000)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!628384 (= lt!290475 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!628385 () Bool)

(declare-fun res!406123 () Bool)

(assert (=> b!628385 (=> (not res!406123) (not e!359523))))

(assert (=> b!628385 (= res!406123 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18209 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18209 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!628386 () Bool)

(declare-fun res!406124 () Bool)

(assert (=> b!628386 (=> (not res!406124) (not e!359522))))

(assert (=> b!628386 (= res!406124 (validKeyInArray!0 k!1786))))

(declare-fun b!628387 () Bool)

(declare-fun res!406116 () Bool)

(assert (=> b!628387 (=> (not res!406116) (not e!359522))))

(assert (=> b!628387 (= res!406116 (and (= (size!18573 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18573 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18573 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!628388 () Bool)

(declare-fun res!406121 () Bool)

(assert (=> b!628388 (=> (not res!406121) (not e!359523))))

(assert (=> b!628388 (= res!406121 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18209 a!2986) index!984) (select (arr!18209 a!2986) j!136))) (not (= (select (arr!18209 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (= (and start!56746 res!406114) b!628387))

(assert (= (and b!628387 res!406116) b!628380))

(assert (= (and b!628380 res!406120) b!628386))

(assert (= (and b!628386 res!406124) b!628381))

(assert (= (and b!628381 res!406117) b!628379))

(assert (= (and b!628379 res!406122) b!628382))

(assert (= (and b!628382 res!406118) b!628383))

(assert (= (and b!628383 res!406115) b!628385))

(assert (= (and b!628385 res!406123) b!628378))

(assert (= (and b!628378 res!406119) b!628388))

(assert (= (and b!628388 res!406121) b!628384))

(declare-fun m!603573 () Bool)

(assert (=> b!628380 m!603573))

(assert (=> b!628380 m!603573))

(declare-fun m!603575 () Bool)

(assert (=> b!628380 m!603575))

(assert (=> b!628378 m!603573))

(assert (=> b!628378 m!603573))

(declare-fun m!603577 () Bool)

(assert (=> b!628378 m!603577))

(declare-fun m!603579 () Bool)

(assert (=> b!628381 m!603579))

(declare-fun m!603581 () Bool)

(assert (=> start!56746 m!603581))

(declare-fun m!603583 () Bool)

(assert (=> start!56746 m!603583))

(declare-fun m!603585 () Bool)

(assert (=> b!628379 m!603585))

(declare-fun m!603587 () Bool)

(assert (=> b!628385 m!603587))

(declare-fun m!603589 () Bool)

(assert (=> b!628385 m!603589))

(declare-fun m!603591 () Bool)

(assert (=> b!628385 m!603591))

(declare-fun m!603593 () Bool)

(assert (=> b!628382 m!603593))

(declare-fun m!603595 () Bool)

(assert (=> b!628388 m!603595))

(assert (=> b!628388 m!603573))

(declare-fun m!603597 () Bool)

(assert (=> b!628384 m!603597))

(declare-fun m!603599 () Bool)

(assert (=> b!628383 m!603599))

(declare-fun m!603601 () Bool)

(assert (=> b!628386 m!603601))

(push 1)

(assert (not b!628380))

(assert (not b!628386))

(assert (not start!56746))

(assert (not b!628383))

(assert (not b!628379))

