; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53766 () Bool)

(assert start!53766)

(declare-fun res!374077 () Bool)

(declare-fun e!335120 () Bool)

(assert (=> start!53766 (=> (not res!374077) (not e!335120))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53766 (= res!374077 (validMask!0 mask!3053))))

(assert (=> start!53766 e!335120))

(assert (=> start!53766 true))

(declare-datatypes ((array!36621 0))(
  ( (array!36622 (arr!17581 (Array (_ BitVec 32) (_ BitVec 64))) (size!17945 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36621)

(declare-fun array_inv!13355 (array!36621) Bool)

(assert (=> start!53766 (array_inv!13355 a!2986)))

(declare-fun b!586111 () Bool)

(declare-fun e!335121 () Bool)

(assert (=> b!586111 (= e!335120 e!335121)))

(declare-fun res!374087 () Bool)

(assert (=> b!586111 (=> (not res!374087) (not e!335121))))

(declare-datatypes ((SeekEntryResult!6028 0))(
  ( (MissingZero!6028 (index!26339 (_ BitVec 32))) (Found!6028 (index!26340 (_ BitVec 32))) (Intermediate!6028 (undefined!6840 Bool) (index!26341 (_ BitVec 32)) (x!55180 (_ BitVec 32))) (Undefined!6028) (MissingVacant!6028 (index!26342 (_ BitVec 32))) )
))
(declare-fun lt!266019 () SeekEntryResult!6028)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!586111 (= res!374087 (or (= lt!266019 (MissingZero!6028 i!1108)) (= lt!266019 (MissingVacant!6028 i!1108))))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36621 (_ BitVec 32)) SeekEntryResult!6028)

(assert (=> b!586111 (= lt!266019 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!586112 () Bool)

(declare-fun res!374083 () Bool)

(assert (=> b!586112 (=> (not res!374083) (not e!335121))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36621 (_ BitVec 32)) SeekEntryResult!6028)

(assert (=> b!586112 (= res!374083 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17581 a!2986) j!136) a!2986 mask!3053) (Found!6028 j!136)))))

(declare-fun b!586113 () Bool)

(declare-fun res!374086 () Bool)

(assert (=> b!586113 (=> (not res!374086) (not e!335120))))

