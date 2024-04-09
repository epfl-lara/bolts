; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!54154 () Bool)

(assert start!54154)

(declare-fun b!591090 () Bool)

(declare-fun e!337506 () Bool)

(declare-fun e!337501 () Bool)

(assert (=> b!591090 (= e!337506 e!337501)))

(declare-fun res!378234 () Bool)

(assert (=> b!591090 (=> res!378234 e!337501)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!268248 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!36847 0))(
  ( (array!36848 (arr!17690 (Array (_ BitVec 32) (_ BitVec 64))) (size!18054 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36847)

(declare-fun lt!268245 () (_ BitVec 64))

(assert (=> b!591090 (= res!378234 (or (not (= (select (arr!17690 a!2986) j!136) lt!268248)) (not (= (select (arr!17690 a!2986) j!136) lt!268245)) (bvsge j!136 index!984)))))

(declare-fun b!591091 () Bool)

(declare-datatypes ((Unit!18492 0))(
  ( (Unit!18493) )
))
(declare-fun e!337497 () Unit!18492)

(declare-fun Unit!18494 () Unit!18492)

(assert (=> b!591091 (= e!337497 Unit!18494)))

(declare-fun b!591092 () Bool)

(declare-fun res!378237 () Bool)

(declare-fun e!337502 () Bool)

(assert (=> b!591092 (=> (not res!378237) (not e!337502))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!591092 (= res!378237 (validKeyInArray!0 (select (arr!17690 a!2986) j!136)))))

(declare-fun b!591094 () Bool)

(declare-fun e!337498 () Bool)

(declare-fun e!337503 () Bool)

(assert (=> b!591094 (= e!337498 e!337503)))

(declare-fun res!378226 () Bool)

(assert (=> b!591094 (=> (not res!378226) (not e!337503))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!591094 (= res!378226 (= (select (store (arr!17690 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!268250 () array!36847)

(assert (=> b!591094 (= lt!268250 (array!36848 (store (arr!17690 a!2986) i!1108 k!1786) (size!18054 a!2986)))))

(declare-fun b!591095 () Bool)

(declare-fun e!337499 () Bool)

(declare-datatypes ((SeekEntryResult!6137 0))(
  ( (MissingZero!6137 (index!26783 (_ BitVec 32))) (Found!6137 (index!26784 (_ BitVec 32))) (Intermediate!6137 (undefined!6949 Bool) (index!26785 (_ BitVec 32)) (x!55602 (_ BitVec 32))) (Undefined!6137) (MissingVacant!6137 (index!26786 (_ BitVec 32))) )
))
(declare-fun lt!268242 () SeekEntryResult!6137)

(declare-fun lt!268249 () SeekEntryResult!6137)

(assert (=> b!591095 (= e!337499 (= lt!268242 lt!268249))))

(declare-fun b!591096 () Bool)

(declare-fun res!378227 () Bool)

(assert (=> b!591096 (=> (not res!378227) (not e!337498))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36847 (_ BitVec 32)) Bool)

(assert (=> b!591096 (= res!378227 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!591097 () Bool)

(declare-fun e!337507 () Bool)

(assert (=> b!591097 (= e!337501 e!337507)))

(declare-fun res!378233 () Bool)

(assert (=> b!591097 (=> (not res!378233) (not e!337507))))

(declare-fun arrayContainsKey!0 (array!36847 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!591097 (= res!378233 (arrayContainsKey!0 lt!268250 (select (arr!17690 a!2986) j!136) j!136))))

(declare-fun b!591098 () Bool)

(assert (=> b!591098 (= e!337502 e!337498)))

(declare-fun res!378235 () Bool)

(assert (=> b!591098 (=> (not res!378235) (not e!337498))))

(declare-fun lt!268251 () SeekEntryResult!6137)

(assert (=> b!591098 (= res!378235 (or (= lt!268251 (MissingZero!6137 i!1108)) (= lt!268251 (MissingVacant!6137 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36847 (_ BitVec 32)) SeekEntryResult!6137)

(assert (=> b!591098 (= lt!268251 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!591099 () Bool)

(declare-fun Unit!18495 () Unit!18492)

(assert (=> b!591099 (= e!337497 Unit!18495)))

(assert (=> b!591099 false))

(declare-fun res!378236 () Bool)

(assert (=> start!54154 (=> (not res!378236) (not e!337502))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54154 (= res!378236 (validMask!0 mask!3053))))

(assert (=> start!54154 e!337502))

(assert (=> start!54154 true))

(declare-fun array_inv!13464 (array!36847) Bool)

(assert (=> start!54154 (array_inv!13464 a!2986)))

(declare-fun b!591093 () Bool)

(declare-fun res!378225 () Bool)

(assert (=> b!591093 (=> (not res!378225) (not e!337502))))

(assert (=> b!591093 (= res!378225 (and (= (size!18054 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18054 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18054 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!591100 () Bool)

(declare-fun res!378238 () Bool)

(assert (=> b!591100 (=> (not res!378238) (not e!337502))))

(assert (=> b!591100 (= res!378238 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!591101 () Bool)

(declare-fun e!337505 () Bool)

(assert (=> b!591101 (= e!337505 true)))

(assert (=> b!591101 e!337506))

(declare-fun res!378231 () Bool)

(assert (=> b!591101 (=> (not res!378231) (not e!337506))))

(assert (=> b!591101 (= res!378231 (= lt!268245 (select (arr!17690 a!2986) j!136)))))

(assert (=> b!591101 (= lt!268245 (select (store (arr!17690 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!591102 () Bool)

(declare-fun e!337504 () Bool)

(assert (=> b!591102 (= e!337504 (not e!337505))))

(declare-fun res!378232 () Bool)

(assert (=> b!591102 (=> res!378232 e!337505)))

(declare-fun lt!268246 () SeekEntryResult!6137)

(assert (=> b!591102 (= res!378232 (not (= lt!268246 (Found!6137 index!984))))))

(declare-fun lt!268244 () Unit!18492)

(assert (=> b!591102 (= lt!268244 e!337497)))

(declare-fun c!66800 () Bool)

(assert (=> b!591102 (= c!66800 (= lt!268246 Undefined!6137))))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36847 (_ BitVec 32)) SeekEntryResult!6137)

(assert (=> b!591102 (= lt!268246 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!268248 lt!268250 mask!3053))))

(assert (=> b!591102 e!337499))

(declare-fun res!378230 () Bool)

(assert (=> b!591102 (=> (not res!378230) (not e!337499))))

(declare-fun lt!268247 () (_ BitVec 32))

(assert (=> b!591102 (= res!378230 (= lt!268249 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!268247 vacantSpotIndex!68 lt!268248 lt!268250 mask!3053)))))

(assert (=> b!591102 (= lt!268249 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!268247 vacantSpotIndex!68 (select (arr!17690 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!591102 (= lt!268248 (select (store (arr!17690 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!268243 () Unit!18492)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36847 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18492)

(assert (=> b!591102 (= lt!268243 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!268247 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!591102 (= lt!268247 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!591103 () Bool)

(assert (=> b!591103 (= e!337503 e!337504)))

(declare-fun res!378229 () Bool)

(assert (=> b!591103 (=> (not res!378229) (not e!337504))))

(assert (=> b!591103 (= res!378229 (and (= lt!268242 (Found!6137 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17690 a!2986) index!984) (select (arr!17690 a!2986) j!136))) (not (= (select (arr!17690 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!591103 (= lt!268242 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17690 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!591104 () Bool)

(assert (=> b!591104 (= e!337507 (arrayContainsKey!0 lt!268250 (select (arr!17690 a!2986) j!136) index!984))))

(declare-fun b!591105 () Bool)

(declare-fun res!378239 () Bool)

(assert (=> b!591105 (=> (not res!378239) (not e!337498))))

(declare-datatypes ((List!11784 0))(
  ( (Nil!11781) (Cons!11780 (h!12825 (_ BitVec 64)) (t!18020 List!11784)) )
))
(declare-fun arrayNoDuplicates!0 (array!36847 (_ BitVec 32) List!11784) Bool)

(assert (=> b!591105 (= res!378239 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11781))))

(declare-fun b!591106 () Bool)

(declare-fun res!378224 () Bool)

(assert (=> b!591106 (=> (not res!378224) (not e!337498))))

(assert (=> b!591106 (= res!378224 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17690 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!591107 () Bool)

(declare-fun res!378228 () Bool)

(assert (=> b!591107 (=> (not res!378228) (not e!337502))))

(assert (=> b!591107 (= res!378228 (validKeyInArray!0 k!1786))))

(assert (= (and start!54154 res!378236) b!591093))

(assert (= (and b!591093 res!378225) b!591092))

(assert (= (and b!591092 res!378237) b!591107))

(assert (= (and b!591107 res!378228) b!591100))

(assert (= (and b!591100 res!378238) b!591098))

(assert (= (and b!591098 res!378235) b!591096))

(assert (= (and b!591096 res!378227) b!591105))

(assert (= (and b!591105 res!378239) b!591106))

(assert (= (and b!591106 res!378224) b!591094))

(assert (= (and b!591094 res!378226) b!591103))

(assert (= (and b!591103 res!378229) b!591102))

(assert (= (and b!591102 res!378230) b!591095))

(assert (= (and b!591102 c!66800) b!591099))

(assert (= (and b!591102 (not c!66800)) b!591091))

(assert (= (and b!591102 (not res!378232)) b!591101))

(assert (= (and b!591101 res!378231) b!591090))

(assert (= (and b!591090 (not res!378234)) b!591097))

(assert (= (and b!591097 res!378233) b!591104))

(declare-fun m!569393 () Bool)

(assert (=> b!591102 m!569393))

(declare-fun m!569395 () Bool)

(assert (=> b!591102 m!569395))

(declare-fun m!569397 () Bool)

(assert (=> b!591102 m!569397))

(declare-fun m!569399 () Bool)

(assert (=> b!591102 m!569399))

(declare-fun m!569401 () Bool)

(assert (=> b!591102 m!569401))

(declare-fun m!569403 () Bool)

(assert (=> b!591102 m!569403))

(declare-fun m!569405 () Bool)

(assert (=> b!591102 m!569405))

(assert (=> b!591102 m!569397))

(declare-fun m!569407 () Bool)

(assert (=> b!591102 m!569407))

(declare-fun m!569409 () Bool)

(assert (=> b!591107 m!569409))

(declare-fun m!569411 () Bool)

(assert (=> start!54154 m!569411))

(declare-fun m!569413 () Bool)

(assert (=> start!54154 m!569413))

(declare-fun m!569415 () Bool)

(assert (=> b!591100 m!569415))

(assert (=> b!591090 m!569397))

(assert (=> b!591101 m!569397))

(assert (=> b!591101 m!569399))

(declare-fun m!569417 () Bool)

(assert (=> b!591101 m!569417))

(assert (=> b!591092 m!569397))

(assert (=> b!591092 m!569397))

(declare-fun m!569419 () Bool)

(assert (=> b!591092 m!569419))

(declare-fun m!569421 () Bool)

(assert (=> b!591096 m!569421))

(declare-fun m!569423 () Bool)

(assert (=> b!591105 m!569423))

(assert (=> b!591104 m!569397))

(assert (=> b!591104 m!569397))

(declare-fun m!569425 () Bool)

(assert (=> b!591104 m!569425))

(declare-fun m!569427 () Bool)

(assert (=> b!591106 m!569427))

(declare-fun m!569429 () Bool)

(assert (=> b!591098 m!569429))

(assert (=> b!591094 m!569399))

(declare-fun m!569431 () Bool)

(assert (=> b!591094 m!569431))

(declare-fun m!569433 () Bool)

(assert (=> b!591103 m!569433))

(assert (=> b!591103 m!569397))

(assert (=> b!591103 m!569397))

(declare-fun m!569435 () Bool)

(assert (=> b!591103 m!569435))

(assert (=> b!591097 m!569397))

(assert (=> b!591097 m!569397))

(declare-fun m!569437 () Bool)

(assert (=> b!591097 m!569437))

(push 1)

