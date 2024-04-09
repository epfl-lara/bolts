; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53340 () Bool)

(assert start!53340)

(declare-fun b!579666 () Bool)

(declare-fun res!367632 () Bool)

(declare-fun e!333032 () Bool)

(assert (=> b!579666 (=> (not res!367632) (not e!333032))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!579666 (= res!367632 (validKeyInArray!0 k0!1786))))

(declare-fun b!579667 () Bool)

(declare-fun res!367633 () Bool)

(declare-fun e!333034 () Bool)

(assert (=> b!579667 (=> (not res!367633) (not e!333034))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!36195 0))(
  ( (array!36196 (arr!17368 (Array (_ BitVec 32) (_ BitVec 64))) (size!17732 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36195)

(assert (=> b!579667 (= res!367633 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17368 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17368 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!579668 () Bool)

(declare-fun res!367637 () Bool)

(assert (=> b!579668 (=> (not res!367637) (not e!333034))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36195 (_ BitVec 32)) Bool)

(assert (=> b!579668 (= res!367637 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!579669 () Bool)

(declare-fun res!367639 () Bool)

(assert (=> b!579669 (=> (not res!367639) (not e!333032))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!579669 (= res!367639 (validKeyInArray!0 (select (arr!17368 a!2986) j!136)))))

(declare-fun b!579671 () Bool)

(declare-fun res!367638 () Bool)

(assert (=> b!579671 (=> (not res!367638) (not e!333032))))

(declare-fun arrayContainsKey!0 (array!36195 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!579671 (= res!367638 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!579672 () Bool)

(assert (=> b!579672 (= e!333032 e!333034)))

(declare-fun res!367635 () Bool)

(assert (=> b!579672 (=> (not res!367635) (not e!333034))))

(declare-datatypes ((SeekEntryResult!5815 0))(
  ( (MissingZero!5815 (index!25487 (_ BitVec 32))) (Found!5815 (index!25488 (_ BitVec 32))) (Intermediate!5815 (undefined!6627 Bool) (index!25489 (_ BitVec 32)) (x!54399 (_ BitVec 32))) (Undefined!5815) (MissingVacant!5815 (index!25490 (_ BitVec 32))) )
))
(declare-fun lt!264539 () SeekEntryResult!5815)

(assert (=> b!579672 (= res!367635 (or (= lt!264539 (MissingZero!5815 i!1108)) (= lt!264539 (MissingVacant!5815 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36195 (_ BitVec 32)) SeekEntryResult!5815)

(assert (=> b!579672 (= lt!264539 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun res!367634 () Bool)

(assert (=> start!53340 (=> (not res!367634) (not e!333032))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53340 (= res!367634 (validMask!0 mask!3053))))

(assert (=> start!53340 e!333032))

(assert (=> start!53340 true))

(declare-fun array_inv!13142 (array!36195) Bool)

(assert (=> start!53340 (array_inv!13142 a!2986)))

(declare-fun b!579670 () Bool)

(declare-fun res!367640 () Bool)

(assert (=> b!579670 (=> (not res!367640) (not e!333034))))

(declare-datatypes ((List!11462 0))(
  ( (Nil!11459) (Cons!11458 (h!12503 (_ BitVec 64)) (t!17698 List!11462)) )
))
(declare-fun arrayNoDuplicates!0 (array!36195 (_ BitVec 32) List!11462) Bool)

(assert (=> b!579670 (= res!367640 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11459))))

(declare-fun b!579673 () Bool)

(declare-fun res!367636 () Bool)

(assert (=> b!579673 (=> (not res!367636) (not e!333032))))

(assert (=> b!579673 (= res!367636 (and (= (size!17732 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17732 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17732 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!579674 () Bool)

(assert (=> b!579674 (= e!333034 false)))

(declare-fun lt!264538 () SeekEntryResult!5815)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36195 (_ BitVec 32)) SeekEntryResult!5815)

(assert (=> b!579674 (= lt!264538 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17368 a!2986) j!136) a!2986 mask!3053))))

(assert (= (and start!53340 res!367634) b!579673))

(assert (= (and b!579673 res!367636) b!579669))

(assert (= (and b!579669 res!367639) b!579666))

(assert (= (and b!579666 res!367632) b!579671))

(assert (= (and b!579671 res!367638) b!579672))

(assert (= (and b!579672 res!367635) b!579668))

(assert (= (and b!579668 res!367637) b!579670))

(assert (= (and b!579670 res!367640) b!579667))

(assert (= (and b!579667 res!367633) b!579674))

(declare-fun m!558321 () Bool)

(assert (=> b!579670 m!558321))

(declare-fun m!558323 () Bool)

(assert (=> b!579672 m!558323))

(declare-fun m!558325 () Bool)

(assert (=> b!579667 m!558325))

(declare-fun m!558327 () Bool)

(assert (=> b!579667 m!558327))

(declare-fun m!558329 () Bool)

(assert (=> b!579667 m!558329))

(declare-fun m!558331 () Bool)

(assert (=> b!579671 m!558331))

(declare-fun m!558333 () Bool)

(assert (=> b!579674 m!558333))

(assert (=> b!579674 m!558333))

(declare-fun m!558335 () Bool)

(assert (=> b!579674 m!558335))

(declare-fun m!558337 () Bool)

(assert (=> b!579668 m!558337))

(assert (=> b!579669 m!558333))

(assert (=> b!579669 m!558333))

(declare-fun m!558339 () Bool)

(assert (=> b!579669 m!558339))

(declare-fun m!558341 () Bool)

(assert (=> b!579666 m!558341))

(declare-fun m!558343 () Bool)

(assert (=> start!53340 m!558343))

(declare-fun m!558345 () Bool)

(assert (=> start!53340 m!558345))

(check-sat (not start!53340) (not b!579671) (not b!579668) (not b!579672) (not b!579666) (not b!579669) (not b!579674) (not b!579670))
(check-sat)
