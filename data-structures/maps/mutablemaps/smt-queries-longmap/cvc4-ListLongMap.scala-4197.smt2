; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!57292 () Bool)

(assert start!57292)

(declare-fun b!633969 () Bool)

(declare-fun e!362526 () Bool)

(declare-fun e!362525 () Bool)

(assert (=> b!633969 (= e!362526 e!362525)))

(declare-fun res!410217 () Bool)

(assert (=> b!633969 (=> (not res!410217) (not e!362525))))

(declare-datatypes ((SeekEntryResult!6752 0))(
  ( (MissingZero!6752 (index!29306 (_ BitVec 32))) (Found!6752 (index!29307 (_ BitVec 32))) (Intermediate!6752 (undefined!7564 Bool) (index!29308 (_ BitVec 32)) (x!58070 (_ BitVec 32))) (Undefined!6752) (MissingVacant!6752 (index!29309 (_ BitVec 32))) )
))
(declare-fun lt!293124 () SeekEntryResult!6752)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!633969 (= res!410217 (or (= lt!293124 (MissingZero!6752 i!1108)) (= lt!293124 (MissingVacant!6752 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-datatypes ((array!38158 0))(
  ( (array!38159 (arr!18305 (Array (_ BitVec 32) (_ BitVec 64))) (size!18669 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38158)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38158 (_ BitVec 32)) SeekEntryResult!6752)

(assert (=> b!633969 (= lt!293124 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!633970 () Bool)

(declare-fun res!410224 () Bool)

(assert (=> b!633970 (=> (not res!410224) (not e!362526))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!633970 (= res!410224 (and (= (size!18669 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18669 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18669 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!633971 () Bool)

(declare-fun lt!293125 () (_ BitVec 64))

(declare-fun e!362530 () Bool)

(declare-fun lt!293121 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!633971 (= e!362530 (or (not (= (select (arr!18305 a!2986) j!136) lt!293125)) (not (= (select (arr!18305 a!2986) j!136) lt!293121)) (bvsge j!136 index!984) (bvsge index!984 (size!18669 a!2986)) (bvslt (bvadd #b00000000000000000000000000000001 j!136) #b00000000000000000000000000000000) (bvslt (size!18669 a!2986) #b01111111111111111111111111111111)))))

(declare-fun e!362527 () Bool)

(assert (=> b!633971 e!362527))

(declare-fun res!410215 () Bool)

(assert (=> b!633971 (=> (not res!410215) (not e!362527))))

(assert (=> b!633971 (= res!410215 (= lt!293121 (select (arr!18305 a!2986) j!136)))))

(assert (=> b!633971 (= lt!293121 (select (store (arr!18305 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!633972 () Bool)

(declare-fun res!410226 () Bool)

(assert (=> b!633972 (=> (not res!410226) (not e!362526))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!633972 (= res!410226 (validKeyInArray!0 k!1786))))

(declare-fun b!633973 () Bool)

(declare-fun e!362521 () Bool)

(declare-fun e!362529 () Bool)

(assert (=> b!633973 (= e!362521 e!362529)))

(declare-fun res!410219 () Bool)

(assert (=> b!633973 (=> (not res!410219) (not e!362529))))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!293130 () SeekEntryResult!6752)

(assert (=> b!633973 (= res!410219 (and (= lt!293130 (Found!6752 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18305 a!2986) index!984) (select (arr!18305 a!2986) j!136))) (not (= (select (arr!18305 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38158 (_ BitVec 32)) SeekEntryResult!6752)

(assert (=> b!633973 (= lt!293130 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18305 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!633974 () Bool)

(declare-fun res!410216 () Bool)

(assert (=> b!633974 (=> (not res!410216) (not e!362526))))

(assert (=> b!633974 (= res!410216 (validKeyInArray!0 (select (arr!18305 a!2986) j!136)))))

(declare-fun b!633975 () Bool)

(assert (=> b!633975 (= e!362525 e!362521)))

(declare-fun res!410225 () Bool)

(assert (=> b!633975 (=> (not res!410225) (not e!362521))))

(assert (=> b!633975 (= res!410225 (= (select (store (arr!18305 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!293129 () array!38158)

(assert (=> b!633975 (= lt!293129 (array!38159 (store (arr!18305 a!2986) i!1108 k!1786) (size!18669 a!2986)))))

(declare-fun b!633976 () Bool)

(declare-datatypes ((Unit!21366 0))(
  ( (Unit!21367) )
))
(declare-fun e!362520 () Unit!21366)

(declare-fun Unit!21368 () Unit!21366)

(assert (=> b!633976 (= e!362520 Unit!21368)))

(declare-fun b!633977 () Bool)

(declare-fun e!362528 () Bool)

(assert (=> b!633977 (= e!362527 e!362528)))

(declare-fun res!410223 () Bool)

(assert (=> b!633977 (=> res!410223 e!362528)))

(assert (=> b!633977 (= res!410223 (or (not (= (select (arr!18305 a!2986) j!136) lt!293125)) (not (= (select (arr!18305 a!2986) j!136) lt!293121)) (bvsge j!136 index!984)))))

(declare-fun b!633978 () Bool)

(declare-fun res!410227 () Bool)

(assert (=> b!633978 (=> (not res!410227) (not e!362525))))

(assert (=> b!633978 (= res!410227 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18305 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!633979 () Bool)

(declare-fun Unit!21369 () Unit!21366)

(assert (=> b!633979 (= e!362520 Unit!21369)))

(assert (=> b!633979 false))

(declare-fun b!633980 () Bool)

(declare-fun res!410222 () Bool)

(assert (=> b!633980 (=> (not res!410222) (not e!362526))))

(declare-fun arrayContainsKey!0 (array!38158 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!633980 (= res!410222 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!633981 () Bool)

(declare-fun e!362522 () Bool)

(assert (=> b!633981 (= e!362522 (arrayContainsKey!0 lt!293129 (select (arr!18305 a!2986) j!136) index!984))))

(declare-fun b!633982 () Bool)

(declare-fun e!362523 () Bool)

(declare-fun lt!293127 () SeekEntryResult!6752)

(assert (=> b!633982 (= e!362523 (= lt!293130 lt!293127))))

(declare-fun b!633983 () Bool)

(declare-fun res!410221 () Bool)

(assert (=> b!633983 (=> (not res!410221) (not e!362525))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38158 (_ BitVec 32)) Bool)

(assert (=> b!633983 (= res!410221 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!633984 () Bool)

(declare-fun res!410218 () Bool)

(assert (=> b!633984 (=> (not res!410218) (not e!362525))))

(declare-datatypes ((List!12399 0))(
  ( (Nil!12396) (Cons!12395 (h!13440 (_ BitVec 64)) (t!18635 List!12399)) )
))
(declare-fun arrayNoDuplicates!0 (array!38158 (_ BitVec 32) List!12399) Bool)

(assert (=> b!633984 (= res!410218 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12396))))

(declare-fun b!633985 () Bool)

(assert (=> b!633985 (= e!362529 (not e!362530))))

(declare-fun res!410220 () Bool)

(assert (=> b!633985 (=> res!410220 e!362530)))

(declare-fun lt!293122 () SeekEntryResult!6752)

(assert (=> b!633985 (= res!410220 (not (= lt!293122 (Found!6752 index!984))))))

(declare-fun lt!293123 () Unit!21366)

(assert (=> b!633985 (= lt!293123 e!362520)))

(declare-fun c!72245 () Bool)

(assert (=> b!633985 (= c!72245 (= lt!293122 Undefined!6752))))

(assert (=> b!633985 (= lt!293122 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!293125 lt!293129 mask!3053))))

(assert (=> b!633985 e!362523))

(declare-fun res!410213 () Bool)

(assert (=> b!633985 (=> (not res!410213) (not e!362523))))

(declare-fun lt!293128 () (_ BitVec 32))

(assert (=> b!633985 (= res!410213 (= lt!293127 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!293128 vacantSpotIndex!68 lt!293125 lt!293129 mask!3053)))))

(assert (=> b!633985 (= lt!293127 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!293128 vacantSpotIndex!68 (select (arr!18305 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!633985 (= lt!293125 (select (store (arr!18305 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!293126 () Unit!21366)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38158 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21366)

(assert (=> b!633985 (= lt!293126 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!293128 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!633985 (= lt!293128 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun res!410214 () Bool)

(assert (=> start!57292 (=> (not res!410214) (not e!362526))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57292 (= res!410214 (validMask!0 mask!3053))))

(assert (=> start!57292 e!362526))

(assert (=> start!57292 true))

(declare-fun array_inv!14079 (array!38158) Bool)

(assert (=> start!57292 (array_inv!14079 a!2986)))

(declare-fun b!633986 () Bool)

(assert (=> b!633986 (= e!362528 e!362522)))

(declare-fun res!410228 () Bool)

(assert (=> b!633986 (=> (not res!410228) (not e!362522))))

(assert (=> b!633986 (= res!410228 (arrayContainsKey!0 lt!293129 (select (arr!18305 a!2986) j!136) j!136))))

(assert (= (and start!57292 res!410214) b!633970))

(assert (= (and b!633970 res!410224) b!633974))

(assert (= (and b!633974 res!410216) b!633972))

(assert (= (and b!633972 res!410226) b!633980))

(assert (= (and b!633980 res!410222) b!633969))

(assert (= (and b!633969 res!410217) b!633983))

(assert (= (and b!633983 res!410221) b!633984))

(assert (= (and b!633984 res!410218) b!633978))

(assert (= (and b!633978 res!410227) b!633975))

(assert (= (and b!633975 res!410225) b!633973))

(assert (= (and b!633973 res!410219) b!633985))

(assert (= (and b!633985 res!410213) b!633982))

(assert (= (and b!633985 c!72245) b!633979))

(assert (= (and b!633985 (not c!72245)) b!633976))

(assert (= (and b!633985 (not res!410220)) b!633971))

(assert (= (and b!633971 res!410215) b!633977))

(assert (= (and b!633977 (not res!410223)) b!633986))

(assert (= (and b!633986 res!410228) b!633981))

(declare-fun m!608585 () Bool)

(assert (=> b!633974 m!608585))

(assert (=> b!633974 m!608585))

(declare-fun m!608587 () Bool)

(assert (=> b!633974 m!608587))

(assert (=> b!633981 m!608585))

(assert (=> b!633981 m!608585))

(declare-fun m!608589 () Bool)

(assert (=> b!633981 m!608589))

(declare-fun m!608591 () Bool)

(assert (=> b!633975 m!608591))

(declare-fun m!608593 () Bool)

(assert (=> b!633975 m!608593))

(assert (=> b!633986 m!608585))

(assert (=> b!633986 m!608585))

(declare-fun m!608595 () Bool)

(assert (=> b!633986 m!608595))

(declare-fun m!608597 () Bool)

(assert (=> b!633973 m!608597))

(assert (=> b!633973 m!608585))

(assert (=> b!633973 m!608585))

(declare-fun m!608599 () Bool)

(assert (=> b!633973 m!608599))

(assert (=> b!633971 m!608585))

(assert (=> b!633971 m!608591))

(declare-fun m!608601 () Bool)

(assert (=> b!633971 m!608601))

(declare-fun m!608603 () Bool)

(assert (=> b!633984 m!608603))

(declare-fun m!608605 () Bool)

(assert (=> b!633980 m!608605))

(assert (=> b!633977 m!608585))

(declare-fun m!608607 () Bool)

(assert (=> b!633969 m!608607))

(declare-fun m!608609 () Bool)

(assert (=> b!633972 m!608609))

(declare-fun m!608611 () Bool)

(assert (=> b!633983 m!608611))

(declare-fun m!608613 () Bool)

(assert (=> start!57292 m!608613))

(declare-fun m!608615 () Bool)

(assert (=> start!57292 m!608615))

(declare-fun m!608617 () Bool)

(assert (=> b!633985 m!608617))

(assert (=> b!633985 m!608585))

(assert (=> b!633985 m!608591))

(declare-fun m!608619 () Bool)

(assert (=> b!633985 m!608619))

(declare-fun m!608621 () Bool)

(assert (=> b!633985 m!608621))

(declare-fun m!608623 () Bool)

(assert (=> b!633985 m!608623))

(declare-fun m!608625 () Bool)

(assert (=> b!633985 m!608625))

(assert (=> b!633985 m!608585))

(declare-fun m!608627 () Bool)

(assert (=> b!633985 m!608627))

(declare-fun m!608629 () Bool)

(assert (=> b!633978 m!608629))

(push 1)

(assert (not b!633985))

(assert (not b!633980))

(assert (not b!633981))

(assert (not b!633984))

(assert (not b!633973))

(assert (not start!57292))

(assert (not b!633974))

(assert (not b!633969))

(assert (not b!633986))

(assert (not b!633983))

(assert (not b!633972))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!89501 () Bool)

(assert (=> d!89501 (= (validKeyInArray!0 k!1786) (and (not (= k!1786 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1786 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!633972 d!89501))

(declare-fun bm!33380 () Bool)

(declare-fun call!33383 () Bool)

(assert (=> bm!33380 (= call!33383 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2986 mask!3053))))

(declare-fun b!634069 () Bool)

(declare-fun e!362590 () Bool)

(declare-fun e!362591 () Bool)

(assert (=> b!634069 (= e!362590 e!362591)))

(declare-fun c!72269 () Bool)

(assert (=> b!634069 (= c!72269 (validKeyInArray!0 (select (arr!18305 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!634070 () Bool)

(assert (=> b!634070 (= e!362591 call!33383)))

(declare-fun d!89503 () Bool)

(declare-fun res!410265 () Bool)

(assert (=> d!89503 (=> res!410265 e!362590)))

(assert (=> d!89503 (= res!410265 (bvsge #b00000000000000000000000000000000 (size!18669 a!2986)))))

(assert (=> d!89503 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053) e!362590)))

(declare-fun b!634071 () Bool)

(declare-fun e!362592 () Bool)

(assert (=> b!634071 (= e!362591 e!362592)))

(declare-fun lt!293163 () (_ BitVec 64))

(assert (=> b!634071 (= lt!293163 (select (arr!18305 a!2986) #b00000000000000000000000000000000))))

(declare-fun lt!293164 () Unit!21366)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38158 (_ BitVec 64) (_ BitVec 32)) Unit!21366)

(assert (=> b!634071 (= lt!293164 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2986 lt!293163 #b00000000000000000000000000000000))))

(assert (=> b!634071 (arrayContainsKey!0 a!2986 lt!293163 #b00000000000000000000000000000000)))

(declare-fun lt!293162 () Unit!21366)

(assert (=> b!634071 (= lt!293162 lt!293164)))

(declare-fun res!410266 () Bool)

(assert (=> b!634071 (= res!410266 (= (seekEntryOrOpen!0 (select (arr!18305 a!2986) #b00000000000000000000000000000000) a!2986 mask!3053) (Found!6752 #b00000000000000000000000000000000)))))

(assert (=> b!634071 (=> (not res!410266) (not e!362592))))

(declare-fun b!634072 () Bool)

(assert (=> b!634072 (= e!362592 call!33383)))

(assert (= (and d!89503 (not res!410265)) b!634069))

(assert (= (and b!634069 c!72269) b!634071))

(assert (= (and b!634069 (not c!72269)) b!634070))

(assert (= (and b!634071 res!410266) b!634072))

(assert (= (or b!634072 b!634070) bm!33380))

(declare-fun m!608691 () Bool)

(assert (=> bm!33380 m!608691))

(declare-fun m!608693 () Bool)

(assert (=> b!634069 m!608693))

(assert (=> b!634069 m!608693))

(declare-fun m!608695 () Bool)

(assert (=> b!634069 m!608695))

(assert (=> b!634071 m!608693))

(declare-fun m!608697 () Bool)

(assert (=> b!634071 m!608697))

(declare-fun m!608699 () Bool)

(assert (=> b!634071 m!608699))

(assert (=> b!634071 m!608693))

(declare-fun m!608701 () Bool)

(assert (=> b!634071 m!608701))

(assert (=> b!633983 d!89503))

(declare-fun d!89513 () Bool)

(assert (=> d!89513 (= (validMask!0 mask!3053) (and (or (= mask!3053 #b00000000000000000000000000000111) (= mask!3053 #b00000000000000000000000000001111) (= mask!3053 #b00000000000000000000000000011111) (= mask!3053 #b00000000000000000000000000111111) (= mask!3053 #b00000000000000000000000001111111) (= mask!3053 #b00000000000000000000000011111111) (= mask!3053 #b00000000000000000000000111111111) (= mask!3053 #b00000000000000000000001111111111) (= mask!3053 #b00000000000000000000011111111111) (= mask!3053 #b00000000000000000000111111111111) (= mask!3053 #b00000000000000000001111111111111) (= mask!3053 #b00000000000000000011111111111111) (= mask!3053 #b00000000000000000111111111111111) (= mask!3053 #b00000000000000001111111111111111) (= mask!3053 #b00000000000000011111111111111111) (= mask!3053 #b00000000000000111111111111111111) (= mask!3053 #b00000000000001111111111111111111) (= mask!3053 #b00000000000011111111111111111111) (= mask!3053 #b00000000000111111111111111111111) (= mask!3053 #b00000000001111111111111111111111) (= mask!3053 #b00000000011111111111111111111111) (= mask!3053 #b00000000111111111111111111111111) (= mask!3053 #b00000001111111111111111111111111) (= mask!3053 #b00000011111111111111111111111111) (= mask!3053 #b00000111111111111111111111111111) (= mask!3053 #b00001111111111111111111111111111) (= mask!3053 #b00011111111111111111111111111111) (= mask!3053 #b00111111111111111111111111111111)) (bvsle mask!3053 #b00111111111111111111111111111111)))))

(assert (=> start!57292 d!89513))

(declare-fun d!89525 () Bool)

(assert (=> d!89525 (= (array_inv!14079 a!2986) (bvsge (size!18669 a!2986) #b00000000000000000000000000000000))))

(assert (=> start!57292 d!89525))

(declare-fun b!634138 () Bool)

(declare-fun c!72298 () Bool)

(declare-fun lt!293187 () (_ BitVec 64))

(assert (=> b!634138 (= c!72298 (= lt!293187 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!362632 () SeekEntryResult!6752)

(declare-fun e!362631 () SeekEntryResult!6752)

(assert (=> b!634138 (= e!362632 e!362631)))

(declare-fun b!634139 () Bool)

(assert (=> b!634139 (= e!362631 (MissingVacant!6752 vacantSpotIndex!68))))

(declare-fun b!634140 () Bool)

(declare-fun e!362633 () SeekEntryResult!6752)

(assert (=> b!634140 (= e!362633 e!362632)))

(declare-fun c!72297 () Bool)

(assert (=> b!634140 (= c!72297 (= lt!293187 (select (arr!18305 a!2986) j!136)))))

(declare-fun d!89527 () Bool)

(declare-fun lt!293186 () SeekEntryResult!6752)

(assert (=> d!89527 (and (or (is-Undefined!6752 lt!293186) (not (is-Found!6752 lt!293186)) (and (bvsge (index!29307 lt!293186) #b00000000000000000000000000000000) (bvslt (index!29307 lt!293186) (size!18669 a!2986)))) (or (is-Undefined!6752 lt!293186) (is-Found!6752 lt!293186) (not (is-MissingVacant!6752 lt!293186)) (not (= (index!29309 lt!293186) vacantSpotIndex!68)) (and (bvsge (index!29309 lt!293186) #b00000000000000000000000000000000) (bvslt (index!29309 lt!293186) (size!18669 a!2986)))) (or (is-Undefined!6752 lt!293186) (ite (is-Found!6752 lt!293186) (= (select (arr!18305 a!2986) (index!29307 lt!293186)) (select (arr!18305 a!2986) j!136)) (and (is-MissingVacant!6752 lt!293186) (= (index!29309 lt!293186) vacantSpotIndex!68) (= (select (arr!18305 a!2986) (index!29309 lt!293186)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!89527 (= lt!293186 e!362633)))

(declare-fun c!72299 () Bool)

(assert (=> d!89527 (= c!72299 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!89527 (= lt!293187 (select (arr!18305 a!2986) index!984))))

(assert (=> d!89527 (validMask!0 mask!3053)))

(assert (=> d!89527 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18305 a!2986) j!136) a!2986 mask!3053) lt!293186)))

(declare-fun b!634141 () Bool)

(assert (=> b!634141 (= e!362631 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 (select (arr!18305 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!634142 () Bool)

(assert (=> b!634142 (= e!362632 (Found!6752 index!984))))

(declare-fun b!634143 () Bool)

(assert (=> b!634143 (= e!362633 Undefined!6752)))

(assert (= (and d!89527 c!72299) b!634143))

(assert (= (and d!89527 (not c!72299)) b!634140))

(assert (= (and b!634140 c!72297) b!634142))

(assert (= (and b!634140 (not c!72297)) b!634138))

(assert (= (and b!634138 c!72298) b!634139))

(assert (= (and b!634138 (not c!72298)) b!634141))

(declare-fun m!608731 () Bool)

(assert (=> d!89527 m!608731))

(declare-fun m!608733 () Bool)

(assert (=> d!89527 m!608733))

(assert (=> d!89527 m!608597))

(assert (=> d!89527 m!608613))

(assert (=> b!634141 m!608623))

(assert (=> b!634141 m!608623))

(assert (=> b!634141 m!608585))

(declare-fun m!608735 () Bool)

(assert (=> b!634141 m!608735))

(assert (=> b!633973 d!89527))

(declare-fun b!634160 () Bool)

(declare-fun e!362648 () Bool)

(declare-fun call!33389 () Bool)

(assert (=> b!634160 (= e!362648 call!33389)))

(declare-fun bm!33386 () Bool)

(declare-fun c!72305 () Bool)

(assert (=> bm!33386 (= call!33389 (arrayNoDuplicates!0 a!2986 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!72305 (Cons!12395 (select (arr!18305 a!2986) #b00000000000000000000000000000000) Nil!12396) Nil!12396)))))

(declare-fun b!634161 () Bool)

(assert (=> b!634161 (= e!362648 call!33389)))

(declare-fun b!634162 () Bool)

(declare-fun e!362647 () Bool)

(declare-fun contains!3100 (List!12399 (_ BitVec 64)) Bool)

(assert (=> b!634162 (= e!362647 (contains!3100 Nil!12396 (select (arr!18305 a!2986) #b00000000000000000000000000000000)))))

(declare-fun d!89531 () Bool)

(declare-fun res!410284 () Bool)

(declare-fun e!362645 () Bool)

(assert (=> d!89531 (=> res!410284 e!362645)))

(assert (=> d!89531 (= res!410284 (bvsge #b00000000000000000000000000000000 (size!18669 a!2986)))))

(assert (=> d!89531 (= (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12396) e!362645)))

(declare-fun b!634163 () Bool)

(declare-fun e!362646 () Bool)

(assert (=> b!634163 (= e!362645 e!362646)))

(declare-fun res!410285 () Bool)

(assert (=> b!634163 (=> (not res!410285) (not e!362646))))

(assert (=> b!634163 (= res!410285 (not e!362647))))

(declare-fun res!410286 () Bool)

(assert (=> b!634163 (=> (not res!410286) (not e!362647))))

(assert (=> b!634163 (= res!410286 (validKeyInArray!0 (select (arr!18305 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!634164 () Bool)

(assert (=> b!634164 (= e!362646 e!362648)))

(assert (=> b!634164 (= c!72305 (validKeyInArray!0 (select (arr!18305 a!2986) #b00000000000000000000000000000000)))))

(assert (= (and d!89531 (not res!410284)) b!634163))

(assert (= (and b!634163 res!410286) b!634162))

(assert (= (and b!634163 res!410285) b!634164))

(assert (= (and b!634164 c!72305) b!634160))

(assert (= (and b!634164 (not c!72305)) b!634161))

(assert (= (or b!634160 b!634161) bm!33386))

(assert (=> bm!33386 m!608693))

(declare-fun m!608751 () Bool)

(assert (=> bm!33386 m!608751))

(assert (=> b!634162 m!608693))

(assert (=> b!634162 m!608693))

(declare-fun m!608753 () Bool)

(assert (=> b!634162 m!608753))

(assert (=> b!634163 m!608693))

(assert (=> b!634163 m!608693))

(assert (=> b!634163 m!608695))

(assert (=> b!634164 m!608693))

