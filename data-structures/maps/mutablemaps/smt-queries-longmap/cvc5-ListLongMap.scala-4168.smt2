; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56760 () Bool)

(assert start!56760)

(declare-fun b!628609 () Bool)

(declare-fun res!406348 () Bool)

(declare-fun e!359586 () Bool)

(assert (=> b!628609 (=> (not res!406348) (not e!359586))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!37962 0))(
  ( (array!37963 (arr!18216 (Array (_ BitVec 32) (_ BitVec 64))) (size!18580 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37962)

(declare-datatypes ((SeekEntryResult!6663 0))(
  ( (MissingZero!6663 (index!28935 (_ BitVec 32))) (Found!6663 (index!28936 (_ BitVec 32))) (Intermediate!6663 (undefined!7475 Bool) (index!28937 (_ BitVec 32)) (x!57698 (_ BitVec 32))) (Undefined!6663) (MissingVacant!6663 (index!28938 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37962 (_ BitVec 32)) SeekEntryResult!6663)

(assert (=> b!628609 (= res!406348 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18216 a!2986) j!136) a!2986 mask!3053) (Found!6663 j!136)))))

(declare-fun b!628610 () Bool)

(declare-fun res!406351 () Bool)

(declare-fun e!359585 () Bool)

(assert (=> b!628610 (=> (not res!406351) (not e!359585))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!628610 (= res!406351 (validKeyInArray!0 (select (arr!18216 a!2986) j!136)))))

(declare-fun res!406345 () Bool)

(assert (=> start!56760 (=> (not res!406345) (not e!359585))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56760 (= res!406345 (validMask!0 mask!3053))))

(assert (=> start!56760 e!359585))

(assert (=> start!56760 true))

(declare-fun array_inv!13990 (array!37962) Bool)

(assert (=> start!56760 (array_inv!13990 a!2986)))

(declare-fun b!628611 () Bool)

(declare-fun res!406352 () Bool)

(assert (=> b!628611 (=> (not res!406352) (not e!359586))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37962 (_ BitVec 32)) Bool)

(assert (=> b!628611 (= res!406352 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!628612 () Bool)

(declare-fun res!406347 () Bool)

(assert (=> b!628612 (=> (not res!406347) (not e!359585))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!37962 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!628612 (= res!406347 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!628613 () Bool)

(declare-fun res!406354 () Bool)

(assert (=> b!628613 (=> (not res!406354) (not e!359585))))

(assert (=> b!628613 (= res!406354 (validKeyInArray!0 k!1786))))

(declare-fun b!628614 () Bool)

(assert (=> b!628614 (= e!359585 e!359586)))

(declare-fun res!406355 () Bool)

(assert (=> b!628614 (=> (not res!406355) (not e!359586))))

(declare-fun lt!290517 () SeekEntryResult!6663)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!628614 (= res!406355 (or (= lt!290517 (MissingZero!6663 i!1108)) (= lt!290517 (MissingVacant!6663 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37962 (_ BitVec 32)) SeekEntryResult!6663)

(assert (=> b!628614 (= lt!290517 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!628615 () Bool)

(declare-fun res!406346 () Bool)

(assert (=> b!628615 (=> (not res!406346) (not e!359586))))

(assert (=> b!628615 (= res!406346 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18216 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18216 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!628616 () Bool)

(declare-fun res!406349 () Bool)

(assert (=> b!628616 (=> (not res!406349) (not e!359585))))

(assert (=> b!628616 (= res!406349 (and (= (size!18580 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18580 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18580 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!628617 () Bool)

(assert (=> b!628617 (= e!359586 false)))

(declare-fun lt!290516 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!628617 (= lt!290516 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!628618 () Bool)

(declare-fun res!406353 () Bool)

(assert (=> b!628618 (=> (not res!406353) (not e!359586))))

(declare-datatypes ((List!12310 0))(
  ( (Nil!12307) (Cons!12306 (h!13351 (_ BitVec 64)) (t!18546 List!12310)) )
))
(declare-fun arrayNoDuplicates!0 (array!37962 (_ BitVec 32) List!12310) Bool)

(assert (=> b!628618 (= res!406353 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12307))))

(declare-fun b!628619 () Bool)

(declare-fun res!406350 () Bool)

(assert (=> b!628619 (=> (not res!406350) (not e!359586))))

(assert (=> b!628619 (= res!406350 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18216 a!2986) index!984) (select (arr!18216 a!2986) j!136))) (not (= (select (arr!18216 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (= (and start!56760 res!406345) b!628616))

(assert (= (and b!628616 res!406349) b!628610))

(assert (= (and b!628610 res!406351) b!628613))

(assert (= (and b!628613 res!406354) b!628612))

(assert (= (and b!628612 res!406347) b!628614))

(assert (= (and b!628614 res!406355) b!628611))

(assert (= (and b!628611 res!406352) b!628618))

(assert (= (and b!628618 res!406353) b!628615))

(assert (= (and b!628615 res!406346) b!628609))

(assert (= (and b!628609 res!406348) b!628619))

(assert (= (and b!628619 res!406350) b!628617))

(declare-fun m!603783 () Bool)

(assert (=> start!56760 m!603783))

(declare-fun m!603785 () Bool)

(assert (=> start!56760 m!603785))

(declare-fun m!603787 () Bool)

(assert (=> b!628618 m!603787))

(declare-fun m!603789 () Bool)

(assert (=> b!628611 m!603789))

(declare-fun m!603791 () Bool)

(assert (=> b!628609 m!603791))

(assert (=> b!628609 m!603791))

(declare-fun m!603793 () Bool)

(assert (=> b!628609 m!603793))

(declare-fun m!603795 () Bool)

(assert (=> b!628617 m!603795))

(declare-fun m!603797 () Bool)

(assert (=> b!628614 m!603797))

(declare-fun m!603799 () Bool)

(assert (=> b!628612 m!603799))

(declare-fun m!603801 () Bool)

(assert (=> b!628615 m!603801))

(declare-fun m!603803 () Bool)

(assert (=> b!628615 m!603803))

(declare-fun m!603805 () Bool)

(assert (=> b!628615 m!603805))

(assert (=> b!628610 m!603791))

(assert (=> b!628610 m!603791))

(declare-fun m!603807 () Bool)

(assert (=> b!628610 m!603807))

(declare-fun m!603809 () Bool)

(assert (=> b!628619 m!603809))

(assert (=> b!628619 m!603791))

(declare-fun m!603811 () Bool)

(assert (=> b!628613 m!603811))

(push 1)

