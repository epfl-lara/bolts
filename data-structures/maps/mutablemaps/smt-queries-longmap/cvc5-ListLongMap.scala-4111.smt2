; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56172 () Bool)

(assert start!56172)

(declare-fun b!621183 () Bool)

(declare-fun e!356298 () Bool)

(declare-fun e!356288 () Bool)

(assert (=> b!621183 (= e!356298 e!356288)))

(declare-fun res!400412 () Bool)

(assert (=> b!621183 (=> (not res!400412) (not e!356288))))

(declare-datatypes ((SeekEntryResult!6492 0))(
  ( (MissingZero!6492 (index!28251 (_ BitVec 32))) (Found!6492 (index!28252 (_ BitVec 32))) (Intermediate!6492 (undefined!7304 Bool) (index!28253 (_ BitVec 32)) (x!57053 (_ BitVec 32))) (Undefined!6492) (MissingVacant!6492 (index!28254 (_ BitVec 32))) )
))
(declare-fun lt!287495 () SeekEntryResult!6492)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!37605 0))(
  ( (array!37606 (arr!18045 (Array (_ BitVec 32) (_ BitVec 64))) (size!18409 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37605)

(assert (=> b!621183 (= res!400412 (and (= lt!287495 (Found!6492 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18045 a!2986) index!984) (select (arr!18045 a!2986) j!136))) (not (= (select (arr!18045 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37605 (_ BitVec 32)) SeekEntryResult!6492)

(assert (=> b!621183 (= lt!287495 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18045 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!621184 () Bool)

(declare-datatypes ((Unit!20740 0))(
  ( (Unit!20741) )
))
(declare-fun e!356291 () Unit!20740)

(declare-fun Unit!20742 () Unit!20740)

(assert (=> b!621184 (= e!356291 Unit!20742)))

(declare-fun b!621185 () Bool)

(declare-fun Unit!20743 () Unit!20740)

(assert (=> b!621185 (= e!356291 Unit!20743)))

(assert (=> b!621185 false))

(declare-fun b!621186 () Bool)

(declare-fun e!356293 () Bool)

(declare-fun lt!287479 () array!37605)

(declare-fun arrayContainsKey!0 (array!37605 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!621186 (= e!356293 (arrayContainsKey!0 lt!287479 (select (arr!18045 a!2986) j!136) index!984))))

(declare-fun b!621187 () Bool)

(declare-fun e!356287 () Bool)

(assert (=> b!621187 (= e!356287 e!356298)))

(declare-fun res!400410 () Bool)

(assert (=> b!621187 (=> (not res!400410) (not e!356298))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!621187 (= res!400410 (= (select (store (arr!18045 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!621187 (= lt!287479 (array!37606 (store (arr!18045 a!2986) i!1108 k!1786) (size!18409 a!2986)))))

(declare-fun res!400408 () Bool)

(declare-fun b!621188 () Bool)

(assert (=> b!621188 (= res!400408 (arrayContainsKey!0 lt!287479 (select (arr!18045 a!2986) j!136) j!136))))

(assert (=> b!621188 (=> (not res!400408) (not e!356293))))

(declare-fun e!356296 () Bool)

(assert (=> b!621188 (= e!356296 e!356293)))

(declare-fun b!621189 () Bool)

(declare-fun e!356286 () Unit!20740)

(declare-fun Unit!20744 () Unit!20740)

(assert (=> b!621189 (= e!356286 Unit!20744)))

(declare-fun res!400402 () Bool)

(assert (=> b!621189 (= res!400402 (= (select (store (arr!18045 a!2986) i!1108 k!1786) index!984) (select (arr!18045 a!2986) j!136)))))

(declare-fun e!356294 () Bool)

(assert (=> b!621189 (=> (not res!400402) (not e!356294))))

(assert (=> b!621189 e!356294))

(declare-fun c!70760 () Bool)

(assert (=> b!621189 (= c!70760 (bvslt j!136 index!984))))

(declare-fun lt!287489 () Unit!20740)

(declare-fun e!356295 () Unit!20740)

(assert (=> b!621189 (= lt!287489 e!356295)))

(declare-fun c!70761 () Bool)

(assert (=> b!621189 (= c!70761 (bvslt index!984 j!136))))

(declare-fun lt!287493 () Unit!20740)

(declare-fun e!356297 () Unit!20740)

(assert (=> b!621189 (= lt!287493 e!356297)))

(assert (=> b!621189 false))

(declare-fun b!621190 () Bool)

(declare-fun res!400404 () Bool)

(assert (=> b!621190 (=> (not res!400404) (not e!356287))))

(declare-datatypes ((List!12139 0))(
  ( (Nil!12136) (Cons!12135 (h!13180 (_ BitVec 64)) (t!18375 List!12139)) )
))
(declare-fun arrayNoDuplicates!0 (array!37605 (_ BitVec 32) List!12139) Bool)

(assert (=> b!621190 (= res!400404 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12136))))

(declare-fun res!400409 () Bool)

(declare-fun e!356289 () Bool)

(assert (=> start!56172 (=> (not res!400409) (not e!356289))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56172 (= res!400409 (validMask!0 mask!3053))))

(assert (=> start!56172 e!356289))

(assert (=> start!56172 true))

(declare-fun array_inv!13819 (array!37605) Bool)

(assert (=> start!56172 (array_inv!13819 a!2986)))

(declare-fun b!621191 () Bool)

(declare-fun res!400407 () Bool)

(assert (=> b!621191 (=> (not res!400407) (not e!356289))))

(assert (=> b!621191 (= res!400407 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!621192 () Bool)

(declare-fun Unit!20745 () Unit!20740)

(assert (=> b!621192 (= e!356286 Unit!20745)))

(declare-fun b!621193 () Bool)

(declare-fun res!400411 () Bool)

(assert (=> b!621193 (=> (not res!400411) (not e!356289))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!621193 (= res!400411 (validKeyInArray!0 (select (arr!18045 a!2986) j!136)))))

(declare-fun b!621194 () Bool)

(declare-fun res!400400 () Bool)

(assert (=> b!621194 (=> (not res!400400) (not e!356289))))

(assert (=> b!621194 (= res!400400 (validKeyInArray!0 k!1786))))

(declare-fun b!621195 () Bool)

(declare-fun res!400406 () Bool)

(assert (=> b!621195 (= res!400406 (bvsge j!136 index!984))))

(assert (=> b!621195 (=> res!400406 e!356296)))

(assert (=> b!621195 (= e!356294 e!356296)))

(declare-fun b!621196 () Bool)

(assert (=> b!621196 false))

(declare-fun lt!287488 () Unit!20740)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37605 (_ BitVec 64) (_ BitVec 32) List!12139) Unit!20740)

(assert (=> b!621196 (= lt!287488 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!287479 (select (arr!18045 a!2986) j!136) j!136 Nil!12136))))

(assert (=> b!621196 (arrayNoDuplicates!0 lt!287479 j!136 Nil!12136)))

(declare-fun lt!287480 () Unit!20740)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37605 (_ BitVec 32) (_ BitVec 32)) Unit!20740)

(assert (=> b!621196 (= lt!287480 (lemmaNoDuplicateFromThenFromBigger!0 lt!287479 #b00000000000000000000000000000000 j!136))))

(assert (=> b!621196 (arrayNoDuplicates!0 lt!287479 #b00000000000000000000000000000000 Nil!12136)))

(declare-fun lt!287494 () Unit!20740)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37605 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12139) Unit!20740)

(assert (=> b!621196 (= lt!287494 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12136))))

(assert (=> b!621196 (arrayContainsKey!0 lt!287479 (select (arr!18045 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!287483 () Unit!20740)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37605 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!20740)

(assert (=> b!621196 (= lt!287483 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!287479 (select (arr!18045 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!20746 () Unit!20740)

(assert (=> b!621196 (= e!356295 Unit!20746)))

(declare-fun b!621197 () Bool)

(assert (=> b!621197 (= e!356289 e!356287)))

(declare-fun res!400405 () Bool)

(assert (=> b!621197 (=> (not res!400405) (not e!356287))))

(declare-fun lt!287486 () SeekEntryResult!6492)

(assert (=> b!621197 (= res!400405 (or (= lt!287486 (MissingZero!6492 i!1108)) (= lt!287486 (MissingVacant!6492 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37605 (_ BitVec 32)) SeekEntryResult!6492)

(assert (=> b!621197 (= lt!287486 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!621198 () Bool)

(declare-fun e!356292 () Bool)

(declare-fun lt!287496 () SeekEntryResult!6492)

(assert (=> b!621198 (= e!356292 (= lt!287495 lt!287496))))

(declare-fun b!621199 () Bool)

(declare-fun Unit!20747 () Unit!20740)

(assert (=> b!621199 (= e!356295 Unit!20747)))

(declare-fun b!621200 () Bool)

(declare-fun res!400398 () Bool)

(assert (=> b!621200 (=> (not res!400398) (not e!356287))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37605 (_ BitVec 32)) Bool)

(assert (=> b!621200 (= res!400398 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!621201 () Bool)

(declare-fun res!400401 () Bool)

(assert (=> b!621201 (=> (not res!400401) (not e!356287))))

(assert (=> b!621201 (= res!400401 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18045 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!621202 () Bool)

(declare-fun Unit!20748 () Unit!20740)

(assert (=> b!621202 (= e!356297 Unit!20748)))

(declare-fun b!621203 () Bool)

(assert (=> b!621203 (= e!356288 (not true))))

(declare-fun lt!287491 () Unit!20740)

(assert (=> b!621203 (= lt!287491 e!356286)))

(declare-fun c!70762 () Bool)

(declare-fun lt!287490 () SeekEntryResult!6492)

(assert (=> b!621203 (= c!70762 (= lt!287490 (Found!6492 index!984)))))

(declare-fun lt!287484 () Unit!20740)

(assert (=> b!621203 (= lt!287484 e!356291)))

(declare-fun c!70763 () Bool)

(assert (=> b!621203 (= c!70763 (= lt!287490 Undefined!6492))))

(declare-fun lt!287477 () (_ BitVec 64))

(assert (=> b!621203 (= lt!287490 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!287477 lt!287479 mask!3053))))

(assert (=> b!621203 e!356292))

(declare-fun res!400397 () Bool)

(assert (=> b!621203 (=> (not res!400397) (not e!356292))))

(declare-fun lt!287485 () (_ BitVec 32))

(assert (=> b!621203 (= res!400397 (= lt!287496 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!287485 vacantSpotIndex!68 lt!287477 lt!287479 mask!3053)))))

(assert (=> b!621203 (= lt!287496 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!287485 vacantSpotIndex!68 (select (arr!18045 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!621203 (= lt!287477 (select (store (arr!18045 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!287492 () Unit!20740)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37605 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!20740)

(assert (=> b!621203 (= lt!287492 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!287485 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!621203 (= lt!287485 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!621204 () Bool)

(declare-fun res!400403 () Bool)

(assert (=> b!621204 (=> (not res!400403) (not e!356289))))

(assert (=> b!621204 (= res!400403 (and (= (size!18409 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18409 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18409 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!621205 () Bool)

(declare-fun e!356299 () Bool)

(assert (=> b!621205 (= e!356299 (arrayContainsKey!0 lt!287479 (select (arr!18045 a!2986) j!136) index!984))))

(declare-fun b!621206 () Bool)

(assert (=> b!621206 false))

(declare-fun lt!287487 () Unit!20740)

(assert (=> b!621206 (= lt!287487 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!287479 (select (arr!18045 a!2986) j!136) index!984 Nil!12136))))

(assert (=> b!621206 (arrayNoDuplicates!0 lt!287479 index!984 Nil!12136)))

(declare-fun lt!287481 () Unit!20740)

(assert (=> b!621206 (= lt!287481 (lemmaNoDuplicateFromThenFromBigger!0 lt!287479 #b00000000000000000000000000000000 index!984))))

(assert (=> b!621206 (arrayNoDuplicates!0 lt!287479 #b00000000000000000000000000000000 Nil!12136)))

(declare-fun lt!287478 () Unit!20740)

(assert (=> b!621206 (= lt!287478 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12136))))

(assert (=> b!621206 (arrayContainsKey!0 lt!287479 (select (arr!18045 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!287482 () Unit!20740)

(assert (=> b!621206 (= lt!287482 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!287479 (select (arr!18045 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!621206 e!356299))

(declare-fun res!400399 () Bool)

(assert (=> b!621206 (=> (not res!400399) (not e!356299))))

(assert (=> b!621206 (= res!400399 (arrayContainsKey!0 lt!287479 (select (arr!18045 a!2986) j!136) j!136))))

(declare-fun Unit!20749 () Unit!20740)

(assert (=> b!621206 (= e!356297 Unit!20749)))

(assert (= (and start!56172 res!400409) b!621204))

(assert (= (and b!621204 res!400403) b!621193))

(assert (= (and b!621193 res!400411) b!621194))

(assert (= (and b!621194 res!400400) b!621191))

(assert (= (and b!621191 res!400407) b!621197))

(assert (= (and b!621197 res!400405) b!621200))

(assert (= (and b!621200 res!400398) b!621190))

(assert (= (and b!621190 res!400404) b!621201))

(assert (= (and b!621201 res!400401) b!621187))

(assert (= (and b!621187 res!400410) b!621183))

(assert (= (and b!621183 res!400412) b!621203))

(assert (= (and b!621203 res!400397) b!621198))

(assert (= (and b!621203 c!70763) b!621185))

(assert (= (and b!621203 (not c!70763)) b!621184))

(assert (= (and b!621203 c!70762) b!621189))

(assert (= (and b!621203 (not c!70762)) b!621192))

(assert (= (and b!621189 res!400402) b!621195))

(assert (= (and b!621195 (not res!400406)) b!621188))

(assert (= (and b!621188 res!400408) b!621186))

(assert (= (and b!621189 c!70760) b!621196))

(assert (= (and b!621189 (not c!70760)) b!621199))

(assert (= (and b!621189 c!70761) b!621206))

(assert (= (and b!621189 (not c!70761)) b!621202))

(assert (= (and b!621206 res!400399) b!621205))

(declare-fun m!597129 () Bool)

(assert (=> b!621190 m!597129))

(declare-fun m!597131 () Bool)

(assert (=> b!621186 m!597131))

(assert (=> b!621186 m!597131))

(declare-fun m!597133 () Bool)

(assert (=> b!621186 m!597133))

(assert (=> b!621193 m!597131))

(assert (=> b!621193 m!597131))

(declare-fun m!597135 () Bool)

(assert (=> b!621193 m!597135))

(declare-fun m!597137 () Bool)

(assert (=> b!621200 m!597137))

(assert (=> b!621196 m!597131))

(declare-fun m!597139 () Bool)

(assert (=> b!621196 m!597139))

(declare-fun m!597141 () Bool)

(assert (=> b!621196 m!597141))

(assert (=> b!621196 m!597131))

(declare-fun m!597143 () Bool)

(assert (=> b!621196 m!597143))

(declare-fun m!597145 () Bool)

(assert (=> b!621196 m!597145))

(assert (=> b!621196 m!597131))

(declare-fun m!597147 () Bool)

(assert (=> b!621196 m!597147))

(assert (=> b!621196 m!597131))

(declare-fun m!597149 () Bool)

(assert (=> b!621196 m!597149))

(declare-fun m!597151 () Bool)

(assert (=> b!621196 m!597151))

(declare-fun m!597153 () Bool)

(assert (=> b!621197 m!597153))

(declare-fun m!597155 () Bool)

(assert (=> b!621194 m!597155))

(assert (=> b!621188 m!597131))

(assert (=> b!621188 m!597131))

(declare-fun m!597157 () Bool)

(assert (=> b!621188 m!597157))

(declare-fun m!597159 () Bool)

(assert (=> b!621203 m!597159))

(declare-fun m!597161 () Bool)

(assert (=> b!621203 m!597161))

(assert (=> b!621203 m!597131))

(declare-fun m!597163 () Bool)

(assert (=> b!621203 m!597163))

(declare-fun m!597165 () Bool)

(assert (=> b!621203 m!597165))

(declare-fun m!597167 () Bool)

(assert (=> b!621203 m!597167))

(declare-fun m!597169 () Bool)

(assert (=> b!621203 m!597169))

(assert (=> b!621203 m!597131))

(declare-fun m!597171 () Bool)

(assert (=> b!621203 m!597171))

(assert (=> b!621206 m!597131))

(declare-fun m!597173 () Bool)

(assert (=> b!621206 m!597173))

(assert (=> b!621206 m!597131))

(assert (=> b!621206 m!597139))

(assert (=> b!621206 m!597131))

(declare-fun m!597175 () Bool)

(assert (=> b!621206 m!597175))

(declare-fun m!597177 () Bool)

(assert (=> b!621206 m!597177))

(assert (=> b!621206 m!597131))

(declare-fun m!597179 () Bool)

(assert (=> b!621206 m!597179))

(assert (=> b!621206 m!597131))

(assert (=> b!621206 m!597157))

(declare-fun m!597181 () Bool)

(assert (=> b!621206 m!597181))

(assert (=> b!621206 m!597141))

(declare-fun m!597183 () Bool)

(assert (=> b!621183 m!597183))

(assert (=> b!621183 m!597131))

(assert (=> b!621183 m!597131))

(declare-fun m!597185 () Bool)

(assert (=> b!621183 m!597185))

(assert (=> b!621187 m!597163))

(declare-fun m!597187 () Bool)

(assert (=> b!621187 m!597187))

(declare-fun m!597189 () Bool)

(assert (=> b!621191 m!597189))

(declare-fun m!597191 () Bool)

(assert (=> start!56172 m!597191))

(declare-fun m!597193 () Bool)

(assert (=> start!56172 m!597193))

(declare-fun m!597195 () Bool)

(assert (=> b!621201 m!597195))

(assert (=> b!621189 m!597163))

(declare-fun m!597197 () Bool)

(assert (=> b!621189 m!597197))

(assert (=> b!621189 m!597131))

(assert (=> b!621205 m!597131))

(assert (=> b!621205 m!597131))

(assert (=> b!621205 m!597133))

(push 1)

