; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!55810 () Bool)

(assert start!55810)

(declare-fun b!610960 () Bool)

(declare-datatypes ((Unit!19582 0))(
  ( (Unit!19583) )
))
(declare-fun e!350082 () Unit!19582)

(declare-fun Unit!19584 () Unit!19582)

(assert (=> b!610960 (= e!350082 Unit!19584)))

(declare-fun b!610961 () Bool)

(declare-fun res!393068 () Bool)

(declare-fun e!350070 () Bool)

(assert (=> b!610961 (=> (not res!393068) (not e!350070))))

(declare-datatypes ((array!37336 0))(
  ( (array!37337 (arr!17912 (Array (_ BitVec 32) (_ BitVec 64))) (size!18276 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37336)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!610961 (= res!393068 (validKeyInArray!0 (select (arr!17912 a!2986) j!136)))))

(declare-fun b!610962 () Bool)

(declare-fun res!393074 () Bool)

(declare-fun e!350083 () Bool)

(assert (=> b!610962 (=> (not res!393074) (not e!350083))))

(declare-datatypes ((List!12006 0))(
  ( (Nil!12003) (Cons!12002 (h!13047 (_ BitVec 64)) (t!18242 List!12006)) )
))
(declare-fun arrayNoDuplicates!0 (array!37336 (_ BitVec 32) List!12006) Bool)

(assert (=> b!610962 (= res!393074 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12003))))

(declare-fun b!610963 () Bool)

(declare-fun res!393085 () Bool)

(assert (=> b!610963 (=> (not res!393085) (not e!350070))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!37336 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!610963 (= res!393085 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!610964 () Bool)

(declare-fun Unit!19585 () Unit!19582)

(assert (=> b!610964 (= e!350082 Unit!19585)))

(assert (=> b!610964 false))

(declare-fun lt!279562 () array!37336)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun e!350075 () Bool)

(declare-fun b!610965 () Bool)

(assert (=> b!610965 (= e!350075 (arrayContainsKey!0 lt!279562 (select (arr!17912 a!2986) j!136) index!984))))

(declare-fun b!610966 () Bool)

(declare-fun e!350069 () Unit!19582)

(declare-fun Unit!19586 () Unit!19582)

(assert (=> b!610966 (= e!350069 Unit!19586)))

(declare-fun lt!279573 () Unit!19582)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37336 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19582)

(assert (=> b!610966 (= lt!279573 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!279562 (select (arr!17912 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!610966 (arrayContainsKey!0 lt!279562 (select (arr!17912 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun lt!279566 () Unit!19582)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37336 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12006) Unit!19582)

(assert (=> b!610966 (= lt!279566 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12003))))

(assert (=> b!610966 (arrayNoDuplicates!0 lt!279562 #b00000000000000000000000000000000 Nil!12003)))

(declare-fun lt!279565 () Unit!19582)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37336 (_ BitVec 32) (_ BitVec 32)) Unit!19582)

(assert (=> b!610966 (= lt!279565 (lemmaNoDuplicateFromThenFromBigger!0 lt!279562 #b00000000000000000000000000000000 j!136))))

(assert (=> b!610966 (arrayNoDuplicates!0 lt!279562 j!136 Nil!12003)))

(declare-fun lt!279568 () Unit!19582)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37336 (_ BitVec 64) (_ BitVec 32) List!12006) Unit!19582)

(assert (=> b!610966 (= lt!279568 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!279562 (select (arr!17912 a!2986) j!136) j!136 Nil!12003))))

(assert (=> b!610966 false))

(declare-fun b!610967 () Bool)

(declare-fun e!350077 () Bool)

(declare-fun e!350071 () Bool)

(assert (=> b!610967 (= e!350077 e!350071)))

(declare-fun res!393086 () Bool)

(assert (=> b!610967 (=> (not res!393086) (not e!350071))))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6359 0))(
  ( (MissingZero!6359 (index!27716 (_ BitVec 32))) (Found!6359 (index!27717 (_ BitVec 32))) (Intermediate!6359 (undefined!7171 Bool) (index!27718 (_ BitVec 32)) (x!56551 (_ BitVec 32))) (Undefined!6359) (MissingVacant!6359 (index!27719 (_ BitVec 32))) )
))
(declare-fun lt!279572 () SeekEntryResult!6359)

(assert (=> b!610967 (= res!393086 (and (= lt!279572 (Found!6359 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17912 a!2986) index!984) (select (arr!17912 a!2986) j!136))) (not (= (select (arr!17912 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37336 (_ BitVec 32)) SeekEntryResult!6359)

(assert (=> b!610967 (= lt!279572 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17912 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!610968 () Bool)

(declare-fun res!393071 () Bool)

(assert (=> b!610968 (=> (not res!393071) (not e!350083))))

(assert (=> b!610968 (= res!393071 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17912 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!610969 () Bool)

(declare-fun Unit!19587 () Unit!19582)

(assert (=> b!610969 (= e!350069 Unit!19587)))

(declare-fun b!610970 () Bool)

(declare-fun res!393070 () Bool)

(assert (=> b!610970 (=> (not res!393070) (not e!350070))))

(assert (=> b!610970 (= res!393070 (validKeyInArray!0 k!1786))))

(declare-fun b!610971 () Bool)

(declare-fun res!393078 () Bool)

(assert (=> b!610971 (=> (not res!393078) (not e!350070))))

(assert (=> b!610971 (= res!393078 (and (= (size!18276 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18276 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18276 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!610972 () Bool)

(declare-fun res!393083 () Bool)

(assert (=> b!610972 (=> (not res!393083) (not e!350083))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37336 (_ BitVec 32)) Bool)

(assert (=> b!610972 (= res!393083 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!610973 () Bool)

(declare-fun e!350079 () Bool)

(assert (=> b!610973 (= e!350079 e!350075)))

(declare-fun res!393087 () Bool)

(assert (=> b!610973 (=> (not res!393087) (not e!350075))))

(assert (=> b!610973 (= res!393087 (arrayContainsKey!0 lt!279562 (select (arr!17912 a!2986) j!136) j!136))))

(declare-fun b!610974 () Bool)

(declare-fun e!350074 () Bool)

(declare-fun e!350073 () Bool)

(assert (=> b!610974 (= e!350074 e!350073)))

(declare-fun res!393075 () Bool)

(assert (=> b!610974 (=> (not res!393075) (not e!350073))))

(declare-fun contains!3048 (List!12006 (_ BitVec 64)) Bool)

(assert (=> b!610974 (= res!393075 (not (contains!3048 Nil!12003 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!610975 () Bool)

(declare-fun e!350076 () Bool)

(declare-fun lt!279559 () SeekEntryResult!6359)

(assert (=> b!610975 (= e!350076 (= lt!279572 lt!279559))))

(declare-fun e!350068 () Bool)

(declare-fun b!610976 () Bool)

(assert (=> b!610976 (= e!350068 (arrayContainsKey!0 lt!279562 (select (arr!17912 a!2986) j!136) index!984))))

(declare-fun b!610977 () Bool)

(assert (=> b!610977 (= e!350083 e!350077)))

(declare-fun res!393080 () Bool)

(assert (=> b!610977 (=> (not res!393080) (not e!350077))))

(assert (=> b!610977 (= res!393080 (= (select (store (arr!17912 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!610977 (= lt!279562 (array!37337 (store (arr!17912 a!2986) i!1108 k!1786) (size!18276 a!2986)))))

(declare-fun b!610978 () Bool)

(declare-fun e!350081 () Bool)

(declare-fun e!350072 () Bool)

(assert (=> b!610978 (= e!350081 e!350072)))

(declare-fun res!393073 () Bool)

(assert (=> b!610978 (=> res!393073 e!350072)))

(declare-fun lt!279557 () (_ BitVec 64))

(declare-fun lt!279561 () (_ BitVec 64))

(assert (=> b!610978 (= res!393073 (or (not (= (select (arr!17912 a!2986) j!136) lt!279557)) (not (= (select (arr!17912 a!2986) j!136) lt!279561))))))

(declare-fun e!350078 () Bool)

(assert (=> b!610978 e!350078))

(declare-fun res!393088 () Bool)

(assert (=> b!610978 (=> (not res!393088) (not e!350078))))

(assert (=> b!610978 (= res!393088 (= lt!279561 (select (arr!17912 a!2986) j!136)))))

(assert (=> b!610978 (= lt!279561 (select (store (arr!17912 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!610979 () Bool)

(declare-fun e!350067 () Bool)

(assert (=> b!610979 (= e!350067 e!350074)))

(declare-fun res!393069 () Bool)

(assert (=> b!610979 (=> res!393069 e!350074)))

(assert (=> b!610979 (= res!393069 (or (bvsgt #b00000000000000000000000000000000 (size!18276 a!2986)) (bvsge (size!18276 a!2986) #b01111111111111111111111111111111)))))

(assert (=> b!610979 (arrayNoDuplicates!0 lt!279562 #b00000000000000000000000000000000 Nil!12003)))

(declare-fun lt!279569 () Unit!19582)

(assert (=> b!610979 (= lt!279569 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12003))))

(assert (=> b!610979 (arrayContainsKey!0 lt!279562 (select (arr!17912 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!279567 () Unit!19582)

(assert (=> b!610979 (= lt!279567 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!279562 (select (arr!17912 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!610979 e!350068))

(declare-fun res!393082 () Bool)

(assert (=> b!610979 (=> (not res!393082) (not e!350068))))

(assert (=> b!610979 (= res!393082 (arrayContainsKey!0 lt!279562 (select (arr!17912 a!2986) j!136) j!136))))

(declare-fun b!610980 () Bool)

(assert (=> b!610980 (= e!350072 e!350067)))

(declare-fun res!393084 () Bool)

(assert (=> b!610980 (=> res!393084 e!350067)))

(assert (=> b!610980 (= res!393084 (bvsge index!984 j!136))))

(declare-fun lt!279563 () Unit!19582)

(assert (=> b!610980 (= lt!279563 e!350069)))

(declare-fun c!69313 () Bool)

(assert (=> b!610980 (= c!69313 (bvslt j!136 index!984))))

(declare-fun b!610981 () Bool)

(assert (=> b!610981 (= e!350073 (not (contains!3048 Nil!12003 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!393077 () Bool)

(assert (=> start!55810 (=> (not res!393077) (not e!350070))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55810 (= res!393077 (validMask!0 mask!3053))))

(assert (=> start!55810 e!350070))

(assert (=> start!55810 true))

(declare-fun array_inv!13686 (array!37336) Bool)

(assert (=> start!55810 (array_inv!13686 a!2986)))

(declare-fun b!610982 () Bool)

(declare-fun res!393072 () Bool)

(assert (=> b!610982 (=> res!393072 e!350074)))

(declare-fun noDuplicate!348 (List!12006) Bool)

(assert (=> b!610982 (= res!393072 (not (noDuplicate!348 Nil!12003)))))

(declare-fun b!610983 () Bool)

(assert (=> b!610983 (= e!350078 e!350079)))

(declare-fun res!393079 () Bool)

(assert (=> b!610983 (=> res!393079 e!350079)))

(assert (=> b!610983 (= res!393079 (or (not (= (select (arr!17912 a!2986) j!136) lt!279557)) (not (= (select (arr!17912 a!2986) j!136) lt!279561)) (bvsge j!136 index!984)))))

(declare-fun b!610984 () Bool)

(assert (=> b!610984 (= e!350070 e!350083)))

(declare-fun res!393081 () Bool)

(assert (=> b!610984 (=> (not res!393081) (not e!350083))))

(declare-fun lt!279564 () SeekEntryResult!6359)

(assert (=> b!610984 (= res!393081 (or (= lt!279564 (MissingZero!6359 i!1108)) (= lt!279564 (MissingVacant!6359 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37336 (_ BitVec 32)) SeekEntryResult!6359)

(assert (=> b!610984 (= lt!279564 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!610985 () Bool)

(assert (=> b!610985 (= e!350071 (not e!350081))))

(declare-fun res!393076 () Bool)

(assert (=> b!610985 (=> res!393076 e!350081)))

(declare-fun lt!279571 () SeekEntryResult!6359)

(assert (=> b!610985 (= res!393076 (not (= lt!279571 (Found!6359 index!984))))))

(declare-fun lt!279558 () Unit!19582)

(assert (=> b!610985 (= lt!279558 e!350082)))

(declare-fun c!69314 () Bool)

(assert (=> b!610985 (= c!69314 (= lt!279571 Undefined!6359))))

(assert (=> b!610985 (= lt!279571 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!279557 lt!279562 mask!3053))))

(assert (=> b!610985 e!350076))

(declare-fun res!393089 () Bool)

(assert (=> b!610985 (=> (not res!393089) (not e!350076))))

(declare-fun lt!279560 () (_ BitVec 32))

(assert (=> b!610985 (= res!393089 (= lt!279559 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!279560 vacantSpotIndex!68 lt!279557 lt!279562 mask!3053)))))

(assert (=> b!610985 (= lt!279559 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!279560 vacantSpotIndex!68 (select (arr!17912 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!610985 (= lt!279557 (select (store (arr!17912 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!279570 () Unit!19582)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37336 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19582)

(assert (=> b!610985 (= lt!279570 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!279560 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!610985 (= lt!279560 (nextIndex!0 index!984 x!910 mask!3053))))

(assert (= (and start!55810 res!393077) b!610971))

(assert (= (and b!610971 res!393078) b!610961))

(assert (= (and b!610961 res!393068) b!610970))

(assert (= (and b!610970 res!393070) b!610963))

(assert (= (and b!610963 res!393085) b!610984))

(assert (= (and b!610984 res!393081) b!610972))

(assert (= (and b!610972 res!393083) b!610962))

(assert (= (and b!610962 res!393074) b!610968))

(assert (= (and b!610968 res!393071) b!610977))

(assert (= (and b!610977 res!393080) b!610967))

(assert (= (and b!610967 res!393086) b!610985))

(assert (= (and b!610985 res!393089) b!610975))

(assert (= (and b!610985 c!69314) b!610964))

(assert (= (and b!610985 (not c!69314)) b!610960))

(assert (= (and b!610985 (not res!393076)) b!610978))

(assert (= (and b!610978 res!393088) b!610983))

(assert (= (and b!610983 (not res!393079)) b!610973))

(assert (= (and b!610973 res!393087) b!610965))

(assert (= (and b!610978 (not res!393073)) b!610980))

(assert (= (and b!610980 c!69313) b!610966))

(assert (= (and b!610980 (not c!69313)) b!610969))

(assert (= (and b!610980 (not res!393084)) b!610979))

(assert (= (and b!610979 res!393082) b!610976))

(assert (= (and b!610979 (not res!393069)) b!610982))

(assert (= (and b!610982 (not res!393072)) b!610974))

(assert (= (and b!610974 res!393075) b!610981))

(declare-fun m!587423 () Bool)

(assert (=> b!610968 m!587423))

(declare-fun m!587425 () Bool)

(assert (=> b!610967 m!587425))

(declare-fun m!587427 () Bool)

(assert (=> b!610967 m!587427))

(assert (=> b!610967 m!587427))

(declare-fun m!587429 () Bool)

(assert (=> b!610967 m!587429))

(declare-fun m!587431 () Bool)

(assert (=> b!610972 m!587431))

(assert (=> b!610966 m!587427))

(assert (=> b!610966 m!587427))

(declare-fun m!587433 () Bool)

(assert (=> b!610966 m!587433))

(declare-fun m!587435 () Bool)

(assert (=> b!610966 m!587435))

(assert (=> b!610966 m!587427))

(declare-fun m!587437 () Bool)

(assert (=> b!610966 m!587437))

(declare-fun m!587439 () Bool)

(assert (=> b!610966 m!587439))

(declare-fun m!587441 () Bool)

(assert (=> b!610966 m!587441))

(assert (=> b!610966 m!587427))

(declare-fun m!587443 () Bool)

(assert (=> b!610966 m!587443))

(declare-fun m!587445 () Bool)

(assert (=> b!610966 m!587445))

(assert (=> b!610973 m!587427))

(assert (=> b!610973 m!587427))

(declare-fun m!587447 () Bool)

(assert (=> b!610973 m!587447))

(assert (=> b!610965 m!587427))

(assert (=> b!610965 m!587427))

(declare-fun m!587449 () Bool)

(assert (=> b!610965 m!587449))

(assert (=> b!610979 m!587427))

(declare-fun m!587451 () Bool)

(assert (=> b!610979 m!587451))

(assert (=> b!610979 m!587427))

(assert (=> b!610979 m!587427))

(assert (=> b!610979 m!587447))

(assert (=> b!610979 m!587441))

(assert (=> b!610979 m!587427))

(declare-fun m!587453 () Bool)

(assert (=> b!610979 m!587453))

(assert (=> b!610979 m!587439))

(declare-fun m!587455 () Bool)

(assert (=> b!610963 m!587455))

(declare-fun m!587457 () Bool)

(assert (=> b!610974 m!587457))

(assert (=> b!610976 m!587427))

(assert (=> b!610976 m!587427))

(assert (=> b!610976 m!587449))

(declare-fun m!587459 () Bool)

(assert (=> b!610962 m!587459))

(declare-fun m!587461 () Bool)

(assert (=> b!610970 m!587461))

(declare-fun m!587463 () Bool)

(assert (=> b!610985 m!587463))

(declare-fun m!587465 () Bool)

(assert (=> b!610985 m!587465))

(declare-fun m!587467 () Bool)

(assert (=> b!610985 m!587467))

(assert (=> b!610985 m!587427))

(declare-fun m!587469 () Bool)

(assert (=> b!610985 m!587469))

(declare-fun m!587471 () Bool)

(assert (=> b!610985 m!587471))

(assert (=> b!610985 m!587427))

(declare-fun m!587473 () Bool)

(assert (=> b!610985 m!587473))

(declare-fun m!587475 () Bool)

(assert (=> b!610985 m!587475))

(assert (=> b!610983 m!587427))

(assert (=> b!610961 m!587427))

(assert (=> b!610961 m!587427))

(declare-fun m!587477 () Bool)

(assert (=> b!610961 m!587477))

(declare-fun m!587479 () Bool)

(assert (=> b!610981 m!587479))

(declare-fun m!587481 () Bool)

(assert (=> b!610984 m!587481))

(declare-fun m!587483 () Bool)

(assert (=> b!610982 m!587483))

(declare-fun m!587485 () Bool)

(assert (=> start!55810 m!587485))

(declare-fun m!587487 () Bool)

(assert (=> start!55810 m!587487))

(assert (=> b!610978 m!587427))

(assert (=> b!610978 m!587475))

(declare-fun m!587489 () Bool)

(assert (=> b!610978 m!587489))

(assert (=> b!610977 m!587475))

(declare-fun m!587491 () Bool)

(assert (=> b!610977 m!587491))

(push 1)

(assert (not start!55810))

(assert (not b!610985))

(assert (not b!610966))

(assert (not b!610984))

(assert (not b!610982))

(assert (not b!610965))

(assert (not b!610972))

(assert (not b!610967))

(assert (not b!610976))

(assert (not b!610961))

(assert (not b!610970))

(assert (not b!610973))

(assert (not b!610963))

(assert (not b!610981))

(assert (not b!610962))

(assert (not b!610974))

(assert (not b!610979))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!88295 () Bool)

(declare-fun lt!279598 () Bool)

(declare-fun content!240 (List!12006) (Set (_ BitVec 64)))

(assert (=> d!88295 (= lt!279598 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!240 Nil!12003)))))

(declare-fun e!350127 () Bool)

(assert (=> d!88295 (= lt!279598 e!350127)))

(declare-fun res!393120 () Bool)

(assert (=> d!88295 (=> (not res!393120) (not e!350127))))

(assert (=> d!88295 (= res!393120 (is-Cons!12002 Nil!12003))))

(assert (=> d!88295 (= (contains!3048 Nil!12003 #b1000000000000000000000000000000000000000000000000000000000000000) lt!279598)))

(declare-fun b!611041 () Bool)

(declare-fun e!350126 () Bool)

(assert (=> b!611041 (= e!350127 e!350126)))

(declare-fun res!393119 () Bool)

(assert (=> b!611041 (=> res!393119 e!350126)))

(assert (=> b!611041 (= res!393119 (= (h!13047 Nil!12003) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!611042 () Bool)

(assert (=> b!611042 (= e!350126 (contains!3048 (t!18242 Nil!12003) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!88295 res!393120) b!611041))

(assert (= (and b!611041 (not res!393119)) b!611042))

(declare-fun m!587545 () Bool)

(assert (=> d!88295 m!587545))

(declare-fun m!587547 () Bool)

(assert (=> d!88295 m!587547))

(declare-fun m!587549 () Bool)

(assert (=> b!611042 m!587549))

(assert (=> b!610981 d!88295))

(declare-fun d!88299 () Bool)

(assert (=> d!88299 (= (validKeyInArray!0 k!1786) (and (not (= k!1786 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1786 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!610970 d!88299))

(declare-fun b!611087 () Bool)

(declare-fun e!350160 () Bool)

(declare-fun e!350159 () Bool)

(assert (=> b!611087 (= e!350160 e!350159)))

(declare-fun c!69342 () Bool)

(assert (=> b!611087 (= c!69342 (validKeyInArray!0 (select (arr!17912 a!2986) #b00000000000000000000000000000000)))))

(declare-fun bm!33156 () Bool)

(declare-fun call!33159 () Bool)

(assert (=> bm!33156 (= call!33159 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2986 mask!3053))))

(declare-fun d!88301 () Bool)

(declare-fun res!393138 () Bool)

(assert (=> d!88301 (=> res!393138 e!350160)))

(assert (=> d!88301 (= res!393138 (bvsge #b00000000000000000000000000000000 (size!18276 a!2986)))))

(assert (=> d!88301 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053) e!350160)))

(declare-fun b!611088 () Bool)

(declare-fun e!350158 () Bool)

(assert (=> b!611088 (= e!350158 call!33159)))

(declare-fun b!611089 () Bool)

(assert (=> b!611089 (= e!350159 call!33159)))

(declare-fun b!611090 () Bool)

(assert (=> b!611090 (= e!350159 e!350158)))

(declare-fun lt!279617 () (_ BitVec 64))

(assert (=> b!611090 (= lt!279617 (select (arr!17912 a!2986) #b00000000000000000000000000000000))))

(declare-fun lt!279616 () Unit!19582)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!37336 (_ BitVec 64) (_ BitVec 32)) Unit!19582)

(assert (=> b!611090 (= lt!279616 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2986 lt!279617 #b00000000000000000000000000000000))))

(assert (=> b!611090 (arrayContainsKey!0 a!2986 lt!279617 #b00000000000000000000000000000000)))

(declare-fun lt!279618 () Unit!19582)

(assert (=> b!611090 (= lt!279618 lt!279616)))

(declare-fun res!393137 () Bool)

(assert (=> b!611090 (= res!393137 (= (seekEntryOrOpen!0 (select (arr!17912 a!2986) #b00000000000000000000000000000000) a!2986 mask!3053) (Found!6359 #b00000000000000000000000000000000)))))

(assert (=> b!611090 (=> (not res!393137) (not e!350158))))

(assert (= (and d!88301 (not res!393138)) b!611087))

(assert (= (and b!611087 c!69342) b!611090))

(assert (= (and b!611087 (not c!69342)) b!611089))

(assert (= (and b!611090 res!393137) b!611088))

(assert (= (or b!611088 b!611089) bm!33156))

(declare-fun m!587575 () Bool)

(assert (=> b!611087 m!587575))

(assert (=> b!611087 m!587575))

(declare-fun m!587577 () Bool)

(assert (=> b!611087 m!587577))

(declare-fun m!587579 () Bool)

(assert (=> bm!33156 m!587579))

(assert (=> b!611090 m!587575))

(declare-fun m!587581 () Bool)

(assert (=> b!611090 m!587581))

(declare-fun m!587583 () Bool)

(assert (=> b!611090 m!587583))

(assert (=> b!611090 m!587575))

(declare-fun m!587585 () Bool)

(assert (=> b!611090 m!587585))

(assert (=> b!610972 d!88301))

(declare-fun d!88315 () Bool)

(assert (=> d!88315 (= (validKeyInArray!0 (select (arr!17912 a!2986) j!136)) (and (not (= (select (arr!17912 a!2986) j!136) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!17912 a!2986) j!136) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!610961 d!88315))

(declare-fun d!88317 () Bool)

(declare-fun res!393143 () Bool)

(declare-fun e!350165 () Bool)

(assert (=> d!88317 (=> res!393143 e!350165)))

(assert (=> d!88317 (= res!393143 (is-Nil!12003 Nil!12003))))

(assert (=> d!88317 (= (noDuplicate!348 Nil!12003) e!350165)))

(declare-fun b!611095 () Bool)

(declare-fun e!350166 () Bool)

(assert (=> b!611095 (= e!350165 e!350166)))

(declare-fun res!393144 () Bool)

(assert (=> b!611095 (=> (not res!393144) (not e!350166))))

(assert (=> b!611095 (= res!393144 (not (contains!3048 (t!18242 Nil!12003) (h!13047 Nil!12003))))))

(declare-fun b!611096 () Bool)

(assert (=> b!611096 (= e!350166 (noDuplicate!348 (t!18242 Nil!12003)))))

(assert (= (and d!88317 (not res!393143)) b!611095))

(assert (= (and b!611095 res!393144) b!611096))

(declare-fun m!587587 () Bool)

(assert (=> b!611095 m!587587))

(declare-fun m!587589 () Bool)

(assert (=> b!611096 m!587589))

(assert (=> b!610982 d!88317))

(declare-fun b!611154 () Bool)

(declare-fun e!350198 () SeekEntryResult!6359)

(assert (=> b!611154 (= e!350198 (MissingVacant!6359 vacantSpotIndex!68))))

(declare-fun b!611155 () Bool)

(declare-fun e!350199 () SeekEntryResult!6359)

(assert (=> b!611155 (= e!350199 (Found!6359 index!984))))

(declare-fun d!88319 () Bool)

(declare-fun lt!279646 () SeekEntryResult!6359)

(assert (=> d!88319 (and (or (is-Undefined!6359 lt!279646) (not (is-Found!6359 lt!279646)) (and (bvsge (index!27717 lt!279646) #b00000000000000000000000000000000) (bvslt (index!27717 lt!279646) (size!18276 a!2986)))) (or (is-Undefined!6359 lt!279646) (is-Found!6359 lt!279646) (not (is-MissingVacant!6359 lt!279646)) (not (= (index!27719 lt!279646) vacantSpotIndex!68)) (and (bvsge (index!27719 lt!279646) #b00000000000000000000000000000000) (bvslt (index!27719 lt!279646) (size!18276 a!2986)))) (or (is-Undefined!6359 lt!279646) (ite (is-Found!6359 lt!279646) (= (select (arr!17912 a!2986) (index!27717 lt!279646)) (select (arr!17912 a!2986) j!136)) (and (is-MissingVacant!6359 lt!279646) (= (index!27719 lt!279646) vacantSpotIndex!68) (= (select (arr!17912 a!2986) (index!27719 lt!279646)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!350197 () SeekEntryResult!6359)

(assert (=> d!88319 (= lt!279646 e!350197)))

(declare-fun c!69371 () Bool)

(assert (=> d!88319 (= c!69371 (bvsge x!910 #b01111111111111111111111111111110))))

(declare-fun lt!279647 () (_ BitVec 64))

(assert (=> d!88319 (= lt!279647 (select (arr!17912 a!2986) index!984))))

(assert (=> d!88319 (validMask!0 mask!3053)))

(assert (=> d!88319 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17912 a!2986) j!136) a!2986 mask!3053) lt!279646)))

(declare-fun b!611156 () Bool)

(assert (=> b!611156 (= e!350197 Undefined!6359)))

(declare-fun b!611157 () Bool)

(assert (=> b!611157 (= e!350198 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 (select (arr!17912 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!611158 () Bool)

(assert (=> b!611158 (= e!350197 e!350199)))

(declare-fun c!69372 () Bool)

(assert (=> b!611158 (= c!69372 (= lt!279647 (select (arr!17912 a!2986) j!136)))))

(declare-fun b!611159 () Bool)

(declare-fun c!69370 () Bool)

(assert (=> b!611159 (= c!69370 (= lt!279647 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!611159 (= e!350199 e!350198)))

(assert (= (and d!88319 c!69371) b!611156))

(assert (= (and d!88319 (not c!69371)) b!611158))

(assert (= (and b!611158 c!69372) b!611155))

(assert (= (and b!611158 (not c!69372)) b!611159))

(assert (= (and b!611159 c!69370) b!611154))

(assert (= (and b!611159 (not c!69370)) b!611157))

(declare-fun m!587643 () Bool)

(assert (=> d!88319 m!587643))

(declare-fun m!587645 () Bool)

(assert (=> d!88319 m!587645))

(assert (=> d!88319 m!587425))

(assert (=> d!88319 m!587485))

(assert (=> b!611157 m!587463))

(assert (=> b!611157 m!587463))

(assert (=> b!611157 m!587427))

(declare-fun m!587647 () Bool)

(assert (=> b!611157 m!587647))

(assert (=> b!610967 d!88319))

(declare-fun d!88337 () Bool)

(assert (=> d!88337 (= (validMask!0 mask!3053) (and (or (= mask!3053 #b00000000000000000000000000000111) (= mask!3053 #b00000000000000000000000000001111) (= mask!3053 #b00000000000000000000000000011111) (= mask!3053 #b00000000000000000000000000111111) (= mask!3053 #b00000000000000000000000001111111) (= mask!3053 #b00000000000000000000000011111111) (= mask!3053 #b00000000000000000000000111111111) (= mask!3053 #b00000000000000000000001111111111) (= mask!3053 #b00000000000000000000011111111111) (= mask!3053 #b00000000000000000000111111111111) (= mask!3053 #b00000000000000000001111111111111) (= mask!3053 #b00000000000000000011111111111111) (= mask!3053 #b00000000000000000111111111111111) (= mask!3053 #b00000000000000001111111111111111) (= mask!3053 #b00000000000000011111111111111111) (= mask!3053 #b00000000000000111111111111111111) (= mask!3053 #b00000000000001111111111111111111) (= mask!3053 #b00000000000011111111111111111111) (= mask!3053 #b00000000000111111111111111111111) (= mask!3053 #b00000000001111111111111111111111) (= mask!3053 #b00000000011111111111111111111111) (= mask!3053 #b00000000111111111111111111111111) (= mask!3053 #b00000001111111111111111111111111) (= mask!3053 #b00000011111111111111111111111111) (= mask!3053 #b00000111111111111111111111111111) (= mask!3053 #b00001111111111111111111111111111) (= mask!3053 #b00011111111111111111111111111111) (= mask!3053 #b00111111111111111111111111111111)) (bvsle mask!3053 #b00111111111111111111111111111111)))))

(assert (=> start!55810 d!88337))

(declare-fun d!88345 () Bool)

(assert (=> d!88345 (= (array_inv!13686 a!2986) (bvsge (size!18276 a!2986) #b00000000000000000000000000000000))))

(assert (=> start!55810 d!88345))

(declare-fun d!88349 () Bool)

(assert (=> d!88349 (arrayContainsKey!0 lt!279562 (select (arr!17912 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!279656 () Unit!19582)

(declare-fun choose!114 (array!37336 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19582)

(assert (=> d!88349 (= lt!279656 (choose!114 lt!279562 (select (arr!17912 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> d!88349 (bvsge j!136 #b00000000000000000000000000000000)))

(assert (=> d!88349 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!279562 (select (arr!17912 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)) lt!279656)))

(declare-fun bs!18647 () Bool)

(assert (= bs!18647 d!88349))

(assert (=> bs!18647 m!587427))

(assert (=> bs!18647 m!587453))

(assert (=> bs!18647 m!587427))

(declare-fun m!587671 () Bool)

(assert (=> bs!18647 m!587671))

(assert (=> b!610979 d!88349))

(declare-fun b!611221 () Bool)

(declare-fun e!350254 () Bool)

(declare-fun e!350253 () Bool)

(assert (=> b!611221 (= e!350254 e!350253)))

(declare-fun c!69382 () Bool)

(assert (=> b!611221 (= c!69382 (validKeyInArray!0 (select (arr!17912 lt!279562) #b00000000000000000000000000000000)))))

(declare-fun d!88355 () Bool)

(declare-fun res!393192 () Bool)

(declare-fun e!350252 () Bool)

(assert (=> d!88355 (=> res!393192 e!350252)))

(assert (=> d!88355 (= res!393192 (bvsge #b00000000000000000000000000000000 (size!18276 lt!279562)))))

(assert (=> d!88355 (= (arrayNoDuplicates!0 lt!279562 #b00000000000000000000000000000000 Nil!12003) e!350252)))

(declare-fun b!611222 () Bool)

(declare-fun call!33166 () Bool)

(assert (=> b!611222 (= e!350253 call!33166)))

(declare-fun bm!33163 () Bool)

(assert (=> bm!33163 (= call!33166 (arrayNoDuplicates!0 lt!279562 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!69382 (Cons!12002 (select (arr!17912 lt!279562) #b00000000000000000000000000000000) Nil!12003) Nil!12003)))))

(declare-fun b!611223 () Bool)

(declare-fun e!350255 () Bool)

(assert (=> b!611223 (= e!350255 (contains!3048 Nil!12003 (select (arr!17912 lt!279562) #b00000000000000000000000000000000)))))

(declare-fun b!611224 () Bool)

(assert (=> b!611224 (= e!350252 e!350254)))

(declare-fun res!393193 () Bool)

(assert (=> b!611224 (=> (not res!393193) (not e!350254))))

(assert (=> b!611224 (= res!393193 (not e!350255))))

(declare-fun res!393191 () Bool)

(assert (=> b!611224 (=> (not res!393191) (not e!350255))))

(assert (=> b!611224 (= res!393191 (validKeyInArray!0 (select (arr!17912 lt!279562) #b00000000000000000000000000000000)))))

(declare-fun b!611225 () Bool)

(assert (=> b!611225 (= e!350253 call!33166)))

(assert (= (and d!88355 (not res!393192)) b!611224))

(assert (= (and b!611224 res!393191) b!611223))

(assert (= (and b!611224 res!393193) b!611221))

(assert (= (and b!611221 c!69382) b!611225))

(assert (= (and b!611221 (not c!69382)) b!611222))

(assert (= (or b!611225 b!611222) bm!33163))

(declare-fun m!587697 () Bool)

(assert (=> b!611221 m!587697))

(assert (=> b!611221 m!587697))

(declare-fun m!587701 () Bool)

(assert (=> b!611221 m!587701))

(assert (=> bm!33163 m!587697))

(declare-fun m!587703 () Bool)

(assert (=> bm!33163 m!587703))

(assert (=> b!611223 m!587697))

(assert (=> b!611223 m!587697))

(declare-fun m!587705 () Bool)

(assert (=> b!611223 m!587705))

(assert (=> b!611224 m!587697))

(assert (=> b!611224 m!587697))

(assert (=> b!611224 m!587701))

(assert (=> b!610979 d!88355))

(declare-fun d!88373 () Bool)

(declare-fun e!350264 () Bool)

(assert (=> d!88373 e!350264))

(declare-fun res!393200 () Bool)

(assert (=> d!88373 (=> (not res!393200) (not e!350264))))

(assert (=> d!88373 (= res!393200 (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18276 a!2986))))))

(declare-fun lt!279668 () Unit!19582)

(declare-fun choose!41 (array!37336 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12006) Unit!19582)

(assert (=> d!88373 (= lt!279668 (choose!41 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12003))))

(assert (=> d!88373 (bvslt (size!18276 a!2986) #b01111111111111111111111111111111)))

(assert (=> d!88373 (= (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12003) lt!279668)))

(declare-fun b!611236 () Bool)

(assert (=> b!611236 (= e!350264 (arrayNoDuplicates!0 (array!37337 (store (arr!17912 a!2986) i!1108 k!1786) (size!18276 a!2986)) #b00000000000000000000000000000000 Nil!12003))))

(assert (= (and d!88373 res!393200) b!611236))

(declare-fun m!587707 () Bool)

(assert (=> d!88373 m!587707))

(assert (=> b!611236 m!587475))

(declare-fun m!587709 () Bool)

(assert (=> b!611236 m!587709))

(assert (=> b!610979 d!88373))

(declare-fun d!88375 () Bool)

(declare-fun res!393207 () Bool)

(declare-fun e!350272 () Bool)

(assert (=> d!88375 (=> res!393207 e!350272)))

(assert (=> d!88375 (= res!393207 (= (select (arr!17912 lt!279562) (bvadd #b00000000000000000000000000000001 index!984)) (select (arr!17912 a!2986) j!136)))))

(assert (=> d!88375 (= (arrayContainsKey!0 lt!279562 (select (arr!17912 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984)) e!350272)))

(declare-fun b!611245 () Bool)

(declare-fun e!350273 () Bool)

(assert (=> b!611245 (= e!350272 e!350273)))

(declare-fun res!393208 () Bool)

(assert (=> b!611245 (=> (not res!393208) (not e!350273))))

(assert (=> b!611245 (= res!393208 (bvslt (bvadd #b00000000000000000000000000000001 index!984 #b00000000000000000000000000000001) (size!18276 lt!279562)))))

(declare-fun b!611246 () Bool)

(assert (=> b!611246 (= e!350273 (arrayContainsKey!0 lt!279562 (select (arr!17912 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!88375 (not res!393207)) b!611245))

(assert (= (and b!611245 res!393208) b!611246))

(declare-fun m!587719 () Bool)

(assert (=> d!88375 m!587719))

(assert (=> b!611246 m!587427))

(declare-fun m!587721 () Bool)

(assert (=> b!611246 m!587721))

(assert (=> b!610979 d!88375))

(declare-fun d!88377 () Bool)

(declare-fun res!393209 () Bool)

(declare-fun e!350274 () Bool)

(assert (=> d!88377 (=> res!393209 e!350274)))

(assert (=> d!88377 (= res!393209 (= (select (arr!17912 lt!279562) j!136) (select (arr!17912 a!2986) j!136)))))

(assert (=> d!88377 (= (arrayContainsKey!0 lt!279562 (select (arr!17912 a!2986) j!136) j!136) e!350274)))

(declare-fun b!611247 () Bool)

(declare-fun e!350275 () Bool)

(assert (=> b!611247 (= e!350274 e!350275)))

(declare-fun res!393210 () Bool)

(assert (=> b!611247 (=> (not res!393210) (not e!350275))))

(assert (=> b!611247 (= res!393210 (bvslt (bvadd j!136 #b00000000000000000000000000000001) (size!18276 lt!279562)))))

(declare-fun b!611248 () Bool)

(assert (=> b!611248 (= e!350275 (arrayContainsKey!0 lt!279562 (select (arr!17912 a!2986) j!136) (bvadd j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!88377 (not res!393209)) b!611247))

(assert (= (and b!611247 res!393210) b!611248))

(declare-fun m!587723 () Bool)

(assert (=> d!88377 m!587723))

(assert (=> b!611248 m!587427))

(declare-fun m!587725 () Bool)

(assert (=> b!611248 m!587725))

(assert (=> b!610979 d!88377))

(declare-fun d!88379 () Bool)

(declare-fun res!393211 () Bool)

(declare-fun e!350276 () Bool)

(assert (=> d!88379 (=> res!393211 e!350276)))

(assert (=> d!88379 (= res!393211 (= (select (arr!17912 lt!279562) index!984) (select (arr!17912 a!2986) j!136)))))

(assert (=> d!88379 (= (arrayContainsKey!0 lt!279562 (select (arr!17912 a!2986) j!136) index!984) e!350276)))

(declare-fun b!611249 () Bool)

(declare-fun e!350277 () Bool)

(assert (=> b!611249 (= e!350276 e!350277)))

(declare-fun res!393212 () Bool)

(assert (=> b!611249 (=> (not res!393212) (not e!350277))))

(assert (=> b!611249 (= res!393212 (bvslt (bvadd index!984 #b00000000000000000000000000000001) (size!18276 lt!279562)))))

(declare-fun b!611250 () Bool)

(assert (=> b!611250 (= e!350277 (arrayContainsKey!0 lt!279562 (select (arr!17912 a!2986) j!136) (bvadd index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!88379 (not res!393211)) b!611249))

(assert (= (and b!611249 res!393212) b!611250))

(declare-fun m!587727 () Bool)

(assert (=> d!88379 m!587727))

(assert (=> b!611250 m!587427))

(declare-fun m!587729 () Bool)

(assert (=> b!611250 m!587729))

(assert (=> b!610976 d!88379))

(assert (=> b!610965 d!88379))

(declare-fun b!611251 () Bool)

(declare-fun e!350280 () Bool)

(declare-fun e!350279 () Bool)

(assert (=> b!611251 (= e!350280 e!350279)))

(declare-fun c!69386 () Bool)

(assert (=> b!611251 (= c!69386 (validKeyInArray!0 (select (arr!17912 lt!279562) j!136)))))

(declare-fun d!88381 () Bool)

(declare-fun res!393214 () Bool)

(declare-fun e!350278 () Bool)

(assert (=> d!88381 (=> res!393214 e!350278)))

(assert (=> d!88381 (= res!393214 (bvsge j!136 (size!18276 lt!279562)))))

(assert (=> d!88381 (= (arrayNoDuplicates!0 lt!279562 j!136 Nil!12003) e!350278)))

(declare-fun b!611252 () Bool)

(declare-fun call!33170 () Bool)

(assert (=> b!611252 (= e!350279 call!33170)))

(declare-fun bm!33167 () Bool)

(assert (=> bm!33167 (= call!33170 (arrayNoDuplicates!0 lt!279562 (bvadd j!136 #b00000000000000000000000000000001) (ite c!69386 (Cons!12002 (select (arr!17912 lt!279562) j!136) Nil!12003) Nil!12003)))))

(declare-fun b!611253 () Bool)

(declare-fun e!350281 () Bool)

(assert (=> b!611253 (= e!350281 (contains!3048 Nil!12003 (select (arr!17912 lt!279562) j!136)))))

(declare-fun b!611254 () Bool)

(assert (=> b!611254 (= e!350278 e!350280)))

(declare-fun res!393215 () Bool)

(assert (=> b!611254 (=> (not res!393215) (not e!350280))))

(assert (=> b!611254 (= res!393215 (not e!350281))))

(declare-fun res!393213 () Bool)

(assert (=> b!611254 (=> (not res!393213) (not e!350281))))

(assert (=> b!611254 (= res!393213 (validKeyInArray!0 (select (arr!17912 lt!279562) j!136)))))

(declare-fun b!611255 () Bool)

(assert (=> b!611255 (= e!350279 call!33170)))

(assert (= (and d!88381 (not res!393214)) b!611254))

(assert (= (and b!611254 res!393213) b!611253))

(assert (= (and b!611254 res!393215) b!611251))

(assert (= (and b!611251 c!69386) b!611255))

(assert (= (and b!611251 (not c!69386)) b!611252))

(assert (= (or b!611255 b!611252) bm!33167))

(assert (=> b!611251 m!587723))

(assert (=> b!611251 m!587723))

(declare-fun m!587731 () Bool)

(assert (=> b!611251 m!587731))

(assert (=> bm!33167 m!587723))

(declare-fun m!587733 () Bool)

(assert (=> bm!33167 m!587733))

(assert (=> b!611253 m!587723))

(assert (=> b!611253 m!587723))

(declare-fun m!587735 () Bool)

(assert (=> b!611253 m!587735))

(assert (=> b!611254 m!587723))

(assert (=> b!611254 m!587723))

(assert (=> b!611254 m!587731))

(assert (=> b!610966 d!88381))

(declare-fun d!88383 () Bool)

(assert (=> d!88383 (arrayContainsKey!0 lt!279562 (select (arr!17912 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!279672 () Unit!19582)

(assert (=> d!88383 (= lt!279672 (choose!114 lt!279562 (select (arr!17912 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> d!88383 (bvsge index!984 #b00000000000000000000000000000000)))

(assert (=> d!88383 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!279562 (select (arr!17912 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)) lt!279672)))

(declare-fun bs!18648 () Bool)

(assert (= bs!18648 d!88383))

(assert (=> bs!18648 m!587427))

(assert (=> bs!18648 m!587433))

(assert (=> bs!18648 m!587427))

(declare-fun m!587737 () Bool)

(assert (=> bs!18648 m!587737))

(assert (=> b!610966 d!88383))

(declare-fun d!88385 () Bool)

(assert (=> d!88385 (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18276 lt!279562)) (not (= (select (arr!17912 lt!279562) j!136) (select (arr!17912 a!2986) j!136))))))

(declare-fun lt!279675 () Unit!19582)

(declare-fun choose!21 (array!37336 (_ BitVec 64) (_ BitVec 32) List!12006) Unit!19582)

(assert (=> d!88385 (= lt!279675 (choose!21 lt!279562 (select (arr!17912 a!2986) j!136) j!136 Nil!12003))))

(assert (=> d!88385 (bvslt (size!18276 lt!279562) #b01111111111111111111111111111111)))

(assert (=> d!88385 (= (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!279562 (select (arr!17912 a!2986) j!136) j!136 Nil!12003) lt!279675)))

(declare-fun bs!18649 () Bool)

(assert (= bs!18649 d!88385))

(assert (=> bs!18649 m!587723))

(assert (=> bs!18649 m!587427))

(declare-fun m!587739 () Bool)

(assert (=> bs!18649 m!587739))

(assert (=> b!610966 d!88385))

(declare-fun d!88387 () Bool)

(declare-fun res!393216 () Bool)

(declare-fun e!350282 () Bool)

(assert (=> d!88387 (=> res!393216 e!350282)))

(assert (=> d!88387 (= res!393216 (= (select (arr!17912 lt!279562) (bvadd #b00000000000000000000000000000001 j!136)) (select (arr!17912 a!2986) j!136)))))

(assert (=> d!88387 (= (arrayContainsKey!0 lt!279562 (select (arr!17912 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136)) e!350282)))

(declare-fun b!611256 () Bool)

(declare-fun e!350283 () Bool)

(assert (=> b!611256 (= e!350282 e!350283)))

(declare-fun res!393217 () Bool)

(assert (=> b!611256 (=> (not res!393217) (not e!350283))))

(assert (=> b!611256 (= res!393217 (bvslt (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001) (size!18276 lt!279562)))))

(declare-fun b!611257 () Bool)

(assert (=> b!611257 (= e!350283 (arrayContainsKey!0 lt!279562 (select (arr!17912 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!88387 (not res!393216)) b!611256))

(assert (= (and b!611256 res!393217) b!611257))

(declare-fun m!587741 () Bool)

(assert (=> d!88387 m!587741))

(assert (=> b!611257 m!587427))

(declare-fun m!587743 () Bool)

(assert (=> b!611257 m!587743))

(assert (=> b!610966 d!88387))

(declare-fun d!88389 () Bool)

(assert (=> d!88389 (arrayNoDuplicates!0 lt!279562 j!136 Nil!12003)))

(declare-fun lt!279684 () Unit!19582)

(declare-fun choose!39 (array!37336 (_ BitVec 32) (_ BitVec 32)) Unit!19582)

(assert (=> d!88389 (= lt!279684 (choose!39 lt!279562 #b00000000000000000000000000000000 j!136))))

(assert (=> d!88389 (bvslt (size!18276 lt!279562) #b01111111111111111111111111111111)))

(assert (=> d!88389 (= (lemmaNoDuplicateFromThenFromBigger!0 lt!279562 #b00000000000000000000000000000000 j!136) lt!279684)))

(declare-fun bs!18650 () Bool)

(assert (= bs!18650 d!88389))

(assert (=> bs!18650 m!587445))

(declare-fun m!587745 () Bool)

(assert (=> bs!18650 m!587745))

(assert (=> b!610966 d!88389))

(assert (=> b!610966 d!88355))

(assert (=> b!610966 d!88373))

(declare-fun lt!279708 () SeekEntryResult!6359)

(declare-fun b!611300 () Bool)

(declare-fun e!350311 () SeekEntryResult!6359)

(assert (=> b!611300 (= e!350311 (seekKeyOrZeroReturnVacant!0 (x!56551 lt!279708) (index!27718 lt!279708) (index!27718 lt!279708) k!1786 a!2986 mask!3053))))

(declare-fun b!611301 () Bool)

(declare-fun e!350312 () SeekEntryResult!6359)

(assert (=> b!611301 (= e!350312 Undefined!6359)))

(declare-fun b!611302 () Bool)

(declare-fun e!350313 () SeekEntryResult!6359)

(assert (=> b!611302 (= e!350313 (Found!6359 (index!27718 lt!279708)))))

(declare-fun b!611303 () Bool)

(declare-fun c!69404 () Bool)

(declare-fun lt!279706 () (_ BitVec 64))

(assert (=> b!611303 (= c!69404 (= lt!279706 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!611303 (= e!350313 e!350311)))

(declare-fun d!88391 () Bool)

(declare-fun lt!279707 () SeekEntryResult!6359)

(assert (=> d!88391 (and (or (is-Undefined!6359 lt!279707) (not (is-Found!6359 lt!279707)) (and (bvsge (index!27717 lt!279707) #b00000000000000000000000000000000) (bvslt (index!27717 lt!279707) (size!18276 a!2986)))) (or (is-Undefined!6359 lt!279707) (is-Found!6359 lt!279707) (not (is-MissingZero!6359 lt!279707)) (and (bvsge (index!27716 lt!279707) #b00000000000000000000000000000000) (bvslt (index!27716 lt!279707) (size!18276 a!2986)))) (or (is-Undefined!6359 lt!279707) (is-Found!6359 lt!279707) (is-MissingZero!6359 lt!279707) (not (is-MissingVacant!6359 lt!279707)) (and (bvsge (index!27719 lt!279707) #b00000000000000000000000000000000) (bvslt (index!27719 lt!279707) (size!18276 a!2986)))) (or (is-Undefined!6359 lt!279707) (ite (is-Found!6359 lt!279707) (= (select (arr!17912 a!2986) (index!27717 lt!279707)) k!1786) (ite (is-MissingZero!6359 lt!279707) (= (select (arr!17912 a!2986) (index!27716 lt!279707)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!6359 lt!279707) (= (select (arr!17912 a!2986) (index!27719 lt!279707)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!88391 (= lt!279707 e!350312)))

(declare-fun c!69402 () Bool)

(assert (=> d!88391 (= c!69402 (and (is-Intermediate!6359 lt!279708) (undefined!7171 lt!279708)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37336 (_ BitVec 32)) SeekEntryResult!6359)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!88391 (= lt!279708 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1786 mask!3053) k!1786 a!2986 mask!3053))))

