; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!56006 () Bool)

(assert start!56006)

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((array!37439 0))(
  ( (array!37440 (arr!17962 (Array (_ BitVec 32) (_ BitVec 64))) (size!18326 (_ BitVec 32))) )
))
(declare-fun lt!282504 () array!37439)

(declare-fun e!352650 () Bool)

(declare-fun b!615054 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun a!2986 () array!37439)

(declare-fun arrayContainsKey!0 (array!37439 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!615054 (= e!352650 (arrayContainsKey!0 lt!282504 (select (arr!17962 a!2986) j!136) index!984))))

(declare-fun b!615055 () Bool)

(declare-datatypes ((Unit!19910 0))(
  ( (Unit!19911) )
))
(declare-fun e!352653 () Unit!19910)

(declare-fun Unit!19912 () Unit!19910)

(assert (=> b!615055 (= e!352653 Unit!19912)))

(declare-fun b!615056 () Bool)

(declare-fun res!396275 () Bool)

(declare-fun e!352651 () Bool)

(assert (=> b!615056 (=> (not res!396275) (not e!352651))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!615056 (= res!396275 (validKeyInArray!0 k0!1786))))

(declare-fun b!615057 () Bool)

(declare-fun e!352656 () Bool)

(declare-fun e!352657 () Bool)

(assert (=> b!615057 (= e!352656 e!352657)))

(declare-fun res!396265 () Bool)

(assert (=> b!615057 (=> (not res!396265) (not e!352657))))

