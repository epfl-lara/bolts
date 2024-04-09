; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53600 () Bool)

(assert start!53600)

(declare-fun b!583221 () Bool)

(declare-fun res!371194 () Bool)

(declare-fun e!334203 () Bool)

(assert (=> b!583221 (=> (not res!371194) (not e!334203))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((array!36455 0))(
  ( (array!36456 (arr!17498 (Array (_ BitVec 32) (_ BitVec 64))) (size!17862 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36455)

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!583221 (= res!371194 (and (= (size!17862 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17862 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17862 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!583222 () Bool)

(declare-fun res!371193 () Bool)

(declare-fun e!334202 () Bool)

(assert (=> b!583222 (=> (not res!371193) (not e!334202))))

(declare-datatypes ((List!11592 0))(
  ( (Nil!11589) (Cons!11588 (h!12633 (_ BitVec 64)) (t!17828 List!11592)) )
))
(declare-fun arrayNoDuplicates!0 (array!36455 (_ BitVec 32) List!11592) Bool)

(assert (=> b!583222 (= res!371193 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11589))))

(declare-fun b!583223 () Bool)

(declare-fun res!371189 () Bool)

(assert (=> b!583223 (=> (not res!371189) (not e!334202))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36455 (_ BitVec 32)) Bool)

(assert (=> b!583223 (= res!371189 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!583224 () Bool)

(declare-fun res!371188 () Bool)

(assert (=> b!583224 (=> (not res!371188) (not e!334203))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!583224 (= res!371188 (validKeyInArray!0 (select (arr!17498 a!2986) j!136)))))

(declare-fun b!583225 () Bool)

(declare-fun res!371191 () Bool)

(assert (=> b!583225 (=> (not res!371191) (not e!334202))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!583225 (= res!371191 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17498 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17498 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!371192 () Bool)

(assert (=> start!53600 (=> (not res!371192) (not e!334203))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53600 (= res!371192 (validMask!0 mask!3053))))

(assert (=> start!53600 e!334203))

(assert (=> start!53600 true))

(declare-fun array_inv!13272 (array!36455) Bool)

(assert (=> start!53600 (array_inv!13272 a!2986)))

(declare-fun b!583226 () Bool)

(assert (=> b!583226 (= e!334202 false)))

(declare-datatypes ((SeekEntryResult!5945 0))(
  ( (MissingZero!5945 (index!26007 (_ BitVec 32))) (Found!5945 (index!26008 (_ BitVec 32))) (Intermediate!5945 (undefined!6757 Bool) (index!26009 (_ BitVec 32)) (x!54873 (_ BitVec 32))) (Undefined!5945) (MissingVacant!5945 (index!26010 (_ BitVec 32))) )
))
(declare-fun lt!265283 () SeekEntryResult!5945)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36455 (_ BitVec 32)) SeekEntryResult!5945)

(assert (=> b!583226 (= lt!265283 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17498 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!583227 () Bool)

(declare-fun res!371187 () Bool)

(assert (=> b!583227 (=> (not res!371187) (not e!334203))))

(declare-fun arrayContainsKey!0 (array!36455 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!583227 (= res!371187 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!583228 () Bool)

(assert (=> b!583228 (= e!334203 e!334202)))

(declare-fun res!371190 () Bool)

(assert (=> b!583228 (=> (not res!371190) (not e!334202))))

(declare-fun lt!265282 () SeekEntryResult!5945)

(assert (=> b!583228 (= res!371190 (or (= lt!265282 (MissingZero!5945 i!1108)) (= lt!265282 (MissingVacant!5945 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36455 (_ BitVec 32)) SeekEntryResult!5945)

(assert (=> b!583228 (= lt!265282 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!583229 () Bool)

(declare-fun res!371195 () Bool)

(assert (=> b!583229 (=> (not res!371195) (not e!334203))))

(assert (=> b!583229 (= res!371195 (validKeyInArray!0 k!1786))))

(assert (= (and start!53600 res!371192) b!583221))

(assert (= (and b!583221 res!371194) b!583224))

(assert (= (and b!583224 res!371188) b!583229))

(assert (= (and b!583229 res!371195) b!583227))

(assert (= (and b!583227 res!371187) b!583228))

(assert (= (and b!583228 res!371190) b!583223))

(assert (= (and b!583223 res!371189) b!583222))

(assert (= (and b!583222 res!371193) b!583225))

(assert (= (and b!583225 res!371191) b!583226))

(declare-fun m!561737 () Bool)

(assert (=> b!583226 m!561737))

(assert (=> b!583226 m!561737))

(declare-fun m!561739 () Bool)

(assert (=> b!583226 m!561739))

(declare-fun m!561741 () Bool)

(assert (=> start!53600 m!561741))

(declare-fun m!561743 () Bool)

(assert (=> start!53600 m!561743))

(declare-fun m!561745 () Bool)

(assert (=> b!583225 m!561745))

(declare-fun m!561747 () Bool)

(assert (=> b!583225 m!561747))

(declare-fun m!561749 () Bool)

(assert (=> b!583225 m!561749))

(assert (=> b!583224 m!561737))

(assert (=> b!583224 m!561737))

(declare-fun m!561751 () Bool)

(assert (=> b!583224 m!561751))

(declare-fun m!561753 () Bool)

(assert (=> b!583223 m!561753))

(declare-fun m!561755 () Bool)

(assert (=> b!583229 m!561755))

(declare-fun m!561757 () Bool)

(assert (=> b!583228 m!561757))

(declare-fun m!561759 () Bool)

(assert (=> b!583227 m!561759))

(declare-fun m!561761 () Bool)

(assert (=> b!583222 m!561761))

(push 1)

(assert (not b!583223))

(assert (not start!53600))

(assert (not b!583228))

(assert (not b!583227))

