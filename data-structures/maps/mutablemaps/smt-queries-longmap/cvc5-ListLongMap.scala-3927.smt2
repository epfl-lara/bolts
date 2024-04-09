; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53590 () Bool)

(assert start!53590)

(declare-fun b!583079 () Bool)

(declare-fun res!371054 () Bool)

(declare-fun e!334157 () Bool)

(assert (=> b!583079 (=> (not res!371054) (not e!334157))))

(declare-datatypes ((array!36445 0))(
  ( (array!36446 (arr!17493 (Array (_ BitVec 32) (_ BitVec 64))) (size!17857 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36445)

(declare-datatypes ((List!11587 0))(
  ( (Nil!11584) (Cons!11583 (h!12628 (_ BitVec 64)) (t!17823 List!11587)) )
))
(declare-fun arrayNoDuplicates!0 (array!36445 (_ BitVec 32) List!11587) Bool)

(assert (=> b!583079 (= res!371054 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11584))))

(declare-fun b!583080 () Bool)

(declare-fun res!371049 () Bool)

(declare-fun e!334159 () Bool)

(assert (=> b!583080 (=> (not res!371049) (not e!334159))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!583080 (= res!371049 (validKeyInArray!0 (select (arr!17493 a!2986) j!136)))))

(declare-fun b!583081 () Bool)

(declare-fun res!371046 () Bool)

(assert (=> b!583081 (=> (not res!371046) (not e!334159))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!36445 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!583081 (= res!371046 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!583082 () Bool)

(declare-fun res!371048 () Bool)

(assert (=> b!583082 (=> (not res!371048) (not e!334157))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5940 0))(
  ( (MissingZero!5940 (index!25987 (_ BitVec 32))) (Found!5940 (index!25988 (_ BitVec 32))) (Intermediate!5940 (undefined!6752 Bool) (index!25989 (_ BitVec 32)) (x!54860 (_ BitVec 32))) (Undefined!5940) (MissingVacant!5940 (index!25990 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36445 (_ BitVec 32)) SeekEntryResult!5940)

(assert (=> b!583082 (= res!371048 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17493 a!2986) j!136) a!2986 mask!3053) (Found!5940 j!136)))))

(declare-fun b!583083 () Bool)

(assert (=> b!583083 (= e!334157 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17493 a!2986) index!984) (select (arr!17493 a!2986) j!136))) (not (= (select (arr!17493 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136)) (bvslt mask!3053 #b00000000000000000000000000000000)))))

(declare-fun b!583084 () Bool)

(declare-fun res!371051 () Bool)

(assert (=> b!583084 (=> (not res!371051) (not e!334157))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36445 (_ BitVec 32)) Bool)

(assert (=> b!583084 (= res!371051 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!583085 () Bool)

(declare-fun res!371047 () Bool)

(assert (=> b!583085 (=> (not res!371047) (not e!334159))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!583085 (= res!371047 (and (= (size!17857 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17857 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17857 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!583086 () Bool)

(declare-fun res!371052 () Bool)

(assert (=> b!583086 (=> (not res!371052) (not e!334157))))

(assert (=> b!583086 (= res!371052 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17493 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17493 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!371045 () Bool)

(assert (=> start!53590 (=> (not res!371045) (not e!334159))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53590 (= res!371045 (validMask!0 mask!3053))))

(assert (=> start!53590 e!334159))

(assert (=> start!53590 true))

(declare-fun array_inv!13267 (array!36445) Bool)

(assert (=> start!53590 (array_inv!13267 a!2986)))

(declare-fun b!583087 () Bool)

(declare-fun res!371053 () Bool)

(assert (=> b!583087 (=> (not res!371053) (not e!334159))))

(assert (=> b!583087 (= res!371053 (validKeyInArray!0 k!1786))))

(declare-fun b!583088 () Bool)

(assert (=> b!583088 (= e!334159 e!334157)))

(declare-fun res!371050 () Bool)

(assert (=> b!583088 (=> (not res!371050) (not e!334157))))

(declare-fun lt!265259 () SeekEntryResult!5940)

(assert (=> b!583088 (= res!371050 (or (= lt!265259 (MissingZero!5940 i!1108)) (= lt!265259 (MissingVacant!5940 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36445 (_ BitVec 32)) SeekEntryResult!5940)

(assert (=> b!583088 (= lt!265259 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(assert (= (and start!53590 res!371045) b!583085))

(assert (= (and b!583085 res!371047) b!583080))

(assert (= (and b!583080 res!371049) b!583087))

(assert (= (and b!583087 res!371053) b!583081))

(assert (= (and b!583081 res!371046) b!583088))

(assert (= (and b!583088 res!371050) b!583084))

(assert (= (and b!583084 res!371051) b!583079))

(assert (= (and b!583079 res!371054) b!583086))

(assert (= (and b!583086 res!371052) b!583082))

(assert (= (and b!583082 res!371048) b!583083))

(declare-fun m!561601 () Bool)

(assert (=> b!583081 m!561601))

(declare-fun m!561603 () Bool)

(assert (=> b!583083 m!561603))

(declare-fun m!561605 () Bool)

(assert (=> b!583083 m!561605))

(assert (=> b!583080 m!561605))

(assert (=> b!583080 m!561605))

(declare-fun m!561607 () Bool)

(assert (=> b!583080 m!561607))

(declare-fun m!561609 () Bool)

(assert (=> start!53590 m!561609))

(declare-fun m!561611 () Bool)

(assert (=> start!53590 m!561611))

(declare-fun m!561613 () Bool)

(assert (=> b!583084 m!561613))

(declare-fun m!561615 () Bool)

(assert (=> b!583079 m!561615))

(assert (=> b!583082 m!561605))

(assert (=> b!583082 m!561605))

(declare-fun m!561617 () Bool)

(assert (=> b!583082 m!561617))

(declare-fun m!561619 () Bool)

(assert (=> b!583087 m!561619))

(declare-fun m!561621 () Bool)

(assert (=> b!583088 m!561621))

(declare-fun m!561623 () Bool)

(assert (=> b!583086 m!561623))

(declare-fun m!561625 () Bool)

(assert (=> b!583086 m!561625))

(declare-fun m!561627 () Bool)

(assert (=> b!583086 m!561627))

(push 1)

