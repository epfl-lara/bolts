; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53440 () Bool)

(assert start!53440)

(declare-fun b!581025 () Bool)

(declare-fun e!333483 () Bool)

(declare-fun e!333482 () Bool)

(assert (=> b!581025 (= e!333483 e!333482)))

(declare-fun res!368996 () Bool)

(assert (=> b!581025 (=> (not res!368996) (not e!333482))))

(declare-datatypes ((SeekEntryResult!5865 0))(
  ( (MissingZero!5865 (index!25687 (_ BitVec 32))) (Found!5865 (index!25688 (_ BitVec 32))) (Intermediate!5865 (undefined!6677 Bool) (index!25689 (_ BitVec 32)) (x!54585 (_ BitVec 32))) (Undefined!5865) (MissingVacant!5865 (index!25690 (_ BitVec 32))) )
))
(declare-fun lt!264829 () SeekEntryResult!5865)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!581025 (= res!368996 (or (= lt!264829 (MissingZero!5865 i!1108)) (= lt!264829 (MissingVacant!5865 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-datatypes ((array!36295 0))(
  ( (array!36296 (arr!17418 (Array (_ BitVec 32) (_ BitVec 64))) (size!17782 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36295)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36295 (_ BitVec 32)) SeekEntryResult!5865)

(assert (=> b!581025 (= lt!264829 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun res!368992 () Bool)

(assert (=> start!53440 (=> (not res!368992) (not e!333483))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53440 (= res!368992 (validMask!0 mask!3053))))

(assert (=> start!53440 e!333483))

(assert (=> start!53440 true))

(declare-fun array_inv!13192 (array!36295) Bool)

(assert (=> start!53440 (array_inv!13192 a!2986)))

(declare-fun b!581026 () Bool)

(assert (=> b!581026 (= e!333482 false)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!264830 () SeekEntryResult!5865)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36295 (_ BitVec 32)) SeekEntryResult!5865)

(assert (=> b!581026 (= lt!264830 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17418 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!581027 () Bool)

(declare-fun res!368995 () Bool)

(assert (=> b!581027 (=> (not res!368995) (not e!333482))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36295 (_ BitVec 32)) Bool)

(assert (=> b!581027 (= res!368995 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!581028 () Bool)

(declare-fun res!368991 () Bool)

(assert (=> b!581028 (=> (not res!368991) (not e!333482))))

(declare-datatypes ((List!11512 0))(
  ( (Nil!11509) (Cons!11508 (h!12553 (_ BitVec 64)) (t!17748 List!11512)) )
))
(declare-fun arrayNoDuplicates!0 (array!36295 (_ BitVec 32) List!11512) Bool)

(assert (=> b!581028 (= res!368991 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11509))))

(declare-fun b!581029 () Bool)

(declare-fun res!368993 () Bool)

(assert (=> b!581029 (=> (not res!368993) (not e!333483))))

(declare-fun arrayContainsKey!0 (array!36295 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!581029 (= res!368993 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!581030 () Bool)

(declare-fun res!368998 () Bool)

(assert (=> b!581030 (=> (not res!368998) (not e!333483))))

(assert (=> b!581030 (= res!368998 (and (= (size!17782 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17782 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17782 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!581031 () Bool)

(declare-fun res!368997 () Bool)

(assert (=> b!581031 (=> (not res!368997) (not e!333483))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!581031 (= res!368997 (validKeyInArray!0 k!1786))))

(declare-fun b!581032 () Bool)

(declare-fun res!368999 () Bool)

(assert (=> b!581032 (=> (not res!368999) (not e!333482))))

(assert (=> b!581032 (= res!368999 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17418 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17418 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!581033 () Bool)

(declare-fun res!368994 () Bool)

(assert (=> b!581033 (=> (not res!368994) (not e!333483))))

(assert (=> b!581033 (= res!368994 (validKeyInArray!0 (select (arr!17418 a!2986) j!136)))))

(assert (= (and start!53440 res!368992) b!581030))

(assert (= (and b!581030 res!368998) b!581033))

(assert (= (and b!581033 res!368994) b!581031))

(assert (= (and b!581031 res!368997) b!581029))

(assert (= (and b!581029 res!368993) b!581025))

(assert (= (and b!581025 res!368996) b!581027))

(assert (= (and b!581027 res!368995) b!581028))

(assert (= (and b!581028 res!368991) b!581032))

(assert (= (and b!581032 res!368999) b!581026))

(declare-fun m!559627 () Bool)

(assert (=> b!581033 m!559627))

(assert (=> b!581033 m!559627))

(declare-fun m!559629 () Bool)

(assert (=> b!581033 m!559629))

(declare-fun m!559631 () Bool)

(assert (=> b!581031 m!559631))

(declare-fun m!559633 () Bool)

(assert (=> b!581032 m!559633))

(declare-fun m!559635 () Bool)

(assert (=> b!581032 m!559635))

(declare-fun m!559637 () Bool)

(assert (=> b!581032 m!559637))

(declare-fun m!559639 () Bool)

(assert (=> start!53440 m!559639))

(declare-fun m!559641 () Bool)

(assert (=> start!53440 m!559641))

(declare-fun m!559643 () Bool)

(assert (=> b!581027 m!559643))

(assert (=> b!581026 m!559627))

(assert (=> b!581026 m!559627))

(declare-fun m!559645 () Bool)

(assert (=> b!581026 m!559645))

(declare-fun m!559647 () Bool)

(assert (=> b!581025 m!559647))

(declare-fun m!559649 () Bool)

(assert (=> b!581029 m!559649))

(declare-fun m!559651 () Bool)

(assert (=> b!581028 m!559651))

(push 1)

