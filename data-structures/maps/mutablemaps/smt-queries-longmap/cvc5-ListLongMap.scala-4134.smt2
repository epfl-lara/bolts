; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56406 () Bool)

(assert start!56406)

(declare-fun b!624870 () Bool)

(declare-fun res!403060 () Bool)

(declare-fun e!358246 () Bool)

(assert (=> b!624870 (=> (not res!403060) (not e!358246))))

(declare-datatypes ((array!37749 0))(
  ( (array!37750 (arr!18114 (Array (_ BitVec 32) (_ BitVec 64))) (size!18478 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37749)

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!37749 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!624870 (= res!403060 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!624871 () Bool)

(declare-fun res!403064 () Bool)

(assert (=> b!624871 (=> (not res!403064) (not e!358246))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!624871 (= res!403064 (validKeyInArray!0 (select (arr!18114 a!2986) j!136)))))

(declare-fun b!624872 () Bool)

(declare-fun res!403058 () Bool)

(assert (=> b!624872 (=> (not res!403058) (not e!358246))))

(assert (=> b!624872 (= res!403058 (validKeyInArray!0 k!1786))))

(declare-fun b!624873 () Bool)

(declare-fun res!403056 () Bool)

(declare-fun e!358244 () Bool)

(assert (=> b!624873 (=> (not res!403056) (not e!358244))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!624873 (= res!403056 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18114 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18114 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!624874 () Bool)

(declare-fun res!403057 () Bool)

(assert (=> b!624874 (=> (not res!403057) (not e!358246))))

(assert (=> b!624874 (= res!403057 (and (= (size!18478 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18478 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18478 a!2986)) (not (= i!1108 j!136))))))

(declare-fun res!403062 () Bool)

(assert (=> start!56406 (=> (not res!403062) (not e!358246))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56406 (= res!403062 (validMask!0 mask!3053))))

(assert (=> start!56406 e!358246))

(assert (=> start!56406 true))

(declare-fun array_inv!13888 (array!37749) Bool)

(assert (=> start!56406 (array_inv!13888 a!2986)))

(declare-fun b!624875 () Bool)

(declare-fun res!403059 () Bool)

(assert (=> b!624875 (=> (not res!403059) (not e!358244))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37749 (_ BitVec 32)) Bool)

(assert (=> b!624875 (= res!403059 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!624876 () Bool)

(assert (=> b!624876 (= e!358244 false)))

(declare-datatypes ((SeekEntryResult!6561 0))(
  ( (MissingZero!6561 (index!28527 (_ BitVec 32))) (Found!6561 (index!28528 (_ BitVec 32))) (Intermediate!6561 (undefined!7373 Bool) (index!28529 (_ BitVec 32)) (x!57312 (_ BitVec 32))) (Undefined!6561) (MissingVacant!6561 (index!28530 (_ BitVec 32))) )
))
(declare-fun lt!289701 () SeekEntryResult!6561)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37749 (_ BitVec 32)) SeekEntryResult!6561)

(assert (=> b!624876 (= lt!289701 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18114 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!624877 () Bool)

(assert (=> b!624877 (= e!358246 e!358244)))

(declare-fun res!403063 () Bool)

(assert (=> b!624877 (=> (not res!403063) (not e!358244))))

(declare-fun lt!289700 () SeekEntryResult!6561)

(assert (=> b!624877 (= res!403063 (or (= lt!289700 (MissingZero!6561 i!1108)) (= lt!289700 (MissingVacant!6561 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37749 (_ BitVec 32)) SeekEntryResult!6561)

(assert (=> b!624877 (= lt!289700 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!624878 () Bool)

(declare-fun res!403061 () Bool)

(assert (=> b!624878 (=> (not res!403061) (not e!358244))))

(declare-datatypes ((List!12208 0))(
  ( (Nil!12205) (Cons!12204 (h!13249 (_ BitVec 64)) (t!18444 List!12208)) )
))
(declare-fun arrayNoDuplicates!0 (array!37749 (_ BitVec 32) List!12208) Bool)

(assert (=> b!624878 (= res!403061 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12205))))

(assert (= (and start!56406 res!403062) b!624874))

(assert (= (and b!624874 res!403057) b!624871))

(assert (= (and b!624871 res!403064) b!624872))

(assert (= (and b!624872 res!403058) b!624870))

(assert (= (and b!624870 res!403060) b!624877))

(assert (= (and b!624877 res!403063) b!624875))

(assert (= (and b!624875 res!403059) b!624878))

(assert (= (and b!624878 res!403061) b!624873))

(assert (= (and b!624873 res!403056) b!624876))

(declare-fun m!600513 () Bool)

(assert (=> b!624873 m!600513))

(declare-fun m!600515 () Bool)

(assert (=> b!624873 m!600515))

(declare-fun m!600517 () Bool)

(assert (=> b!624873 m!600517))

(declare-fun m!600519 () Bool)

(assert (=> b!624870 m!600519))

(declare-fun m!600521 () Bool)

(assert (=> b!624875 m!600521))

(declare-fun m!600523 () Bool)

(assert (=> start!56406 m!600523))

(declare-fun m!600525 () Bool)

(assert (=> start!56406 m!600525))

(declare-fun m!600527 () Bool)

(assert (=> b!624877 m!600527))

(declare-fun m!600529 () Bool)

(assert (=> b!624871 m!600529))

(assert (=> b!624871 m!600529))

(declare-fun m!600531 () Bool)

(assert (=> b!624871 m!600531))

(declare-fun m!600533 () Bool)

(assert (=> b!624878 m!600533))

(assert (=> b!624876 m!600529))

(assert (=> b!624876 m!600529))

(declare-fun m!600535 () Bool)

(assert (=> b!624876 m!600535))

(declare-fun m!600537 () Bool)

(assert (=> b!624872 m!600537))

(push 1)

