; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56742 () Bool)

(assert start!56742)

(declare-fun b!628312 () Bool)

(declare-fun res!406057 () Bool)

(declare-fun e!359506 () Bool)

(assert (=> b!628312 (=> (not res!406057) (not e!359506))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!37944 0))(
  ( (array!37945 (arr!18207 (Array (_ BitVec 32) (_ BitVec 64))) (size!18571 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37944)

(assert (=> b!628312 (= res!406057 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18207 a!2986) index!984) (select (arr!18207 a!2986) j!136))) (not (= (select (arr!18207 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!628313 () Bool)

(declare-fun res!406048 () Bool)

(declare-fun e!359505 () Bool)

(assert (=> b!628313 (=> (not res!406048) (not e!359505))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!628313 (= res!406048 (validKeyInArray!0 k!1786))))

(declare-fun b!628314 () Bool)

(declare-fun res!406055 () Bool)

(assert (=> b!628314 (=> (not res!406055) (not e!359505))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!628314 (= res!406055 (and (= (size!18571 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18571 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18571 a!2986)) (not (= i!1108 j!136))))))

(declare-fun res!406050 () Bool)

(assert (=> start!56742 (=> (not res!406050) (not e!359505))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56742 (= res!406050 (validMask!0 mask!3053))))

(assert (=> start!56742 e!359505))

(assert (=> start!56742 true))

(declare-fun array_inv!13981 (array!37944) Bool)

(assert (=> start!56742 (array_inv!13981 a!2986)))

(declare-fun b!628315 () Bool)

(declare-fun res!406056 () Bool)

(assert (=> b!628315 (=> (not res!406056) (not e!359505))))

(assert (=> b!628315 (= res!406056 (validKeyInArray!0 (select (arr!18207 a!2986) j!136)))))

(declare-fun b!628316 () Bool)

(declare-fun lt!290462 () (_ BitVec 32))

(assert (=> b!628316 (= e!359506 (and (bvsge lt!290462 #b00000000000000000000000000000000) (bvslt lt!290462 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvslt (bvadd #b00000000000000000000000000000001 x!910) #b00000000000000000000000000000000)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!628316 (= lt!290462 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!628317 () Bool)

(declare-fun res!406052 () Bool)

(assert (=> b!628317 (=> (not res!406052) (not e!359505))))

(declare-fun arrayContainsKey!0 (array!37944 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!628317 (= res!406052 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!628318 () Bool)

(declare-fun res!406049 () Bool)

(assert (=> b!628318 (=> (not res!406049) (not e!359506))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6654 0))(
  ( (MissingZero!6654 (index!28899 (_ BitVec 32))) (Found!6654 (index!28900 (_ BitVec 32))) (Intermediate!6654 (undefined!7466 Bool) (index!28901 (_ BitVec 32)) (x!57665 (_ BitVec 32))) (Undefined!6654) (MissingVacant!6654 (index!28902 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37944 (_ BitVec 32)) SeekEntryResult!6654)

(assert (=> b!628318 (= res!406049 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18207 a!2986) j!136) a!2986 mask!3053) (Found!6654 j!136)))))

(declare-fun b!628319 () Bool)

(assert (=> b!628319 (= e!359505 e!359506)))

(declare-fun res!406053 () Bool)

(assert (=> b!628319 (=> (not res!406053) (not e!359506))))

(declare-fun lt!290463 () SeekEntryResult!6654)

(assert (=> b!628319 (= res!406053 (or (= lt!290463 (MissingZero!6654 i!1108)) (= lt!290463 (MissingVacant!6654 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37944 (_ BitVec 32)) SeekEntryResult!6654)

(assert (=> b!628319 (= lt!290463 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!628320 () Bool)

(declare-fun res!406058 () Bool)

(assert (=> b!628320 (=> (not res!406058) (not e!359506))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37944 (_ BitVec 32)) Bool)

(assert (=> b!628320 (= res!406058 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!628321 () Bool)

(declare-fun res!406054 () Bool)

(assert (=> b!628321 (=> (not res!406054) (not e!359506))))

(assert (=> b!628321 (= res!406054 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18207 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18207 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!628322 () Bool)

(declare-fun res!406051 () Bool)

(assert (=> b!628322 (=> (not res!406051) (not e!359506))))

(declare-datatypes ((List!12301 0))(
  ( (Nil!12298) (Cons!12297 (h!13342 (_ BitVec 64)) (t!18537 List!12301)) )
))
(declare-fun arrayNoDuplicates!0 (array!37944 (_ BitVec 32) List!12301) Bool)

(assert (=> b!628322 (= res!406051 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12298))))

(assert (= (and start!56742 res!406050) b!628314))

(assert (= (and b!628314 res!406055) b!628315))

(assert (= (and b!628315 res!406056) b!628313))

(assert (= (and b!628313 res!406048) b!628317))

(assert (= (and b!628317 res!406052) b!628319))

(assert (= (and b!628319 res!406053) b!628320))

(assert (= (and b!628320 res!406058) b!628322))

(assert (= (and b!628322 res!406051) b!628321))

(assert (= (and b!628321 res!406054) b!628318))

(assert (= (and b!628318 res!406049) b!628312))

(assert (= (and b!628312 res!406057) b!628316))

(declare-fun m!603513 () Bool)

(assert (=> b!628317 m!603513))

(declare-fun m!603515 () Bool)

(assert (=> b!628320 m!603515))

(declare-fun m!603517 () Bool)

(assert (=> b!628318 m!603517))

(assert (=> b!628318 m!603517))

(declare-fun m!603519 () Bool)

(assert (=> b!628318 m!603519))

(declare-fun m!603521 () Bool)

(assert (=> b!628313 m!603521))

(declare-fun m!603523 () Bool)

(assert (=> b!628322 m!603523))

(declare-fun m!603525 () Bool)

(assert (=> b!628319 m!603525))

(declare-fun m!603527 () Bool)

(assert (=> start!56742 m!603527))

(declare-fun m!603529 () Bool)

(assert (=> start!56742 m!603529))

(assert (=> b!628315 m!603517))

(assert (=> b!628315 m!603517))

(declare-fun m!603531 () Bool)

(assert (=> b!628315 m!603531))

(declare-fun m!603533 () Bool)

(assert (=> b!628321 m!603533))

(declare-fun m!603535 () Bool)

(assert (=> b!628321 m!603535))

(declare-fun m!603537 () Bool)

(assert (=> b!628321 m!603537))

(declare-fun m!603539 () Bool)

(assert (=> b!628312 m!603539))

(assert (=> b!628312 m!603517))

(declare-fun m!603541 () Bool)

(assert (=> b!628316 m!603541))

(push 1)

(assert (not b!628316))

(assert (not b!628315))

(assert (not b!628318))

(assert (not b!628320))

(assert (not b!628322))

(assert (not b!628319))

(assert (not b!628317))

(assert (not start!56742))

(assert (not b!628313))

(check-sat)

(pop 1)

(push 1)

(check-sat)

