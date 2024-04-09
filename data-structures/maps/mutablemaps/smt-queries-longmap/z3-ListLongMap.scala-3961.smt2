; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53796 () Bool)

(assert start!53796)

(declare-fun b!586606 () Bool)

(declare-fun res!374579 () Bool)

(declare-fun e!335257 () Bool)

(assert (=> b!586606 (=> (not res!374579) (not e!335257))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!36651 0))(
  ( (array!36652 (arr!17596 (Array (_ BitVec 32) (_ BitVec 64))) (size!17960 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36651)

(assert (=> b!586606 (= res!374579 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17596 a!2986) index!984) (select (arr!17596 a!2986) j!136))) (not (= (select (arr!17596 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!586607 () Bool)

(declare-fun res!374575 () Bool)

(assert (=> b!586607 (=> (not res!374575) (not e!335257))))

(declare-datatypes ((List!11690 0))(
  ( (Nil!11687) (Cons!11686 (h!12731 (_ BitVec 64)) (t!17926 List!11690)) )
))
(declare-fun arrayNoDuplicates!0 (array!36651 (_ BitVec 32) List!11690) Bool)

(assert (=> b!586607 (= res!374575 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11687))))

(declare-fun b!586608 () Bool)

(declare-fun res!374572 () Bool)

(declare-fun e!335255 () Bool)

(assert (=> b!586608 (=> (not res!374572) (not e!335255))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!586608 (= res!374572 (and (= (size!17960 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17960 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17960 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!586609 () Bool)

(declare-fun res!374574 () Bool)

(assert (=> b!586609 (=> (not res!374574) (not e!335257))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6043 0))(
  ( (MissingZero!6043 (index!26399 (_ BitVec 32))) (Found!6043 (index!26400 (_ BitVec 32))) (Intermediate!6043 (undefined!6855 Bool) (index!26401 (_ BitVec 32)) (x!55235 (_ BitVec 32))) (Undefined!6043) (MissingVacant!6043 (index!26402 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36651 (_ BitVec 32)) SeekEntryResult!6043)

(assert (=> b!586609 (= res!374574 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17596 a!2986) j!136) a!2986 mask!3053) (Found!6043 j!136)))))

(declare-fun b!586610 () Bool)

(assert (=> b!586610 (= e!335255 e!335257)))

(declare-fun res!374582 () Bool)

(assert (=> b!586610 (=> (not res!374582) (not e!335257))))

(declare-fun lt!266156 () SeekEntryResult!6043)

(assert (=> b!586610 (= res!374582 (or (= lt!266156 (MissingZero!6043 i!1108)) (= lt!266156 (MissingVacant!6043 i!1108))))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36651 (_ BitVec 32)) SeekEntryResult!6043)

(assert (=> b!586610 (= lt!266156 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!586611 () Bool)

(assert (=> b!586611 (= e!335257 (not true))))

(declare-fun lt!266155 () (_ BitVec 32))

(assert (=> b!586611 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266155 vacantSpotIndex!68 (select (arr!17596 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266155 vacantSpotIndex!68 (select (store (arr!17596 a!2986) i!1108 k0!1786) j!136) (array!36652 (store (arr!17596 a!2986) i!1108 k0!1786) (size!17960 a!2986)) mask!3053))))

(declare-datatypes ((Unit!18210 0))(
  ( (Unit!18211) )
))
(declare-fun lt!266154 () Unit!18210)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36651 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18210)

(assert (=> b!586611 (= lt!266154 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!266155 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!586611 (= lt!266155 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!586612 () Bool)

(declare-fun res!374578 () Bool)

(assert (=> b!586612 (=> (not res!374578) (not e!335255))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!586612 (= res!374578 (validKeyInArray!0 (select (arr!17596 a!2986) j!136)))))

(declare-fun res!374581 () Bool)

(assert (=> start!53796 (=> (not res!374581) (not e!335255))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53796 (= res!374581 (validMask!0 mask!3053))))

(assert (=> start!53796 e!335255))

(assert (=> start!53796 true))

(declare-fun array_inv!13370 (array!36651) Bool)

(assert (=> start!53796 (array_inv!13370 a!2986)))

(declare-fun b!586613 () Bool)

(declare-fun res!374576 () Bool)

(assert (=> b!586613 (=> (not res!374576) (not e!335257))))

(assert (=> b!586613 (= res!374576 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17596 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17596 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!586614 () Bool)

(declare-fun res!374573 () Bool)

(assert (=> b!586614 (=> (not res!374573) (not e!335255))))

(declare-fun arrayContainsKey!0 (array!36651 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!586614 (= res!374573 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!586615 () Bool)

(declare-fun res!374577 () Bool)

(assert (=> b!586615 (=> (not res!374577) (not e!335257))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36651 (_ BitVec 32)) Bool)

(assert (=> b!586615 (= res!374577 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!586616 () Bool)

(declare-fun res!374580 () Bool)

(assert (=> b!586616 (=> (not res!374580) (not e!335255))))

(assert (=> b!586616 (= res!374580 (validKeyInArray!0 k0!1786))))

(assert (= (and start!53796 res!374581) b!586608))

(assert (= (and b!586608 res!374572) b!586612))

(assert (= (and b!586612 res!374578) b!586616))

(assert (= (and b!586616 res!374580) b!586614))

(assert (= (and b!586614 res!374573) b!586610))

(assert (= (and b!586610 res!374582) b!586615))

(assert (= (and b!586615 res!374577) b!586607))

(assert (= (and b!586607 res!374575) b!586613))

(assert (= (and b!586613 res!374576) b!586609))

(assert (= (and b!586609 res!374574) b!586606))

(assert (= (and b!586606 res!374579) b!586611))

(declare-fun m!565071 () Bool)

(assert (=> start!53796 m!565071))

(declare-fun m!565073 () Bool)

(assert (=> start!53796 m!565073))

(declare-fun m!565075 () Bool)

(assert (=> b!586609 m!565075))

(assert (=> b!586609 m!565075))

(declare-fun m!565077 () Bool)

(assert (=> b!586609 m!565077))

(declare-fun m!565079 () Bool)

(assert (=> b!586614 m!565079))

(declare-fun m!565081 () Bool)

(assert (=> b!586606 m!565081))

(assert (=> b!586606 m!565075))

(declare-fun m!565083 () Bool)

(assert (=> b!586613 m!565083))

(declare-fun m!565085 () Bool)

(assert (=> b!586613 m!565085))

(declare-fun m!565087 () Bool)

(assert (=> b!586613 m!565087))

(declare-fun m!565089 () Bool)

(assert (=> b!586615 m!565089))

(declare-fun m!565091 () Bool)

(assert (=> b!586611 m!565091))

(declare-fun m!565093 () Bool)

(assert (=> b!586611 m!565093))

(assert (=> b!586611 m!565075))

(assert (=> b!586611 m!565085))

(assert (=> b!586611 m!565093))

(declare-fun m!565095 () Bool)

(assert (=> b!586611 m!565095))

(assert (=> b!586611 m!565075))

(declare-fun m!565097 () Bool)

(assert (=> b!586611 m!565097))

(declare-fun m!565099 () Bool)

(assert (=> b!586611 m!565099))

(declare-fun m!565101 () Bool)

(assert (=> b!586610 m!565101))

(declare-fun m!565103 () Bool)

(assert (=> b!586616 m!565103))

(assert (=> b!586612 m!565075))

(assert (=> b!586612 m!565075))

(declare-fun m!565105 () Bool)

(assert (=> b!586612 m!565105))

(declare-fun m!565107 () Bool)

(assert (=> b!586607 m!565107))

(check-sat (not b!586607) (not b!586612) (not b!586616) (not start!53796) (not b!586611) (not b!586615) (not b!586614) (not b!586610) (not b!586609))
(check-sat)
