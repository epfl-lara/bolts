; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53882 () Bool)

(assert start!53882)

(declare-fun b!587287 () Bool)

(declare-fun res!375075 () Bool)

(declare-fun e!335535 () Bool)

(assert (=> b!587287 (=> (not res!375075) (not e!335535))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!587287 (= res!375075 (validKeyInArray!0 k!1786))))

(declare-fun b!587288 () Bool)

(declare-fun res!375080 () Bool)

(declare-fun e!335534 () Bool)

(assert (=> b!587288 (=> (not res!375080) (not e!335534))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!36680 0))(
  ( (array!36681 (arr!17609 (Array (_ BitVec 32) (_ BitVec 64))) (size!17973 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36680)

(assert (=> b!587288 (= res!375080 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17609 a!2986) index!984) (select (arr!17609 a!2986) j!136))) (not (= (select (arr!17609 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!587289 () Bool)

(declare-fun res!375077 () Bool)

(assert (=> b!587289 (=> (not res!375077) (not e!335534))))

(declare-datatypes ((List!11703 0))(
  ( (Nil!11700) (Cons!11699 (h!12744 (_ BitVec 64)) (t!17939 List!11703)) )
))
(declare-fun arrayNoDuplicates!0 (array!36680 (_ BitVec 32) List!11703) Bool)

(assert (=> b!587289 (= res!375077 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11700))))

(declare-fun b!587290 () Bool)

(declare-fun res!375078 () Bool)

(assert (=> b!587290 (=> (not res!375078) (not e!335534))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6056 0))(
  ( (MissingZero!6056 (index!26454 (_ BitVec 32))) (Found!6056 (index!26455 (_ BitVec 32))) (Intermediate!6056 (undefined!6868 Bool) (index!26456 (_ BitVec 32)) (x!55289 (_ BitVec 32))) (Undefined!6056) (MissingVacant!6056 (index!26457 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36680 (_ BitVec 32)) SeekEntryResult!6056)

(assert (=> b!587290 (= res!375078 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17609 a!2986) j!136) a!2986 mask!3053) (Found!6056 j!136)))))

(declare-fun b!587291 () Bool)

(assert (=> b!587291 (= e!335535 e!335534)))

(declare-fun res!375074 () Bool)

(assert (=> b!587291 (=> (not res!375074) (not e!335534))))

(declare-fun lt!266373 () SeekEntryResult!6056)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!587291 (= res!375074 (or (= lt!266373 (MissingZero!6056 i!1108)) (= lt!266373 (MissingVacant!6056 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36680 (_ BitVec 32)) SeekEntryResult!6056)

(assert (=> b!587291 (= lt!266373 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!587292 () Bool)

(declare-fun res!375082 () Bool)

(assert (=> b!587292 (=> (not res!375082) (not e!335535))))

(assert (=> b!587292 (= res!375082 (validKeyInArray!0 (select (arr!17609 a!2986) j!136)))))

(declare-fun b!587293 () Bool)

(declare-fun res!375073 () Bool)

(assert (=> b!587293 (=> (not res!375073) (not e!335534))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36680 (_ BitVec 32)) Bool)

(assert (=> b!587293 (= res!375073 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!587294 () Bool)

(declare-fun res!375076 () Bool)

(assert (=> b!587294 (=> (not res!375076) (not e!335535))))

(declare-fun arrayContainsKey!0 (array!36680 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!587294 (= res!375076 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!587295 () Bool)

(declare-fun res!375083 () Bool)

(assert (=> b!587295 (=> (not res!375083) (not e!335535))))

(assert (=> b!587295 (= res!375083 (and (= (size!17973 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17973 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17973 a!2986)) (not (= i!1108 j!136))))))

(declare-fun res!375079 () Bool)

(assert (=> start!53882 (=> (not res!375079) (not e!335535))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53882 (= res!375079 (validMask!0 mask!3053))))

(assert (=> start!53882 e!335535))

(assert (=> start!53882 true))

(declare-fun array_inv!13383 (array!36680) Bool)

(assert (=> start!53882 (array_inv!13383 a!2986)))

(declare-fun lt!266375 () (_ BitVec 32))

(declare-fun b!587296 () Bool)

(assert (=> b!587296 (= e!335534 (not (or (bvslt mask!3053 #b00000000000000000000000000000000) (bvslt lt!266375 #b00000000000000000000000000000000) (bvsge lt!266375 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b00000000000000000000000000000000))))))

(assert (=> b!587296 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266375 vacantSpotIndex!68 (select (arr!17609 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266375 vacantSpotIndex!68 (select (store (arr!17609 a!2986) i!1108 k!1786) j!136) (array!36681 (store (arr!17609 a!2986) i!1108 k!1786) (size!17973 a!2986)) mask!3053))))

(declare-datatypes ((Unit!18236 0))(
  ( (Unit!18237) )
))
(declare-fun lt!266374 () Unit!18236)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36680 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18236)

(assert (=> b!587296 (= lt!266374 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!266375 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!587296 (= lt!266375 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!587297 () Bool)

(declare-fun res!375081 () Bool)

(assert (=> b!587297 (=> (not res!375081) (not e!335534))))

(assert (=> b!587297 (= res!375081 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17609 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17609 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!53882 res!375079) b!587295))

(assert (= (and b!587295 res!375083) b!587292))

(assert (= (and b!587292 res!375082) b!587287))

(assert (= (and b!587287 res!375075) b!587294))

(assert (= (and b!587294 res!375076) b!587291))

(assert (= (and b!587291 res!375074) b!587293))

(assert (= (and b!587293 res!375073) b!587289))

(assert (= (and b!587289 res!375077) b!587297))

(assert (= (and b!587297 res!375081) b!587290))

(assert (= (and b!587290 res!375078) b!587288))

(assert (= (and b!587288 res!375080) b!587296))

(declare-fun m!565745 () Bool)

(assert (=> b!587287 m!565745))

(declare-fun m!565747 () Bool)

(assert (=> b!587290 m!565747))

(assert (=> b!587290 m!565747))

(declare-fun m!565749 () Bool)

(assert (=> b!587290 m!565749))

(declare-fun m!565751 () Bool)

(assert (=> b!587289 m!565751))

(declare-fun m!565753 () Bool)

(assert (=> b!587288 m!565753))

(assert (=> b!587288 m!565747))

(declare-fun m!565755 () Bool)

(assert (=> b!587293 m!565755))

(declare-fun m!565757 () Bool)

(assert (=> b!587297 m!565757))

(declare-fun m!565759 () Bool)

(assert (=> b!587297 m!565759))

(declare-fun m!565761 () Bool)

(assert (=> b!587297 m!565761))

(declare-fun m!565763 () Bool)

(assert (=> b!587291 m!565763))

(assert (=> b!587292 m!565747))

(assert (=> b!587292 m!565747))

(declare-fun m!565765 () Bool)

(assert (=> b!587292 m!565765))

(declare-fun m!565767 () Bool)

(assert (=> b!587294 m!565767))

(declare-fun m!565769 () Bool)

(assert (=> b!587296 m!565769))

(declare-fun m!565771 () Bool)

(assert (=> b!587296 m!565771))

(assert (=> b!587296 m!565747))

(assert (=> b!587296 m!565747))

(declare-fun m!565773 () Bool)

(assert (=> b!587296 m!565773))

(assert (=> b!587296 m!565759))

(declare-fun m!565775 () Bool)

(assert (=> b!587296 m!565775))

(assert (=> b!587296 m!565771))

(declare-fun m!565777 () Bool)

(assert (=> b!587296 m!565777))

(declare-fun m!565779 () Bool)

(assert (=> start!53882 m!565779))

(declare-fun m!565781 () Bool)

(assert (=> start!53882 m!565781))

(push 1)

(assert (not b!587292))

(assert (not b!587287))

(assert (not b!587291))

