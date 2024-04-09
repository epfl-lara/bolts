; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53434 () Bool)

(assert start!53434)

(declare-fun b!580944 () Bool)

(declare-fun res!368914 () Bool)

(declare-fun e!333455 () Bool)

(assert (=> b!580944 (=> (not res!368914) (not e!333455))))

(declare-datatypes ((array!36289 0))(
  ( (array!36290 (arr!17415 (Array (_ BitVec 32) (_ BitVec 64))) (size!17779 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36289)

(declare-datatypes ((List!11509 0))(
  ( (Nil!11506) (Cons!11505 (h!12550 (_ BitVec 64)) (t!17745 List!11509)) )
))
(declare-fun arrayNoDuplicates!0 (array!36289 (_ BitVec 32) List!11509) Bool)

(assert (=> b!580944 (= res!368914 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11506))))

(declare-fun b!580945 () Bool)

(declare-fun e!333457 () Bool)

(assert (=> b!580945 (= e!333457 e!333455)))

(declare-fun res!368917 () Bool)

(assert (=> b!580945 (=> (not res!368917) (not e!333455))))

(declare-datatypes ((SeekEntryResult!5862 0))(
  ( (MissingZero!5862 (index!25675 (_ BitVec 32))) (Found!5862 (index!25676 (_ BitVec 32))) (Intermediate!5862 (undefined!6674 Bool) (index!25677 (_ BitVec 32)) (x!54574 (_ BitVec 32))) (Undefined!5862) (MissingVacant!5862 (index!25678 (_ BitVec 32))) )
))
(declare-fun lt!264812 () SeekEntryResult!5862)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!580945 (= res!368917 (or (= lt!264812 (MissingZero!5862 i!1108)) (= lt!264812 (MissingVacant!5862 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36289 (_ BitVec 32)) SeekEntryResult!5862)

(assert (=> b!580945 (= lt!264812 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!580946 () Bool)

(declare-fun res!368911 () Bool)

(assert (=> b!580946 (=> (not res!368911) (not e!333455))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36289 (_ BitVec 32)) Bool)

(assert (=> b!580946 (= res!368911 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!580947 () Bool)

(declare-fun res!368913 () Bool)

(assert (=> b!580947 (=> (not res!368913) (not e!333457))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!580947 (= res!368913 (and (= (size!17779 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17779 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17779 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!580948 () Bool)

(declare-fun res!368916 () Bool)

(assert (=> b!580948 (=> (not res!368916) (not e!333455))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!580948 (= res!368916 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17415 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17415 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!580949 () Bool)

(declare-fun res!368910 () Bool)

(assert (=> b!580949 (=> (not res!368910) (not e!333457))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!580949 (= res!368910 (validKeyInArray!0 (select (arr!17415 a!2986) j!136)))))

(declare-fun b!580950 () Bool)

(declare-fun res!368915 () Bool)

(assert (=> b!580950 (=> (not res!368915) (not e!333457))))

(assert (=> b!580950 (= res!368915 (validKeyInArray!0 k!1786))))

(declare-fun b!580951 () Bool)

(declare-fun res!368918 () Bool)

(assert (=> b!580951 (=> (not res!368918) (not e!333457))))

(declare-fun arrayContainsKey!0 (array!36289 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!580951 (= res!368918 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun res!368912 () Bool)

(assert (=> start!53434 (=> (not res!368912) (not e!333457))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53434 (= res!368912 (validMask!0 mask!3053))))

(assert (=> start!53434 e!333457))

(assert (=> start!53434 true))

(declare-fun array_inv!13189 (array!36289) Bool)

(assert (=> start!53434 (array_inv!13189 a!2986)))

(declare-fun b!580952 () Bool)

(assert (=> b!580952 (= e!333455 false)))

(declare-fun lt!264811 () SeekEntryResult!5862)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36289 (_ BitVec 32)) SeekEntryResult!5862)

(assert (=> b!580952 (= lt!264811 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17415 a!2986) j!136) a!2986 mask!3053))))

(assert (= (and start!53434 res!368912) b!580947))

(assert (= (and b!580947 res!368913) b!580949))

(assert (= (and b!580949 res!368910) b!580950))

(assert (= (and b!580950 res!368915) b!580951))

(assert (= (and b!580951 res!368918) b!580945))

(assert (= (and b!580945 res!368917) b!580946))

(assert (= (and b!580946 res!368911) b!580944))

(assert (= (and b!580944 res!368914) b!580948))

(assert (= (and b!580948 res!368916) b!580952))

(declare-fun m!559549 () Bool)

(assert (=> b!580946 m!559549))

(declare-fun m!559551 () Bool)

(assert (=> b!580952 m!559551))

(assert (=> b!580952 m!559551))

(declare-fun m!559553 () Bool)

(assert (=> b!580952 m!559553))

(declare-fun m!559555 () Bool)

(assert (=> b!580951 m!559555))

(declare-fun m!559557 () Bool)

(assert (=> b!580948 m!559557))

(declare-fun m!559559 () Bool)

(assert (=> b!580948 m!559559))

(declare-fun m!559561 () Bool)

(assert (=> b!580948 m!559561))

(assert (=> b!580949 m!559551))

(assert (=> b!580949 m!559551))

(declare-fun m!559563 () Bool)

(assert (=> b!580949 m!559563))

(declare-fun m!559565 () Bool)

(assert (=> b!580945 m!559565))

(declare-fun m!559567 () Bool)

(assert (=> b!580950 m!559567))

(declare-fun m!559569 () Bool)

(assert (=> start!53434 m!559569))

(declare-fun m!559571 () Bool)

(assert (=> start!53434 m!559571))

(declare-fun m!559573 () Bool)

(assert (=> b!580944 m!559573))

(push 1)

