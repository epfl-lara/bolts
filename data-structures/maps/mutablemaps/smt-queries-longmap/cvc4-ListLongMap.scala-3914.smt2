; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53516 () Bool)

(assert start!53516)

(declare-fun b!582079 () Bool)

(declare-fun res!370045 () Bool)

(declare-fun e!333826 () Bool)

(assert (=> b!582079 (=> (not res!370045) (not e!333826))))

(declare-datatypes ((array!36371 0))(
  ( (array!36372 (arr!17456 (Array (_ BitVec 32) (_ BitVec 64))) (size!17820 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36371)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36371 (_ BitVec 32)) Bool)

(assert (=> b!582079 (= res!370045 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!582080 () Bool)

(assert (=> b!582080 (= e!333826 false)))

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5903 0))(
  ( (MissingZero!5903 (index!25839 (_ BitVec 32))) (Found!5903 (index!25840 (_ BitVec 32))) (Intermediate!5903 (undefined!6715 Bool) (index!25841 (_ BitVec 32)) (x!54719 (_ BitVec 32))) (Undefined!5903) (MissingVacant!5903 (index!25842 (_ BitVec 32))) )
))
(declare-fun lt!265039 () SeekEntryResult!5903)

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36371 (_ BitVec 32)) SeekEntryResult!5903)

(assert (=> b!582080 (= lt!265039 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17456 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!582081 () Bool)

(declare-fun e!333824 () Bool)

(assert (=> b!582081 (= e!333824 e!333826)))

(declare-fun res!370051 () Bool)

(assert (=> b!582081 (=> (not res!370051) (not e!333826))))

(declare-fun lt!265040 () SeekEntryResult!5903)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!582081 (= res!370051 (or (= lt!265040 (MissingZero!5903 i!1108)) (= lt!265040 (MissingVacant!5903 i!1108))))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36371 (_ BitVec 32)) SeekEntryResult!5903)

(assert (=> b!582081 (= lt!265040 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!582082 () Bool)

(declare-fun res!370046 () Bool)

(assert (=> b!582082 (=> (not res!370046) (not e!333824))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!582082 (= res!370046 (validKeyInArray!0 (select (arr!17456 a!2986) j!136)))))

(declare-fun b!582083 () Bool)

(declare-fun res!370047 () Bool)

(assert (=> b!582083 (=> (not res!370047) (not e!333824))))

(assert (=> b!582083 (= res!370047 (validKeyInArray!0 k!1786))))

(declare-fun b!582084 () Bool)

(declare-fun res!370052 () Bool)

(assert (=> b!582084 (=> (not res!370052) (not e!333824))))

(assert (=> b!582084 (= res!370052 (and (= (size!17820 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17820 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17820 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!582085 () Bool)

(declare-fun res!370044 () Bool)

(assert (=> b!582085 (=> (not res!370044) (not e!333826))))

(assert (=> b!582085 (= res!370044 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17456 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17456 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!582086 () Bool)

(declare-fun res!370050 () Bool)

(assert (=> b!582086 (=> (not res!370050) (not e!333824))))

(declare-fun arrayContainsKey!0 (array!36371 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!582086 (= res!370050 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!582078 () Bool)

(declare-fun res!370048 () Bool)

(assert (=> b!582078 (=> (not res!370048) (not e!333826))))

(declare-datatypes ((List!11550 0))(
  ( (Nil!11547) (Cons!11546 (h!12591 (_ BitVec 64)) (t!17786 List!11550)) )
))
(declare-fun arrayNoDuplicates!0 (array!36371 (_ BitVec 32) List!11550) Bool)

(assert (=> b!582078 (= res!370048 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11547))))

(declare-fun res!370049 () Bool)

(assert (=> start!53516 (=> (not res!370049) (not e!333824))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53516 (= res!370049 (validMask!0 mask!3053))))

(assert (=> start!53516 e!333824))

(assert (=> start!53516 true))

(declare-fun array_inv!13230 (array!36371) Bool)

(assert (=> start!53516 (array_inv!13230 a!2986)))

(assert (= (and start!53516 res!370049) b!582084))

(assert (= (and b!582084 res!370052) b!582082))

(assert (= (and b!582082 res!370046) b!582083))

(assert (= (and b!582083 res!370047) b!582086))

(assert (= (and b!582086 res!370050) b!582081))

(assert (= (and b!582081 res!370051) b!582079))

(assert (= (and b!582079 res!370045) b!582078))

(assert (= (and b!582078 res!370048) b!582085))

(assert (= (and b!582085 res!370044) b!582080))

(declare-fun m!560639 () Bool)

(assert (=> b!582082 m!560639))

(assert (=> b!582082 m!560639))

(declare-fun m!560641 () Bool)

(assert (=> b!582082 m!560641))

(declare-fun m!560643 () Bool)

(assert (=> b!582081 m!560643))

(declare-fun m!560645 () Bool)

(assert (=> start!53516 m!560645))

(declare-fun m!560647 () Bool)

(assert (=> start!53516 m!560647))

(declare-fun m!560649 () Bool)

(assert (=> b!582083 m!560649))

(declare-fun m!560651 () Bool)

(assert (=> b!582078 m!560651))

(declare-fun m!560653 () Bool)

(assert (=> b!582085 m!560653))

(declare-fun m!560655 () Bool)

(assert (=> b!582085 m!560655))

(declare-fun m!560657 () Bool)

(assert (=> b!582085 m!560657))

(declare-fun m!560659 () Bool)

(assert (=> b!582086 m!560659))

(assert (=> b!582080 m!560639))

(assert (=> b!582080 m!560639))

(declare-fun m!560661 () Bool)

(assert (=> b!582080 m!560661))

(declare-fun m!560663 () Bool)

(assert (=> b!582079 m!560663))

(push 1)

(assert (not b!582082))

(assert (not b!582080))

