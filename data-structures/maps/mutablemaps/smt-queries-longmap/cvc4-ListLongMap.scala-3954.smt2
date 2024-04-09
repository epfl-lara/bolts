; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53756 () Bool)

(assert start!53756)

(declare-fun b!585946 () Bool)

(declare-fun res!373916 () Bool)

(declare-fun e!335076 () Bool)

(assert (=> b!585946 (=> (not res!373916) (not e!335076))))

(declare-datatypes ((array!36611 0))(
  ( (array!36612 (arr!17576 (Array (_ BitVec 32) (_ BitVec 64))) (size!17940 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36611)

(declare-datatypes ((List!11670 0))(
  ( (Nil!11667) (Cons!11666 (h!12711 (_ BitVec 64)) (t!17906 List!11670)) )
))
(declare-fun arrayNoDuplicates!0 (array!36611 (_ BitVec 32) List!11670) Bool)

(assert (=> b!585946 (= res!373916 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11667))))

(declare-fun b!585947 () Bool)

(declare-fun res!373912 () Bool)

(assert (=> b!585947 (=> (not res!373912) (not e!335076))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!585947 (= res!373912 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17576 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17576 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!585948 () Bool)

(declare-fun res!373918 () Bool)

(assert (=> b!585948 (=> (not res!373918) (not e!335076))))

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6023 0))(
  ( (MissingZero!6023 (index!26319 (_ BitVec 32))) (Found!6023 (index!26320 (_ BitVec 32))) (Intermediate!6023 (undefined!6835 Bool) (index!26321 (_ BitVec 32)) (x!55159 (_ BitVec 32))) (Undefined!6023) (MissingVacant!6023 (index!26322 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36611 (_ BitVec 32)) SeekEntryResult!6023)

(assert (=> b!585948 (= res!373918 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17576 a!2986) j!136) a!2986 mask!3053) (Found!6023 j!136)))))

(declare-fun res!373920 () Bool)

(declare-fun e!335075 () Bool)

(assert (=> start!53756 (=> (not res!373920) (not e!335075))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53756 (= res!373920 (validMask!0 mask!3053))))

(assert (=> start!53756 e!335075))

(assert (=> start!53756 true))

(declare-fun array_inv!13350 (array!36611) Bool)

(assert (=> start!53756 (array_inv!13350 a!2986)))

(declare-fun b!585949 () Bool)

(assert (=> b!585949 (= e!335076 (not true))))

(declare-fun lt!265974 () (_ BitVec 32))

(assert (=> b!585949 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!265974 vacantSpotIndex!68 (select (arr!17576 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!265974 vacantSpotIndex!68 (select (store (arr!17576 a!2986) i!1108 k!1786) j!136) (array!36612 (store (arr!17576 a!2986) i!1108 k!1786) (size!17940 a!2986)) mask!3053))))

(declare-datatypes ((Unit!18170 0))(
  ( (Unit!18171) )
))
(declare-fun lt!265976 () Unit!18170)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36611 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18170)

