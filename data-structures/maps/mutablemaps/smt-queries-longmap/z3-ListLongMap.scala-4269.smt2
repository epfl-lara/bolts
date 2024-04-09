; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!59372 () Bool)

(assert start!59372)

(declare-fun b!655170 () Bool)

(declare-datatypes ((Unit!22514 0))(
  ( (Unit!22515) )
))
(declare-fun e!376272 () Unit!22514)

(declare-fun Unit!22516 () Unit!22514)

(assert (=> b!655170 (= e!376272 Unit!22516)))

(declare-fun b!655171 () Bool)

(declare-fun e!376269 () Bool)

(assert (=> b!655171 (= e!376269 (not true))))

(declare-fun lt!305588 () Unit!22514)

(declare-fun e!376260 () Unit!22514)

(assert (=> b!655171 (= lt!305588 e!376260)))

(declare-fun c!75407 () Bool)

(declare-datatypes ((SeekEntryResult!6967 0))(
  ( (MissingZero!6967 (index!30226 (_ BitVec 32))) (Found!6967 (index!30227 (_ BitVec 32))) (Intermediate!6967 (undefined!7779 Bool) (index!30228 (_ BitVec 32)) (x!59041 (_ BitVec 32))) (Undefined!6967) (MissingVacant!6967 (index!30229 (_ BitVec 32))) )
))
(declare-fun lt!305596 () SeekEntryResult!6967)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!655171 (= c!75407 (= lt!305596 (Found!6967 index!984)))))

(declare-fun lt!305600 () Unit!22514)

(declare-fun e!376265 () Unit!22514)

(assert (=> b!655171 (= lt!305600 e!376265)))

(declare-fun c!75406 () Bool)

(assert (=> b!655171 (= c!75406 (= lt!305596 Undefined!6967))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun lt!305589 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((array!38648 0))(
  ( (array!38649 (arr!18520 (Array (_ BitVec 32) (_ BitVec 64))) (size!18884 (_ BitVec 32))) )
))
(declare-fun lt!305590 () array!38648)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38648 (_ BitVec 32)) SeekEntryResult!6967)

(assert (=> b!655171 (= lt!305596 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!305589 lt!305590 mask!3053))))

(declare-fun e!376262 () Bool)

(assert (=> b!655171 e!376262))

(declare-fun res!425111 () Bool)

(assert (=> b!655171 (=> (not res!425111) (not e!376262))))

(declare-fun lt!305584 () (_ BitVec 32))

(declare-fun lt!305595 () SeekEntryResult!6967)

(assert (=> b!655171 (= res!425111 (= lt!305595 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!305584 vacantSpotIndex!68 lt!305589 lt!305590 mask!3053)))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun a!2986 () array!38648)

