; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!57448 () Bool)

(assert start!57448)

(declare-fun b!635384 () Bool)

(declare-fun e!363431 () Bool)

(declare-fun e!363424 () Bool)

(assert (=> b!635384 (= e!363431 (not e!363424))))

(declare-fun res!411149 () Bool)

(assert (=> b!635384 (=> res!411149 e!363424)))

(declare-datatypes ((SeekEntryResult!6767 0))(
  ( (MissingZero!6767 (index!29372 (_ BitVec 32))) (Found!6767 (index!29373 (_ BitVec 32))) (Intermediate!6767 (undefined!7579 Bool) (index!29374 (_ BitVec 32)) (x!58143 (_ BitVec 32))) (Undefined!6767) (MissingVacant!6767 (index!29375 (_ BitVec 32))) )
))
(declare-fun lt!293837 () SeekEntryResult!6767)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!635384 (= res!411149 (not (= lt!293837 (Found!6767 index!984))))))

(declare-datatypes ((Unit!21426 0))(
  ( (Unit!21427) )
))
(declare-fun lt!293833 () Unit!21426)

(declare-fun e!363433 () Unit!21426)

(assert (=> b!635384 (= lt!293833 e!363433)))

(declare-fun c!72488 () Bool)

(assert (=> b!635384 (= c!72488 (= lt!293837 Undefined!6767))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!293836 () (_ BitVec 64))

(declare-datatypes ((array!38194 0))(
  ( (array!38195 (arr!18320 (Array (_ BitVec 32) (_ BitVec 64))) (size!18684 (_ BitVec 32))) )
))
(declare-fun lt!293834 () array!38194)

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38194 (_ BitVec 32)) SeekEntryResult!6767)

(assert (=> b!635384 (= lt!293837 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!293836 lt!293834 mask!3053))))

(declare-fun e!363426 () Bool)

(assert (=> b!635384 e!363426))

(declare-fun res!411157 () Bool)

(assert (=> b!635384 (=> (not res!411157) (not e!363426))))

(declare-fun lt!293839 () SeekEntryResult!6767)

(declare-fun lt!293838 () (_ BitVec 32))

(assert (=> b!635384 (= res!411157 (= lt!293839 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!293838 vacantSpotIndex!68 lt!293836 lt!293834 mask!3053)))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun a!2986 () array!38194)

