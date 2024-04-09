; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53622 () Bool)

(assert start!53622)

(declare-fun b!583587 () Bool)

(declare-fun e!334327 () Bool)

(declare-fun e!334326 () Bool)

(assert (=> b!583587 (= e!334327 e!334326)))

(declare-fun res!371558 () Bool)

(assert (=> b!583587 (=> (not res!371558) (not e!334326))))

(declare-datatypes ((SeekEntryResult!5956 0))(
  ( (MissingZero!5956 (index!26051 (_ BitVec 32))) (Found!5956 (index!26052 (_ BitVec 32))) (Intermediate!5956 (undefined!6768 Bool) (index!26053 (_ BitVec 32)) (x!54916 (_ BitVec 32))) (Undefined!5956) (MissingVacant!5956 (index!26054 (_ BitVec 32))) )
))
(declare-fun lt!265371 () SeekEntryResult!5956)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!583587 (= res!371558 (or (= lt!265371 (MissingZero!5956 i!1108)) (= lt!265371 (MissingVacant!5956 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-datatypes ((array!36477 0))(
  ( (array!36478 (arr!17509 (Array (_ BitVec 32) (_ BitVec 64))) (size!17873 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36477)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36477 (_ BitVec 32)) SeekEntryResult!5956)

(assert (=> b!583587 (= lt!265371 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!583588 () Bool)

(declare-fun res!371557 () Bool)

(assert (=> b!583588 (=> (not res!371557) (not e!334326))))

(declare-datatypes ((List!11603 0))(
  ( (Nil!11600) (Cons!11599 (h!12644 (_ BitVec 64)) (t!17839 List!11603)) )
))
(declare-fun arrayNoDuplicates!0 (array!36477 (_ BitVec 32) List!11603) Bool)

(assert (=> b!583588 (= res!371557 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11600))))

(declare-fun res!371564 () Bool)

(assert (=> start!53622 (=> (not res!371564) (not e!334327))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53622 (= res!371564 (validMask!0 mask!3053))))

(assert (=> start!53622 e!334327))

(assert (=> start!53622 true))

(declare-fun array_inv!13283 (array!36477) Bool)

(assert (=> start!53622 (array_inv!13283 a!2986)))

(declare-fun b!583589 () Bool)

(declare-fun e!334324 () Bool)

(assert (=> b!583589 (= e!334324 false)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun lt!265372 () SeekEntryResult!5956)

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!265373 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36477 (_ BitVec 32)) SeekEntryResult!5956)

(assert (=> b!583589 (= lt!265372 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!265373 vacantSpotIndex!68 (select (arr!17509 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!583590 () Bool)

(declare-fun res!371556 () Bool)

(assert (=> b!583590 (=> (not res!371556) (not e!334326))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36477 (_ BitVec 32)) Bool)

(assert (=> b!583590 (= res!371556 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!583591 () Bool)

(declare-fun res!371559 () Bool)

(assert (=> b!583591 (=> (not res!371559) (not e!334327))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!583591 (= res!371559 (validKeyInArray!0 k0!1786))))

(declare-fun b!583592 () Bool)

(assert (=> b!583592 (= e!334326 e!334324)))

(declare-fun res!371562 () Bool)

(assert (=> b!583592 (=> (not res!371562) (not e!334324))))

(assert (=> b!583592 (= res!371562 (and (bvsge lt!265373 #b00000000000000000000000000000000) (bvslt lt!265373 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b00000000000000000000000000000000)))))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!583592 (= lt!265373 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!583593 () Bool)

(declare-fun res!371563 () Bool)

(assert (=> b!583593 (=> (not res!371563) (not e!334326))))

(assert (=> b!583593 (= res!371563 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17509 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17509 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!583594 () Bool)

(declare-fun res!371553 () Bool)

(assert (=> b!583594 (=> (not res!371553) (not e!334327))))

(assert (=> b!583594 (= res!371553 (validKeyInArray!0 (select (arr!17509 a!2986) j!136)))))

(declare-fun b!583595 () Bool)

(declare-fun res!371561 () Bool)

(assert (=> b!583595 (=> (not res!371561) (not e!334327))))

(declare-fun arrayContainsKey!0 (array!36477 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!583595 (= res!371561 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!583596 () Bool)

(declare-fun res!371554 () Bool)

(assert (=> b!583596 (=> (not res!371554) (not e!334327))))

(assert (=> b!583596 (= res!371554 (and (= (size!17873 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17873 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17873 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!583597 () Bool)

(declare-fun res!371560 () Bool)

(assert (=> b!583597 (=> (not res!371560) (not e!334326))))

(assert (=> b!583597 (= res!371560 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17509 a!2986) index!984) (select (arr!17509 a!2986) j!136))) (not (= (select (arr!17509 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!583598 () Bool)

(declare-fun res!371555 () Bool)

(assert (=> b!583598 (=> (not res!371555) (not e!334326))))

(assert (=> b!583598 (= res!371555 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17509 a!2986) j!136) a!2986 mask!3053) (Found!5956 j!136)))))

(assert (= (and start!53622 res!371564) b!583596))

(assert (= (and b!583596 res!371554) b!583594))

(assert (= (and b!583594 res!371553) b!583591))

(assert (= (and b!583591 res!371559) b!583595))

(assert (= (and b!583595 res!371561) b!583587))

(assert (= (and b!583587 res!371558) b!583590))

(assert (= (and b!583590 res!371556) b!583588))

(assert (= (and b!583588 res!371557) b!583593))

(assert (= (and b!583593 res!371563) b!583598))

(assert (= (and b!583598 res!371555) b!583597))

(assert (= (and b!583597 res!371560) b!583592))

(assert (= (and b!583592 res!371562) b!583589))

(declare-fun m!562065 () Bool)

(assert (=> b!583592 m!562065))

(declare-fun m!562067 () Bool)

(assert (=> b!583590 m!562067))

(declare-fun m!562069 () Bool)

(assert (=> b!583597 m!562069))

(declare-fun m!562071 () Bool)

(assert (=> b!583597 m!562071))

(assert (=> b!583594 m!562071))

(assert (=> b!583594 m!562071))

(declare-fun m!562073 () Bool)

(assert (=> b!583594 m!562073))

(assert (=> b!583589 m!562071))

(assert (=> b!583589 m!562071))

(declare-fun m!562075 () Bool)

(assert (=> b!583589 m!562075))

(declare-fun m!562077 () Bool)

(assert (=> b!583587 m!562077))

(declare-fun m!562079 () Bool)

(assert (=> b!583593 m!562079))

(declare-fun m!562081 () Bool)

(assert (=> b!583593 m!562081))

(declare-fun m!562083 () Bool)

(assert (=> b!583593 m!562083))

(declare-fun m!562085 () Bool)

(assert (=> start!53622 m!562085))

(declare-fun m!562087 () Bool)

(assert (=> start!53622 m!562087))

(declare-fun m!562089 () Bool)

(assert (=> b!583591 m!562089))

(declare-fun m!562091 () Bool)

(assert (=> b!583595 m!562091))

(declare-fun m!562093 () Bool)

(assert (=> b!583588 m!562093))

(assert (=> b!583598 m!562071))

(assert (=> b!583598 m!562071))

(declare-fun m!562095 () Bool)

(assert (=> b!583598 m!562095))

(check-sat (not b!583589) (not b!583595) (not b!583591) (not b!583594) (not start!53622) (not b!583592) (not b!583587) (not b!583590) (not b!583598) (not b!583588))
(check-sat)
