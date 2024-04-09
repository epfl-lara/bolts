; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!56582 () Bool)

(assert start!56582)

(declare-fun b!626419 () Bool)

(declare-fun res!404300 () Bool)

(declare-fun e!358894 () Bool)

(assert (=> b!626419 (=> (not res!404300) (not e!358894))))

(declare-datatypes ((array!37835 0))(
  ( (array!37836 (arr!18154 (Array (_ BitVec 32) (_ BitVec 64))) (size!18518 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37835)

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!37835 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!626419 (= res!404300 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!626420 () Bool)

(declare-fun e!358892 () Bool)

(assert (=> b!626420 (= e!358894 e!358892)))

(declare-fun res!404302 () Bool)

(assert (=> b!626420 (=> (not res!404302) (not e!358892))))

(declare-datatypes ((SeekEntryResult!6601 0))(
  ( (MissingZero!6601 (index!28687 (_ BitVec 32))) (Found!6601 (index!28688 (_ BitVec 32))) (Intermediate!6601 (undefined!7413 Bool) (index!28689 (_ BitVec 32)) (x!57462 (_ BitVec 32))) (Undefined!6601) (MissingVacant!6601 (index!28690 (_ BitVec 32))) )
))
(declare-fun lt!290064 () SeekEntryResult!6601)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!626420 (= res!404302 (or (= lt!290064 (MissingZero!6601 i!1108)) (= lt!290064 (MissingVacant!6601 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37835 (_ BitVec 32)) SeekEntryResult!6601)

(assert (=> b!626420 (= lt!290064 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!626421 () Bool)

(declare-fun res!404304 () Bool)

(assert (=> b!626421 (=> (not res!404304) (not e!358894))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!626421 (= res!404304 (validKeyInArray!0 k0!1786))))

(declare-fun b!626422 () Bool)

(declare-fun res!404299 () Bool)

(assert (=> b!626422 (=> (not res!404299) (not e!358894))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!626422 (= res!404299 (validKeyInArray!0 (select (arr!18154 a!2986) j!136)))))

(declare-fun b!626423 () Bool)

(declare-fun res!404298 () Bool)

(assert (=> b!626423 (=> (not res!404298) (not e!358892))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!626423 (= res!404298 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18154 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18154 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!626424 () Bool)

(declare-fun res!404306 () Bool)

(assert (=> b!626424 (=> (not res!404306) (not e!358892))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37835 (_ BitVec 32)) Bool)

(assert (=> b!626424 (= res!404306 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!626425 () Bool)

(declare-fun res!404303 () Bool)

(assert (=> b!626425 (=> (not res!404303) (not e!358894))))

(assert (=> b!626425 (= res!404303 (and (= (size!18518 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18518 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18518 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!626426 () Bool)

(declare-fun res!404305 () Bool)

(assert (=> b!626426 (=> (not res!404305) (not e!358892))))

(declare-datatypes ((List!12248 0))(
  ( (Nil!12245) (Cons!12244 (h!13289 (_ BitVec 64)) (t!18484 List!12248)) )
))
(declare-fun arrayNoDuplicates!0 (array!37835 (_ BitVec 32) List!12248) Bool)

(assert (=> b!626426 (= res!404305 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12245))))

(declare-fun res!404301 () Bool)

(assert (=> start!56582 (=> (not res!404301) (not e!358894))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56582 (= res!404301 (validMask!0 mask!3053))))

(assert (=> start!56582 e!358894))

(assert (=> start!56582 true))

(declare-fun array_inv!13928 (array!37835) Bool)

(assert (=> start!56582 (array_inv!13928 a!2986)))

(declare-fun b!626418 () Bool)

(assert (=> b!626418 (= e!358892 false)))

(declare-fun lt!290063 () SeekEntryResult!6601)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37835 (_ BitVec 32)) SeekEntryResult!6601)

(assert (=> b!626418 (= lt!290063 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18154 a!2986) j!136) a!2986 mask!3053))))

(assert (= (and start!56582 res!404301) b!626425))

(assert (= (and b!626425 res!404303) b!626422))

(assert (= (and b!626422 res!404299) b!626421))

(assert (= (and b!626421 res!404304) b!626419))

(assert (= (and b!626419 res!404300) b!626420))

(assert (= (and b!626420 res!404302) b!626424))

(assert (= (and b!626424 res!404306) b!626426))

(assert (= (and b!626426 res!404305) b!626423))

(assert (= (and b!626423 res!404298) b!626418))

(declare-fun m!601847 () Bool)

(assert (=> b!626419 m!601847))

(declare-fun m!601849 () Bool)

(assert (=> b!626424 m!601849))

(declare-fun m!601851 () Bool)

(assert (=> b!626418 m!601851))

(assert (=> b!626418 m!601851))

(declare-fun m!601853 () Bool)

(assert (=> b!626418 m!601853))

(declare-fun m!601855 () Bool)

(assert (=> start!56582 m!601855))

(declare-fun m!601857 () Bool)

(assert (=> start!56582 m!601857))

(declare-fun m!601859 () Bool)

(assert (=> b!626421 m!601859))

(assert (=> b!626422 m!601851))

(assert (=> b!626422 m!601851))

(declare-fun m!601861 () Bool)

(assert (=> b!626422 m!601861))

(declare-fun m!601863 () Bool)

(assert (=> b!626426 m!601863))

(declare-fun m!601865 () Bool)

(assert (=> b!626420 m!601865))

(declare-fun m!601867 () Bool)

(assert (=> b!626423 m!601867))

(declare-fun m!601869 () Bool)

(assert (=> b!626423 m!601869))

(declare-fun m!601871 () Bool)

(assert (=> b!626423 m!601871))

(check-sat (not b!626422) (not b!626424) (not b!626421) (not b!626419) (not b!626420) (not b!626418) (not b!626426) (not start!56582))
