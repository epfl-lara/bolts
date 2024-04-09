; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53650 () Bool)

(assert start!53650)

(declare-fun b!584091 () Bool)

(declare-fun res!372063 () Bool)

(declare-fun e!334492 () Bool)

(assert (=> b!584091 (=> (not res!372063) (not e!334492))))

(declare-datatypes ((array!36505 0))(
  ( (array!36506 (arr!17523 (Array (_ BitVec 32) (_ BitVec 64))) (size!17887 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36505)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!584091 (= res!372063 (validKeyInArray!0 (select (arr!17523 a!2986) j!136)))))

(declare-fun b!584092 () Bool)

(declare-fun res!372067 () Bool)

(declare-fun e!334495 () Bool)

(assert (=> b!584092 (=> (not res!372067) (not e!334495))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!584092 (= res!372067 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17523 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17523 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!584093 () Bool)

(declare-fun e!334493 () Bool)

(assert (=> b!584093 (= e!334493 false)))

(declare-fun lt!265499 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5970 0))(
  ( (MissingZero!5970 (index!26107 (_ BitVec 32))) (Found!5970 (index!26108 (_ BitVec 32))) (Intermediate!5970 (undefined!6782 Bool) (index!26109 (_ BitVec 32)) (x!54970 (_ BitVec 32))) (Undefined!5970) (MissingVacant!5970 (index!26110 (_ BitVec 32))) )
))
(declare-fun lt!265498 () SeekEntryResult!5970)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36505 (_ BitVec 32)) SeekEntryResult!5970)

(assert (=> b!584093 (= lt!265498 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!265499 vacantSpotIndex!68 (select (arr!17523 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!584094 () Bool)

(declare-fun res!372062 () Bool)

(assert (=> b!584094 (=> (not res!372062) (not e!334495))))

(assert (=> b!584094 (= res!372062 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17523 a!2986) j!136) a!2986 mask!3053) (Found!5970 j!136)))))

(declare-fun b!584095 () Bool)

(assert (=> b!584095 (= e!334495 e!334493)))

(declare-fun res!372064 () Bool)

(assert (=> b!584095 (=> (not res!372064) (not e!334493))))

(assert (=> b!584095 (= res!372064 (and (bvsge lt!265499 #b00000000000000000000000000000000) (bvslt lt!265499 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b00000000000000000000000000000000)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!584095 (= lt!265499 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!584097 () Bool)

(declare-fun res!372060 () Bool)

(assert (=> b!584097 (=> (not res!372060) (not e!334492))))

(assert (=> b!584097 (= res!372060 (and (= (size!17887 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17887 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17887 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!584098 () Bool)

(declare-fun res!372065 () Bool)

(assert (=> b!584098 (=> (not res!372065) (not e!334495))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36505 (_ BitVec 32)) Bool)

(assert (=> b!584098 (= res!372065 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!584099 () Bool)

(declare-fun res!372058 () Bool)

(assert (=> b!584099 (=> (not res!372058) (not e!334492))))

(assert (=> b!584099 (= res!372058 (validKeyInArray!0 k!1786))))

(declare-fun b!584100 () Bool)

(assert (=> b!584100 (= e!334492 e!334495)))

(declare-fun res!372059 () Bool)

(assert (=> b!584100 (=> (not res!372059) (not e!334495))))

(declare-fun lt!265497 () SeekEntryResult!5970)

(assert (=> b!584100 (= res!372059 (or (= lt!265497 (MissingZero!5970 i!1108)) (= lt!265497 (MissingVacant!5970 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36505 (_ BitVec 32)) SeekEntryResult!5970)

(assert (=> b!584100 (= lt!265497 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!584096 () Bool)

(declare-fun res!372068 () Bool)

(assert (=> b!584096 (=> (not res!372068) (not e!334495))))

(declare-datatypes ((List!11617 0))(
  ( (Nil!11614) (Cons!11613 (h!12658 (_ BitVec 64)) (t!17853 List!11617)) )
))
(declare-fun arrayNoDuplicates!0 (array!36505 (_ BitVec 32) List!11617) Bool)

(assert (=> b!584096 (= res!372068 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11614))))

(declare-fun res!372066 () Bool)

(assert (=> start!53650 (=> (not res!372066) (not e!334492))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53650 (= res!372066 (validMask!0 mask!3053))))

(assert (=> start!53650 e!334492))

(assert (=> start!53650 true))

(declare-fun array_inv!13297 (array!36505) Bool)

(assert (=> start!53650 (array_inv!13297 a!2986)))

(declare-fun b!584101 () Bool)

(declare-fun res!372061 () Bool)

(assert (=> b!584101 (=> (not res!372061) (not e!334495))))

(assert (=> b!584101 (= res!372061 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17523 a!2986) index!984) (select (arr!17523 a!2986) j!136))) (not (= (select (arr!17523 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!584102 () Bool)

(declare-fun res!372057 () Bool)

(assert (=> b!584102 (=> (not res!372057) (not e!334492))))

(declare-fun arrayContainsKey!0 (array!36505 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!584102 (= res!372057 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(assert (= (and start!53650 res!372066) b!584097))

(assert (= (and b!584097 res!372060) b!584091))

(assert (= (and b!584091 res!372063) b!584099))

(assert (= (and b!584099 res!372058) b!584102))

(assert (= (and b!584102 res!372057) b!584100))

(assert (= (and b!584100 res!372059) b!584098))

(assert (= (and b!584098 res!372065) b!584096))

(assert (= (and b!584096 res!372068) b!584092))

(assert (= (and b!584092 res!372067) b!584094))

(assert (= (and b!584094 res!372062) b!584101))

(assert (= (and b!584101 res!372061) b!584095))

(assert (= (and b!584095 res!372064) b!584093))

(declare-fun m!562513 () Bool)

(assert (=> b!584094 m!562513))

(assert (=> b!584094 m!562513))

(declare-fun m!562515 () Bool)

(assert (=> b!584094 m!562515))

(declare-fun m!562517 () Bool)

(assert (=> b!584095 m!562517))

(declare-fun m!562519 () Bool)

(assert (=> b!584100 m!562519))

(assert (=> b!584093 m!562513))

(assert (=> b!584093 m!562513))

(declare-fun m!562521 () Bool)

(assert (=> b!584093 m!562521))

(declare-fun m!562523 () Bool)

(assert (=> b!584098 m!562523))

(declare-fun m!562525 () Bool)

(assert (=> b!584099 m!562525))

(declare-fun m!562527 () Bool)

(assert (=> start!53650 m!562527))

(declare-fun m!562529 () Bool)

(assert (=> start!53650 m!562529))

(declare-fun m!562531 () Bool)

(assert (=> b!584102 m!562531))

(declare-fun m!562533 () Bool)

(assert (=> b!584096 m!562533))

(declare-fun m!562535 () Bool)

(assert (=> b!584092 m!562535))

(declare-fun m!562537 () Bool)

(assert (=> b!584092 m!562537))

(declare-fun m!562539 () Bool)

(assert (=> b!584092 m!562539))

(declare-fun m!562541 () Bool)

(assert (=> b!584101 m!562541))

(assert (=> b!584101 m!562513))

(assert (=> b!584091 m!562513))

(assert (=> b!584091 m!562513))

(declare-fun m!562543 () Bool)

(assert (=> b!584091 m!562543))

(push 1)