(assert (=> b!635384 (= lt!293839 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!293838 vacantSpotIndex!68 (select (arr!18320 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!635384 (= lt!293836 (select (store (arr!18320 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!293831 () Unit!21426)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38194 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21426)

(assert (=> b!635384 (= lt!293831 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!293838 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!635384 (= lt!293838 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!635385 () Bool)

(declare-fun Unit!21428 () Unit!21426)

(assert (=> b!635385 (= e!363433 Unit!21428)))

(assert (=> b!635385 false))

(declare-fun b!635386 () Bool)

(declare-fun res!411152 () Bool)

(declare-fun e!363429 () Bool)

(assert (=> b!635386 (=> (not res!411152) (not e!363429))))

(declare-datatypes ((List!12414 0))(
  ( (Nil!12411) (Cons!12410 (h!13455 (_ BitVec 64)) (t!18650 List!12414)) )
))
(declare-fun arrayNoDuplicates!0 (array!38194 (_ BitVec 32) List!12414) Bool)

(assert (=> b!635386 (= res!411152 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12411))))

(declare-fun e!363428 () Bool)

(declare-fun b!635387 () Bool)

(declare-fun arrayContainsKey!0 (array!38194 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!635387 (= e!363428 (arrayContainsKey!0 lt!293834 (select (arr!18320 a!2986) j!136) index!984))))

(declare-fun b!635388 () Bool)

(declare-fun e!363427 () Bool)

(assert (=> b!635388 (= e!363427 e!363429)))

(declare-fun res!411155 () Bool)

(assert (=> b!635388 (=> (not res!411155) (not e!363429))))

(declare-fun lt!293832 () SeekEntryResult!6767)

(assert (=> b!635388 (= res!411155 (or (= lt!293832 (MissingZero!6767 i!1108)) (= lt!293832 (MissingVacant!6767 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38194 (_ BitVec 32)) SeekEntryResult!6767)

(assert (=> b!635388 (= lt!293832 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!635389 () Bool)

(declare-fun Unit!21429 () Unit!21426)

(assert (=> b!635389 (= e!363433 Unit!21429)))

(declare-fun b!635390 () Bool)

(declare-fun e!363423 () Bool)

(assert (=> b!635390 (= e!363423 true)))

(assert (=> b!635390 (arrayContainsKey!0 lt!293834 (select (arr!18320 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!293840 () Unit!21426)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38194 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21426)

(assert (=> b!635390 (= lt!293840 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!293834 (select (arr!18320 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!635391 () Bool)

(declare-fun res!411146 () Bool)

(assert (=> b!635391 (=> (not res!411146) (not e!363427))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!635391 (= res!411146 (validKeyInArray!0 k!1786))))

(declare-fun b!635393 () Bool)

(declare-fun res!411145 () Bool)

(assert (=> b!635393 (=> (not res!411145) (not e!363427))))

(assert (=> b!635393 (= res!411145 (validKeyInArray!0 (select (arr!18320 a!2986) j!136)))))

(declare-fun b!635394 () Bool)

(declare-fun lt!293841 () SeekEntryResult!6767)

(assert (=> b!635394 (= e!363426 (= lt!293841 lt!293839))))

(declare-fun b!635395 () Bool)

(declare-fun res!411153 () Bool)

(assert (=> b!635395 (=> (not res!411153) (not e!363427))))

(assert (=> b!635395 (= res!411153 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!635396 () Bool)

(assert (=> b!635396 (= e!363424 e!363423)))

(declare-fun res!411144 () Bool)

(assert (=> b!635396 (=> res!411144 e!363423)))

(declare-fun lt!293835 () (_ BitVec 64))

(assert (=> b!635396 (= res!411144 (or (not (= (select (arr!18320 a!2986) j!136) lt!293836)) (not (= (select (arr!18320 a!2986) j!136) lt!293835)) (bvsge j!136 index!984)))))

(declare-fun e!363425 () Bool)

(assert (=> b!635396 e!363425))

(declare-fun res!411150 () Bool)

(assert (=> b!635396 (=> (not res!411150) (not e!363425))))

(assert (=> b!635396 (= res!411150 (= lt!293835 (select (arr!18320 a!2986) j!136)))))

(assert (=> b!635396 (= lt!293835 (select (store (arr!18320 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!635397 () Bool)

(declare-fun res!411147 () Bool)

(assert (=> b!635397 (=> (not res!411147) (not e!363429))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38194 (_ BitVec 32)) Bool)

(assert (=> b!635397 (= res!411147 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!635398 () Bool)

(declare-fun e!363430 () Bool)

(assert (=> b!635398 (= e!363429 e!363430)))

(declare-fun res!411148 () Bool)

(assert (=> b!635398 (=> (not res!411148) (not e!363430))))

(assert (=> b!635398 (= res!411148 (= (select (store (arr!18320 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!635398 (= lt!293834 (array!38195 (store (arr!18320 a!2986) i!1108 k!1786) (size!18684 a!2986)))))

(declare-fun b!635399 () Bool)

(declare-fun res!411143 () Bool)

(assert (=> b!635399 (=> (not res!411143) (not e!363429))))

(assert (=> b!635399 (= res!411143 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18320 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!635400 () Bool)

(declare-fun e!363432 () Bool)

(assert (=> b!635400 (= e!363432 e!363428)))

(declare-fun res!411156 () Bool)

(assert (=> b!635400 (=> (not res!411156) (not e!363428))))

(assert (=> b!635400 (= res!411156 (arrayContainsKey!0 lt!293834 (select (arr!18320 a!2986) j!136) j!136))))

(declare-fun b!635392 () Bool)

(assert (=> b!635392 (= e!363430 e!363431)))

(declare-fun res!411142 () Bool)

(assert (=> b!635392 (=> (not res!411142) (not e!363431))))

(assert (=> b!635392 (= res!411142 (and (= lt!293841 (Found!6767 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18320 a!2986) index!984) (select (arr!18320 a!2986) j!136))) (not (= (select (arr!18320 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!635392 (= lt!293841 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18320 a!2986) j!136) a!2986 mask!3053))))

(declare-fun res!411154 () Bool)

(assert (=> start!57448 (=> (not res!411154) (not e!363427))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57448 (= res!411154 (validMask!0 mask!3053))))

(assert (=> start!57448 e!363427))

(assert (=> start!57448 true))

(declare-fun array_inv!14094 (array!38194) Bool)

(assert (=> start!57448 (array_inv!14094 a!2986)))

(declare-fun b!635401 () Bool)

(declare-fun res!411158 () Bool)

(assert (=> b!635401 (=> (not res!411158) (not e!363427))))

(assert (=> b!635401 (= res!411158 (and (= (size!18684 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18684 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18684 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!635402 () Bool)

(assert (=> b!635402 (= e!363425 e!363432)))

(declare-fun res!411151 () Bool)

(assert (=> b!635402 (=> res!411151 e!363432)))

(assert (=> b!635402 (= res!411151 (or (not (= (select (arr!18320 a!2986) j!136) lt!293836)) (not (= (select (arr!18320 a!2986) j!136) lt!293835)) (bvsge j!136 index!984)))))

(assert (= (and start!57448 res!411154) b!635401))

(assert (= (and b!635401 res!411158) b!635393))

(assert (= (and b!635393 res!411145) b!635391))

(assert (= (and b!635391 res!411146) b!635395))

(assert (= (and b!635395 res!411153) b!635388))

(assert (= (and b!635388 res!411155) b!635397))

(assert (= (and b!635397 res!411147) b!635386))

(assert (= (and b!635386 res!411152) b!635399))

(assert (= (and b!635399 res!411143) b!635398))

(assert (= (and b!635398 res!411148) b!635392))

(assert (= (and b!635392 res!411142) b!635384))

(assert (= (and b!635384 res!411157) b!635394))

(assert (= (and b!635384 c!72488) b!635385))

(assert (= (and b!635384 (not c!72488)) b!635389))

(assert (= (and b!635384 (not res!411149)) b!635396))

(assert (= (and b!635396 res!411150) b!635402))

(assert (= (and b!635402 (not res!411151)) b!635400))

(assert (= (and b!635400 res!411156) b!635387))

(assert (= (and b!635396 (not res!411144)) b!635390))

(declare-fun m!609793 () Bool)

(assert (=> b!635388 m!609793))

(declare-fun m!609795 () Bool)

(assert (=> b!635392 m!609795))

(declare-fun m!609797 () Bool)

(assert (=> b!635392 m!609797))

(assert (=> b!635392 m!609797))

(declare-fun m!609799 () Bool)

(assert (=> b!635392 m!609799))

(assert (=> b!635387 m!609797))

(assert (=> b!635387 m!609797))

(declare-fun m!609801 () Bool)

(assert (=> b!635387 m!609801))

(declare-fun m!609803 () Bool)

(assert (=> start!57448 m!609803))

(declare-fun m!609805 () Bool)

(assert (=> start!57448 m!609805))

(assert (=> b!635400 m!609797))

(assert (=> b!635400 m!609797))

(declare-fun m!609807 () Bool)

(assert (=> b!635400 m!609807))

(assert (=> b!635396 m!609797))

(declare-fun m!609809 () Bool)

(assert (=> b!635396 m!609809))

(declare-fun m!609811 () Bool)

(assert (=> b!635396 m!609811))

(declare-fun m!609813 () Bool)

(assert (=> b!635395 m!609813))

(declare-fun m!609815 () Bool)

(assert (=> b!635399 m!609815))

(assert (=> b!635402 m!609797))

(declare-fun m!609817 () Bool)

(assert (=> b!635386 m!609817))

(assert (=> b!635384 m!609797))

(declare-fun m!609819 () Bool)

(assert (=> b!635384 m!609819))

(declare-fun m!609821 () Bool)

(assert (=> b!635384 m!609821))

(declare-fun m!609823 () Bool)

(assert (=> b!635384 m!609823))

(assert (=> b!635384 m!609797))

(assert (=> b!635384 m!609809))

(declare-fun m!609825 () Bool)

(assert (=> b!635384 m!609825))

(declare-fun m!609827 () Bool)

(assert (=> b!635384 m!609827))

(declare-fun m!609829 () Bool)

(assert (=> b!635384 m!609829))

(declare-fun m!609831 () Bool)

(assert (=> b!635391 m!609831))

(assert (=> b!635390 m!609797))

(assert (=> b!635390 m!609797))

(declare-fun m!609833 () Bool)

(assert (=> b!635390 m!609833))

(assert (=> b!635390 m!609797))

(declare-fun m!609835 () Bool)

(assert (=> b!635390 m!609835))

(assert (=> b!635393 m!609797))

(assert (=> b!635393 m!609797))

(declare-fun m!609837 () Bool)

(assert (=> b!635393 m!609837))

(declare-fun m!609839 () Bool)

(assert (=> b!635397 m!609839))

(assert (=> b!635398 m!609809))

(declare-fun m!609841 () Bool)

(assert (=> b!635398 m!609841))

(push 1)

