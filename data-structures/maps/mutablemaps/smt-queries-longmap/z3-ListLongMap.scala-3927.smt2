; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53592 () Bool)

(assert start!53592)

(declare-fun b!583109 () Bool)

(declare-fun e!334166 () Bool)

(declare-fun e!334168 () Bool)

(assert (=> b!583109 (= e!334166 e!334168)))

(declare-fun res!371081 () Bool)

(assert (=> b!583109 (=> (not res!371081) (not e!334168))))

(declare-datatypes ((SeekEntryResult!5941 0))(
  ( (MissingZero!5941 (index!25991 (_ BitVec 32))) (Found!5941 (index!25992 (_ BitVec 32))) (Intermediate!5941 (undefined!6753 Bool) (index!25993 (_ BitVec 32)) (x!54861 (_ BitVec 32))) (Undefined!5941) (MissingVacant!5941 (index!25994 (_ BitVec 32))) )
))
(declare-fun lt!265262 () SeekEntryResult!5941)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!583109 (= res!371081 (or (= lt!265262 (MissingZero!5941 i!1108)) (= lt!265262 (MissingVacant!5941 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-datatypes ((array!36447 0))(
  ( (array!36448 (arr!17494 (Array (_ BitVec 32) (_ BitVec 64))) (size!17858 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36447)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36447 (_ BitVec 32)) SeekEntryResult!5941)

(assert (=> b!583109 (= lt!265262 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun b!583110 () Bool)

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!583110 (= e!334168 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17494 a!2986) index!984) (select (arr!17494 a!2986) j!136))) (not (= (select (arr!17494 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136)) (bvslt mask!3053 #b00000000000000000000000000000000)))))

(declare-fun b!583111 () Bool)

(declare-fun res!371077 () Bool)

(assert (=> b!583111 (=> (not res!371077) (not e!334168))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!583111 (= res!371077 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17494 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17494 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!583112 () Bool)

(declare-fun res!371076 () Bool)

(assert (=> b!583112 (=> (not res!371076) (not e!334168))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36447 (_ BitVec 32)) SeekEntryResult!5941)

(assert (=> b!583112 (= res!371076 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17494 a!2986) j!136) a!2986 mask!3053) (Found!5941 j!136)))))

(declare-fun b!583113 () Bool)

(declare-fun res!371080 () Bool)

(assert (=> b!583113 (=> (not res!371080) (not e!334168))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36447 (_ BitVec 32)) Bool)

(assert (=> b!583113 (= res!371080 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!583114 () Bool)

(declare-fun res!371079 () Bool)

(assert (=> b!583114 (=> (not res!371079) (not e!334166))))

(assert (=> b!583114 (= res!371079 (and (= (size!17858 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17858 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17858 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!583115 () Bool)

(declare-fun res!371083 () Bool)

(assert (=> b!583115 (=> (not res!371083) (not e!334166))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!583115 (= res!371083 (validKeyInArray!0 (select (arr!17494 a!2986) j!136)))))

(declare-fun b!583117 () Bool)

(declare-fun res!371082 () Bool)

(assert (=> b!583117 (=> (not res!371082) (not e!334166))))

(declare-fun arrayContainsKey!0 (array!36447 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!583117 (= res!371082 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!583118 () Bool)

(declare-fun res!371078 () Bool)

(assert (=> b!583118 (=> (not res!371078) (not e!334166))))

(assert (=> b!583118 (= res!371078 (validKeyInArray!0 k0!1786))))

(declare-fun b!583116 () Bool)

(declare-fun res!371084 () Bool)

(assert (=> b!583116 (=> (not res!371084) (not e!334168))))

(declare-datatypes ((List!11588 0))(
  ( (Nil!11585) (Cons!11584 (h!12629 (_ BitVec 64)) (t!17824 List!11588)) )
))
(declare-fun arrayNoDuplicates!0 (array!36447 (_ BitVec 32) List!11588) Bool)

(assert (=> b!583116 (= res!371084 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11585))))

(declare-fun res!371075 () Bool)

(assert (=> start!53592 (=> (not res!371075) (not e!334166))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53592 (= res!371075 (validMask!0 mask!3053))))

(assert (=> start!53592 e!334166))

(assert (=> start!53592 true))

(declare-fun array_inv!13268 (array!36447) Bool)

(assert (=> start!53592 (array_inv!13268 a!2986)))

(assert (= (and start!53592 res!371075) b!583114))

(assert (= (and b!583114 res!371079) b!583115))

(assert (= (and b!583115 res!371083) b!583118))

(assert (= (and b!583118 res!371078) b!583117))

(assert (= (and b!583117 res!371082) b!583109))

(assert (= (and b!583109 res!371081) b!583113))

(assert (= (and b!583113 res!371080) b!583116))

(assert (= (and b!583116 res!371084) b!583111))

(assert (= (and b!583111 res!371077) b!583112))

(assert (= (and b!583112 res!371076) b!583110))

(declare-fun m!561629 () Bool)

(assert (=> b!583115 m!561629))

(assert (=> b!583115 m!561629))

(declare-fun m!561631 () Bool)

(assert (=> b!583115 m!561631))

(declare-fun m!561633 () Bool)

(assert (=> b!583109 m!561633))

(declare-fun m!561635 () Bool)

(assert (=> start!53592 m!561635))

(declare-fun m!561637 () Bool)

(assert (=> start!53592 m!561637))

(declare-fun m!561639 () Bool)

(assert (=> b!583110 m!561639))

(assert (=> b!583110 m!561629))

(declare-fun m!561641 () Bool)

(assert (=> b!583111 m!561641))

(declare-fun m!561643 () Bool)

(assert (=> b!583111 m!561643))

(declare-fun m!561645 () Bool)

(assert (=> b!583111 m!561645))

(assert (=> b!583112 m!561629))

(assert (=> b!583112 m!561629))

(declare-fun m!561647 () Bool)

(assert (=> b!583112 m!561647))

(declare-fun m!561649 () Bool)

(assert (=> b!583116 m!561649))

(declare-fun m!561651 () Bool)

(assert (=> b!583117 m!561651))

(declare-fun m!561653 () Bool)

(assert (=> b!583118 m!561653))

(declare-fun m!561655 () Bool)

(assert (=> b!583113 m!561655))

(check-sat (not start!53592) (not b!583117) (not b!583113) (not b!583118) (not b!583115) (not b!583109) (not b!583112) (not b!583116))
(check-sat)
