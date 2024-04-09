; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!57738 () Bool)

(assert start!57738)

(declare-fun b!638375 () Bool)

(declare-fun e!365301 () Bool)

(declare-datatypes ((SeekEntryResult!6798 0))(
  ( (MissingZero!6798 (index!29505 (_ BitVec 32))) (Found!6798 (index!29506 (_ BitVec 32))) (Intermediate!6798 (undefined!7610 Bool) (index!29507 (_ BitVec 32)) (x!58289 (_ BitVec 32))) (Undefined!6798) (MissingVacant!6798 (index!29508 (_ BitVec 32))) )
))
(declare-fun lt!295290 () SeekEntryResult!6798)

(declare-fun lt!295289 () SeekEntryResult!6798)

(assert (=> b!638375 (= e!365301 (= lt!295290 lt!295289))))

(declare-fun b!638376 () Bool)

(declare-fun res!413369 () Bool)

(declare-fun e!365302 () Bool)

(assert (=> b!638376 (=> (not res!413369) (not e!365302))))

(declare-datatypes ((array!38265 0))(
  ( (array!38266 (arr!18351 (Array (_ BitVec 32) (_ BitVec 64))) (size!18715 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38265)

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!38265 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!638376 (= res!413369 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!638377 () Bool)

(declare-fun res!413365 () Bool)

(assert (=> b!638377 (=> (not res!413365) (not e!365302))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!638377 (= res!413365 (validKeyInArray!0 (select (arr!18351 a!2986) j!136)))))

(declare-fun b!638378 () Bool)

(declare-fun res!413360 () Bool)

(declare-fun e!365296 () Bool)

(assert (=> b!638378 (=> (not res!413360) (not e!365296))))

(declare-datatypes ((List!12445 0))(
  ( (Nil!12442) (Cons!12441 (h!13486 (_ BitVec 64)) (t!18681 List!12445)) )
))
(declare-fun arrayNoDuplicates!0 (array!38265 (_ BitVec 32) List!12445) Bool)

(assert (=> b!638378 (= res!413360 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12442))))

(declare-fun b!638379 () Bool)

(declare-datatypes ((Unit!21550 0))(
  ( (Unit!21551) )
))
(declare-fun e!365298 () Unit!21550)

(declare-fun Unit!21552 () Unit!21550)

(assert (=> b!638379 (= e!365298 Unit!21552)))

(assert (=> b!638379 false))

(declare-fun lt!295297 () array!38265)

(declare-fun b!638380 () Bool)

(declare-fun e!365303 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!638380 (= e!365303 (arrayContainsKey!0 lt!295297 (select (arr!18351 a!2986) j!136) index!984))))

(declare-fun b!638381 () Bool)

(declare-fun e!365300 () Bool)

(declare-fun e!365299 () Bool)

(assert (=> b!638381 (= e!365300 e!365299)))

(declare-fun res!413359 () Bool)

(assert (=> b!638381 (=> res!413359 e!365299)))

(declare-fun lt!295292 () (_ BitVec 64))

(declare-fun lt!295294 () (_ BitVec 64))

(assert (=> b!638381 (= res!413359 (or (not (= (select (arr!18351 a!2986) j!136) lt!295292)) (not (= (select (arr!18351 a!2986) j!136) lt!295294)) (bvsge j!136 index!984)))))

(declare-fun res!413356 () Bool)

(assert (=> start!57738 (=> (not res!413356) (not e!365302))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57738 (= res!413356 (validMask!0 mask!3053))))

(assert (=> start!57738 e!365302))

(assert (=> start!57738 true))

(declare-fun array_inv!14125 (array!38265) Bool)

(assert (=> start!57738 (array_inv!14125 a!2986)))

(declare-fun b!638382 () Bool)

(declare-fun e!365304 () Bool)

(declare-fun e!365305 () Bool)

(assert (=> b!638382 (= e!365304 (not e!365305))))

(declare-fun res!413362 () Bool)

(assert (=> b!638382 (=> res!413362 e!365305)))

(declare-fun lt!295299 () SeekEntryResult!6798)

(assert (=> b!638382 (= res!413362 (not (= lt!295299 (Found!6798 index!984))))))

(declare-fun lt!295295 () Unit!21550)

(assert (=> b!638382 (= lt!295295 e!365298)))

(declare-fun c!72878 () Bool)

(assert (=> b!638382 (= c!72878 (= lt!295299 Undefined!6798))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38265 (_ BitVec 32)) SeekEntryResult!6798)

(assert (=> b!638382 (= lt!295299 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!295292 lt!295297 mask!3053))))

(assert (=> b!638382 e!365301))

(declare-fun res!413367 () Bool)

(assert (=> b!638382 (=> (not res!413367) (not e!365301))))

(declare-fun lt!295296 () (_ BitVec 32))

(assert (=> b!638382 (= res!413367 (= lt!295289 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!295296 vacantSpotIndex!68 lt!295292 lt!295297 mask!3053)))))

