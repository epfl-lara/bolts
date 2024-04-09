; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53356 () Bool)

(assert start!53356)

(declare-fun b!579882 () Bool)

(declare-fun res!367849 () Bool)

(declare-fun e!333104 () Bool)

(assert (=> b!579882 (=> (not res!367849) (not e!333104))))

(declare-datatypes ((array!36211 0))(
  ( (array!36212 (arr!17376 (Array (_ BitVec 32) (_ BitVec 64))) (size!17740 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36211)

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!36211 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!579882 (= res!367849 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!579884 () Bool)

(declare-fun res!367856 () Bool)

(assert (=> b!579884 (=> (not res!367856) (not e!333104))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!579884 (= res!367856 (and (= (size!17740 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17740 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17740 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!579885 () Bool)

(declare-fun e!333106 () Bool)

(assert (=> b!579885 (= e!333106 false)))

(declare-datatypes ((SeekEntryResult!5823 0))(
  ( (MissingZero!5823 (index!25519 (_ BitVec 32))) (Found!5823 (index!25520 (_ BitVec 32))) (Intermediate!5823 (undefined!6635 Bool) (index!25521 (_ BitVec 32)) (x!54431 (_ BitVec 32))) (Undefined!5823) (MissingVacant!5823 (index!25522 (_ BitVec 32))) )
))
(declare-fun lt!264586 () SeekEntryResult!5823)

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36211 (_ BitVec 32)) SeekEntryResult!5823)

(assert (=> b!579885 (= lt!264586 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17376 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!579886 () Bool)

(assert (=> b!579886 (= e!333104 e!333106)))

(declare-fun res!367855 () Bool)

(assert (=> b!579886 (=> (not res!367855) (not e!333106))))

(declare-fun lt!264587 () SeekEntryResult!5823)

(assert (=> b!579886 (= res!367855 (or (= lt!264587 (MissingZero!5823 i!1108)) (= lt!264587 (MissingVacant!5823 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36211 (_ BitVec 32)) SeekEntryResult!5823)

(assert (=> b!579886 (= lt!264587 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!579887 () Bool)

(declare-fun res!367848 () Bool)

(assert (=> b!579887 (=> (not res!367848) (not e!333104))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!579887 (= res!367848 (validKeyInArray!0 (select (arr!17376 a!2986) j!136)))))

(declare-fun b!579888 () Bool)

(declare-fun res!367853 () Bool)

(assert (=> b!579888 (=> (not res!367853) (not e!333106))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36211 (_ BitVec 32)) Bool)

(assert (=> b!579888 (= res!367853 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!579889 () Bool)

(declare-fun res!367852 () Bool)

(assert (=> b!579889 (=> (not res!367852) (not e!333106))))

(declare-datatypes ((List!11470 0))(
  ( (Nil!11467) (Cons!11466 (h!12511 (_ BitVec 64)) (t!17706 List!11470)) )
))
(declare-fun arrayNoDuplicates!0 (array!36211 (_ BitVec 32) List!11470) Bool)

(assert (=> b!579889 (= res!367852 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11467))))

(declare-fun b!579890 () Bool)

(declare-fun res!367851 () Bool)

(assert (=> b!579890 (=> (not res!367851) (not e!333104))))

(assert (=> b!579890 (= res!367851 (validKeyInArray!0 k!1786))))

(declare-fun b!579883 () Bool)

(declare-fun res!367854 () Bool)

(assert (=> b!579883 (=> (not res!367854) (not e!333106))))

(assert (=> b!579883 (= res!367854 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17376 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17376 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!367850 () Bool)

(assert (=> start!53356 (=> (not res!367850) (not e!333104))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53356 (= res!367850 (validMask!0 mask!3053))))

(assert (=> start!53356 e!333104))

(assert (=> start!53356 true))

(declare-fun array_inv!13150 (array!36211) Bool)

(assert (=> start!53356 (array_inv!13150 a!2986)))

(assert (= (and start!53356 res!367850) b!579884))

(assert (= (and b!579884 res!367856) b!579887))

(assert (= (and b!579887 res!367848) b!579890))

(assert (= (and b!579890 res!367851) b!579882))

(assert (= (and b!579882 res!367849) b!579886))

(assert (= (and b!579886 res!367855) b!579888))

(assert (= (and b!579888 res!367853) b!579889))

(assert (= (and b!579889 res!367852) b!579883))

(assert (= (and b!579883 res!367854) b!579885))

(declare-fun m!558529 () Bool)

(assert (=> b!579888 m!558529))

(declare-fun m!558531 () Bool)

(assert (=> start!53356 m!558531))

(declare-fun m!558533 () Bool)

(assert (=> start!53356 m!558533))

(declare-fun m!558535 () Bool)

(assert (=> b!579886 m!558535))

(declare-fun m!558537 () Bool)

(assert (=> b!579885 m!558537))

(assert (=> b!579885 m!558537))

(declare-fun m!558539 () Bool)

(assert (=> b!579885 m!558539))

(assert (=> b!579887 m!558537))

(assert (=> b!579887 m!558537))

(declare-fun m!558541 () Bool)

(assert (=> b!579887 m!558541))

(declare-fun m!558543 () Bool)

(assert (=> b!579883 m!558543))

(declare-fun m!558545 () Bool)

(assert (=> b!579883 m!558545))

(declare-fun m!558547 () Bool)

(assert (=> b!579883 m!558547))

(declare-fun m!558549 () Bool)

(assert (=> b!579889 m!558549))

(declare-fun m!558551 () Bool)

(assert (=> b!579882 m!558551))

(declare-fun m!558553 () Bool)

(assert (=> b!579890 m!558553))

(push 1)

