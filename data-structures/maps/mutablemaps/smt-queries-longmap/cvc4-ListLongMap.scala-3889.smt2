; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53366 () Bool)

(assert start!53366)

(declare-fun b!580017 () Bool)

(declare-fun res!367989 () Bool)

(declare-fun e!333150 () Bool)

(assert (=> b!580017 (=> (not res!367989) (not e!333150))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!36221 0))(
  ( (array!36222 (arr!17381 (Array (_ BitVec 32) (_ BitVec 64))) (size!17745 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36221)

(assert (=> b!580017 (= res!367989 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17381 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17381 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!580018 () Bool)

(declare-fun res!367988 () Bool)

(assert (=> b!580018 (=> (not res!367988) (not e!333150))))

(declare-datatypes ((List!11475 0))(
  ( (Nil!11472) (Cons!11471 (h!12516 (_ BitVec 64)) (t!17711 List!11475)) )
))
(declare-fun arrayNoDuplicates!0 (array!36221 (_ BitVec 32) List!11475) Bool)

(assert (=> b!580018 (= res!367988 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11472))))

(declare-fun b!580019 () Bool)

(declare-fun res!367985 () Bool)

(assert (=> b!580019 (=> (not res!367985) (not e!333150))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36221 (_ BitVec 32)) Bool)

(assert (=> b!580019 (= res!367985 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!580020 () Bool)

(declare-fun res!367987 () Bool)

(declare-fun e!333149 () Bool)

(assert (=> b!580020 (=> (not res!367987) (not e!333149))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!580020 (= res!367987 (validKeyInArray!0 k!1786))))

(declare-fun b!580021 () Bool)

(assert (=> b!580021 (= e!333150 false)))

(declare-datatypes ((SeekEntryResult!5828 0))(
  ( (MissingZero!5828 (index!25539 (_ BitVec 32))) (Found!5828 (index!25540 (_ BitVec 32))) (Intermediate!5828 (undefined!6640 Bool) (index!25541 (_ BitVec 32)) (x!54444 (_ BitVec 32))) (Undefined!5828) (MissingVacant!5828 (index!25542 (_ BitVec 32))) )
))
(declare-fun lt!264616 () SeekEntryResult!5828)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36221 (_ BitVec 32)) SeekEntryResult!5828)

(assert (=> b!580021 (= lt!264616 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17381 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!580022 () Bool)

(declare-fun res!367991 () Bool)

(assert (=> b!580022 (=> (not res!367991) (not e!333149))))

(assert (=> b!580022 (= res!367991 (and (= (size!17745 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17745 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17745 a!2986)) (not (= i!1108 j!136))))))

(declare-fun res!367983 () Bool)

(assert (=> start!53366 (=> (not res!367983) (not e!333149))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53366 (= res!367983 (validMask!0 mask!3053))))

(assert (=> start!53366 e!333149))

(assert (=> start!53366 true))

(declare-fun array_inv!13155 (array!36221) Bool)

(assert (=> start!53366 (array_inv!13155 a!2986)))

(declare-fun b!580023 () Bool)

(assert (=> b!580023 (= e!333149 e!333150)))

(declare-fun res!367990 () Bool)

(assert (=> b!580023 (=> (not res!367990) (not e!333150))))

(declare-fun lt!264617 () SeekEntryResult!5828)

(assert (=> b!580023 (= res!367990 (or (= lt!264617 (MissingZero!5828 i!1108)) (= lt!264617 (MissingVacant!5828 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36221 (_ BitVec 32)) SeekEntryResult!5828)

(assert (=> b!580023 (= lt!264617 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!580024 () Bool)

(declare-fun res!367986 () Bool)

(assert (=> b!580024 (=> (not res!367986) (not e!333149))))

(assert (=> b!580024 (= res!367986 (validKeyInArray!0 (select (arr!17381 a!2986) j!136)))))

(declare-fun b!580025 () Bool)

(declare-fun res!367984 () Bool)

(assert (=> b!580025 (=> (not res!367984) (not e!333149))))

(declare-fun arrayContainsKey!0 (array!36221 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!580025 (= res!367984 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(assert (= (and start!53366 res!367983) b!580022))

(assert (= (and b!580022 res!367991) b!580024))

(assert (= (and b!580024 res!367986) b!580020))

(assert (= (and b!580020 res!367987) b!580025))

(assert (= (and b!580025 res!367984) b!580023))

(assert (= (and b!580023 res!367990) b!580019))

(assert (= (and b!580019 res!367985) b!580018))

(assert (= (and b!580018 res!367988) b!580017))

(assert (= (and b!580017 res!367989) b!580021))

(declare-fun m!558659 () Bool)

(assert (=> start!53366 m!558659))

(declare-fun m!558661 () Bool)

(assert (=> start!53366 m!558661))

(declare-fun m!558663 () Bool)

(assert (=> b!580019 m!558663))

(declare-fun m!558665 () Bool)

(assert (=> b!580025 m!558665))

(declare-fun m!558667 () Bool)

(assert (=> b!580020 m!558667))

(declare-fun m!558669 () Bool)

(assert (=> b!580017 m!558669))

(declare-fun m!558671 () Bool)

(assert (=> b!580017 m!558671))

(declare-fun m!558673 () Bool)

(assert (=> b!580017 m!558673))

(declare-fun m!558675 () Bool)

(assert (=> b!580018 m!558675))

(declare-fun m!558677 () Bool)

(assert (=> b!580021 m!558677))

(assert (=> b!580021 m!558677))

(declare-fun m!558679 () Bool)

(assert (=> b!580021 m!558679))

(assert (=> b!580024 m!558677))

(assert (=> b!580024 m!558677))

(declare-fun m!558681 () Bool)

(assert (=> b!580024 m!558681))

(declare-fun m!558683 () Bool)

(assert (=> b!580023 m!558683))

(push 1)

(assert (not b!580025))

