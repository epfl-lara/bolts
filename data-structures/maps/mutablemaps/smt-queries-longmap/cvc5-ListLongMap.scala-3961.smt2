; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53794 () Bool)

(assert start!53794)

(declare-fun b!586573 () Bool)

(declare-fun res!374545 () Bool)

(declare-fun e!335246 () Bool)

(assert (=> b!586573 (=> (not res!374545) (not e!335246))))

(declare-datatypes ((array!36649 0))(
  ( (array!36650 (arr!17595 (Array (_ BitVec 32) (_ BitVec 64))) (size!17959 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36649)

(declare-datatypes ((List!11689 0))(
  ( (Nil!11686) (Cons!11685 (h!12730 (_ BitVec 64)) (t!17925 List!11689)) )
))
(declare-fun arrayNoDuplicates!0 (array!36649 (_ BitVec 32) List!11689) Bool)

(assert (=> b!586573 (= res!374545 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11686))))

(declare-fun b!586574 () Bool)

(declare-fun res!374542 () Bool)

(assert (=> b!586574 (=> (not res!374542) (not e!335246))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36649 (_ BitVec 32)) Bool)

(assert (=> b!586574 (= res!374542 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!586575 () Bool)

(declare-fun res!374547 () Bool)

(assert (=> b!586575 (=> (not res!374547) (not e!335246))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!586575 (= res!374547 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17595 a!2986) index!984) (select (arr!17595 a!2986) j!136))) (not (= (select (arr!17595 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun res!374540 () Bool)

(declare-fun e!335248 () Bool)

(assert (=> start!53794 (=> (not res!374540) (not e!335248))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53794 (= res!374540 (validMask!0 mask!3053))))

(assert (=> start!53794 e!335248))

(assert (=> start!53794 true))

(declare-fun array_inv!13369 (array!36649) Bool)

(assert (=> start!53794 (array_inv!13369 a!2986)))

(declare-fun b!586576 () Bool)

(declare-fun res!374543 () Bool)

(assert (=> b!586576 (=> (not res!374543) (not e!335246))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6042 0))(
  ( (MissingZero!6042 (index!26395 (_ BitVec 32))) (Found!6042 (index!26396 (_ BitVec 32))) (Intermediate!6042 (undefined!6854 Bool) (index!26397 (_ BitVec 32)) (x!55234 (_ BitVec 32))) (Undefined!6042) (MissingVacant!6042 (index!26398 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36649 (_ BitVec 32)) SeekEntryResult!6042)

(assert (=> b!586576 (= res!374543 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17595 a!2986) j!136) a!2986 mask!3053) (Found!6042 j!136)))))

(declare-fun b!586577 () Bool)

(declare-fun res!374548 () Bool)

(assert (=> b!586577 (=> (not res!374548) (not e!335246))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!586577 (= res!374548 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17595 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17595 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!586578 () Bool)

(declare-fun res!374539 () Bool)

(assert (=> b!586578 (=> (not res!374539) (not e!335248))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!586578 (= res!374539 (validKeyInArray!0 k!1786))))

(declare-fun b!586579 () Bool)

(assert (=> b!586579 (= e!335248 e!335246)))

(declare-fun res!374549 () Bool)

(assert (=> b!586579 (=> (not res!374549) (not e!335246))))

(declare-fun lt!266145 () SeekEntryResult!6042)

(assert (=> b!586579 (= res!374549 (or (= lt!266145 (MissingZero!6042 i!1108)) (= lt!266145 (MissingVacant!6042 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36649 (_ BitVec 32)) SeekEntryResult!6042)

(assert (=> b!586579 (= lt!266145 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!586580 () Bool)

(declare-fun res!374544 () Bool)

(assert (=> b!586580 (=> (not res!374544) (not e!335248))))

(assert (=> b!586580 (= res!374544 (validKeyInArray!0 (select (arr!17595 a!2986) j!136)))))

(declare-fun b!586581 () Bool)

(declare-fun res!374541 () Bool)

(assert (=> b!586581 (=> (not res!374541) (not e!335248))))

(declare-fun arrayContainsKey!0 (array!36649 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!586581 (= res!374541 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!586582 () Bool)

(declare-fun res!374546 () Bool)

(assert (=> b!586582 (=> (not res!374546) (not e!335248))))

(assert (=> b!586582 (= res!374546 (and (= (size!17959 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17959 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17959 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!586583 () Bool)

(assert (=> b!586583 (= e!335246 (not true))))

(declare-fun lt!266146 () (_ BitVec 32))

(assert (=> b!586583 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266146 vacantSpotIndex!68 (select (arr!17595 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266146 vacantSpotIndex!68 (select (store (arr!17595 a!2986) i!1108 k!1786) j!136) (array!36650 (store (arr!17595 a!2986) i!1108 k!1786) (size!17959 a!2986)) mask!3053))))

(declare-datatypes ((Unit!18208 0))(
  ( (Unit!18209) )
))
(declare-fun lt!266147 () Unit!18208)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36649 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18208)

(assert (=> b!586583 (= lt!266147 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!266146 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!586583 (= lt!266146 (nextIndex!0 index!984 x!910 mask!3053))))

(assert (= (and start!53794 res!374540) b!586582))

(assert (= (and b!586582 res!374546) b!586580))

(assert (= (and b!586580 res!374544) b!586578))

(assert (= (and b!586578 res!374539) b!586581))

(assert (= (and b!586581 res!374541) b!586579))

(assert (= (and b!586579 res!374549) b!586574))

(assert (= (and b!586574 res!374542) b!586573))

(assert (= (and b!586573 res!374545) b!586577))

(assert (= (and b!586577 res!374548) b!586576))

(assert (= (and b!586576 res!374543) b!586575))

(assert (= (and b!586575 res!374547) b!586583))

(declare-fun m!565033 () Bool)

(assert (=> b!586574 m!565033))

(declare-fun m!565035 () Bool)

(assert (=> b!586576 m!565035))

(assert (=> b!586576 m!565035))

(declare-fun m!565037 () Bool)

(assert (=> b!586576 m!565037))

(declare-fun m!565039 () Bool)

(assert (=> b!586579 m!565039))

(declare-fun m!565041 () Bool)

(assert (=> b!586578 m!565041))

(declare-fun m!565043 () Bool)

(assert (=> b!586583 m!565043))

(declare-fun m!565045 () Bool)

(assert (=> b!586583 m!565045))

(assert (=> b!586583 m!565035))

(declare-fun m!565047 () Bool)

(assert (=> b!586583 m!565047))

(assert (=> b!586583 m!565035))

(declare-fun m!565049 () Bool)

(assert (=> b!586583 m!565049))

(assert (=> b!586583 m!565045))

(declare-fun m!565051 () Bool)

(assert (=> b!586583 m!565051))

(declare-fun m!565053 () Bool)

(assert (=> b!586583 m!565053))

(declare-fun m!565055 () Bool)

(assert (=> b!586573 m!565055))

(declare-fun m!565057 () Bool)

(assert (=> b!586581 m!565057))

(declare-fun m!565059 () Bool)

(assert (=> b!586575 m!565059))

(assert (=> b!586575 m!565035))

(declare-fun m!565061 () Bool)

(assert (=> start!53794 m!565061))

(declare-fun m!565063 () Bool)

(assert (=> start!53794 m!565063))

(assert (=> b!586580 m!565035))

(assert (=> b!586580 m!565035))

(declare-fun m!565065 () Bool)

(assert (=> b!586580 m!565065))

(declare-fun m!565067 () Bool)

(assert (=> b!586577 m!565067))

(assert (=> b!586577 m!565047))

(declare-fun m!565069 () Bool)

(assert (=> b!586577 m!565069))

(push 1)

