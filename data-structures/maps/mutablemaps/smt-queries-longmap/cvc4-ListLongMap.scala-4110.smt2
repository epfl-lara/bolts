; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56170 () Bool)

(assert start!56170)

(declare-fun b!621111 () Bool)

(declare-fun res!400360 () Bool)

(declare-fun e!356248 () Bool)

(assert (=> b!621111 (=> (not res!400360) (not e!356248))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!37603 0))(
  ( (array!37604 (arr!18044 (Array (_ BitVec 32) (_ BitVec 64))) (size!18408 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37603)

(assert (=> b!621111 (= res!400360 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18044 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!621112 () Bool)

(declare-datatypes ((Unit!20730 0))(
  ( (Unit!20731) )
))
(declare-fun e!356244 () Unit!20730)

(declare-fun Unit!20732 () Unit!20730)

(assert (=> b!621112 (= e!356244 Unit!20732)))

(declare-fun b!621113 () Bool)

(assert (=> b!621113 false))

(declare-fun lt!287422 () Unit!20730)

(declare-fun lt!287418 () array!37603)

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((List!12138 0))(
  ( (Nil!12135) (Cons!12134 (h!13179 (_ BitVec 64)) (t!18374 List!12138)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37603 (_ BitVec 64) (_ BitVec 32) List!12138) Unit!20730)

(assert (=> b!621113 (= lt!287422 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!287418 (select (arr!18044 a!2986) j!136) index!984 Nil!12135))))

(declare-fun arrayNoDuplicates!0 (array!37603 (_ BitVec 32) List!12138) Bool)

(assert (=> b!621113 (arrayNoDuplicates!0 lt!287418 index!984 Nil!12135)))

(declare-fun lt!287419 () Unit!20730)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37603 (_ BitVec 32) (_ BitVec 32)) Unit!20730)

(assert (=> b!621113 (= lt!287419 (lemmaNoDuplicateFromThenFromBigger!0 lt!287418 #b00000000000000000000000000000000 index!984))))

(assert (=> b!621113 (arrayNoDuplicates!0 lt!287418 #b00000000000000000000000000000000 Nil!12135)))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun lt!287433 () Unit!20730)

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37603 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12138) Unit!20730)

(assert (=> b!621113 (= lt!287433 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12135))))

(declare-fun arrayContainsKey!0 (array!37603 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!621113 (arrayContainsKey!0 lt!287418 (select (arr!18044 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!287426 () Unit!20730)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37603 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!20730)

(assert (=> b!621113 (= lt!287426 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!287418 (select (arr!18044 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!356246 () Bool)

(assert (=> b!621113 e!356246))

(declare-fun res!400358 () Bool)

(assert (=> b!621113 (=> (not res!400358) (not e!356246))))

(assert (=> b!621113 (= res!400358 (arrayContainsKey!0 lt!287418 (select (arr!18044 a!2986) j!136) j!136))))

(declare-fun e!356255 () Unit!20730)

(declare-fun Unit!20733 () Unit!20730)

(assert (=> b!621113 (= e!356255 Unit!20733)))

(declare-fun res!400355 () Bool)

(declare-fun e!356251 () Bool)

(assert (=> start!56170 (=> (not res!400355) (not e!356251))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56170 (= res!400355 (validMask!0 mask!3053))))

(assert (=> start!56170 e!356251))

(assert (=> start!56170 true))

(declare-fun array_inv!13818 (array!37603) Bool)

(assert (=> start!56170 (array_inv!13818 a!2986)))

(declare-fun b!621114 () Bool)

(declare-fun e!356256 () Unit!20730)

(declare-fun Unit!20734 () Unit!20730)

(assert (=> b!621114 (= e!356256 Unit!20734)))

(declare-fun b!621115 () Bool)

(declare-fun Unit!20735 () Unit!20730)

(assert (=> b!621115 (= e!356244 Unit!20735)))

(declare-fun res!400361 () Bool)

(assert (=> b!621115 (= res!400361 (= (select (store (arr!18044 a!2986) i!1108 k!1786) index!984) (select (arr!18044 a!2986) j!136)))))

(declare-fun e!356252 () Bool)

(assert (=> b!621115 (=> (not res!400361) (not e!356252))))

(assert (=> b!621115 e!356252))

(declare-fun c!70751 () Bool)

(assert (=> b!621115 (= c!70751 (bvslt j!136 index!984))))

(declare-fun lt!287436 () Unit!20730)

(assert (=> b!621115 (= lt!287436 e!356256)))

(declare-fun c!70748 () Bool)

(assert (=> b!621115 (= c!70748 (bvslt index!984 j!136))))

(declare-fun lt!287421 () Unit!20730)

(assert (=> b!621115 (= lt!287421 e!356255)))

(assert (=> b!621115 false))

(declare-fun b!621116 () Bool)

(declare-fun res!400351 () Bool)

(assert (=> b!621116 (= res!400351 (bvsge j!136 index!984))))

(declare-fun e!356254 () Bool)

(assert (=> b!621116 (=> res!400351 e!356254)))

(assert (=> b!621116 (= e!356252 e!356254)))

(declare-fun b!621117 () Bool)

(declare-fun e!356250 () Bool)

(assert (=> b!621117 (= e!356248 e!356250)))

(declare-fun res!400354 () Bool)

(assert (=> b!621117 (=> (not res!400354) (not e!356250))))

(assert (=> b!621117 (= res!400354 (= (select (store (arr!18044 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!621117 (= lt!287418 (array!37604 (store (arr!18044 a!2986) i!1108 k!1786) (size!18408 a!2986)))))

(declare-fun b!621118 () Bool)

(declare-fun e!356247 () Bool)

(declare-datatypes ((SeekEntryResult!6491 0))(
  ( (MissingZero!6491 (index!28247 (_ BitVec 32))) (Found!6491 (index!28248 (_ BitVec 32))) (Intermediate!6491 (undefined!7303 Bool) (index!28249 (_ BitVec 32)) (x!57044 (_ BitVec 32))) (Undefined!6491) (MissingVacant!6491 (index!28250 (_ BitVec 32))) )
))
(declare-fun lt!287420 () SeekEntryResult!6491)

(declare-fun lt!287431 () SeekEntryResult!6491)

(assert (=> b!621118 (= e!356247 (= lt!287420 lt!287431))))

(declare-fun b!621119 () Bool)

(assert (=> b!621119 (= e!356246 (arrayContainsKey!0 lt!287418 (select (arr!18044 a!2986) j!136) index!984))))

(declare-fun b!621120 () Bool)

(declare-fun Unit!20736 () Unit!20730)

(assert (=> b!621120 (= e!356255 Unit!20736)))

(declare-fun b!621121 () Bool)

(declare-fun res!400349 () Bool)

(assert (=> b!621121 (=> (not res!400349) (not e!356251))))

(assert (=> b!621121 (= res!400349 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!621122 () Bool)

(declare-fun res!400364 () Bool)

(assert (=> b!621122 (=> (not res!400364) (not e!356251))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!621122 (= res!400364 (validKeyInArray!0 (select (arr!18044 a!2986) j!136)))))

(declare-fun b!621123 () Bool)

(declare-fun e!356249 () Bool)

(assert (=> b!621123 (= e!356249 (arrayContainsKey!0 lt!287418 (select (arr!18044 a!2986) j!136) index!984))))

(declare-fun b!621124 () Bool)

(declare-fun res!400350 () Bool)

(assert (=> b!621124 (=> (not res!400350) (not e!356248))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37603 (_ BitVec 32)) Bool)

(assert (=> b!621124 (= res!400350 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!621125 () Bool)

(assert (=> b!621125 (= e!356251 e!356248)))

(declare-fun res!400352 () Bool)

(assert (=> b!621125 (=> (not res!400352) (not e!356248))))

(declare-fun lt!287434 () SeekEntryResult!6491)

(assert (=> b!621125 (= res!400352 (or (= lt!287434 (MissingZero!6491 i!1108)) (= lt!287434 (MissingVacant!6491 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37603 (_ BitVec 32)) SeekEntryResult!6491)

(assert (=> b!621125 (= lt!287434 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!621126 () Bool)

(assert (=> b!621126 false))

(declare-fun lt!287428 () Unit!20730)

(assert (=> b!621126 (= lt!287428 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!287418 (select (arr!18044 a!2986) j!136) j!136 Nil!12135))))

(assert (=> b!621126 (arrayNoDuplicates!0 lt!287418 j!136 Nil!12135)))

(declare-fun lt!287430 () Unit!20730)

(assert (=> b!621126 (= lt!287430 (lemmaNoDuplicateFromThenFromBigger!0 lt!287418 #b00000000000000000000000000000000 j!136))))

(assert (=> b!621126 (arrayNoDuplicates!0 lt!287418 #b00000000000000000000000000000000 Nil!12135)))

(declare-fun lt!287432 () Unit!20730)

(assert (=> b!621126 (= lt!287432 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12135))))

(assert (=> b!621126 (arrayContainsKey!0 lt!287418 (select (arr!18044 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!287427 () Unit!20730)

(assert (=> b!621126 (= lt!287427 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!287418 (select (arr!18044 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!20737 () Unit!20730)

(assert (=> b!621126 (= e!356256 Unit!20737)))

(declare-fun b!621127 () Bool)

(declare-fun res!400359 () Bool)

(assert (=> b!621127 (=> (not res!400359) (not e!356251))))

(assert (=> b!621127 (= res!400359 (and (= (size!18408 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18408 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18408 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!621128 () Bool)

(declare-fun e!356253 () Unit!20730)

(declare-fun Unit!20738 () Unit!20730)

(assert (=> b!621128 (= e!356253 Unit!20738)))

(assert (=> b!621128 false))

(declare-fun b!621129 () Bool)

(declare-fun Unit!20739 () Unit!20730)

(assert (=> b!621129 (= e!356253 Unit!20739)))

(declare-fun b!621130 () Bool)

(declare-fun res!400357 () Bool)

(assert (=> b!621130 (=> (not res!400357) (not e!356251))))

(assert (=> b!621130 (= res!400357 (validKeyInArray!0 k!1786))))

(declare-fun b!621131 () Bool)

(declare-fun res!400353 () Bool)

(assert (=> b!621131 (=> (not res!400353) (not e!356248))))

(assert (=> b!621131 (= res!400353 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12135))))

(declare-fun b!621132 () Bool)

(declare-fun e!356257 () Bool)

(assert (=> b!621132 (= e!356250 e!356257)))

(declare-fun res!400363 () Bool)

(assert (=> b!621132 (=> (not res!400363) (not e!356257))))

(assert (=> b!621132 (= res!400363 (and (= lt!287420 (Found!6491 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18044 a!2986) index!984) (select (arr!18044 a!2986) j!136))) (not (= (select (arr!18044 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37603 (_ BitVec 32)) SeekEntryResult!6491)

(assert (=> b!621132 (= lt!287420 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18044 a!2986) j!136) a!2986 mask!3053))))

(declare-fun res!400356 () Bool)

(declare-fun b!621133 () Bool)

(assert (=> b!621133 (= res!400356 (arrayContainsKey!0 lt!287418 (select (arr!18044 a!2986) j!136) j!136))))

(assert (=> b!621133 (=> (not res!400356) (not e!356249))))

(assert (=> b!621133 (= e!356254 e!356249)))

(declare-fun b!621134 () Bool)

(assert (=> b!621134 (= e!356257 (not true))))

(declare-fun lt!287417 () Unit!20730)

(assert (=> b!621134 (= lt!287417 e!356244)))

(declare-fun c!70749 () Bool)

(declare-fun lt!287425 () SeekEntryResult!6491)

(assert (=> b!621134 (= c!70749 (= lt!287425 (Found!6491 index!984)))))

(declare-fun lt!287429 () Unit!20730)

(assert (=> b!621134 (= lt!287429 e!356253)))

(declare-fun c!70750 () Bool)

(assert (=> b!621134 (= c!70750 (= lt!287425 Undefined!6491))))

(declare-fun lt!287423 () (_ BitVec 64))

(assert (=> b!621134 (= lt!287425 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!287423 lt!287418 mask!3053))))

(assert (=> b!621134 e!356247))

(declare-fun res!400362 () Bool)

(assert (=> b!621134 (=> (not res!400362) (not e!356247))))

(declare-fun lt!287424 () (_ BitVec 32))

(assert (=> b!621134 (= res!400362 (= lt!287431 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!287424 vacantSpotIndex!68 lt!287423 lt!287418 mask!3053)))))

(assert (=> b!621134 (= lt!287431 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!287424 vacantSpotIndex!68 (select (arr!18044 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!621134 (= lt!287423 (select (store (arr!18044 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!287435 () Unit!20730)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37603 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!20730)

(assert (=> b!621134 (= lt!287435 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!287424 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!621134 (= lt!287424 (nextIndex!0 index!984 x!910 mask!3053))))

(assert (= (and start!56170 res!400355) b!621127))

(assert (= (and b!621127 res!400359) b!621122))

(assert (= (and b!621122 res!400364) b!621130))

(assert (= (and b!621130 res!400357) b!621121))

(assert (= (and b!621121 res!400349) b!621125))

(assert (= (and b!621125 res!400352) b!621124))

(assert (= (and b!621124 res!400350) b!621131))

(assert (= (and b!621131 res!400353) b!621111))

(assert (= (and b!621111 res!400360) b!621117))

(assert (= (and b!621117 res!400354) b!621132))

(assert (= (and b!621132 res!400363) b!621134))

(assert (= (and b!621134 res!400362) b!621118))

(assert (= (and b!621134 c!70750) b!621128))

(assert (= (and b!621134 (not c!70750)) b!621129))

(assert (= (and b!621134 c!70749) b!621115))

(assert (= (and b!621134 (not c!70749)) b!621112))

(assert (= (and b!621115 res!400361) b!621116))

(assert (= (and b!621116 (not res!400351)) b!621133))

(assert (= (and b!621133 res!400356) b!621123))

(assert (= (and b!621115 c!70751) b!621126))

(assert (= (and b!621115 (not c!70751)) b!621114))

(assert (= (and b!621115 c!70748) b!621113))

(assert (= (and b!621115 (not c!70748)) b!621120))

(assert (= (and b!621113 res!400358) b!621119))

(declare-fun m!597059 () Bool)

(assert (=> start!56170 m!597059))

(declare-fun m!597061 () Bool)

(assert (=> start!56170 m!597061))

(declare-fun m!597063 () Bool)

(assert (=> b!621124 m!597063))

(declare-fun m!597065 () Bool)

(assert (=> b!621117 m!597065))

(declare-fun m!597067 () Bool)

(assert (=> b!621117 m!597067))

(assert (=> b!621115 m!597065))

(declare-fun m!597069 () Bool)

(assert (=> b!621115 m!597069))

(declare-fun m!597071 () Bool)

(assert (=> b!621115 m!597071))

(assert (=> b!621122 m!597071))

(assert (=> b!621122 m!597071))

(declare-fun m!597073 () Bool)

(assert (=> b!621122 m!597073))

(declare-fun m!597075 () Bool)

(assert (=> b!621125 m!597075))

(declare-fun m!597077 () Bool)

(assert (=> b!621134 m!597077))

(declare-fun m!597079 () Bool)

(assert (=> b!621134 m!597079))

(assert (=> b!621134 m!597071))

(assert (=> b!621134 m!597065))

(declare-fun m!597081 () Bool)

(assert (=> b!621134 m!597081))

(assert (=> b!621134 m!597071))

(declare-fun m!597083 () Bool)

(assert (=> b!621134 m!597083))

(declare-fun m!597085 () Bool)

(assert (=> b!621134 m!597085))

(declare-fun m!597087 () Bool)

(assert (=> b!621134 m!597087))

(declare-fun m!597089 () Bool)

(assert (=> b!621121 m!597089))

(assert (=> b!621126 m!597071))

(declare-fun m!597091 () Bool)

(assert (=> b!621126 m!597091))

(assert (=> b!621126 m!597071))

(declare-fun m!597093 () Bool)

(assert (=> b!621126 m!597093))

(declare-fun m!597095 () Bool)

(assert (=> b!621126 m!597095))

(declare-fun m!597097 () Bool)

(assert (=> b!621126 m!597097))

(assert (=> b!621126 m!597071))

(declare-fun m!597099 () Bool)

(assert (=> b!621126 m!597099))

(assert (=> b!621126 m!597071))

(declare-fun m!597101 () Bool)

(assert (=> b!621126 m!597101))

(declare-fun m!597103 () Bool)

(assert (=> b!621126 m!597103))

(assert (=> b!621133 m!597071))

(assert (=> b!621133 m!597071))

(declare-fun m!597105 () Bool)

(assert (=> b!621133 m!597105))

(declare-fun m!597107 () Bool)

(assert (=> b!621132 m!597107))

(assert (=> b!621132 m!597071))

(assert (=> b!621132 m!597071))

(declare-fun m!597109 () Bool)

(assert (=> b!621132 m!597109))

(declare-fun m!597111 () Bool)

(assert (=> b!621111 m!597111))

(assert (=> b!621119 m!597071))

(assert (=> b!621119 m!597071))

(declare-fun m!597113 () Bool)

(assert (=> b!621119 m!597113))

(assert (=> b!621113 m!597071))

(assert (=> b!621113 m!597105))

(assert (=> b!621113 m!597095))

(assert (=> b!621113 m!597071))

(declare-fun m!597115 () Bool)

(assert (=> b!621113 m!597115))

(assert (=> b!621113 m!597071))

(declare-fun m!597117 () Bool)

(assert (=> b!621113 m!597117))

(assert (=> b!621113 m!597103))

(declare-fun m!597119 () Bool)

(assert (=> b!621113 m!597119))

(assert (=> b!621113 m!597071))

(assert (=> b!621113 m!597071))

(declare-fun m!597121 () Bool)

(assert (=> b!621113 m!597121))

(declare-fun m!597123 () Bool)

(assert (=> b!621113 m!597123))

(declare-fun m!597125 () Bool)

(assert (=> b!621130 m!597125))

(declare-fun m!597127 () Bool)

(assert (=> b!621131 m!597127))

(assert (=> b!621123 m!597071))

(assert (=> b!621123 m!597071))

(assert (=> b!621123 m!597113))

(push 1)

