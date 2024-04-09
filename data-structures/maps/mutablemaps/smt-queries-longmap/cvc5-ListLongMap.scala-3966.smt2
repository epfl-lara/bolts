; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53884 () Bool)

(assert start!53884)

(declare-fun b!587320 () Bool)

(declare-fun e!335543 () Bool)

(assert (=> b!587320 (= e!335543 (not true))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-datatypes ((array!36682 0))(
  ( (array!36683 (arr!17610 (Array (_ BitVec 32) (_ BitVec 64))) (size!17974 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36682)

(declare-fun lt!266382 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6057 0))(
  ( (MissingZero!6057 (index!26458 (_ BitVec 32))) (Found!6057 (index!26459 (_ BitVec 32))) (Intermediate!6057 (undefined!6869 Bool) (index!26460 (_ BitVec 32)) (x!55298 (_ BitVec 32))) (Undefined!6057) (MissingVacant!6057 (index!26461 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36682 (_ BitVec 32)) SeekEntryResult!6057)

(assert (=> b!587320 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266382 vacantSpotIndex!68 (select (arr!17610 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266382 vacantSpotIndex!68 (select (store (arr!17610 a!2986) i!1108 k!1786) j!136) (array!36683 (store (arr!17610 a!2986) i!1108 k!1786) (size!17974 a!2986)) mask!3053))))

(declare-datatypes ((Unit!18238 0))(
  ( (Unit!18239) )
))
(declare-fun lt!266384 () Unit!18238)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36682 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18238)

(assert (=> b!587320 (= lt!266384 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!266382 vacantSpotIndex!68 mask!3053))))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!587320 (= lt!266382 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!587321 () Bool)

(declare-fun res!375112 () Bool)

(assert (=> b!587321 (=> (not res!375112) (not e!335543))))

(assert (=> b!587321 (= res!375112 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17610 a!2986) j!136) a!2986 mask!3053) (Found!6057 j!136)))))

(declare-fun b!587322 () Bool)

(declare-fun res!375114 () Bool)

(declare-fun e!335545 () Bool)

(assert (=> b!587322 (=> (not res!375114) (not e!335545))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!587322 (= res!375114 (validKeyInArray!0 (select (arr!17610 a!2986) j!136)))))

(declare-fun b!587323 () Bool)

(declare-fun res!375106 () Bool)

(assert (=> b!587323 (=> (not res!375106) (not e!335543))))

