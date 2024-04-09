; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56676 () Bool)

(assert start!56676)

(declare-fun b!627907 () Bool)

(declare-fun e!359317 () Bool)

(assert (=> b!627907 (= e!359317 false)))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!290345 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!627907 (= lt!290345 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!627908 () Bool)

(declare-fun res!405789 () Bool)

(assert (=> b!627908 (=> (not res!405789) (not e!359317))))

(declare-datatypes ((array!37929 0))(
  ( (array!37930 (arr!18201 (Array (_ BitVec 32) (_ BitVec 64))) (size!18565 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37929)

(declare-datatypes ((List!12295 0))(
  ( (Nil!12292) (Cons!12291 (h!13336 (_ BitVec 64)) (t!18531 List!12295)) )
))
(declare-fun arrayNoDuplicates!0 (array!37929 (_ BitVec 32) List!12295) Bool)

(assert (=> b!627908 (= res!405789 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12292))))

(declare-fun b!627909 () Bool)

(declare-fun res!405791 () Bool)

(declare-fun e!359315 () Bool)

(assert (=> b!627909 (=> (not res!405791) (not e!359315))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!37929 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!627909 (= res!405791 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!627910 () Bool)

(declare-fun res!405792 () Bool)

(assert (=> b!627910 (=> (not res!405792) (not e!359315))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!627910 (= res!405792 (and (= (size!18565 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18565 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18565 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!627911 () Bool)

(declare-fun res!405787 () Bool)

(assert (=> b!627911 (=> (not res!405787) (not e!359317))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6648 0))(
  ( (MissingZero!6648 (index!28875 (_ BitVec 32))) (Found!6648 (index!28876 (_ BitVec 32))) (Intermediate!6648 (undefined!7460 Bool) (index!28877 (_ BitVec 32)) (x!57637 (_ BitVec 32))) (Undefined!6648) (MissingVacant!6648 (index!28878 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37929 (_ BitVec 32)) SeekEntryResult!6648)

(assert (=> b!627911 (= res!405787 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18201 a!2986) j!136) a!2986 mask!3053) (Found!6648 j!136)))))

(declare-fun res!405794 () Bool)

(assert (=> start!56676 (=> (not res!405794) (not e!359315))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56676 (= res!405794 (validMask!0 mask!3053))))

(assert (=> start!56676 e!359315))

(assert (=> start!56676 true))

(declare-fun array_inv!13975 (array!37929) Bool)

(assert (=> start!56676 (array_inv!13975 a!2986)))

(declare-fun b!627912 () Bool)

(declare-fun res!405795 () Bool)

(assert (=> b!627912 (=> (not res!405795) (not e!359315))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!627912 (= res!405795 (validKeyInArray!0 (select (arr!18201 a!2986) j!136)))))

(declare-fun b!627913 () Bool)

(assert (=> b!627913 (= e!359315 e!359317)))

(declare-fun res!405788 () Bool)

(assert (=> b!627913 (=> (not res!405788) (not e!359317))))

(declare-fun lt!290346 () SeekEntryResult!6648)

(assert (=> b!627913 (= res!405788 (or (= lt!290346 (MissingZero!6648 i!1108)) (= lt!290346 (MissingVacant!6648 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37929 (_ BitVec 32)) SeekEntryResult!6648)

(assert (=> b!627913 (= lt!290346 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!627914 () Bool)

(declare-fun res!405790 () Bool)

(assert (=> b!627914 (=> (not res!405790) (not e!359317))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37929 (_ BitVec 32)) Bool)

(assert (=> b!627914 (= res!405790 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!627915 () Bool)

(declare-fun res!405793 () Bool)

(assert (=> b!627915 (=> (not res!405793) (not e!359317))))

(assert (=> b!627915 (= res!405793 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18201 a!2986) index!984) (select (arr!18201 a!2986) j!136))) (not (= (select (arr!18201 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!627916 () Bool)

(declare-fun res!405796 () Bool)

(assert (=> b!627916 (=> (not res!405796) (not e!359317))))

(assert (=> b!627916 (= res!405796 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18201 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18201 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!627917 () Bool)

(declare-fun res!405797 () Bool)

(assert (=> b!627917 (=> (not res!405797) (not e!359315))))

(assert (=> b!627917 (= res!405797 (validKeyInArray!0 k!1786))))

(assert (= (and start!56676 res!405794) b!627910))

(assert (= (and b!627910 res!405792) b!627912))

(assert (= (and b!627912 res!405795) b!627917))

(assert (= (and b!627917 res!405797) b!627909))

(assert (= (and b!627909 res!405791) b!627913))

(assert (= (and b!627913 res!405788) b!627914))

(assert (= (and b!627914 res!405790) b!627908))

(assert (= (and b!627908 res!405789) b!627916))

(assert (= (and b!627916 res!405796) b!627911))

(assert (= (and b!627911 res!405787) b!627915))

(assert (= (and b!627915 res!405793) b!627907))

(declare-fun m!603213 () Bool)

(assert (=> b!627917 m!603213))

(declare-fun m!603215 () Bool)

(assert (=> b!627914 m!603215))

(declare-fun m!603217 () Bool)

(assert (=> b!627908 m!603217))

(declare-fun m!603219 () Bool)

(assert (=> b!627911 m!603219))

(assert (=> b!627911 m!603219))

(declare-fun m!603221 () Bool)

(assert (=> b!627911 m!603221))

(declare-fun m!603223 () Bool)

(assert (=> b!627907 m!603223))

(declare-fun m!603225 () Bool)

(assert (=> b!627913 m!603225))

(declare-fun m!603227 () Bool)

(assert (=> b!627909 m!603227))

(assert (=> b!627912 m!603219))

(assert (=> b!627912 m!603219))

(declare-fun m!603229 () Bool)

(assert (=> b!627912 m!603229))

(declare-fun m!603231 () Bool)

(assert (=> b!627916 m!603231))

(declare-fun m!603233 () Bool)

(assert (=> b!627916 m!603233))

(declare-fun m!603235 () Bool)

(assert (=> b!627916 m!603235))

(declare-fun m!603237 () Bool)

(assert (=> start!56676 m!603237))

(declare-fun m!603239 () Bool)

(assert (=> start!56676 m!603239))

(declare-fun m!603241 () Bool)

(assert (=> b!627915 m!603241))

(assert (=> b!627915 m!603219))

(push 1)

