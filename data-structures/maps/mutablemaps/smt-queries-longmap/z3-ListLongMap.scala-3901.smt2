; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53436 () Bool)

(assert start!53436)

(declare-fun b!580971 () Bool)

(declare-fun res!368937 () Bool)

(declare-fun e!333464 () Bool)

(assert (=> b!580971 (=> (not res!368937) (not e!333464))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!580971 (= res!368937 (validKeyInArray!0 k0!1786))))

(declare-fun b!580972 () Bool)

(declare-fun res!368944 () Bool)

(assert (=> b!580972 (=> (not res!368944) (not e!333464))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((array!36291 0))(
  ( (array!36292 (arr!17416 (Array (_ BitVec 32) (_ BitVec 64))) (size!17780 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36291)

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!580972 (= res!368944 (and (= (size!17780 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17780 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17780 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!580973 () Bool)

(declare-fun res!368940 () Bool)

(assert (=> b!580973 (=> (not res!368940) (not e!333464))))

(declare-fun arrayContainsKey!0 (array!36291 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!580973 (= res!368940 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun res!368945 () Bool)

(assert (=> start!53436 (=> (not res!368945) (not e!333464))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53436 (= res!368945 (validMask!0 mask!3053))))

(assert (=> start!53436 e!333464))

(assert (=> start!53436 true))

(declare-fun array_inv!13190 (array!36291) Bool)

(assert (=> start!53436 (array_inv!13190 a!2986)))

(declare-fun b!580974 () Bool)

(declare-fun res!368942 () Bool)

(declare-fun e!333466 () Bool)

(assert (=> b!580974 (=> (not res!368942) (not e!333466))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!580974 (= res!368942 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17416 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17416 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!580975 () Bool)

(assert (=> b!580975 (= e!333464 e!333466)))

(declare-fun res!368938 () Bool)

(assert (=> b!580975 (=> (not res!368938) (not e!333466))))

(declare-datatypes ((SeekEntryResult!5863 0))(
  ( (MissingZero!5863 (index!25679 (_ BitVec 32))) (Found!5863 (index!25680 (_ BitVec 32))) (Intermediate!5863 (undefined!6675 Bool) (index!25681 (_ BitVec 32)) (x!54575 (_ BitVec 32))) (Undefined!5863) (MissingVacant!5863 (index!25682 (_ BitVec 32))) )
))
(declare-fun lt!264818 () SeekEntryResult!5863)

(assert (=> b!580975 (= res!368938 (or (= lt!264818 (MissingZero!5863 i!1108)) (= lt!264818 (MissingVacant!5863 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36291 (_ BitVec 32)) SeekEntryResult!5863)

(assert (=> b!580975 (= lt!264818 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!580976 () Bool)

(declare-fun res!368939 () Bool)

(assert (=> b!580976 (=> (not res!368939) (not e!333466))))

(declare-datatypes ((List!11510 0))(
  ( (Nil!11507) (Cons!11506 (h!12551 (_ BitVec 64)) (t!17746 List!11510)) )
))
(declare-fun arrayNoDuplicates!0 (array!36291 (_ BitVec 32) List!11510) Bool)

(assert (=> b!580976 (= res!368939 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11507))))

(declare-fun b!580977 () Bool)

(declare-fun res!368941 () Bool)

(assert (=> b!580977 (=> (not res!368941) (not e!333466))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36291 (_ BitVec 32)) Bool)

(assert (=> b!580977 (= res!368941 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!580978 () Bool)

(declare-fun res!368943 () Bool)

(assert (=> b!580978 (=> (not res!368943) (not e!333464))))

(assert (=> b!580978 (= res!368943 (validKeyInArray!0 (select (arr!17416 a!2986) j!136)))))

(declare-fun b!580979 () Bool)

(assert (=> b!580979 (= e!333466 false)))

(declare-fun lt!264817 () SeekEntryResult!5863)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36291 (_ BitVec 32)) SeekEntryResult!5863)

(assert (=> b!580979 (= lt!264817 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17416 a!2986) j!136) a!2986 mask!3053))))

(assert (= (and start!53436 res!368945) b!580972))

(assert (= (and b!580972 res!368944) b!580978))

(assert (= (and b!580978 res!368943) b!580971))

(assert (= (and b!580971 res!368937) b!580973))

(assert (= (and b!580973 res!368940) b!580975))

(assert (= (and b!580975 res!368938) b!580977))

(assert (= (and b!580977 res!368941) b!580976))

(assert (= (and b!580976 res!368939) b!580974))

(assert (= (and b!580974 res!368942) b!580979))

(declare-fun m!559575 () Bool)

(assert (=> b!580971 m!559575))

(declare-fun m!559577 () Bool)

(assert (=> b!580979 m!559577))

(assert (=> b!580979 m!559577))

(declare-fun m!559579 () Bool)

(assert (=> b!580979 m!559579))

(declare-fun m!559581 () Bool)

(assert (=> b!580977 m!559581))

(declare-fun m!559583 () Bool)

(assert (=> b!580973 m!559583))

(declare-fun m!559585 () Bool)

(assert (=> b!580975 m!559585))

(declare-fun m!559587 () Bool)

(assert (=> b!580976 m!559587))

(declare-fun m!559589 () Bool)

(assert (=> b!580974 m!559589))

(declare-fun m!559591 () Bool)

(assert (=> b!580974 m!559591))

(declare-fun m!559593 () Bool)

(assert (=> b!580974 m!559593))

(declare-fun m!559595 () Bool)

(assert (=> start!53436 m!559595))

(declare-fun m!559597 () Bool)

(assert (=> start!53436 m!559597))

(assert (=> b!580978 m!559577))

(assert (=> b!580978 m!559577))

(declare-fun m!559599 () Bool)

(assert (=> b!580978 m!559599))

(check-sat (not b!580975) (not b!580976) (not b!580978) (not b!580973) (not b!580971) (not start!53436) (not b!580977) (not b!580979))
(check-sat)
