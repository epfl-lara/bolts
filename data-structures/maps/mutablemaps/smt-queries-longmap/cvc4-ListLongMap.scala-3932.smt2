; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53624 () Bool)

(assert start!53624)

(declare-fun b!583623 () Bool)

(declare-fun res!371595 () Bool)

(declare-fun e!334339 () Bool)

(assert (=> b!583623 (=> (not res!371595) (not e!334339))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((array!36479 0))(
  ( (array!36480 (arr!17510 (Array (_ BitVec 32) (_ BitVec 64))) (size!17874 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36479)

(assert (=> b!583623 (= res!371595 (and (= (size!17874 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17874 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17874 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!583624 () Bool)

(declare-fun res!371593 () Bool)

(declare-fun e!334338 () Bool)

(assert (=> b!583624 (=> (not res!371593) (not e!334338))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!583624 (= res!371593 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17510 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17510 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!583625 () Bool)

(declare-fun res!371596 () Bool)

(assert (=> b!583625 (=> (not res!371596) (not e!334338))))

(declare-datatypes ((List!11604 0))(
  ( (Nil!11601) (Cons!11600 (h!12645 (_ BitVec 64)) (t!17840 List!11604)) )
))
(declare-fun arrayNoDuplicates!0 (array!36479 (_ BitVec 32) List!11604) Bool)

(assert (=> b!583625 (= res!371596 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11601))))

(declare-fun b!583626 () Bool)

(assert (=> b!583626 (= e!334339 e!334338)))

(declare-fun res!371591 () Bool)

(assert (=> b!583626 (=> (not res!371591) (not e!334338))))

(declare-datatypes ((SeekEntryResult!5957 0))(
  ( (MissingZero!5957 (index!26055 (_ BitVec 32))) (Found!5957 (index!26056 (_ BitVec 32))) (Intermediate!5957 (undefined!6769 Bool) (index!26057 (_ BitVec 32)) (x!54917 (_ BitVec 32))) (Undefined!5957) (MissingVacant!5957 (index!26058 (_ BitVec 32))) )
))
(declare-fun lt!265381 () SeekEntryResult!5957)

(assert (=> b!583626 (= res!371591 (or (= lt!265381 (MissingZero!5957 i!1108)) (= lt!265381 (MissingVacant!5957 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36479 (_ BitVec 32)) SeekEntryResult!5957)

(assert (=> b!583626 (= lt!265381 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!583627 () Bool)

(declare-fun res!371594 () Bool)

(assert (=> b!583627 (=> (not res!371594) (not e!334338))))

(assert (=> b!583627 (= res!371594 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17510 a!2986) index!984) (select (arr!17510 a!2986) j!136))) (not (= (select (arr!17510 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!583628 () Bool)

(declare-fun res!371598 () Bool)

(assert (=> b!583628 (=> (not res!371598) (not e!334339))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!583628 (= res!371598 (validKeyInArray!0 k!1786))))

(declare-fun b!583629 () Bool)

(declare-fun res!371597 () Bool)

(assert (=> b!583629 (=> (not res!371597) (not e!334338))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36479 (_ BitVec 32)) Bool)

(assert (=> b!583629 (= res!371597 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!583630 () Bool)

(declare-fun res!371590 () Bool)

(assert (=> b!583630 (=> (not res!371590) (not e!334338))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36479 (_ BitVec 32)) SeekEntryResult!5957)

(assert (=> b!583630 (= res!371590 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17510 a!2986) j!136) a!2986 mask!3053) (Found!5957 j!136)))))

(declare-fun b!583631 () Bool)

(declare-fun res!371592 () Bool)

(assert (=> b!583631 (=> (not res!371592) (not e!334339))))

(assert (=> b!583631 (= res!371592 (validKeyInArray!0 (select (arr!17510 a!2986) j!136)))))

(declare-fun b!583632 () Bool)

(declare-fun e!334336 () Bool)

(assert (=> b!583632 (= e!334336 false)))

(declare-fun lt!265380 () (_ BitVec 32))

(declare-fun lt!265382 () SeekEntryResult!5957)

(assert (=> b!583632 (= lt!265382 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!265380 vacantSpotIndex!68 (select (arr!17510 a!2986) j!136) a!2986 mask!3053))))

(declare-fun res!371599 () Bool)

(assert (=> start!53624 (=> (not res!371599) (not e!334339))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53624 (= res!371599 (validMask!0 mask!3053))))

(assert (=> start!53624 e!334339))

(assert (=> start!53624 true))

(declare-fun array_inv!13284 (array!36479) Bool)

(assert (=> start!53624 (array_inv!13284 a!2986)))

(declare-fun b!583633 () Bool)

(assert (=> b!583633 (= e!334338 e!334336)))

(declare-fun res!371589 () Bool)

(assert (=> b!583633 (=> (not res!371589) (not e!334336))))

(assert (=> b!583633 (= res!371589 (and (bvsge lt!265380 #b00000000000000000000000000000000) (bvslt lt!265380 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b00000000000000000000000000000000)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!583633 (= lt!265380 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!583634 () Bool)

(declare-fun res!371600 () Bool)

(assert (=> b!583634 (=> (not res!371600) (not e!334339))))

(declare-fun arrayContainsKey!0 (array!36479 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!583634 (= res!371600 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(assert (= (and start!53624 res!371599) b!583623))

(assert (= (and b!583623 res!371595) b!583631))

(assert (= (and b!583631 res!371592) b!583628))

(assert (= (and b!583628 res!371598) b!583634))

(assert (= (and b!583634 res!371600) b!583626))

(assert (= (and b!583626 res!371591) b!583629))

(assert (= (and b!583629 res!371597) b!583625))

(assert (= (and b!583625 res!371596) b!583624))

(assert (= (and b!583624 res!371593) b!583630))

(assert (= (and b!583630 res!371590) b!583627))

(assert (= (and b!583627 res!371594) b!583633))

(assert (= (and b!583633 res!371589) b!583632))

(declare-fun m!562097 () Bool)

(assert (=> b!583634 m!562097))

(declare-fun m!562099 () Bool)

(assert (=> b!583625 m!562099))

(declare-fun m!562101 () Bool)

(assert (=> b!583627 m!562101))

(declare-fun m!562103 () Bool)

(assert (=> b!583627 m!562103))

(declare-fun m!562105 () Bool)

(assert (=> b!583624 m!562105))

(declare-fun m!562107 () Bool)

(assert (=> b!583624 m!562107))

(declare-fun m!562109 () Bool)

(assert (=> b!583624 m!562109))

(declare-fun m!562111 () Bool)

(assert (=> b!583633 m!562111))

(declare-fun m!562113 () Bool)

(assert (=> b!583626 m!562113))

(assert (=> b!583631 m!562103))

(assert (=> b!583631 m!562103))

(declare-fun m!562115 () Bool)

(assert (=> b!583631 m!562115))

(assert (=> b!583632 m!562103))

(assert (=> b!583632 m!562103))

(declare-fun m!562117 () Bool)

(assert (=> b!583632 m!562117))

(declare-fun m!562119 () Bool)

(assert (=> start!53624 m!562119))

(declare-fun m!562121 () Bool)

(assert (=> start!53624 m!562121))

(declare-fun m!562123 () Bool)

(assert (=> b!583628 m!562123))

(assert (=> b!583630 m!562103))

(assert (=> b!583630 m!562103))

(declare-fun m!562125 () Bool)

(assert (=> b!583630 m!562125))

(declare-fun m!562127 () Bool)

(assert (=> b!583629 m!562127))

(push 1)

(assert (not b!583630))

(assert (not b!583628))

(assert (not b!583625))

