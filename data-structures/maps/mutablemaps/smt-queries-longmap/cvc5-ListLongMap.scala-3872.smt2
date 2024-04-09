; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53260 () Bool)

(assert start!53260)

(declare-fun b!578586 () Bool)

(declare-fun res!366556 () Bool)

(declare-fun e!332674 () Bool)

(assert (=> b!578586 (=> (not res!366556) (not e!332674))))

(declare-datatypes ((array!36115 0))(
  ( (array!36116 (arr!17328 (Array (_ BitVec 32) (_ BitVec 64))) (size!17692 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36115)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36115 (_ BitVec 32)) Bool)

(assert (=> b!578586 (= res!366556 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun res!366560 () Bool)

(declare-fun e!332673 () Bool)

(assert (=> start!53260 (=> (not res!366560) (not e!332673))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53260 (= res!366560 (validMask!0 mask!3053))))

(assert (=> start!53260 e!332673))

(assert (=> start!53260 true))

(declare-fun array_inv!13102 (array!36115) Bool)

(assert (=> start!53260 (array_inv!13102 a!2986)))

(declare-fun b!578587 () Bool)

(declare-fun res!366554 () Bool)

(assert (=> b!578587 (=> (not res!366554) (not e!332673))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!578587 (= res!366554 (validKeyInArray!0 k!1786))))

(declare-fun b!578588 () Bool)

(declare-fun res!366552 () Bool)

(assert (=> b!578588 (=> (not res!366552) (not e!332674))))

(declare-datatypes ((List!11422 0))(
  ( (Nil!11419) (Cons!11418 (h!12463 (_ BitVec 64)) (t!17658 List!11422)) )
))
(declare-fun arrayNoDuplicates!0 (array!36115 (_ BitVec 32) List!11422) Bool)

(assert (=> b!578588 (= res!366552 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11419))))

(declare-fun b!578589 () Bool)

(declare-fun res!366559 () Bool)

(assert (=> b!578589 (=> (not res!366559) (not e!332673))))

(declare-fun arrayContainsKey!0 (array!36115 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!578589 (= res!366559 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!578590 () Bool)

(assert (=> b!578590 (= e!332673 e!332674)))

(declare-fun res!366558 () Bool)

(assert (=> b!578590 (=> (not res!366558) (not e!332674))))

(declare-datatypes ((SeekEntryResult!5775 0))(
  ( (MissingZero!5775 (index!25327 (_ BitVec 32))) (Found!5775 (index!25328 (_ BitVec 32))) (Intermediate!5775 (undefined!6587 Bool) (index!25329 (_ BitVec 32)) (x!54255 (_ BitVec 32))) (Undefined!5775) (MissingVacant!5775 (index!25330 (_ BitVec 32))) )
))
(declare-fun lt!264299 () SeekEntryResult!5775)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!578590 (= res!366558 (or (= lt!264299 (MissingZero!5775 i!1108)) (= lt!264299 (MissingVacant!5775 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36115 (_ BitVec 32)) SeekEntryResult!5775)

(assert (=> b!578590 (= lt!264299 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!578591 () Bool)

(declare-fun res!366553 () Bool)

(assert (=> b!578591 (=> (not res!366553) (not e!332673))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!578591 (= res!366553 (validKeyInArray!0 (select (arr!17328 a!2986) j!136)))))

(declare-fun b!578592 () Bool)

(declare-fun res!366557 () Bool)

(assert (=> b!578592 (=> (not res!366557) (not e!332674))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!578592 (= res!366557 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17328 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17328 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!578593 () Bool)

(declare-fun res!366555 () Bool)

(assert (=> b!578593 (=> (not res!366555) (not e!332673))))

(assert (=> b!578593 (= res!366555 (and (= (size!17692 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17692 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17692 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!578594 () Bool)

(assert (=> b!578594 (= e!332674 false)))

(declare-fun lt!264298 () SeekEntryResult!5775)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36115 (_ BitVec 32)) SeekEntryResult!5775)

(assert (=> b!578594 (= lt!264298 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17328 a!2986) j!136) a!2986 mask!3053))))

(assert (= (and start!53260 res!366560) b!578593))

(assert (= (and b!578593 res!366555) b!578591))

(assert (= (and b!578591 res!366553) b!578587))

(assert (= (and b!578587 res!366554) b!578589))

(assert (= (and b!578589 res!366559) b!578590))

(assert (= (and b!578590 res!366558) b!578586))

(assert (= (and b!578586 res!366556) b!578588))

(assert (= (and b!578588 res!366552) b!578592))

(assert (= (and b!578592 res!366557) b!578594))

(declare-fun m!557281 () Bool)

(assert (=> b!578592 m!557281))

(declare-fun m!557283 () Bool)

(assert (=> b!578592 m!557283))

(declare-fun m!557285 () Bool)

(assert (=> b!578592 m!557285))

(declare-fun m!557287 () Bool)

(assert (=> b!578587 m!557287))

(declare-fun m!557289 () Bool)

(assert (=> b!578591 m!557289))

(assert (=> b!578591 m!557289))

(declare-fun m!557291 () Bool)

(assert (=> b!578591 m!557291))

(declare-fun m!557293 () Bool)

(assert (=> start!53260 m!557293))

(declare-fun m!557295 () Bool)

(assert (=> start!53260 m!557295))

(declare-fun m!557297 () Bool)

(assert (=> b!578588 m!557297))

(declare-fun m!557299 () Bool)

(assert (=> b!578586 m!557299))

(assert (=> b!578594 m!557289))

(assert (=> b!578594 m!557289))

(declare-fun m!557301 () Bool)

(assert (=> b!578594 m!557301))

(declare-fun m!557303 () Bool)

(assert (=> b!578589 m!557303))

(declare-fun m!557305 () Bool)

(assert (=> b!578590 m!557305))

(push 1)

(assert (not b!578594))

(assert (not b!578590))

(assert (not b!578591))

(assert (not b!578588))

(assert (not b!578586))

(assert (not b!578589))

(assert (not b!578587))

(assert (not start!53260))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

