; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53764 () Bool)

(assert start!53764)

(declare-fun b!586078 () Bool)

(declare-fun res!374050 () Bool)

(declare-fun e!335112 () Bool)

(assert (=> b!586078 (=> (not res!374050) (not e!335112))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!586078 (= res!374050 (validKeyInArray!0 k!1786))))

(declare-fun b!586080 () Bool)

(declare-fun res!374048 () Bool)

(assert (=> b!586080 (=> (not res!374048) (not e!335112))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((array!36619 0))(
  ( (array!36620 (arr!17580 (Array (_ BitVec 32) (_ BitVec 64))) (size!17944 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36619)

(assert (=> b!586080 (= res!374048 (and (= (size!17944 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17944 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17944 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!586081 () Bool)

(declare-fun e!335111 () Bool)

(assert (=> b!586081 (= e!335111 (not true))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!266012 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6027 0))(
  ( (MissingZero!6027 (index!26335 (_ BitVec 32))) (Found!6027 (index!26336 (_ BitVec 32))) (Intermediate!6027 (undefined!6839 Bool) (index!26337 (_ BitVec 32)) (x!55179 (_ BitVec 32))) (Undefined!6027) (MissingVacant!6027 (index!26338 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36619 (_ BitVec 32)) SeekEntryResult!6027)

(assert (=> b!586081 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266012 vacantSpotIndex!68 (select (arr!17580 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266012 vacantSpotIndex!68 (select (store (arr!17580 a!2986) i!1108 k!1786) j!136) (array!36620 (store (arr!17580 a!2986) i!1108 k!1786) (size!17944 a!2986)) mask!3053))))

(declare-datatypes ((Unit!18178 0))(
  ( (Unit!18179) )
))
(declare-fun lt!266010 () Unit!18178)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36619 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18178)

(assert (=> b!586081 (= lt!266010 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!266012 vacantSpotIndex!68 mask!3053))))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!586081 (= lt!266012 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!586082 () Bool)

(declare-fun res!374051 () Bool)

(assert (=> b!586082 (=> (not res!374051) (not e!335111))))

(assert (=> b!586082 (= res!374051 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17580 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17580 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!586083 () Bool)

(declare-fun res!374044 () Bool)

(assert (=> b!586083 (=> (not res!374044) (not e!335111))))

(declare-datatypes ((List!11674 0))(
  ( (Nil!11671) (Cons!11670 (h!12715 (_ BitVec 64)) (t!17910 List!11674)) )
))
(declare-fun arrayNoDuplicates!0 (array!36619 (_ BitVec 32) List!11674) Bool)

(assert (=> b!586083 (= res!374044 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11671))))

(declare-fun b!586084 () Bool)

(declare-fun res!374049 () Bool)

(assert (=> b!586084 (=> (not res!374049) (not e!335112))))

(assert (=> b!586084 (= res!374049 (validKeyInArray!0 (select (arr!17580 a!2986) j!136)))))

(declare-fun b!586085 () Bool)

(declare-fun res!374052 () Bool)

(assert (=> b!586085 (=> (not res!374052) (not e!335111))))

(assert (=> b!586085 (= res!374052 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17580 a!2986) index!984) (select (arr!17580 a!2986) j!136))) (not (= (select (arr!17580 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!586086 () Bool)

(assert (=> b!586086 (= e!335112 e!335111)))

(declare-fun res!374046 () Bool)

(assert (=> b!586086 (=> (not res!374046) (not e!335111))))

(declare-fun lt!266011 () SeekEntryResult!6027)

(assert (=> b!586086 (= res!374046 (or (= lt!266011 (MissingZero!6027 i!1108)) (= lt!266011 (MissingVacant!6027 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36619 (_ BitVec 32)) SeekEntryResult!6027)

(assert (=> b!586086 (= lt!266011 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!586079 () Bool)

(declare-fun res!374053 () Bool)

(assert (=> b!586079 (=> (not res!374053) (not e!335112))))

(declare-fun arrayContainsKey!0 (array!36619 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!586079 (= res!374053 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun res!374054 () Bool)

(assert (=> start!53764 (=> (not res!374054) (not e!335112))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53764 (= res!374054 (validMask!0 mask!3053))))

(assert (=> start!53764 e!335112))

(assert (=> start!53764 true))

(declare-fun array_inv!13354 (array!36619) Bool)

(assert (=> start!53764 (array_inv!13354 a!2986)))

(declare-fun b!586087 () Bool)

(declare-fun res!374047 () Bool)

(assert (=> b!586087 (=> (not res!374047) (not e!335111))))

(assert (=> b!586087 (= res!374047 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17580 a!2986) j!136) a!2986 mask!3053) (Found!6027 j!136)))))

(declare-fun b!586088 () Bool)

(declare-fun res!374045 () Bool)

(assert (=> b!586088 (=> (not res!374045) (not e!335111))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36619 (_ BitVec 32)) Bool)

(assert (=> b!586088 (= res!374045 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(assert (= (and start!53764 res!374054) b!586080))

(assert (= (and b!586080 res!374048) b!586084))

(assert (= (and b!586084 res!374049) b!586078))

(assert (= (and b!586078 res!374050) b!586079))

(assert (= (and b!586079 res!374053) b!586086))

(assert (= (and b!586086 res!374046) b!586088))

(assert (= (and b!586088 res!374045) b!586083))

(assert (= (and b!586083 res!374044) b!586082))

(assert (= (and b!586082 res!374051) b!586087))

(assert (= (and b!586087 res!374047) b!586085))

(assert (= (and b!586085 res!374052) b!586081))

(declare-fun m!564463 () Bool)

(assert (=> b!586087 m!564463))

(assert (=> b!586087 m!564463))

(declare-fun m!564465 () Bool)

(assert (=> b!586087 m!564465))

(declare-fun m!564467 () Bool)

(assert (=> b!586078 m!564467))

(declare-fun m!564469 () Bool)

(assert (=> b!586088 m!564469))

(declare-fun m!564471 () Bool)

(assert (=> b!586079 m!564471))

(declare-fun m!564473 () Bool)

(assert (=> b!586082 m!564473))

(declare-fun m!564475 () Bool)

(assert (=> b!586082 m!564475))

(declare-fun m!564477 () Bool)

(assert (=> b!586082 m!564477))

(declare-fun m!564479 () Bool)

(assert (=> b!586083 m!564479))

(declare-fun m!564481 () Bool)

(assert (=> b!586085 m!564481))

(assert (=> b!586085 m!564463))

(declare-fun m!564483 () Bool)

(assert (=> b!586081 m!564483))

(declare-fun m!564485 () Bool)

(assert (=> b!586081 m!564485))

(declare-fun m!564487 () Bool)

(assert (=> b!586081 m!564487))

(assert (=> b!586081 m!564463))

(assert (=> b!586081 m!564475))

(assert (=> b!586081 m!564487))

(declare-fun m!564489 () Bool)

(assert (=> b!586081 m!564489))

(assert (=> b!586081 m!564463))

(declare-fun m!564491 () Bool)

(assert (=> b!586081 m!564491))

(declare-fun m!564493 () Bool)

(assert (=> b!586086 m!564493))

(assert (=> b!586084 m!564463))

(assert (=> b!586084 m!564463))

(declare-fun m!564495 () Bool)

(assert (=> b!586084 m!564495))

(declare-fun m!564497 () Bool)

(assert (=> start!53764 m!564497))

(declare-fun m!564499 () Bool)

(assert (=> start!53764 m!564499))

(push 1)