(declare-datatypes ((SeekEntryResult!6409 0))(
  ( (MissingZero!6409 (index!27919 (_ BitVec 32))) (Found!6409 (index!27920 (_ BitVec 32))) (Intermediate!6409 (undefined!7221 Bool) (index!27921 (_ BitVec 32)) (x!56746 (_ BitVec 32))) (Undefined!6409) (MissingVacant!6409 (index!27922 (_ BitVec 32))) )
))
(declare-fun lt!282515 () SeekEntryResult!6409)

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!615057 (= res!396265 (and (= lt!282515 (Found!6409 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17962 a!2986) index!984) (select (arr!17962 a!2986) j!136))) (not (= (select (arr!17962 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37439 (_ BitVec 32)) SeekEntryResult!6409)

(assert (=> b!615057 (= lt!282515 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17962 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!615058 () Bool)

(declare-fun res!396262 () Bool)

(assert (=> b!615058 (=> (not res!396262) (not e!352651))))

(assert (=> b!615058 (= res!396262 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!615059 () Bool)

(declare-fun res!396268 () Bool)

(assert (=> b!615059 (=> (not res!396268) (not e!352651))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!615059 (= res!396268 (and (= (size!18326 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18326 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18326 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!615061 () Bool)

(declare-fun res!396266 () Bool)

(declare-fun e!352649 () Bool)

(assert (=> b!615061 (=> (not res!396266) (not e!352649))))

(declare-datatypes ((List!12056 0))(
  ( (Nil!12053) (Cons!12052 (h!13097 (_ BitVec 64)) (t!18292 List!12056)) )
))
(declare-fun arrayNoDuplicates!0 (array!37439 (_ BitVec 32) List!12056) Bool)

(assert (=> b!615061 (= res!396266 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12053))))

(declare-fun b!615062 () Bool)

(assert (=> b!615062 (= e!352657 (not true))))

(declare-fun lt!282497 () Unit!19910)

(declare-fun e!352654 () Unit!19910)

(assert (=> b!615062 (= lt!282497 e!352654)))

(declare-fun c!69764 () Bool)

(declare-fun lt!282507 () SeekEntryResult!6409)

(assert (=> b!615062 (= c!69764 (= lt!282507 (Found!6409 index!984)))))

(declare-fun lt!282513 () Unit!19910)

(declare-fun e!352658 () Unit!19910)

(assert (=> b!615062 (= lt!282513 e!352658)))

(declare-fun c!69767 () Bool)

(assert (=> b!615062 (= c!69767 (= lt!282507 Undefined!6409))))

(declare-fun lt!282505 () (_ BitVec 64))

(assert (=> b!615062 (= lt!282507 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!282505 lt!282504 mask!3053))))

(declare-fun e!352652 () Bool)

(assert (=> b!615062 e!352652))

(declare-fun res!396264 () Bool)

(assert (=> b!615062 (=> (not res!396264) (not e!352652))))

(declare-fun lt!282498 () SeekEntryResult!6409)

(declare-fun lt!282503 () (_ BitVec 32))

(assert (=> b!615062 (= res!396264 (= lt!282498 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!282503 vacantSpotIndex!68 lt!282505 lt!282504 mask!3053)))))

(assert (=> b!615062 (= lt!282498 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!282503 vacantSpotIndex!68 (select (arr!17962 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!615062 (= lt!282505 (select (store (arr!17962 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!282509 () Unit!19910)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37439 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19910)

(assert (=> b!615062 (= lt!282509 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!282503 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!615062 (= lt!282503 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!615063 () Bool)

(declare-fun e!352659 () Unit!19910)

(declare-fun Unit!19913 () Unit!19910)

(assert (=> b!615063 (= e!352659 Unit!19913)))

(declare-fun b!615064 () Bool)

(declare-fun Unit!19914 () Unit!19910)

(assert (=> b!615064 (= e!352654 Unit!19914)))

(declare-fun b!615065 () Bool)

(declare-fun res!396272 () Bool)

(assert (=> b!615065 (= res!396272 (bvsge j!136 index!984))))

(declare-fun e!352660 () Bool)

(assert (=> b!615065 (=> res!396272 e!352660)))

(declare-fun e!352648 () Bool)

(assert (=> b!615065 (= e!352648 e!352660)))

(declare-fun b!615066 () Bool)

(declare-fun res!396267 () Bool)

(assert (=> b!615066 (=> (not res!396267) (not e!352651))))

(assert (=> b!615066 (= res!396267 (validKeyInArray!0 (select (arr!17962 a!2986) j!136)))))

(declare-fun b!615067 () Bool)

(declare-fun Unit!19915 () Unit!19910)

(assert (=> b!615067 (= e!352654 Unit!19915)))

(declare-fun res!396260 () Bool)

(assert (=> b!615067 (= res!396260 (= (select (store (arr!17962 a!2986) i!1108 k0!1786) index!984) (select (arr!17962 a!2986) j!136)))))

(assert (=> b!615067 (=> (not res!396260) (not e!352648))))

(assert (=> b!615067 e!352648))

(declare-fun c!69766 () Bool)

(assert (=> b!615067 (= c!69766 (bvslt j!136 index!984))))

(declare-fun lt!282512 () Unit!19910)

(assert (=> b!615067 (= lt!282512 e!352653)))

(declare-fun c!69765 () Bool)

(assert (=> b!615067 (= c!69765 (bvslt index!984 j!136))))

(declare-fun lt!282506 () Unit!19910)

(assert (=> b!615067 (= lt!282506 e!352659)))

(assert (=> b!615067 false))

(declare-fun b!615068 () Bool)

(declare-fun res!396269 () Bool)

(assert (=> b!615068 (=> (not res!396269) (not e!352649))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37439 (_ BitVec 32)) Bool)

(assert (=> b!615068 (= res!396269 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun res!396274 () Bool)

(assert (=> start!56006 (=> (not res!396274) (not e!352651))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56006 (= res!396274 (validMask!0 mask!3053))))

(assert (=> start!56006 e!352651))

(assert (=> start!56006 true))

(declare-fun array_inv!13736 (array!37439) Bool)

(assert (=> start!56006 (array_inv!13736 a!2986)))

(declare-fun b!615060 () Bool)

(declare-fun Unit!19916 () Unit!19910)

(assert (=> b!615060 (= e!352658 Unit!19916)))

(assert (=> b!615060 false))

(declare-fun b!615069 () Bool)

(assert (=> b!615069 false))

(declare-fun lt!282501 () Unit!19910)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37439 (_ BitVec 64) (_ BitVec 32) List!12056) Unit!19910)

(assert (=> b!615069 (= lt!282501 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!282504 (select (arr!17962 a!2986) j!136) j!136 Nil!12053))))

(assert (=> b!615069 (arrayNoDuplicates!0 lt!282504 j!136 Nil!12053)))

(declare-fun lt!282508 () Unit!19910)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37439 (_ BitVec 32) (_ BitVec 32)) Unit!19910)

(assert (=> b!615069 (= lt!282508 (lemmaNoDuplicateFromThenFromBigger!0 lt!282504 #b00000000000000000000000000000000 j!136))))

(assert (=> b!615069 (arrayNoDuplicates!0 lt!282504 #b00000000000000000000000000000000 Nil!12053)))

(declare-fun lt!282502 () Unit!19910)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37439 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12056) Unit!19910)

(assert (=> b!615069 (= lt!282502 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12053))))

(assert (=> b!615069 (arrayContainsKey!0 lt!282504 (select (arr!17962 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!282511 () Unit!19910)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37439 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19910)

(assert (=> b!615069 (= lt!282511 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!282504 (select (arr!17962 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!19917 () Unit!19910)

(assert (=> b!615069 (= e!352653 Unit!19917)))

(declare-fun e!352647 () Bool)

(declare-fun b!615070 () Bool)

(assert (=> b!615070 (= e!352647 (arrayContainsKey!0 lt!282504 (select (arr!17962 a!2986) j!136) index!984))))

(declare-fun b!615071 () Bool)

(assert (=> b!615071 (= e!352651 e!352649)))

(declare-fun res!396273 () Bool)

(assert (=> b!615071 (=> (not res!396273) (not e!352649))))

(declare-fun lt!282516 () SeekEntryResult!6409)

(assert (=> b!615071 (= res!396273 (or (= lt!282516 (MissingZero!6409 i!1108)) (= lt!282516 (MissingVacant!6409 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37439 (_ BitVec 32)) SeekEntryResult!6409)

(assert (=> b!615071 (= lt!282516 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!615072 () Bool)

(declare-fun res!396271 () Bool)

(assert (=> b!615072 (=> (not res!396271) (not e!352649))))

(assert (=> b!615072 (= res!396271 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17962 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!615073 () Bool)

(assert (=> b!615073 false))

(declare-fun lt!282514 () Unit!19910)

(assert (=> b!615073 (= lt!282514 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!282504 (select (arr!17962 a!2986) j!136) index!984 Nil!12053))))

(assert (=> b!615073 (arrayNoDuplicates!0 lt!282504 index!984 Nil!12053)))

(declare-fun lt!282510 () Unit!19910)

(assert (=> b!615073 (= lt!282510 (lemmaNoDuplicateFromThenFromBigger!0 lt!282504 #b00000000000000000000000000000000 index!984))))

(assert (=> b!615073 (arrayNoDuplicates!0 lt!282504 #b00000000000000000000000000000000 Nil!12053)))

(declare-fun lt!282500 () Unit!19910)

(assert (=> b!615073 (= lt!282500 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12053))))

(assert (=> b!615073 (arrayContainsKey!0 lt!282504 (select (arr!17962 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!282499 () Unit!19910)

(assert (=> b!615073 (= lt!282499 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!282504 (select (arr!17962 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!615073 e!352647))

(declare-fun res!396261 () Bool)

(assert (=> b!615073 (=> (not res!396261) (not e!352647))))

(assert (=> b!615073 (= res!396261 (arrayContainsKey!0 lt!282504 (select (arr!17962 a!2986) j!136) j!136))))

(declare-fun Unit!19918 () Unit!19910)

(assert (=> b!615073 (= e!352659 Unit!19918)))

(declare-fun b!615074 () Bool)

(declare-fun res!396263 () Bool)

(assert (=> b!615074 (= res!396263 (arrayContainsKey!0 lt!282504 (select (arr!17962 a!2986) j!136) j!136))))

(assert (=> b!615074 (=> (not res!396263) (not e!352650))))

(assert (=> b!615074 (= e!352660 e!352650)))

(declare-fun b!615075 () Bool)

(declare-fun Unit!19919 () Unit!19910)

(assert (=> b!615075 (= e!352658 Unit!19919)))

(declare-fun b!615076 () Bool)

(assert (=> b!615076 (= e!352652 (= lt!282515 lt!282498))))

(declare-fun b!615077 () Bool)

(assert (=> b!615077 (= e!352649 e!352656)))

(declare-fun res!396270 () Bool)

(assert (=> b!615077 (=> (not res!396270) (not e!352656))))

(assert (=> b!615077 (= res!396270 (= (select (store (arr!17962 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!615077 (= lt!282504 (array!37440 (store (arr!17962 a!2986) i!1108 k0!1786) (size!18326 a!2986)))))

(assert (= (and start!56006 res!396274) b!615059))

(assert (= (and b!615059 res!396268) b!615066))

(assert (= (and b!615066 res!396267) b!615056))

(assert (= (and b!615056 res!396275) b!615058))

(assert (= (and b!615058 res!396262) b!615071))

(assert (= (and b!615071 res!396273) b!615068))

(assert (= (and b!615068 res!396269) b!615061))

(assert (= (and b!615061 res!396266) b!615072))

(assert (= (and b!615072 res!396271) b!615077))

(assert (= (and b!615077 res!396270) b!615057))

(assert (= (and b!615057 res!396265) b!615062))

(assert (= (and b!615062 res!396264) b!615076))

(assert (= (and b!615062 c!69767) b!615060))

(assert (= (and b!615062 (not c!69767)) b!615075))

(assert (= (and b!615062 c!69764) b!615067))

(assert (= (and b!615062 (not c!69764)) b!615064))

(assert (= (and b!615067 res!396260) b!615065))

(assert (= (and b!615065 (not res!396272)) b!615074))

(assert (= (and b!615074 res!396263) b!615054))

(assert (= (and b!615067 c!69766) b!615069))

(assert (= (and b!615067 (not c!69766)) b!615055))

(assert (= (and b!615067 c!69765) b!615073))

(assert (= (and b!615067 (not c!69765)) b!615063))

(assert (= (and b!615073 res!396261) b!615070))

(declare-fun m!591313 () Bool)

(assert (=> b!615056 m!591313))

(declare-fun m!591315 () Bool)

(assert (=> b!615062 m!591315))

(declare-fun m!591317 () Bool)

(assert (=> b!615062 m!591317))

(declare-fun m!591319 () Bool)

(assert (=> b!615062 m!591319))

(declare-fun m!591321 () Bool)

(assert (=> b!615062 m!591321))

(declare-fun m!591323 () Bool)

(assert (=> b!615062 m!591323))

(declare-fun m!591325 () Bool)

(assert (=> b!615062 m!591325))

(declare-fun m!591327 () Bool)

(assert (=> b!615062 m!591327))

(assert (=> b!615062 m!591327))

(declare-fun m!591329 () Bool)

(assert (=> b!615062 m!591329))

(assert (=> b!615074 m!591327))

(assert (=> b!615074 m!591327))

(declare-fun m!591331 () Bool)

(assert (=> b!615074 m!591331))

(declare-fun m!591333 () Bool)

(assert (=> b!615057 m!591333))

(assert (=> b!615057 m!591327))

(assert (=> b!615057 m!591327))

(declare-fun m!591335 () Bool)

(assert (=> b!615057 m!591335))

(assert (=> b!615067 m!591323))

(declare-fun m!591337 () Bool)

(assert (=> b!615067 m!591337))

(assert (=> b!615067 m!591327))

(declare-fun m!591339 () Bool)

(assert (=> start!56006 m!591339))

(declare-fun m!591341 () Bool)

(assert (=> start!56006 m!591341))

(declare-fun m!591343 () Bool)

(assert (=> b!615069 m!591343))

(assert (=> b!615069 m!591327))

(assert (=> b!615069 m!591327))

(declare-fun m!591345 () Bool)

(assert (=> b!615069 m!591345))

(assert (=> b!615069 m!591327))

(declare-fun m!591347 () Bool)

(assert (=> b!615069 m!591347))

(declare-fun m!591349 () Bool)

(assert (=> b!615069 m!591349))

(assert (=> b!615069 m!591327))

(declare-fun m!591351 () Bool)

(assert (=> b!615069 m!591351))

(declare-fun m!591353 () Bool)

(assert (=> b!615069 m!591353))

(declare-fun m!591355 () Bool)

(assert (=> b!615069 m!591355))

(assert (=> b!615070 m!591327))

(assert (=> b!615070 m!591327))

(declare-fun m!591357 () Bool)

(assert (=> b!615070 m!591357))

(declare-fun m!591359 () Bool)

(assert (=> b!615058 m!591359))

(declare-fun m!591361 () Bool)

(assert (=> b!615071 m!591361))

(declare-fun m!591363 () Bool)

(assert (=> b!615061 m!591363))

(assert (=> b!615066 m!591327))

(assert (=> b!615066 m!591327))

(declare-fun m!591365 () Bool)

(assert (=> b!615066 m!591365))

(assert (=> b!615054 m!591327))

(assert (=> b!615054 m!591327))

(assert (=> b!615054 m!591357))

(declare-fun m!591367 () Bool)

(assert (=> b!615068 m!591367))

(declare-fun m!591369 () Bool)

(assert (=> b!615072 m!591369))

(assert (=> b!615073 m!591327))

(assert (=> b!615073 m!591327))

(declare-fun m!591371 () Bool)

(assert (=> b!615073 m!591371))

(assert (=> b!615073 m!591327))

(declare-fun m!591373 () Bool)

(assert (=> b!615073 m!591373))

(declare-fun m!591375 () Bool)

(assert (=> b!615073 m!591375))

(declare-fun m!591377 () Bool)

(assert (=> b!615073 m!591377))

(assert (=> b!615073 m!591353))

(assert (=> b!615073 m!591327))

(assert (=> b!615073 m!591331))

(assert (=> b!615073 m!591327))

(declare-fun m!591379 () Bool)

(assert (=> b!615073 m!591379))

(assert (=> b!615073 m!591355))

(assert (=> b!615077 m!591323))

(declare-fun m!591381 () Bool)

(assert (=> b!615077 m!591381))

(check-sat (not b!615070) (not b!615056) (not b!615057) (not b!615058) (not start!56006) (not b!615068) (not b!615069) (not b!615071) (not b!615073) (not b!615054) (not b!615061) (not b!615066) (not b!615062) (not b!615074))
(check-sat)
