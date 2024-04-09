; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59230 () Bool)

(assert start!59230)

(declare-fun b!653095 () Bool)

(declare-fun e!374951 () Bool)

(declare-fun e!374957 () Bool)

(assert (=> b!653095 (= e!374951 (not e!374957))))

(declare-fun res!423643 () Bool)

(assert (=> b!653095 (=> res!423643 e!374957)))

(declare-datatypes ((SeekEntryResult!6944 0))(
  ( (MissingZero!6944 (index!30131 (_ BitVec 32))) (Found!6944 (index!30132 (_ BitVec 32))) (Intermediate!6944 (undefined!7756 Bool) (index!30133 (_ BitVec 32)) (x!58945 (_ BitVec 32))) (Undefined!6944) (MissingVacant!6944 (index!30134 (_ BitVec 32))) )
))
(declare-fun lt!304074 () SeekEntryResult!6944)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!653095 (= res!423643 (not (= lt!304074 (Found!6944 index!984))))))

(declare-datatypes ((Unit!22336 0))(
  ( (Unit!22337) )
))
(declare-fun lt!304082 () Unit!22336)

(declare-fun e!374953 () Unit!22336)

(assert (=> b!653095 (= lt!304082 e!374953)))

(declare-fun c!75095 () Bool)

(assert (=> b!653095 (= c!75095 (= lt!304074 Undefined!6944))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((array!38599 0))(
  ( (array!38600 (arr!18497 (Array (_ BitVec 32) (_ BitVec 64))) (size!18861 (_ BitVec 32))) )
))
(declare-fun lt!304085 () array!38599)

(declare-fun lt!304079 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38599 (_ BitVec 32)) SeekEntryResult!6944)

(assert (=> b!653095 (= lt!304074 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!304079 lt!304085 mask!3053))))

(declare-fun e!374955 () Bool)

(assert (=> b!653095 e!374955))

(declare-fun res!423656 () Bool)

(assert (=> b!653095 (=> (not res!423656) (not e!374955))))

(declare-fun lt!304086 () SeekEntryResult!6944)

(declare-fun lt!304077 () (_ BitVec 32))

(assert (=> b!653095 (= res!423656 (= lt!304086 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!304077 vacantSpotIndex!68 lt!304079 lt!304085 mask!3053)))))

