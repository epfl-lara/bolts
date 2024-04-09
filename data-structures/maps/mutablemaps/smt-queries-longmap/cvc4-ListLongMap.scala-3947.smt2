; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53714 () Bool)

(assert start!53714)

(declare-fun b!585243 () Bool)

(declare-fun e!334879 () Bool)

(assert (=> b!585243 (= e!334879 false)))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((array!36569 0))(
  ( (array!36570 (arr!17555 (Array (_ BitVec 32) (_ BitVec 64))) (size!17919 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36569)

(declare-fun lt!265786 () (_ BitVec 32))

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6002 0))(
  ( (MissingZero!6002 (index!26235 (_ BitVec 32))) (Found!6002 (index!26236 (_ BitVec 32))) (Intermediate!6002 (undefined!6814 Bool) (index!26237 (_ BitVec 32)) (x!55082 (_ BitVec 32))) (Undefined!6002) (MissingVacant!6002 (index!26238 (_ BitVec 32))) )
))
(declare-fun lt!265785 () SeekEntryResult!6002)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36569 (_ BitVec 32)) SeekEntryResult!6002)

(assert (=> b!585243 (= lt!265785 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!265786 vacantSpotIndex!68 (select (arr!17555 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!585244 () Bool)

(declare-fun e!334878 () Bool)

(declare-fun e!334876 () Bool)

(assert (=> b!585244 (= e!334878 e!334876)))

(declare-fun res!373209 () Bool)

(assert (=> b!585244 (=> (not res!373209) (not e!334876))))

(declare-fun lt!265787 () SeekEntryResult!6002)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!585244 (= res!373209 (or (= lt!265787 (MissingZero!6002 i!1108)) (= lt!265787 (MissingVacant!6002 i!1108))))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36569 (_ BitVec 32)) SeekEntryResult!6002)

(assert (=> b!585244 (= lt!265787 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!585245 () Bool)

(declare-fun res!373220 () Bool)

(assert (=> b!585245 (=> (not res!373220) (not e!334878))))

(assert (=> b!585245 (= res!373220 (and (= (size!17919 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17919 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17919 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!585246 () Bool)

(declare-fun res!373213 () Bool)

(assert (=> b!585246 (=> (not res!373213) (not e!334876))))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!585246 (= res!373213 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17555 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17555 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!585248 () Bool)

(declare-fun res!373212 () Bool)

(assert (=> b!585248 (=> (not res!373212) (not e!334876))))

(assert (=> b!585248 (= res!373212 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17555 a!2986) j!136) a!2986 mask!3053) (Found!6002 j!136)))))

(declare-fun b!585249 () Bool)

(declare-fun res!373218 () Bool)

(assert (=> b!585249 (=> (not res!373218) (not e!334876))))

(declare-datatypes ((List!11649 0))(
  ( (Nil!11646) (Cons!11645 (h!12690 (_ BitVec 64)) (t!17885 List!11649)) )
))
(declare-fun arrayNoDuplicates!0 (array!36569 (_ BitVec 32) List!11649) Bool)

(assert (=> b!585249 (= res!373218 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11646))))

(declare-fun b!585250 () Bool)

(declare-fun res!373210 () Bool)

(assert (=> b!585250 (=> (not res!373210) (not e!334876))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36569 (_ BitVec 32)) Bool)

(assert (=> b!585250 (= res!373210 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!585251 () Bool)

(declare-fun res!373214 () Bool)

(assert (=> b!585251 (=> (not res!373214) (not e!334878))))

(declare-fun arrayContainsKey!0 (array!36569 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!585251 (= res!373214 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!585252 () Bool)

(assert (=> b!585252 (= e!334876 e!334879)))

(declare-fun res!373216 () Bool)

(assert (=> b!585252 (=> (not res!373216) (not e!334879))))

(assert (=> b!585252 (= res!373216 (and (bvsge lt!265786 #b00000000000000000000000000000000) (bvslt lt!265786 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b00000000000000000000000000000000)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!585252 (= lt!265786 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!585253 () Bool)

(declare-fun res!373215 () Bool)

(assert (=> b!585253 (=> (not res!373215) (not e!334876))))

(assert (=> b!585253 (= res!373215 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17555 a!2986) index!984) (select (arr!17555 a!2986) j!136))) (not (= (select (arr!17555 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!585254 () Bool)

(declare-fun res!373211 () Bool)

(assert (=> b!585254 (=> (not res!373211) (not e!334878))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!585254 (= res!373211 (validKeyInArray!0 k!1786))))

(declare-fun b!585247 () Bool)

(declare-fun res!373217 () Bool)

(assert (=> b!585247 (=> (not res!373217) (not e!334878))))

(assert (=> b!585247 (= res!373217 (validKeyInArray!0 (select (arr!17555 a!2986) j!136)))))

(declare-fun res!373219 () Bool)

(assert (=> start!53714 (=> (not res!373219) (not e!334878))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53714 (= res!373219 (validMask!0 mask!3053))))

(assert (=> start!53714 e!334878))

(assert (=> start!53714 true))

(declare-fun array_inv!13329 (array!36569) Bool)

(assert (=> start!53714 (array_inv!13329 a!2986)))

(assert (= (and start!53714 res!373219) b!585245))

(assert (= (and b!585245 res!373220) b!585247))

(assert (= (and b!585247 res!373217) b!585254))

(assert (= (and b!585254 res!373211) b!585251))

(assert (= (and b!585251 res!373214) b!585244))

(assert (= (and b!585244 res!373209) b!585250))

(assert (= (and b!585250 res!373210) b!585249))

(assert (= (and b!585249 res!373218) b!585246))

(assert (= (and b!585246 res!373213) b!585248))

(assert (= (and b!585248 res!373212) b!585253))

(assert (= (and b!585253 res!373215) b!585252))

(assert (= (and b!585252 res!373216) b!585243))

(declare-fun m!563537 () Bool)

(assert (=> b!585252 m!563537))

(declare-fun m!563539 () Bool)

(assert (=> b!585247 m!563539))

(assert (=> b!585247 m!563539))

(declare-fun m!563541 () Bool)

(assert (=> b!585247 m!563541))

(declare-fun m!563543 () Bool)

(assert (=> b!585251 m!563543))

(declare-fun m!563545 () Bool)

(assert (=> b!585253 m!563545))

(assert (=> b!585253 m!563539))

(declare-fun m!563547 () Bool)

(assert (=> b!585250 m!563547))

(declare-fun m!563549 () Bool)

(assert (=> start!53714 m!563549))

(declare-fun m!563551 () Bool)

(assert (=> start!53714 m!563551))

(declare-fun m!563553 () Bool)

(assert (=> b!585254 m!563553))

(assert (=> b!585248 m!563539))

(assert (=> b!585248 m!563539))

(declare-fun m!563555 () Bool)

(assert (=> b!585248 m!563555))

(assert (=> b!585243 m!563539))

(assert (=> b!585243 m!563539))

(declare-fun m!563557 () Bool)

(assert (=> b!585243 m!563557))

(declare-fun m!563559 () Bool)

(assert (=> b!585249 m!563559))

(declare-fun m!563561 () Bool)

(assert (=> b!585244 m!563561))

(declare-fun m!563563 () Bool)

(assert (=> b!585246 m!563563))

(declare-fun m!563565 () Bool)

(assert (=> b!585246 m!563565))

(declare-fun m!563567 () Bool)

(assert (=> b!585246 m!563567))

(push 1)