(assert (=> b!655171 (= lt!305595 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!305584 vacantSpotIndex!68 (select (arr!18520 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(assert (=> b!655171 (= lt!305589 (select (store (arr!18520 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!305587 () Unit!22514)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38648 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22514)

(assert (=> b!655171 (= lt!305587 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!305584 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!655171 (= lt!305584 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun res!425109 () Bool)

(declare-fun e!376263 () Bool)

(assert (=> start!59372 (=> (not res!425109) (not e!376263))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!59372 (= res!425109 (validMask!0 mask!3053))))

(assert (=> start!59372 e!376263))

(assert (=> start!59372 true))

(declare-fun array_inv!14294 (array!38648) Bool)

(assert (=> start!59372 (array_inv!14294 a!2986)))

(declare-fun b!655172 () Bool)

(declare-fun Unit!22517 () Unit!22514)

(assert (=> b!655172 (= e!376265 Unit!22517)))

(declare-fun b!655173 () Bool)

(declare-fun e!376270 () Bool)

(declare-fun arrayContainsKey!0 (array!38648 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!655173 (= e!376270 (arrayContainsKey!0 lt!305590 (select (arr!18520 a!2986) j!136) index!984))))

(declare-fun b!655174 () Bool)

(assert (=> b!655174 false))

(declare-fun lt!305594 () Unit!22514)

(declare-datatypes ((List!12614 0))(
  ( (Nil!12611) (Cons!12610 (h!13655 (_ BitVec 64)) (t!18850 List!12614)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38648 (_ BitVec 64) (_ BitVec 32) List!12614) Unit!22514)

(assert (=> b!655174 (= lt!305594 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!305590 (select (arr!18520 a!2986) j!136) index!984 Nil!12611))))

(declare-fun arrayNoDuplicates!0 (array!38648 (_ BitVec 32) List!12614) Bool)

(assert (=> b!655174 (arrayNoDuplicates!0 lt!305590 index!984 Nil!12611)))

(declare-fun lt!305601 () Unit!22514)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38648 (_ BitVec 32) (_ BitVec 32)) Unit!22514)

(assert (=> b!655174 (= lt!305601 (lemmaNoDuplicateFromThenFromBigger!0 lt!305590 #b00000000000000000000000000000000 index!984))))

(assert (=> b!655174 (arrayNoDuplicates!0 lt!305590 #b00000000000000000000000000000000 Nil!12611)))

(declare-fun lt!305597 () Unit!22514)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38648 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12614) Unit!22514)

(assert (=> b!655174 (= lt!305597 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12611))))

(assert (=> b!655174 (arrayContainsKey!0 lt!305590 (select (arr!18520 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!305585 () Unit!22514)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38648 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22514)

(assert (=> b!655174 (= lt!305585 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!305590 (select (arr!18520 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!376273 () Bool)

(assert (=> b!655174 e!376273))

(declare-fun res!425097 () Bool)

(assert (=> b!655174 (=> (not res!425097) (not e!376273))))

(assert (=> b!655174 (= res!425097 (arrayContainsKey!0 lt!305590 (select (arr!18520 a!2986) j!136) j!136))))

(declare-fun Unit!22518 () Unit!22514)

(assert (=> b!655174 (= e!376272 Unit!22518)))

(declare-fun b!655175 () Bool)

(declare-fun res!425110 () Bool)

(declare-fun e!376261 () Bool)

(assert (=> b!655175 (=> (not res!425110) (not e!376261))))

(assert (=> b!655175 (= res!425110 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12611))))

(declare-fun b!655176 () Bool)

(declare-fun res!425099 () Bool)

(assert (=> b!655176 (=> (not res!425099) (not e!376261))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38648 (_ BitVec 32)) Bool)

(assert (=> b!655176 (= res!425099 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!655177 () Bool)

(declare-fun Unit!22519 () Unit!22514)

(assert (=> b!655177 (= e!376265 Unit!22519)))

(assert (=> b!655177 false))

(declare-fun b!655178 () Bool)

(assert (=> b!655178 false))

(declare-fun lt!305591 () Unit!22514)

(assert (=> b!655178 (= lt!305591 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!305590 (select (arr!18520 a!2986) j!136) j!136 Nil!12611))))

(assert (=> b!655178 (arrayNoDuplicates!0 lt!305590 j!136 Nil!12611)))

(declare-fun lt!305586 () Unit!22514)

(assert (=> b!655178 (= lt!305586 (lemmaNoDuplicateFromThenFromBigger!0 lt!305590 #b00000000000000000000000000000000 j!136))))

(assert (=> b!655178 (arrayNoDuplicates!0 lt!305590 #b00000000000000000000000000000000 Nil!12611)))

(declare-fun lt!305593 () Unit!22514)

(assert (=> b!655178 (= lt!305593 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12611))))

(assert (=> b!655178 (arrayContainsKey!0 lt!305590 (select (arr!18520 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!305592 () Unit!22514)

(assert (=> b!655178 (= lt!305592 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!305590 (select (arr!18520 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun e!376267 () Unit!22514)

(declare-fun Unit!22520 () Unit!22514)

(assert (=> b!655178 (= e!376267 Unit!22520)))

(declare-fun b!655179 () Bool)

(declare-fun e!376266 () Bool)

(assert (=> b!655179 (= e!376266 e!376269)))

(declare-fun res!425096 () Bool)

(assert (=> b!655179 (=> (not res!425096) (not e!376269))))

(declare-fun lt!305598 () SeekEntryResult!6967)

(assert (=> b!655179 (= res!425096 (and (= lt!305598 (Found!6967 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18520 a!2986) index!984) (select (arr!18520 a!2986) j!136))) (not (= (select (arr!18520 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!655179 (= lt!305598 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18520 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!655180 () Bool)

(declare-fun res!425107 () Bool)

(assert (=> b!655180 (=> (not res!425107) (not e!376263))))

(assert (=> b!655180 (= res!425107 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!655181 () Bool)

(assert (=> b!655181 (= e!376261 e!376266)))

(declare-fun res!425098 () Bool)

(assert (=> b!655181 (=> (not res!425098) (not e!376266))))

(assert (=> b!655181 (= res!425098 (= (select (store (arr!18520 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!655181 (= lt!305590 (array!38649 (store (arr!18520 a!2986) i!1108 k0!1786) (size!18884 a!2986)))))

(declare-fun b!655182 () Bool)

(declare-fun res!425104 () Bool)

(assert (=> b!655182 (=> (not res!425104) (not e!376263))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!655182 (= res!425104 (validKeyInArray!0 (select (arr!18520 a!2986) j!136)))))

(declare-fun b!655183 () Bool)

(assert (=> b!655183 (= e!376262 (= lt!305598 lt!305595))))

(declare-fun b!655184 () Bool)

(declare-fun Unit!22521 () Unit!22514)

(assert (=> b!655184 (= e!376260 Unit!22521)))

(declare-fun res!425106 () Bool)

(assert (=> b!655184 (= res!425106 (= (select (store (arr!18520 a!2986) i!1108 k0!1786) index!984) (select (arr!18520 a!2986) j!136)))))

(declare-fun e!376268 () Bool)

(assert (=> b!655184 (=> (not res!425106) (not e!376268))))

(assert (=> b!655184 e!376268))

(declare-fun c!75405 () Bool)

(assert (=> b!655184 (= c!75405 (bvslt j!136 index!984))))

(declare-fun lt!305582 () Unit!22514)

(assert (=> b!655184 (= lt!305582 e!376267)))

(declare-fun c!75404 () Bool)

(assert (=> b!655184 (= c!75404 (bvslt index!984 j!136))))

(declare-fun lt!305583 () Unit!22514)

(assert (=> b!655184 (= lt!305583 e!376272)))

(assert (=> b!655184 false))

(declare-fun b!655185 () Bool)

(assert (=> b!655185 (= e!376273 (arrayContainsKey!0 lt!305590 (select (arr!18520 a!2986) j!136) index!984))))

(declare-fun b!655186 () Bool)

(declare-fun res!425103 () Bool)

(assert (=> b!655186 (= res!425103 (bvsge j!136 index!984))))

(declare-fun e!376264 () Bool)

(assert (=> b!655186 (=> res!425103 e!376264)))

(assert (=> b!655186 (= e!376268 e!376264)))

(declare-fun res!425100 () Bool)

(declare-fun b!655187 () Bool)

(assert (=> b!655187 (= res!425100 (arrayContainsKey!0 lt!305590 (select (arr!18520 a!2986) j!136) j!136))))

(assert (=> b!655187 (=> (not res!425100) (not e!376270))))

(assert (=> b!655187 (= e!376264 e!376270)))

(declare-fun b!655188 () Bool)

(declare-fun res!425102 () Bool)

(assert (=> b!655188 (=> (not res!425102) (not e!376263))))

(assert (=> b!655188 (= res!425102 (validKeyInArray!0 k0!1786))))

(declare-fun b!655189 () Bool)

(assert (=> b!655189 (= e!376263 e!376261)))

(declare-fun res!425108 () Bool)

(assert (=> b!655189 (=> (not res!425108) (not e!376261))))

(declare-fun lt!305599 () SeekEntryResult!6967)

(assert (=> b!655189 (= res!425108 (or (= lt!305599 (MissingZero!6967 i!1108)) (= lt!305599 (MissingVacant!6967 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38648 (_ BitVec 32)) SeekEntryResult!6967)

(assert (=> b!655189 (= lt!305599 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!655190 () Bool)

(declare-fun Unit!22522 () Unit!22514)

(assert (=> b!655190 (= e!376260 Unit!22522)))

(declare-fun b!655191 () Bool)

(declare-fun res!425105 () Bool)

(assert (=> b!655191 (=> (not res!425105) (not e!376263))))

(assert (=> b!655191 (= res!425105 (and (= (size!18884 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18884 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18884 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!655192 () Bool)

(declare-fun res!425101 () Bool)

(assert (=> b!655192 (=> (not res!425101) (not e!376261))))

(assert (=> b!655192 (= res!425101 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18520 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!655193 () Bool)

(declare-fun Unit!22523 () Unit!22514)

(assert (=> b!655193 (= e!376267 Unit!22523)))

(assert (= (and start!59372 res!425109) b!655191))

(assert (= (and b!655191 res!425105) b!655182))

(assert (= (and b!655182 res!425104) b!655188))

(assert (= (and b!655188 res!425102) b!655180))

(assert (= (and b!655180 res!425107) b!655189))

(assert (= (and b!655189 res!425108) b!655176))

(assert (= (and b!655176 res!425099) b!655175))

(assert (= (and b!655175 res!425110) b!655192))

(assert (= (and b!655192 res!425101) b!655181))

(assert (= (and b!655181 res!425098) b!655179))

(assert (= (and b!655179 res!425096) b!655171))

(assert (= (and b!655171 res!425111) b!655183))

(assert (= (and b!655171 c!75406) b!655177))

(assert (= (and b!655171 (not c!75406)) b!655172))

(assert (= (and b!655171 c!75407) b!655184))

(assert (= (and b!655171 (not c!75407)) b!655190))

(assert (= (and b!655184 res!425106) b!655186))

(assert (= (and b!655186 (not res!425103)) b!655187))

(assert (= (and b!655187 res!425100) b!655173))

(assert (= (and b!655184 c!75405) b!655178))

(assert (= (and b!655184 (not c!75405)) b!655193))

(assert (= (and b!655184 c!75404) b!655174))

(assert (= (and b!655184 (not c!75404)) b!655170))

(assert (= (and b!655174 res!425097) b!655185))

(declare-fun m!628321 () Bool)

(assert (=> b!655188 m!628321))

(declare-fun m!628323 () Bool)

(assert (=> b!655171 m!628323))

(declare-fun m!628325 () Bool)

(assert (=> b!655171 m!628325))

(declare-fun m!628327 () Bool)

(assert (=> b!655171 m!628327))

(declare-fun m!628329 () Bool)

(assert (=> b!655171 m!628329))

(assert (=> b!655171 m!628327))

(declare-fun m!628331 () Bool)

(assert (=> b!655171 m!628331))

(declare-fun m!628333 () Bool)

(assert (=> b!655171 m!628333))

(declare-fun m!628335 () Bool)

(assert (=> b!655171 m!628335))

(declare-fun m!628337 () Bool)

(assert (=> b!655171 m!628337))

(declare-fun m!628339 () Bool)

(assert (=> b!655180 m!628339))

(declare-fun m!628341 () Bool)

(assert (=> b!655192 m!628341))

(declare-fun m!628343 () Bool)

(assert (=> b!655174 m!628343))

(declare-fun m!628345 () Bool)

(assert (=> b!655174 m!628345))

(assert (=> b!655174 m!628327))

(declare-fun m!628347 () Bool)

(assert (=> b!655174 m!628347))

(declare-fun m!628349 () Bool)

(assert (=> b!655174 m!628349))

(assert (=> b!655174 m!628327))

(declare-fun m!628351 () Bool)

(assert (=> b!655174 m!628351))

(assert (=> b!655174 m!628327))

(declare-fun m!628353 () Bool)

(assert (=> b!655174 m!628353))

(declare-fun m!628355 () Bool)

(assert (=> b!655174 m!628355))

(assert (=> b!655174 m!628327))

(declare-fun m!628357 () Bool)

(assert (=> b!655174 m!628357))

(assert (=> b!655174 m!628327))

(declare-fun m!628359 () Bool)

(assert (=> b!655175 m!628359))

(declare-fun m!628361 () Bool)

(assert (=> b!655179 m!628361))

(assert (=> b!655179 m!628327))

(assert (=> b!655179 m!628327))

(declare-fun m!628363 () Bool)

(assert (=> b!655179 m!628363))

(assert (=> b!655173 m!628327))

(assert (=> b!655173 m!628327))

(declare-fun m!628365 () Bool)

(assert (=> b!655173 m!628365))

(assert (=> b!655181 m!628329))

(declare-fun m!628367 () Bool)

(assert (=> b!655181 m!628367))

(declare-fun m!628369 () Bool)

(assert (=> start!59372 m!628369))

(declare-fun m!628371 () Bool)

(assert (=> start!59372 m!628371))

(assert (=> b!655185 m!628327))

(assert (=> b!655185 m!628327))

(assert (=> b!655185 m!628365))

(declare-fun m!628373 () Bool)

(assert (=> b!655176 m!628373))

(assert (=> b!655178 m!628327))

(assert (=> b!655178 m!628327))

(declare-fun m!628375 () Bool)

(assert (=> b!655178 m!628375))

(assert (=> b!655178 m!628327))

(declare-fun m!628377 () Bool)

(assert (=> b!655178 m!628377))

(declare-fun m!628379 () Bool)

(assert (=> b!655178 m!628379))

(assert (=> b!655178 m!628349))

(assert (=> b!655178 m!628355))

(declare-fun m!628381 () Bool)

(assert (=> b!655178 m!628381))

(assert (=> b!655178 m!628327))

(declare-fun m!628383 () Bool)

(assert (=> b!655178 m!628383))

(assert (=> b!655187 m!628327))

(assert (=> b!655187 m!628327))

(assert (=> b!655187 m!628357))

(assert (=> b!655184 m!628329))

(declare-fun m!628385 () Bool)

(assert (=> b!655184 m!628385))

(assert (=> b!655184 m!628327))

(assert (=> b!655182 m!628327))

(assert (=> b!655182 m!628327))

(declare-fun m!628387 () Bool)

(assert (=> b!655182 m!628387))

(declare-fun m!628389 () Bool)

(assert (=> b!655189 m!628389))

(check-sat (not b!655175) (not b!655173) (not start!59372) (not b!655187) (not b!655171) (not b!655178) (not b!655185) (not b!655176) (not b!655188) (not b!655180) (not b!655189) (not b!655179) (not b!655182) (not b!655174))
(check-sat)