(assert (=> b!587323 (= res!375106 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17610 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17610 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!587324 () Bool)

(declare-fun res!375109 () Bool)

(assert (=> b!587324 (=> (not res!375109) (not e!335545))))

(assert (=> b!587324 (= res!375109 (and (= (size!17974 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17974 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17974 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!587325 () Bool)

(declare-fun res!375113 () Bool)

(assert (=> b!587325 (=> (not res!375113) (not e!335545))))

(assert (=> b!587325 (= res!375113 (validKeyInArray!0 k!1786))))

(declare-fun b!587326 () Bool)

(declare-fun res!375115 () Bool)

(assert (=> b!587326 (=> (not res!375115) (not e!335543))))

(declare-datatypes ((List!11704 0))(
  ( (Nil!11701) (Cons!11700 (h!12745 (_ BitVec 64)) (t!17940 List!11704)) )
))
(declare-fun arrayNoDuplicates!0 (array!36682 (_ BitVec 32) List!11704) Bool)

(assert (=> b!587326 (= res!375115 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11701))))

(declare-fun b!587327 () Bool)

(assert (=> b!587327 (= e!335545 e!335543)))

(declare-fun res!375111 () Bool)

(assert (=> b!587327 (=> (not res!375111) (not e!335543))))

(declare-fun lt!266383 () SeekEntryResult!6057)

(assert (=> b!587327 (= res!375111 (or (= lt!266383 (MissingZero!6057 i!1108)) (= lt!266383 (MissingVacant!6057 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36682 (_ BitVec 32)) SeekEntryResult!6057)

(assert (=> b!587327 (= lt!266383 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun res!375110 () Bool)

(assert (=> start!53884 (=> (not res!375110) (not e!335545))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53884 (= res!375110 (validMask!0 mask!3053))))

(assert (=> start!53884 e!335545))

(assert (=> start!53884 true))

(declare-fun array_inv!13384 (array!36682) Bool)

(assert (=> start!53884 (array_inv!13384 a!2986)))

(declare-fun b!587328 () Bool)

(declare-fun res!375116 () Bool)

(assert (=> b!587328 (=> (not res!375116) (not e!335543))))

(assert (=> b!587328 (= res!375116 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17610 a!2986) index!984) (select (arr!17610 a!2986) j!136))) (not (= (select (arr!17610 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!587329 () Bool)

(declare-fun res!375108 () Bool)

(assert (=> b!587329 (=> (not res!375108) (not e!335543))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36682 (_ BitVec 32)) Bool)

(assert (=> b!587329 (= res!375108 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!587330 () Bool)

(declare-fun res!375107 () Bool)

(assert (=> b!587330 (=> (not res!375107) (not e!335545))))

(declare-fun arrayContainsKey!0 (array!36682 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!587330 (= res!375107 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(assert (= (and start!53884 res!375110) b!587324))

(assert (= (and b!587324 res!375109) b!587322))

(assert (= (and b!587322 res!375114) b!587325))

(assert (= (and b!587325 res!375113) b!587330))

(assert (= (and b!587330 res!375107) b!587327))

(assert (= (and b!587327 res!375111) b!587329))

(assert (= (and b!587329 res!375108) b!587326))

(assert (= (and b!587326 res!375115) b!587323))

(assert (= (and b!587323 res!375106) b!587321))

(assert (= (and b!587321 res!375112) b!587328))

(assert (= (and b!587328 res!375116) b!587320))

(declare-fun m!565783 () Bool)

(assert (=> b!587326 m!565783))

(declare-fun m!565785 () Bool)

(assert (=> b!587320 m!565785))

(declare-fun m!565787 () Bool)

(assert (=> b!587320 m!565787))

(declare-fun m!565789 () Bool)

(assert (=> b!587320 m!565789))

(declare-fun m!565791 () Bool)

(assert (=> b!587320 m!565791))

(assert (=> b!587320 m!565787))

(declare-fun m!565793 () Bool)

(assert (=> b!587320 m!565793))

(declare-fun m!565795 () Bool)

(assert (=> b!587320 m!565795))

(assert (=> b!587320 m!565789))

(declare-fun m!565797 () Bool)

(assert (=> b!587320 m!565797))

(assert (=> b!587322 m!565789))

(assert (=> b!587322 m!565789))

(declare-fun m!565799 () Bool)

(assert (=> b!587322 m!565799))

(declare-fun m!565801 () Bool)

(assert (=> b!587325 m!565801))

(declare-fun m!565803 () Bool)

(assert (=> b!587323 m!565803))

(assert (=> b!587323 m!565791))

(declare-fun m!565805 () Bool)

(assert (=> b!587323 m!565805))

(declare-fun m!565807 () Bool)

(assert (=> b!587327 m!565807))

(declare-fun m!565809 () Bool)

(assert (=> b!587329 m!565809))

(declare-fun m!565811 () Bool)

(assert (=> start!53884 m!565811))

(declare-fun m!565813 () Bool)

(assert (=> start!53884 m!565813))

(declare-fun m!565815 () Bool)

(assert (=> b!587328 m!565815))

(assert (=> b!587328 m!565789))

(assert (=> b!587321 m!565789))

(assert (=> b!587321 m!565789))

(declare-fun m!565817 () Bool)

(assert (=> b!587321 m!565817))

(declare-fun m!565819 () Bool)

(assert (=> b!587330 m!565819))

(push 1)