(assert (=> b!638382 (= lt!295289 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!295296 vacantSpotIndex!68 (select (arr!18351 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!638382 (= lt!295292 (select (store (arr!18351 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!295291 () Unit!21550)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38265 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21550)

(assert (=> b!638382 (= lt!295291 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!295296 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!638382 (= lt!295296 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!638383 () Bool)

(declare-fun e!365295 () Bool)

(assert (=> b!638383 (= e!365295 e!365304)))

(declare-fun res!413368 () Bool)

(assert (=> b!638383 (=> (not res!413368) (not e!365304))))

(assert (=> b!638383 (= res!413368 (and (= lt!295290 (Found!6798 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18351 a!2986) index!984) (select (arr!18351 a!2986) j!136))) (not (= (select (arr!18351 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!638383 (= lt!295290 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18351 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!638384 () Bool)

(declare-fun e!365297 () Bool)

(assert (=> b!638384 (= e!365305 e!365297)))

(declare-fun res!413361 () Bool)

(assert (=> b!638384 (=> res!413361 e!365297)))

(assert (=> b!638384 (= res!413361 (or (not (= (select (arr!18351 a!2986) j!136) lt!295292)) (not (= (select (arr!18351 a!2986) j!136) lt!295294)) (bvsge j!136 index!984)))))

(assert (=> b!638384 e!365300))

(declare-fun res!413366 () Bool)

(assert (=> b!638384 (=> (not res!413366) (not e!365300))))

(assert (=> b!638384 (= res!413366 (= lt!295294 (select (arr!18351 a!2986) j!136)))))

(assert (=> b!638384 (= lt!295294 (select (store (arr!18351 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!638385 () Bool)

(declare-fun Unit!21553 () Unit!21550)

(assert (=> b!638385 (= e!365298 Unit!21553)))

(declare-fun b!638386 () Bool)

(assert (=> b!638386 (= e!365296 e!365295)))

(declare-fun res!413355 () Bool)

(assert (=> b!638386 (=> (not res!413355) (not e!365295))))

(assert (=> b!638386 (= res!413355 (= (select (store (arr!18351 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!638386 (= lt!295297 (array!38266 (store (arr!18351 a!2986) i!1108 k!1786) (size!18715 a!2986)))))

(declare-fun b!638387 () Bool)

(assert (=> b!638387 (= e!365302 e!365296)))

(declare-fun res!413363 () Bool)

(assert (=> b!638387 (=> (not res!413363) (not e!365296))))

(declare-fun lt!295288 () SeekEntryResult!6798)

(assert (=> b!638387 (= res!413363 (or (= lt!295288 (MissingZero!6798 i!1108)) (= lt!295288 (MissingVacant!6798 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38265 (_ BitVec 32)) SeekEntryResult!6798)

(assert (=> b!638387 (= lt!295288 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!638388 () Bool)

(assert (=> b!638388 (= e!365297 (bvslt (size!18715 a!2986) #b01111111111111111111111111111111))))

(assert (=> b!638388 (arrayNoDuplicates!0 lt!295297 #b00000000000000000000000000000000 Nil!12442)))

(declare-fun lt!295298 () Unit!21550)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38265 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12445) Unit!21550)

(assert (=> b!638388 (= lt!295298 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12442))))

(assert (=> b!638388 (arrayContainsKey!0 lt!295297 (select (arr!18351 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!295293 () Unit!21550)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38265 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21550)

(assert (=> b!638388 (= lt!295293 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!295297 (select (arr!18351 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!638389 () Bool)

(assert (=> b!638389 (= e!365299 e!365303)))

(declare-fun res!413354 () Bool)

(assert (=> b!638389 (=> (not res!413354) (not e!365303))))

(assert (=> b!638389 (= res!413354 (arrayContainsKey!0 lt!295297 (select (arr!18351 a!2986) j!136) j!136))))

(declare-fun b!638390 () Bool)

(declare-fun res!413358 () Bool)

(assert (=> b!638390 (=> (not res!413358) (not e!365296))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38265 (_ BitVec 32)) Bool)

(assert (=> b!638390 (= res!413358 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!638391 () Bool)

(declare-fun res!413364 () Bool)

(assert (=> b!638391 (=> (not res!413364) (not e!365302))))

(assert (=> b!638391 (= res!413364 (validKeyInArray!0 k!1786))))

(declare-fun b!638392 () Bool)

(declare-fun res!413357 () Bool)

(assert (=> b!638392 (=> (not res!413357) (not e!365302))))

(assert (=> b!638392 (= res!413357 (and (= (size!18715 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18715 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18715 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!638393 () Bool)

(declare-fun res!413353 () Bool)

(assert (=> b!638393 (=> (not res!413353) (not e!365296))))

(assert (=> b!638393 (= res!413353 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18351 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!57738 res!413356) b!638392))

(assert (= (and b!638392 res!413357) b!638377))

(assert (= (and b!638377 res!413365) b!638391))

(assert (= (and b!638391 res!413364) b!638376))

(assert (= (and b!638376 res!413369) b!638387))

(assert (= (and b!638387 res!413363) b!638390))

(assert (= (and b!638390 res!413358) b!638378))

(assert (= (and b!638378 res!413360) b!638393))

(assert (= (and b!638393 res!413353) b!638386))

(assert (= (and b!638386 res!413355) b!638383))

(assert (= (and b!638383 res!413368) b!638382))

(assert (= (and b!638382 res!413367) b!638375))

(assert (= (and b!638382 c!72878) b!638379))

(assert (= (and b!638382 (not c!72878)) b!638385))

(assert (= (and b!638382 (not res!413362)) b!638384))

(assert (= (and b!638384 res!413366) b!638381))

(assert (= (and b!638381 (not res!413359)) b!638389))

(assert (= (and b!638389 res!413354) b!638380))

(assert (= (and b!638384 (not res!413361)) b!638388))

(declare-fun m!612369 () Bool)

(assert (=> b!638393 m!612369))

(declare-fun m!612371 () Bool)

(assert (=> b!638389 m!612371))

(assert (=> b!638389 m!612371))

(declare-fun m!612373 () Bool)

(assert (=> b!638389 m!612373))

(declare-fun m!612375 () Bool)

(assert (=> b!638376 m!612375))

(declare-fun m!612377 () Bool)

(assert (=> start!57738 m!612377))

(declare-fun m!612379 () Bool)

(assert (=> start!57738 m!612379))

(assert (=> b!638384 m!612371))

(declare-fun m!612381 () Bool)

(assert (=> b!638384 m!612381))

(declare-fun m!612383 () Bool)

(assert (=> b!638384 m!612383))

(declare-fun m!612385 () Bool)

(assert (=> b!638382 m!612385))

(declare-fun m!612387 () Bool)

(assert (=> b!638382 m!612387))

(assert (=> b!638382 m!612371))

(assert (=> b!638382 m!612381))

(assert (=> b!638382 m!612371))

(declare-fun m!612389 () Bool)

(assert (=> b!638382 m!612389))

(declare-fun m!612391 () Bool)

(assert (=> b!638382 m!612391))

(declare-fun m!612393 () Bool)

(assert (=> b!638382 m!612393))

(declare-fun m!612395 () Bool)

(assert (=> b!638382 m!612395))

(declare-fun m!612397 () Bool)

(assert (=> b!638378 m!612397))

(assert (=> b!638377 m!612371))

(assert (=> b!638377 m!612371))

(declare-fun m!612399 () Bool)

(assert (=> b!638377 m!612399))

(assert (=> b!638380 m!612371))

(assert (=> b!638380 m!612371))

(declare-fun m!612401 () Bool)

(assert (=> b!638380 m!612401))

(declare-fun m!612403 () Bool)

(assert (=> b!638383 m!612403))

(assert (=> b!638383 m!612371))

(assert (=> b!638383 m!612371))

(declare-fun m!612405 () Bool)

(assert (=> b!638383 m!612405))

(declare-fun m!612407 () Bool)

(assert (=> b!638387 m!612407))

(assert (=> b!638386 m!612381))

(declare-fun m!612409 () Bool)

(assert (=> b!638386 m!612409))

(declare-fun m!612411 () Bool)

(assert (=> b!638391 m!612411))

(assert (=> b!638381 m!612371))

(assert (=> b!638388 m!612371))

(declare-fun m!612413 () Bool)

(assert (=> b!638388 m!612413))

(assert (=> b!638388 m!612371))

(declare-fun m!612415 () Bool)

(assert (=> b!638388 m!612415))

(assert (=> b!638388 m!612371))

(declare-fun m!612417 () Bool)

(assert (=> b!638388 m!612417))

(declare-fun m!612419 () Bool)

(assert (=> b!638388 m!612419))

(declare-fun m!612421 () Bool)

(assert (=> b!638390 m!612421))

(push 1)

(assert (not b!638383))

(assert (not b!638388))

(assert (not start!57738))

(assert (not b!638389))

(assert (not b!638387))

(assert (not b!638382))

(assert (not b!638376))

(assert (not b!638380))

(assert (not b!638391))

(assert (not b!638378))

(assert (not b!638390))

(assert (not b!638377))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!90107 () Bool)

(assert (=> d!90107 (= (validKeyInArray!0 k!1786) (and (not (= k!1786 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1786 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!638391 d!90107))

(declare-fun d!90113 () Bool)

(declare-fun res!413505 () Bool)

(declare-fun e!365433 () Bool)

(assert (=> d!90113 (=> res!413505 e!365433)))

(assert (=> d!90113 (= res!413505 (= (select (arr!18351 lt!295297) index!984) (select (arr!18351 a!2986) j!136)))))

(assert (=> d!90113 (= (arrayContainsKey!0 lt!295297 (select (arr!18351 a!2986) j!136) index!984) e!365433)))

(declare-fun b!638585 () Bool)

(declare-fun e!365434 () Bool)

(assert (=> b!638585 (= e!365433 e!365434)))

(declare-fun res!413506 () Bool)

(assert (=> b!638585 (=> (not res!413506) (not e!365434))))

(assert (=> b!638585 (= res!413506 (bvslt (bvadd index!984 #b00000000000000000000000000000001) (size!18715 lt!295297)))))

(declare-fun b!638586 () Bool)

(assert (=> b!638586 (= e!365434 (arrayContainsKey!0 lt!295297 (select (arr!18351 a!2986) j!136) (bvadd index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!90113 (not res!413505)) b!638585))

(assert (= (and b!638585 res!413506) b!638586))

(declare-fun m!612595 () Bool)

(assert (=> d!90113 m!612595))

(assert (=> b!638586 m!612371))

(declare-fun m!612597 () Bool)

(assert (=> b!638586 m!612597))

(assert (=> b!638380 d!90113))

(declare-fun b!638597 () Bool)

(declare-fun e!365444 () Bool)

(declare-fun call!33474 () Bool)

(assert (=> b!638597 (= e!365444 call!33474)))

(declare-fun d!90119 () Bool)

(declare-fun res!413513 () Bool)

(declare-fun e!365443 () Bool)

(assert (=> d!90119 (=> res!413513 e!365443)))

(assert (=> d!90119 (= res!413513 (bvsge #b00000000000000000000000000000000 (size!18715 a!2986)))))

(assert (=> d!90119 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053) e!365443)))

(declare-fun b!638598 () Bool)

(declare-fun e!365445 () Bool)

(assert (=> b!638598 (= e!365445 call!33474)))

(declare-fun b!638599 () Bool)

(assert (=> b!638599 (= e!365445 e!365444)))

(declare-fun lt!295405 () (_ BitVec 64))

(assert (=> b!638599 (= lt!295405 (select (arr!18351 a!2986) #b00000000000000000000000000000000))))

(declare-fun lt!295406 () Unit!21550)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38265 (_ BitVec 64) (_ BitVec 32)) Unit!21550)

(assert (=> b!638599 (= lt!295406 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2986 lt!295405 #b00000000000000000000000000000000))))

(assert (=> b!638599 (arrayContainsKey!0 a!2986 lt!295405 #b00000000000000000000000000000000)))

(declare-fun lt!295407 () Unit!21550)

(assert (=> b!638599 (= lt!295407 lt!295406)))

(declare-fun res!413514 () Bool)

(assert (=> b!638599 (= res!413514 (= (seekEntryOrOpen!0 (select (arr!18351 a!2986) #b00000000000000000000000000000000) a!2986 mask!3053) (Found!6798 #b00000000000000000000000000000000)))))

(assert (=> b!638599 (=> (not res!413514) (not e!365444))))

(declare-fun bm!33471 () Bool)

(assert (=> bm!33471 (= call!33474 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2986 mask!3053))))

(declare-fun b!638600 () Bool)

(assert (=> b!638600 (= e!365443 e!365445)))

(declare-fun c!72909 () Bool)

(assert (=> b!638600 (= c!72909 (validKeyInArray!0 (select (arr!18351 a!2986) #b00000000000000000000000000000000)))))

(assert (= (and d!90119 (not res!413513)) b!638600))

(assert (= (and b!638600 c!72909) b!638599))

(assert (= (and b!638600 (not c!72909)) b!638598))

(assert (= (and b!638599 res!413514) b!638597))

(assert (= (or b!638597 b!638598) bm!33471))

(declare-fun m!612599 () Bool)

(assert (=> b!638599 m!612599))

(declare-fun m!612601 () Bool)

(assert (=> b!638599 m!612601))

(declare-fun m!612603 () Bool)

(assert (=> b!638599 m!612603))

(assert (=> b!638599 m!612599))

(declare-fun m!612605 () Bool)

(assert (=> b!638599 m!612605))

(declare-fun m!612607 () Bool)

(assert (=> bm!33471 m!612607))

(assert (=> b!638600 m!612599))

(assert (=> b!638600 m!612599))

(declare-fun m!612609 () Bool)

(assert (=> b!638600 m!612609))

(assert (=> b!638390 d!90119))

(declare-fun d!90121 () Bool)

(assert (=> d!90121 (= (validMask!0 mask!3053) (and (or (= mask!3053 #b00000000000000000000000000000111) (= mask!3053 #b00000000000000000000000000001111) (= mask!3053 #b00000000000000000000000000011111) (= mask!3053 #b00000000000000000000000000111111) (= mask!3053 #b00000000000000000000000001111111) (= mask!3053 #b00000000000000000000000011111111) (= mask!3053 #b00000000000000000000000111111111) (= mask!3053 #b00000000000000000000001111111111) (= mask!3053 #b00000000000000000000011111111111) (= mask!3053 #b00000000000000000000111111111111) (= mask!3053 #b00000000000000000001111111111111) (= mask!3053 #b00000000000000000011111111111111) (= mask!3053 #b00000000000000000111111111111111) (= mask!3053 #b00000000000000001111111111111111) (= mask!3053 #b00000000000000011111111111111111) (= mask!3053 #b00000000000000111111111111111111) (= mask!3053 #b00000000000001111111111111111111) (= mask!3053 #b00000000000011111111111111111111) (= mask!3053 #b00000000000111111111111111111111) (= mask!3053 #b00000000001111111111111111111111) (= mask!3053 #b00000000011111111111111111111111) (= mask!3053 #b00000000111111111111111111111111) (= mask!3053 #b00000001111111111111111111111111) (= mask!3053 #b00000011111111111111111111111111) (= mask!3053 #b00000111111111111111111111111111) (= mask!3053 #b00001111111111111111111111111111) (= mask!3053 #b00011111111111111111111111111111) (= mask!3053 #b00111111111111111111111111111111)) (bvsle mask!3053 #b00111111111111111111111111111111)))))

(assert (=> start!57738 d!90121))

(declare-fun d!90139 () Bool)

(assert (=> d!90139 (= (array_inv!14125 a!2986) (bvsge (size!18715 a!2986) #b00000000000000000000000000000000))))

(assert (=> start!57738 d!90139))

(declare-fun b!638667 () Bool)

(declare-fun c!72940 () Bool)

(declare-fun lt!295441 () (_ BitVec 64))

(assert (=> b!638667 (= c!72940 (= lt!295441 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!365484 () SeekEntryResult!6798)

(declare-fun e!365482 () SeekEntryResult!6798)

(assert (=> b!638667 (= e!365484 e!365482)))

(declare-fun b!638668 () Bool)

(declare-fun e!365483 () SeekEntryResult!6798)

(assert (=> b!638668 (= e!365483 Undefined!6798)))

(declare-fun d!90141 () Bool)

(declare-fun lt!295440 () SeekEntryResult!6798)

(assert (=> d!90141 (and (or (is-Undefined!6798 lt!295440) (not (is-Found!6798 lt!295440)) (and (bvsge (index!29506 lt!295440) #b00000000000000000000000000000000) (bvslt (index!29506 lt!295440) (size!18715 a!2986)))) (or (is-Undefined!6798 lt!295440) (is-Found!6798 lt!295440) (not (is-MissingVacant!6798 lt!295440)) (not (= (index!29508 lt!295440) vacantSpotIndex!68)) (and (bvsge (index!29508 lt!295440) #b00000000000000000000000000000000) (bvslt (index!29508 lt!295440) (size!18715 a!2986)))) (or (is-Undefined!6798 lt!295440) (ite (is-Found!6798 lt!295440) (= (select (arr!18351 a!2986) (index!29506 lt!295440)) (select (arr!18351 a!2986) j!136)) (and (is-MissingVacant!6798 lt!295440) (= (index!29508 lt!295440) vacantSpotIndex!68) (= (select (arr!18351 a!2986) (index!29508 lt!295440)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!90141 (= lt!295440 e!365483)))

(declare-fun c!72941 () Bool)

(assert (=> d!90141 (= c!72941 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!90141 (= lt!295441 (select (arr!18351 a!2986) index!984))))

(assert (=> d!90141 (validMask!0 mask!3053)))

(assert (=> d!90141 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18351 a!2986) j!136) a!2986 mask!3053) lt!295440)))

(declare-fun b!638669 () Bool)

(assert (=> b!638669 (= e!365482 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 (select (arr!18351 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!638670 () Bool)

(assert (=> b!638670 (= e!365482 (MissingVacant!6798 vacantSpotIndex!68))))

(declare-fun b!638671 () Bool)

(assert (=> b!638671 (= e!365483 e!365484)))

(declare-fun c!72942 () Bool)

(assert (=> b!638671 (= c!72942 (= lt!295441 (select (arr!18351 a!2986) j!136)))))

(declare-fun b!638672 () Bool)

(assert (=> b!638672 (= e!365484 (Found!6798 index!984))))

(assert (= (and d!90141 c!72941) b!638668))

(assert (= (and d!90141 (not c!72941)) b!638671))

(assert (= (and b!638671 c!72942) b!638672))

(assert (= (and b!638671 (not c!72942)) b!638667))

(assert (= (and b!638667 c!72940) b!638670))

(assert (= (and b!638667 (not c!72940)) b!638669))

(declare-fun m!612657 () Bool)

(assert (=> d!90141 m!612657))

(declare-fun m!612659 () Bool)

(assert (=> d!90141 m!612659))

(assert (=> d!90141 m!612403))

(assert (=> d!90141 m!612377))

(assert (=> b!638669 m!612385))

(assert (=> b!638669 m!612385))

(assert (=> b!638669 m!612371))

(declare-fun m!612661 () Bool)

(assert (=> b!638669 m!612661))

(assert (=> b!638383 d!90141))

(declare-fun b!638683 () Bool)

(declare-fun c!72946 () Bool)

(declare-fun lt!295446 () (_ BitVec 64))

(assert (=> b!638683 (= c!72946 (= lt!295446 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!365494 () SeekEntryResult!6798)

(declare-fun e!365492 () SeekEntryResult!6798)

(assert (=> b!638683 (= e!365494 e!365492)))

(declare-fun b!638684 () Bool)

(declare-fun e!365493 () SeekEntryResult!6798)

(assert (=> b!638684 (= e!365493 Undefined!6798)))

(declare-fun lt!295445 () SeekEntryResult!6798)

(declare-fun d!90147 () Bool)

(assert (=> d!90147 (and (or (is-Undefined!6798 lt!295445) (not (is-Found!6798 lt!295445)) (and (bvsge (index!29506 lt!295445) #b00000000000000000000000000000000) (bvslt (index!29506 lt!295445) (size!18715 a!2986)))) (or (is-Undefined!6798 lt!295445) (is-Found!6798 lt!295445) (not (is-MissingVacant!6798 lt!295445)) (not (= (index!29508 lt!295445) vacantSpotIndex!68)) (and (bvsge (index!29508 lt!295445) #b00000000000000000000000000000000) (bvslt (index!29508 lt!295445) (size!18715 a!2986)))) (or (is-Undefined!6798 lt!295445) (ite (is-Found!6798 lt!295445) (= (select (arr!18351 a!2986) (index!29506 lt!295445)) (select (arr!18351 a!2986) j!136)) (and (is-MissingVacant!6798 lt!295445) (= (index!29508 lt!295445) vacantSpotIndex!68) (= (select (arr!18351 a!2986) (index!29508 lt!295445)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!90147 (= lt!295445 e!365493)))

(declare-fun c!72947 () Bool)

(assert (=> d!90147 (= c!72947 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!90147 (= lt!295446 (select (arr!18351 a!2986) lt!295296))))

(assert (=> d!90147 (validMask!0 mask!3053)))

(assert (=> d!90147 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!295296 vacantSpotIndex!68 (select (arr!18351 a!2986) j!136) a!2986 mask!3053) lt!295445)))

(declare-fun b!638685 () Bool)

(assert (=> b!638685 (= e!365492 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!295296 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 (select (arr!18351 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!638686 () Bool)

(assert (=> b!638686 (= e!365492 (MissingVacant!6798 vacantSpotIndex!68))))

(declare-fun b!638687 () Bool)

(assert (=> b!638687 (= e!365493 e!365494)))

(declare-fun c!72948 () Bool)

(assert (=> b!638687 (= c!72948 (= lt!295446 (select (arr!18351 a!2986) j!136)))))

(declare-fun b!638688 () Bool)

(assert (=> b!638688 (= e!365494 (Found!6798 lt!295296))))

(assert (= (and d!90147 c!72947) b!638684))

(assert (= (and d!90147 (not c!72947)) b!638687))

(assert (= (and b!638687 c!72948) b!638688))

(assert (= (and b!638687 (not c!72948)) b!638683))

(assert (= (and b!638683 c!72946) b!638686))

(assert (= (and b!638683 (not c!72946)) b!638685))

(declare-fun m!612663 () Bool)

(assert (=> d!90147 m!612663))

(declare-fun m!612665 () Bool)

(assert (=> d!90147 m!612665))

(declare-fun m!612668 () Bool)

(assert (=> d!90147 m!612668))

(assert (=> d!90147 m!612377))

(declare-fun m!612673 () Bool)

(assert (=> b!638685 m!612673))

(assert (=> b!638685 m!612673))

(assert (=> b!638685 m!612371))

(declare-fun m!612681 () Bool)

(assert (=> b!638685 m!612681))

(assert (=> b!638382 d!90147))

(declare-fun d!90151 () Bool)

(declare-fun e!365505 () Bool)

(assert (=> d!90151 e!365505))

(declare-fun res!413535 () Bool)

(assert (=> d!90151 (=> (not res!413535) (not e!365505))))

(assert (=> d!90151 (= res!413535 (and (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18715 a!2986)) (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18715 a!2986)))) (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18715 a!2986)) (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18715 a!2986)))) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18715 a!2986))))))

(declare-fun lt!295449 () Unit!21550)

(declare-fun choose!9 (array!38265 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21550)

(assert (=> d!90151 (= lt!295449 (choose!9 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!295296 vacantSpotIndex!68 mask!3053))))

(assert (=> d!90151 (validMask!0 mask!3053)))

(assert (=> d!90151 (= (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!295296 vacantSpotIndex!68 mask!3053) lt!295449)))

(declare-fun b!638699 () Bool)

(assert (=> b!638699 (= e!365505 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!295296 vacantSpotIndex!68 (select (arr!18351 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!295296 vacantSpotIndex!68 (select (store (arr!18351 a!2986) i!1108 k!1786) j!136) (array!38266 (store (arr!18351 a!2986) i!1108 k!1786) (size!18715 a!2986)) mask!3053)))))

(assert (= (and d!90151 res!413535) b!638699))

(declare-fun m!612699 () Bool)

(assert (=> d!90151 m!612699))

(assert (=> d!90151 m!612377))

(assert (=> b!638699 m!612387))

(declare-fun m!612701 () Bool)

(assert (=> b!638699 m!612701))

(assert (=> b!638699 m!612371))

(assert (=> b!638699 m!612381))

(assert (=> b!638699 m!612371))

(assert (=> b!638699 m!612389))

(assert (=> b!638699 m!612387))

(assert (=> b!638382 d!90151))

(declare-fun d!90171 () Bool)

(declare-fun lt!295452 () (_ BitVec 32))

(assert (=> d!90171 (and (bvsge lt!295452 #b00000000000000000000000000000000) (bvslt lt!295452 (bvadd mask!3053 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!90171 (= lt!295452 (choose!52 index!984 x!910 mask!3053))))

(assert (=> d!90171 (validMask!0 mask!3053)))

(assert (=> d!90171 (= (nextIndex!0 index!984 x!910 mask!3053) lt!295452)))

(declare-fun bs!19148 () Bool)

(assert (= bs!19148 d!90171))

(declare-fun m!612703 () Bool)

(assert (=> bs!19148 m!612703))

(assert (=> bs!19148 m!612377))

(assert (=> b!638382 d!90171))

(declare-fun b!638708 () Bool)

(declare-fun c!72951 () Bool)

(declare-fun lt!295460 () (_ BitVec 64))

(assert (=> b!638708 (= c!72951 (= lt!295460 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!365514 () SeekEntryResult!6798)

(declare-fun e!365512 () SeekEntryResult!6798)

(assert (=> b!638708 (= e!365514 e!365512)))

(declare-fun b!638709 () Bool)

(declare-fun e!365513 () SeekEntryResult!6798)

(assert (=> b!638709 (= e!365513 Undefined!6798)))

(declare-fun d!90173 () Bool)

(declare-fun lt!295459 () SeekEntryResult!6798)

(assert (=> d!90173 (and (or (is-Undefined!6798 lt!295459) (not (is-Found!6798 lt!295459)) (and (bvsge (index!29506 lt!295459) #b00000000000000000000000000000000) (bvslt (index!29506 lt!295459) (size!18715 lt!295297)))) (or (is-Undefined!6798 lt!295459) (is-Found!6798 lt!295459) (not (is-MissingVacant!6798 lt!295459)) (not (= (index!29508 lt!295459) vacantSpotIndex!68)) (and (bvsge (index!29508 lt!295459) #b00000000000000000000000000000000) (bvslt (index!29508 lt!295459) (size!18715 lt!295297)))) (or (is-Undefined!6798 lt!295459) (ite (is-Found!6798 lt!295459) (= (select (arr!18351 lt!295297) (index!29506 lt!295459)) lt!295292) (and (is-MissingVacant!6798 lt!295459) (= (index!29508 lt!295459) vacantSpotIndex!68) (= (select (arr!18351 lt!295297) (index!29508 lt!295459)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!90173 (= lt!295459 e!365513)))

(declare-fun c!72952 () Bool)

(assert (=> d!90173 (= c!72952 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!90173 (= lt!295460 (select (arr!18351 lt!295297) lt!295296))))

(assert (=> d!90173 (validMask!0 mask!3053)))

(assert (=> d!90173 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!295296 vacantSpotIndex!68 lt!295292 lt!295297 mask!3053) lt!295459)))

(declare-fun b!638710 () Bool)

(assert (=> b!638710 (= e!365512 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!295296 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 lt!295292 lt!295297 mask!3053))))

(declare-fun b!638711 () Bool)

(assert (=> b!638711 (= e!365512 (MissingVacant!6798 vacantSpotIndex!68))))

(declare-fun b!638712 () Bool)

(assert (=> b!638712 (= e!365513 e!365514)))

(declare-fun c!72953 () Bool)

(assert (=> b!638712 (= c!72953 (= lt!295460 lt!295292))))

(declare-fun b!638713 () Bool)

(assert (=> b!638713 (= e!365514 (Found!6798 lt!295296))))

(assert (= (and d!90173 c!72952) b!638709))

(assert (= (and d!90173 (not c!72952)) b!638712))

(assert (= (and b!638712 c!72953) b!638713))

(assert (= (and b!638712 (not c!72953)) b!638708))

(assert (= (and b!638708 c!72951) b!638711))

(assert (= (and b!638708 (not c!72951)) b!638710))

(declare-fun m!612705 () Bool)

(assert (=> d!90173 m!612705))

(declare-fun m!612707 () Bool)

(assert (=> d!90173 m!612707))

(declare-fun m!612709 () Bool)

(assert (=> d!90173 m!612709))

(assert (=> d!90173 m!612377))

(assert (=> b!638710 m!612673))

(assert (=> b!638710 m!612673))

