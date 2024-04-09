; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53750 () Bool)

(assert start!53750)

(declare-fun b!585847 () Bool)

(declare-fun res!373816 () Bool)

(declare-fun e!335048 () Bool)

(assert (=> b!585847 (=> (not res!373816) (not e!335048))))

(declare-datatypes ((array!36605 0))(
  ( (array!36606 (arr!17573 (Array (_ BitVec 32) (_ BitVec 64))) (size!17937 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36605)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!585847 (= res!373816 (validKeyInArray!0 (select (arr!17573 a!2986) j!136)))))

(declare-fun b!585848 () Bool)

(declare-fun res!373821 () Bool)

(assert (=> b!585848 (=> (not res!373821) (not e!335048))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!36605 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!585848 (= res!373821 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!585849 () Bool)

(declare-fun res!373813 () Bool)

(declare-fun e!335050 () Bool)

(assert (=> b!585849 (=> (not res!373813) (not e!335050))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6020 0))(
  ( (MissingZero!6020 (index!26307 (_ BitVec 32))) (Found!6020 (index!26308 (_ BitVec 32))) (Intermediate!6020 (undefined!6832 Bool) (index!26309 (_ BitVec 32)) (x!55148 (_ BitVec 32))) (Undefined!6020) (MissingVacant!6020 (index!26310 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36605 (_ BitVec 32)) SeekEntryResult!6020)

(assert (=> b!585849 (= res!373813 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17573 a!2986) j!136) a!2986 mask!3053) (Found!6020 j!136)))))

(declare-fun b!585850 () Bool)

(declare-fun res!373815 () Bool)

(assert (=> b!585850 (=> (not res!373815) (not e!335048))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!585850 (= res!373815 (and (= (size!17937 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17937 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17937 a!2986)) (not (= i!1108 j!136))))))

(declare-fun res!373823 () Bool)

(assert (=> start!53750 (=> (not res!373823) (not e!335048))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53750 (= res!373823 (validMask!0 mask!3053))))

(assert (=> start!53750 e!335048))

(assert (=> start!53750 true))

(declare-fun array_inv!13347 (array!36605) Bool)

(assert (=> start!53750 (array_inv!13347 a!2986)))

(declare-fun b!585851 () Bool)

(assert (=> b!585851 (= e!335048 e!335050)))

(declare-fun res!373820 () Bool)

(assert (=> b!585851 (=> (not res!373820) (not e!335050))))

(declare-fun lt!265948 () SeekEntryResult!6020)

(assert (=> b!585851 (= res!373820 (or (= lt!265948 (MissingZero!6020 i!1108)) (= lt!265948 (MissingVacant!6020 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36605 (_ BitVec 32)) SeekEntryResult!6020)

(assert (=> b!585851 (= lt!265948 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!585852 () Bool)

(declare-fun res!373819 () Bool)

(assert (=> b!585852 (=> (not res!373819) (not e!335050))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36605 (_ BitVec 32)) Bool)

(assert (=> b!585852 (= res!373819 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!585853 () Bool)

(declare-fun res!373817 () Bool)

(assert (=> b!585853 (=> (not res!373817) (not e!335048))))

(assert (=> b!585853 (= res!373817 (validKeyInArray!0 k!1786))))

(declare-fun b!585854 () Bool)

(assert (=> b!585854 (= e!335050 (not true))))

(declare-fun lt!265949 () (_ BitVec 32))

(assert (=> b!585854 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!265949 vacantSpotIndex!68 (select (arr!17573 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!265949 vacantSpotIndex!68 (select (store (arr!17573 a!2986) i!1108 k!1786) j!136) (array!36606 (store (arr!17573 a!2986) i!1108 k!1786) (size!17937 a!2986)) mask!3053))))

(declare-datatypes ((Unit!18164 0))(
  ( (Unit!18165) )
))
(declare-fun lt!265947 () Unit!18164)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36605 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18164)

(assert (=> b!585854 (= lt!265947 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!265949 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!585854 (= lt!265949 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!585855 () Bool)

(declare-fun res!373818 () Bool)

(assert (=> b!585855 (=> (not res!373818) (not e!335050))))

(assert (=> b!585855 (= res!373818 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17573 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17573 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!585856 () Bool)

(declare-fun res!373822 () Bool)

(assert (=> b!585856 (=> (not res!373822) (not e!335050))))

(assert (=> b!585856 (= res!373822 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17573 a!2986) index!984) (select (arr!17573 a!2986) j!136))) (not (= (select (arr!17573 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!585857 () Bool)

(declare-fun res!373814 () Bool)

(assert (=> b!585857 (=> (not res!373814) (not e!335050))))

(declare-datatypes ((List!11667 0))(
  ( (Nil!11664) (Cons!11663 (h!12708 (_ BitVec 64)) (t!17903 List!11667)) )
))
(declare-fun arrayNoDuplicates!0 (array!36605 (_ BitVec 32) List!11667) Bool)

(assert (=> b!585857 (= res!373814 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11664))))

(assert (= (and start!53750 res!373823) b!585850))

(assert (= (and b!585850 res!373815) b!585847))

(assert (= (and b!585847 res!373816) b!585853))

(assert (= (and b!585853 res!373817) b!585848))

(assert (= (and b!585848 res!373821) b!585851))

(assert (= (and b!585851 res!373820) b!585852))

(assert (= (and b!585852 res!373819) b!585857))

(assert (= (and b!585857 res!373814) b!585855))

(assert (= (and b!585855 res!373818) b!585849))

(assert (= (and b!585849 res!373813) b!585856))

(assert (= (and b!585856 res!373822) b!585854))

(declare-fun m!564197 () Bool)

(assert (=> b!585854 m!564197))

(declare-fun m!564199 () Bool)

(assert (=> b!585854 m!564199))

(declare-fun m!564201 () Bool)

(assert (=> b!585854 m!564201))

(declare-fun m!564203 () Bool)

(assert (=> b!585854 m!564203))

(assert (=> b!585854 m!564197))

(declare-fun m!564205 () Bool)

(assert (=> b!585854 m!564205))

(declare-fun m!564207 () Bool)

(assert (=> b!585854 m!564207))

(assert (=> b!585854 m!564199))

(declare-fun m!564209 () Bool)

(assert (=> b!585854 m!564209))

(declare-fun m!564211 () Bool)

(assert (=> b!585848 m!564211))

(assert (=> b!585849 m!564199))

(assert (=> b!585849 m!564199))

(declare-fun m!564213 () Bool)

(assert (=> b!585849 m!564213))

(declare-fun m!564215 () Bool)

(assert (=> b!585856 m!564215))

(assert (=> b!585856 m!564199))

(declare-fun m!564217 () Bool)

(assert (=> b!585853 m!564217))

(declare-fun m!564219 () Bool)

(assert (=> b!585855 m!564219))

(assert (=> b!585855 m!564203))

(declare-fun m!564221 () Bool)

(assert (=> b!585855 m!564221))

(declare-fun m!564223 () Bool)

(assert (=> b!585851 m!564223))

(assert (=> b!585847 m!564199))

(assert (=> b!585847 m!564199))

(declare-fun m!564225 () Bool)

(assert (=> b!585847 m!564225))

(declare-fun m!564227 () Bool)

(assert (=> b!585857 m!564227))

(declare-fun m!564229 () Bool)

(assert (=> b!585852 m!564229))

(declare-fun m!564231 () Bool)

(assert (=> start!53750 m!564231))

(declare-fun m!564233 () Bool)

(assert (=> start!53750 m!564233))

(push 1)

