; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56632 () Bool)

(assert start!56632)

(declare-fun b!627181 () Bool)

(declare-fun res!405066 () Bool)

(declare-fun e!359118 () Bool)

(assert (=> b!627181 (=> (not res!405066) (not e!359118))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!37885 0))(
  ( (array!37886 (arr!18179 (Array (_ BitVec 32) (_ BitVec 64))) (size!18543 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37885)

(assert (=> b!627181 (= res!405066 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18179 a!2986) index!984) (select (arr!18179 a!2986) j!136))) (not (= (select (arr!18179 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!627182 () Bool)

(declare-fun res!405062 () Bool)

(declare-fun e!359119 () Bool)

(assert (=> b!627182 (=> (not res!405062) (not e!359119))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!627182 (= res!405062 (and (= (size!18543 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18543 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18543 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!627183 () Bool)

(declare-fun res!405067 () Bool)

(assert (=> b!627183 (=> (not res!405067) (not e!359118))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37885 (_ BitVec 32)) Bool)

(assert (=> b!627183 (= res!405067 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!627184 () Bool)

(declare-fun res!405068 () Bool)

(assert (=> b!627184 (=> (not res!405068) (not e!359118))))

(declare-datatypes ((List!12273 0))(
  ( (Nil!12270) (Cons!12269 (h!13314 (_ BitVec 64)) (t!18509 List!12273)) )
))
(declare-fun arrayNoDuplicates!0 (array!37885 (_ BitVec 32) List!12273) Bool)

(assert (=> b!627184 (= res!405068 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12270))))

(declare-fun b!627185 () Bool)

(declare-fun res!405069 () Bool)

(assert (=> b!627185 (=> (not res!405069) (not e!359119))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!37885 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!627185 (= res!405069 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!627187 () Bool)

(declare-fun res!405063 () Bool)

(assert (=> b!627187 (=> (not res!405063) (not e!359119))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!627187 (= res!405063 (validKeyInArray!0 (select (arr!18179 a!2986) j!136)))))

(declare-fun b!627188 () Bool)

(assert (=> b!627188 (= e!359119 e!359118)))

(declare-fun res!405070 () Bool)

(assert (=> b!627188 (=> (not res!405070) (not e!359118))))

(declare-datatypes ((SeekEntryResult!6626 0))(
  ( (MissingZero!6626 (index!28787 (_ BitVec 32))) (Found!6626 (index!28788 (_ BitVec 32))) (Intermediate!6626 (undefined!7438 Bool) (index!28789 (_ BitVec 32)) (x!57551 (_ BitVec 32))) (Undefined!6626) (MissingVacant!6626 (index!28790 (_ BitVec 32))) )
))
(declare-fun lt!290214 () SeekEntryResult!6626)

(assert (=> b!627188 (= res!405070 (or (= lt!290214 (MissingZero!6626 i!1108)) (= lt!290214 (MissingVacant!6626 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37885 (_ BitVec 32)) SeekEntryResult!6626)

(assert (=> b!627188 (= lt!290214 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!627189 () Bool)

(assert (=> b!627189 (= e!359118 false)))

(declare-fun lt!290213 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!627189 (= lt!290213 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!627186 () Bool)

(declare-fun res!405064 () Bool)

(assert (=> b!627186 (=> (not res!405064) (not e!359118))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37885 (_ BitVec 32)) SeekEntryResult!6626)

(assert (=> b!627186 (= res!405064 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18179 a!2986) j!136) a!2986 mask!3053) (Found!6626 j!136)))))

(declare-fun res!405071 () Bool)

(assert (=> start!56632 (=> (not res!405071) (not e!359119))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56632 (= res!405071 (validMask!0 mask!3053))))

(assert (=> start!56632 e!359119))

(assert (=> start!56632 true))

(declare-fun array_inv!13953 (array!37885) Bool)

(assert (=> start!56632 (array_inv!13953 a!2986)))

(declare-fun b!627190 () Bool)

(declare-fun res!405065 () Bool)

(assert (=> b!627190 (=> (not res!405065) (not e!359119))))

(assert (=> b!627190 (= res!405065 (validKeyInArray!0 k!1786))))

(declare-fun b!627191 () Bool)

(declare-fun res!405061 () Bool)

(assert (=> b!627191 (=> (not res!405061) (not e!359118))))

(assert (=> b!627191 (= res!405061 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18179 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18179 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!56632 res!405071) b!627182))

(assert (= (and b!627182 res!405062) b!627187))

(assert (= (and b!627187 res!405063) b!627190))

(assert (= (and b!627190 res!405065) b!627185))

(assert (= (and b!627185 res!405069) b!627188))

(assert (= (and b!627188 res!405070) b!627183))

(assert (= (and b!627183 res!405067) b!627184))

(assert (= (and b!627184 res!405068) b!627191))

(assert (= (and b!627191 res!405061) b!627186))

(assert (= (and b!627186 res!405064) b!627181))

(assert (= (and b!627181 res!405066) b!627189))

(declare-fun m!602553 () Bool)

(assert (=> b!627190 m!602553))

(declare-fun m!602555 () Bool)

(assert (=> b!627181 m!602555))

(declare-fun m!602557 () Bool)

(assert (=> b!627181 m!602557))

(declare-fun m!602559 () Bool)

(assert (=> b!627184 m!602559))

(assert (=> b!627186 m!602557))

(assert (=> b!627186 m!602557))

(declare-fun m!602561 () Bool)

(assert (=> b!627186 m!602561))

(declare-fun m!602563 () Bool)

(assert (=> b!627185 m!602563))

(assert (=> b!627187 m!602557))

(assert (=> b!627187 m!602557))

(declare-fun m!602565 () Bool)

(assert (=> b!627187 m!602565))

(declare-fun m!602567 () Bool)

(assert (=> b!627189 m!602567))

(declare-fun m!602569 () Bool)

(assert (=> start!56632 m!602569))

(declare-fun m!602571 () Bool)

(assert (=> start!56632 m!602571))

(declare-fun m!602573 () Bool)

(assert (=> b!627183 m!602573))

(declare-fun m!602575 () Bool)

(assert (=> b!627191 m!602575))

(declare-fun m!602577 () Bool)

(assert (=> b!627191 m!602577))

(declare-fun m!602579 () Bool)

(assert (=> b!627191 m!602579))

(declare-fun m!602581 () Bool)

(assert (=> b!627188 m!602581))

(push 1)

(assert (not b!627185))

(assert (not b!627183))

(assert (not start!56632))

