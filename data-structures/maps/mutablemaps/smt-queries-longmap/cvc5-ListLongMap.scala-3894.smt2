; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53392 () Bool)

(assert start!53392)

(declare-fun b!580368 () Bool)

(declare-fun res!368337 () Bool)

(declare-fun e!333266 () Bool)

(assert (=> b!580368 (=> (not res!368337) (not e!333266))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-datatypes ((array!36247 0))(
  ( (array!36248 (arr!17394 (Array (_ BitVec 32) (_ BitVec 64))) (size!17758 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36247)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!580368 (= res!368337 (and (= (size!17758 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17758 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17758 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!580369 () Bool)

(declare-fun e!333268 () Bool)

(assert (=> b!580369 (= e!333268 false)))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5841 0))(
  ( (MissingZero!5841 (index!25591 (_ BitVec 32))) (Found!5841 (index!25592 (_ BitVec 32))) (Intermediate!5841 (undefined!6653 Bool) (index!25593 (_ BitVec 32)) (x!54497 (_ BitVec 32))) (Undefined!5841) (MissingVacant!5841 (index!25594 (_ BitVec 32))) )
))
(declare-fun lt!264694 () SeekEntryResult!5841)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36247 (_ BitVec 32)) SeekEntryResult!5841)

(assert (=> b!580369 (= lt!264694 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17394 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!580370 () Bool)

(declare-fun res!368338 () Bool)

(assert (=> b!580370 (=> (not res!368338) (not e!333268))))

(declare-datatypes ((List!11488 0))(
  ( (Nil!11485) (Cons!11484 (h!12529 (_ BitVec 64)) (t!17724 List!11488)) )
))
(declare-fun arrayNoDuplicates!0 (array!36247 (_ BitVec 32) List!11488) Bool)

(assert (=> b!580370 (= res!368338 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11485))))

(declare-fun b!580371 () Bool)

(declare-fun res!368334 () Bool)

(assert (=> b!580371 (=> (not res!368334) (not e!333266))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!580371 (= res!368334 (validKeyInArray!0 k!1786))))

(declare-fun b!580372 () Bool)

(declare-fun res!368340 () Bool)

(assert (=> b!580372 (=> (not res!368340) (not e!333268))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36247 (_ BitVec 32)) Bool)

(assert (=> b!580372 (= res!368340 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun res!368335 () Bool)

(assert (=> start!53392 (=> (not res!368335) (not e!333266))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53392 (= res!368335 (validMask!0 mask!3053))))

(assert (=> start!53392 e!333266))

(assert (=> start!53392 true))

(declare-fun array_inv!13168 (array!36247) Bool)

(assert (=> start!53392 (array_inv!13168 a!2986)))

(declare-fun b!580373 () Bool)

(declare-fun res!368336 () Bool)

(assert (=> b!580373 (=> (not res!368336) (not e!333266))))

(declare-fun arrayContainsKey!0 (array!36247 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!580373 (= res!368336 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!580374 () Bool)

(assert (=> b!580374 (= e!333266 e!333268)))

(declare-fun res!368339 () Bool)

(assert (=> b!580374 (=> (not res!368339) (not e!333268))))

(declare-fun lt!264695 () SeekEntryResult!5841)

(assert (=> b!580374 (= res!368339 (or (= lt!264695 (MissingZero!5841 i!1108)) (= lt!264695 (MissingVacant!5841 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36247 (_ BitVec 32)) SeekEntryResult!5841)

(assert (=> b!580374 (= lt!264695 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!580375 () Bool)

(declare-fun res!368341 () Bool)

(assert (=> b!580375 (=> (not res!368341) (not e!333266))))

(assert (=> b!580375 (= res!368341 (validKeyInArray!0 (select (arr!17394 a!2986) j!136)))))

(declare-fun b!580376 () Bool)

(declare-fun res!368342 () Bool)

(assert (=> b!580376 (=> (not res!368342) (not e!333268))))

(assert (=> b!580376 (= res!368342 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17394 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17394 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!53392 res!368335) b!580368))

(assert (= (and b!580368 res!368337) b!580375))

(assert (= (and b!580375 res!368341) b!580371))

(assert (= (and b!580371 res!368334) b!580373))

(assert (= (and b!580373 res!368336) b!580374))

(assert (= (and b!580374 res!368339) b!580372))

(assert (= (and b!580372 res!368340) b!580370))

(assert (= (and b!580370 res!368338) b!580376))

(assert (= (and b!580376 res!368342) b!580369))

(declare-fun m!558997 () Bool)

(assert (=> start!53392 m!558997))

(declare-fun m!558999 () Bool)

(assert (=> start!53392 m!558999))

(declare-fun m!559001 () Bool)

(assert (=> b!580376 m!559001))

(declare-fun m!559003 () Bool)

(assert (=> b!580376 m!559003))

(declare-fun m!559005 () Bool)

(assert (=> b!580376 m!559005))

(declare-fun m!559007 () Bool)

(assert (=> b!580375 m!559007))

(assert (=> b!580375 m!559007))

(declare-fun m!559009 () Bool)

(assert (=> b!580375 m!559009))

(declare-fun m!559011 () Bool)

(assert (=> b!580373 m!559011))

(declare-fun m!559013 () Bool)

(assert (=> b!580374 m!559013))

(declare-fun m!559015 () Bool)

(assert (=> b!580370 m!559015))

(declare-fun m!559017 () Bool)

(assert (=> b!580372 m!559017))

(declare-fun m!559019 () Bool)

(assert (=> b!580371 m!559019))

(assert (=> b!580369 m!559007))

(assert (=> b!580369 m!559007))

(declare-fun m!559021 () Bool)

(assert (=> b!580369 m!559021))

(push 1)

