; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53344 () Bool)

(assert start!53344)

(declare-fun res!367689 () Bool)

(declare-fun e!333050 () Bool)

(assert (=> start!53344 (=> (not res!367689) (not e!333050))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53344 (= res!367689 (validMask!0 mask!3053))))

(assert (=> start!53344 e!333050))

(assert (=> start!53344 true))

(declare-datatypes ((array!36199 0))(
  ( (array!36200 (arr!17370 (Array (_ BitVec 32) (_ BitVec 64))) (size!17734 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36199)

(declare-fun array_inv!13144 (array!36199) Bool)

(assert (=> start!53344 (array_inv!13144 a!2986)))

(declare-fun b!579720 () Bool)

(declare-fun e!333052 () Bool)

(assert (=> b!579720 (= e!333050 e!333052)))

(declare-fun res!367690 () Bool)

(assert (=> b!579720 (=> (not res!367690) (not e!333052))))

(declare-datatypes ((SeekEntryResult!5817 0))(
  ( (MissingZero!5817 (index!25495 (_ BitVec 32))) (Found!5817 (index!25496 (_ BitVec 32))) (Intermediate!5817 (undefined!6629 Bool) (index!25497 (_ BitVec 32)) (x!54409 (_ BitVec 32))) (Undefined!5817) (MissingVacant!5817 (index!25498 (_ BitVec 32))) )
))
(declare-fun lt!264550 () SeekEntryResult!5817)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!579720 (= res!367690 (or (= lt!264550 (MissingZero!5817 i!1108)) (= lt!264550 (MissingVacant!5817 i!1108))))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36199 (_ BitVec 32)) SeekEntryResult!5817)

(assert (=> b!579720 (= lt!264550 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!579721 () Bool)

(declare-fun res!367692 () Bool)

(assert (=> b!579721 (=> (not res!367692) (not e!333050))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!579721 (= res!367692 (and (= (size!17734 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17734 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17734 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!579722 () Bool)

(declare-fun res!367686 () Bool)

(assert (=> b!579722 (=> (not res!367686) (not e!333050))))

(declare-fun arrayContainsKey!0 (array!36199 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!579722 (= res!367686 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!579723 () Bool)

(declare-fun res!367687 () Bool)

(assert (=> b!579723 (=> (not res!367687) (not e!333050))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!579723 (= res!367687 (validKeyInArray!0 (select (arr!17370 a!2986) j!136)))))

(declare-fun b!579724 () Bool)

(declare-fun res!367694 () Bool)

(assert (=> b!579724 (=> (not res!367694) (not e!333052))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!579724 (= res!367694 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17370 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17370 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!579725 () Bool)

(declare-fun res!367688 () Bool)

(assert (=> b!579725 (=> (not res!367688) (not e!333050))))

(assert (=> b!579725 (= res!367688 (validKeyInArray!0 k!1786))))

(declare-fun b!579726 () Bool)

(declare-fun res!367691 () Bool)

(assert (=> b!579726 (=> (not res!367691) (not e!333052))))

(declare-datatypes ((List!11464 0))(
  ( (Nil!11461) (Cons!11460 (h!12505 (_ BitVec 64)) (t!17700 List!11464)) )
))
(declare-fun arrayNoDuplicates!0 (array!36199 (_ BitVec 32) List!11464) Bool)

(assert (=> b!579726 (= res!367691 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11461))))

(declare-fun b!579727 () Bool)

(assert (=> b!579727 (= e!333052 false)))

(declare-fun lt!264551 () SeekEntryResult!5817)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36199 (_ BitVec 32)) SeekEntryResult!5817)

(assert (=> b!579727 (= lt!264551 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17370 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!579728 () Bool)

(declare-fun res!367693 () Bool)

(assert (=> b!579728 (=> (not res!367693) (not e!333052))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36199 (_ BitVec 32)) Bool)

(assert (=> b!579728 (= res!367693 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(assert (= (and start!53344 res!367689) b!579721))

(assert (= (and b!579721 res!367692) b!579723))

(assert (= (and b!579723 res!367687) b!579725))

(assert (= (and b!579725 res!367688) b!579722))

(assert (= (and b!579722 res!367686) b!579720))

(assert (= (and b!579720 res!367690) b!579728))

(assert (= (and b!579728 res!367693) b!579726))

(assert (= (and b!579726 res!367691) b!579724))

(assert (= (and b!579724 res!367694) b!579727))

(declare-fun m!558373 () Bool)

(assert (=> b!579724 m!558373))

(declare-fun m!558375 () Bool)

(assert (=> b!579724 m!558375))

(declare-fun m!558377 () Bool)

(assert (=> b!579724 m!558377))

(declare-fun m!558379 () Bool)

(assert (=> b!579728 m!558379))

(declare-fun m!558381 () Bool)

(assert (=> b!579725 m!558381))

(declare-fun m!558383 () Bool)

(assert (=> b!579727 m!558383))

(assert (=> b!579727 m!558383))

(declare-fun m!558385 () Bool)

(assert (=> b!579727 m!558385))

(assert (=> b!579723 m!558383))

(assert (=> b!579723 m!558383))

(declare-fun m!558387 () Bool)

(assert (=> b!579723 m!558387))

(declare-fun m!558389 () Bool)

(assert (=> b!579726 m!558389))

(declare-fun m!558391 () Bool)

(assert (=> start!53344 m!558391))

(declare-fun m!558393 () Bool)

(assert (=> start!53344 m!558393))

(declare-fun m!558395 () Bool)

(assert (=> b!579720 m!558395))

(declare-fun m!558397 () Bool)

(assert (=> b!579722 m!558397))

(push 1)

