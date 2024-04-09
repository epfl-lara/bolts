; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56436 () Bool)

(assert start!56436)

(declare-fun b!625284 () Bool)

(declare-fun res!403474 () Bool)

(declare-fun e!358379 () Bool)

(assert (=> b!625284 (=> (not res!403474) (not e!358379))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!625284 (= res!403474 (validKeyInArray!0 k!1786))))

(declare-fun b!625285 () Bool)

(declare-fun res!403475 () Bool)

(assert (=> b!625285 (=> (not res!403475) (not e!358379))))

(declare-datatypes ((array!37779 0))(
  ( (array!37780 (arr!18129 (Array (_ BitVec 32) (_ BitVec 64))) (size!18493 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37779)

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!625285 (= res!403475 (validKeyInArray!0 (select (arr!18129 a!2986) j!136)))))

(declare-fun res!403477 () Bool)

(assert (=> start!56436 (=> (not res!403477) (not e!358379))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56436 (= res!403477 (validMask!0 mask!3053))))

(assert (=> start!56436 e!358379))

(assert (=> start!56436 true))

(declare-fun array_inv!13903 (array!37779) Bool)

(assert (=> start!56436 (array_inv!13903 a!2986)))

(declare-fun b!625286 () Bool)

(declare-fun res!403471 () Bool)

(assert (=> b!625286 (=> (not res!403471) (not e!358379))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!625286 (= res!403471 (and (= (size!18493 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18493 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18493 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!625287 () Bool)

(declare-fun res!403476 () Bool)

(declare-fun e!358380 () Bool)

(assert (=> b!625287 (=> (not res!403476) (not e!358380))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37779 (_ BitVec 32)) Bool)

(assert (=> b!625287 (= res!403476 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!625288 () Bool)

(declare-fun res!403472 () Bool)

(assert (=> b!625288 (=> (not res!403472) (not e!358380))))

(declare-datatypes ((List!12223 0))(
  ( (Nil!12220) (Cons!12219 (h!13264 (_ BitVec 64)) (t!18459 List!12223)) )
))
(declare-fun arrayNoDuplicates!0 (array!37779 (_ BitVec 32) List!12223) Bool)

(assert (=> b!625288 (= res!403472 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12220))))

(declare-fun b!625289 () Bool)

(assert (=> b!625289 (= e!358379 e!358380)))

(declare-fun res!403473 () Bool)

(assert (=> b!625289 (=> (not res!403473) (not e!358380))))

(declare-datatypes ((SeekEntryResult!6576 0))(
  ( (MissingZero!6576 (index!28587 (_ BitVec 32))) (Found!6576 (index!28588 (_ BitVec 32))) (Intermediate!6576 (undefined!7388 Bool) (index!28589 (_ BitVec 32)) (x!57367 (_ BitVec 32))) (Undefined!6576) (MissingVacant!6576 (index!28590 (_ BitVec 32))) )
))
(declare-fun lt!289782 () SeekEntryResult!6576)

(assert (=> b!625289 (= res!403473 (or (= lt!289782 (MissingZero!6576 i!1108)) (= lt!289782 (MissingVacant!6576 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37779 (_ BitVec 32)) SeekEntryResult!6576)

(assert (=> b!625289 (= lt!289782 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!625290 () Bool)

(assert (=> b!625290 (= e!358380 false)))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun lt!289781 () SeekEntryResult!6576)

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37779 (_ BitVec 32)) SeekEntryResult!6576)

(assert (=> b!625290 (= lt!289781 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18129 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!625291 () Bool)

(declare-fun res!403470 () Bool)

(assert (=> b!625291 (=> (not res!403470) (not e!358380))))

(assert (=> b!625291 (= res!403470 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18129 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18129 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!625292 () Bool)

(declare-fun res!403478 () Bool)

(assert (=> b!625292 (=> (not res!403478) (not e!358379))))

(declare-fun arrayContainsKey!0 (array!37779 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!625292 (= res!403478 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(assert (= (and start!56436 res!403477) b!625286))

(assert (= (and b!625286 res!403471) b!625285))

(assert (= (and b!625285 res!403475) b!625284))

(assert (= (and b!625284 res!403474) b!625292))

(assert (= (and b!625292 res!403478) b!625289))

(assert (= (and b!625289 res!403473) b!625287))

(assert (= (and b!625287 res!403476) b!625288))

(assert (= (and b!625288 res!403472) b!625291))

(assert (= (and b!625291 res!403470) b!625290))

(declare-fun m!600903 () Bool)

(assert (=> start!56436 m!600903))

(declare-fun m!600905 () Bool)

(assert (=> start!56436 m!600905))

(declare-fun m!600907 () Bool)

(assert (=> b!625291 m!600907))

(declare-fun m!600909 () Bool)

(assert (=> b!625291 m!600909))

(declare-fun m!600911 () Bool)

(assert (=> b!625291 m!600911))

(declare-fun m!600913 () Bool)

(assert (=> b!625288 m!600913))

(declare-fun m!600915 () Bool)

(assert (=> b!625290 m!600915))

(assert (=> b!625290 m!600915))

(declare-fun m!600917 () Bool)

(assert (=> b!625290 m!600917))

(declare-fun m!600919 () Bool)

(assert (=> b!625292 m!600919))

(declare-fun m!600921 () Bool)

(assert (=> b!625289 m!600921))

(declare-fun m!600923 () Bool)

(assert (=> b!625284 m!600923))

(declare-fun m!600925 () Bool)

(assert (=> b!625287 m!600925))

(assert (=> b!625285 m!600915))

(assert (=> b!625285 m!600915))

(declare-fun m!600927 () Bool)

(assert (=> b!625285 m!600927))

(push 1)

