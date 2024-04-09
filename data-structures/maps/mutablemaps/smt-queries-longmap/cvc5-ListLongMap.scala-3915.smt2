; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53518 () Bool)

(assert start!53518)

(declare-fun res!370074 () Bool)

(declare-fun e!333835 () Bool)

(assert (=> start!53518 (=> (not res!370074) (not e!333835))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53518 (= res!370074 (validMask!0 mask!3053))))

(assert (=> start!53518 e!333835))

(assert (=> start!53518 true))

(declare-datatypes ((array!36373 0))(
  ( (array!36374 (arr!17457 (Array (_ BitVec 32) (_ BitVec 64))) (size!17821 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36373)

(declare-fun array_inv!13231 (array!36373) Bool)

(assert (=> start!53518 (array_inv!13231 a!2986)))

(declare-fun b!582105 () Bool)

(declare-fun res!370076 () Bool)

(declare-fun e!333833 () Bool)

(assert (=> b!582105 (=> (not res!370076) (not e!333833))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36373 (_ BitVec 32)) Bool)

(assert (=> b!582105 (= res!370076 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!582106 () Bool)

(declare-fun res!370079 () Bool)

(assert (=> b!582106 (=> (not res!370079) (not e!333835))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!582106 (= res!370079 (and (= (size!17821 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17821 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17821 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!582107 () Bool)

(declare-fun res!370073 () Bool)

(assert (=> b!582107 (=> (not res!370073) (not e!333835))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!582107 (= res!370073 (validKeyInArray!0 k!1786))))

(declare-fun b!582108 () Bool)

(assert (=> b!582108 (= e!333835 e!333833)))

(declare-fun res!370071 () Bool)

(assert (=> b!582108 (=> (not res!370071) (not e!333833))))

(declare-datatypes ((SeekEntryResult!5904 0))(
  ( (MissingZero!5904 (index!25843 (_ BitVec 32))) (Found!5904 (index!25844 (_ BitVec 32))) (Intermediate!5904 (undefined!6716 Bool) (index!25845 (_ BitVec 32)) (x!54728 (_ BitVec 32))) (Undefined!5904) (MissingVacant!5904 (index!25846 (_ BitVec 32))) )
))
(declare-fun lt!265046 () SeekEntryResult!5904)

(assert (=> b!582108 (= res!370071 (or (= lt!265046 (MissingZero!5904 i!1108)) (= lt!265046 (MissingVacant!5904 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36373 (_ BitVec 32)) SeekEntryResult!5904)

(assert (=> b!582108 (= lt!265046 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!582109 () Bool)

(declare-fun res!370075 () Bool)

(assert (=> b!582109 (=> (not res!370075) (not e!333833))))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!582109 (= res!370075 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17457 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17457 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!582110 () Bool)

(declare-fun res!370072 () Bool)

(assert (=> b!582110 (=> (not res!370072) (not e!333835))))

(assert (=> b!582110 (= res!370072 (validKeyInArray!0 (select (arr!17457 a!2986) j!136)))))

(declare-fun b!582111 () Bool)

(assert (=> b!582111 (= e!333833 false)))

(declare-fun lt!265045 () SeekEntryResult!5904)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36373 (_ BitVec 32)) SeekEntryResult!5904)

(assert (=> b!582111 (= lt!265045 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17457 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!582112 () Bool)

(declare-fun res!370078 () Bool)

(assert (=> b!582112 (=> (not res!370078) (not e!333835))))

(declare-fun arrayContainsKey!0 (array!36373 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!582112 (= res!370078 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!582113 () Bool)

(declare-fun res!370077 () Bool)

(assert (=> b!582113 (=> (not res!370077) (not e!333833))))

(declare-datatypes ((List!11551 0))(
  ( (Nil!11548) (Cons!11547 (h!12592 (_ BitVec 64)) (t!17787 List!11551)) )
))
(declare-fun arrayNoDuplicates!0 (array!36373 (_ BitVec 32) List!11551) Bool)

(assert (=> b!582113 (= res!370077 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11548))))

(assert (= (and start!53518 res!370074) b!582106))

(assert (= (and b!582106 res!370079) b!582110))

(assert (= (and b!582110 res!370072) b!582107))

(assert (= (and b!582107 res!370073) b!582112))

(assert (= (and b!582112 res!370078) b!582108))

(assert (= (and b!582108 res!370071) b!582105))

(assert (= (and b!582105 res!370076) b!582113))

(assert (= (and b!582113 res!370077) b!582109))

(assert (= (and b!582109 res!370075) b!582111))

(declare-fun m!560665 () Bool)

(assert (=> start!53518 m!560665))

(declare-fun m!560667 () Bool)

(assert (=> start!53518 m!560667))

(declare-fun m!560669 () Bool)

(assert (=> b!582108 m!560669))

(declare-fun m!560671 () Bool)

(assert (=> b!582105 m!560671))

(declare-fun m!560673 () Bool)

(assert (=> b!582112 m!560673))

(declare-fun m!560675 () Bool)

(assert (=> b!582111 m!560675))

(assert (=> b!582111 m!560675))

(declare-fun m!560677 () Bool)

(assert (=> b!582111 m!560677))

(declare-fun m!560679 () Bool)

(assert (=> b!582109 m!560679))

(declare-fun m!560681 () Bool)

(assert (=> b!582109 m!560681))

(declare-fun m!560683 () Bool)

(assert (=> b!582109 m!560683))

(declare-fun m!560685 () Bool)

(assert (=> b!582113 m!560685))

(declare-fun m!560687 () Bool)

(assert (=> b!582107 m!560687))

(assert (=> b!582110 m!560675))

(assert (=> b!582110 m!560675))

(declare-fun m!560689 () Bool)

(assert (=> b!582110 m!560689))

(push 1)

