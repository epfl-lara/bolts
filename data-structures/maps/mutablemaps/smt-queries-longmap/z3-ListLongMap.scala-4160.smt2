; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!56660 () Bool)

(assert start!56660)

(declare-fun b!627644 () Bool)

(declare-fun e!359244 () Bool)

(declare-fun e!359243 () Bool)

(assert (=> b!627644 (= e!359244 e!359243)))

(declare-fun res!405531 () Bool)

(assert (=> b!627644 (=> (not res!405531) (not e!359243))))

(declare-datatypes ((SeekEntryResult!6640 0))(
  ( (MissingZero!6640 (index!28843 (_ BitVec 32))) (Found!6640 (index!28844 (_ BitVec 32))) (Intermediate!6640 (undefined!7452 Bool) (index!28845 (_ BitVec 32)) (x!57605 (_ BitVec 32))) (Undefined!6640) (MissingVacant!6640 (index!28846 (_ BitVec 32))) )
))
(declare-fun lt!290297 () SeekEntryResult!6640)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!627644 (= res!405531 (or (= lt!290297 (MissingZero!6640 i!1108)) (= lt!290297 (MissingVacant!6640 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-datatypes ((array!37913 0))(
  ( (array!37914 (arr!18193 (Array (_ BitVec 32) (_ BitVec 64))) (size!18557 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37913)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37913 (_ BitVec 32)) SeekEntryResult!6640)

(assert (=> b!627644 (= lt!290297 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!627645 () Bool)

(declare-fun res!405533 () Bool)

(assert (=> b!627645 (=> (not res!405533) (not e!359244))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!627645 (= res!405533 (validKeyInArray!0 k0!1786))))

(declare-fun b!627646 () Bool)

(declare-fun res!405527 () Bool)

(assert (=> b!627646 (=> (not res!405527) (not e!359243))))

(declare-datatypes ((List!12287 0))(
  ( (Nil!12284) (Cons!12283 (h!13328 (_ BitVec 64)) (t!18523 List!12287)) )
))
(declare-fun arrayNoDuplicates!0 (array!37913 (_ BitVec 32) List!12287) Bool)

(assert (=> b!627646 (= res!405527 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12284))))

(declare-fun b!627647 () Bool)

(declare-fun res!405524 () Bool)

(assert (=> b!627647 (=> (not res!405524) (not e!359244))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!627647 (= res!405524 (validKeyInArray!0 (select (arr!18193 a!2986) j!136)))))

(declare-fun b!627648 () Bool)

(declare-fun res!405523 () Bool)

(assert (=> b!627648 (=> (not res!405523) (not e!359243))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37913 (_ BitVec 32)) SeekEntryResult!6640)

(assert (=> b!627648 (= res!405523 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18193 a!2986) j!136) a!2986 mask!3053) (Found!6640 j!136)))))

(declare-fun b!627649 () Bool)

(declare-fun res!405532 () Bool)

(assert (=> b!627649 (=> (not res!405532) (not e!359243))))

(assert (=> b!627649 (= res!405532 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18193 a!2986) index!984) (select (arr!18193 a!2986) j!136))) (not (= (select (arr!18193 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun res!405529 () Bool)

(assert (=> start!56660 (=> (not res!405529) (not e!359244))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56660 (= res!405529 (validMask!0 mask!3053))))

(assert (=> start!56660 e!359244))

(assert (=> start!56660 true))

(declare-fun array_inv!13967 (array!37913) Bool)

(assert (=> start!56660 (array_inv!13967 a!2986)))

(declare-fun b!627643 () Bool)

(declare-fun res!405530 () Bool)

(assert (=> b!627643 (=> (not res!405530) (not e!359244))))

(declare-fun arrayContainsKey!0 (array!37913 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!627643 (= res!405530 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!627650 () Bool)

(assert (=> b!627650 (= e!359243 false)))

(declare-fun lt!290298 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!627650 (= lt!290298 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!627651 () Bool)

(declare-fun res!405526 () Bool)

(assert (=> b!627651 (=> (not res!405526) (not e!359244))))

(assert (=> b!627651 (= res!405526 (and (= (size!18557 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18557 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18557 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!627652 () Bool)

(declare-fun res!405528 () Bool)

(assert (=> b!627652 (=> (not res!405528) (not e!359243))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37913 (_ BitVec 32)) Bool)

(assert (=> b!627652 (= res!405528 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!627653 () Bool)

(declare-fun res!405525 () Bool)

(assert (=> b!627653 (=> (not res!405525) (not e!359243))))

(assert (=> b!627653 (= res!405525 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18193 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18193 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!56660 res!405529) b!627651))

(assert (= (and b!627651 res!405526) b!627647))

(assert (= (and b!627647 res!405524) b!627645))

(assert (= (and b!627645 res!405533) b!627643))

(assert (= (and b!627643 res!405530) b!627644))

(assert (= (and b!627644 res!405531) b!627652))

(assert (= (and b!627652 res!405528) b!627646))

(assert (= (and b!627646 res!405527) b!627653))

(assert (= (and b!627653 res!405525) b!627648))

(assert (= (and b!627648 res!405523) b!627649))

(assert (= (and b!627649 res!405532) b!627650))

(declare-fun m!602973 () Bool)

(assert (=> b!627645 m!602973))

(declare-fun m!602975 () Bool)

(assert (=> b!627644 m!602975))

(declare-fun m!602977 () Bool)

(assert (=> b!627652 m!602977))

(declare-fun m!602979 () Bool)

(assert (=> b!627650 m!602979))

(declare-fun m!602981 () Bool)

(assert (=> b!627649 m!602981))

(declare-fun m!602983 () Bool)

(assert (=> b!627649 m!602983))

(declare-fun m!602985 () Bool)

(assert (=> start!56660 m!602985))

(declare-fun m!602987 () Bool)

(assert (=> start!56660 m!602987))

(assert (=> b!627647 m!602983))

(assert (=> b!627647 m!602983))

(declare-fun m!602989 () Bool)

(assert (=> b!627647 m!602989))

(declare-fun m!602991 () Bool)

(assert (=> b!627653 m!602991))

(declare-fun m!602993 () Bool)

(assert (=> b!627653 m!602993))

(declare-fun m!602995 () Bool)

(assert (=> b!627653 m!602995))

(declare-fun m!602997 () Bool)

(assert (=> b!627643 m!602997))

(declare-fun m!602999 () Bool)

(assert (=> b!627646 m!602999))

(assert (=> b!627648 m!602983))

(assert (=> b!627648 m!602983))

(declare-fun m!603001 () Bool)

(assert (=> b!627648 m!603001))

(check-sat (not b!627645) (not b!627646) (not b!627648) (not b!627644) (not b!627643) (not b!627647) (not start!56660) (not b!627650) (not b!627652))
(check-sat)
