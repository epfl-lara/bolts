; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53554 () Bool)

(assert start!53554)

(declare-fun b!582591 () Bool)

(declare-fun res!370557 () Bool)

(declare-fun e!333995 () Bool)

(assert (=> b!582591 (=> (not res!370557) (not e!333995))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!582591 (= res!370557 (validKeyInArray!0 k!1786))))

(declare-fun b!582592 () Bool)

(declare-fun e!333996 () Bool)

(assert (=> b!582592 (= e!333996 false)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5922 0))(
  ( (MissingZero!5922 (index!25915 (_ BitVec 32))) (Found!5922 (index!25916 (_ BitVec 32))) (Intermediate!5922 (undefined!6734 Bool) (index!25917 (_ BitVec 32)) (x!54794 (_ BitVec 32))) (Undefined!5922) (MissingVacant!5922 (index!25918 (_ BitVec 32))) )
))
(declare-fun lt!265153 () SeekEntryResult!5922)

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!36409 0))(
  ( (array!36410 (arr!17475 (Array (_ BitVec 32) (_ BitVec 64))) (size!17839 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36409)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36409 (_ BitVec 32)) SeekEntryResult!5922)

(assert (=> b!582592 (= lt!265153 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17475 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!582593 () Bool)

(declare-fun res!370559 () Bool)

(assert (=> b!582593 (=> (not res!370559) (not e!333995))))

(declare-fun arrayContainsKey!0 (array!36409 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!582593 (= res!370559 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!582594 () Bool)

(declare-fun res!370564 () Bool)

(assert (=> b!582594 (=> (not res!370564) (not e!333995))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!582594 (= res!370564 (and (= (size!17839 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17839 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17839 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!582595 () Bool)

(declare-fun res!370560 () Bool)

(assert (=> b!582595 (=> (not res!370560) (not e!333995))))

(assert (=> b!582595 (= res!370560 (validKeyInArray!0 (select (arr!17475 a!2986) j!136)))))

(declare-fun b!582596 () Bool)

(assert (=> b!582596 (= e!333995 e!333996)))

(declare-fun res!370558 () Bool)

(assert (=> b!582596 (=> (not res!370558) (not e!333996))))

(declare-fun lt!265154 () SeekEntryResult!5922)

(assert (=> b!582596 (= res!370558 (or (= lt!265154 (MissingZero!5922 i!1108)) (= lt!265154 (MissingVacant!5922 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36409 (_ BitVec 32)) SeekEntryResult!5922)

(assert (=> b!582596 (= lt!265154 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!582597 () Bool)

(declare-fun res!370563 () Bool)

(assert (=> b!582597 (=> (not res!370563) (not e!333996))))

(assert (=> b!582597 (= res!370563 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17475 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17475 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!370562 () Bool)

(assert (=> start!53554 (=> (not res!370562) (not e!333995))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53554 (= res!370562 (validMask!0 mask!3053))))

(assert (=> start!53554 e!333995))

(assert (=> start!53554 true))

(declare-fun array_inv!13249 (array!36409) Bool)

(assert (=> start!53554 (array_inv!13249 a!2986)))

(declare-fun b!582598 () Bool)

(declare-fun res!370565 () Bool)

(assert (=> b!582598 (=> (not res!370565) (not e!333996))))

(declare-datatypes ((List!11569 0))(
  ( (Nil!11566) (Cons!11565 (h!12610 (_ BitVec 64)) (t!17805 List!11569)) )
))
(declare-fun arrayNoDuplicates!0 (array!36409 (_ BitVec 32) List!11569) Bool)

(assert (=> b!582598 (= res!370565 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11566))))

(declare-fun b!582599 () Bool)

(declare-fun res!370561 () Bool)

(assert (=> b!582599 (=> (not res!370561) (not e!333996))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36409 (_ BitVec 32)) Bool)

(assert (=> b!582599 (= res!370561 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(assert (= (and start!53554 res!370562) b!582594))

(assert (= (and b!582594 res!370564) b!582595))

(assert (= (and b!582595 res!370560) b!582591))

(assert (= (and b!582591 res!370557) b!582593))

(assert (= (and b!582593 res!370559) b!582596))

(assert (= (and b!582596 res!370558) b!582599))

(assert (= (and b!582599 res!370561) b!582598))

(assert (= (and b!582598 res!370565) b!582597))

(assert (= (and b!582597 res!370563) b!582592))

(declare-fun m!561133 () Bool)

(assert (=> b!582597 m!561133))

(declare-fun m!561135 () Bool)

(assert (=> b!582597 m!561135))

(declare-fun m!561137 () Bool)

(assert (=> b!582597 m!561137))

(declare-fun m!561139 () Bool)

(assert (=> b!582595 m!561139))

(assert (=> b!582595 m!561139))

(declare-fun m!561141 () Bool)

(assert (=> b!582595 m!561141))

(declare-fun m!561143 () Bool)

(assert (=> start!53554 m!561143))

(declare-fun m!561145 () Bool)

(assert (=> start!53554 m!561145))

(declare-fun m!561147 () Bool)

(assert (=> b!582596 m!561147))

(declare-fun m!561149 () Bool)

(assert (=> b!582598 m!561149))

(declare-fun m!561151 () Bool)

(assert (=> b!582599 m!561151))

(declare-fun m!561153 () Bool)

(assert (=> b!582591 m!561153))

(assert (=> b!582592 m!561139))

(assert (=> b!582592 m!561139))

(declare-fun m!561155 () Bool)

(assert (=> b!582592 m!561155))

(declare-fun m!561157 () Bool)

(assert (=> b!582593 m!561157))

(push 1)