(assert (=> b!585949 (= lt!265976 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!265974 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!585949 (= lt!265974 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!585950 () Bool)

(declare-fun res!373914 () Bool)

(assert (=> b!585950 (=> (not res!373914) (not e!335076))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36611 (_ BitVec 32)) Bool)

(assert (=> b!585950 (= res!373914 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!585951 () Bool)

(declare-fun res!373922 () Bool)

(assert (=> b!585951 (=> (not res!373922) (not e!335076))))

(assert (=> b!585951 (= res!373922 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17576 a!2986) index!984) (select (arr!17576 a!2986) j!136))) (not (= (select (arr!17576 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!585952 () Bool)

(declare-fun res!373915 () Bool)

(assert (=> b!585952 (=> (not res!373915) (not e!335075))))

(assert (=> b!585952 (= res!373915 (and (= (size!17940 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17940 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17940 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!585953 () Bool)

(declare-fun res!373921 () Bool)

(assert (=> b!585953 (=> (not res!373921) (not e!335075))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!585953 (= res!373921 (validKeyInArray!0 (select (arr!17576 a!2986) j!136)))))

(declare-fun b!585954 () Bool)

(assert (=> b!585954 (= e!335075 e!335076)))

(declare-fun res!373917 () Bool)

(assert (=> b!585954 (=> (not res!373917) (not e!335076))))

(declare-fun lt!265975 () SeekEntryResult!6023)

(assert (=> b!585954 (= res!373917 (or (= lt!265975 (MissingZero!6023 i!1108)) (= lt!265975 (MissingVacant!6023 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36611 (_ BitVec 32)) SeekEntryResult!6023)

(assert (=> b!585954 (= lt!265975 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!585955 () Bool)

(declare-fun res!373919 () Bool)

(assert (=> b!585955 (=> (not res!373919) (not e!335075))))

(declare-fun arrayContainsKey!0 (array!36611 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!585955 (= res!373919 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!585956 () Bool)

(declare-fun res!373913 () Bool)

(assert (=> b!585956 (=> (not res!373913) (not e!335075))))

(assert (=> b!585956 (= res!373913 (validKeyInArray!0 k!1786))))

(assert (= (and start!53756 res!373920) b!585952))

(assert (= (and b!585952 res!373915) b!585953))

(assert (= (and b!585953 res!373921) b!585956))

(assert (= (and b!585956 res!373913) b!585955))

(assert (= (and b!585955 res!373919) b!585954))

(assert (= (and b!585954 res!373917) b!585950))

(assert (= (and b!585950 res!373914) b!585946))

(assert (= (and b!585946 res!373916) b!585947))

(assert (= (and b!585947 res!373912) b!585948))

(assert (= (and b!585948 res!373918) b!585951))

(assert (= (and b!585951 res!373922) b!585949))

(declare-fun m!564311 () Bool)

(assert (=> b!585950 m!564311))

(declare-fun m!564313 () Bool)

(assert (=> b!585947 m!564313))

(declare-fun m!564315 () Bool)

(assert (=> b!585947 m!564315))

(declare-fun m!564317 () Bool)

(assert (=> b!585947 m!564317))

(declare-fun m!564319 () Bool)

(assert (=> b!585955 m!564319))

(declare-fun m!564321 () Bool)

(assert (=> b!585948 m!564321))

(assert (=> b!585948 m!564321))

(declare-fun m!564323 () Bool)

(assert (=> b!585948 m!564323))

(assert (=> b!585953 m!564321))

(assert (=> b!585953 m!564321))

(declare-fun m!564325 () Bool)

(assert (=> b!585953 m!564325))

(declare-fun m!564327 () Bool)

(assert (=> b!585949 m!564327))

(declare-fun m!564329 () Bool)

(assert (=> b!585949 m!564329))

(assert (=> b!585949 m!564321))

(declare-fun m!564331 () Bool)

(assert (=> b!585949 m!564331))

(assert (=> b!585949 m!564329))

(declare-fun m!564333 () Bool)

(assert (=> b!585949 m!564333))

(assert (=> b!585949 m!564321))

(declare-fun m!564335 () Bool)

(assert (=> b!585949 m!564335))

(assert (=> b!585949 m!564315))

(declare-fun m!564337 () Bool)

(assert (=> b!585954 m!564337))

(declare-fun m!564339 () Bool)

(assert (=> start!53756 m!564339))

(declare-fun m!564341 () Bool)

(assert (=> start!53756 m!564341))

(declare-fun m!564343 () Bool)

(assert (=> b!585956 m!564343))

(declare-fun m!564345 () Bool)

(assert (=> b!585951 m!564345))

(assert (=> b!585951 m!564321))

(declare-fun m!564347 () Bool)

(assert (=> b!585946 m!564347))

(push 1)

