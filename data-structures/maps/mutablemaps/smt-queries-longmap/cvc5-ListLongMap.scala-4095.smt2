; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56076 () Bool)

(assert start!56076)

(declare-fun b!617639 () Bool)

(declare-fun e!354189 () Bool)

(declare-fun e!354188 () Bool)

(assert (=> b!617639 (= e!354189 e!354188)))

(declare-fun res!398019 () Bool)

(assert (=> b!617639 (=> (not res!398019) (not e!354188))))

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6444 0))(
  ( (MissingZero!6444 (index!28059 (_ BitVec 32))) (Found!6444 (index!28060 (_ BitVec 32))) (Intermediate!6444 (undefined!7256 Bool) (index!28061 (_ BitVec 32)) (x!56877 (_ BitVec 32))) (Undefined!6444) (MissingVacant!6444 (index!28062 (_ BitVec 32))) )
))
(declare-fun lt!284604 () SeekEntryResult!6444)

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!37509 0))(
  ( (array!37510 (arr!17997 (Array (_ BitVec 32) (_ BitVec 64))) (size!18361 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37509)

(assert (=> b!617639 (= res!398019 (and (= lt!284604 (Found!6444 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17997 a!2986) index!984) (select (arr!17997 a!2986) j!136))) (not (= (select (arr!17997 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37509 (_ BitVec 32)) SeekEntryResult!6444)

(assert (=> b!617639 (= lt!284604 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17997 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!617640 () Bool)

(declare-fun e!354193 () Bool)

(declare-fun e!354195 () Bool)

(assert (=> b!617640 (= e!354193 e!354195)))

(declare-fun res!398017 () Bool)

(assert (=> b!617640 (=> (not res!398017) (not e!354195))))

(declare-fun lt!284598 () SeekEntryResult!6444)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!617640 (= res!398017 (or (= lt!284598 (MissingZero!6444 i!1108)) (= lt!284598 (MissingVacant!6444 i!1108))))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37509 (_ BitVec 32)) SeekEntryResult!6444)

(assert (=> b!617640 (= lt!284598 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!617641 () Bool)

(declare-fun e!354182 () Bool)

(assert (=> b!617641 (= e!354188 (not e!354182))))

(declare-fun res!398009 () Bool)

(assert (=> b!617641 (=> res!398009 e!354182)))

(declare-fun lt!284603 () SeekEntryResult!6444)

(assert (=> b!617641 (= res!398009 (not (= lt!284603 (MissingVacant!6444 vacantSpotIndex!68))))))

(declare-datatypes ((Unit!20260 0))(
  ( (Unit!20261) )
))
(declare-fun lt!284606 () Unit!20260)

(declare-fun e!354194 () Unit!20260)

(assert (=> b!617641 (= lt!284606 e!354194)))

(declare-fun c!70186 () Bool)

(assert (=> b!617641 (= c!70186 (= lt!284603 (Found!6444 index!984)))))

(declare-fun lt!284601 () Unit!20260)

(declare-fun e!354185 () Unit!20260)

(assert (=> b!617641 (= lt!284601 e!354185)))

(declare-fun c!70184 () Bool)

(assert (=> b!617641 (= c!70184 (= lt!284603 Undefined!6444))))

(declare-fun lt!284613 () (_ BitVec 64))

(declare-fun lt!284615 () array!37509)

(assert (=> b!617641 (= lt!284603 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!284613 lt!284615 mask!3053))))

(declare-fun e!354183 () Bool)

(assert (=> b!617641 e!354183))

(declare-fun res!398015 () Bool)

(assert (=> b!617641 (=> (not res!398015) (not e!354183))))

(declare-fun lt!284600 () (_ BitVec 32))

(declare-fun lt!284605 () SeekEntryResult!6444)

(assert (=> b!617641 (= res!398015 (= lt!284605 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!284600 vacantSpotIndex!68 lt!284613 lt!284615 mask!3053)))))

(assert (=> b!617641 (= lt!284605 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!284600 vacantSpotIndex!68 (select (arr!17997 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!617641 (= lt!284613 (select (store (arr!17997 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!284612 () Unit!20260)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37509 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!20260)

(assert (=> b!617641 (= lt!284612 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!284600 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!617641 (= lt!284600 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!617642 () Bool)

(declare-fun e!354190 () Unit!20260)

(declare-fun Unit!20262 () Unit!20260)

(assert (=> b!617642 (= e!354190 Unit!20262)))

(declare-fun b!617643 () Bool)

(assert (=> b!617643 false))

(declare-fun lt!284614 () Unit!20260)

(declare-datatypes ((List!12091 0))(
  ( (Nil!12088) (Cons!12087 (h!13132 (_ BitVec 64)) (t!18327 List!12091)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37509 (_ BitVec 64) (_ BitVec 32) List!12091) Unit!20260)

(assert (=> b!617643 (= lt!284614 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!284615 (select (arr!17997 a!2986) j!136) index!984 Nil!12088))))

(declare-fun arrayNoDuplicates!0 (array!37509 (_ BitVec 32) List!12091) Bool)

(assert (=> b!617643 (arrayNoDuplicates!0 lt!284615 index!984 Nil!12088)))

(declare-fun lt!284611 () Unit!20260)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37509 (_ BitVec 32) (_ BitVec 32)) Unit!20260)

(assert (=> b!617643 (= lt!284611 (lemmaNoDuplicateFromThenFromBigger!0 lt!284615 #b00000000000000000000000000000000 index!984))))

(assert (=> b!617643 (arrayNoDuplicates!0 lt!284615 #b00000000000000000000000000000000 Nil!12088)))

(declare-fun lt!284608 () Unit!20260)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37509 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12091) Unit!20260)

(assert (=> b!617643 (= lt!284608 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12088))))

(declare-fun arrayContainsKey!0 (array!37509 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!617643 (arrayContainsKey!0 lt!284615 (select (arr!17997 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!284609 () Unit!20260)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37509 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!20260)

(assert (=> b!617643 (= lt!284609 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!284615 (select (arr!17997 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!354196 () Bool)

(assert (=> b!617643 e!354196))

(declare-fun res!398014 () Bool)

(assert (=> b!617643 (=> (not res!398014) (not e!354196))))

(assert (=> b!617643 (= res!398014 (arrayContainsKey!0 lt!284615 (select (arr!17997 a!2986) j!136) j!136))))

(declare-fun Unit!20263 () Unit!20260)

(assert (=> b!617643 (= e!354190 Unit!20263)))

(declare-fun b!617644 () Bool)

(assert (=> b!617644 (= e!354183 (= lt!284604 lt!284605))))

(declare-fun b!617645 () Bool)

(declare-fun Unit!20264 () Unit!20260)

(assert (=> b!617645 (= e!354185 Unit!20264)))

(declare-fun b!617646 () Bool)

(declare-fun e!354186 () Bool)

(assert (=> b!617646 (= e!354186 (arrayContainsKey!0 lt!284615 (select (arr!17997 a!2986) j!136) index!984))))

(declare-fun b!617647 () Bool)

(assert (=> b!617647 (= e!354182 true)))

(assert (=> b!617647 (= (select (store (arr!17997 a!2986) i!1108 k!1786) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun b!617648 () Bool)

(declare-fun res!398008 () Bool)

(assert (=> b!617648 (=> (not res!398008) (not e!354195))))

(assert (=> b!617648 (= res!398008 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12088))))

(declare-fun b!617649 () Bool)

(declare-fun res!398012 () Bool)

(assert (=> b!617649 (=> (not res!398012) (not e!354193))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!617649 (= res!398012 (validKeyInArray!0 (select (arr!17997 a!2986) j!136)))))

(declare-fun res!398018 () Bool)

(declare-fun b!617650 () Bool)

(assert (=> b!617650 (= res!398018 (arrayContainsKey!0 lt!284615 (select (arr!17997 a!2986) j!136) j!136))))

(assert (=> b!617650 (=> (not res!398018) (not e!354186))))

(declare-fun e!354187 () Bool)

(assert (=> b!617650 (= e!354187 e!354186)))

(declare-fun b!617651 () Bool)

(declare-fun Unit!20265 () Unit!20260)

(assert (=> b!617651 (= e!354185 Unit!20265)))

(assert (=> b!617651 false))

(declare-fun b!617652 () Bool)

(assert (=> b!617652 (= e!354195 e!354189)))

(declare-fun res!398010 () Bool)

(assert (=> b!617652 (=> (not res!398010) (not e!354189))))

(assert (=> b!617652 (= res!398010 (= (select (store (arr!17997 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!617652 (= lt!284615 (array!37510 (store (arr!17997 a!2986) i!1108 k!1786) (size!18361 a!2986)))))

(declare-fun res!398006 () Bool)

(assert (=> start!56076 (=> (not res!398006) (not e!354193))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56076 (= res!398006 (validMask!0 mask!3053))))

(assert (=> start!56076 e!354193))

(assert (=> start!56076 true))

(declare-fun array_inv!13771 (array!37509) Bool)

(assert (=> start!56076 (array_inv!13771 a!2986)))

(declare-fun b!617653 () Bool)

(declare-fun res!398005 () Bool)

(assert (=> b!617653 (=> (not res!398005) (not e!354195))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37509 (_ BitVec 32)) Bool)

(assert (=> b!617653 (= res!398005 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!617654 () Bool)

(declare-fun e!354184 () Unit!20260)

(declare-fun Unit!20266 () Unit!20260)

(assert (=> b!617654 (= e!354184 Unit!20266)))

(declare-fun b!617655 () Bool)

(declare-fun res!398013 () Bool)

(assert (=> b!617655 (=> (not res!398013) (not e!354193))))

(assert (=> b!617655 (= res!398013 (validKeyInArray!0 k!1786))))

(declare-fun b!617656 () Bool)

(declare-fun res!398016 () Bool)

(assert (=> b!617656 (=> (not res!398016) (not e!354193))))

(assert (=> b!617656 (= res!398016 (and (= (size!18361 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18361 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18361 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!617657 () Bool)

(declare-fun Unit!20267 () Unit!20260)

(assert (=> b!617657 (= e!354194 Unit!20267)))

(declare-fun res!398021 () Bool)

(assert (=> b!617657 (= res!398021 (= (select (store (arr!17997 a!2986) i!1108 k!1786) index!984) (select (arr!17997 a!2986) j!136)))))

(declare-fun e!354192 () Bool)

(assert (=> b!617657 (=> (not res!398021) (not e!354192))))

(assert (=> b!617657 e!354192))

(declare-fun c!70187 () Bool)

(assert (=> b!617657 (= c!70187 (bvslt j!136 index!984))))

(declare-fun lt!284599 () Unit!20260)

(assert (=> b!617657 (= lt!284599 e!354184)))

(declare-fun c!70185 () Bool)

(assert (=> b!617657 (= c!70185 (bvslt index!984 j!136))))

(declare-fun lt!284597 () Unit!20260)

(assert (=> b!617657 (= lt!284597 e!354190)))

(assert (=> b!617657 false))

(declare-fun b!617658 () Bool)

(declare-fun res!398011 () Bool)

(assert (=> b!617658 (=> (not res!398011) (not e!354193))))

(assert (=> b!617658 (= res!398011 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!617659 () Bool)

(declare-fun res!398020 () Bool)

(assert (=> b!617659 (=> (not res!398020) (not e!354195))))

(assert (=> b!617659 (= res!398020 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17997 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!617660 () Bool)

(declare-fun Unit!20268 () Unit!20260)

(assert (=> b!617660 (= e!354194 Unit!20268)))

(declare-fun b!617661 () Bool)

(assert (=> b!617661 (= e!354196 (arrayContainsKey!0 lt!284615 (select (arr!17997 a!2986) j!136) index!984))))

(declare-fun b!617662 () Bool)

(declare-fun res!398007 () Bool)

(assert (=> b!617662 (= res!398007 (bvsge j!136 index!984))))

(assert (=> b!617662 (=> res!398007 e!354187)))

(assert (=> b!617662 (= e!354192 e!354187)))

(declare-fun b!617663 () Bool)

(assert (=> b!617663 false))

(declare-fun lt!284607 () Unit!20260)

(assert (=> b!617663 (= lt!284607 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!284615 (select (arr!17997 a!2986) j!136) j!136 Nil!12088))))

(assert (=> b!617663 (arrayNoDuplicates!0 lt!284615 j!136 Nil!12088)))

(declare-fun lt!284616 () Unit!20260)

(assert (=> b!617663 (= lt!284616 (lemmaNoDuplicateFromThenFromBigger!0 lt!284615 #b00000000000000000000000000000000 j!136))))

(assert (=> b!617663 (arrayNoDuplicates!0 lt!284615 #b00000000000000000000000000000000 Nil!12088)))

(declare-fun lt!284602 () Unit!20260)

(assert (=> b!617663 (= lt!284602 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12088))))

(assert (=> b!617663 (arrayContainsKey!0 lt!284615 (select (arr!17997 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!284610 () Unit!20260)

(assert (=> b!617663 (= lt!284610 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!284615 (select (arr!17997 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!20269 () Unit!20260)

(assert (=> b!617663 (= e!354184 Unit!20269)))

(assert (= (and start!56076 res!398006) b!617656))

(assert (= (and b!617656 res!398016) b!617649))

(assert (= (and b!617649 res!398012) b!617655))

(assert (= (and b!617655 res!398013) b!617658))

(assert (= (and b!617658 res!398011) b!617640))

(assert (= (and b!617640 res!398017) b!617653))

(assert (= (and b!617653 res!398005) b!617648))

(assert (= (and b!617648 res!398008) b!617659))

(assert (= (and b!617659 res!398020) b!617652))

(assert (= (and b!617652 res!398010) b!617639))

(assert (= (and b!617639 res!398019) b!617641))

(assert (= (and b!617641 res!398015) b!617644))

(assert (= (and b!617641 c!70184) b!617651))

(assert (= (and b!617641 (not c!70184)) b!617645))

(assert (= (and b!617641 c!70186) b!617657))

(assert (= (and b!617641 (not c!70186)) b!617660))

(assert (= (and b!617657 res!398021) b!617662))

(assert (= (and b!617662 (not res!398007)) b!617650))

(assert (= (and b!617650 res!398018) b!617646))

(assert (= (and b!617657 c!70187) b!617663))

(assert (= (and b!617657 (not c!70187)) b!617654))

(assert (= (and b!617657 c!70185) b!617643))

(assert (= (and b!617657 (not c!70185)) b!617642))

(assert (= (and b!617643 res!398014) b!617661))

(assert (= (and b!617641 (not res!398009)) b!617647))

(declare-fun m!593769 () Bool)

(assert (=> b!617643 m!593769))

(declare-fun m!593771 () Bool)

(assert (=> b!617643 m!593771))

(assert (=> b!617643 m!593769))

(declare-fun m!593773 () Bool)

(assert (=> b!617643 m!593773))

(assert (=> b!617643 m!593769))

(declare-fun m!593775 () Bool)

(assert (=> b!617643 m!593775))

(declare-fun m!593777 () Bool)

(assert (=> b!617643 m!593777))

(assert (=> b!617643 m!593769))

(declare-fun m!593779 () Bool)

(assert (=> b!617643 m!593779))

(declare-fun m!593781 () Bool)

(assert (=> b!617643 m!593781))

(assert (=> b!617643 m!593769))

(declare-fun m!593783 () Bool)

(assert (=> b!617643 m!593783))

(declare-fun m!593785 () Bool)

(assert (=> b!617643 m!593785))

(declare-fun m!593787 () Bool)

(assert (=> b!617659 m!593787))

(declare-fun m!593789 () Bool)

(assert (=> b!617639 m!593789))

(assert (=> b!617639 m!593769))

(assert (=> b!617639 m!593769))

(declare-fun m!593791 () Bool)

(assert (=> b!617639 m!593791))

(declare-fun m!593793 () Bool)

(assert (=> b!617657 m!593793))

(declare-fun m!593795 () Bool)

(assert (=> b!617657 m!593795))

(assert (=> b!617657 m!593769))

(assert (=> b!617661 m!593769))

(assert (=> b!617661 m!593769))

(declare-fun m!593797 () Bool)

(assert (=> b!617661 m!593797))

(assert (=> b!617646 m!593769))

(assert (=> b!617646 m!593769))

(assert (=> b!617646 m!593797))

(assert (=> b!617650 m!593769))

(assert (=> b!617650 m!593769))

(assert (=> b!617650 m!593779))

(declare-fun m!593799 () Bool)

(assert (=> start!56076 m!593799))

(declare-fun m!593801 () Bool)

(assert (=> start!56076 m!593801))

(declare-fun m!593803 () Bool)

(assert (=> b!617648 m!593803))

(assert (=> b!617663 m!593769))

(declare-fun m!593805 () Bool)

(assert (=> b!617663 m!593805))

(assert (=> b!617663 m!593769))

(declare-fun m!593807 () Bool)

(assert (=> b!617663 m!593807))

(assert (=> b!617663 m!593769))

(declare-fun m!593809 () Bool)

(assert (=> b!617663 m!593809))

(assert (=> b!617663 m!593785))

(declare-fun m!593811 () Bool)

(assert (=> b!617663 m!593811))

(assert (=> b!617663 m!593781))

(assert (=> b!617663 m!593769))

(declare-fun m!593813 () Bool)

(assert (=> b!617663 m!593813))

(assert (=> b!617649 m!593769))

(assert (=> b!617649 m!593769))

(declare-fun m!593815 () Bool)

(assert (=> b!617649 m!593815))

(declare-fun m!593817 () Bool)

(assert (=> b!617658 m!593817))

(declare-fun m!593819 () Bool)

(assert (=> b!617653 m!593819))

(declare-fun m!593821 () Bool)

(assert (=> b!617640 m!593821))

(declare-fun m!593823 () Bool)

(assert (=> b!617655 m!593823))

(declare-fun m!593825 () Bool)

(assert (=> b!617641 m!593825))

(declare-fun m!593827 () Bool)

(assert (=> b!617641 m!593827))

(declare-fun m!593829 () Bool)

(assert (=> b!617641 m!593829))

(declare-fun m!593831 () Bool)

(assert (=> b!617641 m!593831))

(assert (=> b!617641 m!593793))

(declare-fun m!593833 () Bool)

(assert (=> b!617641 m!593833))

(assert (=> b!617641 m!593769))

(declare-fun m!593835 () Bool)

(assert (=> b!617641 m!593835))

(assert (=> b!617641 m!593769))

(assert (=> b!617647 m!593793))

(assert (=> b!617647 m!593795))

(assert (=> b!617652 m!593793))

(declare-fun m!593837 () Bool)

(assert (=> b!617652 m!593837))

(push 1)

