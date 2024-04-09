; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!56594 () Bool)

(assert start!56594)

(declare-fun b!626580 () Bool)

(declare-fun e!358946 () Bool)

(declare-fun e!358947 () Bool)

(assert (=> b!626580 (= e!358946 e!358947)))

(declare-fun res!404462 () Bool)

(assert (=> b!626580 (=> (not res!404462) (not e!358947))))

(declare-datatypes ((SeekEntryResult!6607 0))(
  ( (MissingZero!6607 (index!28711 (_ BitVec 32))) (Found!6607 (index!28712 (_ BitVec 32))) (Intermediate!6607 (undefined!7419 Bool) (index!28713 (_ BitVec 32)) (x!57484 (_ BitVec 32))) (Undefined!6607) (MissingVacant!6607 (index!28714 (_ BitVec 32))) )
))
(declare-fun lt!290100 () SeekEntryResult!6607)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!626580 (= res!404462 (or (= lt!290100 (MissingZero!6607 i!1108)) (= lt!290100 (MissingVacant!6607 i!1108))))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-datatypes ((array!37847 0))(
  ( (array!37848 (arr!18160 (Array (_ BitVec 32) (_ BitVec 64))) (size!18524 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37847)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37847 (_ BitVec 32)) SeekEntryResult!6607)

(assert (=> b!626580 (= lt!290100 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!626581 () Bool)

(declare-fun res!404461 () Bool)

(assert (=> b!626581 (=> (not res!404461) (not e!358947))))

(declare-datatypes ((List!12254 0))(
  ( (Nil!12251) (Cons!12250 (h!13295 (_ BitVec 64)) (t!18490 List!12254)) )
))
(declare-fun arrayNoDuplicates!0 (array!37847 (_ BitVec 32) List!12254) Bool)

(assert (=> b!626581 (= res!404461 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12251))))

(declare-fun b!626582 () Bool)

(declare-fun res!404463 () Bool)

(assert (=> b!626582 (=> (not res!404463) (not e!358946))))

(declare-fun arrayContainsKey!0 (array!37847 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!626582 (= res!404463 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun res!404465 () Bool)

(assert (=> start!56594 (=> (not res!404465) (not e!358946))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56594 (= res!404465 (validMask!0 mask!3053))))

(assert (=> start!56594 e!358946))

(assert (=> start!56594 true))

(declare-fun array_inv!13934 (array!37847) Bool)

(assert (=> start!56594 (array_inv!13934 a!2986)))

(declare-fun b!626583 () Bool)

(assert (=> b!626583 (= e!358947 false)))

(declare-fun lt!290099 () SeekEntryResult!6607)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37847 (_ BitVec 32)) SeekEntryResult!6607)

(assert (=> b!626583 (= lt!290099 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18160 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!626584 () Bool)

(declare-fun res!404464 () Bool)

(assert (=> b!626584 (=> (not res!404464) (not e!358946))))

(assert (=> b!626584 (= res!404464 (and (= (size!18524 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18524 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18524 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!626585 () Bool)

(declare-fun res!404468 () Bool)

(assert (=> b!626585 (=> (not res!404468) (not e!358946))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!626585 (= res!404468 (validKeyInArray!0 k0!1786))))

(declare-fun b!626586 () Bool)

(declare-fun res!404466 () Bool)

(assert (=> b!626586 (=> (not res!404466) (not e!358947))))

(assert (=> b!626586 (= res!404466 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18160 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18160 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!626587 () Bool)

(declare-fun res!404460 () Bool)

(assert (=> b!626587 (=> (not res!404460) (not e!358947))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37847 (_ BitVec 32)) Bool)

(assert (=> b!626587 (= res!404460 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!626588 () Bool)

(declare-fun res!404467 () Bool)

(assert (=> b!626588 (=> (not res!404467) (not e!358946))))

(assert (=> b!626588 (= res!404467 (validKeyInArray!0 (select (arr!18160 a!2986) j!136)))))

(assert (= (and start!56594 res!404465) b!626584))

(assert (= (and b!626584 res!404464) b!626588))

(assert (= (and b!626588 res!404467) b!626585))

(assert (= (and b!626585 res!404468) b!626582))

(assert (= (and b!626582 res!404463) b!626580))

(assert (= (and b!626580 res!404462) b!626587))

(assert (= (and b!626587 res!404460) b!626581))

(assert (= (and b!626581 res!404461) b!626586))

(assert (= (and b!626586 res!404466) b!626583))

(declare-fun m!602003 () Bool)

(assert (=> b!626586 m!602003))

(declare-fun m!602005 () Bool)

(assert (=> b!626586 m!602005))

(declare-fun m!602007 () Bool)

(assert (=> b!626586 m!602007))

(declare-fun m!602009 () Bool)

(assert (=> start!56594 m!602009))

(declare-fun m!602011 () Bool)

(assert (=> start!56594 m!602011))

(declare-fun m!602013 () Bool)

(assert (=> b!626581 m!602013))

(declare-fun m!602015 () Bool)

(assert (=> b!626587 m!602015))

(declare-fun m!602017 () Bool)

(assert (=> b!626585 m!602017))

(declare-fun m!602019 () Bool)

(assert (=> b!626588 m!602019))

(assert (=> b!626588 m!602019))

(declare-fun m!602021 () Bool)

(assert (=> b!626588 m!602021))

(assert (=> b!626583 m!602019))

(assert (=> b!626583 m!602019))

(declare-fun m!602023 () Bool)

(assert (=> b!626583 m!602023))

(declare-fun m!602025 () Bool)

(assert (=> b!626580 m!602025))

(declare-fun m!602027 () Bool)

(assert (=> b!626582 m!602027))

(check-sat (not b!626588) (not b!626582) (not b!626587) (not b!626585) (not b!626581) (not start!56594) (not b!626583) (not b!626580))
(check-sat)
