; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53668 () Bool)

(assert start!53668)

(declare-fun b!584416 () Bool)

(declare-fun e!334603 () Bool)

(declare-fun e!334600 () Bool)

(assert (=> b!584416 (= e!334603 e!334600)))

(declare-fun res!372392 () Bool)

(assert (=> b!584416 (=> (not res!372392) (not e!334600))))

(declare-datatypes ((SeekEntryResult!5979 0))(
  ( (MissingZero!5979 (index!26143 (_ BitVec 32))) (Found!5979 (index!26144 (_ BitVec 32))) (Intermediate!5979 (undefined!6791 Bool) (index!26145 (_ BitVec 32)) (x!55003 (_ BitVec 32))) (Undefined!5979) (MissingVacant!5979 (index!26146 (_ BitVec 32))) )
))
(declare-fun lt!265579 () SeekEntryResult!5979)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!584416 (= res!372392 (or (= lt!265579 (MissingZero!5979 i!1108)) (= lt!265579 (MissingVacant!5979 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-datatypes ((array!36523 0))(
  ( (array!36524 (arr!17532 (Array (_ BitVec 32) (_ BitVec 64))) (size!17896 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36523)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36523 (_ BitVec 32)) SeekEntryResult!5979)

(assert (=> b!584416 (= lt!265579 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!584417 () Bool)

(declare-fun res!372386 () Bool)

(assert (=> b!584417 (=> (not res!372386) (not e!334603))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!584417 (= res!372386 (validKeyInArray!0 k!1786))))

(declare-fun b!584418 () Bool)

(declare-fun res!372390 () Bool)

(assert (=> b!584418 (=> (not res!372390) (not e!334600))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!584418 (= res!372390 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17532 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17532 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!584419 () Bool)

(declare-fun res!372385 () Bool)

(assert (=> b!584419 (=> (not res!372385) (not e!334603))))

(declare-fun arrayContainsKey!0 (array!36523 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!584419 (= res!372385 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!584420 () Bool)

(declare-fun res!372389 () Bool)

(assert (=> b!584420 (=> (not res!372389) (not e!334603))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!584420 (= res!372389 (and (= (size!17896 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17896 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17896 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!584421 () Bool)

(declare-fun e!334601 () Bool)

(assert (=> b!584421 (= e!334600 e!334601)))

(declare-fun res!372391 () Bool)

(assert (=> b!584421 (=> (not res!372391) (not e!334601))))

(declare-fun lt!265580 () (_ BitVec 32))

(assert (=> b!584421 (= res!372391 (and (bvsge lt!265580 #b00000000000000000000000000000000) (bvslt lt!265580 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b00000000000000000000000000000000)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!584421 (= lt!265580 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!584422 () Bool)

(declare-fun res!372381 () Bool)

(assert (=> b!584422 (=> (not res!372381) (not e!334600))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36523 (_ BitVec 32)) SeekEntryResult!5979)

(assert (=> b!584422 (= res!372381 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17532 a!2986) j!136) a!2986 mask!3053) (Found!5979 j!136)))))

(declare-fun b!584423 () Bool)

(declare-fun res!372388 () Bool)

(assert (=> b!584423 (=> (not res!372388) (not e!334603))))

(assert (=> b!584423 (= res!372388 (validKeyInArray!0 (select (arr!17532 a!2986) j!136)))))

(declare-fun b!584424 () Bool)

(declare-fun res!372383 () Bool)

(assert (=> b!584424 (=> (not res!372383) (not e!334600))))

(declare-datatypes ((List!11626 0))(
  ( (Nil!11623) (Cons!11622 (h!12667 (_ BitVec 64)) (t!17862 List!11626)) )
))
(declare-fun arrayNoDuplicates!0 (array!36523 (_ BitVec 32) List!11626) Bool)

(assert (=> b!584424 (= res!372383 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11623))))

(declare-fun b!584415 () Bool)

(declare-fun res!372387 () Bool)

(assert (=> b!584415 (=> (not res!372387) (not e!334600))))

(assert (=> b!584415 (= res!372387 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17532 a!2986) index!984) (select (arr!17532 a!2986) j!136))) (not (= (select (arr!17532 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun res!372382 () Bool)

(assert (=> start!53668 (=> (not res!372382) (not e!334603))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53668 (= res!372382 (validMask!0 mask!3053))))

(assert (=> start!53668 e!334603))

(assert (=> start!53668 true))

(declare-fun array_inv!13306 (array!36523) Bool)

(assert (=> start!53668 (array_inv!13306 a!2986)))

(declare-fun b!584425 () Bool)

(assert (=> b!584425 (= e!334601 false)))

(declare-fun lt!265578 () SeekEntryResult!5979)

(assert (=> b!584425 (= lt!265578 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!265580 vacantSpotIndex!68 (select (arr!17532 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!584426 () Bool)

(declare-fun res!372384 () Bool)

(assert (=> b!584426 (=> (not res!372384) (not e!334600))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36523 (_ BitVec 32)) Bool)

(assert (=> b!584426 (= res!372384 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(assert (= (and start!53668 res!372382) b!584420))

(assert (= (and b!584420 res!372389) b!584423))

(assert (= (and b!584423 res!372388) b!584417))

(assert (= (and b!584417 res!372386) b!584419))

(assert (= (and b!584419 res!372385) b!584416))

(assert (= (and b!584416 res!372392) b!584426))

(assert (= (and b!584426 res!372384) b!584424))

(assert (= (and b!584424 res!372383) b!584418))

(assert (= (and b!584418 res!372390) b!584422))

(assert (= (and b!584422 res!372381) b!584415))

(assert (= (and b!584415 res!372387) b!584421))

(assert (= (and b!584421 res!372391) b!584425))

(declare-fun m!562801 () Bool)

(assert (=> start!53668 m!562801))

(declare-fun m!562803 () Bool)

(assert (=> start!53668 m!562803))

(declare-fun m!562805 () Bool)

(assert (=> b!584416 m!562805))

(declare-fun m!562807 () Bool)

(assert (=> b!584426 m!562807))

(declare-fun m!562809 () Bool)

(assert (=> b!584419 m!562809))

(declare-fun m!562811 () Bool)

(assert (=> b!584422 m!562811))

(assert (=> b!584422 m!562811))

(declare-fun m!562813 () Bool)

(assert (=> b!584422 m!562813))

(declare-fun m!562815 () Bool)

(assert (=> b!584424 m!562815))

(declare-fun m!562817 () Bool)

(assert (=> b!584418 m!562817))

(declare-fun m!562819 () Bool)

(assert (=> b!584418 m!562819))

(declare-fun m!562821 () Bool)

(assert (=> b!584418 m!562821))

(declare-fun m!562823 () Bool)

(assert (=> b!584417 m!562823))

(declare-fun m!562825 () Bool)

(assert (=> b!584415 m!562825))

(assert (=> b!584415 m!562811))

(assert (=> b!584425 m!562811))

(assert (=> b!584425 m!562811))

(declare-fun m!562827 () Bool)

(assert (=> b!584425 m!562827))

(declare-fun m!562829 () Bool)

(assert (=> b!584421 m!562829))

(assert (=> b!584423 m!562811))

(assert (=> b!584423 m!562811))

(declare-fun m!562831 () Bool)

(assert (=> b!584423 m!562831))

(push 1)