(declare-fun a!2986 () array!38599)

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!653095 (= lt!304086 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!304077 vacantSpotIndex!68 (select (arr!18497 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!653095 (= lt!304079 (select (store (arr!18497 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!304083 () Unit!22336)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38599 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22336)

(assert (=> b!653095 (= lt!304083 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!304077 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!653095 (= lt!304077 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!653096 () Bool)

(declare-fun res!423645 () Bool)

(declare-fun e!374949 () Bool)

(assert (=> b!653096 (=> res!423645 e!374949)))

(declare-datatypes ((List!12591 0))(
  ( (Nil!12588) (Cons!12587 (h!13632 (_ BitVec 64)) (t!18827 List!12591)) )
))
(declare-fun noDuplicate!441 (List!12591) Bool)

(assert (=> b!653096 (= res!423645 (not (noDuplicate!441 Nil!12588)))))

(declare-fun b!653097 () Bool)

(declare-fun e!374959 () Bool)

(declare-fun e!374956 () Bool)

(assert (=> b!653097 (= e!374959 e!374956)))

(declare-fun res!423659 () Bool)

(assert (=> b!653097 (=> (not res!423659) (not e!374956))))

(declare-fun lt!304080 () SeekEntryResult!6944)

(assert (=> b!653097 (= res!423659 (or (= lt!304080 (MissingZero!6944 i!1108)) (= lt!304080 (MissingVacant!6944 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38599 (_ BitVec 32)) SeekEntryResult!6944)

(assert (=> b!653097 (= lt!304080 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!653098 () Bool)

(declare-fun e!374960 () Bool)

(declare-fun contains!3185 (List!12591 (_ BitVec 64)) Bool)

(assert (=> b!653098 (= e!374960 (not (contains!3185 Nil!12588 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!653099 () Bool)

(assert (=> b!653099 (= e!374949 e!374960)))

(declare-fun res!423657 () Bool)

(assert (=> b!653099 (=> (not res!423657) (not e!374960))))

(assert (=> b!653099 (= res!423657 (not (contains!3185 Nil!12588 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!653100 () Bool)

(declare-fun e!374954 () Bool)

(assert (=> b!653100 (= e!374954 e!374949)))

(declare-fun res!423641 () Bool)

(assert (=> b!653100 (=> res!423641 e!374949)))

(assert (=> b!653100 (= res!423641 (or (bvsge (size!18861 a!2986) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 index!984) (size!18861 a!2986)) (bvsge index!984 (size!18861 a!2986))))))

(declare-fun arrayNoDuplicates!0 (array!38599 (_ BitVec 32) List!12591) Bool)

(assert (=> b!653100 (arrayNoDuplicates!0 lt!304085 index!984 Nil!12588)))

(declare-fun lt!304078 () Unit!22336)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38599 (_ BitVec 32) (_ BitVec 32)) Unit!22336)

(assert (=> b!653100 (= lt!304078 (lemmaNoDuplicateFromThenFromBigger!0 lt!304085 #b00000000000000000000000000000000 index!984))))

(assert (=> b!653100 (arrayNoDuplicates!0 lt!304085 #b00000000000000000000000000000000 Nil!12588)))

(declare-fun lt!304076 () Unit!22336)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38599 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12591) Unit!22336)

(assert (=> b!653100 (= lt!304076 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12588))))

(declare-fun arrayContainsKey!0 (array!38599 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!653100 (arrayContainsKey!0 lt!304085 (select (arr!18497 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!304081 () Unit!22336)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38599 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22336)

(assert (=> b!653100 (= lt!304081 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!304085 (select (arr!18497 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!374958 () Bool)

(assert (=> b!653100 e!374958))

(declare-fun res!423648 () Bool)

(assert (=> b!653100 (=> (not res!423648) (not e!374958))))

(assert (=> b!653100 (= res!423648 (arrayContainsKey!0 lt!304085 (select (arr!18497 a!2986) j!136) j!136))))

(declare-fun b!653101 () Bool)

(declare-fun res!423654 () Bool)

(assert (=> b!653101 (=> (not res!423654) (not e!374959))))

(assert (=> b!653101 (= res!423654 (and (= (size!18861 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18861 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18861 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!653102 () Bool)

(declare-fun res!423647 () Bool)

(assert (=> b!653102 (=> (not res!423647) (not e!374959))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!653102 (= res!423647 (validKeyInArray!0 k!1786))))

(declare-fun b!653103 () Bool)

(declare-fun Unit!22338 () Unit!22336)

(assert (=> b!653103 (= e!374953 Unit!22338)))

(declare-fun b!653104 () Bool)

(declare-fun res!423651 () Bool)

(assert (=> b!653104 (=> (not res!423651) (not e!374956))))

(assert (=> b!653104 (= res!423651 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12588))))

(declare-fun b!653106 () Bool)

(declare-fun e!374946 () Bool)

(declare-fun e!374947 () Bool)

(assert (=> b!653106 (= e!374946 e!374947)))

(declare-fun res!423660 () Bool)

(assert (=> b!653106 (=> (not res!423660) (not e!374947))))

(assert (=> b!653106 (= res!423660 (arrayContainsKey!0 lt!304085 (select (arr!18497 a!2986) j!136) j!136))))

(declare-fun b!653107 () Bool)

(declare-fun e!374961 () Bool)

(assert (=> b!653107 (= e!374961 e!374954)))

(declare-fun res!423644 () Bool)

(assert (=> b!653107 (=> res!423644 e!374954)))

(assert (=> b!653107 (= res!423644 (bvsge index!984 j!136))))

(declare-fun lt!304071 () Unit!22336)

(declare-fun e!374948 () Unit!22336)

(assert (=> b!653107 (= lt!304071 e!374948)))

(declare-fun c!75094 () Bool)

(assert (=> b!653107 (= c!75094 (bvslt j!136 index!984))))

(declare-fun b!653108 () Bool)

(assert (=> b!653108 (= e!374957 e!374961)))

(declare-fun res!423661 () Bool)

(assert (=> b!653108 (=> res!423661 e!374961)))

(declare-fun lt!304084 () (_ BitVec 64))

(assert (=> b!653108 (= res!423661 (or (not (= (select (arr!18497 a!2986) j!136) lt!304079)) (not (= (select (arr!18497 a!2986) j!136) lt!304084))))))

(declare-fun e!374950 () Bool)

(assert (=> b!653108 e!374950))

(declare-fun res!423652 () Bool)

(assert (=> b!653108 (=> (not res!423652) (not e!374950))))

(assert (=> b!653108 (= res!423652 (= lt!304084 (select (arr!18497 a!2986) j!136)))))

(assert (=> b!653108 (= lt!304084 (select (store (arr!18497 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!653109 () Bool)

(assert (=> b!653109 (= e!374947 (arrayContainsKey!0 lt!304085 (select (arr!18497 a!2986) j!136) index!984))))

(declare-fun b!653110 () Bool)

(declare-fun e!374952 () Bool)

(assert (=> b!653110 (= e!374956 e!374952)))

(declare-fun res!423658 () Bool)

(assert (=> b!653110 (=> (not res!423658) (not e!374952))))

(assert (=> b!653110 (= res!423658 (= (select (store (arr!18497 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!653110 (= lt!304085 (array!38600 (store (arr!18497 a!2986) i!1108 k!1786) (size!18861 a!2986)))))

(declare-fun b!653111 () Bool)

(declare-fun res!423642 () Bool)

(assert (=> b!653111 (=> (not res!423642) (not e!374956))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38599 (_ BitVec 32)) Bool)

(assert (=> b!653111 (= res!423642 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!653112 () Bool)

(declare-fun Unit!22339 () Unit!22336)

(assert (=> b!653112 (= e!374948 Unit!22339)))

(declare-fun b!653113 () Bool)

(assert (=> b!653113 (= e!374950 e!374946)))

(declare-fun res!423646 () Bool)

(assert (=> b!653113 (=> res!423646 e!374946)))

(assert (=> b!653113 (= res!423646 (or (not (= (select (arr!18497 a!2986) j!136) lt!304079)) (not (= (select (arr!18497 a!2986) j!136) lt!304084)) (bvsge j!136 index!984)))))

(declare-fun b!653114 () Bool)

(declare-fun res!423653 () Bool)

(assert (=> b!653114 (=> (not res!423653) (not e!374959))))

(assert (=> b!653114 (= res!423653 (validKeyInArray!0 (select (arr!18497 a!2986) j!136)))))

(declare-fun b!653115 () Bool)

(declare-fun res!423650 () Bool)

(assert (=> b!653115 (=> (not res!423650) (not e!374956))))

(assert (=> b!653115 (= res!423650 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18497 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!653116 () Bool)

(declare-fun res!423649 () Bool)

(assert (=> b!653116 (=> (not res!423649) (not e!374959))))

(assert (=> b!653116 (= res!423649 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!653117 () Bool)

(declare-fun Unit!22340 () Unit!22336)

(assert (=> b!653117 (= e!374953 Unit!22340)))

(assert (=> b!653117 false))

(declare-fun b!653118 () Bool)

(assert (=> b!653118 (= e!374958 (arrayContainsKey!0 lt!304085 (select (arr!18497 a!2986) j!136) index!984))))

(declare-fun b!653105 () Bool)

(declare-fun Unit!22341 () Unit!22336)

(assert (=> b!653105 (= e!374948 Unit!22341)))

(declare-fun lt!304073 () Unit!22336)

(assert (=> b!653105 (= lt!304073 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!304085 (select (arr!18497 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!653105 (arrayContainsKey!0 lt!304085 (select (arr!18497 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!304075 () Unit!22336)

(assert (=> b!653105 (= lt!304075 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12588))))

(assert (=> b!653105 (arrayNoDuplicates!0 lt!304085 #b00000000000000000000000000000000 Nil!12588)))

(declare-fun lt!304069 () Unit!22336)

(assert (=> b!653105 (= lt!304069 (lemmaNoDuplicateFromThenFromBigger!0 lt!304085 #b00000000000000000000000000000000 j!136))))

(assert (=> b!653105 (arrayNoDuplicates!0 lt!304085 j!136 Nil!12588)))

(declare-fun lt!304072 () Unit!22336)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38599 (_ BitVec 64) (_ BitVec 32) List!12591) Unit!22336)

(assert (=> b!653105 (= lt!304072 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!304085 (select (arr!18497 a!2986) j!136) j!136 Nil!12588))))

(assert (=> b!653105 false))

(declare-fun res!423655 () Bool)

(assert (=> start!59230 (=> (not res!423655) (not e!374959))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!59230 (= res!423655 (validMask!0 mask!3053))))

(assert (=> start!59230 e!374959))

(assert (=> start!59230 true))

(declare-fun array_inv!14271 (array!38599) Bool)

(assert (=> start!59230 (array_inv!14271 a!2986)))

(declare-fun b!653119 () Bool)

(declare-fun lt!304070 () SeekEntryResult!6944)

(assert (=> b!653119 (= e!374955 (= lt!304070 lt!304086))))

(declare-fun b!653120 () Bool)

(assert (=> b!653120 (= e!374952 e!374951)))

(declare-fun res!423662 () Bool)

(assert (=> b!653120 (=> (not res!423662) (not e!374951))))

(assert (=> b!653120 (= res!423662 (and (= lt!304070 (Found!6944 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18497 a!2986) index!984) (select (arr!18497 a!2986) j!136))) (not (= (select (arr!18497 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!653120 (= lt!304070 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18497 a!2986) j!136) a!2986 mask!3053))))

(assert (= (and start!59230 res!423655) b!653101))

(assert (= (and b!653101 res!423654) b!653114))

(assert (= (and b!653114 res!423653) b!653102))

(assert (= (and b!653102 res!423647) b!653116))

(assert (= (and b!653116 res!423649) b!653097))

(assert (= (and b!653097 res!423659) b!653111))

(assert (= (and b!653111 res!423642) b!653104))

(assert (= (and b!653104 res!423651) b!653115))

(assert (= (and b!653115 res!423650) b!653110))

(assert (= (and b!653110 res!423658) b!653120))

(assert (= (and b!653120 res!423662) b!653095))

(assert (= (and b!653095 res!423656) b!653119))

(assert (= (and b!653095 c!75095) b!653117))

(assert (= (and b!653095 (not c!75095)) b!653103))

(assert (= (and b!653095 (not res!423643)) b!653108))

(assert (= (and b!653108 res!423652) b!653113))

(assert (= (and b!653113 (not res!423646)) b!653106))

(assert (= (and b!653106 res!423660) b!653109))

(assert (= (and b!653108 (not res!423661)) b!653107))

(assert (= (and b!653107 c!75094) b!653105))

(assert (= (and b!653107 (not c!75094)) b!653112))

(assert (= (and b!653107 (not res!423644)) b!653100))

(assert (= (and b!653100 res!423648) b!653118))

(assert (= (and b!653100 (not res!423641)) b!653096))

(assert (= (and b!653096 (not res!423645)) b!653099))

(assert (= (and b!653099 res!423657) b!653098))

(declare-fun m!626287 () Bool)

(assert (=> b!653115 m!626287))

(declare-fun m!626289 () Bool)

(assert (=> start!59230 m!626289))

(declare-fun m!626291 () Bool)

(assert (=> start!59230 m!626291))

(declare-fun m!626293 () Bool)

(assert (=> b!653109 m!626293))

(assert (=> b!653109 m!626293))

(declare-fun m!626295 () Bool)

(assert (=> b!653109 m!626295))

(assert (=> b!653106 m!626293))

(assert (=> b!653106 m!626293))

(declare-fun m!626297 () Bool)

(assert (=> b!653106 m!626297))

(declare-fun m!626299 () Bool)

(assert (=> b!653110 m!626299))

(declare-fun m!626301 () Bool)

(assert (=> b!653110 m!626301))

(declare-fun m!626303 () Bool)

(assert (=> b!653116 m!626303))

(declare-fun m!626305 () Bool)

(assert (=> b!653102 m!626305))

(declare-fun m!626307 () Bool)

(assert (=> b!653097 m!626307))

(declare-fun m!626309 () Bool)

(assert (=> b!653100 m!626309))

(assert (=> b!653100 m!626293))

(assert (=> b!653100 m!626293))

(declare-fun m!626311 () Bool)

(assert (=> b!653100 m!626311))

(assert (=> b!653100 m!626293))

(declare-fun m!626313 () Bool)

(assert (=> b!653100 m!626313))

(declare-fun m!626315 () Bool)

(assert (=> b!653100 m!626315))

(declare-fun m!626317 () Bool)

(assert (=> b!653100 m!626317))

(declare-fun m!626319 () Bool)

(assert (=> b!653100 m!626319))

(assert (=> b!653100 m!626293))

(assert (=> b!653100 m!626297))

(declare-fun m!626321 () Bool)

(assert (=> b!653098 m!626321))

(assert (=> b!653108 m!626293))

(assert (=> b!653108 m!626299))

(declare-fun m!626323 () Bool)

(assert (=> b!653108 m!626323))

(assert (=> b!653114 m!626293))

(assert (=> b!653114 m!626293))

(declare-fun m!626325 () Bool)

(assert (=> b!653114 m!626325))

(declare-fun m!626327 () Bool)

(assert (=> b!653099 m!626327))

(assert (=> b!653105 m!626309))

(assert (=> b!653105 m!626293))

(declare-fun m!626329 () Bool)

(assert (=> b!653105 m!626329))

(assert (=> b!653105 m!626293))

(declare-fun m!626331 () Bool)

(assert (=> b!653105 m!626331))

(declare-fun m!626333 () Bool)

(assert (=> b!653105 m!626333))

(assert (=> b!653105 m!626293))

(declare-fun m!626335 () Bool)

(assert (=> b!653105 m!626335))

(assert (=> b!653105 m!626293))

(declare-fun m!626337 () Bool)

(assert (=> b!653105 m!626337))

(assert (=> b!653105 m!626317))

(declare-fun m!626339 () Bool)

(assert (=> b!653104 m!626339))

(declare-fun m!626341 () Bool)

(assert (=> b!653096 m!626341))

(assert (=> b!653113 m!626293))

(declare-fun m!626343 () Bool)

(assert (=> b!653120 m!626343))

(assert (=> b!653120 m!626293))

(assert (=> b!653120 m!626293))

(declare-fun m!626345 () Bool)

(assert (=> b!653120 m!626345))

(assert (=> b!653118 m!626293))

(assert (=> b!653118 m!626293))

(assert (=> b!653118 m!626295))

(declare-fun m!626347 () Bool)

(assert (=> b!653111 m!626347))

(declare-fun m!626349 () Bool)

(assert (=> b!653095 m!626349))

(declare-fun m!626351 () Bool)

(assert (=> b!653095 m!626351))

(assert (=> b!653095 m!626299))

(declare-fun m!626353 () Bool)

(assert (=> b!653095 m!626353))

(declare-fun m!626355 () Bool)

(assert (=> b!653095 m!626355))

(declare-fun m!626357 () Bool)

(assert (=> b!653095 m!626357))

(assert (=> b!653095 m!626293))

(assert (=> b!653095 m!626293))

(declare-fun m!626359 () Bool)

(assert (=> b!653095 m!626359))

(push 1)

(assert (not b!653100))

(assert (not b!653095))

(assert (not b!653118))

(assert (not b!653099))

(assert (not b!653116))

(assert (not b!653097))

(assert (not b!653111))

(assert (not b!653120))

(assert (not b!653104))

(assert (not b!653105))

(assert (not b!653098))

(assert (not b!653109))

(assert (not b!653096))

(assert (not b!653102))

(assert (not start!59230))

(assert (not b!653114))

(assert (not b!653106))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!92279 () Bool)

(declare-fun res!423689 () Bool)

(declare-fun e!374998 () Bool)

(assert (=> d!92279 (=> res!423689 e!374998)))

(assert (=> d!92279 (= res!423689 (= (select (arr!18497 lt!304085) index!984) (select (arr!18497 a!2986) j!136)))))

(assert (=> d!92279 (= (arrayContainsKey!0 lt!304085 (select (arr!18497 a!2986) j!136) index!984) e!374998)))

(declare-fun b!653165 () Bool)

(declare-fun e!374999 () Bool)

(assert (=> b!653165 (= e!374998 e!374999)))

(declare-fun res!423690 () Bool)

(assert (=> b!653165 (=> (not res!423690) (not e!374999))))

(assert (=> b!653165 (= res!423690 (bvslt (bvadd index!984 #b00000000000000000000000000000001) (size!18861 lt!304085)))))

(declare-fun b!653166 () Bool)

(assert (=> b!653166 (= e!374999 (arrayContainsKey!0 lt!304085 (select (arr!18497 a!2986) j!136) (bvadd index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!92279 (not res!423689)) b!653165))

(assert (= (and b!653165 res!423690) b!653166))

(declare-fun m!626397 () Bool)

(assert (=> d!92279 m!626397))

(assert (=> b!653166 m!626293))

(declare-fun m!626399 () Bool)

(assert (=> b!653166 m!626399))

(assert (=> b!653118 d!92279))

(declare-fun d!92283 () Bool)

(declare-fun res!423695 () Bool)

(declare-fun e!375004 () Bool)

(assert (=> d!92283 (=> res!423695 e!375004)))

(assert (=> d!92283 (= res!423695 (is-Nil!12588 Nil!12588))))

(assert (=> d!92283 (= (noDuplicate!441 Nil!12588) e!375004)))

(declare-fun b!653171 () Bool)

(declare-fun e!375005 () Bool)

(assert (=> b!653171 (= e!375004 e!375005)))

(declare-fun res!423696 () Bool)

(assert (=> b!653171 (=> (not res!423696) (not e!375005))))

(assert (=> b!653171 (= res!423696 (not (contains!3185 (t!18827 Nil!12588) (h!13632 Nil!12588))))))

(declare-fun b!653172 () Bool)

(assert (=> b!653172 (= e!375005 (noDuplicate!441 (t!18827 Nil!12588)))))

(assert (= (and d!92283 (not res!423695)) b!653171))

(assert (= (and b!653171 res!423696) b!653172))

(declare-fun m!626401 () Bool)

(assert (=> b!653171 m!626401))

(declare-fun m!626403 () Bool)

(assert (=> b!653172 m!626403))

(assert (=> b!653096 d!92283))

(declare-fun d!92285 () Bool)

(declare-fun lt!304106 () Bool)

(declare-fun content!254 (List!12591) (Set (_ BitVec 64)))

(assert (=> d!92285 (= lt!304106 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!254 Nil!12588)))))

(declare-fun e!375017 () Bool)

(assert (=> d!92285 (= lt!304106 e!375017)))

(declare-fun res!423701 () Bool)

(assert (=> d!92285 (=> (not res!423701) (not e!375017))))

(assert (=> d!92285 (= res!423701 (is-Cons!12587 Nil!12588))))

(assert (=> d!92285 (= (contains!3185 Nil!12588 #b1000000000000000000000000000000000000000000000000000000000000000) lt!304106)))

(declare-fun b!653189 () Bool)

(declare-fun e!375016 () Bool)

(assert (=> b!653189 (= e!375017 e!375016)))

(declare-fun res!423702 () Bool)

(assert (=> b!653189 (=> res!423702 e!375016)))

(assert (=> b!653189 (= res!423702 (= (h!13632 Nil!12588) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!653190 () Bool)

(assert (=> b!653190 (= e!375016 (contains!3185 (t!18827 Nil!12588) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!92285 res!423701) b!653189))

(assert (= (and b!653189 (not res!423702)) b!653190))

(declare-fun m!626405 () Bool)

(assert (=> d!92285 m!626405))

(declare-fun m!626407 () Bool)

(assert (=> d!92285 m!626407))

(declare-fun m!626409 () Bool)

(assert (=> b!653190 m!626409))

(assert (=> b!653098 d!92285))

(declare-fun b!653263 () Bool)

(declare-fun e!375073 () SeekEntryResult!6944)

(declare-fun lt!304140 () SeekEntryResult!6944)

(assert (=> b!653263 (= e!375073 (Found!6944 (index!30133 lt!304140)))))

(declare-fun b!653264 () Bool)

(declare-fun e!375074 () SeekEntryResult!6944)

(assert (=> b!653264 (= e!375074 (MissingZero!6944 (index!30133 lt!304140)))))

(declare-fun b!653265 () Bool)

(declare-fun e!375075 () SeekEntryResult!6944)

(assert (=> b!653265 (= e!375075 Undefined!6944)))

(declare-fun d!92287 () Bool)

(declare-fun lt!304141 () SeekEntryResult!6944)

(assert (=> d!92287 (and (or (is-Undefined!6944 lt!304141) (not (is-Found!6944 lt!304141)) (and (bvsge (index!30132 lt!304141) #b00000000000000000000000000000000) (bvslt (index!30132 lt!304141) (size!18861 a!2986)))) (or (is-Undefined!6944 lt!304141) (is-Found!6944 lt!304141) (not (is-MissingZero!6944 lt!304141)) (and (bvsge (index!30131 lt!304141) #b00000000000000000000000000000000) (bvslt (index!30131 lt!304141) (size!18861 a!2986)))) (or (is-Undefined!6944 lt!304141) (is-Found!6944 lt!304141) (is-MissingZero!6944 lt!304141) (not (is-MissingVacant!6944 lt!304141)) (and (bvsge (index!30134 lt!304141) #b00000000000000000000000000000000) (bvslt (index!30134 lt!304141) (size!18861 a!2986)))) (or (is-Undefined!6944 lt!304141) (ite (is-Found!6944 lt!304141) (= (select (arr!18497 a!2986) (index!30132 lt!304141)) k!1786) (ite (is-MissingZero!6944 lt!304141) (= (select (arr!18497 a!2986) (index!30131 lt!304141)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!6944 lt!304141) (= (select (arr!18497 a!2986) (index!30134 lt!304141)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!92287 (= lt!304141 e!375075)))

(declare-fun c!75129 () Bool)

(assert (=> d!92287 (= c!75129 (and (is-Intermediate!6944 lt!304140) (undefined!7756 lt!304140)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38599 (_ BitVec 32)) SeekEntryResult!6944)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!92287 (= lt!304140 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1786 mask!3053) k!1786 a!2986 mask!3053))))

(assert (=> d!92287 (validMask!0 mask!3053)))

(assert (=> d!92287 (= (seekEntryOrOpen!0 k!1786 a!2986 mask!3053) lt!304141)))

(declare-fun b!653266 () Bool)

(assert (=> b!653266 (= e!375075 e!375073)))

(declare-fun lt!304139 () (_ BitVec 64))

(assert (=> b!653266 (= lt!304139 (select (arr!18497 a!2986) (index!30133 lt!304140)))))

(declare-fun c!75130 () Bool)

(assert (=> b!653266 (= c!75130 (= lt!304139 k!1786))))

(declare-fun b!653267 () Bool)

(declare-fun c!75128 () Bool)

(assert (=> b!653267 (= c!75128 (= lt!304139 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!653267 (= e!375073 e!375074)))

(declare-fun b!653268 () Bool)

(assert (=> b!653268 (= e!375074 (seekKeyOrZeroReturnVacant!0 (x!58945 lt!304140) (index!30133 lt!304140) (index!30133 lt!304140) k!1786 a!2986 mask!3053))))

(assert (= (and d!92287 c!75129) b!653265))

(assert (= (and d!92287 (not c!75129)) b!653266))

(assert (= (and b!653266 c!75130) b!653263))

(assert (= (and b!653266 (not c!75130)) b!653267))

(assert (= (and b!653267 c!75128) b!653264))

(assert (= (and b!653267 (not c!75128)) b!653268))

(declare-fun m!626477 () Bool)

(assert (=> d!92287 m!626477))

(declare-fun m!626479 () Bool)

(assert (=> d!92287 m!626479))

(declare-fun m!626481 () Bool)

(assert (=> d!92287 m!626481))

(assert (=> d!92287 m!626289))

(assert (=> d!92287 m!626479))

(declare-fun m!626483 () Bool)

(assert (=> d!92287 m!626483))

(declare-fun m!626485 () Bool)

(assert (=> d!92287 m!626485))

(declare-fun m!626487 () Bool)

(assert (=> b!653266 m!626487))

(declare-fun m!626489 () Bool)

(assert (=> b!653268 m!626489))

(assert (=> b!653097 d!92287))

(declare-fun bm!33812 () Bool)

(declare-fun call!33815 () Bool)

(declare-fun c!75134 () Bool)

(assert (=> bm!33812 (= call!33815 (arrayNoDuplicates!0 a!2986 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!75134 (Cons!12587 (select (arr!18497 a!2986) #b00000000000000000000000000000000) Nil!12588) Nil!12588)))))

(declare-fun b!653296 () Bool)

(declare-fun e!375101 () Bool)

(assert (=> b!653296 (= e!375101 (contains!3185 Nil!12588 (select (arr!18497 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!653297 () Bool)

(declare-fun e!375100 () Bool)

(declare-fun e!375103 () Bool)

(assert (=> b!653297 (= e!375100 e!375103)))

(assert (=> b!653297 (= c!75134 (validKeyInArray!0 (select (arr!18497 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!653298 () Bool)

(assert (=> b!653298 (= e!375103 call!33815)))

(declare-fun d!92323 () Bool)

(declare-fun res!423762 () Bool)

(declare-fun e!375102 () Bool)

(assert (=> d!92323 (=> res!423762 e!375102)))

(assert (=> d!92323 (= res!423762 (bvsge #b00000000000000000000000000000000 (size!18861 a!2986)))))

(assert (=> d!92323 (= (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12588) e!375102)))

(declare-fun b!653299 () Bool)

(assert (=> b!653299 (= e!375102 e!375100)))

(declare-fun res!423764 () Bool)

(assert (=> b!653299 (=> (not res!423764) (not e!375100))))

(assert (=> b!653299 (= res!423764 (not e!375101))))

(declare-fun res!423763 () Bool)

(assert (=> b!653299 (=> (not res!423763) (not e!375101))))

(assert (=> b!653299 (= res!423763 (validKeyInArray!0 (select (arr!18497 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!653300 () Bool)

(assert (=> b!653300 (= e!375103 call!33815)))

(assert (= (and d!92323 (not res!423762)) b!653299))

(assert (= (and b!653299 res!423763) b!653296))

(assert (= (and b!653299 res!423764) b!653297))

(assert (= (and b!653297 c!75134) b!653298))

(assert (= (and b!653297 (not c!75134)) b!653300))

(assert (= (or b!653298 b!653300) bm!33812))

(declare-fun m!626511 () Bool)

(assert (=> bm!33812 m!626511))

(declare-fun m!626513 () Bool)

(assert (=> bm!33812 m!626513))

(assert (=> b!653296 m!626511))

(assert (=> b!653296 m!626511))

(declare-fun m!626515 () Bool)

(assert (=> b!653296 m!626515))

(assert (=> b!653297 m!626511))

(assert (=> b!653297 m!626511))

(declare-fun m!626517 () Bool)

(assert (=> b!653297 m!626517))

(assert (=> b!653299 m!626511))

(assert (=> b!653299 m!626511))

(assert (=> b!653299 m!626517))

(assert (=> b!653104 d!92323))

(declare-fun b!653361 () Bool)

(declare-fun c!75162 () Bool)

(declare-fun lt!304174 () (_ BitVec 64))

(assert (=> b!653361 (= c!75162 (= lt!304174 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!375139 () SeekEntryResult!6944)

(declare-fun e!375137 () SeekEntryResult!6944)

(assert (=> b!653361 (= e!375139 e!375137)))

(declare-fun b!653362 () Bool)

(declare-fun e!375138 () SeekEntryResult!6944)

(assert (=> b!653362 (= e!375138 e!375139)))

(declare-fun c!75164 () Bool)

(assert (=> b!653362 (= c!75164 (= lt!304174 lt!304079))))

(declare-fun b!653363 () Bool)

(assert (=> b!653363 (= e!375138 Undefined!6944)))

(declare-fun b!653364 () Bool)

(assert (=> b!653364 (= e!375137 (MissingVacant!6944 vacantSpotIndex!68))))

(declare-fun lt!304173 () SeekEntryResult!6944)

(declare-fun d!92343 () Bool)

(assert (=> d!92343 (and (or (is-Undefined!6944 lt!304173) (not (is-Found!6944 lt!304173)) (and (bvsge (index!30132 lt!304173) #b00000000000000000000000000000000) (bvslt (index!30132 lt!304173) (size!18861 lt!304085)))) (or (is-Undefined!6944 lt!304173) (is-Found!6944 lt!304173) (not (is-MissingVacant!6944 lt!304173)) (not (= (index!30134 lt!304173) vacantSpotIndex!68)) (and (bvsge (index!30134 lt!304173) #b00000000000000000000000000000000) (bvslt (index!30134 lt!304173) (size!18861 lt!304085)))) (or (is-Undefined!6944 lt!304173) (ite (is-Found!6944 lt!304173) (= (select (arr!18497 lt!304085) (index!30132 lt!304173)) lt!304079) (and (is-MissingVacant!6944 lt!304173) (= (index!30134 lt!304173) vacantSpotIndex!68) (= (select (arr!18497 lt!304085) (index!30134 lt!304173)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!92343 (= lt!304173 e!375138)))

(declare-fun c!75163 () Bool)

(assert (=> d!92343 (= c!75163 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!92343 (= lt!304174 (select (arr!18497 lt!304085) lt!304077))))

(assert (=> d!92343 (validMask!0 mask!3053)))

(assert (=> d!92343 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!304077 vacantSpotIndex!68 lt!304079 lt!304085 mask!3053) lt!304173)))

(declare-fun b!653365 () Bool)

(assert (=> b!653365 (= e!375137 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!304077 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 lt!304079 lt!304085 mask!3053))))

(declare-fun b!653366 () Bool)

(assert (=> b!653366 (= e!375139 (Found!6944 lt!304077))))

(assert (= (and d!92343 c!75163) b!653363))

(assert (= (and d!92343 (not c!75163)) b!653362))

(assert (= (and b!653362 c!75164) b!653366))

(assert (= (and b!653362 (not c!75164)) b!653361))

(assert (= (and b!653361 c!75162) b!653364))

(assert (= (and b!653361 (not c!75162)) b!653365))

(declare-fun m!626567 () Bool)

(assert (=> d!92343 m!626567))

(declare-fun m!626569 () Bool)

(assert (=> d!92343 m!626569))

(declare-fun m!626571 () Bool)

(assert (=> d!92343 m!626571))

(assert (=> d!92343 m!626289))

(declare-fun m!626573 () Bool)

(assert (=> b!653365 m!626573))

(assert (=> b!653365 m!626573))

(declare-fun m!626575 () Bool)

(assert (=> b!653365 m!626575))

(assert (=> b!653095 d!92343))

(declare-fun d!92359 () Bool)

(declare-fun lt!304177 () (_ BitVec 32))

(assert (=> d!92359 (and (bvsge lt!304177 #b00000000000000000000000000000000) (bvslt lt!304177 (bvadd mask!3053 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!92359 (= lt!304177 (choose!52 index!984 x!910 mask!3053))))

(assert (=> d!92359 (validMask!0 mask!3053)))

(assert (=> d!92359 (= (nextIndex!0 index!984 x!910 mask!3053) lt!304177)))

(declare-fun bs!19476 () Bool)

(assert (= bs!19476 d!92359))

(declare-fun m!626577 () Bool)

(assert (=> bs!19476 m!626577))

(assert (=> bs!19476 m!626289))

(assert (=> b!653095 d!92359))

(declare-fun b!653367 () Bool)

(declare-fun c!75165 () Bool)

(declare-fun lt!304179 () (_ BitVec 64))

(assert (=> b!653367 (= c!75165 (= lt!304179 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!375142 () SeekEntryResult!6944)

(declare-fun e!375140 () SeekEntryResult!6944)

(assert (=> b!653367 (= e!375142 e!375140)))

(declare-fun b!653368 () Bool)

(declare-fun e!375141 () SeekEntryResult!6944)

(assert (=> b!653368 (= e!375141 e!375142)))

(declare-fun c!75167 () Bool)

(assert (=> b!653368 (= c!75167 (= lt!304179 lt!304079))))

(declare-fun b!653369 () Bool)

(assert (=> b!653369 (= e!375141 Undefined!6944)))

(declare-fun b!653370 () Bool)

(assert (=> b!653370 (= e!375140 (MissingVacant!6944 vacantSpotIndex!68))))

(declare-fun lt!304178 () SeekEntryResult!6944)

(declare-fun d!92361 () Bool)

(assert (=> d!92361 (and (or (is-Undefined!6944 lt!304178) (not (is-Found!6944 lt!304178)) (and (bvsge (index!30132 lt!304178) #b00000000000000000000000000000000) (bvslt (index!30132 lt!304178) (size!18861 lt!304085)))) (or (is-Undefined!6944 lt!304178) (is-Found!6944 lt!304178) (not (is-MissingVacant!6944 lt!304178)) (not (= (index!30134 lt!304178) vacantSpotIndex!68)) (and (bvsge (index!30134 lt!304178) #b00000000000000000000000000000000) (bvslt (index!30134 lt!304178) (size!18861 lt!304085)))) (or (is-Undefined!6944 lt!304178) (ite (is-Found!6944 lt!304178) (= (select (arr!18497 lt!304085) (index!30132 lt!304178)) lt!304079) (and (is-MissingVacant!6944 lt!304178) (= (index!30134 lt!304178) vacantSpotIndex!68) (= (select (arr!18497 lt!304085) (index!30134 lt!304178)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!92361 (= lt!304178 e!375141)))

(declare-fun c!75166 () Bool)

(assert (=> d!92361 (= c!75166 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!92361 (= lt!304179 (select (arr!18497 lt!304085) index!984))))

(assert (=> d!92361 (validMask!0 mask!3053)))

(assert (=> d!92361 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!304079 lt!304085 mask!3053) lt!304178)))

(declare-fun b!653371 () Bool)

(assert (=> b!653371 (= e!375140 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 lt!304079 lt!304085 mask!3053))))

(declare-fun b!653372 () Bool)

(assert (=> b!653372 (= e!375142 (Found!6944 index!984))))

(assert (= (and d!92361 c!75166) b!653369))

(assert (= (and d!92361 (not c!75166)) b!653368))

(assert (= (and b!653368 c!75167) b!653372))

(assert (= (and b!653368 (not c!75167)) b!653367))

(assert (= (and b!653367 c!75165) b!653370))

(assert (= (and b!653367 (not c!75165)) b!653371))

(declare-fun m!626579 () Bool)

(assert (=> d!92361 m!626579))

(declare-fun m!626581 () Bool)

(assert (=> d!92361 m!626581))

(assert (=> d!92361 m!626397))

(assert (=> d!92361 m!626289))

(assert (=> b!653371 m!626349))

(assert (=> b!653371 m!626349))

(declare-fun m!626583 () Bool)

(assert (=> b!653371 m!626583))

(assert (=> b!653095 d!92361))

(declare-fun b!653373 () Bool)

(declare-fun c!75168 () Bool)

(declare-fun lt!304181 () (_ BitVec 64))

(assert (=> b!653373 (= c!75168 (= lt!304181 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!375145 () SeekEntryResult!6944)

(declare-fun e!375143 () SeekEntryResult!6944)

(assert (=> b!653373 (= e!375145 e!375143)))

(declare-fun b!653374 () Bool)

(declare-fun e!375144 () SeekEntryResult!6944)

(assert (=> b!653374 (= e!375144 e!375145)))

(declare-fun c!75170 () Bool)

(assert (=> b!653374 (= c!75170 (= lt!304181 (select (arr!18497 a!2986) j!136)))))

(declare-fun b!653375 () Bool)

(assert (=> b!653375 (= e!375144 Undefined!6944)))

(declare-fun b!653376 () Bool)

(assert (=> b!653376 (= e!375143 (MissingVacant!6944 vacantSpotIndex!68))))

(declare-fun lt!304180 () SeekEntryResult!6944)

(declare-fun d!92363 () Bool)

(assert (=> d!92363 (and (or (is-Undefined!6944 lt!304180) (not (is-Found!6944 lt!304180)) (and (bvsge (index!30132 lt!304180) #b00000000000000000000000000000000) (bvslt (index!30132 lt!304180) (size!18861 a!2986)))) (or (is-Undefined!6944 lt!304180) (is-Found!6944 lt!304180) (not (is-MissingVacant!6944 lt!304180)) (not (= (index!30134 lt!304180) vacantSpotIndex!68)) (and (bvsge (index!30134 lt!304180) #b00000000000000000000000000000000) (bvslt (index!30134 lt!304180) (size!18861 a!2986)))) (or (is-Undefined!6944 lt!304180) (ite (is-Found!6944 lt!304180) (= (select (arr!18497 a!2986) (index!30132 lt!304180)) (select (arr!18497 a!2986) j!136)) (and (is-MissingVacant!6944 lt!304180) (= (index!30134 lt!304180) vacantSpotIndex!68) (= (select (arr!18497 a!2986) (index!30134 lt!304180)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!92363 (= lt!304180 e!375144)))

(declare-fun c!75169 () Bool)

(assert (=> d!92363 (= c!75169 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!92363 (= lt!304181 (select (arr!18497 a!2986) lt!304077))))

(assert (=> d!92363 (validMask!0 mask!3053)))

(assert (=> d!92363 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!304077 vacantSpotIndex!68 (select (arr!18497 a!2986) j!136) a!2986 mask!3053) lt!304180)))

(declare-fun b!653377 () Bool)

(assert (=> b!653377 (= e!375143 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!304077 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 (select (arr!18497 a!2986) j!136) a!2986 mask!3053))))

