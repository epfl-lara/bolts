; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!55446 () Bool)

(assert start!55446)

(declare-fun b!606208 () Bool)

(declare-fun res!389529 () Bool)

(declare-fun e!347079 () Bool)

(assert (=> b!606208 (=> (not res!389529) (not e!347079))))

(declare-datatypes ((array!37233 0))(
  ( (array!37234 (arr!17865 (Array (_ BitVec 32) (_ BitVec 64))) (size!18229 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37233)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!606208 (= res!389529 (validKeyInArray!0 (select (arr!17865 a!2986) j!136)))))

(declare-fun b!606209 () Bool)

(declare-fun e!347072 () Bool)

(declare-fun e!347084 () Bool)

(assert (=> b!606209 (= e!347072 e!347084)))

(declare-fun res!389515 () Bool)

(assert (=> b!606209 (=> res!389515 e!347084)))

(declare-fun lt!276716 () (_ BitVec 64))

(declare-fun lt!276714 () (_ BitVec 64))

(assert (=> b!606209 (= res!389515 (or (not (= (select (arr!17865 a!2986) j!136) lt!276714)) (not (= (select (arr!17865 a!2986) j!136) lt!276716))))))

(declare-fun e!347073 () Bool)

(assert (=> b!606209 e!347073))

(declare-fun res!389519 () Bool)

(assert (=> b!606209 (=> (not res!389519) (not e!347073))))

(assert (=> b!606209 (= res!389519 (= lt!276716 (select (arr!17865 a!2986) j!136)))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!606209 (= lt!276716 (select (store (arr!17865 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!606210 () Bool)

(declare-datatypes ((Unit!19300 0))(
  ( (Unit!19301) )
))
(declare-fun e!347071 () Unit!19300)

(declare-fun Unit!19302 () Unit!19300)

(assert (=> b!606210 (= e!347071 Unit!19302)))

(declare-fun b!606211 () Bool)

(declare-fun e!347086 () Bool)

(assert (=> b!606211 (= e!347073 e!347086)))

(declare-fun res!389526 () Bool)

(assert (=> b!606211 (=> res!389526 e!347086)))

(assert (=> b!606211 (= res!389526 (or (not (= (select (arr!17865 a!2986) j!136) lt!276714)) (not (= (select (arr!17865 a!2986) j!136) lt!276716)) (bvsge j!136 index!984)))))

(declare-fun b!606212 () Bool)

(declare-fun e!347078 () Bool)

(declare-fun e!347085 () Bool)

(assert (=> b!606212 (= e!347078 e!347085)))

(declare-fun res!389511 () Bool)

(assert (=> b!606212 (=> (not res!389511) (not e!347085))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!606212 (= res!389511 (= (select (store (arr!17865 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!276728 () array!37233)

(assert (=> b!606212 (= lt!276728 (array!37234 (store (arr!17865 a!2986) i!1108 k!1786) (size!18229 a!2986)))))

(declare-fun b!606213 () Bool)

(declare-fun e!347077 () Bool)

(declare-fun e!347080 () Bool)

(assert (=> b!606213 (= e!347077 e!347080)))

(declare-fun res!389517 () Bool)

(assert (=> b!606213 (=> (not res!389517) (not e!347080))))

(declare-datatypes ((List!11959 0))(
  ( (Nil!11956) (Cons!11955 (h!13000 (_ BitVec 64)) (t!18195 List!11959)) )
))
(declare-fun contains!3005 (List!11959 (_ BitVec 64)) Bool)

(assert (=> b!606213 (= res!389517 (not (contains!3005 Nil!11956 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!606214 () Bool)

(declare-fun res!389530 () Bool)

(assert (=> b!606214 (=> (not res!389530) (not e!347078))))

(declare-fun arrayNoDuplicates!0 (array!37233 (_ BitVec 32) List!11959) Bool)

(assert (=> b!606214 (= res!389530 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11956))))

(declare-fun b!606215 () Bool)

(declare-fun res!389510 () Bool)

(assert (=> b!606215 (=> (not res!389510) (not e!347079))))

(declare-fun arrayContainsKey!0 (array!37233 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!606215 (= res!389510 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!606217 () Bool)

(declare-fun e!347083 () Bool)

(assert (=> b!606217 (= e!347083 (arrayContainsKey!0 lt!276728 (select (arr!17865 a!2986) j!136) index!984))))

(declare-fun b!606218 () Bool)

(declare-fun e!347076 () Bool)

(assert (=> b!606218 (= e!347076 e!347077)))

(declare-fun res!389520 () Bool)

(assert (=> b!606218 (=> res!389520 e!347077)))

(assert (=> b!606218 (= res!389520 (or (bvsgt #b00000000000000000000000000000000 (size!18229 a!2986)) (bvsge (size!18229 a!2986) #b01111111111111111111111111111111)))))

(assert (=> b!606218 (arrayContainsKey!0 lt!276728 (select (arr!17865 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!276715 () Unit!19300)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37233 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19300)

(assert (=> b!606218 (= lt!276715 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!276728 (select (arr!17865 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!606218 e!347083))

(declare-fun res!389518 () Bool)

(assert (=> b!606218 (=> (not res!389518) (not e!347083))))

(assert (=> b!606218 (= res!389518 (arrayContainsKey!0 lt!276728 (select (arr!17865 a!2986) j!136) j!136))))

(declare-fun b!606219 () Bool)

(declare-fun e!347081 () Bool)

(assert (=> b!606219 (= e!347081 (not e!347072))))

(declare-fun res!389513 () Bool)

(assert (=> b!606219 (=> res!389513 e!347072)))

(declare-datatypes ((SeekEntryResult!6312 0))(
  ( (MissingZero!6312 (index!27519 (_ BitVec 32))) (Found!6312 (index!27520 (_ BitVec 32))) (Intermediate!6312 (undefined!7124 Bool) (index!27521 (_ BitVec 32)) (x!56357 (_ BitVec 32))) (Undefined!6312) (MissingVacant!6312 (index!27522 (_ BitVec 32))) )
))
(declare-fun lt!276719 () SeekEntryResult!6312)

(assert (=> b!606219 (= res!389513 (not (= lt!276719 (Found!6312 index!984))))))

(declare-fun lt!276722 () Unit!19300)

(declare-fun e!347082 () Unit!19300)

(assert (=> b!606219 (= lt!276722 e!347082)))

(declare-fun c!68717 () Bool)

(assert (=> b!606219 (= c!68717 (= lt!276719 Undefined!6312))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37233 (_ BitVec 32)) SeekEntryResult!6312)

(assert (=> b!606219 (= lt!276719 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!276714 lt!276728 mask!3053))))

(declare-fun e!347070 () Bool)

(assert (=> b!606219 e!347070))

(declare-fun res!389528 () Bool)

(assert (=> b!606219 (=> (not res!389528) (not e!347070))))

(declare-fun lt!276727 () SeekEntryResult!6312)

(declare-fun lt!276726 () (_ BitVec 32))

(assert (=> b!606219 (= res!389528 (= lt!276727 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!276726 vacantSpotIndex!68 lt!276714 lt!276728 mask!3053)))))

(assert (=> b!606219 (= lt!276727 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!276726 vacantSpotIndex!68 (select (arr!17865 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!606219 (= lt!276714 (select (store (arr!17865 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!276720 () Unit!19300)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37233 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19300)

(assert (=> b!606219 (= lt!276720 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!276726 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!606219 (= lt!276726 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!606220 () Bool)

(assert (=> b!606220 (= e!347079 e!347078)))

(declare-fun res!389516 () Bool)

(assert (=> b!606220 (=> (not res!389516) (not e!347078))))

(declare-fun lt!276717 () SeekEntryResult!6312)

(assert (=> b!606220 (= res!389516 (or (= lt!276717 (MissingZero!6312 i!1108)) (= lt!276717 (MissingVacant!6312 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37233 (_ BitVec 32)) SeekEntryResult!6312)

(assert (=> b!606220 (= lt!276717 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!606221 () Bool)

(declare-fun res!389527 () Bool)

(assert (=> b!606221 (=> (not res!389527) (not e!347079))))

(assert (=> b!606221 (= res!389527 (validKeyInArray!0 k!1786))))

(declare-fun b!606222 () Bool)

(declare-fun res!389512 () Bool)

(assert (=> b!606222 (=> (not res!389512) (not e!347078))))

(assert (=> b!606222 (= res!389512 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17865 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!606223 () Bool)

(assert (=> b!606223 (= e!347085 e!347081)))

(declare-fun res!389514 () Bool)

(assert (=> b!606223 (=> (not res!389514) (not e!347081))))

(declare-fun lt!276721 () SeekEntryResult!6312)

(assert (=> b!606223 (= res!389514 (and (= lt!276721 (Found!6312 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17865 a!2986) index!984) (select (arr!17865 a!2986) j!136))) (not (= (select (arr!17865 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!606223 (= lt!276721 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17865 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!606224 () Bool)

(declare-fun e!347075 () Bool)

(assert (=> b!606224 (= e!347075 (arrayContainsKey!0 lt!276728 (select (arr!17865 a!2986) j!136) index!984))))

(declare-fun b!606225 () Bool)

(declare-fun res!389524 () Bool)

(assert (=> b!606225 (=> (not res!389524) (not e!347078))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37233 (_ BitVec 32)) Bool)

(assert (=> b!606225 (= res!389524 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!606226 () Bool)

(assert (=> b!606226 (= e!347084 e!347076)))

(declare-fun res!389523 () Bool)

(assert (=> b!606226 (=> res!389523 e!347076)))

(assert (=> b!606226 (= res!389523 (bvsge index!984 j!136))))

(declare-fun lt!276725 () Unit!19300)

(assert (=> b!606226 (= lt!276725 e!347071)))

(declare-fun c!68716 () Bool)

(assert (=> b!606226 (= c!68716 (bvslt j!136 index!984))))

(declare-fun b!606227 () Bool)

(declare-fun Unit!19303 () Unit!19300)

(assert (=> b!606227 (= e!347071 Unit!19303)))

(declare-fun lt!276723 () Unit!19300)

(assert (=> b!606227 (= lt!276723 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!276728 (select (arr!17865 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!606227 (arrayContainsKey!0 lt!276728 (select (arr!17865 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!276718 () Unit!19300)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37233 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11959) Unit!19300)

(assert (=> b!606227 (= lt!276718 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11956))))

(assert (=> b!606227 (arrayNoDuplicates!0 lt!276728 #b00000000000000000000000000000000 Nil!11956)))

(declare-fun lt!276724 () Unit!19300)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37233 (_ BitVec 32) (_ BitVec 32)) Unit!19300)

(assert (=> b!606227 (= lt!276724 (lemmaNoDuplicateFromThenFromBigger!0 lt!276728 #b00000000000000000000000000000000 j!136))))

(assert (=> b!606227 (arrayNoDuplicates!0 lt!276728 j!136 Nil!11956)))

(declare-fun lt!276729 () Unit!19300)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37233 (_ BitVec 64) (_ BitVec 32) List!11959) Unit!19300)

(assert (=> b!606227 (= lt!276729 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!276728 (select (arr!17865 a!2986) j!136) j!136 Nil!11956))))

(assert (=> b!606227 false))

(declare-fun b!606228 () Bool)

(declare-fun res!389521 () Bool)

(assert (=> b!606228 (=> (not res!389521) (not e!347079))))

(assert (=> b!606228 (= res!389521 (and (= (size!18229 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18229 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18229 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!606216 () Bool)

(assert (=> b!606216 (= e!347086 e!347075)))

(declare-fun res!389522 () Bool)

(assert (=> b!606216 (=> (not res!389522) (not e!347075))))

(assert (=> b!606216 (= res!389522 (arrayContainsKey!0 lt!276728 (select (arr!17865 a!2986) j!136) j!136))))

(declare-fun res!389525 () Bool)

(assert (=> start!55446 (=> (not res!389525) (not e!347079))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55446 (= res!389525 (validMask!0 mask!3053))))

(assert (=> start!55446 e!347079))

(assert (=> start!55446 true))

(declare-fun array_inv!13639 (array!37233) Bool)

(assert (=> start!55446 (array_inv!13639 a!2986)))

(declare-fun b!606229 () Bool)

(assert (=> b!606229 (= e!347080 (not (contains!3005 Nil!11956 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!606230 () Bool)

(assert (=> b!606230 (= e!347070 (= lt!276721 lt!276727))))

(declare-fun b!606231 () Bool)

(declare-fun Unit!19304 () Unit!19300)

(assert (=> b!606231 (= e!347082 Unit!19304)))

(declare-fun b!606232 () Bool)

(declare-fun Unit!19305 () Unit!19300)

(assert (=> b!606232 (= e!347082 Unit!19305)))

(assert (=> b!606232 false))

(declare-fun b!606233 () Bool)

(declare-fun res!389531 () Bool)

(assert (=> b!606233 (=> res!389531 e!347077)))

(declare-fun noDuplicate!307 (List!11959) Bool)

(assert (=> b!606233 (= res!389531 (not (noDuplicate!307 Nil!11956)))))

(assert (= (and start!55446 res!389525) b!606228))

(assert (= (and b!606228 res!389521) b!606208))

(assert (= (and b!606208 res!389529) b!606221))

(assert (= (and b!606221 res!389527) b!606215))

(assert (= (and b!606215 res!389510) b!606220))

(assert (= (and b!606220 res!389516) b!606225))

(assert (= (and b!606225 res!389524) b!606214))

(assert (= (and b!606214 res!389530) b!606222))

(assert (= (and b!606222 res!389512) b!606212))

(assert (= (and b!606212 res!389511) b!606223))

(assert (= (and b!606223 res!389514) b!606219))

(assert (= (and b!606219 res!389528) b!606230))

(assert (= (and b!606219 c!68717) b!606232))

(assert (= (and b!606219 (not c!68717)) b!606231))

(assert (= (and b!606219 (not res!389513)) b!606209))

(assert (= (and b!606209 res!389519) b!606211))

(assert (= (and b!606211 (not res!389526)) b!606216))

(assert (= (and b!606216 res!389522) b!606224))

(assert (= (and b!606209 (not res!389515)) b!606226))

(assert (= (and b!606226 c!68716) b!606227))

(assert (= (and b!606226 (not c!68716)) b!606210))

(assert (= (and b!606226 (not res!389523)) b!606218))

(assert (= (and b!606218 res!389518) b!606217))

(assert (= (and b!606218 (not res!389520)) b!606233))

(assert (= (and b!606233 (not res!389531)) b!606213))

(assert (= (and b!606213 res!389517) b!606229))

(declare-fun m!583071 () Bool)

(assert (=> b!606208 m!583071))

(assert (=> b!606208 m!583071))

(declare-fun m!583073 () Bool)

(assert (=> b!606208 m!583073))

(assert (=> b!606227 m!583071))

(declare-fun m!583075 () Bool)

(assert (=> b!606227 m!583075))

(assert (=> b!606227 m!583071))

(assert (=> b!606227 m!583071))

(declare-fun m!583077 () Bool)

(assert (=> b!606227 m!583077))

(assert (=> b!606227 m!583071))

(declare-fun m!583079 () Bool)

(assert (=> b!606227 m!583079))

(declare-fun m!583081 () Bool)

(assert (=> b!606227 m!583081))

(declare-fun m!583083 () Bool)

(assert (=> b!606227 m!583083))

(declare-fun m!583085 () Bool)

(assert (=> b!606227 m!583085))

(declare-fun m!583087 () Bool)

(assert (=> b!606227 m!583087))

(assert (=> b!606216 m!583071))

(assert (=> b!606216 m!583071))

(declare-fun m!583089 () Bool)

(assert (=> b!606216 m!583089))

(declare-fun m!583091 () Bool)

(assert (=> b!606229 m!583091))

(declare-fun m!583093 () Bool)

(assert (=> b!606220 m!583093))

(assert (=> b!606218 m!583071))

(assert (=> b!606218 m!583071))

(declare-fun m!583095 () Bool)

(assert (=> b!606218 m!583095))

(assert (=> b!606218 m!583071))

(declare-fun m!583097 () Bool)

(assert (=> b!606218 m!583097))

(assert (=> b!606218 m!583071))

(assert (=> b!606218 m!583089))

(declare-fun m!583099 () Bool)

(assert (=> b!606215 m!583099))

(assert (=> b!606217 m!583071))

(assert (=> b!606217 m!583071))

(declare-fun m!583101 () Bool)

(assert (=> b!606217 m!583101))

(declare-fun m!583103 () Bool)

(assert (=> b!606214 m!583103))

(declare-fun m!583105 () Bool)

(assert (=> b!606233 m!583105))

(declare-fun m!583107 () Bool)

(assert (=> b!606225 m!583107))

(declare-fun m!583109 () Bool)

(assert (=> start!55446 m!583109))

(declare-fun m!583111 () Bool)

(assert (=> start!55446 m!583111))

(declare-fun m!583113 () Bool)

(assert (=> b!606221 m!583113))

(assert (=> b!606211 m!583071))

(declare-fun m!583115 () Bool)

(assert (=> b!606219 m!583115))

(declare-fun m!583117 () Bool)

(assert (=> b!606219 m!583117))

(assert (=> b!606219 m!583071))

(declare-fun m!583119 () Bool)

(assert (=> b!606219 m!583119))

(declare-fun m!583121 () Bool)

(assert (=> b!606219 m!583121))

(declare-fun m!583123 () Bool)

(assert (=> b!606219 m!583123))

(assert (=> b!606219 m!583071))

(declare-fun m!583125 () Bool)

(assert (=> b!606219 m!583125))

(declare-fun m!583127 () Bool)

(assert (=> b!606219 m!583127))

(declare-fun m!583129 () Bool)

(assert (=> b!606213 m!583129))

(assert (=> b!606212 m!583127))

(declare-fun m!583131 () Bool)

(assert (=> b!606212 m!583131))

(declare-fun m!583133 () Bool)

(assert (=> b!606222 m!583133))

(declare-fun m!583135 () Bool)

(assert (=> b!606223 m!583135))

(assert (=> b!606223 m!583071))

(assert (=> b!606223 m!583071))

(declare-fun m!583137 () Bool)

(assert (=> b!606223 m!583137))

(assert (=> b!606224 m!583071))

(assert (=> b!606224 m!583071))

(assert (=> b!606224 m!583101))

(assert (=> b!606209 m!583071))

(assert (=> b!606209 m!583127))

(declare-fun m!583139 () Bool)

(assert (=> b!606209 m!583139))

(push 1)

(assert (not b!606216))

(assert (not b!606220))

(assert (not b!606225))

(assert (not b!606221))

(assert (not b!606208))

(assert (not b!606223))

(assert (not b!606214))

(assert (not b!606227))

(assert (not b!606233))

(assert (not b!606218))

(assert (not start!55446))

(assert (not b!606213))

(assert (not b!606229))

(assert (not b!606219))

(assert (not b!606224))

(assert (not b!606215))

(assert (not b!606217))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun e!347266 () SeekEntryResult!6312)

(declare-fun b!606499 () Bool)

(assert (=> b!606499 (= e!347266 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 (select (arr!17865 a!2986) j!136) a!2986 mask!3053))))

(declare-fun lt!276859 () SeekEntryResult!6312)

(declare-fun d!87785 () Bool)

(assert (=> d!87785 (and (or (is-Undefined!6312 lt!276859) (not (is-Found!6312 lt!276859)) (and (bvsge (index!27520 lt!276859) #b00000000000000000000000000000000) (bvslt (index!27520 lt!276859) (size!18229 a!2986)))) (or (is-Undefined!6312 lt!276859) (is-Found!6312 lt!276859) (not (is-MissingVacant!6312 lt!276859)) (not (= (index!27522 lt!276859) vacantSpotIndex!68)) (and (bvsge (index!27522 lt!276859) #b00000000000000000000000000000000) (bvslt (index!27522 lt!276859) (size!18229 a!2986)))) (or (is-Undefined!6312 lt!276859) (ite (is-Found!6312 lt!276859) (= (select (arr!17865 a!2986) (index!27520 lt!276859)) (select (arr!17865 a!2986) j!136)) (and (is-MissingVacant!6312 lt!276859) (= (index!27522 lt!276859) vacantSpotIndex!68) (= (select (arr!17865 a!2986) (index!27522 lt!276859)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!347267 () SeekEntryResult!6312)

(assert (=> d!87785 (= lt!276859 e!347267)))

(declare-fun c!68764 () Bool)

(assert (=> d!87785 (= c!68764 (bvsge x!910 #b01111111111111111111111111111110))))

(declare-fun lt!276858 () (_ BitVec 64))

(assert (=> d!87785 (= lt!276858 (select (arr!17865 a!2986) index!984))))

(assert (=> d!87785 (validMask!0 mask!3053)))

(assert (=> d!87785 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17865 a!2986) j!136) a!2986 mask!3053) lt!276859)))

(declare-fun b!606500 () Bool)

(declare-fun c!68765 () Bool)

(assert (=> b!606500 (= c!68765 (= lt!276858 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!347265 () SeekEntryResult!6312)

(assert (=> b!606500 (= e!347265 e!347266)))

(declare-fun b!606501 () Bool)

(assert (=> b!606501 (= e!347266 (MissingVacant!6312 vacantSpotIndex!68))))

(declare-fun b!606502 () Bool)

(assert (=> b!606502 (= e!347265 (Found!6312 index!984))))

(declare-fun b!606503 () Bool)

(assert (=> b!606503 (= e!347267 e!347265)))

(declare-fun c!68763 () Bool)

(assert (=> b!606503 (= c!68763 (= lt!276858 (select (arr!17865 a!2986) j!136)))))

(declare-fun b!606504 () Bool)

(assert (=> b!606504 (= e!347267 Undefined!6312)))

(assert (= (and d!87785 c!68764) b!606504))

(assert (= (and d!87785 (not c!68764)) b!606503))

(assert (= (and b!606503 c!68763) b!606502))

(assert (= (and b!606503 (not c!68763)) b!606500))

(assert (= (and b!606500 c!68765) b!606501))

(assert (= (and b!606500 (not c!68765)) b!606499))

(assert (=> b!606499 m!583121))

(assert (=> b!606499 m!583121))

(assert (=> b!606499 m!583071))

(declare-fun m!583341 () Bool)

(assert (=> b!606499 m!583341))

(declare-fun m!583343 () Bool)

(assert (=> d!87785 m!583343))

(declare-fun m!583345 () Bool)

(assert (=> d!87785 m!583345))

(assert (=> d!87785 m!583135))

(assert (=> d!87785 m!583109))

(assert (=> b!606223 d!87785))

(declare-fun d!87803 () Bool)

(declare-fun res!389713 () Bool)

(declare-fun e!347277 () Bool)

(assert (=> d!87803 (=> res!389713 e!347277)))

(assert (=> d!87803 (= res!389713 (is-Nil!11956 Nil!11956))))

(assert (=> d!87803 (= (noDuplicate!307 Nil!11956) e!347277)))

(declare-fun b!606517 () Bool)

(declare-fun e!347278 () Bool)

(assert (=> b!606517 (= e!347277 e!347278)))

(declare-fun res!389714 () Bool)

(assert (=> b!606517 (=> (not res!389714) (not e!347278))))

(assert (=> b!606517 (= res!389714 (not (contains!3005 (t!18195 Nil!11956) (h!13000 Nil!11956))))))

(declare-fun b!606518 () Bool)

(assert (=> b!606518 (= e!347278 (noDuplicate!307 (t!18195 Nil!11956)))))

(assert (= (and d!87803 (not res!389713)) b!606517))

(assert (= (and b!606517 res!389714) b!606518))

(declare-fun m!583347 () Bool)

(assert (=> b!606517 m!583347))

(declare-fun m!583349 () Bool)

(assert (=> b!606518 m!583349))

(assert (=> b!606233 d!87803))

(declare-fun d!87805 () Bool)

(declare-fun res!389728 () Bool)

(declare-fun e!347302 () Bool)

(assert (=> d!87805 (=> res!389728 e!347302)))

(assert (=> d!87805 (= res!389728 (bvsge #b00000000000000000000000000000000 (size!18229 a!2986)))))

(assert (=> d!87805 (= (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11956) e!347302)))

(declare-fun b!606546 () Bool)

(declare-fun e!347300 () Bool)

(declare-fun e!347299 () Bool)

(assert (=> b!606546 (= e!347300 e!347299)))

(declare-fun c!68776 () Bool)

(assert (=> b!606546 (= c!68776 (validKeyInArray!0 (select (arr!17865 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!606547 () Bool)

(assert (=> b!606547 (= e!347302 e!347300)))

(declare-fun res!389729 () Bool)

(assert (=> b!606547 (=> (not res!389729) (not e!347300))))

(declare-fun e!347301 () Bool)

(assert (=> b!606547 (= res!389729 (not e!347301))))

(declare-fun res!389730 () Bool)

(assert (=> b!606547 (=> (not res!389730) (not e!347301))))

(assert (=> b!606547 (= res!389730 (validKeyInArray!0 (select (arr!17865 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!606548 () Bool)

(declare-fun call!33088 () Bool)

(assert (=> b!606548 (= e!347299 call!33088)))

(declare-fun b!606549 () Bool)

(assert (=> b!606549 (= e!347299 call!33088)))

(declare-fun bm!33085 () Bool)

(assert (=> bm!33085 (= call!33088 (arrayNoDuplicates!0 a!2986 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!68776 (Cons!11955 (select (arr!17865 a!2986) #b00000000000000000000000000000000) Nil!11956) Nil!11956)))))

(declare-fun b!606550 () Bool)

(assert (=> b!606550 (= e!347301 (contains!3005 Nil!11956 (select (arr!17865 a!2986) #b00000000000000000000000000000000)))))

(assert (= (and d!87805 (not res!389728)) b!606547))

(assert (= (and b!606547 res!389730) b!606550))

(assert (= (and b!606547 res!389729) b!606546))

(assert (= (and b!606546 c!68776) b!606549))

(assert (= (and b!606546 (not c!68776)) b!606548))

(assert (= (or b!606549 b!606548) bm!33085))

(declare-fun m!583393 () Bool)

(assert (=> b!606546 m!583393))

(assert (=> b!606546 m!583393))

(declare-fun m!583395 () Bool)

(assert (=> b!606546 m!583395))

(assert (=> b!606547 m!583393))

(assert (=> b!606547 m!583393))

(assert (=> b!606547 m!583395))

(assert (=> bm!33085 m!583393))

(declare-fun m!583397 () Bool)

(assert (=> bm!33085 m!583397))

(assert (=> b!606550 m!583393))

(assert (=> b!606550 m!583393))

(declare-fun m!583399 () Bool)

(assert (=> b!606550 m!583399))

(assert (=> b!606214 d!87805))

(declare-fun d!87821 () Bool)

(declare-fun lt!276875 () Bool)

(declare-fun content!239 (List!11959) (Set (_ BitVec 64)))

(assert (=> d!87821 (= lt!276875 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!239 Nil!11956)))))

(declare-fun e!347308 () Bool)

(assert (=> d!87821 (= lt!276875 e!347308)))

(declare-fun res!389736 () Bool)

(assert (=> d!87821 (=> (not res!389736) (not e!347308))))

(assert (=> d!87821 (= res!389736 (is-Cons!11955 Nil!11956))))

(assert (=> d!87821 (= (contains!3005 Nil!11956 #b0000000000000000000000000000000000000000000000000000000000000000) lt!276875)))

(declare-fun b!606555 () Bool)

(declare-fun e!347307 () Bool)

(assert (=> b!606555 (= e!347308 e!347307)))

(declare-fun res!389735 () Bool)

(assert (=> b!606555 (=> res!389735 e!347307)))

(assert (=> b!606555 (= res!389735 (= (h!13000 Nil!11956) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!606556 () Bool)

(assert (=> b!606556 (= e!347307 (contains!3005 (t!18195 Nil!11956) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!87821 res!389736) b!606555))

(assert (= (and b!606555 (not res!389735)) b!606556))

(declare-fun m!583401 () Bool)

(assert (=> d!87821 m!583401))

(declare-fun m!583403 () Bool)

(assert (=> d!87821 m!583403))

(declare-fun m!583405 () Bool)

(assert (=> b!606556 m!583405))

(assert (=> b!606213 d!87821))

(declare-fun d!87823 () Bool)

(declare-fun res!389741 () Bool)

(declare-fun e!347313 () Bool)

(assert (=> d!87823 (=> res!389741 e!347313)))

(assert (=> d!87823 (= res!389741 (= (select (arr!17865 lt!276728) index!984) (select (arr!17865 a!2986) j!136)))))

(assert (=> d!87823 (= (arrayContainsKey!0 lt!276728 (select (arr!17865 a!2986) j!136) index!984) e!347313)))

(declare-fun b!606561 () Bool)

(declare-fun e!347314 () Bool)

(assert (=> b!606561 (= e!347313 e!347314)))

(declare-fun res!389742 () Bool)

(assert (=> b!606561 (=> (not res!389742) (not e!347314))))

(assert (=> b!606561 (= res!389742 (bvslt (bvadd index!984 #b00000000000000000000000000000001) (size!18229 lt!276728)))))

(declare-fun b!606562 () Bool)

(assert (=> b!606562 (= e!347314 (arrayContainsKey!0 lt!276728 (select (arr!17865 a!2986) j!136) (bvadd index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!87823 (not res!389741)) b!606561))

(assert (= (and b!606561 res!389742) b!606562))

(declare-fun m!583407 () Bool)

(assert (=> d!87823 m!583407))

(assert (=> b!606562 m!583071))

(declare-fun m!583409 () Bool)

(assert (=> b!606562 m!583409))

(assert (=> b!606224 d!87823))

(declare-fun d!87825 () Bool)

(declare-fun res!389743 () Bool)

(declare-fun e!347315 () Bool)

(assert (=> d!87825 (=> res!389743 e!347315)))

(assert (=> d!87825 (= res!389743 (= (select (arr!17865 a!2986) #b00000000000000000000000000000000) k!1786))))

(assert (=> d!87825 (= (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000) e!347315)))

(declare-fun b!606563 () Bool)

(declare-fun e!347316 () Bool)

(assert (=> b!606563 (= e!347315 e!347316)))

(declare-fun res!389744 () Bool)

(assert (=> b!606563 (=> (not res!389744) (not e!347316))))

(assert (=> b!606563 (= res!389744 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!18229 a!2986)))))

(declare-fun b!606564 () Bool)

(assert (=> b!606564 (= e!347316 (arrayContainsKey!0 a!2986 k!1786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!87825 (not res!389743)) b!606563))

(assert (= (and b!606563 res!389744) b!606564))

(assert (=> d!87825 m!583393))

(declare-fun m!583411 () Bool)

(assert (=> b!606564 m!583411))

(assert (=> b!606215 d!87825))

(declare-fun b!606593 () Bool)

(declare-fun e!347338 () Bool)

(declare-fun e!347339 () Bool)

(assert (=> b!606593 (= e!347338 e!347339)))

(declare-fun c!68785 () Bool)

(assert (=> b!606593 (= c!68785 (validKeyInArray!0 (select (arr!17865 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!606594 () Bool)

(declare-fun e!347337 () Bool)

(assert (=> b!606594 (= e!347339 e!347337)))

(declare-fun lt!276897 () (_ BitVec 64))

(assert (=> b!606594 (= lt!276897 (select (arr!17865 a!2986) #b00000000000000000000000000000000))))

(declare-fun lt!276896 () Unit!19300)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!37233 (_ BitVec 64) (_ BitVec 32)) Unit!19300)

(assert (=> b!606594 (= lt!276896 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2986 lt!276897 #b00000000000000000000000000000000))))

(assert (=> b!606594 (arrayContainsKey!0 a!2986 lt!276897 #b00000000000000000000000000000000)))

(declare-fun lt!276895 () Unit!19300)

(assert (=> b!606594 (= lt!276895 lt!276896)))

(declare-fun res!389758 () Bool)

(assert (=> b!606594 (= res!389758 (= (seekEntryOrOpen!0 (select (arr!17865 a!2986) #b00000000000000000000000000000000) a!2986 mask!3053) (Found!6312 #b00000000000000000000000000000000)))))

(assert (=> b!606594 (=> (not res!389758) (not e!347337))))

(declare-fun bm!33088 () Bool)

(declare-fun call!33091 () Bool)

(assert (=> bm!33088 (= call!33091 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2986 mask!3053))))

(declare-fun b!606595 () Bool)

(assert (=> b!606595 (= e!347339 call!33091)))

(declare-fun b!606596 () Bool)

(assert (=> b!606596 (= e!347337 call!33091)))

(declare-fun d!87827 () Bool)

(declare-fun res!389757 () Bool)

(assert (=> d!87827 (=> res!389757 e!347338)))

(assert (=> d!87827 (= res!389757 (bvsge #b00000000000000000000000000000000 (size!18229 a!2986)))))

(assert (=> d!87827 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053) e!347338)))

(assert (= (and d!87827 (not res!389757)) b!606593))

(assert (= (and b!606593 c!68785) b!606594))

(assert (= (and b!606593 (not c!68785)) b!606595))

(assert (= (and b!606594 res!389758) b!606596))

(assert (= (or b!606596 b!606595) bm!33088))

(assert (=> b!606593 m!583393))

(assert (=> b!606593 m!583393))

(assert (=> b!606593 m!583395))

(assert (=> b!606594 m!583393))

(declare-fun m!583445 () Bool)

(assert (=> b!606594 m!583445))

(declare-fun m!583447 () Bool)

(assert (=> b!606594 m!583447))

(assert (=> b!606594 m!583393))

(declare-fun m!583449 () Bool)

(assert (=> b!606594 m!583449))

(declare-fun m!583451 () Bool)

(assert (=> bm!33088 m!583451))

(assert (=> b!606225 d!87827))

(declare-fun d!87845 () Bool)

(assert (=> d!87845 (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18229 lt!276728)) (not (= (select (arr!17865 lt!276728) j!136) (select (arr!17865 a!2986) j!136))))))

(declare-fun lt!276906 () Unit!19300)

(declare-fun choose!21 (array!37233 (_ BitVec 64) (_ BitVec 32) List!11959) Unit!19300)

(assert (=> d!87845 (= lt!276906 (choose!21 lt!276728 (select (arr!17865 a!2986) j!136) j!136 Nil!11956))))

(assert (=> d!87845 (bvslt (size!18229 lt!276728) #b01111111111111111111111111111111)))

(assert (=> d!87845 (= (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!276728 (select (arr!17865 a!2986) j!136) j!136 Nil!11956) lt!276906)))

(declare-fun bs!18557 () Bool)

(assert (= bs!18557 d!87845))

(declare-fun m!583477 () Bool)

(assert (=> bs!18557 m!583477))

(assert (=> bs!18557 m!583071))

(declare-fun m!583479 () Bool)

(assert (=> bs!18557 m!583479))

(assert (=> b!606227 d!87845))

(declare-fun d!87857 () Bool)

(assert (=> d!87857 (arrayNoDuplicates!0 lt!276728 j!136 Nil!11956)))

(declare-fun lt!276909 () Unit!19300)

(declare-fun choose!39 (array!37233 (_ BitVec 32) (_ BitVec 32)) Unit!19300)

(assert (=> d!87857 (= lt!276909 (choose!39 lt!276728 #b00000000000000000000000000000000 j!136))))

(assert (=> d!87857 (bvslt (size!18229 lt!276728) #b01111111111111111111111111111111)))

(assert (=> d!87857 (= (lemmaNoDuplicateFromThenFromBigger!0 lt!276728 #b00000000000000000000000000000000 j!136) lt!276909)))

(declare-fun bs!18558 () Bool)

(assert (= bs!18558 d!87857))

(assert (=> bs!18558 m!583085))

(declare-fun m!583481 () Bool)

(assert (=> bs!18558 m!583481))

(assert (=> b!606227 d!87857))

(declare-fun d!87859 () Bool)

(assert (=> d!87859 (arrayContainsKey!0 lt!276728 (select (arr!17865 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!276912 () Unit!19300)

(declare-fun choose!114 (array!37233 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19300)

(assert (=> d!87859 (= lt!276912 (choose!114 lt!276728 (select (arr!17865 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> d!87859 (bvsge index!984 #b00000000000000000000000000000000)))

(assert (=> d!87859 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!276728 (select (arr!17865 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)) lt!276912)))

(declare-fun bs!18559 () Bool)

(assert (= bs!18559 d!87859))

(assert (=> bs!18559 m!583071))

(assert (=> bs!18559 m!583079))

(assert (=> bs!18559 m!583071))

(declare-fun m!583483 () Bool)

(assert (=> bs!18559 m!583483))

(assert (=> b!606227 d!87859))

(declare-fun d!87865 () Bool)

(declare-fun res!389765 () Bool)

(declare-fun e!347352 () Bool)

(assert (=> d!87865 (=> res!389765 e!347352)))

(assert (=> d!87865 (= res!389765 (= (select (arr!17865 lt!276728) (bvadd #b00000000000000000000000000000001 j!136)) (select (arr!17865 a!2986) j!136)))))

(assert (=> d!87865 (= (arrayContainsKey!0 lt!276728 (select (arr!17865 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136)) e!347352)))

(declare-fun b!606617 () Bool)

(declare-fun e!347353 () Bool)

(assert (=> b!606617 (= e!347352 e!347353)))

(declare-fun res!389766 () Bool)

(assert (=> b!606617 (=> (not res!389766) (not e!347353))))

(assert (=> b!606617 (= res!389766 (bvslt (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001) (size!18229 lt!276728)))))

(declare-fun b!606618 () Bool)

(assert (=> b!606618 (= e!347353 (arrayContainsKey!0 lt!276728 (select (arr!17865 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!87865 (not res!389765)) b!606617))

(assert (= (and b!606617 res!389766) b!606618))

(declare-fun m!583485 () Bool)

(assert (=> d!87865 m!583485))

(assert (=> b!606618 m!583071))

(declare-fun m!583487 () Bool)

(assert (=> b!606618 m!583487))

(assert (=> b!606227 d!87865))

(declare-fun d!87867 () Bool)

(declare-fun res!389769 () Bool)

(declare-fun e!347361 () Bool)

(assert (=> d!87867 (=> res!389769 e!347361)))

(assert (=> d!87867 (= res!389769 (bvsge #b00000000000000000000000000000000 (size!18229 lt!276728)))))

(assert (=> d!87867 (= (arrayNoDuplicates!0 lt!276728 #b00000000000000000000000000000000 Nil!11956) e!347361)))

(declare-fun b!606623 () Bool)

(declare-fun e!347359 () Bool)

(declare-fun e!347358 () Bool)

(assert (=> b!606623 (= e!347359 e!347358)))

(declare-fun c!68794 () Bool)

(assert (=> b!606623 (= c!68794 (validKeyInArray!0 (select (arr!17865 lt!276728) #b00000000000000000000000000000000)))))

(declare-fun b!606624 () Bool)

(assert (=> b!606624 (= e!347361 e!347359)))

(declare-fun res!389770 () Bool)

(assert (=> b!606624 (=> (not res!389770) (not e!347359))))

(declare-fun e!347360 () Bool)

(assert (=> b!606624 (= res!389770 (not e!347360))))

(declare-fun res!389771 () Bool)

(assert (=> b!606624 (=> (not res!389771) (not e!347360))))

(assert (=> b!606624 (= res!389771 (validKeyInArray!0 (select (arr!17865 lt!276728) #b00000000000000000000000000000000)))))

(declare-fun b!606625 () Bool)

(declare-fun call!33092 () Bool)

(assert (=> b!606625 (= e!347358 call!33092)))

(declare-fun b!606626 () Bool)

(assert (=> b!606626 (= e!347358 call!33092)))

(declare-fun bm!33089 () Bool)

(assert (=> bm!33089 (= call!33092 (arrayNoDuplicates!0 lt!276728 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!68794 (Cons!11955 (select (arr!17865 lt!276728) #b00000000000000000000000000000000) Nil!11956) Nil!11956)))))

(declare-fun b!606627 () Bool)

(assert (=> b!606627 (= e!347360 (contains!3005 Nil!11956 (select (arr!17865 lt!276728) #b00000000000000000000000000000000)))))

(assert (= (and d!87867 (not res!389769)) b!606624))

(assert (= (and b!606624 res!389771) b!606627))

(assert (= (and b!606624 res!389770) b!606623))

(assert (= (and b!606623 c!68794) b!606626))

(assert (= (and b!606623 (not c!68794)) b!606625))

(assert (= (or b!606626 b!606625) bm!33089))

(declare-fun m!583489 () Bool)

(assert (=> b!606623 m!583489))

(assert (=> b!606623 m!583489))

(declare-fun m!583491 () Bool)

(assert (=> b!606623 m!583491))

(assert (=> b!606624 m!583489))

(assert (=> b!606624 m!583489))

(assert (=> b!606624 m!583491))

(assert (=> bm!33089 m!583489))

(declare-fun m!583493 () Bool)

(assert (=> bm!33089 m!583493))

(assert (=> b!606627 m!583489))

(assert (=> b!606627 m!583489))

(declare-fun m!583495 () Bool)

(assert (=> b!606627 m!583495))

(assert (=> b!606227 d!87867))

(declare-fun d!87869 () Bool)

(declare-fun res!389772 () Bool)

(declare-fun e!347365 () Bool)

(assert (=> d!87869 (=> res!389772 e!347365)))

(assert (=> d!87869 (= res!389772 (bvsge j!136 (size!18229 lt!276728)))))

(assert (=> d!87869 (= (arrayNoDuplicates!0 lt!276728 j!136 Nil!11956) e!347365)))

(declare-fun b!606628 () Bool)

(declare-fun e!347363 () Bool)

(declare-fun e!347362 () Bool)

(assert (=> b!606628 (= e!347363 e!347362)))

(declare-fun c!68795 () Bool)

(assert (=> b!606628 (= c!68795 (validKeyInArray!0 (select (arr!17865 lt!276728) j!136)))))

(declare-fun b!606629 () Bool)

(assert (=> b!606629 (= e!347365 e!347363)))

(declare-fun res!389773 () Bool)

(assert (=> b!606629 (=> (not res!389773) (not e!347363))))

(declare-fun e!347364 () Bool)

(assert (=> b!606629 (= res!389773 (not e!347364))))

(declare-fun res!389774 () Bool)

