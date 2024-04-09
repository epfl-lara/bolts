; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53300 () Bool)

(assert start!53300)

(declare-fun b!579126 () Bool)

(declare-fun res!367093 () Bool)

(declare-fun e!332853 () Bool)

(assert (=> b!579126 (=> (not res!367093) (not e!332853))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!579126 (= res!367093 (validKeyInArray!0 k!1786))))

(declare-fun res!367097 () Bool)

(assert (=> start!53300 (=> (not res!367097) (not e!332853))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53300 (= res!367097 (validMask!0 mask!3053))))

(assert (=> start!53300 e!332853))

(assert (=> start!53300 true))

(declare-datatypes ((array!36155 0))(
  ( (array!36156 (arr!17348 (Array (_ BitVec 32) (_ BitVec 64))) (size!17712 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36155)

(declare-fun array_inv!13122 (array!36155) Bool)

(assert (=> start!53300 (array_inv!13122 a!2986)))

(declare-fun b!579127 () Bool)

(declare-fun res!367092 () Bool)

(assert (=> b!579127 (=> (not res!367092) (not e!332853))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!579127 (= res!367092 (validKeyInArray!0 (select (arr!17348 a!2986) j!136)))))

(declare-fun b!579128 () Bool)

(declare-fun res!367098 () Bool)

(declare-fun e!332854 () Bool)

(assert (=> b!579128 (=> (not res!367098) (not e!332854))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36155 (_ BitVec 32)) Bool)

(assert (=> b!579128 (= res!367098 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!579129 () Bool)

(assert (=> b!579129 (= e!332854 false)))

(declare-datatypes ((SeekEntryResult!5795 0))(
  ( (MissingZero!5795 (index!25407 (_ BitVec 32))) (Found!5795 (index!25408 (_ BitVec 32))) (Intermediate!5795 (undefined!6607 Bool) (index!25409 (_ BitVec 32)) (x!54323 (_ BitVec 32))) (Undefined!5795) (MissingVacant!5795 (index!25410 (_ BitVec 32))) )
))
(declare-fun lt!264418 () SeekEntryResult!5795)

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36155 (_ BitVec 32)) SeekEntryResult!5795)

(assert (=> b!579129 (= lt!264418 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17348 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!579130 () Bool)

(declare-fun res!367096 () Bool)

(assert (=> b!579130 (=> (not res!367096) (not e!332854))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!579130 (= res!367096 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17348 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17348 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!579131 () Bool)

(declare-fun res!367095 () Bool)

(assert (=> b!579131 (=> (not res!367095) (not e!332854))))

(declare-datatypes ((List!11442 0))(
  ( (Nil!11439) (Cons!11438 (h!12483 (_ BitVec 64)) (t!17678 List!11442)) )
))
(declare-fun arrayNoDuplicates!0 (array!36155 (_ BitVec 32) List!11442) Bool)

(assert (=> b!579131 (= res!367095 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11439))))

(declare-fun b!579132 () Bool)

(declare-fun res!367099 () Bool)

(assert (=> b!579132 (=> (not res!367099) (not e!332853))))

(assert (=> b!579132 (= res!367099 (and (= (size!17712 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17712 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17712 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!579133 () Bool)

(assert (=> b!579133 (= e!332853 e!332854)))

(declare-fun res!367094 () Bool)

(assert (=> b!579133 (=> (not res!367094) (not e!332854))))

(declare-fun lt!264419 () SeekEntryResult!5795)

(assert (=> b!579133 (= res!367094 (or (= lt!264419 (MissingZero!5795 i!1108)) (= lt!264419 (MissingVacant!5795 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36155 (_ BitVec 32)) SeekEntryResult!5795)

(assert (=> b!579133 (= lt!264419 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!579134 () Bool)

(declare-fun res!367100 () Bool)

(assert (=> b!579134 (=> (not res!367100) (not e!332853))))

(declare-fun arrayContainsKey!0 (array!36155 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!579134 (= res!367100 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(assert (= (and start!53300 res!367097) b!579132))

(assert (= (and b!579132 res!367099) b!579127))

(assert (= (and b!579127 res!367092) b!579126))

(assert (= (and b!579126 res!367093) b!579134))

(assert (= (and b!579134 res!367100) b!579133))

(assert (= (and b!579133 res!367094) b!579128))

(assert (= (and b!579128 res!367098) b!579131))

(assert (= (and b!579131 res!367095) b!579130))

(assert (= (and b!579130 res!367096) b!579129))

(declare-fun m!557801 () Bool)

(assert (=> b!579128 m!557801))

(declare-fun m!557803 () Bool)

(assert (=> b!579134 m!557803))

(declare-fun m!557805 () Bool)

(assert (=> b!579127 m!557805))

(assert (=> b!579127 m!557805))

(declare-fun m!557807 () Bool)

(assert (=> b!579127 m!557807))

(declare-fun m!557809 () Bool)

(assert (=> start!53300 m!557809))

(declare-fun m!557811 () Bool)

(assert (=> start!53300 m!557811))

(declare-fun m!557813 () Bool)

(assert (=> b!579131 m!557813))

(declare-fun m!557815 () Bool)

(assert (=> b!579126 m!557815))

(assert (=> b!579129 m!557805))

(assert (=> b!579129 m!557805))

(declare-fun m!557817 () Bool)

(assert (=> b!579129 m!557817))

(declare-fun m!557819 () Bool)

(assert (=> b!579130 m!557819))

(declare-fun m!557821 () Bool)

(assert (=> b!579130 m!557821))

(declare-fun m!557823 () Bool)

(assert (=> b!579130 m!557823))

(declare-fun m!557825 () Bool)

(assert (=> b!579133 m!557825))

(push 1)

(assert (not b!579129))

(assert (not b!579134))