(assert (=> b!586113 (= res!374086 (and (= (size!17945 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17945 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17945 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!586114 () Bool)

(declare-fun res!374081 () Bool)

(assert (=> b!586114 (=> (not res!374081) (not e!335121))))

(declare-datatypes ((List!11675 0))(
  ( (Nil!11672) (Cons!11671 (h!12716 (_ BitVec 64)) (t!17911 List!11675)) )
))
(declare-fun arrayNoDuplicates!0 (array!36621 (_ BitVec 32) List!11675) Bool)

(assert (=> b!586114 (= res!374081 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11672))))

(declare-fun b!586115 () Bool)

(declare-fun res!374078 () Bool)

(assert (=> b!586115 (=> (not res!374078) (not e!335121))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36621 (_ BitVec 32)) Bool)

(assert (=> b!586115 (= res!374078 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!586116 () Bool)

(declare-fun res!374082 () Bool)

(assert (=> b!586116 (=> (not res!374082) (not e!335120))))

(declare-fun arrayContainsKey!0 (array!36621 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!586116 (= res!374082 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!586117 () Bool)

(declare-fun res!374084 () Bool)

(assert (=> b!586117 (=> (not res!374084) (not e!335120))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!586117 (= res!374084 (validKeyInArray!0 (select (arr!17581 a!2986) j!136)))))

(declare-fun b!586118 () Bool)

(declare-fun res!374080 () Bool)

(assert (=> b!586118 (=> (not res!374080) (not e!335121))))

(assert (=> b!586118 (= res!374080 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17581 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17581 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!586119 () Bool)

(assert (=> b!586119 (= e!335121 (not true))))

(declare-fun lt!266021 () (_ BitVec 32))

(assert (=> b!586119 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266021 vacantSpotIndex!68 (select (arr!17581 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266021 vacantSpotIndex!68 (select (store (arr!17581 a!2986) i!1108 k0!1786) j!136) (array!36622 (store (arr!17581 a!2986) i!1108 k0!1786) (size!17945 a!2986)) mask!3053))))

(declare-datatypes ((Unit!18180 0))(
  ( (Unit!18181) )
))
(declare-fun lt!266020 () Unit!18180)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36621 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18180)

(assert (=> b!586119 (= lt!266020 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!266021 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!586119 (= lt!266021 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!586120 () Bool)

(declare-fun res!374085 () Bool)

(assert (=> b!586120 (=> (not res!374085) (not e!335121))))

(assert (=> b!586120 (= res!374085 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17581 a!2986) index!984) (select (arr!17581 a!2986) j!136))) (not (= (select (arr!17581 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!586121 () Bool)

(declare-fun res!374079 () Bool)

(assert (=> b!586121 (=> (not res!374079) (not e!335120))))

(assert (=> b!586121 (= res!374079 (validKeyInArray!0 k0!1786))))

(assert (= (and start!53766 res!374077) b!586113))

(assert (= (and b!586113 res!374086) b!586117))

(assert (= (and b!586117 res!374084) b!586121))

(assert (= (and b!586121 res!374079) b!586116))

(assert (= (and b!586116 res!374082) b!586111))

(assert (= (and b!586111 res!374087) b!586115))

(assert (= (and b!586115 res!374078) b!586114))

(assert (= (and b!586114 res!374081) b!586118))

(assert (= (and b!586118 res!374080) b!586112))

(assert (= (and b!586112 res!374083) b!586120))

(assert (= (and b!586120 res!374085) b!586119))

(declare-fun m!564501 () Bool)

(assert (=> b!586117 m!564501))

(assert (=> b!586117 m!564501))

(declare-fun m!564503 () Bool)

(assert (=> b!586117 m!564503))

(declare-fun m!564505 () Bool)

(assert (=> b!586118 m!564505))

(declare-fun m!564507 () Bool)

(assert (=> b!586118 m!564507))

(declare-fun m!564509 () Bool)

(assert (=> b!586118 m!564509))

(declare-fun m!564511 () Bool)

(assert (=> start!53766 m!564511))

(declare-fun m!564513 () Bool)

(assert (=> start!53766 m!564513))

(assert (=> b!586112 m!564501))

(assert (=> b!586112 m!564501))

(declare-fun m!564515 () Bool)

(assert (=> b!586112 m!564515))

(declare-fun m!564517 () Bool)

(assert (=> b!586120 m!564517))

(assert (=> b!586120 m!564501))

(declare-fun m!564519 () Bool)

(assert (=> b!586111 m!564519))

(declare-fun m!564521 () Bool)

(assert (=> b!586116 m!564521))

(declare-fun m!564523 () Bool)

(assert (=> b!586115 m!564523))

(declare-fun m!564525 () Bool)

(assert (=> b!586114 m!564525))

(declare-fun m!564527 () Bool)

(assert (=> b!586121 m!564527))

(declare-fun m!564529 () Bool)

(assert (=> b!586119 m!564529))

(declare-fun m!564531 () Bool)

(assert (=> b!586119 m!564531))

(assert (=> b!586119 m!564531))

(declare-fun m!564533 () Bool)

(assert (=> b!586119 m!564533))

(assert (=> b!586119 m!564501))

(assert (=> b!586119 m!564507))

(declare-fun m!564535 () Bool)

(assert (=> b!586119 m!564535))

(assert (=> b!586119 m!564501))

(declare-fun m!564537 () Bool)

(assert (=> b!586119 m!564537))

(check-sat (not b!586121) (not b!586115) (not b!586119) (not start!53766) (not b!586117) (not b!586114) (not b!586116) (not b!586111) (not b!586112))
(check-sat)
