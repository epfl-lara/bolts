; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53404 () Bool)

(assert start!53404)

(declare-fun b!580539 () Bool)

(declare-fun res!368507 () Bool)

(declare-fun e!333320 () Bool)

(assert (=> b!580539 (=> (not res!368507) (not e!333320))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((array!36259 0))(
  ( (array!36260 (arr!17400 (Array (_ BitVec 32) (_ BitVec 64))) (size!17764 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36259)

(assert (=> b!580539 (= res!368507 (and (= (size!17764 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17764 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17764 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!580540 () Bool)

(declare-fun res!368510 () Bool)

(declare-fun e!333322 () Bool)

(assert (=> b!580540 (=> (not res!368510) (not e!333322))))

(declare-datatypes ((List!11494 0))(
  ( (Nil!11491) (Cons!11490 (h!12535 (_ BitVec 64)) (t!17730 List!11494)) )
))
(declare-fun arrayNoDuplicates!0 (array!36259 (_ BitVec 32) List!11494) Bool)

(assert (=> b!580540 (= res!368510 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11491))))

(declare-fun res!368508 () Bool)

(assert (=> start!53404 (=> (not res!368508) (not e!333320))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53404 (= res!368508 (validMask!0 mask!3053))))

(assert (=> start!53404 e!333320))

(assert (=> start!53404 true))

(declare-fun array_inv!13174 (array!36259) Bool)

(assert (=> start!53404 (array_inv!13174 a!2986)))

(declare-fun b!580541 () Bool)

(declare-fun res!368509 () Bool)

(assert (=> b!580541 (=> (not res!368509) (not e!333320))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!580541 (= res!368509 (validKeyInArray!0 (select (arr!17400 a!2986) j!136)))))

(declare-fun b!580542 () Bool)

(declare-fun res!368506 () Bool)

(assert (=> b!580542 (=> (not res!368506) (not e!333320))))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!580542 (= res!368506 (validKeyInArray!0 k!1786))))

(declare-fun b!580543 () Bool)

(assert (=> b!580543 (= e!333322 false)))

(declare-datatypes ((SeekEntryResult!5847 0))(
  ( (MissingZero!5847 (index!25615 (_ BitVec 32))) (Found!5847 (index!25616 (_ BitVec 32))) (Intermediate!5847 (undefined!6659 Bool) (index!25617 (_ BitVec 32)) (x!54519 (_ BitVec 32))) (Undefined!5847) (MissingVacant!5847 (index!25618 (_ BitVec 32))) )
))
(declare-fun lt!264721 () SeekEntryResult!5847)

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36259 (_ BitVec 32)) SeekEntryResult!5847)

(assert (=> b!580543 (= lt!264721 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17400 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!580544 () Bool)

(declare-fun res!368505 () Bool)

(assert (=> b!580544 (=> (not res!368505) (not e!333322))))

(assert (=> b!580544 (= res!368505 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17400 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17400 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!580545 () Bool)

(declare-fun res!368512 () Bool)

(assert (=> b!580545 (=> (not res!368512) (not e!333320))))

(declare-fun arrayContainsKey!0 (array!36259 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!580545 (= res!368512 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!580546 () Bool)

(assert (=> b!580546 (= e!333320 e!333322)))

(declare-fun res!368513 () Bool)

(assert (=> b!580546 (=> (not res!368513) (not e!333322))))

(declare-fun lt!264722 () SeekEntryResult!5847)

(assert (=> b!580546 (= res!368513 (or (= lt!264722 (MissingZero!5847 i!1108)) (= lt!264722 (MissingVacant!5847 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36259 (_ BitVec 32)) SeekEntryResult!5847)

(assert (=> b!580546 (= lt!264722 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!580547 () Bool)

(declare-fun res!368511 () Bool)

(assert (=> b!580547 (=> (not res!368511) (not e!333322))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36259 (_ BitVec 32)) Bool)

(assert (=> b!580547 (= res!368511 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(assert (= (and start!53404 res!368508) b!580539))

(assert (= (and b!580539 res!368507) b!580541))

(assert (= (and b!580541 res!368509) b!580542))

(assert (= (and b!580542 res!368506) b!580545))

(assert (= (and b!580545 res!368512) b!580546))

(assert (= (and b!580546 res!368513) b!580547))

(assert (= (and b!580547 res!368511) b!580540))

(assert (= (and b!580540 res!368510) b!580544))

(assert (= (and b!580544 res!368505) b!580543))

(declare-fun m!559159 () Bool)

(assert (=> b!580544 m!559159))

(declare-fun m!559161 () Bool)

(assert (=> b!580544 m!559161))

(declare-fun m!559163 () Bool)

(assert (=> b!580544 m!559163))

(declare-fun m!559165 () Bool)

(assert (=> b!580547 m!559165))

(declare-fun m!559167 () Bool)

(assert (=> b!580540 m!559167))

(declare-fun m!559169 () Bool)

(assert (=> b!580546 m!559169))

(declare-fun m!559171 () Bool)

(assert (=> b!580545 m!559171))

(declare-fun m!559173 () Bool)

(assert (=> b!580541 m!559173))

(assert (=> b!580541 m!559173))

(declare-fun m!559175 () Bool)

(assert (=> b!580541 m!559175))

(declare-fun m!559177 () Bool)

(assert (=> start!53404 m!559177))

(declare-fun m!559179 () Bool)

(assert (=> start!53404 m!559179))

(declare-fun m!559181 () Bool)

(assert (=> b!580542 m!559181))

(assert (=> b!580543 m!559173))

(assert (=> b!580543 m!559173))

(declare-fun m!559183 () Bool)

(assert (=> b!580543 m!559183))

(push 1)

