; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59568 () Bool)

(assert start!59568)

(declare-fun b!656886 () Bool)

(assert (=> b!656886 false))

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((Unit!22654 0))(
  ( (Unit!22655) )
))
(declare-fun lt!306729 () Unit!22654)

(declare-datatypes ((array!38682 0))(
  ( (array!38683 (arr!18534 (Array (_ BitVec 32) (_ BitVec 64))) (size!18898 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38682)

(declare-fun lt!306742 () array!38682)

(declare-datatypes ((List!12628 0))(
  ( (Nil!12625) (Cons!12624 (h!13669 (_ BitVec 64)) (t!18864 List!12628)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38682 (_ BitVec 64) (_ BitVec 32) List!12628) Unit!22654)

(assert (=> b!656886 (= lt!306729 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!306742 (select (arr!18534 a!2986) j!136) j!136 Nil!12625))))

(declare-fun arrayNoDuplicates!0 (array!38682 (_ BitVec 32) List!12628) Bool)

(assert (=> b!656886 (arrayNoDuplicates!0 lt!306742 j!136 Nil!12625)))

(declare-fun lt!306741 () Unit!22654)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38682 (_ BitVec 32) (_ BitVec 32)) Unit!22654)

(assert (=> b!656886 (= lt!306741 (lemmaNoDuplicateFromThenFromBigger!0 lt!306742 #b00000000000000000000000000000000 j!136))))

(assert (=> b!656886 (arrayNoDuplicates!0 lt!306742 #b00000000000000000000000000000000 Nil!12625)))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun lt!306735 () Unit!22654)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38682 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12628) Unit!22654)

(assert (=> b!656886 (= lt!306735 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12625))))

(declare-fun arrayContainsKey!0 (array!38682 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!656886 (arrayContainsKey!0 lt!306742 (select (arr!18534 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!306734 () Unit!22654)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38682 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22654)

(assert (=> b!656886 (= lt!306734 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!306742 (select (arr!18534 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun e!377351 () Unit!22654)

(declare-fun Unit!22656 () Unit!22654)

(assert (=> b!656886 (= e!377351 Unit!22656)))

(declare-fun b!656887 () Bool)

(declare-fun e!377350 () Unit!22654)

(declare-fun Unit!22657 () Unit!22654)

(assert (=> b!656887 (= e!377350 Unit!22657)))

(declare-fun b!656888 () Bool)

(declare-fun res!426051 () Bool)

(declare-fun e!377340 () Bool)

(assert (=> b!656888 (=> (not res!426051) (not e!377340))))

(assert (=> b!656888 (= res!426051 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!656889 () Bool)

(declare-fun e!377349 () Unit!22654)

(declare-fun Unit!22658 () Unit!22654)

(assert (=> b!656889 (= e!377349 Unit!22658)))

(assert (=> b!656889 false))

(declare-fun b!656890 () Bool)

(declare-fun res!426046 () Bool)

(declare-fun e!377348 () Bool)

(assert (=> b!656890 (=> (not res!426046) (not e!377348))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!656890 (= res!426046 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18534 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!656891 () Bool)

(declare-fun res!426045 () Bool)

(assert (=> b!656891 (=> (not res!426045) (not e!377340))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!656891 (= res!426045 (validKeyInArray!0 k!1786))))

(declare-fun b!656892 () Bool)

(declare-fun e!377346 () Bool)

(assert (=> b!656892 (= e!377346 true)))

(assert (=> b!656892 (= (select (store (arr!18534 a!2986) i!1108 k!1786) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun b!656893 () Bool)

(declare-fun Unit!22659 () Unit!22654)

(assert (=> b!656893 (= e!377349 Unit!22659)))

(declare-fun b!656894 () Bool)

(declare-fun e!377343 () Bool)

(assert (=> b!656894 (= e!377343 (arrayContainsKey!0 lt!306742 (select (arr!18534 a!2986) j!136) index!984))))

(declare-fun b!656895 () Bool)

(declare-fun e!377352 () Unit!22654)

(declare-fun Unit!22660 () Unit!22654)

(assert (=> b!656895 (= e!377352 Unit!22660)))

(declare-fun b!656896 () Bool)

(assert (=> b!656896 (= e!377340 e!377348)))

(declare-fun res!426054 () Bool)

(assert (=> b!656896 (=> (not res!426054) (not e!377348))))

(declare-datatypes ((SeekEntryResult!6981 0))(
  ( (MissingZero!6981 (index!30288 (_ BitVec 32))) (Found!6981 (index!30289 (_ BitVec 32))) (Intermediate!6981 (undefined!7793 Bool) (index!30290 (_ BitVec 32)) (x!59113 (_ BitVec 32))) (Undefined!6981) (MissingVacant!6981 (index!30291 (_ BitVec 32))) )
))
(declare-fun lt!306732 () SeekEntryResult!6981)

(assert (=> b!656896 (= res!426054 (or (= lt!306732 (MissingZero!6981 i!1108)) (= lt!306732 (MissingVacant!6981 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38682 (_ BitVec 32)) SeekEntryResult!6981)

(assert (=> b!656896 (= lt!306732 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!656897 () Bool)

(declare-fun res!426044 () Bool)

(assert (=> b!656897 (=> (not res!426044) (not e!377348))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38682 (_ BitVec 32)) Bool)

(assert (=> b!656897 (= res!426044 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun res!426053 () Bool)

(assert (=> start!59568 (=> (not res!426053) (not e!377340))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!59568 (= res!426053 (validMask!0 mask!3053))))

(assert (=> start!59568 e!377340))

(assert (=> start!59568 true))

(declare-fun array_inv!14308 (array!38682) Bool)

(assert (=> start!59568 (array_inv!14308 a!2986)))

(declare-fun b!656885 () Bool)

(declare-fun Unit!22661 () Unit!22654)

(assert (=> b!656885 (= e!377351 Unit!22661)))

(declare-fun b!656898 () Bool)

(assert (=> b!656898 false))

(declare-fun lt!306728 () Unit!22654)

(assert (=> b!656898 (= lt!306728 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!306742 (select (arr!18534 a!2986) j!136) index!984 Nil!12625))))

(assert (=> b!656898 (arrayNoDuplicates!0 lt!306742 index!984 Nil!12625)))

(declare-fun lt!306736 () Unit!22654)

(assert (=> b!656898 (= lt!306736 (lemmaNoDuplicateFromThenFromBigger!0 lt!306742 #b00000000000000000000000000000000 index!984))))

(assert (=> b!656898 (arrayNoDuplicates!0 lt!306742 #b00000000000000000000000000000000 Nil!12625)))

(declare-fun lt!306730 () Unit!22654)

(assert (=> b!656898 (= lt!306730 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12625))))

(assert (=> b!656898 (arrayContainsKey!0 lt!306742 (select (arr!18534 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!306737 () Unit!22654)

(assert (=> b!656898 (= lt!306737 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!306742 (select (arr!18534 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!656898 e!377343))

(declare-fun res!426049 () Bool)

(assert (=> b!656898 (=> (not res!426049) (not e!377343))))

(assert (=> b!656898 (= res!426049 (arrayContainsKey!0 lt!306742 (select (arr!18534 a!2986) j!136) j!136))))

(declare-fun Unit!22662 () Unit!22654)

(assert (=> b!656898 (= e!377350 Unit!22662)))

(declare-fun b!656899 () Bool)

(declare-fun e!377353 () Bool)

(declare-fun lt!306739 () SeekEntryResult!6981)

(declare-fun lt!306743 () SeekEntryResult!6981)

(assert (=> b!656899 (= e!377353 (= lt!306739 lt!306743))))

(declare-fun b!656900 () Bool)

(declare-fun res!426047 () Bool)

(assert (=> b!656900 (= res!426047 (bvsge j!136 index!984))))

(declare-fun e!377344 () Bool)

(assert (=> b!656900 (=> res!426047 e!377344)))

(declare-fun e!377345 () Bool)

(assert (=> b!656900 (= e!377345 e!377344)))

(declare-fun b!656901 () Bool)

(declare-fun res!426055 () Bool)

(assert (=> b!656901 (= res!426055 (arrayContainsKey!0 lt!306742 (select (arr!18534 a!2986) j!136) j!136))))

(declare-fun e!377339 () Bool)

(assert (=> b!656901 (=> (not res!426055) (not e!377339))))

(assert (=> b!656901 (= e!377344 e!377339)))

(declare-fun b!656902 () Bool)

(declare-fun e!377341 () Bool)

(assert (=> b!656902 (= e!377348 e!377341)))

(declare-fun res!426048 () Bool)

(assert (=> b!656902 (=> (not res!426048) (not e!377341))))

(assert (=> b!656902 (= res!426048 (= (select (store (arr!18534 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!656902 (= lt!306742 (array!38683 (store (arr!18534 a!2986) i!1108 k!1786) (size!18898 a!2986)))))

(declare-fun b!656903 () Bool)

(declare-fun Unit!22663 () Unit!22654)

(assert (=> b!656903 (= e!377352 Unit!22663)))

(declare-fun res!426052 () Bool)

(assert (=> b!656903 (= res!426052 (= (select (store (arr!18534 a!2986) i!1108 k!1786) index!984) (select (arr!18534 a!2986) j!136)))))

(assert (=> b!656903 (=> (not res!426052) (not e!377345))))

(assert (=> b!656903 e!377345))

(declare-fun c!75788 () Bool)

(assert (=> b!656903 (= c!75788 (bvslt j!136 index!984))))

(declare-fun lt!306744 () Unit!22654)

(assert (=> b!656903 (= lt!306744 e!377351)))

(declare-fun c!75791 () Bool)

(assert (=> b!656903 (= c!75791 (bvslt index!984 j!136))))

(declare-fun lt!306745 () Unit!22654)

(assert (=> b!656903 (= lt!306745 e!377350)))

(assert (=> b!656903 false))

(declare-fun b!656904 () Bool)

(declare-fun res!426058 () Bool)

(assert (=> b!656904 (=> (not res!426058) (not e!377348))))

(assert (=> b!656904 (= res!426058 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12625))))

(declare-fun b!656905 () Bool)

(assert (=> b!656905 (= e!377339 (arrayContainsKey!0 lt!306742 (select (arr!18534 a!2986) j!136) index!984))))

(declare-fun b!656906 () Bool)

(declare-fun res!426059 () Bool)

(assert (=> b!656906 (=> (not res!426059) (not e!377340))))

(assert (=> b!656906 (= res!426059 (validKeyInArray!0 (select (arr!18534 a!2986) j!136)))))

(declare-fun b!656907 () Bool)

(declare-fun e!377347 () Bool)

(assert (=> b!656907 (= e!377347 (not e!377346))))

(declare-fun res!426043 () Bool)

(assert (=> b!656907 (=> res!426043 e!377346)))

(declare-fun lt!306740 () SeekEntryResult!6981)

(assert (=> b!656907 (= res!426043 (not (= lt!306740 (MissingVacant!6981 vacantSpotIndex!68))))))

(declare-fun lt!306733 () Unit!22654)

(assert (=> b!656907 (= lt!306733 e!377352)))

(declare-fun c!75790 () Bool)

(assert (=> b!656907 (= c!75790 (= lt!306740 (Found!6981 index!984)))))

(declare-fun lt!306731 () Unit!22654)

(assert (=> b!656907 (= lt!306731 e!377349)))

(declare-fun c!75789 () Bool)

(assert (=> b!656907 (= c!75789 (= lt!306740 Undefined!6981))))

(declare-fun lt!306746 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38682 (_ BitVec 32)) SeekEntryResult!6981)

(assert (=> b!656907 (= lt!306740 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!306746 lt!306742 mask!3053))))

(assert (=> b!656907 e!377353))

(declare-fun res!426056 () Bool)

(assert (=> b!656907 (=> (not res!426056) (not e!377353))))

(declare-fun lt!306738 () (_ BitVec 32))

(assert (=> b!656907 (= res!426056 (= lt!306743 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!306738 vacantSpotIndex!68 lt!306746 lt!306742 mask!3053)))))

(assert (=> b!656907 (= lt!306743 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!306738 vacantSpotIndex!68 (select (arr!18534 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!656907 (= lt!306746 (select (store (arr!18534 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!306747 () Unit!22654)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38682 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22654)

(assert (=> b!656907 (= lt!306747 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!306738 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!656907 (= lt!306738 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!656908 () Bool)

(declare-fun res!426050 () Bool)

(assert (=> b!656908 (=> (not res!426050) (not e!377340))))

(assert (=> b!656908 (= res!426050 (and (= (size!18898 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18898 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18898 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!656909 () Bool)

(assert (=> b!656909 (= e!377341 e!377347)))

(declare-fun res!426057 () Bool)

(assert (=> b!656909 (=> (not res!426057) (not e!377347))))

(assert (=> b!656909 (= res!426057 (and (= lt!306739 (Found!6981 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18534 a!2986) index!984) (select (arr!18534 a!2986) j!136))) (not (= (select (arr!18534 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!656909 (= lt!306739 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18534 a!2986) j!136) a!2986 mask!3053))))

(assert (= (and start!59568 res!426053) b!656908))

(assert (= (and b!656908 res!426050) b!656906))

(assert (= (and b!656906 res!426059) b!656891))

(assert (= (and b!656891 res!426045) b!656888))

(assert (= (and b!656888 res!426051) b!656896))

(assert (= (and b!656896 res!426054) b!656897))

(assert (= (and b!656897 res!426044) b!656904))

(assert (= (and b!656904 res!426058) b!656890))

(assert (= (and b!656890 res!426046) b!656902))

(assert (= (and b!656902 res!426048) b!656909))

(assert (= (and b!656909 res!426057) b!656907))

(assert (= (and b!656907 res!426056) b!656899))

(assert (= (and b!656907 c!75789) b!656889))

(assert (= (and b!656907 (not c!75789)) b!656893))

(assert (= (and b!656907 c!75790) b!656903))

(assert (= (and b!656907 (not c!75790)) b!656895))

(assert (= (and b!656903 res!426052) b!656900))

(assert (= (and b!656900 (not res!426047)) b!656901))

(assert (= (and b!656901 res!426055) b!656905))

(assert (= (and b!656903 c!75788) b!656886))

(assert (= (and b!656903 (not c!75788)) b!656885))

(assert (= (and b!656903 c!75791) b!656898))

(assert (= (and b!656903 (not c!75791)) b!656887))

(assert (= (and b!656898 res!426049) b!656894))

(assert (= (and b!656907 (not res!426043)) b!656892))

(declare-fun m!630021 () Bool)

(assert (=> b!656901 m!630021))

(assert (=> b!656901 m!630021))

(declare-fun m!630023 () Bool)

(assert (=> b!656901 m!630023))

(declare-fun m!630025 () Bool)

(assert (=> start!59568 m!630025))

(declare-fun m!630027 () Bool)

(assert (=> start!59568 m!630027))

(assert (=> b!656886 m!630021))

(declare-fun m!630029 () Bool)

(assert (=> b!656886 m!630029))

(declare-fun m!630031 () Bool)

(assert (=> b!656886 m!630031))

(assert (=> b!656886 m!630021))

(assert (=> b!656886 m!630021))

(declare-fun m!630033 () Bool)

(assert (=> b!656886 m!630033))

(declare-fun m!630035 () Bool)

(assert (=> b!656886 m!630035))

(declare-fun m!630037 () Bool)

(assert (=> b!656886 m!630037))

(assert (=> b!656886 m!630021))

(declare-fun m!630039 () Bool)

(assert (=> b!656886 m!630039))

(declare-fun m!630041 () Bool)

(assert (=> b!656886 m!630041))

(declare-fun m!630043 () Bool)

(assert (=> b!656903 m!630043))

(declare-fun m!630045 () Bool)

(assert (=> b!656903 m!630045))

(assert (=> b!656903 m!630021))

(declare-fun m!630047 () Bool)

(assert (=> b!656897 m!630047))

(declare-fun m!630049 () Bool)

(assert (=> b!656904 m!630049))

(assert (=> b!656905 m!630021))

(assert (=> b!656905 m!630021))

(declare-fun m!630051 () Bool)

(assert (=> b!656905 m!630051))

(declare-fun m!630053 () Bool)

(assert (=> b!656909 m!630053))

(assert (=> b!656909 m!630021))

(assert (=> b!656909 m!630021))

(declare-fun m!630055 () Bool)

(assert (=> b!656909 m!630055))

(declare-fun m!630057 () Bool)

(assert (=> b!656898 m!630057))

(assert (=> b!656898 m!630021))

(declare-fun m!630059 () Bool)

(assert (=> b!656898 m!630059))

(assert (=> b!656898 m!630035))

(assert (=> b!656898 m!630021))

(assert (=> b!656898 m!630021))

(declare-fun m!630061 () Bool)

(assert (=> b!656898 m!630061))

(assert (=> b!656898 m!630021))

(assert (=> b!656898 m!630023))

(declare-fun m!630063 () Bool)

(assert (=> b!656898 m!630063))

(assert (=> b!656898 m!630021))

(declare-fun m!630065 () Bool)

(assert (=> b!656898 m!630065))

(assert (=> b!656898 m!630041))

(assert (=> b!656906 m!630021))

(assert (=> b!656906 m!630021))

(declare-fun m!630067 () Bool)

(assert (=> b!656906 m!630067))

(declare-fun m!630069 () Bool)

(assert (=> b!656891 m!630069))

(declare-fun m!630071 () Bool)

(assert (=> b!656888 m!630071))

(assert (=> b!656892 m!630043))

(assert (=> b!656892 m!630045))

(declare-fun m!630073 () Bool)

(assert (=> b!656890 m!630073))

(assert (=> b!656894 m!630021))

(assert (=> b!656894 m!630021))

(assert (=> b!656894 m!630051))

(declare-fun m!630075 () Bool)

(assert (=> b!656907 m!630075))

(declare-fun m!630077 () Bool)

(assert (=> b!656907 m!630077))

(assert (=> b!656907 m!630021))

(declare-fun m!630079 () Bool)

(assert (=> b!656907 m!630079))

(assert (=> b!656907 m!630043))

(assert (=> b!656907 m!630021))

(declare-fun m!630081 () Bool)

(assert (=> b!656907 m!630081))

(declare-fun m!630083 () Bool)

(assert (=> b!656907 m!630083))

(declare-fun m!630085 () Bool)

(assert (=> b!656907 m!630085))

(declare-fun m!630087 () Bool)

(assert (=> b!656896 m!630087))

(assert (=> b!656902 m!630043))

(declare-fun m!630089 () Bool)

(assert (=> b!656902 m!630089))

(push 1)

