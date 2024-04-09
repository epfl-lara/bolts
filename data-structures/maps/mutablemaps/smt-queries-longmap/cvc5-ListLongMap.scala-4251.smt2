; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!58992 () Bool)

(assert start!58992)

(declare-fun b!650140 () Bool)

(declare-fun e!372989 () Bool)

(declare-fun e!372990 () Bool)

(assert (=> b!650140 (= e!372989 e!372990)))

(declare-fun res!421507 () Bool)

(assert (=> b!650140 (=> (not res!421507) (not e!372990))))

(declare-datatypes ((SeekEntryResult!6912 0))(
  ( (MissingZero!6912 (index!29997 (_ BitVec 32))) (Found!6912 (index!29998 (_ BitVec 32))) (Intermediate!6912 (undefined!7724 Bool) (index!29999 (_ BitVec 32)) (x!58815 (_ BitVec 32))) (Undefined!6912) (MissingVacant!6912 (index!30000 (_ BitVec 32))) )
))
(declare-fun lt!302083 () SeekEntryResult!6912)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!650140 (= res!421507 (or (= lt!302083 (MissingZero!6912 i!1108)) (= lt!302083 (MissingVacant!6912 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-datatypes ((array!38529 0))(
  ( (array!38530 (arr!18465 (Array (_ BitVec 32) (_ BitVec 64))) (size!18829 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38529)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38529 (_ BitVec 32)) SeekEntryResult!6912)

(assert (=> b!650140 (= lt!302083 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!650141 () Bool)

(declare-datatypes ((Unit!22144 0))(
  ( (Unit!22145) )
))
(declare-fun e!372997 () Unit!22144)

(declare-fun Unit!22146 () Unit!22144)

(assert (=> b!650141 (= e!372997 Unit!22146)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!302084 () array!38529)

(declare-fun lt!302085 () Unit!22144)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38529 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22144)

(assert (=> b!650141 (= lt!302085 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!302084 (select (arr!18465 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun arrayContainsKey!0 (array!38529 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!650141 (arrayContainsKey!0 lt!302084 (select (arr!18465 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!302076 () Unit!22144)

(declare-datatypes ((List!12559 0))(
  ( (Nil!12556) (Cons!12555 (h!13600 (_ BitVec 64)) (t!18795 List!12559)) )
))
(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38529 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12559) Unit!22144)

(assert (=> b!650141 (= lt!302076 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12556))))

(declare-fun arrayNoDuplicates!0 (array!38529 (_ BitVec 32) List!12559) Bool)

(assert (=> b!650141 (arrayNoDuplicates!0 lt!302084 #b00000000000000000000000000000000 Nil!12556)))

(declare-fun lt!302081 () Unit!22144)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38529 (_ BitVec 32) (_ BitVec 32)) Unit!22144)

(assert (=> b!650141 (= lt!302081 (lemmaNoDuplicateFromThenFromBigger!0 lt!302084 #b00000000000000000000000000000000 j!136))))

(assert (=> b!650141 (arrayNoDuplicates!0 lt!302084 j!136 Nil!12556)))

(declare-fun lt!302080 () Unit!22144)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38529 (_ BitVec 64) (_ BitVec 32) List!12559) Unit!22144)

(assert (=> b!650141 (= lt!302080 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!302084 (select (arr!18465 a!2986) j!136) j!136 Nil!12556))))

(assert (=> b!650141 false))

(declare-fun b!650142 () Bool)

(declare-fun e!372996 () Bool)

(declare-fun lt!302075 () SeekEntryResult!6912)

(declare-fun lt!302088 () SeekEntryResult!6912)

(assert (=> b!650142 (= e!372996 (= lt!302075 lt!302088))))

(declare-fun b!650143 () Bool)

(declare-fun Unit!22147 () Unit!22144)

(assert (=> b!650143 (= e!372997 Unit!22147)))

(declare-fun b!650144 () Bool)

(declare-fun e!372985 () Bool)

(assert (=> b!650144 (= e!372985 (arrayContainsKey!0 lt!302084 (select (arr!18465 a!2986) j!136) index!984))))

(declare-fun b!650145 () Bool)

(declare-fun res!421502 () Bool)

(assert (=> b!650145 (=> (not res!421502) (not e!372989))))

(assert (=> b!650145 (= res!421502 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!650147 () Bool)

(declare-fun res!421506 () Bool)

(assert (=> b!650147 (=> (not res!421506) (not e!372989))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!650147 (= res!421506 (validKeyInArray!0 k!1786))))

(declare-fun b!650148 () Bool)

(declare-fun e!372995 () Bool)

(declare-fun e!372993 () Bool)

(assert (=> b!650148 (= e!372995 e!372993)))

(declare-fun res!421518 () Bool)

(assert (=> b!650148 (=> (not res!421518) (not e!372993))))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!650148 (= res!421518 (and (= lt!302075 (Found!6912 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18465 a!2986) index!984) (select (arr!18465 a!2986) j!136))) (not (= (select (arr!18465 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38529 (_ BitVec 32)) SeekEntryResult!6912)

(assert (=> b!650148 (= lt!302075 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18465 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!650149 () Bool)

(declare-fun e!372992 () Bool)

(assert (=> b!650149 (= e!372993 (not e!372992))))

(declare-fun res!421503 () Bool)

(assert (=> b!650149 (=> res!421503 e!372992)))

(declare-fun lt!302078 () SeekEntryResult!6912)

(assert (=> b!650149 (= res!421503 (not (= lt!302078 (Found!6912 index!984))))))

(declare-fun lt!302079 () Unit!22144)

(declare-fun e!372988 () Unit!22144)

(assert (=> b!650149 (= lt!302079 e!372988)))

(declare-fun c!74686 () Bool)

(assert (=> b!650149 (= c!74686 (= lt!302078 Undefined!6912))))

(declare-fun lt!302090 () (_ BitVec 64))

(assert (=> b!650149 (= lt!302078 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!302090 lt!302084 mask!3053))))

(assert (=> b!650149 e!372996))

(declare-fun res!421510 () Bool)

(assert (=> b!650149 (=> (not res!421510) (not e!372996))))

(declare-fun lt!302086 () (_ BitVec 32))

(assert (=> b!650149 (= res!421510 (= lt!302088 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!302086 vacantSpotIndex!68 lt!302090 lt!302084 mask!3053)))))

(assert (=> b!650149 (= lt!302088 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!302086 vacantSpotIndex!68 (select (arr!18465 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!650149 (= lt!302090 (select (store (arr!18465 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!302089 () Unit!22144)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38529 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22144)

(assert (=> b!650149 (= lt!302089 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!302086 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!650149 (= lt!302086 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!650150 () Bool)

(declare-fun Unit!22148 () Unit!22144)

(assert (=> b!650150 (= e!372988 Unit!22148)))

(assert (=> b!650150 false))

(declare-fun b!650151 () Bool)

(declare-fun res!421511 () Bool)

(assert (=> b!650151 (=> (not res!421511) (not e!372989))))

(assert (=> b!650151 (= res!421511 (validKeyInArray!0 (select (arr!18465 a!2986) j!136)))))

(declare-fun b!650152 () Bool)

(declare-fun e!372994 () Bool)

(assert (=> b!650152 (= e!372994 (arrayContainsKey!0 lt!302084 (select (arr!18465 a!2986) j!136) index!984))))

(declare-fun b!650153 () Bool)

(declare-fun Unit!22149 () Unit!22144)

(assert (=> b!650153 (= e!372988 Unit!22149)))

(declare-fun b!650154 () Bool)

(declare-fun e!372984 () Bool)

(assert (=> b!650154 (= e!372992 e!372984)))

(declare-fun res!421509 () Bool)

(assert (=> b!650154 (=> res!421509 e!372984)))

(declare-fun lt!302091 () (_ BitVec 64))

(assert (=> b!650154 (= res!421509 (or (not (= (select (arr!18465 a!2986) j!136) lt!302090)) (not (= (select (arr!18465 a!2986) j!136) lt!302091))))))

(declare-fun e!372983 () Bool)

(assert (=> b!650154 e!372983))

(declare-fun res!421514 () Bool)

(assert (=> b!650154 (=> (not res!421514) (not e!372983))))

(assert (=> b!650154 (= res!421514 (= lt!302091 (select (arr!18465 a!2986) j!136)))))

(assert (=> b!650154 (= lt!302091 (select (store (arr!18465 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!650155 () Bool)

(declare-fun e!372986 () Bool)

(assert (=> b!650155 (= e!372986 true)))

(assert (=> b!650155 (arrayNoDuplicates!0 lt!302084 #b00000000000000000000000000000000 Nil!12556)))

(declare-fun lt!302077 () Unit!22144)

(assert (=> b!650155 (= lt!302077 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12556))))

(assert (=> b!650155 (arrayContainsKey!0 lt!302084 (select (arr!18465 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!302087 () Unit!22144)

(assert (=> b!650155 (= lt!302087 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!302084 (select (arr!18465 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!650155 e!372994))

(declare-fun res!421516 () Bool)

(assert (=> b!650155 (=> (not res!421516) (not e!372994))))

(assert (=> b!650155 (= res!421516 (arrayContainsKey!0 lt!302084 (select (arr!18465 a!2986) j!136) j!136))))

(declare-fun b!650156 () Bool)

(declare-fun e!372991 () Bool)

(assert (=> b!650156 (= e!372983 e!372991)))

(declare-fun res!421508 () Bool)

(assert (=> b!650156 (=> res!421508 e!372991)))

(assert (=> b!650156 (= res!421508 (or (not (= (select (arr!18465 a!2986) j!136) lt!302090)) (not (= (select (arr!18465 a!2986) j!136) lt!302091)) (bvsge j!136 index!984)))))

(declare-fun res!421504 () Bool)

(assert (=> start!58992 (=> (not res!421504) (not e!372989))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!58992 (= res!421504 (validMask!0 mask!3053))))

(assert (=> start!58992 e!372989))

(assert (=> start!58992 true))

(declare-fun array_inv!14239 (array!38529) Bool)

(assert (=> start!58992 (array_inv!14239 a!2986)))

(declare-fun b!650146 () Bool)

(declare-fun res!421520 () Bool)

(assert (=> b!650146 (=> (not res!421520) (not e!372989))))

(assert (=> b!650146 (= res!421520 (and (= (size!18829 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18829 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18829 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!650157 () Bool)

(assert (=> b!650157 (= e!372991 e!372985)))

(declare-fun res!421512 () Bool)

(assert (=> b!650157 (=> (not res!421512) (not e!372985))))

(assert (=> b!650157 (= res!421512 (arrayContainsKey!0 lt!302084 (select (arr!18465 a!2986) j!136) j!136))))

(declare-fun b!650158 () Bool)

(declare-fun res!421515 () Bool)

(assert (=> b!650158 (=> (not res!421515) (not e!372990))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38529 (_ BitVec 32)) Bool)

(assert (=> b!650158 (= res!421515 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!650159 () Bool)

(assert (=> b!650159 (= e!372984 e!372986)))

(declare-fun res!421517 () Bool)

(assert (=> b!650159 (=> res!421517 e!372986)))

(assert (=> b!650159 (= res!421517 (bvsge index!984 j!136))))

(declare-fun lt!302082 () Unit!22144)

(assert (=> b!650159 (= lt!302082 e!372997)))

(declare-fun c!74687 () Bool)

(assert (=> b!650159 (= c!74687 (bvslt j!136 index!984))))

(declare-fun b!650160 () Bool)

(declare-fun res!421513 () Bool)

(assert (=> b!650160 (=> (not res!421513) (not e!372990))))

(assert (=> b!650160 (= res!421513 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18465 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!650161 () Bool)

(assert (=> b!650161 (= e!372990 e!372995)))

(declare-fun res!421519 () Bool)

(assert (=> b!650161 (=> (not res!421519) (not e!372995))))

(assert (=> b!650161 (= res!421519 (= (select (store (arr!18465 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!650161 (= lt!302084 (array!38530 (store (arr!18465 a!2986) i!1108 k!1786) (size!18829 a!2986)))))

(declare-fun b!650162 () Bool)

(declare-fun res!421505 () Bool)

(assert (=> b!650162 (=> (not res!421505) (not e!372990))))

(assert (=> b!650162 (= res!421505 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12556))))

(assert (= (and start!58992 res!421504) b!650146))

(assert (= (and b!650146 res!421520) b!650151))

(assert (= (and b!650151 res!421511) b!650147))

(assert (= (and b!650147 res!421506) b!650145))

(assert (= (and b!650145 res!421502) b!650140))

(assert (= (and b!650140 res!421507) b!650158))

(assert (= (and b!650158 res!421515) b!650162))

(assert (= (and b!650162 res!421505) b!650160))

(assert (= (and b!650160 res!421513) b!650161))

(assert (= (and b!650161 res!421519) b!650148))

(assert (= (and b!650148 res!421518) b!650149))

(assert (= (and b!650149 res!421510) b!650142))

(assert (= (and b!650149 c!74686) b!650150))

(assert (= (and b!650149 (not c!74686)) b!650153))

(assert (= (and b!650149 (not res!421503)) b!650154))

(assert (= (and b!650154 res!421514) b!650156))

(assert (= (and b!650156 (not res!421508)) b!650157))

(assert (= (and b!650157 res!421512) b!650144))

(assert (= (and b!650154 (not res!421509)) b!650159))

(assert (= (and b!650159 c!74687) b!650141))

(assert (= (and b!650159 (not c!74687)) b!650143))

(assert (= (and b!650159 (not res!421517)) b!650155))

(assert (= (and b!650155 res!421516) b!650152))

(declare-fun m!623421 () Bool)

(assert (=> b!650157 m!623421))

(assert (=> b!650157 m!623421))

(declare-fun m!623423 () Bool)

(assert (=> b!650157 m!623423))

(declare-fun m!623425 () Bool)

(assert (=> b!650158 m!623425))

(assert (=> b!650144 m!623421))

(assert (=> b!650144 m!623421))

(declare-fun m!623427 () Bool)

(assert (=> b!650144 m!623427))

(assert (=> b!650141 m!623421))

(declare-fun m!623429 () Bool)

(assert (=> b!650141 m!623429))

(assert (=> b!650141 m!623421))

(declare-fun m!623431 () Bool)

(assert (=> b!650141 m!623431))

(assert (=> b!650141 m!623421))

(declare-fun m!623433 () Bool)

(assert (=> b!650141 m!623433))

(declare-fun m!623435 () Bool)

(assert (=> b!650141 m!623435))

(assert (=> b!650141 m!623421))

(declare-fun m!623437 () Bool)

(assert (=> b!650141 m!623437))

(declare-fun m!623439 () Bool)

(assert (=> b!650141 m!623439))

(declare-fun m!623441 () Bool)

(assert (=> b!650141 m!623441))

(declare-fun m!623443 () Bool)

(assert (=> b!650162 m!623443))

(assert (=> b!650155 m!623421))

(assert (=> b!650155 m!623421))

(assert (=> b!650155 m!623423))

(assert (=> b!650155 m!623421))

(declare-fun m!623445 () Bool)

(assert (=> b!650155 m!623445))

(assert (=> b!650155 m!623441))

(assert (=> b!650155 m!623421))

(declare-fun m!623447 () Bool)

(assert (=> b!650155 m!623447))

(assert (=> b!650155 m!623435))

(declare-fun m!623449 () Bool)

(assert (=> b!650161 m!623449))

(declare-fun m!623451 () Bool)

(assert (=> b!650161 m!623451))

(declare-fun m!623453 () Bool)

(assert (=> b!650145 m!623453))

(declare-fun m!623455 () Bool)

(assert (=> b!650147 m!623455))

(declare-fun m!623457 () Bool)

(assert (=> b!650148 m!623457))

(assert (=> b!650148 m!623421))

(assert (=> b!650148 m!623421))

(declare-fun m!623459 () Bool)

(assert (=> b!650148 m!623459))

(declare-fun m!623461 () Bool)

(assert (=> b!650140 m!623461))

(assert (=> b!650154 m!623421))

(assert (=> b!650154 m!623449))

(declare-fun m!623463 () Bool)

(assert (=> b!650154 m!623463))

(assert (=> b!650152 m!623421))

(assert (=> b!650152 m!623421))

(assert (=> b!650152 m!623427))

(assert (=> b!650151 m!623421))

(assert (=> b!650151 m!623421))

(declare-fun m!623465 () Bool)

(assert (=> b!650151 m!623465))

(declare-fun m!623467 () Bool)

(assert (=> b!650149 m!623467))

(declare-fun m!623469 () Bool)

(assert (=> b!650149 m!623469))

(declare-fun m!623471 () Bool)

(assert (=> b!650149 m!623471))

(assert (=> b!650149 m!623421))

(assert (=> b!650149 m!623449))

(assert (=> b!650149 m!623421))

(declare-fun m!623473 () Bool)

(assert (=> b!650149 m!623473))

(declare-fun m!623475 () Bool)

(assert (=> b!650149 m!623475))

(declare-fun m!623477 () Bool)

(assert (=> b!650149 m!623477))

(assert (=> b!650156 m!623421))

(declare-fun m!623479 () Bool)

(assert (=> b!650160 m!623479))

(declare-fun m!623481 () Bool)

(assert (=> start!58992 m!623481))

(declare-fun m!623483 () Bool)

(assert (=> start!58992 m!623483))

(push 1)

