; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53886 () Bool)

(assert start!53886)

(declare-fun b!587353 () Bool)

(declare-fun res!375141 () Bool)

(declare-fun e!335553 () Bool)

(assert (=> b!587353 (=> (not res!375141) (not e!335553))))

(declare-datatypes ((array!36684 0))(
  ( (array!36685 (arr!17611 (Array (_ BitVec 32) (_ BitVec 64))) (size!17975 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36684)

(declare-datatypes ((List!11705 0))(
  ( (Nil!11702) (Cons!11701 (h!12746 (_ BitVec 64)) (t!17941 List!11705)) )
))
(declare-fun arrayNoDuplicates!0 (array!36684 (_ BitVec 32) List!11705) Bool)

(assert (=> b!587353 (= res!375141 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11702))))

(declare-fun b!587354 () Bool)

(declare-fun res!375145 () Bool)

(declare-fun e!335554 () Bool)

(assert (=> b!587354 (=> (not res!375145) (not e!335554))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!587354 (= res!375145 (validKeyInArray!0 k0!1786))))

(declare-fun b!587355 () Bool)

(declare-fun res!375142 () Bool)

(assert (=> b!587355 (=> (not res!375142) (not e!335553))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!587355 (= res!375142 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17611 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17611 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!587356 () Bool)

(assert (=> b!587356 (= e!335554 e!335553)))

(declare-fun res!375146 () Bool)

(assert (=> b!587356 (=> (not res!375146) (not e!335553))))

(declare-datatypes ((SeekEntryResult!6058 0))(
  ( (MissingZero!6058 (index!26462 (_ BitVec 32))) (Found!6058 (index!26463 (_ BitVec 32))) (Intermediate!6058 (undefined!6870 Bool) (index!26464 (_ BitVec 32)) (x!55299 (_ BitVec 32))) (Undefined!6058) (MissingVacant!6058 (index!26465 (_ BitVec 32))) )
))
(declare-fun lt!266391 () SeekEntryResult!6058)

(assert (=> b!587356 (= res!375146 (or (= lt!266391 (MissingZero!6058 i!1108)) (= lt!266391 (MissingVacant!6058 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36684 (_ BitVec 32)) SeekEntryResult!6058)

(assert (=> b!587356 (= lt!266391 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun res!375140 () Bool)

(assert (=> start!53886 (=> (not res!375140) (not e!335554))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53886 (= res!375140 (validMask!0 mask!3053))))

(assert (=> start!53886 e!335554))

(assert (=> start!53886 true))

(declare-fun array_inv!13385 (array!36684) Bool)

(assert (=> start!53886 (array_inv!13385 a!2986)))

(declare-fun b!587357 () Bool)

(declare-fun res!375149 () Bool)

(assert (=> b!587357 (=> (not res!375149) (not e!335553))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!587357 (= res!375149 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17611 a!2986) index!984) (select (arr!17611 a!2986) j!136))) (not (= (select (arr!17611 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!587358 () Bool)

(declare-fun res!375139 () Bool)

(assert (=> b!587358 (=> (not res!375139) (not e!335553))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36684 (_ BitVec 32)) SeekEntryResult!6058)

(assert (=> b!587358 (= res!375139 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17611 a!2986) j!136) a!2986 mask!3053) (Found!6058 j!136)))))

(declare-fun b!587359 () Bool)

(assert (=> b!587359 (= e!335553 (not true))))

(declare-fun lt!266392 () (_ BitVec 32))

(assert (=> b!587359 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266392 vacantSpotIndex!68 (select (arr!17611 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266392 vacantSpotIndex!68 (select (store (arr!17611 a!2986) i!1108 k0!1786) j!136) (array!36685 (store (arr!17611 a!2986) i!1108 k0!1786) (size!17975 a!2986)) mask!3053))))

(declare-datatypes ((Unit!18240 0))(
  ( (Unit!18241) )
))
(declare-fun lt!266393 () Unit!18240)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36684 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18240)

(assert (=> b!587359 (= lt!266393 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!266392 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!587359 (= lt!266392 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!587360 () Bool)

(declare-fun res!375143 () Bool)

(assert (=> b!587360 (=> (not res!375143) (not e!335553))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36684 (_ BitVec 32)) Bool)

(assert (=> b!587360 (= res!375143 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!587361 () Bool)

(declare-fun res!375147 () Bool)

(assert (=> b!587361 (=> (not res!375147) (not e!335554))))

(assert (=> b!587361 (= res!375147 (and (= (size!17975 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17975 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17975 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!587362 () Bool)

(declare-fun res!375144 () Bool)

(assert (=> b!587362 (=> (not res!375144) (not e!335554))))

(declare-fun arrayContainsKey!0 (array!36684 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!587362 (= res!375144 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!587363 () Bool)

(declare-fun res!375148 () Bool)

(assert (=> b!587363 (=> (not res!375148) (not e!335554))))

(assert (=> b!587363 (= res!375148 (validKeyInArray!0 (select (arr!17611 a!2986) j!136)))))

(assert (= (and start!53886 res!375140) b!587361))

(assert (= (and b!587361 res!375147) b!587363))

(assert (= (and b!587363 res!375148) b!587354))

(assert (= (and b!587354 res!375145) b!587362))

(assert (= (and b!587362 res!375144) b!587356))

(assert (= (and b!587356 res!375146) b!587360))

(assert (= (and b!587360 res!375143) b!587353))

(assert (= (and b!587353 res!375141) b!587355))

(assert (= (and b!587355 res!375142) b!587358))

(assert (= (and b!587358 res!375139) b!587357))

(assert (= (and b!587357 res!375149) b!587359))

(declare-fun m!565821 () Bool)

(assert (=> b!587355 m!565821))

(declare-fun m!565823 () Bool)

(assert (=> b!587355 m!565823))

(declare-fun m!565825 () Bool)

(assert (=> b!587355 m!565825))

(declare-fun m!565827 () Bool)

(assert (=> b!587363 m!565827))

(assert (=> b!587363 m!565827))

(declare-fun m!565829 () Bool)

(assert (=> b!587363 m!565829))

(declare-fun m!565831 () Bool)

(assert (=> b!587354 m!565831))

(declare-fun m!565833 () Bool)

(assert (=> b!587359 m!565833))

(declare-fun m!565835 () Bool)

(assert (=> b!587359 m!565835))

(declare-fun m!565837 () Bool)

(assert (=> b!587359 m!565837))

(assert (=> b!587359 m!565835))

(declare-fun m!565839 () Bool)

(assert (=> b!587359 m!565839))

(assert (=> b!587359 m!565827))

(assert (=> b!587359 m!565823))

(assert (=> b!587359 m!565827))

(declare-fun m!565841 () Bool)

(assert (=> b!587359 m!565841))

(declare-fun m!565843 () Bool)

(assert (=> b!587360 m!565843))

(declare-fun m!565845 () Bool)

(assert (=> b!587356 m!565845))

(declare-fun m!565847 () Bool)

(assert (=> b!587362 m!565847))

(declare-fun m!565849 () Bool)

(assert (=> b!587353 m!565849))

(assert (=> b!587358 m!565827))

(assert (=> b!587358 m!565827))

(declare-fun m!565851 () Bool)

(assert (=> b!587358 m!565851))

(declare-fun m!565853 () Bool)

(assert (=> start!53886 m!565853))

(declare-fun m!565855 () Bool)

(assert (=> start!53886 m!565855))

(declare-fun m!565857 () Bool)

(assert (=> b!587357 m!565857))

(assert (=> b!587357 m!565827))

(check-sat (not start!53886) (not b!587362) (not b!587356) (not b!587360) (not b!587359) (not b!587354) (not b!587353) (not b!587363) (not b!587358))
(check-sat)
