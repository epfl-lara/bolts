; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53752 () Bool)

(assert start!53752)

(declare-fun b!585880 () Bool)

(declare-fun res!373847 () Bool)

(declare-fun e!335059 () Bool)

(assert (=> b!585880 (=> (not res!373847) (not e!335059))))

(declare-datatypes ((array!36607 0))(
  ( (array!36608 (arr!17574 (Array (_ BitVec 32) (_ BitVec 64))) (size!17938 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36607)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36607 (_ BitVec 32)) Bool)

(assert (=> b!585880 (= res!373847 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!585881 () Bool)

(declare-fun res!373853 () Bool)

(declare-fun e!335057 () Bool)

(assert (=> b!585881 (=> (not res!373853) (not e!335057))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!585881 (= res!373853 (and (= (size!17938 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17938 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17938 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!585882 () Bool)

(declare-fun res!373856 () Bool)

(assert (=> b!585882 (=> (not res!373856) (not e!335057))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!585882 (= res!373856 (validKeyInArray!0 (select (arr!17574 a!2986) j!136)))))

(declare-fun b!585883 () Bool)

(declare-fun res!373849 () Bool)

(assert (=> b!585883 (=> (not res!373849) (not e!335059))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!585883 (= res!373849 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17574 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17574 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!585884 () Bool)

(assert (=> b!585884 (= e!335059 (not true))))

(declare-fun lt!265958 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6021 0))(
  ( (MissingZero!6021 (index!26311 (_ BitVec 32))) (Found!6021 (index!26312 (_ BitVec 32))) (Intermediate!6021 (undefined!6833 Bool) (index!26313 (_ BitVec 32)) (x!55157 (_ BitVec 32))) (Undefined!6021) (MissingVacant!6021 (index!26314 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36607 (_ BitVec 32)) SeekEntryResult!6021)

(assert (=> b!585884 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!265958 vacantSpotIndex!68 (select (arr!17574 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!265958 vacantSpotIndex!68 (select (store (arr!17574 a!2986) i!1108 k!1786) j!136) (array!36608 (store (arr!17574 a!2986) i!1108 k!1786) (size!17938 a!2986)) mask!3053))))

(declare-datatypes ((Unit!18166 0))(
  ( (Unit!18167) )
))
(declare-fun lt!265956 () Unit!18166)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36607 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18166)

(assert (=> b!585884 (= lt!265956 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!265958 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!585884 (= lt!265958 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!585885 () Bool)

(declare-fun res!373848 () Bool)

(assert (=> b!585885 (=> (not res!373848) (not e!335057))))

(assert (=> b!585885 (= res!373848 (validKeyInArray!0 k!1786))))

(declare-fun b!585886 () Bool)

(declare-fun res!373852 () Bool)

(assert (=> b!585886 (=> (not res!373852) (not e!335057))))

(declare-fun arrayContainsKey!0 (array!36607 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!585886 (= res!373852 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun res!373851 () Bool)

(assert (=> start!53752 (=> (not res!373851) (not e!335057))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53752 (= res!373851 (validMask!0 mask!3053))))

(assert (=> start!53752 e!335057))

(assert (=> start!53752 true))

(declare-fun array_inv!13348 (array!36607) Bool)

(assert (=> start!53752 (array_inv!13348 a!2986)))

(declare-fun b!585887 () Bool)

(declare-fun res!373850 () Bool)

(assert (=> b!585887 (=> (not res!373850) (not e!335059))))

(assert (=> b!585887 (= res!373850 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17574 a!2986) index!984) (select (arr!17574 a!2986) j!136))) (not (= (select (arr!17574 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!585888 () Bool)

(declare-fun res!373854 () Bool)

(assert (=> b!585888 (=> (not res!373854) (not e!335059))))

(declare-datatypes ((List!11668 0))(
  ( (Nil!11665) (Cons!11664 (h!12709 (_ BitVec 64)) (t!17904 List!11668)) )
))
(declare-fun arrayNoDuplicates!0 (array!36607 (_ BitVec 32) List!11668) Bool)

(assert (=> b!585888 (= res!373854 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11665))))

(declare-fun b!585889 () Bool)

(declare-fun res!373846 () Bool)

(assert (=> b!585889 (=> (not res!373846) (not e!335059))))

(assert (=> b!585889 (= res!373846 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17574 a!2986) j!136) a!2986 mask!3053) (Found!6021 j!136)))))

(declare-fun b!585890 () Bool)

(assert (=> b!585890 (= e!335057 e!335059)))

(declare-fun res!373855 () Bool)

(assert (=> b!585890 (=> (not res!373855) (not e!335059))))

(declare-fun lt!265957 () SeekEntryResult!6021)

(assert (=> b!585890 (= res!373855 (or (= lt!265957 (MissingZero!6021 i!1108)) (= lt!265957 (MissingVacant!6021 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36607 (_ BitVec 32)) SeekEntryResult!6021)

(assert (=> b!585890 (= lt!265957 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(assert (= (and start!53752 res!373851) b!585881))

(assert (= (and b!585881 res!373853) b!585882))

(assert (= (and b!585882 res!373856) b!585885))

(assert (= (and b!585885 res!373848) b!585886))

(assert (= (and b!585886 res!373852) b!585890))

(assert (= (and b!585890 res!373855) b!585880))

(assert (= (and b!585880 res!373847) b!585888))

(assert (= (and b!585888 res!373854) b!585883))

(assert (= (and b!585883 res!373849) b!585889))

(assert (= (and b!585889 res!373846) b!585887))

(assert (= (and b!585887 res!373850) b!585884))

(declare-fun m!564235 () Bool)

(assert (=> b!585882 m!564235))

(assert (=> b!585882 m!564235))

(declare-fun m!564237 () Bool)

(assert (=> b!585882 m!564237))

(declare-fun m!564239 () Bool)

(assert (=> start!53752 m!564239))

(declare-fun m!564241 () Bool)

(assert (=> start!53752 m!564241))

(assert (=> b!585889 m!564235))

(assert (=> b!585889 m!564235))

(declare-fun m!564243 () Bool)

(assert (=> b!585889 m!564243))

(declare-fun m!564245 () Bool)

(assert (=> b!585885 m!564245))

(declare-fun m!564247 () Bool)

(assert (=> b!585887 m!564247))

(assert (=> b!585887 m!564235))

(declare-fun m!564249 () Bool)

(assert (=> b!585890 m!564249))

(declare-fun m!564251 () Bool)

(assert (=> b!585888 m!564251))

(declare-fun m!564253 () Bool)

(assert (=> b!585880 m!564253))

(declare-fun m!564255 () Bool)

(assert (=> b!585886 m!564255))

(declare-fun m!564257 () Bool)

(assert (=> b!585884 m!564257))

(declare-fun m!564259 () Bool)

(assert (=> b!585884 m!564259))

(assert (=> b!585884 m!564235))

(assert (=> b!585884 m!564259))

(declare-fun m!564261 () Bool)

(assert (=> b!585884 m!564261))

(declare-fun m!564263 () Bool)

(assert (=> b!585884 m!564263))

(declare-fun m!564265 () Bool)

(assert (=> b!585884 m!564265))

(assert (=> b!585884 m!564235))

(declare-fun m!564267 () Bool)

(assert (=> b!585884 m!564267))

(declare-fun m!564269 () Bool)

(assert (=> b!585883 m!564269))

(assert (=> b!585883 m!564263))

(declare-fun m!564271 () Bool)

(assert (=> b!585883 m!564271))

(push 1)

