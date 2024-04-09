; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53968 () Bool)

(assert start!53968)

(declare-fun res!376532 () Bool)

(declare-fun e!336194 () Bool)

(assert (=> start!53968 (=> (not res!376532) (not e!336194))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53968 (= res!376532 (validMask!0 mask!3053))))

(assert (=> start!53968 e!336194))

(assert (=> start!53968 true))

(declare-datatypes ((array!36766 0))(
  ( (array!36767 (arr!17652 (Array (_ BitVec 32) (_ BitVec 64))) (size!18016 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36766)

(declare-fun array_inv!13426 (array!36766) Bool)

(assert (=> start!53968 (array_inv!13426 a!2986)))

(declare-fun b!588802 () Bool)

(declare-fun res!376538 () Bool)

(declare-fun e!336190 () Bool)

(assert (=> b!588802 (=> (not res!376538) (not e!336190))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!588802 (= res!376538 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17652 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!588803 () Bool)

(declare-fun res!376540 () Bool)

(assert (=> b!588803 (=> (not res!376540) (not e!336194))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!588803 (= res!376540 (validKeyInArray!0 (select (arr!17652 a!2986) j!136)))))

(declare-fun b!588804 () Bool)

(assert (=> b!588804 (= e!336194 e!336190)))

(declare-fun res!376539 () Bool)

(assert (=> b!588804 (=> (not res!376539) (not e!336190))))

(declare-datatypes ((SeekEntryResult!6099 0))(
  ( (MissingZero!6099 (index!26626 (_ BitVec 32))) (Found!6099 (index!26627 (_ BitVec 32))) (Intermediate!6099 (undefined!6911 Bool) (index!26628 (_ BitVec 32)) (x!55452 (_ BitVec 32))) (Undefined!6099) (MissingVacant!6099 (index!26629 (_ BitVec 32))) )
))
(declare-fun lt!267049 () SeekEntryResult!6099)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!588804 (= res!376539 (or (= lt!267049 (MissingZero!6099 i!1108)) (= lt!267049 (MissingVacant!6099 i!1108))))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36766 (_ BitVec 32)) SeekEntryResult!6099)

(assert (=> b!588804 (= lt!267049 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!588805 () Bool)

(declare-datatypes ((Unit!18340 0))(
  ( (Unit!18341) )
))
(declare-fun e!336193 () Unit!18340)

(declare-fun Unit!18342 () Unit!18340)

(assert (=> b!588805 (= e!336193 Unit!18342)))

(assert (=> b!588805 false))

(declare-fun b!588806 () Bool)

(declare-fun res!376541 () Bool)

(assert (=> b!588806 (=> (not res!376541) (not e!336194))))

(assert (=> b!588806 (= res!376541 (and (= (size!18016 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18016 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18016 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!588807 () Bool)

(declare-fun Unit!18343 () Unit!18340)

(assert (=> b!588807 (= e!336193 Unit!18343)))

(declare-fun b!588808 () Bool)

(declare-fun e!336192 () Bool)

(assert (=> b!588808 (= e!336190 e!336192)))

(declare-fun res!376534 () Bool)

(assert (=> b!588808 (=> (not res!376534) (not e!336192))))

(assert (=> b!588808 (= res!376534 (= (select (store (arr!17652 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!267056 () array!36766)

(assert (=> b!588808 (= lt!267056 (array!36767 (store (arr!17652 a!2986) i!1108 k!1786) (size!18016 a!2986)))))

(declare-fun b!588809 () Bool)

(declare-fun e!336191 () Bool)

(declare-fun lt!267055 () SeekEntryResult!6099)

(declare-fun lt!267053 () SeekEntryResult!6099)

(assert (=> b!588809 (= e!336191 (= lt!267055 lt!267053))))

(declare-fun b!588810 () Bool)

(declare-fun e!336195 () Bool)

(assert (=> b!588810 (= e!336195 (not true))))

(declare-fun lt!267052 () Unit!18340)

(assert (=> b!588810 (= lt!267052 e!336193)))

(declare-fun c!66503 () Bool)

(declare-fun lt!267051 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36766 (_ BitVec 32)) SeekEntryResult!6099)

(assert (=> b!588810 (= c!66503 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!267051 lt!267056 mask!3053) Undefined!6099))))

(assert (=> b!588810 e!336191))

(declare-fun res!376537 () Bool)

(assert (=> b!588810 (=> (not res!376537) (not e!336191))))

(declare-fun lt!267054 () (_ BitVec 32))

(assert (=> b!588810 (= res!376537 (= lt!267053 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!267054 vacantSpotIndex!68 lt!267051 lt!267056 mask!3053)))))

(assert (=> b!588810 (= lt!267053 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!267054 vacantSpotIndex!68 (select (arr!17652 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!588810 (= lt!267051 (select (store (arr!17652 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!267050 () Unit!18340)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36766 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18340)

(assert (=> b!588810 (= lt!267050 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!267054 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!588810 (= lt!267054 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!588811 () Bool)

(declare-fun res!376533 () Bool)

(assert (=> b!588811 (=> (not res!376533) (not e!336190))))

(declare-datatypes ((List!11746 0))(
  ( (Nil!11743) (Cons!11742 (h!12787 (_ BitVec 64)) (t!17982 List!11746)) )
))
(declare-fun arrayNoDuplicates!0 (array!36766 (_ BitVec 32) List!11746) Bool)

(assert (=> b!588811 (= res!376533 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11743))))

(declare-fun b!588812 () Bool)

(assert (=> b!588812 (= e!336192 e!336195)))

(declare-fun res!376530 () Bool)

(assert (=> b!588812 (=> (not res!376530) (not e!336195))))

(assert (=> b!588812 (= res!376530 (and (= lt!267055 (Found!6099 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17652 a!2986) index!984) (select (arr!17652 a!2986) j!136))) (not (= (select (arr!17652 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!588812 (= lt!267055 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17652 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!588813 () Bool)

(declare-fun res!376535 () Bool)

(assert (=> b!588813 (=> (not res!376535) (not e!336194))))

(assert (=> b!588813 (= res!376535 (validKeyInArray!0 k!1786))))

(declare-fun b!588814 () Bool)

(declare-fun res!376531 () Bool)

(assert (=> b!588814 (=> (not res!376531) (not e!336190))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36766 (_ BitVec 32)) Bool)

(assert (=> b!588814 (= res!376531 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!588815 () Bool)

(declare-fun res!376536 () Bool)

(assert (=> b!588815 (=> (not res!376536) (not e!336194))))

(declare-fun arrayContainsKey!0 (array!36766 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!588815 (= res!376536 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(assert (= (and start!53968 res!376532) b!588806))

(assert (= (and b!588806 res!376541) b!588803))

(assert (= (and b!588803 res!376540) b!588813))

(assert (= (and b!588813 res!376535) b!588815))

(assert (= (and b!588815 res!376536) b!588804))

(assert (= (and b!588804 res!376539) b!588814))

(assert (= (and b!588814 res!376531) b!588811))

(assert (= (and b!588811 res!376533) b!588802))

(assert (= (and b!588802 res!376538) b!588808))

(assert (= (and b!588808 res!376534) b!588812))

(assert (= (and b!588812 res!376530) b!588810))

(assert (= (and b!588810 res!376537) b!588809))

(assert (= (and b!588810 c!66503) b!588805))

(assert (= (and b!588810 (not c!66503)) b!588807))

(declare-fun m!567403 () Bool)

(assert (=> b!588804 m!567403))

(declare-fun m!567405 () Bool)

(assert (=> b!588811 m!567405))

(declare-fun m!567407 () Bool)

(assert (=> start!53968 m!567407))

(declare-fun m!567409 () Bool)

(assert (=> start!53968 m!567409))

(declare-fun m!567411 () Bool)

(assert (=> b!588812 m!567411))

(declare-fun m!567413 () Bool)

(assert (=> b!588812 m!567413))

(assert (=> b!588812 m!567413))

(declare-fun m!567415 () Bool)

(assert (=> b!588812 m!567415))

(declare-fun m!567417 () Bool)

(assert (=> b!588814 m!567417))

(declare-fun m!567419 () Bool)

(assert (=> b!588808 m!567419))

(declare-fun m!567421 () Bool)

(assert (=> b!588808 m!567421))

(assert (=> b!588803 m!567413))

(assert (=> b!588803 m!567413))

(declare-fun m!567423 () Bool)

(assert (=> b!588803 m!567423))

(declare-fun m!567425 () Bool)

(assert (=> b!588802 m!567425))

(declare-fun m!567427 () Bool)

(assert (=> b!588810 m!567427))

(assert (=> b!588810 m!567413))

(assert (=> b!588810 m!567419))

(assert (=> b!588810 m!567413))

(declare-fun m!567429 () Bool)

(assert (=> b!588810 m!567429))

(declare-fun m!567431 () Bool)

(assert (=> b!588810 m!567431))

(declare-fun m!567433 () Bool)

(assert (=> b!588810 m!567433))

(declare-fun m!567435 () Bool)

(assert (=> b!588810 m!567435))

(declare-fun m!567437 () Bool)

(assert (=> b!588810 m!567437))

(declare-fun m!567439 () Bool)

(assert (=> b!588813 m!567439))

(declare-fun m!567441 () Bool)

(assert (=> b!588815 m!567441))

(push 1)

