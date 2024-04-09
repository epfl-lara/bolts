; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53782 () Bool)

(assert start!53782)

(declare-fun b!586375 () Bool)

(declare-fun res!374348 () Bool)

(declare-fun e!335193 () Bool)

(assert (=> b!586375 (=> (not res!374348) (not e!335193))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!36637 0))(
  ( (array!36638 (arr!17589 (Array (_ BitVec 32) (_ BitVec 64))) (size!17953 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36637)

(assert (=> b!586375 (= res!374348 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17589 a!2986) index!984) (select (arr!17589 a!2986) j!136))) (not (= (select (arr!17589 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!586376 () Bool)

(declare-fun res!374347 () Bool)

(declare-fun e!335192 () Bool)

(assert (=> b!586376 (=> (not res!374347) (not e!335192))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!586376 (= res!374347 (and (= (size!17953 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17953 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17953 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!586377 () Bool)

(declare-fun res!374351 () Bool)

(assert (=> b!586377 (=> (not res!374351) (not e!335193))))

(declare-datatypes ((List!11683 0))(
  ( (Nil!11680) (Cons!11679 (h!12724 (_ BitVec 64)) (t!17919 List!11683)) )
))
(declare-fun arrayNoDuplicates!0 (array!36637 (_ BitVec 32) List!11683) Bool)

(assert (=> b!586377 (= res!374351 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11680))))

(declare-fun b!586378 () Bool)

(assert (=> b!586378 (= e!335192 e!335193)))

(declare-fun res!374343 () Bool)

(assert (=> b!586378 (=> (not res!374343) (not e!335193))))

(declare-datatypes ((SeekEntryResult!6036 0))(
  ( (MissingZero!6036 (index!26371 (_ BitVec 32))) (Found!6036 (index!26372 (_ BitVec 32))) (Intermediate!6036 (undefined!6848 Bool) (index!26373 (_ BitVec 32)) (x!55212 (_ BitVec 32))) (Undefined!6036) (MissingVacant!6036 (index!26374 (_ BitVec 32))) )
))
(declare-fun lt!266092 () SeekEntryResult!6036)

(assert (=> b!586378 (= res!374343 (or (= lt!266092 (MissingZero!6036 i!1108)) (= lt!266092 (MissingVacant!6036 i!1108))))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36637 (_ BitVec 32)) SeekEntryResult!6036)

(assert (=> b!586378 (= lt!266092 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!586379 () Bool)

(declare-fun res!374350 () Bool)

(assert (=> b!586379 (=> (not res!374350) (not e!335192))))

(declare-fun arrayContainsKey!0 (array!36637 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!586379 (= res!374350 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!586380 () Bool)

(assert (=> b!586380 (= e!335193 (not true))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun lt!266091 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36637 (_ BitVec 32)) SeekEntryResult!6036)

(assert (=> b!586380 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266091 vacantSpotIndex!68 (select (arr!17589 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266091 vacantSpotIndex!68 (select (store (arr!17589 a!2986) i!1108 k!1786) j!136) (array!36638 (store (arr!17589 a!2986) i!1108 k!1786) (size!17953 a!2986)) mask!3053))))

(declare-datatypes ((Unit!18196 0))(
  ( (Unit!18197) )
))
(declare-fun lt!266093 () Unit!18196)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36637 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18196)

(assert (=> b!586380 (= lt!266093 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!266091 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!586380 (= lt!266091 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!586381 () Bool)

(declare-fun res!374341 () Bool)

(assert (=> b!586381 (=> (not res!374341) (not e!335193))))

(assert (=> b!586381 (= res!374341 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17589 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17589 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!586382 () Bool)

(declare-fun res!374346 () Bool)

(assert (=> b!586382 (=> (not res!374346) (not e!335192))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!586382 (= res!374346 (validKeyInArray!0 k!1786))))

(declare-fun b!586383 () Bool)

(declare-fun res!374345 () Bool)

(assert (=> b!586383 (=> (not res!374345) (not e!335193))))

(assert (=> b!586383 (= res!374345 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17589 a!2986) j!136) a!2986 mask!3053) (Found!6036 j!136)))))

(declare-fun res!374342 () Bool)

(assert (=> start!53782 (=> (not res!374342) (not e!335192))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53782 (= res!374342 (validMask!0 mask!3053))))

(assert (=> start!53782 e!335192))

(assert (=> start!53782 true))

(declare-fun array_inv!13363 (array!36637) Bool)

(assert (=> start!53782 (array_inv!13363 a!2986)))

(declare-fun b!586384 () Bool)

(declare-fun res!374344 () Bool)

(assert (=> b!586384 (=> (not res!374344) (not e!335193))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36637 (_ BitVec 32)) Bool)

(assert (=> b!586384 (= res!374344 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!586385 () Bool)

(declare-fun res!374349 () Bool)

(assert (=> b!586385 (=> (not res!374349) (not e!335192))))

(assert (=> b!586385 (= res!374349 (validKeyInArray!0 (select (arr!17589 a!2986) j!136)))))

(assert (= (and start!53782 res!374342) b!586376))

(assert (= (and b!586376 res!374347) b!586385))

(assert (= (and b!586385 res!374349) b!586382))

(assert (= (and b!586382 res!374346) b!586379))

(assert (= (and b!586379 res!374350) b!586378))

(assert (= (and b!586378 res!374343) b!586384))

(assert (= (and b!586384 res!374344) b!586377))

(assert (= (and b!586377 res!374351) b!586381))

(assert (= (and b!586381 res!374341) b!586383))

(assert (= (and b!586383 res!374345) b!586375))

(assert (= (and b!586375 res!374348) b!586380))

(declare-fun m!564805 () Bool)

(assert (=> b!586378 m!564805))

(declare-fun m!564807 () Bool)

(assert (=> b!586381 m!564807))

(declare-fun m!564809 () Bool)

(assert (=> b!586381 m!564809))

(declare-fun m!564811 () Bool)

(assert (=> b!586381 m!564811))

(declare-fun m!564813 () Bool)

(assert (=> b!586385 m!564813))

(assert (=> b!586385 m!564813))

(declare-fun m!564815 () Bool)

(assert (=> b!586385 m!564815))

(declare-fun m!564817 () Bool)

(assert (=> b!586384 m!564817))

(declare-fun m!564819 () Bool)

(assert (=> b!586375 m!564819))

(assert (=> b!586375 m!564813))

(declare-fun m!564821 () Bool)

(assert (=> b!586379 m!564821))

(declare-fun m!564823 () Bool)

(assert (=> start!53782 m!564823))

(declare-fun m!564825 () Bool)

(assert (=> start!53782 m!564825))

(declare-fun m!564827 () Bool)

(assert (=> b!586380 m!564827))

(declare-fun m!564829 () Bool)

(assert (=> b!586380 m!564829))

(assert (=> b!586380 m!564813))

(assert (=> b!586380 m!564809))

(declare-fun m!564831 () Bool)

(assert (=> b!586380 m!564831))

(assert (=> b!586380 m!564829))

(declare-fun m!564833 () Bool)

(assert (=> b!586380 m!564833))

(assert (=> b!586380 m!564813))

(declare-fun m!564835 () Bool)

(assert (=> b!586380 m!564835))

(assert (=> b!586383 m!564813))

(assert (=> b!586383 m!564813))

(declare-fun m!564837 () Bool)

(assert (=> b!586383 m!564837))

(declare-fun m!564839 () Bool)

(assert (=> b!586382 m!564839))

(declare-fun m!564841 () Bool)

(assert (=> b!586377 m!564841))

(push 1)

(assert (not b!586377))

(assert (not start!53782))

(assert (not b!586382))

(assert (not b!586380))

(assert (not b!586384))

(assert (not b!586385))

(assert (not b!586383))

(assert (not b!586378))

(assert (not b!586379))

(check-sat)

(pop 1)

