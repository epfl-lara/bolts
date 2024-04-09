; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56626 () Bool)

(assert start!56626)

(declare-fun b!627082 () Bool)

(declare-fun res!404967 () Bool)

(declare-fun e!359091 () Bool)

(assert (=> b!627082 (=> (not res!404967) (not e!359091))))

(declare-datatypes ((array!37879 0))(
  ( (array!37880 (arr!18176 (Array (_ BitVec 32) (_ BitVec 64))) (size!18540 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37879)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!627082 (= res!404967 (validKeyInArray!0 (select (arr!18176 a!2986) j!136)))))

(declare-fun b!627083 () Bool)

(declare-fun res!404969 () Bool)

(declare-fun e!359090 () Bool)

(assert (=> b!627083 (=> (not res!404969) (not e!359090))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!627083 (= res!404969 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18176 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18176 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!404970 () Bool)

(assert (=> start!56626 (=> (not res!404970) (not e!359091))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56626 (= res!404970 (validMask!0 mask!3053))))

(assert (=> start!56626 e!359091))

(assert (=> start!56626 true))

(declare-fun array_inv!13950 (array!37879) Bool)

(assert (=> start!56626 (array_inv!13950 a!2986)))

(declare-fun b!627084 () Bool)

(declare-fun res!404972 () Bool)

(assert (=> b!627084 (=> (not res!404972) (not e!359090))))

(assert (=> b!627084 (= res!404972 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18176 a!2986) index!984) (select (arr!18176 a!2986) j!136))) (not (= (select (arr!18176 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!627085 () Bool)

(declare-fun res!404966 () Bool)

(assert (=> b!627085 (=> (not res!404966) (not e!359091))))

(assert (=> b!627085 (= res!404966 (and (= (size!18540 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18540 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18540 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!627086 () Bool)

(declare-fun res!404964 () Bool)

(assert (=> b!627086 (=> (not res!404964) (not e!359090))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37879 (_ BitVec 32)) Bool)

(assert (=> b!627086 (= res!404964 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!627087 () Bool)

(declare-fun res!404965 () Bool)

(assert (=> b!627087 (=> (not res!404965) (not e!359090))))

(declare-datatypes ((SeekEntryResult!6623 0))(
  ( (MissingZero!6623 (index!28775 (_ BitVec 32))) (Found!6623 (index!28776 (_ BitVec 32))) (Intermediate!6623 (undefined!7435 Bool) (index!28777 (_ BitVec 32)) (x!57540 (_ BitVec 32))) (Undefined!6623) (MissingVacant!6623 (index!28778 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37879 (_ BitVec 32)) SeekEntryResult!6623)

(assert (=> b!627087 (= res!404965 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18176 a!2986) j!136) a!2986 mask!3053) (Found!6623 j!136)))))

(declare-fun b!627088 () Bool)

(declare-fun res!404963 () Bool)

(assert (=> b!627088 (=> (not res!404963) (not e!359090))))

(declare-datatypes ((List!12270 0))(
  ( (Nil!12267) (Cons!12266 (h!13311 (_ BitVec 64)) (t!18506 List!12270)) )
))
(declare-fun arrayNoDuplicates!0 (array!37879 (_ BitVec 32) List!12270) Bool)

(assert (=> b!627088 (= res!404963 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12267))))

(declare-fun b!627089 () Bool)

(assert (=> b!627089 (= e!359091 e!359090)))

(declare-fun res!404962 () Bool)

(assert (=> b!627089 (=> (not res!404962) (not e!359090))))

(declare-fun lt!290196 () SeekEntryResult!6623)

(assert (=> b!627089 (= res!404962 (or (= lt!290196 (MissingZero!6623 i!1108)) (= lt!290196 (MissingVacant!6623 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37879 (_ BitVec 32)) SeekEntryResult!6623)

(assert (=> b!627089 (= lt!290196 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!627090 () Bool)

(declare-fun res!404971 () Bool)

(assert (=> b!627090 (=> (not res!404971) (not e!359091))))

(declare-fun arrayContainsKey!0 (array!37879 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!627090 (= res!404971 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!627091 () Bool)

(assert (=> b!627091 (= e!359090 false)))

(declare-fun lt!290195 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!627091 (= lt!290195 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!627092 () Bool)

(declare-fun res!404968 () Bool)

(assert (=> b!627092 (=> (not res!404968) (not e!359091))))

(assert (=> b!627092 (= res!404968 (validKeyInArray!0 k!1786))))

(assert (= (and start!56626 res!404970) b!627085))

(assert (= (and b!627085 res!404966) b!627082))

(assert (= (and b!627082 res!404967) b!627092))

(assert (= (and b!627092 res!404968) b!627090))

(assert (= (and b!627090 res!404971) b!627089))

(assert (= (and b!627089 res!404962) b!627086))

(assert (= (and b!627086 res!404964) b!627088))

(assert (= (and b!627088 res!404963) b!627083))

(assert (= (and b!627083 res!404969) b!627087))

(assert (= (and b!627087 res!404965) b!627084))

(assert (= (and b!627084 res!404972) b!627091))

(declare-fun m!602463 () Bool)

(assert (=> b!627090 m!602463))

(declare-fun m!602465 () Bool)

(assert (=> b!627092 m!602465))

(declare-fun m!602467 () Bool)

(assert (=> b!627086 m!602467))

(declare-fun m!602469 () Bool)

(assert (=> b!627084 m!602469))

(declare-fun m!602471 () Bool)

(assert (=> b!627084 m!602471))

(declare-fun m!602473 () Bool)

(assert (=> start!56626 m!602473))

(declare-fun m!602475 () Bool)

(assert (=> start!56626 m!602475))

(declare-fun m!602477 () Bool)

(assert (=> b!627083 m!602477))

(declare-fun m!602479 () Bool)

(assert (=> b!627083 m!602479))

(declare-fun m!602481 () Bool)

(assert (=> b!627083 m!602481))

(declare-fun m!602483 () Bool)

(assert (=> b!627089 m!602483))

(declare-fun m!602485 () Bool)

(assert (=> b!627088 m!602485))

(declare-fun m!602487 () Bool)

(assert (=> b!627091 m!602487))

(assert (=> b!627087 m!602471))

(assert (=> b!627087 m!602471))

(declare-fun m!602489 () Bool)

(assert (=> b!627087 m!602489))

(assert (=> b!627082 m!602471))

(assert (=> b!627082 m!602471))

(declare-fun m!602491 () Bool)

(assert (=> b!627082 m!602491))

(push 1)

(assert (not b!627090))

(assert (not b!627092))

(assert (not b!627082))

(assert (not 