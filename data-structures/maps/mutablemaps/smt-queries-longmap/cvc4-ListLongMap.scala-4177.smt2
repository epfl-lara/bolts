; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56932 () Bool)

(assert start!56932)

(declare-fun b!630069 () Bool)

(declare-fun res!407464 () Bool)

(declare-fun e!360276 () Bool)

(assert (=> b!630069 (=> (not res!407464) (not e!360276))))

(declare-datatypes ((array!38026 0))(
  ( (array!38027 (arr!18245 (Array (_ BitVec 32) (_ BitVec 64))) (size!18609 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38026)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!630069 (= res!407464 (validKeyInArray!0 (select (arr!18245 a!2986) j!136)))))

(declare-fun b!630070 () Bool)

(declare-fun e!360275 () Bool)

(declare-fun e!360277 () Bool)

(assert (=> b!630070 (= e!360275 e!360277)))

(declare-fun res!407473 () Bool)

(assert (=> b!630070 (=> (not res!407473) (not e!360277))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!630070 (= res!407473 (= (select (store (arr!18245 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!291065 () array!38026)

(assert (=> b!630070 (= lt!291065 (array!38027 (store (arr!18245 a!2986) i!1108 k!1786) (size!18609 a!2986)))))

(declare-fun b!630071 () Bool)

(declare-fun e!360278 () Bool)

(declare-datatypes ((SeekEntryResult!6692 0))(
  ( (MissingZero!6692 (index!29054 (_ BitVec 32))) (Found!6692 (index!29055 (_ BitVec 32))) (Intermediate!6692 (undefined!7504 Bool) (index!29056 (_ BitVec 32)) (x!57814 (_ BitVec 32))) (Undefined!6692) (MissingVacant!6692 (index!29057 (_ BitVec 32))) )
))
(declare-fun lt!291064 () SeekEntryResult!6692)

(declare-fun lt!291063 () SeekEntryResult!6692)

(assert (=> b!630071 (= e!360278 (= lt!291064 lt!291063))))

(declare-fun b!630072 () Bool)

(declare-fun res!407474 () Bool)

(assert (=> b!630072 (=> (not res!407474) (not e!360276))))

(declare-fun arrayContainsKey!0 (array!38026 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!630072 (= res!407474 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!630073 () Bool)

(assert (=> b!630073 (= e!360276 e!360275)))

(declare-fun res!407463 () Bool)

(assert (=> b!630073 (=> (not res!407463) (not e!360275))))

(declare-fun lt!291067 () SeekEntryResult!6692)

(assert (=> b!630073 (= res!407463 (or (= lt!291067 (MissingZero!6692 i!1108)) (= lt!291067 (MissingVacant!6692 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38026 (_ BitVec 32)) SeekEntryResult!6692)

(assert (=> b!630073 (= lt!291067 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!630074 () Bool)

(declare-fun res!407469 () Bool)

(assert (=> b!630074 (=> (not res!407469) (not e!360276))))

(assert (=> b!630074 (= res!407469 (and (= (size!18609 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18609 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18609 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!630075 () Bool)

(declare-fun res!407468 () Bool)

(assert (=> b!630075 (=> (not res!407468) (not e!360275))))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!630075 (= res!407468 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18245 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!630076 () Bool)

(declare-fun res!407466 () Bool)

(assert (=> b!630076 (=> (not res!407466) (not e!360275))))

(declare-datatypes ((List!12339 0))(
  ( (Nil!12336) (Cons!12335 (h!13380 (_ BitVec 64)) (t!18575 List!12339)) )
))
(declare-fun arrayNoDuplicates!0 (array!38026 (_ BitVec 32) List!12339) Bool)

(assert (=> b!630076 (= res!407466 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12336))))

(declare-fun res!407470 () Bool)

(assert (=> start!56932 (=> (not res!407470) (not e!360276))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56932 (= res!407470 (validMask!0 mask!3053))))

(assert (=> start!56932 e!360276))

(assert (=> start!56932 true))

(declare-fun array_inv!14019 (array!38026) Bool)

(assert (=> start!56932 (array_inv!14019 a!2986)))

(declare-fun b!630077 () Bool)

(declare-fun res!407472 () Bool)

(assert (=> b!630077 (=> (not res!407472) (not e!360276))))

(assert (=> b!630077 (= res!407472 (validKeyInArray!0 k!1786))))

(declare-fun b!630078 () Bool)

(declare-fun res!407471 () Bool)

(assert (=> b!630078 (=> (not res!407471) (not e!360275))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38026 (_ BitVec 32)) Bool)

(assert (=> b!630078 (= res!407471 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!630079 () Bool)

(declare-fun e!360280 () Bool)

(assert (=> b!630079 (= e!360277 e!360280)))

(declare-fun res!407465 () Bool)

(assert (=> b!630079 (=> (not res!407465) (not e!360280))))

(assert (=> b!630079 (= res!407465 (and (= lt!291064 (Found!6692 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18245 a!2986) index!984) (select (arr!18245 a!2986) j!136))) (not (= (select (arr!18245 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38026 (_ BitVec 32)) SeekEntryResult!6692)

(assert (=> b!630079 (= lt!291064 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18245 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!630080 () Bool)

(declare-fun lt!291069 () (_ BitVec 64))

(assert (=> b!630080 (= e!360280 (not (not (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!291069 lt!291065 mask!3053) Undefined!6692))))))

(assert (=> b!630080 e!360278))

(declare-fun res!407467 () Bool)

(assert (=> b!630080 (=> (not res!407467) (not e!360278))))

(declare-fun lt!291066 () (_ BitVec 32))

(assert (=> b!630080 (= res!407467 (= lt!291063 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!291066 vacantSpotIndex!68 lt!291069 lt!291065 mask!3053)))))

(assert (=> b!630080 (= lt!291063 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!291066 vacantSpotIndex!68 (select (arr!18245 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!630080 (= lt!291069 (select (store (arr!18245 a!2986) i!1108 k!1786) j!136))))

(declare-datatypes ((Unit!21128 0))(
  ( (Unit!21129) )
))
(declare-fun lt!291068 () Unit!21128)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38026 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21128)

(assert (=> b!630080 (= lt!291068 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!291066 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!630080 (= lt!291066 (nextIndex!0 index!984 x!910 mask!3053))))

(assert (= (and start!56932 res!407470) b!630074))

(assert (= (and b!630074 res!407469) b!630069))

(assert (= (and b!630069 res!407464) b!630077))

(assert (= (and b!630077 res!407472) b!630072))

(assert (= (and b!630072 res!407474) b!630073))

(assert (= (and b!630073 res!407463) b!630078))

(assert (= (and b!630078 res!407471) b!630076))

(assert (= (and b!630076 res!407466) b!630075))

(assert (= (and b!630075 res!407468) b!630070))

(assert (= (and b!630070 res!407473) b!630079))

(assert (= (and b!630079 res!407465) b!630080))

(assert (= (and b!630080 res!407467) b!630071))

(declare-fun m!605159 () Bool)

(assert (=> b!630078 m!605159))

(declare-fun m!605161 () Bool)

(assert (=> b!630079 m!605161))

(declare-fun m!605163 () Bool)

(assert (=> b!630079 m!605163))

(assert (=> b!630079 m!605163))

(declare-fun m!605165 () Bool)

(assert (=> b!630079 m!605165))

(assert (=> b!630069 m!605163))

(assert (=> b!630069 m!605163))

(declare-fun m!605167 () Bool)

(assert (=> b!630069 m!605167))

(declare-fun m!605169 () Bool)

(assert (=> b!630080 m!605169))

(assert (=> b!630080 m!605163))

(declare-fun m!605171 () Bool)

(assert (=> b!630080 m!605171))

(assert (=> b!630080 m!605163))

(declare-fun m!605173 () Bool)

(assert (=> b!630080 m!605173))

(declare-fun m!605175 () Bool)

(assert (=> b!630080 m!605175))

(declare-fun m!605177 () Bool)

(assert (=> b!630080 m!605177))

(declare-fun m!605179 () Bool)

(assert (=> b!630080 m!605179))

(declare-fun m!605181 () Bool)

(assert (=> b!630080 m!605181))

(declare-fun m!605183 () Bool)

(assert (=> b!630076 m!605183))

(declare-fun m!605185 () Bool)

(assert (=> start!56932 m!605185))

(declare-fun m!605187 () Bool)

(assert (=> start!56932 m!605187))

(declare-fun m!605189 () Bool)

(assert (=> b!630075 m!605189))

(declare-fun m!605191 () Bool)

(assert (=> b!630073 m!605191))

(assert (=> b!630070 m!605171))

(declare-fun m!605193 () Bool)

(assert (=> b!630070 m!605193))

(declare-fun m!605195 () Bool)

(assert (=> b!630077 m!605195))

(declare-fun m!605197 () Bool)

(assert (=> b!630072 m!605197))

(push 1)

(assert (not b!630073))

(assert (not b!630076))

(assert (not b!630080))

(assert (not b!630069))

(assert (not b!630079))

(assert (not b!630078))

(assert (not b!630077))

(assert (not b!630072))

(assert (not start!56932))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!89095 () Bool)

(assert (=> d!89095 (= (validKeyInArray!0 (select (arr!18245 a!2986) j!136)) (and (not (= (select (arr!18245 a!2986) j!136) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!18245 a!2986) j!136) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!630069 d!89095))

(declare-fun b!630162 () Bool)

(declare-fun e!360326 () SeekEntryResult!6692)

(assert (=> b!630162 (= e!360326 (MissingVacant!6692 vacantSpotIndex!68))))

(declare-fun b!630163 () Bool)

(declare-fun c!71706 () Bool)

(declare-fun lt!291107 () (_ BitVec 64))

(assert (=> b!630163 (= c!71706 (= lt!291107 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!360328 () SeekEntryResult!6692)

(assert (=> b!630163 (= e!360328 e!360326)))

(declare-fun b!630164 () Bool)

(declare-fun e!360327 () SeekEntryResult!6692)

(assert (=> b!630164 (= e!360327 Undefined!6692)))

(declare-fun b!630165 () Bool)

(assert (=> b!630165 (= e!360326 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 (select (arr!18245 a!2986) j!136) a!2986 mask!3053))))

(declare-fun d!89099 () Bool)

(declare-fun lt!291108 () SeekEntryResult!6692)

(assert (=> d!89099 (and (or (is-Undefined!6692 lt!291108) (not (is-Found!6692 lt!291108)) (and (bvsge (index!29055 lt!291108) #b00000000000000000000000000000000) (bvslt (index!29055 lt!291108) (size!18609 a!2986)))) (or (is-Undefined!6692 lt!291108) (is-Found!6692 lt!291108) (not (is-MissingVacant!6692 lt!291108)) (not (= (index!29057 lt!291108) vacantSpotIndex!68)) (and (bvsge (index!29057 lt!291108) #b00000000000000000000000000000000) (bvslt (index!29057 lt!291108) (size!18609 a!2986)))) (or (is-Undefined!6692 lt!291108) (ite (is-Found!6692 lt!291108) (= (select (arr!18245 a!2986) (index!29055 lt!291108)) (select (arr!18245 a!2986) j!136)) (and (is-MissingVacant!6692 lt!291108) (= (index!29057 lt!291108) vacantSpotIndex!68) (= (select (arr!18245 a!2986) (index!29057 lt!291108)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!89099 (= lt!291108 e!360327)))

(declare-fun c!71707 () Bool)

(assert (=> d!89099 (= c!71707 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!89099 (= lt!291107 (select (arr!18245 a!2986) index!984))))

(assert (=> d!89099 (validMask!0 mask!3053)))

(assert (=> d!89099 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18245 a!2986) j!136) a!2986 mask!3053) lt!291108)))

(declare-fun b!630166 () Bool)

(assert (=> b!630166 (= e!360328 (Found!6692 index!984))))

(declare-fun b!630167 () Bool)

(assert (=> b!630167 (= e!360327 e!360328)))

(declare-fun c!71708 () Bool)

(assert (=> b!630167 (= c!71708 (= lt!291107 (select (arr!18245 a!2986) j!136)))))

(assert (= (and d!89099 c!71707) b!630164))

(assert (= (and d!89099 (not c!71707)) b!630167))

(assert (= (and b!630167 c!71708) b!630166))

(assert (= (and b!630167 (not c!71708)) b!630163))

(assert (= (and b!630163 c!71706) b!630162))

(assert (= (and b!630163 (not c!71706)) b!630165))

(assert (=> b!630165 m!605175))

(assert (=> b!630165 m!605175))

(assert (=> b!630165 m!605163))

(declare-fun m!605257 () Bool)

(assert (=> b!630165 m!605257))

(declare-fun m!605259 () Bool)

(assert (=> d!89099 m!605259))

(declare-fun m!605261 () Bool)

(assert (=> d!89099 m!605261))

(assert (=> d!89099 m!605161))

(assert (=> d!89099 m!605185))

(assert (=> b!630079 d!89099))

(declare-fun d!89117 () Bool)

(assert (=> d!89117 (= (validMask!0 mask!3053) (and (or (= mask!3053 #b00000000000000000000000000000111) (= mask!3053 #b00000000000000000000000000001111) (= mask!3053 #b00000000000000000000000000011111) (= mask!3053 #b00000000000000000000000000111111) (= mask!3053 #b00000000000000000000000001111111) (= mask!3053 #b00000000000000000000000011111111) (= mask!3053 #b00000000000000000000000111111111) (= mask!3053 #b00000000000000000000001111111111) (= mask!3053 #b00000000000000000000011111111111) (= mask!3053 #b00000000000000000000111111111111) (= mask!3053 #b00000000000000000001111111111111) (= mask!3053 #b00000000000000000011111111111111) (= mask!3053 #b00000000000000000111111111111111) (= mask!3053 #b00000000000000001111111111111111) (= mask!3053 #b00000000000000011111111111111111) (= mask!3053 #b00000000000000111111111111111111) (= mask!3053 #b00000000000001111111111111111111) (= mask!3053 #b00000000000011111111111111111111) (= mask!3053 #b00000000000111111111111111111111) (= mask!3053 #b00000000001111111111111111111111) (= mask!3053 #b00000000011111111111111111111111) (= mask!3053 #b00000000111111111111111111111111) (= mask!3053 #b00000001111111111111111111111111) (= mask!3053 #b00000011111111111111111111111111) (= mask!3053 #b00000111111111111111111111111111) (= mask!3053 #b00001111111111111111111111111111) (= mask!3053 #b00011111111111111111111111111111) (= mask!3053 #b00111111111111111111111111111111)) (bvsle mask!3053 #b00111111111111111111111111111111)))))

(assert (=> start!56932 d!89117))

(declare-fun d!89127 () Bool)

(assert (=> d!89127 (= (array_inv!14019 a!2986) (bvsge (size!18609 a!2986) #b00000000000000000000000000000000))))

(assert (=> start!56932 d!89127))

(declare-fun b!630198 () Bool)

(declare-fun e!360353 () SeekEntryResult!6692)

(assert (=> b!630198 (= e!360353 (MissingVacant!6692 vacantSpotIndex!68))))

(declare-fun b!630199 () Bool)

(declare-fun c!71715 () Bool)

(declare-fun lt!291114 () (_ BitVec 64))

(assert (=> b!630199 (= c!71715 (= lt!291114 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!360355 () SeekEntryResult!6692)

(assert (=> b!630199 (= e!360355 e!360353)))

(declare-fun b!630200 () Bool)

(declare-fun e!360354 () SeekEntryResult!6692)

(assert (=> b!630200 (= e!360354 Undefined!6692)))

(declare-fun b!630201 () Bool)

(assert (=> b!630201 (= e!360353 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 lt!291069 lt!291065 mask!3053))))

(declare-fun d!89131 () Bool)

(declare-fun lt!291115 () SeekEntryResult!6692)

(assert (=> d!89131 (and (or (is-Undefined!6692 lt!291115) (not (is-Found!6692 lt!291115)) (and (bvsge (index!29055 lt!291115) #b00000000000000000000000000000000) (bvslt (index!29055 lt!291115) (size!18609 lt!291065)))) (or (is-Undefined!6692 lt!291115) (is-Found!6692 lt!291115) (not (is-MissingVacant!6692 lt!291115)) (not (= (index!29057 lt!291115) vacantSpotIndex!68)) (and (bvsge (index!29057 lt!291115) #b00000000000000000000000000000000) (bvslt (index!29057 lt!291115) (size!18609 lt!291065)))) (or (is-Undefined!6692 lt!291115) (ite (is-Found!6692 lt!291115) (= (select (arr!18245 lt!291065) (index!29055 lt!291115)) lt!291069) (and (is-MissingVacant!6692 lt!291115) (= (index!29057 lt!291115) vacantSpotIndex!68) (= (select (arr!18245 lt!291065) (index!29057 lt!291115)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!89131 (= lt!291115 e!360354)))

(declare-fun c!71716 () Bool)

(assert (=> d!89131 (= c!71716 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!89131 (= lt!291114 (select (arr!18245 lt!291065) index!984))))

(assert (=> d!89131 (validMask!0 mask!3053)))

(assert (=> d!89131 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!291069 lt!291065 mask!3053) lt!291115)))

(declare-fun b!630202 () Bool)

(assert (=> b!630202 (= e!360355 (Found!6692 index!984))))

(declare-fun b!630203 () Bool)

(assert (=> b!630203 (= e!360354 e!360355)))

(declare-fun c!71717 () Bool)

(assert (=> b!630203 (= c!71717 (= lt!291114 lt!291069))))

(assert (= (and d!89131 c!71716) b!630200))

(assert (= (and d!89131 (not c!71716)) b!630203))

(assert (= (and b!630203 c!71717) b!630202))

(assert (= (and b!630203 (not c!71717)) b!630199))

(assert (= (and b!630199 c!71715) b!630198))

(assert (= (and b!630199 (not c!71715)) b!630201))

(assert (=> b!630201 m!605175))

(assert (=> b!630201 m!605175))

(declare-fun m!605283 () Bool)

(assert (=> b!630201 m!605283))

(declare-fun m!605285 () Bool)

(assert (=> d!89131 m!605285))

(declare-fun m!605287 () Bool)

(assert (=> d!89131 m!605287))

(declare-fun m!605289 () Bool)

(assert (=> d!89131 m!605289))

(assert (=> d!89131 m!605185))

(assert (=> b!630080 d!89131))

(declare-fun d!89133 () Bool)

(declare-fun e!360361 () Bool)

(assert (=> d!89133 e!360361))

(declare-fun res!407504 () Bool)

(assert (=> d!89133 (=> (not res!407504) (not e!360361))))

(assert (=> d!89133 (= res!407504 (and (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18609 a!2986)) (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18609 a!2986)))) (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18609 a!2986)) (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18609 a!2986)))) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18609 a!2986))))))

(declare-fun lt!291123 () Unit!21128)

(declare-fun choose!9 (array!38026 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21128)

(assert (=> d!89133 (= lt!291123 (choose!9 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!291066 vacantSpotIndex!68 mask!3053))))

(assert (=> d!89133 (validMask!0 mask!3053)))

(assert (=> d!89133 (= (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!291066 vacantSpotIndex!68 mask!3053) lt!291123)))

(declare-fun b!630212 () Bool)

(assert (=> b!630212 (= e!360361 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!291066 vacantSpotIndex!68 (select (arr!18245 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!291066 vacantSpotIndex!68 (select (store (arr!18245 a!2986) i!1108 k!1786) j!136) (array!38027 (store (arr!18245 a!2986) i!1108 k!1786) (size!18609 a!2986)) mask!3053)))))

(assert (= (and d!89133 res!407504) b!630212))

(declare-fun m!605301 () Bool)

(assert (=> d!89133 m!605301))

(assert (=> d!89133 m!605185))

(assert (=> b!630212 m!605169))

(declare-fun m!605303 () Bool)

(assert (=> b!630212 m!605303))

(assert (=> b!630212 m!605163))

(assert (=> b!630212 m!605173))

(assert (=> b!630212 m!605171))

(assert (=> b!630212 m!605169))

(assert (=> b!630212 m!605163))

(assert (=> b!630080 d!89133))

(declare-fun d!89145 () Bool)

(declare-fun lt!291132 () (_ BitVec 32))

(assert (=> d!89145 (and (bvsge lt!291132 #b00000000000000000000000000000000) (bvslt lt!291132 (bvadd mask!3053 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!89145 (= lt!291132 (choose!52 index!984 x!910 mask!3053))))

(assert (=> d!89145 (validMask!0 mask!3053)))

(assert (=> d!89145 (= (nextIndex!0 index!984 x!910 mask!3053) lt!291132)))

(declare-fun bs!19000 () Bool)

(assert (= bs!19000 d!89145))

(declare-fun m!605305 () Bool)

(assert (=> bs!19000 m!605305))

(assert (=> bs!19000 m!605185))

(assert (=> b!630080 d!89145))

(declare-fun b!630235 () Bool)

(declare-fun e!360374 () SeekEntryResult!6692)

(assert (=> b!630235 (= e!360374 (MissingVacant!6692 vacantSpotIndex!68))))

(declare-fun b!630236 () Bool)

(declare-fun c!71728 () Bool)

(declare-fun lt!291133 () (_ BitVec 64))

(assert (=> b!630236 (= c!71728 (= lt!291133 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!360377 () SeekEntryResult!6692)

(assert (=> b!630236 (= e!360377 e!360374)))

(declare-fun b!630237 () Bool)

(declare-fun e!360376 () SeekEntryResult!6692)

(assert (=> b!630237 (= e!360376 Undefined!6692)))

(declare-fun b!630238 () Bool)

(assert (=> b!630238 (= e!360374 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!291066 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 (select (arr!18245 a!2986) j!136) a!2986 mask!3053))))

(declare-fun d!89147 () Bool)

(declare-fun lt!291134 () SeekEntryResult!6692)

(assert (=> d!89147 (and (or (is-Undefined!6692 lt!291134) (not (is-Found!6692 lt!291134)) (and (bvsge (index!29055 lt!291134) #b00000000000000000000000000000000) (bvslt (index!29055 lt!291134) (size!18609 a!2986)))) (or (is-Undefined!6692 lt!291134) (is-Found!6692 lt!291134) (not (is-MissingVacant!6692 lt!291134)) (not (= (index!29057 lt!291134) vacantSpotIndex!68)) (and (bvsge (index!29057 lt!291134) #b00000000000000000000000000000000) (bvslt (index!29057 lt!291134) (size!18609 a!2986)))) (or (is-Undefined!6692 lt!291134) (ite (is-Found!6692 lt!291134) (= (select (arr!18245 a!2986) (index!29055 lt!291134)) (select (arr!18245 a!2986) j!136)) (and (is-MissingVacant!6692 lt!291134) (= (index!29057 lt!291134) vacantSpotIndex!68) (= (select (arr!18245 a!2986) (index!29057 lt!291134)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!89147 (= lt!291134 e!360376)))

(declare-fun c!71729 () Bool)

(assert (=> d!89147 (= c!71729 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!89147 (= lt!291133 (select (arr!18245 a!2986) lt!291066))))

(assert (=> d!89147 (validMask!0 mask!3053)))

(assert (=> d!89147 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!291066 vacantSpotIndex!68 (select (arr!18245 a!2986) j!136) a!2986 mask!3053) lt!291134)))

(declare-fun b!630239 () Bool)

(assert (=> b!630239 (= e!360377 (Found!6692 lt!291066))))

(declare-fun b!630240 () Bool)

(assert (=> b!630240 (= e!360376 e!360377)))

(declare-fun c!71730 () Bool)

(assert (=> b!630240 (= c!71730 (= lt!291133 (select (arr!18245 a!2986) j!136)))))

(assert (= (and d!89147 c!71729) b!630237))

(assert (= (and d!89147 (not c!71729)) b!630240))

(assert (= (and b!630240 c!71730) b!630239))

(assert (= (and b!630240 (not c!71730)) b!630236))

(assert (= (and b!630236 c!71728) b!630235))

(assert (= (and b!630236 (not c!71728)) b!630238))

(declare-fun m!605307 () Bool)

(assert (=> b!630238 m!605307))

(assert (=> b!630238 m!605307))

(assert (=> b!630238 m!605163))

(declare-fun m!605309 () Bool)

(assert (=> b!630238 m!605309))

(declare-fun m!605311 () Bool)

(assert (=> d!89147 m!605311))

(declare-fun m!605313 () Bool)

(assert (=> d!89147 m!605313))

(declare-fun m!605315 () Bool)

(assert (=> d!89147 m!605315))

(assert (=> d!89147 m!605185))

(assert (=> b!630080 d!89147))

(declare-fun b!630241 () Bool)

(declare-fun e!360379 () SeekEntryResult!6692)

(assert (=> b!630241 (= e!360379 (MissingVacant!6692 vacantSpotIndex!68))))

(declare-fun b!630242 () Bool)

(declare-fun c!71732 () Bool)

(declare-fun lt!291135 () (_ BitVec 64))

(assert (=> b!630242 (= c!71732 (= lt!291135 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!360381 () SeekEntryResult!6692)

(assert (=> b!630242 (= e!360381 e!360379)))

(declare-fun b!630243 () Bool)

(declare-fun e!360380 () SeekEntryResult!6692)

(assert (=> b!630243 (= e!360380 Undefined!6692)))

(declare-fun b!630244 () Bool)

(assert (=> b!630244 (= e!360379 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!291066 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 lt!291069 lt!291065 mask!3053))))

(declare-fun lt!291136 () SeekEntryResult!6692)

(declare-fun d!89149 () Bool)

(assert (=> d!89149 (and (or (is-Undefined!6692 lt!291136) (not (is-Found!6692 lt!291136)) (and (bvsge (index!29055 lt!291136) #b00000000000000000000000000000000) (bvslt (index!29055 lt!291136) (size!18609 lt!291065)))) (or (is-Undefined!6692 lt!291136) (is-Found!6692 lt!291136) (not (is-MissingVacant!6692 lt!291136)) (not (= (index!29057 lt!291136) vacantSpotIndex!68)) (and (bvsge (index!29057 lt!291136) #b00000000000000000000000000000000) (bvslt (index!29057 lt!291136) (size!18609 lt!291065)))) (or (is-Undefined!6692 lt!291136) (ite (is-Found!6692 lt!291136) (= (select (arr!18245 lt!291065) (index!29055 lt!291136)) lt!291069) (and (is-MissingVacant!6692 lt!291136) (= (index!29057 lt!291136) vacantSpotIndex!68) (= (select (arr!18245 lt!291065) (index!29057 lt!291136)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!89149 (= lt!291136 e!360380)))

(declare-fun c!71733 () Bool)

(assert (=> d!89149 (= c!71733 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!89149 (= lt!291135 (select (arr!18245 lt!291065) lt!291066))))

(assert (=> d!89149 (validMask!0 mask!3053)))

(assert (=> d!89149 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!291066 vacantSpotIndex!68 lt!291069 lt!291065 mask!3053) lt!291136)))

(declare-fun b!630245 () Bool)

(assert (=> b!630245 (= e!360381 (Found!6692 lt!291066))))

(declare-fun b!630246 () Bool)

(assert (=> b!630246 (= e!360380 e!360381)))

(declare-fun c!71734 () Bool)

(assert (=> b!630246 (= c!71734 (= lt!291135 lt!291069))))

(assert (= (and d!89149 c!71733) b!630243))

(assert (= (and d!89149 (not c!71733)) b!630246))

(assert (= (and b!630246 c!71734) b!630245))

(assert (= (and b!630246 (not c!71734)) b!630242))

(assert (= (and b!630242 c!71732) b!630241))

(assert (= (and b!630242 (not c!71732)) b!630244))

(assert (=> b!630244 m!605307))

(assert (=> b!630244 m!605307))

(declare-fun m!605317 () Bool)

(assert (=> b!630244 m!605317))

(declare-fun m!605319 () Bool)

(assert (=> d!89149 m!605319))

(declare-fun m!605321 () Bool)

(assert (=> d!89149 m!605321))

(declare-fun m!605323 () Bool)

(assert (=> d!89149 m!605323))

(assert (=> d!89149 m!605185))

(assert (=> b!630080 d!89149))

(declare-fun d!89151 () Bool)

(assert (=> d!89151 (= (validKeyInArray!0 k!1786) (and (not (= k!1786 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1786 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!630077 d!89151))

(declare-fun b!630280 () Bool)

(declare-fun e!360409 () Bool)

(declare-fun e!360408 () Bool)

(assert (=> b!630280 (= e!360409 e!360408)))

(declare-fun res!407526 () Bool)

(assert (=> b!630280 (=> (not res!407526) (not e!360408))))

(declare-fun e!360407 () Bool)

(assert (=> b!630280 (= res!407526 (not e!360407))))

(declare-fun res!407528 () Bool)

(assert (=> b!630280 (=> (not res!407528) (not e!360407))))

(assert (=> b!630280 (= res!407528 (validKeyInArray!0 (select (arr!18245 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!630282 () Bool)

(declare-fun e!360406 () Bool)

(declare-fun call!33314 () Bool)

(assert (=> b!630282 (= e!360406 call!33314)))

(declare-fun b!630283 () Bool)

(declare-fun contains!3092 (List!12339 (_ BitVec 64)) Bool)

(assert (=> b!630283 (= e!360407 (contains!3092 Nil!12336 (select (arr!18245 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!630284 () Bool)

(assert (=> b!630284 (= e!360406 call!33314)))

(declare-fun bm!33311 () Bool)

(declare-fun c!71744 () Bool)

(assert (=> bm!33311 (= call!33314 (arrayNoDuplicates!0 a!2986 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!71744 (Cons!12335 (select (arr!18245 a!2986) #b00000000000000000000000000000000) Nil!12336) Nil!12336)))))

(declare-fun d!89153 () Bool)

(declare-fun res!407527 () Bool)

(assert (=> d!89153 (=> res!407527 e!360409)))

(assert (=> d!89153 (= res!407527 (bvsge #b00000000000000000000000000000000 (size!18609 a!2986)))))

(assert (=> d!89153 (= (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12336) e!360409)))

(declare-fun b!630281 () Bool)

(assert (=> b!630281 (= e!360408 e!360406)))

(assert (=> b!630281 (= c!71744 (validKeyInArray!0 (select (arr!18245 a!2986) #b00000000000000000000000000000000)))))

(assert (= (and d!89153 (not res!407527)) b!630280))

(assert (= (and b!630280 res!407528) b!630283))

(assert (= (and b!630280 res!407526) b!630281))

(assert (= (and b!630281 c!71744) b!630284))

(assert (= (and b!630281 (not c!71744)) b!630282))

(assert (= (or b!630284 b!630282) bm!33311))

(declare-fun m!605355 () Bool)

(assert (=> b!630280 m!605355))

(assert (=> b!630280 m!605355))

(declare-fun m!605357 () Bool)

(assert (=> b!630280 m!605357))

(assert (=> b!630283 m!605355))

(assert (=> b!630283 m!605355))

(declare-fun m!605359 () Bool)

(assert (=> b!630283 m!605359))

(assert (=> bm!33311 m!605355))

(declare-fun m!605361 () Bool)

(assert (=> bm!33311 m!605361))

(assert (=> b!630281 m!605355))

(assert (=> b!630281 m!605355))

(assert (=> b!630281 m!605357))

(assert (=> b!630076 d!89153))

(declare-fun b!630309 () Bool)

(declare-fun e!360425 () SeekEntryResult!6692)

(declare-fun e!360426 () SeekEntryResult!6692)

(assert (=> b!630309 (= e!360425 e!360426)))

(declare-fun lt!291158 () (_ BitVec 64))

(declare-fun lt!291159 () SeekEntryResult!6692)

(assert (=> b!630309 (= lt!291158 (select (arr!18245 a!2986) (index!29056 lt!291159)))))

(declare-fun c!71756 () Bool)

(assert (=> b!630309 (= c!71756 (= lt!291158 k!1786))))

(declare-fun b!630310 () Bool)

(declare-fun e!360427 () SeekEntryResult!6692)

(assert (=> b!630310 (= e!360427 (seekKeyOrZeroReturnVacant!0 (x!57814 lt!291159) (index!29056 lt!291159) (index!29056 lt!291159) k!1786 a!2986 mask!3053))))

(declare-fun b!630311 () Bool)

(declare-fun c!71754 () Bool)

(assert (=> b!630311 (= c!71754 (= lt!291158 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!630311 (= e!360426 e!360427)))

(declare-fun b!630312 () Bool)

(assert (=> b!630312 (= e!360426 (Found!6692 (index!29056 lt!291159)))))

(declare-fun b!630313 () Bool)

(assert (=> b!630313 (= e!360427 (MissingZero!6692 (index!29056 lt!291159)))))

(declare-fun b!630314 () Bool)

(assert (=> b!630314 (= e!360425 Undefined!6692)))

(declare-fun d!89161 () Bool)

(declare-fun lt!291157 () SeekEntryResult!6692)

(assert (=> d!89161 (and (or (is-Undefined!6692 lt!291157) (not (is-Found!6692 lt!291157)) (and (bvsge (index!29055 lt!291157) #b00000000000000000000000000000000) (bvslt (index!29055 lt!291157) (size!18609 a!2986)))) (or (is-Undefined!6692 lt!291157) (is-Found!6692 lt!291157) (not (is-MissingZero!6692 lt!291157)) (and (bvsge (index!29054 lt!291157) #b00000000000000000000000000000000) (bvslt (index!29054 lt!291157) (size!18609 a!2986)))) (or (is-Undefined!6692 lt!291157) (is-Found!6692 lt!291157) (is-MissingZero!6692 lt!291157) (not (is-MissingVacant!6692 lt!291157)) (and (bvsge (index!29057 lt!291157) #b00000000000000000000000000000000) (bvslt (index!29057 lt!291157) (size!18609 a!2986)))) (or (is-Undefined!6692 lt!291157) (ite (is-Found!6692 lt!291157) (= (select (arr!18245 a!2986) (index!29055 lt!291157)) k!1786) (ite (is-MissingZero!6692 lt!291157) (= (select (arr!18245 a!2986) (index!29054 lt!291157)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!6692 lt!291157) (= (select (arr!18245 a!2986) (index!29057 lt!291157)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!89161 (= lt!291157 e!360425)))

(declare-fun c!71755 () Bool)

(assert (=> d!89161 (= c!71755 (and (is-Intermediate!6692 lt!291159) (undefined!7504 lt!291159)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38026 (_ BitVec 32)) SeekEntryResult!6692)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!89161 (= lt!291159 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1786 mask!3053) k!1786 a!2986 mask!3053))))

(assert (=> d!89161 (validMask!0 mask!3053)))

(assert (=> d!89161 (= (seekEntryOrOpen!0 k!1786 a!2986 mask!3053) lt!291157)))

(assert (= (and d!89161 c!71755) b!630314))

(assert (= (and d!89161 (not c!71755)) b!630309))

(assert (= (and b!630309 c!71756) b!630312))

(assert (= (and b!630309 (not c!71756)) b!630311))

(assert (= (and b!630311 c!71754) b!630313))

(assert (= (and b!630311 (not c!71754)) b!630310))

(declare-fun m!605371 () Bool)

(assert (=> b!630309 m!605371))

(declare-fun m!605373 () Bool)

(assert (=> b!630310 m!605373))

(declare-fun m!605375 () Bool)

(assert (=> d!89161 m!605375))

(declare-fun m!605377 () Bool)

(assert (=> d!89161 m!605377))

(assert (=> d!89161 m!605375))

(declare-fun m!605379 () Bool)

(assert (=> d!89161 m!605379))

(declare-fun m!605381 () Bool)

(assert (=> d!89161 m!605381))

(assert (=> d!89161 m!605185))

(declare-fun m!605383 () Bool)

(assert (=> d!89161 m!605383))

(assert (=> b!630073 d!89161))

(declare-fun bm!33317 () Bool)

(declare-fun call!33320 () Bool)

(assert (=> bm!33317 (= call!33320 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2986 mask!3053))))

(declare-fun b!630341 () Bool)

(declare-fun e!360443 () Bool)

(assert (=> b!630341 (= e!360443 call!33320)))

(declare-fun d!89167 () Bool)

(declare-fun res!407540 () Bool)

(declare-fun e!360445 () Bool)

(assert (=> d!89167 (=> res!407540 e!360445)))

(assert (=> d!89167 (= res!407540 (bvsge #b00000000000000000000000000000000 (size!18609 a!2986)))))

(assert (=> d!89167 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053) e!360445)))

(declare-fun b!630342 () Bool)

(declare-fun e!360444 () Bool)

(assert (=> b!630342 (= e!360445 e!360444)))

(declare-fun c!71768 () Bool)

(assert (=> b!630342 (= c!71768 (validKeyInArray!0 (select (arr!18245 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!630343 () Bool)

(assert (=> b!630343 (= e!360444 call!33320)))

(declare-fun b!630344 () Bool)

(assert (=> b!630344 (= e!360444 e!360443)))

(declare-fun lt!291177 () (_ BitVec 64))

(assert (=> b!630344 (= lt!291177 (select (arr!18245 a!2986) #b00000000000000000000000000000000))))

(declare-fun lt!291176 () Unit!21128)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38026 (_ BitVec 64) (_ BitVec 32)) Unit!21128)

(assert (=> b!630344 (= lt!291176 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2986 lt!291177 #b00000000000000000000000000000000))))

(assert (=> b!630344 (arrayContainsKey!0 a!2986 lt!291177 #b00000000000000000000000000000000)))

(declare-fun lt!291175 () Unit!21128)

(assert (=> b!630344 (= lt!291175 lt!291176)))

(declare-fun res!407539 () Bool)

(assert (=> b!630344 (= res!407539 (= (seekEntryOrOpen!0 (select (arr!18245 a!2986) #b00000000000000000000000000000000) a!2986 mask!3053) (Found!6692 #b00000000000000000000000000000000)))))

(assert (=> b!630344 (=> (not res!407539) (not e!360443))))

(assert (= (and d!89167 (not res!407540)) b!630342))

(assert (= (and b!630342 c!71768) b!630344))

(assert (= (and b!630342 (not c!71768)) b!630343))

(assert (= (and b!630344 res!407539) b!630341))

(assert (= (or b!630341 b!630343) bm!33317))

(declare-fun m!605399 () Bool)

(assert (=> bm!33317 m!605399))

(assert (=> b!630342 m!605355))

(assert (=> b!630342 m!605355))

(assert (=> b!630342 m!605357))

(assert (=> b!630344 m!605355))

(declare-fun m!605401 () Bool)

(assert (=> b!630344 m!605401))

(declare-fun m!605403 () Bool)

(assert (=> b!630344 m!605403))

(assert (=> b!630344 m!605355))

(declare-fun m!605405 () Bool)

(assert (=> b!630344 m!605405))

(assert (=> b!630078 d!89167))

(declare-fun d!89169 () Bool)

(declare-fun res!407545 () Bool)

(declare-fun e!360450 () Bool)

(assert (=> d!89169 (=> res!407545 e!360450)))

(assert (=> d!89169 (= res!407545 (= (select (arr!18245 a!2986) #b00000000000000000000000000000000) k!1786))))

(assert (=> d!89169 (= (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000) e!360450)))

(declare-fun b!630349 () Bool)

(declare-fun e!360451 () Bool)

(assert (=> b!630349 (= e!360450 e!360451)))

(declare-fun res!407546 () Bool)

(assert (=> b!630349 (=> (not res!407546) (not e!360451))))

(assert (=> b!630349 (= res!407546 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!18609 a!2986)))))

(declare-fun b!630350 () Bool)

(assert (=> b!630350 (= e!360451 (arrayContainsKey!0 a!2986 k!1786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!89169 (not res!407545)) b!630349))

(assert (= (and b!630349 res!407546) b!630350))

(assert (=> d!89169 m!605355))

(declare-fun m!605407 () Bool)

(assert (=> b!630350 m!605407))

(assert (=> b!630072 d!89169))

(push 1)

(assert (not b!630201))

(assert (not d!89161))

(assert (not d!89099))

(assert (not bm!33317))

(assert (not d!89133))

(assert (not b!630165))

(assert (not bm!33311))

(assert (not b!630280))

(assert (not b!630283))

(assert (not b!630342))

(assert (not b!630281))

(assert (not b!630344))

(assert (not d!89131))

(assert (not b!630238))

(assert (not b!630350))

(assert (not b!630212))

(assert (not d!89147))

(assert (not b!630244))

(assert (not d!89145))

(assert (not d!89149))

(assert (not b!630310))

(check-sat)

(pop 1)

(push 1)

(check-sat)

