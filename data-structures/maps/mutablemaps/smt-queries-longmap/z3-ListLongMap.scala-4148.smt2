; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!56588 () Bool)

(assert start!56588)

(declare-fun b!626499 () Bool)

(declare-fun res!404380 () Bool)

(declare-fun e!358919 () Bool)

(assert (=> b!626499 (=> (not res!404380) (not e!358919))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!37841 0))(
  ( (array!37842 (arr!18157 (Array (_ BitVec 32) (_ BitVec 64))) (size!18521 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37841)

(assert (=> b!626499 (= res!404380 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18157 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18157 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!626501 () Bool)

(declare-fun res!404382 () Bool)

(declare-fun e!358921 () Bool)

(assert (=> b!626501 (=> (not res!404382) (not e!358921))))

(declare-fun arrayContainsKey!0 (array!37841 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!626501 (= res!404382 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!626502 () Bool)

(assert (=> b!626502 (= e!358921 e!358919)))

(declare-fun res!404385 () Bool)

(assert (=> b!626502 (=> (not res!404385) (not e!358919))))

(declare-datatypes ((SeekEntryResult!6604 0))(
  ( (MissingZero!6604 (index!28699 (_ BitVec 32))) (Found!6604 (index!28700 (_ BitVec 32))) (Intermediate!6604 (undefined!7416 Bool) (index!28701 (_ BitVec 32)) (x!57473 (_ BitVec 32))) (Undefined!6604) (MissingVacant!6604 (index!28702 (_ BitVec 32))) )
))
(declare-fun lt!290082 () SeekEntryResult!6604)

(assert (=> b!626502 (= res!404385 (or (= lt!290082 (MissingZero!6604 i!1108)) (= lt!290082 (MissingVacant!6604 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37841 (_ BitVec 32)) SeekEntryResult!6604)

(assert (=> b!626502 (= lt!290082 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!626503 () Bool)

(declare-fun res!404381 () Bool)

(assert (=> b!626503 (=> (not res!404381) (not e!358919))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37841 (_ BitVec 32)) Bool)

(assert (=> b!626503 (= res!404381 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!626504 () Bool)

(declare-fun res!404387 () Bool)

(assert (=> b!626504 (=> (not res!404387) (not e!358919))))

(declare-datatypes ((List!12251 0))(
  ( (Nil!12248) (Cons!12247 (h!13292 (_ BitVec 64)) (t!18487 List!12251)) )
))
(declare-fun arrayNoDuplicates!0 (array!37841 (_ BitVec 32) List!12251) Bool)

(assert (=> b!626504 (= res!404387 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12248))))

(declare-fun b!626505 () Bool)

(declare-fun res!404383 () Bool)

(assert (=> b!626505 (=> (not res!404383) (not e!358921))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!626505 (= res!404383 (validKeyInArray!0 k0!1786))))

(declare-fun b!626500 () Bool)

(declare-fun res!404384 () Bool)

(assert (=> b!626500 (=> (not res!404384) (not e!358921))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!626500 (= res!404384 (and (= (size!18521 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18521 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18521 a!2986)) (not (= i!1108 j!136))))))

(declare-fun res!404386 () Bool)

(assert (=> start!56588 (=> (not res!404386) (not e!358921))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56588 (= res!404386 (validMask!0 mask!3053))))

(assert (=> start!56588 e!358921))

(assert (=> start!56588 true))

(declare-fun array_inv!13931 (array!37841) Bool)

(assert (=> start!56588 (array_inv!13931 a!2986)))

(declare-fun b!626506 () Bool)

(assert (=> b!626506 (= e!358919 false)))

(declare-fun lt!290081 () SeekEntryResult!6604)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37841 (_ BitVec 32)) SeekEntryResult!6604)

(assert (=> b!626506 (= lt!290081 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18157 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!626507 () Bool)

(declare-fun res!404379 () Bool)

(assert (=> b!626507 (=> (not res!404379) (not e!358921))))

(assert (=> b!626507 (= res!404379 (validKeyInArray!0 (select (arr!18157 a!2986) j!136)))))

(assert (= (and start!56588 res!404386) b!626500))

(assert (= (and b!626500 res!404384) b!626507))

(assert (= (and b!626507 res!404379) b!626505))

(assert (= (and b!626505 res!404383) b!626501))

(assert (= (and b!626501 res!404382) b!626502))

(assert (= (and b!626502 res!404385) b!626503))

(assert (= (and b!626503 res!404381) b!626504))

(assert (= (and b!626504 res!404387) b!626499))

(assert (= (and b!626499 res!404380) b!626506))

(declare-fun m!601925 () Bool)

(assert (=> b!626502 m!601925))

(declare-fun m!601927 () Bool)

(assert (=> b!626504 m!601927))

(declare-fun m!601929 () Bool)

(assert (=> b!626506 m!601929))

(assert (=> b!626506 m!601929))

(declare-fun m!601931 () Bool)

(assert (=> b!626506 m!601931))

(assert (=> b!626507 m!601929))

(assert (=> b!626507 m!601929))

(declare-fun m!601933 () Bool)

(assert (=> b!626507 m!601933))

(declare-fun m!601935 () Bool)

(assert (=> b!626501 m!601935))

(declare-fun m!601937 () Bool)

(assert (=> b!626503 m!601937))

(declare-fun m!601939 () Bool)

(assert (=> start!56588 m!601939))

(declare-fun m!601941 () Bool)

(assert (=> start!56588 m!601941))

(declare-fun m!601943 () Bool)

(assert (=> b!626499 m!601943))

(declare-fun m!601945 () Bool)

(assert (=> b!626499 m!601945))

(declare-fun m!601947 () Bool)

(assert (=> b!626499 m!601947))

(declare-fun m!601949 () Bool)

(assert (=> b!626505 m!601949))

(check-sat (not start!56588) (not b!626504) (not b!626506) (not b!626502) (not b!626507) (not b!626503) (not b!626505) (not b!626501))
(check-sat)
