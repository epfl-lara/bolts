; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56020 () Bool)

(assert start!56020)

(declare-fun b!615558 () Bool)

(declare-fun res!396610 () Bool)

(declare-fun e!352949 () Bool)

(assert (=> b!615558 (=> (not res!396610) (not e!352949))))

(declare-datatypes ((array!37453 0))(
  ( (array!37454 (arr!17969 (Array (_ BitVec 32) (_ BitVec 64))) (size!18333 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37453)

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!37453 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!615558 (= res!396610 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!615559 () Bool)

(declare-datatypes ((Unit!19980 0))(
  ( (Unit!19981) )
))
(declare-fun e!352952 () Unit!19980)

(declare-fun Unit!19982 () Unit!19980)

(assert (=> b!615559 (= e!352952 Unit!19982)))

(declare-fun b!615560 () Bool)

(assert (=> b!615560 false))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!282921 () Unit!19980)

(declare-fun lt!282932 () array!37453)

(declare-datatypes ((List!12063 0))(
  ( (Nil!12060) (Cons!12059 (h!13104 (_ BitVec 64)) (t!18299 List!12063)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37453 (_ BitVec 64) (_ BitVec 32) List!12063) Unit!19980)

(assert (=> b!615560 (= lt!282921 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!282932 (select (arr!17969 a!2986) j!136) j!136 Nil!12060))))

(declare-fun arrayNoDuplicates!0 (array!37453 (_ BitVec 32) List!12063) Bool)

(assert (=> b!615560 (arrayNoDuplicates!0 lt!282932 j!136 Nil!12060)))

(declare-fun lt!282917 () Unit!19980)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37453 (_ BitVec 32) (_ BitVec 32)) Unit!19980)

(assert (=> b!615560 (= lt!282917 (lemmaNoDuplicateFromThenFromBigger!0 lt!282932 #b00000000000000000000000000000000 j!136))))

(assert (=> b!615560 (arrayNoDuplicates!0 lt!282932 #b00000000000000000000000000000000 Nil!12060)))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun lt!282926 () Unit!19980)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37453 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12063) Unit!19980)

(assert (=> b!615560 (= lt!282926 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12060))))

(assert (=> b!615560 (arrayContainsKey!0 lt!282932 (select (arr!17969 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!282922 () Unit!19980)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37453 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19980)

(assert (=> b!615560 (= lt!282922 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!282932 (select (arr!17969 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun e!352947 () Unit!19980)

(declare-fun Unit!19983 () Unit!19980)

(assert (=> b!615560 (= e!352947 Unit!19983)))

(declare-fun b!615561 () Bool)

(declare-fun e!352951 () Bool)

(declare-fun e!352942 () Bool)

(assert (=> b!615561 (= e!352951 e!352942)))

(declare-fun res!396608 () Bool)

(assert (=> b!615561 (=> (not res!396608) (not e!352942))))

(declare-datatypes ((SeekEntryResult!6416 0))(
  ( (MissingZero!6416 (index!27947 (_ BitVec 32))) (Found!6416 (index!27948 (_ BitVec 32))) (Intermediate!6416 (undefined!7228 Bool) (index!27949 (_ BitVec 32)) (x!56769 (_ BitVec 32))) (Undefined!6416) (MissingVacant!6416 (index!27950 (_ BitVec 32))) )
))
(declare-fun lt!282928 () SeekEntryResult!6416)

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!615561 (= res!396608 (and (= lt!282928 (Found!6416 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17969 a!2986) index!984) (select (arr!17969 a!2986) j!136))) (not (= (select (arr!17969 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37453 (_ BitVec 32)) SeekEntryResult!6416)

(assert (=> b!615561 (= lt!282928 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17969 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!615562 () Bool)

(declare-fun e!352944 () Unit!19980)

(declare-fun Unit!19984 () Unit!19980)

(assert (=> b!615562 (= e!352944 Unit!19984)))

(assert (=> b!615562 false))

(declare-fun b!615563 () Bool)

(declare-fun e!352948 () Bool)

(declare-fun lt!282927 () SeekEntryResult!6416)

(assert (=> b!615563 (= e!352948 (= lt!282928 lt!282927))))

(declare-fun b!615564 () Bool)

(declare-fun res!396606 () Bool)

(assert (=> b!615564 (=> (not res!396606) (not e!352949))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!615564 (= res!396606 (validKeyInArray!0 k!1786))))

(declare-fun b!615566 () Bool)

(declare-fun Unit!19985 () Unit!19980)

(assert (=> b!615566 (= e!352952 Unit!19985)))

(declare-fun res!396609 () Bool)

(assert (=> b!615566 (= res!396609 (= (select (store (arr!17969 a!2986) i!1108 k!1786) index!984) (select (arr!17969 a!2986) j!136)))))

(declare-fun e!352941 () Bool)

(assert (=> b!615566 (=> (not res!396609) (not e!352941))))

(assert (=> b!615566 e!352941))

(declare-fun c!69851 () Bool)

(assert (=> b!615566 (= c!69851 (bvslt j!136 index!984))))

(declare-fun lt!282931 () Unit!19980)

(assert (=> b!615566 (= lt!282931 e!352947)))

(declare-fun c!69849 () Bool)

(assert (=> b!615566 (= c!69849 (bvslt index!984 j!136))))

(declare-fun lt!282924 () Unit!19980)

(declare-fun e!352943 () Unit!19980)

(assert (=> b!615566 (= lt!282924 e!352943)))

(assert (=> b!615566 false))

(declare-fun b!615567 () Bool)

(declare-fun res!396607 () Bool)

(assert (=> b!615567 (=> (not res!396607) (not e!352949))))

(assert (=> b!615567 (= res!396607 (validKeyInArray!0 (select (arr!17969 a!2986) j!136)))))

(declare-fun b!615568 () Bool)

(declare-fun Unit!19986 () Unit!19980)

(assert (=> b!615568 (= e!352943 Unit!19986)))

(declare-fun b!615569 () Bool)

(declare-fun Unit!19987 () Unit!19980)

(assert (=> b!615569 (= e!352947 Unit!19987)))

(declare-fun b!615570 () Bool)

(declare-fun e!352945 () Bool)

(assert (=> b!615570 (= e!352945 e!352951)))

(declare-fun res!396599 () Bool)

(assert (=> b!615570 (=> (not res!396599) (not e!352951))))

(assert (=> b!615570 (= res!396599 (= (select (store (arr!17969 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!615570 (= lt!282932 (array!37454 (store (arr!17969 a!2986) i!1108 k!1786) (size!18333 a!2986)))))

(declare-fun b!615571 () Bool)

(assert (=> b!615571 false))

(declare-fun lt!282930 () Unit!19980)

(assert (=> b!615571 (= lt!282930 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!282932 (select (arr!17969 a!2986) j!136) index!984 Nil!12060))))

(assert (=> b!615571 (arrayNoDuplicates!0 lt!282932 index!984 Nil!12060)))

(declare-fun lt!282935 () Unit!19980)

(assert (=> b!615571 (= lt!282935 (lemmaNoDuplicateFromThenFromBigger!0 lt!282932 #b00000000000000000000000000000000 index!984))))

(assert (=> b!615571 (arrayNoDuplicates!0 lt!282932 #b00000000000000000000000000000000 Nil!12060)))

(declare-fun lt!282925 () Unit!19980)

(assert (=> b!615571 (= lt!282925 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12060))))

(assert (=> b!615571 (arrayContainsKey!0 lt!282932 (select (arr!17969 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!282923 () Unit!19980)

(assert (=> b!615571 (= lt!282923 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!282932 (select (arr!17969 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!352946 () Bool)

(assert (=> b!615571 e!352946))

(declare-fun res!396605 () Bool)

(assert (=> b!615571 (=> (not res!396605) (not e!352946))))

(assert (=> b!615571 (= res!396605 (arrayContainsKey!0 lt!282932 (select (arr!17969 a!2986) j!136) j!136))))

(declare-fun Unit!19988 () Unit!19980)

(assert (=> b!615571 (= e!352943 Unit!19988)))

(declare-fun b!615572 () Bool)

(declare-fun res!396602 () Bool)

(assert (=> b!615572 (= res!396602 (bvsge j!136 index!984))))

(declare-fun e!352954 () Bool)

(assert (=> b!615572 (=> res!396602 e!352954)))

(assert (=> b!615572 (= e!352941 e!352954)))

(declare-fun b!615573 () Bool)

(declare-fun res!396611 () Bool)

(assert (=> b!615573 (=> (not res!396611) (not e!352945))))

(assert (=> b!615573 (= res!396611 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17969 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!615574 () Bool)

(declare-fun res!396604 () Bool)

(assert (=> b!615574 (=> (not res!396604) (not e!352949))))

(assert (=> b!615574 (= res!396604 (and (= (size!18333 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18333 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18333 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!615575 () Bool)

(declare-fun res!396600 () Bool)

(assert (=> b!615575 (=> (not res!396600) (not e!352945))))

(assert (=> b!615575 (= res!396600 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12060))))

(declare-fun res!396603 () Bool)

(assert (=> start!56020 (=> (not res!396603) (not e!352949))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56020 (= res!396603 (validMask!0 mask!3053))))

(assert (=> start!56020 e!352949))

(assert (=> start!56020 true))

(declare-fun array_inv!13743 (array!37453) Bool)

(assert (=> start!56020 (array_inv!13743 a!2986)))

(declare-fun b!615565 () Bool)

(assert (=> b!615565 (= e!352946 (arrayContainsKey!0 lt!282932 (select (arr!17969 a!2986) j!136) index!984))))

(declare-fun b!615576 () Bool)

(declare-fun res!396601 () Bool)

(assert (=> b!615576 (= res!396601 (arrayContainsKey!0 lt!282932 (select (arr!17969 a!2986) j!136) j!136))))

(declare-fun e!352950 () Bool)

(assert (=> b!615576 (=> (not res!396601) (not e!352950))))

(assert (=> b!615576 (= e!352954 e!352950)))

(declare-fun b!615577 () Bool)

(assert (=> b!615577 (= e!352950 (arrayContainsKey!0 lt!282932 (select (arr!17969 a!2986) j!136) index!984))))

(declare-fun b!615578 () Bool)

(declare-fun Unit!19989 () Unit!19980)

(assert (=> b!615578 (= e!352944 Unit!19989)))

(declare-fun b!615579 () Bool)

(assert (=> b!615579 (= e!352942 (not true))))

(declare-fun lt!282934 () Unit!19980)

(assert (=> b!615579 (= lt!282934 e!352952)))

(declare-fun c!69848 () Bool)

(declare-fun lt!282919 () SeekEntryResult!6416)

(assert (=> b!615579 (= c!69848 (= lt!282919 (Found!6416 index!984)))))

(declare-fun lt!282936 () Unit!19980)

(assert (=> b!615579 (= lt!282936 e!352944)))

(declare-fun c!69850 () Bool)

(assert (=> b!615579 (= c!69850 (= lt!282919 Undefined!6416))))

(declare-fun lt!282933 () (_ BitVec 64))

(assert (=> b!615579 (= lt!282919 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!282933 lt!282932 mask!3053))))

(assert (=> b!615579 e!352948))

(declare-fun res!396597 () Bool)

(assert (=> b!615579 (=> (not res!396597) (not e!352948))))

(declare-fun lt!282929 () (_ BitVec 32))

(assert (=> b!615579 (= res!396597 (= lt!282927 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!282929 vacantSpotIndex!68 lt!282933 lt!282932 mask!3053)))))

(assert (=> b!615579 (= lt!282927 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!282929 vacantSpotIndex!68 (select (arr!17969 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!615579 (= lt!282933 (select (store (arr!17969 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!282920 () Unit!19980)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37453 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19980)

(assert (=> b!615579 (= lt!282920 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!282929 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!615579 (= lt!282929 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!615580 () Bool)

(assert (=> b!615580 (= e!352949 e!352945)))

(declare-fun res!396596 () Bool)

(assert (=> b!615580 (=> (not res!396596) (not e!352945))))

(declare-fun lt!282918 () SeekEntryResult!6416)

(assert (=> b!615580 (= res!396596 (or (= lt!282918 (MissingZero!6416 i!1108)) (= lt!282918 (MissingVacant!6416 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37453 (_ BitVec 32)) SeekEntryResult!6416)

(assert (=> b!615580 (= lt!282918 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!615581 () Bool)

(declare-fun res!396598 () Bool)

(assert (=> b!615581 (=> (not res!396598) (not e!352945))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37453 (_ BitVec 32)) Bool)

(assert (=> b!615581 (= res!396598 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(assert (= (and start!56020 res!396603) b!615574))

(assert (= (and b!615574 res!396604) b!615567))

(assert (= (and b!615567 res!396607) b!615564))

(assert (= (and b!615564 res!396606) b!615558))

(assert (= (and b!615558 res!396610) b!615580))

(assert (= (and b!615580 res!396596) b!615581))

(assert (= (and b!615581 res!396598) b!615575))

(assert (= (and b!615575 res!396600) b!615573))

(assert (= (and b!615573 res!396611) b!615570))

(assert (= (and b!615570 res!396599) b!615561))

(assert (= (and b!615561 res!396608) b!615579))

(assert (= (and b!615579 res!396597) b!615563))

(assert (= (and b!615579 c!69850) b!615562))

(assert (= (and b!615579 (not c!69850)) b!615578))

(assert (= (and b!615579 c!69848) b!615566))

(assert (= (and b!615579 (not c!69848)) b!615559))

(assert (= (and b!615566 res!396609) b!615572))

(assert (= (and b!615572 (not res!396602)) b!615576))

(assert (= (and b!615576 res!396601) b!615577))

(assert (= (and b!615566 c!69851) b!615560))

(assert (= (and b!615566 (not c!69851)) b!615569))

(assert (= (and b!615566 c!69849) b!615571))

(assert (= (and b!615566 (not c!69849)) b!615568))

(assert (= (and b!615571 res!396605) b!615565))

(declare-fun m!591803 () Bool)

(assert (=> b!615577 m!591803))

(assert (=> b!615577 m!591803))

(declare-fun m!591805 () Bool)

(assert (=> b!615577 m!591805))

(declare-fun m!591807 () Bool)

(assert (=> b!615570 m!591807))

(declare-fun m!591809 () Bool)

(assert (=> b!615570 m!591809))

(assert (=> b!615571 m!591803))

(declare-fun m!591811 () Bool)

(assert (=> b!615571 m!591811))

(assert (=> b!615571 m!591803))

(assert (=> b!615571 m!591803))

(declare-fun m!591813 () Bool)

(assert (=> b!615571 m!591813))

(assert (=> b!615571 m!591803))

(declare-fun m!591815 () Bool)

(assert (=> b!615571 m!591815))

(declare-fun m!591817 () Bool)

(assert (=> b!615571 m!591817))

(declare-fun m!591819 () Bool)

(assert (=> b!615571 m!591819))

(declare-fun m!591821 () Bool)

(assert (=> b!615571 m!591821))

(declare-fun m!591823 () Bool)

(assert (=> b!615571 m!591823))

(assert (=> b!615571 m!591803))

(declare-fun m!591825 () Bool)

(assert (=> b!615571 m!591825))

(declare-fun m!591827 () Bool)

(assert (=> b!615580 m!591827))

(declare-fun m!591829 () Bool)

(assert (=> b!615581 m!591829))

(declare-fun m!591831 () Bool)

(assert (=> b!615579 m!591831))

(declare-fun m!591833 () Bool)

(assert (=> b!615579 m!591833))

(assert (=> b!615579 m!591803))

(assert (=> b!615579 m!591807))

(declare-fun m!591835 () Bool)

(assert (=> b!615579 m!591835))

(declare-fun m!591837 () Bool)

(assert (=> b!615579 m!591837))

(assert (=> b!615579 m!591803))

(declare-fun m!591839 () Bool)

(assert (=> b!615579 m!591839))

(declare-fun m!591841 () Bool)

(assert (=> b!615579 m!591841))

(declare-fun m!591843 () Bool)

(assert (=> b!615560 m!591843))

(assert (=> b!615560 m!591803))

(assert (=> b!615560 m!591803))

(declare-fun m!591845 () Bool)

(assert (=> b!615560 m!591845))

(assert (=> b!615560 m!591803))

(declare-fun m!591847 () Bool)

(assert (=> b!615560 m!591847))

(declare-fun m!591849 () Bool)

(assert (=> b!615560 m!591849))

(assert (=> b!615560 m!591803))

(declare-fun m!591851 () Bool)

(assert (=> b!615560 m!591851))

(assert (=> b!615560 m!591819))

(assert (=> b!615560 m!591821))

(assert (=> b!615567 m!591803))

(assert (=> b!615567 m!591803))

(declare-fun m!591853 () Bool)

(assert (=> b!615567 m!591853))

(declare-fun m!591855 () Bool)

(assert (=> b!615575 m!591855))

(declare-fun m!591857 () Bool)

(assert (=> b!615564 m!591857))

(declare-fun m!591859 () Bool)

(assert (=> b!615573 m!591859))

(assert (=> b!615565 m!591803))

(assert (=> b!615565 m!591803))

(assert (=> b!615565 m!591805))

(assert (=> b!615566 m!591807))

(declare-fun m!591861 () Bool)

(assert (=> b!615566 m!591861))

(assert (=> b!615566 m!591803))

(declare-fun m!591863 () Bool)

(assert (=> b!615558 m!591863))

(assert (=> b!615576 m!591803))

(assert (=> b!615576 m!591803))

(assert (=> b!615576 m!591811))

(declare-fun m!591865 () Bool)

(assert (=> b!615561 m!591865))

(assert (=> b!615561 m!591803))

(assert (=> b!615561 m!591803))

(declare-fun m!591867 () Bool)

(assert (=> b!615561 m!591867))

(declare-fun m!591869 () Bool)

(assert (=> start!56020 m!591869))

(declare-fun m!591871 () Bool)

(assert (=> start!56020 m!591871))

(push 1)

