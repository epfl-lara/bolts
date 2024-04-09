; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59608 () Bool)

(assert start!59608)

(declare-fun res!427055 () Bool)

(declare-fun e!378225 () Bool)

(assert (=> start!59608 (=> (not res!427055) (not e!378225))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!59608 (= res!427055 (validMask!0 mask!3053))))

(assert (=> start!59608 e!378225))

(assert (=> start!59608 true))

(declare-datatypes ((array!38722 0))(
  ( (array!38723 (arr!18554 (Array (_ BitVec 32) (_ BitVec 64))) (size!18918 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38722)

(declare-fun array_inv!14328 (array!38722) Bool)

(assert (=> start!59608 (array_inv!14328 a!2986)))

(declare-fun b!658368 () Bool)

(assert (=> b!658368 false))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!307946 () array!38722)

(declare-datatypes ((Unit!22854 0))(
  ( (Unit!22855) )
))
(declare-fun lt!307929 () Unit!22854)

(declare-datatypes ((List!12648 0))(
  ( (Nil!12645) (Cons!12644 (h!13689 (_ BitVec 64)) (t!18884 List!12648)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38722 (_ BitVec 64) (_ BitVec 32) List!12648) Unit!22854)

(assert (=> b!658368 (= lt!307929 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!307946 (select (arr!18554 a!2986) j!136) j!136 Nil!12645))))

(declare-fun arrayNoDuplicates!0 (array!38722 (_ BitVec 32) List!12648) Bool)

(assert (=> b!658368 (arrayNoDuplicates!0 lt!307946 j!136 Nil!12645)))

(declare-fun lt!307931 () Unit!22854)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38722 (_ BitVec 32) (_ BitVec 32)) Unit!22854)

(assert (=> b!658368 (= lt!307931 (lemmaNoDuplicateFromThenFromBigger!0 lt!307946 #b00000000000000000000000000000000 j!136))))

(assert (=> b!658368 (arrayNoDuplicates!0 lt!307946 #b00000000000000000000000000000000 Nil!12645)))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun lt!307943 () Unit!22854)

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38722 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12648) Unit!22854)

(assert (=> b!658368 (= lt!307943 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12645))))

(declare-fun arrayContainsKey!0 (array!38722 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!658368 (arrayContainsKey!0 lt!307946 (select (arr!18554 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!307938 () Unit!22854)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38722 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22854)

(assert (=> b!658368 (= lt!307938 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!307946 (select (arr!18554 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun e!378224 () Unit!22854)

(declare-fun Unit!22856 () Unit!22854)

(assert (=> b!658368 (= e!378224 Unit!22856)))

(declare-fun b!658369 () Bool)

(declare-fun res!427049 () Bool)

(assert (=> b!658369 (=> (not res!427049) (not e!378225))))

(assert (=> b!658369 (= res!427049 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!658370 () Bool)

(declare-fun e!378226 () Bool)

(assert (=> b!658370 (= e!378226 (arrayContainsKey!0 lt!307946 (select (arr!18554 a!2986) j!136) index!984))))

(declare-fun b!658371 () Bool)

(declare-fun res!427061 () Bool)

(assert (=> b!658371 (=> (not res!427061) (not e!378225))))

(assert (=> b!658371 (= res!427061 (and (= (size!18918 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18918 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18918 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!658372 () Bool)

(declare-fun e!378233 () Bool)

(declare-datatypes ((SeekEntryResult!7001 0))(
  ( (MissingZero!7001 (index!30368 (_ BitVec 32))) (Found!7001 (index!30369 (_ BitVec 32))) (Intermediate!7001 (undefined!7813 Bool) (index!30370 (_ BitVec 32)) (x!59181 (_ BitVec 32))) (Undefined!7001) (MissingVacant!7001 (index!30371 (_ BitVec 32))) )
))
(declare-fun lt!307944 () SeekEntryResult!7001)

(declare-fun lt!307941 () SeekEntryResult!7001)

(assert (=> b!658372 (= e!378233 (= lt!307944 lt!307941))))

(declare-fun b!658373 () Bool)

(declare-fun e!378232 () Unit!22854)

(declare-fun Unit!22857 () Unit!22854)

(assert (=> b!658373 (= e!378232 Unit!22857)))

(declare-fun res!427050 () Bool)

(assert (=> b!658373 (= res!427050 (= (select (store (arr!18554 a!2986) i!1108 k!1786) index!984) (select (arr!18554 a!2986) j!136)))))

(declare-fun e!378222 () Bool)

(assert (=> b!658373 (=> (not res!427050) (not e!378222))))

(assert (=> b!658373 e!378222))

(declare-fun c!76028 () Bool)

(assert (=> b!658373 (= c!76028 (bvslt j!136 index!984))))

(declare-fun lt!307940 () Unit!22854)

(assert (=> b!658373 (= lt!307940 e!378224)))

(declare-fun c!76030 () Bool)

(assert (=> b!658373 (= c!76030 (bvslt index!984 j!136))))

(declare-fun lt!307932 () Unit!22854)

(declare-fun e!378223 () Unit!22854)

(assert (=> b!658373 (= lt!307932 e!378223)))

(assert (=> b!658373 false))

(declare-fun res!427059 () Bool)

(declare-fun b!658374 () Bool)

(assert (=> b!658374 (= res!427059 (arrayContainsKey!0 lt!307946 (select (arr!18554 a!2986) j!136) j!136))))

(assert (=> b!658374 (=> (not res!427059) (not e!378226))))

(declare-fun e!378230 () Bool)

(assert (=> b!658374 (= e!378230 e!378226)))

(declare-fun b!658375 () Bool)

(declare-fun res!427057 () Bool)

(assert (=> b!658375 (= res!427057 (bvsge j!136 index!984))))

(assert (=> b!658375 (=> res!427057 e!378230)))

(assert (=> b!658375 (= e!378222 e!378230)))

(declare-fun b!658376 () Bool)

(declare-fun Unit!22858 () Unit!22854)

(assert (=> b!658376 (= e!378224 Unit!22858)))

(declare-fun b!658377 () Bool)

(declare-fun e!378228 () Bool)

(assert (=> b!658377 (= e!378228 (not true))))

(declare-fun lt!307939 () Unit!22854)

(assert (=> b!658377 (= lt!307939 e!378232)))

(declare-fun c!76031 () Bool)

(declare-fun lt!307930 () SeekEntryResult!7001)

(assert (=> b!658377 (= c!76031 (= lt!307930 (Found!7001 index!984)))))

(declare-fun lt!307933 () Unit!22854)

(declare-fun e!378231 () Unit!22854)

(assert (=> b!658377 (= lt!307933 e!378231)))

(declare-fun c!76029 () Bool)

(assert (=> b!658377 (= c!76029 (= lt!307930 Undefined!7001))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!307935 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38722 (_ BitVec 32)) SeekEntryResult!7001)

(assert (=> b!658377 (= lt!307930 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!307935 lt!307946 mask!3053))))

(assert (=> b!658377 e!378233))

(declare-fun res!427046 () Bool)

(assert (=> b!658377 (=> (not res!427046) (not e!378233))))

(declare-fun lt!307945 () (_ BitVec 32))

(assert (=> b!658377 (= res!427046 (= lt!307941 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!307945 vacantSpotIndex!68 lt!307935 lt!307946 mask!3053)))))

(assert (=> b!658377 (= lt!307941 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!307945 vacantSpotIndex!68 (select (arr!18554 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!658377 (= lt!307935 (select (store (arr!18554 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!307947 () Unit!22854)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38722 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22854)

(assert (=> b!658377 (= lt!307947 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!307945 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!658377 (= lt!307945 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!658378 () Bool)

(declare-fun res!427056 () Bool)

(assert (=> b!658378 (=> (not res!427056) (not e!378225))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!658378 (= res!427056 (validKeyInArray!0 k!1786))))

(declare-fun b!658379 () Bool)

(declare-fun res!427051 () Bool)

(declare-fun e!378227 () Bool)

(assert (=> b!658379 (=> (not res!427051) (not e!378227))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38722 (_ BitVec 32)) Bool)

(assert (=> b!658379 (= res!427051 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!658380 () Bool)

(declare-fun e!378235 () Bool)

(assert (=> b!658380 (= e!378235 e!378228)))

(declare-fun res!427053 () Bool)

(assert (=> b!658380 (=> (not res!427053) (not e!378228))))

(assert (=> b!658380 (= res!427053 (and (= lt!307944 (Found!7001 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18554 a!2986) index!984) (select (arr!18554 a!2986) j!136))) (not (= (select (arr!18554 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!658380 (= lt!307944 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18554 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!658381 () Bool)

(assert (=> b!658381 false))

(declare-fun lt!307934 () Unit!22854)

(assert (=> b!658381 (= lt!307934 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!307946 (select (arr!18554 a!2986) j!136) index!984 Nil!12645))))

(assert (=> b!658381 (arrayNoDuplicates!0 lt!307946 index!984 Nil!12645)))

(declare-fun lt!307942 () Unit!22854)

(assert (=> b!658381 (= lt!307942 (lemmaNoDuplicateFromThenFromBigger!0 lt!307946 #b00000000000000000000000000000000 index!984))))

(assert (=> b!658381 (arrayNoDuplicates!0 lt!307946 #b00000000000000000000000000000000 Nil!12645)))

(declare-fun lt!307936 () Unit!22854)

(assert (=> b!658381 (= lt!307936 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12645))))

(assert (=> b!658381 (arrayContainsKey!0 lt!307946 (select (arr!18554 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!307928 () Unit!22854)

(assert (=> b!658381 (= lt!307928 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!307946 (select (arr!18554 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!378234 () Bool)

(assert (=> b!658381 e!378234))

(declare-fun res!427048 () Bool)

(assert (=> b!658381 (=> (not res!427048) (not e!378234))))

(assert (=> b!658381 (= res!427048 (arrayContainsKey!0 lt!307946 (select (arr!18554 a!2986) j!136) j!136))))

(declare-fun Unit!22859 () Unit!22854)

(assert (=> b!658381 (= e!378223 Unit!22859)))

(declare-fun b!658382 () Bool)

(declare-fun res!427060 () Bool)

(assert (=> b!658382 (=> (not res!427060) (not e!378225))))

(assert (=> b!658382 (= res!427060 (validKeyInArray!0 (select (arr!18554 a!2986) j!136)))))

(declare-fun b!658383 () Bool)

(declare-fun Unit!22860 () Unit!22854)

(assert (=> b!658383 (= e!378223 Unit!22860)))

(declare-fun b!658384 () Bool)

(declare-fun res!427052 () Bool)

(assert (=> b!658384 (=> (not res!427052) (not e!378227))))

(assert (=> b!658384 (= res!427052 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12645))))

(declare-fun b!658385 () Bool)

(declare-fun Unit!22861 () Unit!22854)

(assert (=> b!658385 (= e!378231 Unit!22861)))

(declare-fun b!658386 () Bool)

(assert (=> b!658386 (= e!378225 e!378227)))

(declare-fun res!427047 () Bool)

(assert (=> b!658386 (=> (not res!427047) (not e!378227))))

(declare-fun lt!307937 () SeekEntryResult!7001)

(assert (=> b!658386 (= res!427047 (or (= lt!307937 (MissingZero!7001 i!1108)) (= lt!307937 (MissingVacant!7001 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38722 (_ BitVec 32)) SeekEntryResult!7001)

(assert (=> b!658386 (= lt!307937 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!658387 () Bool)

(assert (=> b!658387 (= e!378227 e!378235)))

(declare-fun res!427054 () Bool)

(assert (=> b!658387 (=> (not res!427054) (not e!378235))))

(assert (=> b!658387 (= res!427054 (= (select (store (arr!18554 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!658387 (= lt!307946 (array!38723 (store (arr!18554 a!2986) i!1108 k!1786) (size!18918 a!2986)))))

(declare-fun b!658388 () Bool)

(assert (=> b!658388 (= e!378234 (arrayContainsKey!0 lt!307946 (select (arr!18554 a!2986) j!136) index!984))))

(declare-fun b!658389 () Bool)

(declare-fun res!427058 () Bool)

(assert (=> b!658389 (=> (not res!427058) (not e!378227))))

(assert (=> b!658389 (= res!427058 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18554 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!658390 () Bool)

(declare-fun Unit!22862 () Unit!22854)

(assert (=> b!658390 (= e!378231 Unit!22862)))

(assert (=> b!658390 false))

(declare-fun b!658391 () Bool)

(declare-fun Unit!22863 () Unit!22854)

(assert (=> b!658391 (= e!378232 Unit!22863)))

(assert (= (and start!59608 res!427055) b!658371))

(assert (= (and b!658371 res!427061) b!658382))

(assert (= (and b!658382 res!427060) b!658378))

(assert (= (and b!658378 res!427056) b!658369))

(assert (= (and b!658369 res!427049) b!658386))

(assert (= (and b!658386 res!427047) b!658379))

(assert (= (and b!658379 res!427051) b!658384))

(assert (= (and b!658384 res!427052) b!658389))

(assert (= (and b!658389 res!427058) b!658387))

(assert (= (and b!658387 res!427054) b!658380))

(assert (= (and b!658380 res!427053) b!658377))

(assert (= (and b!658377 res!427046) b!658372))

(assert (= (and b!658377 c!76029) b!658390))

(assert (= (and b!658377 (not c!76029)) b!658385))

(assert (= (and b!658377 c!76031) b!658373))

(assert (= (and b!658377 (not c!76031)) b!658391))

(assert (= (and b!658373 res!427050) b!658375))

(assert (= (and b!658375 (not res!427057)) b!658374))

(assert (= (and b!658374 res!427059) b!658370))

(assert (= (and b!658373 c!76028) b!658368))

(assert (= (and b!658373 (not c!76028)) b!658376))

(assert (= (and b!658373 c!76030) b!658381))

(assert (= (and b!658373 (not c!76030)) b!658383))

(assert (= (and b!658381 res!427048) b!658388))

(declare-fun m!631421 () Bool)

(assert (=> b!658370 m!631421))

(assert (=> b!658370 m!631421))

(declare-fun m!631423 () Bool)

(assert (=> b!658370 m!631423))

(assert (=> b!658388 m!631421))

(assert (=> b!658388 m!631421))

(assert (=> b!658388 m!631423))

(declare-fun m!631425 () Bool)

(assert (=> b!658389 m!631425))

(declare-fun m!631427 () Bool)

(assert (=> b!658373 m!631427))

(declare-fun m!631429 () Bool)

(assert (=> b!658373 m!631429))

(assert (=> b!658373 m!631421))

(declare-fun m!631431 () Bool)

(assert (=> b!658377 m!631431))

(declare-fun m!631433 () Bool)

(assert (=> b!658377 m!631433))

(declare-fun m!631435 () Bool)

(assert (=> b!658377 m!631435))

(assert (=> b!658377 m!631421))

(assert (=> b!658377 m!631421))

(declare-fun m!631437 () Bool)

(assert (=> b!658377 m!631437))

(assert (=> b!658377 m!631427))

(declare-fun m!631439 () Bool)

(assert (=> b!658377 m!631439))

(declare-fun m!631441 () Bool)

(assert (=> b!658377 m!631441))

(assert (=> b!658387 m!631427))

(declare-fun m!631443 () Bool)

(assert (=> b!658387 m!631443))

(declare-fun m!631445 () Bool)

(assert (=> b!658378 m!631445))

(declare-fun m!631447 () Bool)

(assert (=> b!658369 m!631447))

(assert (=> b!658374 m!631421))

(assert (=> b!658374 m!631421))

(declare-fun m!631449 () Bool)

(assert (=> b!658374 m!631449))

(declare-fun m!631451 () Bool)

(assert (=> start!59608 m!631451))

(declare-fun m!631453 () Bool)

(assert (=> start!59608 m!631453))

(declare-fun m!631455 () Bool)

(assert (=> b!658379 m!631455))

(declare-fun m!631457 () Bool)

(assert (=> b!658380 m!631457))

(assert (=> b!658380 m!631421))

(assert (=> b!658380 m!631421))

(declare-fun m!631459 () Bool)

(assert (=> b!658380 m!631459))

(assert (=> b!658382 m!631421))

(assert (=> b!658382 m!631421))

(declare-fun m!631461 () Bool)

(assert (=> b!658382 m!631461))

(assert (=> b!658381 m!631421))

(declare-fun m!631463 () Bool)

(assert (=> b!658381 m!631463))

(assert (=> b!658381 m!631421))

(assert (=> b!658381 m!631449))

(assert (=> b!658381 m!631421))

(declare-fun m!631465 () Bool)

(assert (=> b!658381 m!631465))

(assert (=> b!658381 m!631421))

(declare-fun m!631467 () Bool)

(assert (=> b!658381 m!631467))

(declare-fun m!631469 () Bool)

(assert (=> b!658381 m!631469))

(declare-fun m!631471 () Bool)

(assert (=> b!658381 m!631471))

(assert (=> b!658381 m!631421))

(declare-fun m!631473 () Bool)

(assert (=> b!658381 m!631473))

(declare-fun m!631475 () Bool)

(assert (=> b!658381 m!631475))

(declare-fun m!631477 () Bool)

(assert (=> b!658386 m!631477))

(declare-fun m!631479 () Bool)

(assert (=> b!658384 m!631479))

(assert (=> b!658368 m!631421))

(declare-fun m!631481 () Bool)

(assert (=> b!658368 m!631481))

(assert (=> b!658368 m!631421))

(declare-fun m!631483 () Bool)

(assert (=> b!658368 m!631483))

(declare-fun m!631485 () Bool)

(assert (=> b!658368 m!631485))

(assert (=> b!658368 m!631421))

(declare-fun m!631487 () Bool)

(assert (=> b!658368 m!631487))

(assert (=> b!658368 m!631421))

(declare-fun m!631489 () Bool)

(assert (=> b!658368 m!631489))

(assert (=> b!658368 m!631469))

(assert (=> b!658368 m!631475))

(push 1)

