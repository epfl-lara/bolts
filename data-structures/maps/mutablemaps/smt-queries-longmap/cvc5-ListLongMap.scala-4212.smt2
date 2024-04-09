; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!57732 () Bool)

(assert start!57732)

(declare-fun b!638204 () Bool)

(declare-fun res!413211 () Bool)

(declare-fun e!365197 () Bool)

(assert (=> b!638204 (=> (not res!413211) (not e!365197))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!38259 0))(
  ( (array!38260 (arr!18348 (Array (_ BitVec 32) (_ BitVec 64))) (size!18712 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38259)

(assert (=> b!638204 (= res!413211 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18348 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!638205 () Bool)

(declare-datatypes ((Unit!21538 0))(
  ( (Unit!21539) )
))
(declare-fun e!365196 () Unit!21538)

(declare-fun Unit!21540 () Unit!21538)

(assert (=> b!638205 (= e!365196 Unit!21540)))

(assert (=> b!638205 false))

(declare-fun b!638206 () Bool)

(declare-fun e!365192 () Bool)

(declare-fun e!365189 () Bool)

(assert (=> b!638206 (= e!365192 (not e!365189))))

(declare-fun res!413202 () Bool)

(assert (=> b!638206 (=> res!413202 e!365189)))

(declare-datatypes ((SeekEntryResult!6795 0))(
  ( (MissingZero!6795 (index!29493 (_ BitVec 32))) (Found!6795 (index!29494 (_ BitVec 32))) (Intermediate!6795 (undefined!7607 Bool) (index!29495 (_ BitVec 32)) (x!58278 (_ BitVec 32))) (Undefined!6795) (MissingVacant!6795 (index!29496 (_ BitVec 32))) )
))
(declare-fun lt!295187 () SeekEntryResult!6795)

(assert (=> b!638206 (= res!413202 (not (= lt!295187 (Found!6795 index!984))))))

(declare-fun lt!295180 () Unit!21538)

(assert (=> b!638206 (= lt!295180 e!365196)))

(declare-fun c!72869 () Bool)

(assert (=> b!638206 (= c!72869 (= lt!295187 Undefined!6795))))

(declare-fun lt!295188 () (_ BitVec 64))

(declare-fun lt!295189 () array!38259)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38259 (_ BitVec 32)) SeekEntryResult!6795)

(assert (=> b!638206 (= lt!295187 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!295188 lt!295189 mask!3053))))

(declare-fun e!365187 () Bool)

(assert (=> b!638206 e!365187))

(declare-fun res!413208 () Bool)

(assert (=> b!638206 (=> (not res!413208) (not e!365187))))

(declare-fun lt!295181 () SeekEntryResult!6795)

(declare-fun lt!295184 () (_ BitVec 32))

(assert (=> b!638206 (= res!413208 (= lt!295181 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!295184 vacantSpotIndex!68 lt!295188 lt!295189 mask!3053)))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!638206 (= lt!295181 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!295184 vacantSpotIndex!68 (select (arr!18348 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!638206 (= lt!295188 (select (store (arr!18348 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!295191 () Unit!21538)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38259 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21538)

(assert (=> b!638206 (= lt!295191 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!295184 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!638206 (= lt!295184 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!638207 () Bool)

(declare-fun lt!295185 () SeekEntryResult!6795)

(assert (=> b!638207 (= e!365187 (= lt!295185 lt!295181))))

(declare-fun b!638208 () Bool)

(declare-fun res!413205 () Bool)

(declare-fun e!365195 () Bool)

(assert (=> b!638208 (=> (not res!413205) (not e!365195))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!638208 (= res!413205 (validKeyInArray!0 k!1786))))

(declare-fun res!413216 () Bool)

(assert (=> start!57732 (=> (not res!413216) (not e!365195))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57732 (= res!413216 (validMask!0 mask!3053))))

(assert (=> start!57732 e!365195))

(assert (=> start!57732 true))

(declare-fun array_inv!14122 (array!38259) Bool)

(assert (=> start!57732 (array_inv!14122 a!2986)))

(declare-fun b!638209 () Bool)

(declare-fun res!413200 () Bool)

(assert (=> b!638209 (=> (not res!413200) (not e!365195))))

(declare-fun arrayContainsKey!0 (array!38259 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!638209 (= res!413200 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!638210 () Bool)

(declare-fun e!365191 () Bool)

(assert (=> b!638210 (= e!365191 e!365192)))

(declare-fun res!413201 () Bool)

(assert (=> b!638210 (=> (not res!413201) (not e!365192))))

(assert (=> b!638210 (= res!413201 (and (= lt!295185 (Found!6795 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18348 a!2986) index!984) (select (arr!18348 a!2986) j!136))) (not (= (select (arr!18348 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!638210 (= lt!295185 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18348 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!638211 () Bool)

(declare-fun Unit!21541 () Unit!21538)

(assert (=> b!638211 (= e!365196 Unit!21541)))

(declare-fun b!638212 () Bool)

(declare-fun e!365186 () Bool)

(declare-fun e!365194 () Bool)

(assert (=> b!638212 (= e!365186 e!365194)))

(declare-fun res!413213 () Bool)

(assert (=> b!638212 (=> (not res!413213) (not e!365194))))

(assert (=> b!638212 (= res!413213 (arrayContainsKey!0 lt!295189 (select (arr!18348 a!2986) j!136) j!136))))

(declare-fun b!638213 () Bool)

(declare-fun e!365188 () Bool)

(assert (=> b!638213 (= e!365189 e!365188)))

(declare-fun res!413212 () Bool)

(assert (=> b!638213 (=> res!413212 e!365188)))

(declare-fun lt!295190 () (_ BitVec 64))

(assert (=> b!638213 (= res!413212 (or (not (= (select (arr!18348 a!2986) j!136) lt!295188)) (not (= (select (arr!18348 a!2986) j!136) lt!295190)) (bvsge j!136 index!984)))))

(declare-fun e!365190 () Bool)

(assert (=> b!638213 e!365190))

(declare-fun res!413209 () Bool)

(assert (=> b!638213 (=> (not res!413209) (not e!365190))))

(assert (=> b!638213 (= res!413209 (= lt!295190 (select (arr!18348 a!2986) j!136)))))

(assert (=> b!638213 (= lt!295190 (select (store (arr!18348 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!638214 () Bool)

(assert (=> b!638214 (= e!365190 e!365186)))

(declare-fun res!413207 () Bool)

(assert (=> b!638214 (=> res!413207 e!365186)))

(assert (=> b!638214 (= res!413207 (or (not (= (select (arr!18348 a!2986) j!136) lt!295188)) (not (= (select (arr!18348 a!2986) j!136) lt!295190)) (bvsge j!136 index!984)))))

(declare-fun b!638215 () Bool)

(assert (=> b!638215 (= e!365188 true)))

(declare-datatypes ((List!12442 0))(
  ( (Nil!12439) (Cons!12438 (h!13483 (_ BitVec 64)) (t!18678 List!12442)) )
))
(declare-fun arrayNoDuplicates!0 (array!38259 (_ BitVec 32) List!12442) Bool)

(assert (=> b!638215 (arrayNoDuplicates!0 lt!295189 #b00000000000000000000000000000000 Nil!12439)))

(declare-fun lt!295182 () Unit!21538)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38259 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12442) Unit!21538)

(assert (=> b!638215 (= lt!295182 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12439))))

(assert (=> b!638215 (arrayContainsKey!0 lt!295189 (select (arr!18348 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!295186 () Unit!21538)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38259 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21538)

(assert (=> b!638215 (= lt!295186 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!295189 (select (arr!18348 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!638216 () Bool)

(declare-fun res!413206 () Bool)

(assert (=> b!638216 (=> (not res!413206) (not e!365197))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38259 (_ BitVec 32)) Bool)

(assert (=> b!638216 (= res!413206 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!638217 () Bool)

(declare-fun res!413215 () Bool)

(assert (=> b!638217 (=> (not res!413215) (not e!365195))))

(assert (=> b!638217 (= res!413215 (and (= (size!18712 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18712 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18712 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!638218 () Bool)

(assert (=> b!638218 (= e!365194 (arrayContainsKey!0 lt!295189 (select (arr!18348 a!2986) j!136) index!984))))

(declare-fun b!638219 () Bool)

(declare-fun res!413214 () Bool)

(assert (=> b!638219 (=> (not res!413214) (not e!365197))))

(assert (=> b!638219 (= res!413214 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12439))))

(declare-fun b!638220 () Bool)

(declare-fun res!413203 () Bool)

(assert (=> b!638220 (=> (not res!413203) (not e!365195))))

(assert (=> b!638220 (= res!413203 (validKeyInArray!0 (select (arr!18348 a!2986) j!136)))))

(declare-fun b!638221 () Bool)

(assert (=> b!638221 (= e!365197 e!365191)))

(declare-fun res!413204 () Bool)

(assert (=> b!638221 (=> (not res!413204) (not e!365191))))

(assert (=> b!638221 (= res!413204 (= (select (store (arr!18348 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!638221 (= lt!295189 (array!38260 (store (arr!18348 a!2986) i!1108 k!1786) (size!18712 a!2986)))))

(declare-fun b!638222 () Bool)

(assert (=> b!638222 (= e!365195 e!365197)))

(declare-fun res!413210 () Bool)

(assert (=> b!638222 (=> (not res!413210) (not e!365197))))

(declare-fun lt!295183 () SeekEntryResult!6795)

(assert (=> b!638222 (= res!413210 (or (= lt!295183 (MissingZero!6795 i!1108)) (= lt!295183 (MissingVacant!6795 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38259 (_ BitVec 32)) SeekEntryResult!6795)

(assert (=> b!638222 (= lt!295183 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(assert (= (and start!57732 res!413216) b!638217))

(assert (= (and b!638217 res!413215) b!638220))

(assert (= (and b!638220 res!413203) b!638208))

(assert (= (and b!638208 res!413205) b!638209))

(assert (= (and b!638209 res!413200) b!638222))

(assert (= (and b!638222 res!413210) b!638216))

(assert (= (and b!638216 res!413206) b!638219))

(assert (= (and b!638219 res!413214) b!638204))

(assert (= (and b!638204 res!413211) b!638221))

(assert (= (and b!638221 res!413204) b!638210))

(assert (= (and b!638210 res!413201) b!638206))

(assert (= (and b!638206 res!413208) b!638207))

(assert (= (and b!638206 c!72869) b!638205))

(assert (= (and b!638206 (not c!72869)) b!638211))

(assert (= (and b!638206 (not res!413202)) b!638213))

(assert (= (and b!638213 res!413209) b!638214))

(assert (= (and b!638214 (not res!413207)) b!638212))

(assert (= (and b!638212 res!413213) b!638218))

(assert (= (and b!638213 (not res!413212)) b!638215))

(declare-fun m!612207 () Bool)

(assert (=> b!638222 m!612207))

(declare-fun m!612209 () Bool)

(assert (=> b!638208 m!612209))

(declare-fun m!612211 () Bool)

(assert (=> start!57732 m!612211))

(declare-fun m!612213 () Bool)

(assert (=> start!57732 m!612213))

(declare-fun m!612215 () Bool)

(assert (=> b!638220 m!612215))

(assert (=> b!638220 m!612215))

(declare-fun m!612217 () Bool)

(assert (=> b!638220 m!612217))

(declare-fun m!612219 () Bool)

(assert (=> b!638219 m!612219))

(declare-fun m!612221 () Bool)

(assert (=> b!638204 m!612221))

(assert (=> b!638212 m!612215))

(assert (=> b!638212 m!612215))

(declare-fun m!612223 () Bool)

(assert (=> b!638212 m!612223))

(assert (=> b!638215 m!612215))

(declare-fun m!612225 () Bool)

(assert (=> b!638215 m!612225))

(assert (=> b!638215 m!612215))

(declare-fun m!612227 () Bool)

(assert (=> b!638215 m!612227))

(assert (=> b!638215 m!612215))

(declare-fun m!612229 () Bool)

(assert (=> b!638215 m!612229))

(declare-fun m!612231 () Bool)

(assert (=> b!638215 m!612231))

(declare-fun m!612233 () Bool)

(assert (=> b!638209 m!612233))

(declare-fun m!612235 () Bool)

(assert (=> b!638210 m!612235))

(assert (=> b!638210 m!612215))

(assert (=> b!638210 m!612215))

(declare-fun m!612237 () Bool)

(assert (=> b!638210 m!612237))

(declare-fun m!612239 () Bool)

(assert (=> b!638206 m!612239))

(assert (=> b!638206 m!612215))

(declare-fun m!612241 () Bool)

(assert (=> b!638206 m!612241))

(declare-fun m!612243 () Bool)

(assert (=> b!638206 m!612243))

(declare-fun m!612245 () Bool)

(assert (=> b!638206 m!612245))

(declare-fun m!612247 () Bool)

(assert (=> b!638206 m!612247))

(declare-fun m!612249 () Bool)

(assert (=> b!638206 m!612249))

(assert (=> b!638206 m!612215))

(declare-fun m!612251 () Bool)

(assert (=> b!638206 m!612251))

(assert (=> b!638214 m!612215))

(declare-fun m!612253 () Bool)

(assert (=> b!638216 m!612253))

(assert (=> b!638213 m!612215))

(assert (=> b!638213 m!612241))

(declare-fun m!612255 () Bool)

(assert (=> b!638213 m!612255))

(assert (=> b!638221 m!612241))

(declare-fun m!612257 () Bool)

(assert (=> b!638221 m!612257))

(assert (=> b!638218 m!612215))

(assert (=> b!638218 m!612215))

(declare-fun m!612259 () Bool)

(assert (=> b!638218 m!612259))

(push 1)

