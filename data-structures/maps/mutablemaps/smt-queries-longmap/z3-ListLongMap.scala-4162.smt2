; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!56672 () Bool)

(assert start!56672)

(declare-fun res!405721 () Bool)

(declare-fun e!359297 () Bool)

(assert (=> start!56672 (=> (not res!405721) (not e!359297))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56672 (= res!405721 (validMask!0 mask!3053))))

(assert (=> start!56672 e!359297))

(assert (=> start!56672 true))

(declare-datatypes ((array!37925 0))(
  ( (array!37926 (arr!18199 (Array (_ BitVec 32) (_ BitVec 64))) (size!18563 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37925)

(declare-fun array_inv!13973 (array!37925) Bool)

(assert (=> start!56672 (array_inv!13973 a!2986)))

(declare-fun b!627841 () Bool)

(declare-fun res!405728 () Bool)

(declare-fun e!359299 () Bool)

(assert (=> b!627841 (=> (not res!405728) (not e!359299))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37925 (_ BitVec 32)) Bool)

(assert (=> b!627841 (= res!405728 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!627842 () Bool)

(declare-fun res!405730 () Bool)

(assert (=> b!627842 (=> (not res!405730) (not e!359299))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!627842 (= res!405730 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18199 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18199 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!627843 () Bool)

(declare-fun res!405729 () Bool)

(assert (=> b!627843 (=> (not res!405729) (not e!359297))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!627843 (= res!405729 (and (= (size!18563 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18563 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18563 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!627844 () Bool)

(declare-fun res!405722 () Bool)

(assert (=> b!627844 (=> (not res!405722) (not e!359297))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!627844 (= res!405722 (validKeyInArray!0 k0!1786))))

(declare-fun b!627845 () Bool)

(declare-fun res!405725 () Bool)

(assert (=> b!627845 (=> (not res!405725) (not e!359299))))

(declare-datatypes ((SeekEntryResult!6646 0))(
  ( (MissingZero!6646 (index!28867 (_ BitVec 32))) (Found!6646 (index!28868 (_ BitVec 32))) (Intermediate!6646 (undefined!7458 Bool) (index!28869 (_ BitVec 32)) (x!57627 (_ BitVec 32))) (Undefined!6646) (MissingVacant!6646 (index!28870 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37925 (_ BitVec 32)) SeekEntryResult!6646)

(assert (=> b!627845 (= res!405725 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18199 a!2986) j!136) a!2986 mask!3053) (Found!6646 j!136)))))

(declare-fun b!627846 () Bool)

(declare-fun res!405724 () Bool)

(assert (=> b!627846 (=> (not res!405724) (not e!359297))))

(declare-fun arrayContainsKey!0 (array!37925 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!627846 (= res!405724 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!627847 () Bool)

(assert (=> b!627847 (= e!359299 false)))

(declare-fun lt!290333 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!627847 (= lt!290333 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!627848 () Bool)

(assert (=> b!627848 (= e!359297 e!359299)))

(declare-fun res!405731 () Bool)

(assert (=> b!627848 (=> (not res!405731) (not e!359299))))

(declare-fun lt!290334 () SeekEntryResult!6646)

(assert (=> b!627848 (= res!405731 (or (= lt!290334 (MissingZero!6646 i!1108)) (= lt!290334 (MissingVacant!6646 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37925 (_ BitVec 32)) SeekEntryResult!6646)

(assert (=> b!627848 (= lt!290334 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!627849 () Bool)

(declare-fun res!405723 () Bool)

(assert (=> b!627849 (=> (not res!405723) (not e!359299))))

(assert (=> b!627849 (= res!405723 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18199 a!2986) index!984) (select (arr!18199 a!2986) j!136))) (not (= (select (arr!18199 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!627850 () Bool)

(declare-fun res!405727 () Bool)

(assert (=> b!627850 (=> (not res!405727) (not e!359297))))

(assert (=> b!627850 (= res!405727 (validKeyInArray!0 (select (arr!18199 a!2986) j!136)))))

(declare-fun b!627851 () Bool)

(declare-fun res!405726 () Bool)

(assert (=> b!627851 (=> (not res!405726) (not e!359299))))

(declare-datatypes ((List!12293 0))(
  ( (Nil!12290) (Cons!12289 (h!13334 (_ BitVec 64)) (t!18529 List!12293)) )
))
(declare-fun arrayNoDuplicates!0 (array!37925 (_ BitVec 32) List!12293) Bool)

(assert (=> b!627851 (= res!405726 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12290))))

(assert (= (and start!56672 res!405721) b!627843))

(assert (= (and b!627843 res!405729) b!627850))

(assert (= (and b!627850 res!405727) b!627844))

(assert (= (and b!627844 res!405722) b!627846))

(assert (= (and b!627846 res!405724) b!627848))

(assert (= (and b!627848 res!405731) b!627841))

(assert (= (and b!627841 res!405728) b!627851))

(assert (= (and b!627851 res!405726) b!627842))

(assert (= (and b!627842 res!405730) b!627845))

(assert (= (and b!627845 res!405725) b!627849))

(assert (= (and b!627849 res!405723) b!627847))

(declare-fun m!603153 () Bool)

(assert (=> b!627846 m!603153))

(declare-fun m!603155 () Bool)

(assert (=> start!56672 m!603155))

(declare-fun m!603157 () Bool)

(assert (=> start!56672 m!603157))

(declare-fun m!603159 () Bool)

(assert (=> b!627845 m!603159))

(assert (=> b!627845 m!603159))

(declare-fun m!603161 () Bool)

(assert (=> b!627845 m!603161))

(declare-fun m!603163 () Bool)

(assert (=> b!627841 m!603163))

(declare-fun m!603165 () Bool)

(assert (=> b!627848 m!603165))

(declare-fun m!603167 () Bool)

(assert (=> b!627851 m!603167))

(declare-fun m!603169 () Bool)

(assert (=> b!627849 m!603169))

(assert (=> b!627849 m!603159))

(declare-fun m!603171 () Bool)

(assert (=> b!627844 m!603171))

(declare-fun m!603173 () Bool)

(assert (=> b!627842 m!603173))

(declare-fun m!603175 () Bool)

(assert (=> b!627842 m!603175))

(declare-fun m!603177 () Bool)

(assert (=> b!627842 m!603177))

(declare-fun m!603179 () Bool)

(assert (=> b!627847 m!603179))

(assert (=> b!627850 m!603159))

(assert (=> b!627850 m!603159))

(declare-fun m!603181 () Bool)

(assert (=> b!627850 m!603181))

(check-sat (not start!56672) (not b!627846) (not b!627847) (not b!627841) (not b!627851) (not b!627848) (not b!627845) (not b!627844) (not b!627850))
(check-sat)
