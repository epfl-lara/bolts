; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56674 () Bool)

(assert start!56674)

(declare-fun b!627874 () Bool)

(declare-fun res!405761 () Bool)

(declare-fun e!359307 () Bool)

(assert (=> b!627874 (=> (not res!405761) (not e!359307))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!37927 0))(
  ( (array!37928 (arr!18200 (Array (_ BitVec 32) (_ BitVec 64))) (size!18564 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37927)

(assert (=> b!627874 (= res!405761 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18200 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18200 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!405755 () Bool)

(declare-fun e!359308 () Bool)

(assert (=> start!56674 (=> (not res!405755) (not e!359308))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56674 (= res!405755 (validMask!0 mask!3053))))

(assert (=> start!56674 e!359308))

(assert (=> start!56674 true))

(declare-fun array_inv!13974 (array!37927) Bool)

(assert (=> start!56674 (array_inv!13974 a!2986)))

(declare-fun b!627875 () Bool)

(assert (=> b!627875 (= e!359308 e!359307)))

(declare-fun res!405762 () Bool)

(assert (=> b!627875 (=> (not res!405762) (not e!359307))))

(declare-datatypes ((SeekEntryResult!6647 0))(
  ( (MissingZero!6647 (index!28871 (_ BitVec 32))) (Found!6647 (index!28872 (_ BitVec 32))) (Intermediate!6647 (undefined!7459 Bool) (index!28873 (_ BitVec 32)) (x!57628 (_ BitVec 32))) (Undefined!6647) (MissingVacant!6647 (index!28874 (_ BitVec 32))) )
))
(declare-fun lt!290339 () SeekEntryResult!6647)

(assert (=> b!627875 (= res!405762 (or (= lt!290339 (MissingZero!6647 i!1108)) (= lt!290339 (MissingVacant!6647 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37927 (_ BitVec 32)) SeekEntryResult!6647)

(assert (=> b!627875 (= lt!290339 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!627876 () Bool)

(declare-fun res!405760 () Bool)

(assert (=> b!627876 (=> (not res!405760) (not e!359307))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37927 (_ BitVec 32)) Bool)

(assert (=> b!627876 (= res!405760 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!627877 () Bool)

(declare-fun res!405757 () Bool)

(assert (=> b!627877 (=> (not res!405757) (not e!359307))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37927 (_ BitVec 32)) SeekEntryResult!6647)

(assert (=> b!627877 (= res!405757 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18200 a!2986) j!136) a!2986 mask!3053) (Found!6647 j!136)))))

(declare-fun b!627878 () Bool)

(declare-fun res!405759 () Bool)

(assert (=> b!627878 (=> (not res!405759) (not e!359308))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!627878 (= res!405759 (validKeyInArray!0 k!1786))))

(declare-fun b!627879 () Bool)

(declare-fun res!405758 () Bool)

(assert (=> b!627879 (=> (not res!405758) (not e!359307))))

(assert (=> b!627879 (= res!405758 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18200 a!2986) index!984) (select (arr!18200 a!2986) j!136))) (not (= (select (arr!18200 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!627880 () Bool)

(assert (=> b!627880 (= e!359307 false)))

(declare-fun lt!290340 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!627880 (= lt!290340 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!627881 () Bool)

(declare-fun res!405763 () Bool)

(assert (=> b!627881 (=> (not res!405763) (not e!359308))))

(declare-fun arrayContainsKey!0 (array!37927 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!627881 (= res!405763 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!627882 () Bool)

(declare-fun res!405754 () Bool)

(assert (=> b!627882 (=> (not res!405754) (not e!359308))))

(assert (=> b!627882 (= res!405754 (validKeyInArray!0 (select (arr!18200 a!2986) j!136)))))

(declare-fun b!627883 () Bool)

(declare-fun res!405756 () Bool)

(assert (=> b!627883 (=> (not res!405756) (not e!359307))))

(declare-datatypes ((List!12294 0))(
  ( (Nil!12291) (Cons!12290 (h!13335 (_ BitVec 64)) (t!18530 List!12294)) )
))
(declare-fun arrayNoDuplicates!0 (array!37927 (_ BitVec 32) List!12294) Bool)

(assert (=> b!627883 (= res!405756 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12291))))

(declare-fun b!627884 () Bool)

(declare-fun res!405764 () Bool)

(assert (=> b!627884 (=> (not res!405764) (not e!359308))))

(assert (=> b!627884 (= res!405764 (and (= (size!18564 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18564 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18564 a!2986)) (not (= i!1108 j!136))))))

(assert (= (and start!56674 res!405755) b!627884))

(assert (= (and b!627884 res!405764) b!627882))

(assert (= (and b!627882 res!405754) b!627878))

(assert (= (and b!627878 res!405759) b!627881))

(assert (= (and b!627881 res!405763) b!627875))

(assert (= (and b!627875 res!405762) b!627876))

(assert (= (and b!627876 res!405760) b!627883))

(assert (= (and b!627883 res!405756) b!627874))

(assert (= (and b!627874 res!405761) b!627877))

(assert (= (and b!627877 res!405757) b!627879))

(assert (= (and b!627879 res!405758) b!627880))

(declare-fun m!603183 () Bool)

(assert (=> b!627883 m!603183))

(declare-fun m!603185 () Bool)

(assert (=> b!627878 m!603185))

(declare-fun m!603187 () Bool)

(assert (=> b!627874 m!603187))

(declare-fun m!603189 () Bool)

(assert (=> b!627874 m!603189))

(declare-fun m!603191 () Bool)

(assert (=> b!627874 m!603191))

(declare-fun m!603193 () Bool)

(assert (=> start!56674 m!603193))

(declare-fun m!603195 () Bool)

(assert (=> start!56674 m!603195))

(declare-fun m!603197 () Bool)

(assert (=> b!627876 m!603197))

(declare-fun m!603199 () Bool)

(assert (=> b!627881 m!603199))

(declare-fun m!603201 () Bool)

(assert (=> b!627875 m!603201))

(declare-fun m!603203 () Bool)

(assert (=> b!627880 m!603203))

(declare-fun m!603205 () Bool)

(assert (=> b!627882 m!603205))

(assert (=> b!627882 m!603205))

(declare-fun m!603207 () Bool)

(assert (=> b!627882 m!603207))

(assert (=> b!627877 m!603205))

(assert (=> b!627877 m!603205))

(declare-fun m!603209 () Bool)

(assert (=> b!627877 m!603209))

(declare-fun m!603211 () Bool)

(assert (=> b!627879 m!603211))

(assert (=> b!627879 m!603205))

(push 1)

(assert (not b!627878))

(assert (not b!627876))

(assert (not b!627883))

