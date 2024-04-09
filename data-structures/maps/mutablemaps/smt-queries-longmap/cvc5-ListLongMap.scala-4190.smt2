; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!57126 () Bool)

(assert start!57126)

(declare-fun b!632208 () Bool)

(declare-fun res!408993 () Bool)

(declare-fun e!361442 () Bool)

(assert (=> b!632208 (=> (not res!408993) (not e!361442))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!632208 (= res!408993 (validKeyInArray!0 k!1786))))

(declare-fun b!632209 () Bool)

(declare-fun res!408989 () Bool)

(assert (=> b!632209 (=> (not res!408989) (not e!361442))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((array!38106 0))(
  ( (array!38107 (arr!18282 (Array (_ BitVec 32) (_ BitVec 64))) (size!18646 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38106)

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!632209 (= res!408989 (and (= (size!18646 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18646 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18646 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!632210 () Bool)

(declare-fun res!408986 () Bool)

(declare-fun e!361445 () Bool)

(assert (=> b!632210 (=> (not res!408986) (not e!361445))))

(declare-datatypes ((List!12376 0))(
  ( (Nil!12373) (Cons!12372 (h!13417 (_ BitVec 64)) (t!18612 List!12376)) )
))
(declare-fun arrayNoDuplicates!0 (array!38106 (_ BitVec 32) List!12376) Bool)

(assert (=> b!632210 (= res!408986 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12373))))

(declare-fun e!361444 () Bool)

(declare-fun b!632211 () Bool)

(declare-fun lt!292239 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!632211 (= e!361444 (or (not (= (select (arr!18282 a!2986) j!136) lt!292239)) (bvslt index!984 (size!18646 a!2986))))))

(assert (=> b!632211 (= (select (store (arr!18282 a!2986) i!1108 k!1786) index!984) (select (arr!18282 a!2986) j!136))))

(declare-fun b!632212 () Bool)

(declare-fun res!408990 () Bool)

(assert (=> b!632212 (=> (not res!408990) (not e!361445))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!632212 (= res!408990 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18282 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!632213 () Bool)

(declare-fun e!361446 () Bool)

(assert (=> b!632213 (= e!361446 (not e!361444))))

(declare-fun res!408991 () Bool)

(assert (=> b!632213 (=> res!408991 e!361444)))

(declare-datatypes ((SeekEntryResult!6729 0))(
  ( (MissingZero!6729 (index!29208 (_ BitVec 32))) (Found!6729 (index!29209 (_ BitVec 32))) (Intermediate!6729 (undefined!7541 Bool) (index!29210 (_ BitVec 32)) (x!57973 (_ BitVec 32))) (Undefined!6729) (MissingVacant!6729 (index!29211 (_ BitVec 32))) )
))
(declare-fun lt!292237 () SeekEntryResult!6729)

(assert (=> b!632213 (= res!408991 (not (= lt!292237 (Found!6729 index!984))))))

(declare-datatypes ((Unit!21274 0))(
  ( (Unit!21275) )
))
(declare-fun lt!292238 () Unit!21274)

(declare-fun e!361447 () Unit!21274)

(assert (=> b!632213 (= lt!292238 e!361447)))

(declare-fun c!71978 () Bool)

(assert (=> b!632213 (= c!71978 (= lt!292237 Undefined!6729))))

(declare-fun lt!292231 () array!38106)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38106 (_ BitVec 32)) SeekEntryResult!6729)

(assert (=> b!632213 (= lt!292237 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!292239 lt!292231 mask!3053))))

(declare-fun e!361440 () Bool)

(assert (=> b!632213 e!361440))

(declare-fun res!408988 () Bool)

(assert (=> b!632213 (=> (not res!408988) (not e!361440))))

(declare-fun lt!292236 () SeekEntryResult!6729)

(declare-fun lt!292235 () (_ BitVec 32))

(assert (=> b!632213 (= res!408988 (= lt!292236 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!292235 vacantSpotIndex!68 lt!292239 lt!292231 mask!3053)))))

(assert (=> b!632213 (= lt!292236 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!292235 vacantSpotIndex!68 (select (arr!18282 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!632213 (= lt!292239 (select (store (arr!18282 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!292233 () Unit!21274)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38106 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21274)

(assert (=> b!632213 (= lt!292233 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!292235 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!632213 (= lt!292235 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!632215 () Bool)

(declare-fun lt!292234 () SeekEntryResult!6729)

(assert (=> b!632215 (= e!361440 (= lt!292234 lt!292236))))

(declare-fun b!632216 () Bool)

(declare-fun Unit!21276 () Unit!21274)

(assert (=> b!632216 (= e!361447 Unit!21276)))

(declare-fun b!632217 () Bool)

(declare-fun res!408987 () Bool)

(assert (=> b!632217 (=> (not res!408987) (not e!361442))))

(declare-fun arrayContainsKey!0 (array!38106 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!632217 (= res!408987 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!632218 () Bool)

(declare-fun res!408997 () Bool)

(assert (=> b!632218 (=> (not res!408997) (not e!361442))))

(assert (=> b!632218 (= res!408997 (validKeyInArray!0 (select (arr!18282 a!2986) j!136)))))

(declare-fun b!632219 () Bool)

(declare-fun e!361441 () Bool)

(assert (=> b!632219 (= e!361445 e!361441)))

(declare-fun res!408995 () Bool)

(assert (=> b!632219 (=> (not res!408995) (not e!361441))))

(assert (=> b!632219 (= res!408995 (= (select (store (arr!18282 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!632219 (= lt!292231 (array!38107 (store (arr!18282 a!2986) i!1108 k!1786) (size!18646 a!2986)))))

(declare-fun b!632220 () Bool)

(declare-fun res!408992 () Bool)

(assert (=> b!632220 (=> (not res!408992) (not e!361445))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38106 (_ BitVec 32)) Bool)

(assert (=> b!632220 (= res!408992 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun res!408996 () Bool)

(assert (=> start!57126 (=> (not res!408996) (not e!361442))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57126 (= res!408996 (validMask!0 mask!3053))))

(assert (=> start!57126 e!361442))

(assert (=> start!57126 true))

(declare-fun array_inv!14056 (array!38106) Bool)

(assert (=> start!57126 (array_inv!14056 a!2986)))

(declare-fun b!632214 () Bool)

(declare-fun Unit!21277 () Unit!21274)

(assert (=> b!632214 (= e!361447 Unit!21277)))

(assert (=> b!632214 false))

(declare-fun b!632221 () Bool)

(assert (=> b!632221 (= e!361442 e!361445)))

(declare-fun res!408994 () Bool)

(assert (=> b!632221 (=> (not res!408994) (not e!361445))))

(declare-fun lt!292232 () SeekEntryResult!6729)

(assert (=> b!632221 (= res!408994 (or (= lt!292232 (MissingZero!6729 i!1108)) (= lt!292232 (MissingVacant!6729 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38106 (_ BitVec 32)) SeekEntryResult!6729)

(assert (=> b!632221 (= lt!292232 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!632222 () Bool)

(assert (=> b!632222 (= e!361441 e!361446)))

(declare-fun res!408998 () Bool)

(assert (=> b!632222 (=> (not res!408998) (not e!361446))))

(assert (=> b!632222 (= res!408998 (and (= lt!292234 (Found!6729 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18282 a!2986) index!984) (select (arr!18282 a!2986) j!136))) (not (= (select (arr!18282 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!632222 (= lt!292234 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18282 a!2986) j!136) a!2986 mask!3053))))

(assert (= (and start!57126 res!408996) b!632209))

(assert (= (and b!632209 res!408989) b!632218))

(assert (= (and b!632218 res!408997) b!632208))

(assert (= (and b!632208 res!408993) b!632217))

(assert (= (and b!632217 res!408987) b!632221))

(assert (= (and b!632221 res!408994) b!632220))

(assert (= (and b!632220 res!408992) b!632210))

(assert (= (and b!632210 res!408986) b!632212))

(assert (= (and b!632212 res!408990) b!632219))

(assert (= (and b!632219 res!408995) b!632222))

(assert (= (and b!632222 res!408998) b!632213))

(assert (= (and b!632213 res!408988) b!632215))

(assert (= (and b!632213 c!71978) b!632214))

(assert (= (and b!632213 (not c!71978)) b!632216))

(assert (= (and b!632213 (not res!408991)) b!632211))

(declare-fun m!607095 () Bool)

(assert (=> b!632210 m!607095))

(declare-fun m!607097 () Bool)

(assert (=> b!632221 m!607097))

(declare-fun m!607099 () Bool)

(assert (=> b!632213 m!607099))

(declare-fun m!607101 () Bool)

(assert (=> b!632213 m!607101))

(declare-fun m!607103 () Bool)

(assert (=> b!632213 m!607103))

(declare-fun m!607105 () Bool)

(assert (=> b!632213 m!607105))

(assert (=> b!632213 m!607101))

(declare-fun m!607107 () Bool)

(assert (=> b!632213 m!607107))

(declare-fun m!607109 () Bool)

(assert (=> b!632213 m!607109))

(declare-fun m!607111 () Bool)

(assert (=> b!632213 m!607111))

(declare-fun m!607113 () Bool)

(assert (=> b!632213 m!607113))

(assert (=> b!632218 m!607101))

(assert (=> b!632218 m!607101))

(declare-fun m!607115 () Bool)

(assert (=> b!632218 m!607115))

(declare-fun m!607117 () Bool)

(assert (=> b!632217 m!607117))

(declare-fun m!607119 () Bool)

(assert (=> b!632220 m!607119))

(declare-fun m!607121 () Bool)

(assert (=> b!632212 m!607121))

(declare-fun m!607123 () Bool)

(assert (=> b!632222 m!607123))

(assert (=> b!632222 m!607101))

(assert (=> b!632222 m!607101))

(declare-fun m!607125 () Bool)

(assert (=> b!632222 m!607125))

(assert (=> b!632219 m!607105))

(declare-fun m!607127 () Bool)

(assert (=> b!632219 m!607127))

(assert (=> b!632211 m!607101))

(assert (=> b!632211 m!607105))

(declare-fun m!607129 () Bool)

(assert (=> b!632211 m!607129))

(declare-fun m!607131 () Bool)

(assert (=> b!632208 m!607131))

(declare-fun m!607133 () Bool)

(assert (=> start!57126 m!607133))

(declare-fun m!607135 () Bool)

(assert (=> start!57126 m!607135))

(push 1)

(assert (not b!632217))

(assert (not b!632220))

(assert (not b!632221))

(assert (not b!632208))

(assert (not start!57126))

(assert (not b!632222))

(assert (not b!632213))

(assert (not b!632210))

(assert (not b!632218))

(check-sat)

(pop 1)

(push 1)

(check-sat)

