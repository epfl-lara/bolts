; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!57720 () Bool)

(assert start!57720)

(declare-fun b!637798 () Bool)

(declare-fun e!364954 () Bool)

(declare-fun e!364962 () Bool)

(assert (=> b!637798 (= e!364954 e!364962)))

(declare-fun res!412843 () Bool)

(assert (=> b!637798 (=> res!412843 e!364962)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!294970 () (_ BitVec 64))

(declare-fun lt!294965 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!38247 0))(
  ( (array!38248 (arr!18342 (Array (_ BitVec 32) (_ BitVec 64))) (size!18706 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38247)

(assert (=> b!637798 (= res!412843 (or (not (= (select (arr!18342 a!2986) j!136) lt!294970)) (not (= (select (arr!18342 a!2986) j!136) lt!294965)) (bvsge j!136 index!984)))))

(declare-fun b!637799 () Bool)

(declare-fun e!364955 () Bool)

(declare-datatypes ((SeekEntryResult!6789 0))(
  ( (MissingZero!6789 (index!29469 (_ BitVec 32))) (Found!6789 (index!29470 (_ BitVec 32))) (Intermediate!6789 (undefined!7601 Bool) (index!29471 (_ BitVec 32)) (x!58256 (_ BitVec 32))) (Undefined!6789) (MissingVacant!6789 (index!29472 (_ BitVec 32))) )
))
(declare-fun lt!294966 () SeekEntryResult!6789)

(declare-fun lt!294964 () SeekEntryResult!6789)

(assert (=> b!637799 (= e!364955 (= lt!294966 lt!294964))))

(declare-fun b!637800 () Bool)

(declare-fun e!364960 () Bool)

(declare-fun e!364961 () Bool)

(assert (=> b!637800 (= e!364960 e!364961)))

(declare-fun res!412839 () Bool)

(assert (=> b!637800 (=> res!412839 e!364961)))

(assert (=> b!637800 (= res!412839 (or (bvsge (size!18706 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18706 a!2986))))))

(declare-fun lt!294969 () array!38247)

(declare-fun arrayContainsKey!0 (array!38247 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!637800 (arrayContainsKey!0 lt!294969 (select (arr!18342 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-datatypes ((Unit!21514 0))(
  ( (Unit!21515) )
))
(declare-fun lt!294971 () Unit!21514)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38247 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21514)

(assert (=> b!637800 (= lt!294971 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!294969 (select (arr!18342 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!637801 () Bool)

(declare-fun res!412841 () Bool)

(declare-fun e!364965 () Bool)

(assert (=> b!637801 (=> (not res!412841) (not e!364965))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!637801 (= res!412841 (validKeyInArray!0 k!1786))))

(declare-fun b!637802 () Bool)

(declare-fun res!412834 () Bool)

(assert (=> b!637802 (=> (not res!412834) (not e!364965))))

(assert (=> b!637802 (= res!412834 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!637803 () Bool)

(declare-fun res!412846 () Bool)

(assert (=> b!637803 (=> (not res!412846) (not e!364965))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!637803 (= res!412846 (and (= (size!18706 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18706 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18706 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!637804 () Bool)

(declare-fun res!412836 () Bool)

(assert (=> b!637804 (=> res!412836 e!364961)))

(declare-datatypes ((List!12436 0))(
  ( (Nil!12433) (Cons!12432 (h!13477 (_ BitVec 64)) (t!18672 List!12436)) )
))
(declare-fun contains!3119 (List!12436 (_ BitVec 64)) Bool)

(assert (=> b!637804 (= res!412836 (contains!3119 Nil!12433 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!637805 () Bool)

(declare-fun e!364957 () Bool)

(assert (=> b!637805 (= e!364957 e!364960)))

(declare-fun res!412840 () Bool)

(assert (=> b!637805 (=> res!412840 e!364960)))

(assert (=> b!637805 (= res!412840 (or (not (= (select (arr!18342 a!2986) j!136) lt!294970)) (not (= (select (arr!18342 a!2986) j!136) lt!294965)) (bvsge j!136 index!984)))))

(assert (=> b!637805 e!364954))

(declare-fun res!412849 () Bool)

(assert (=> b!637805 (=> (not res!412849) (not e!364954))))

(assert (=> b!637805 (= res!412849 (= lt!294965 (select (arr!18342 a!2986) j!136)))))

(assert (=> b!637805 (= lt!294965 (select (store (arr!18342 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!637806 () Bool)

(declare-fun e!364964 () Unit!21514)

(declare-fun Unit!21516 () Unit!21514)

(assert (=> b!637806 (= e!364964 Unit!21516)))

(declare-fun b!637807 () Bool)

(declare-fun res!412838 () Bool)

(assert (=> b!637807 (=> res!412838 e!364961)))

(declare-fun noDuplicate!394 (List!12436) Bool)

(assert (=> b!637807 (= res!412838 (not (noDuplicate!394 Nil!12433)))))

(declare-fun b!637808 () Bool)

(assert (=> b!637808 (= e!364961 true)))

(declare-fun lt!294967 () Bool)

(assert (=> b!637808 (= lt!294967 (contains!3119 Nil!12433 k!1786))))

(declare-fun b!637809 () Bool)

(declare-fun e!364959 () Bool)

(assert (=> b!637809 (= e!364959 (arrayContainsKey!0 lt!294969 (select (arr!18342 a!2986) j!136) index!984))))

(declare-fun b!637810 () Bool)

(declare-fun Unit!21517 () Unit!21514)

(assert (=> b!637810 (= e!364964 Unit!21517)))

(assert (=> b!637810 false))

(declare-fun res!412847 () Bool)

(assert (=> start!57720 (=> (not res!412847) (not e!364965))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57720 (= res!412847 (validMask!0 mask!3053))))

(assert (=> start!57720 e!364965))

(assert (=> start!57720 true))

(declare-fun array_inv!14116 (array!38247) Bool)

(assert (=> start!57720 (array_inv!14116 a!2986)))

(declare-fun b!637811 () Bool)

(declare-fun res!412845 () Bool)

(declare-fun e!364963 () Bool)

(assert (=> b!637811 (=> (not res!412845) (not e!364963))))

(declare-fun arrayNoDuplicates!0 (array!38247 (_ BitVec 32) List!12436) Bool)

(assert (=> b!637811 (= res!412845 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12433))))

(declare-fun b!637812 () Bool)

(declare-fun res!412837 () Bool)

(assert (=> b!637812 (=> (not res!412837) (not e!364965))))

(assert (=> b!637812 (= res!412837 (validKeyInArray!0 (select (arr!18342 a!2986) j!136)))))

(declare-fun b!637813 () Bool)

(assert (=> b!637813 (= e!364962 e!364959)))

(declare-fun res!412830 () Bool)

(assert (=> b!637813 (=> (not res!412830) (not e!364959))))

(assert (=> b!637813 (= res!412830 (arrayContainsKey!0 lt!294969 (select (arr!18342 a!2986) j!136) j!136))))

(declare-fun b!637814 () Bool)

(declare-fun res!412832 () Bool)

(assert (=> b!637814 (=> (not res!412832) (not e!364963))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!637814 (= res!412832 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18342 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!637815 () Bool)

(assert (=> b!637815 (= e!364965 e!364963)))

(declare-fun res!412844 () Bool)

(assert (=> b!637815 (=> (not res!412844) (not e!364963))))

(declare-fun lt!294968 () SeekEntryResult!6789)

(assert (=> b!637815 (= res!412844 (or (= lt!294968 (MissingZero!6789 i!1108)) (= lt!294968 (MissingVacant!6789 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38247 (_ BitVec 32)) SeekEntryResult!6789)

(assert (=> b!637815 (= lt!294968 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!637816 () Bool)

(declare-fun e!364956 () Bool)

(assert (=> b!637816 (= e!364956 (not e!364957))))

(declare-fun res!412850 () Bool)

(assert (=> b!637816 (=> res!412850 e!364957)))

(declare-fun lt!294973 () SeekEntryResult!6789)

(assert (=> b!637816 (= res!412850 (not (= lt!294973 (Found!6789 index!984))))))

(declare-fun lt!294975 () Unit!21514)

(assert (=> b!637816 (= lt!294975 e!364964)))

(declare-fun c!72851 () Bool)

(assert (=> b!637816 (= c!72851 (= lt!294973 Undefined!6789))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38247 (_ BitVec 32)) SeekEntryResult!6789)

(assert (=> b!637816 (= lt!294973 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!294970 lt!294969 mask!3053))))

(assert (=> b!637816 e!364955))

(declare-fun res!412831 () Bool)

(assert (=> b!637816 (=> (not res!412831) (not e!364955))))

(declare-fun lt!294972 () (_ BitVec 32))

(assert (=> b!637816 (= res!412831 (= lt!294964 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!294972 vacantSpotIndex!68 lt!294970 lt!294969 mask!3053)))))

(assert (=> b!637816 (= lt!294964 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!294972 vacantSpotIndex!68 (select (arr!18342 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!637816 (= lt!294970 (select (store (arr!18342 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!294974 () Unit!21514)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38247 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21514)

(assert (=> b!637816 (= lt!294974 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!294972 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!637816 (= lt!294972 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!637817 () Bool)

(declare-fun res!412835 () Bool)

(assert (=> b!637817 (=> res!412835 e!364961)))

(assert (=> b!637817 (= res!412835 (contains!3119 Nil!12433 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!637818 () Bool)

(declare-fun e!364958 () Bool)

(assert (=> b!637818 (= e!364958 e!364956)))

(declare-fun res!412833 () Bool)

(assert (=> b!637818 (=> (not res!412833) (not e!364956))))

(assert (=> b!637818 (= res!412833 (and (= lt!294966 (Found!6789 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18342 a!2986) index!984) (select (arr!18342 a!2986) j!136))) (not (= (select (arr!18342 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!637818 (= lt!294966 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18342 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!637819 () Bool)

(assert (=> b!637819 (= e!364963 e!364958)))

(declare-fun res!412842 () Bool)

(assert (=> b!637819 (=> (not res!412842) (not e!364958))))

(assert (=> b!637819 (= res!412842 (= (select (store (arr!18342 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!637819 (= lt!294969 (array!38248 (store (arr!18342 a!2986) i!1108 k!1786) (size!18706 a!2986)))))

(declare-fun b!637820 () Bool)

(declare-fun res!412848 () Bool)

(assert (=> b!637820 (=> (not res!412848) (not e!364963))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38247 (_ BitVec 32)) Bool)

(assert (=> b!637820 (= res!412848 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(assert (= (and start!57720 res!412847) b!637803))

(assert (= (and b!637803 res!412846) b!637812))

(assert (= (and b!637812 res!412837) b!637801))

(assert (= (and b!637801 res!412841) b!637802))

(assert (= (and b!637802 res!412834) b!637815))

(assert (= (and b!637815 res!412844) b!637820))

(assert (= (and b!637820 res!412848) b!637811))

(assert (= (and b!637811 res!412845) b!637814))

(assert (= (and b!637814 res!412832) b!637819))

(assert (= (and b!637819 res!412842) b!637818))

(assert (= (and b!637818 res!412833) b!637816))

(assert (= (and b!637816 res!412831) b!637799))

(assert (= (and b!637816 c!72851) b!637810))

(assert (= (and b!637816 (not c!72851)) b!637806))

(assert (= (and b!637816 (not res!412850)) b!637805))

(assert (= (and b!637805 res!412849) b!637798))

(assert (= (and b!637798 (not res!412843)) b!637813))

(assert (= (and b!637813 res!412830) b!637809))

(assert (= (and b!637805 (not res!412840)) b!637800))

(assert (= (and b!637800 (not res!412839)) b!637807))

(assert (= (and b!637807 (not res!412838)) b!637804))

(assert (= (and b!637804 (not res!412836)) b!637817))

(assert (= (and b!637817 (not res!412835)) b!637808))

(declare-fun m!611859 () Bool)

(assert (=> b!637818 m!611859))

(declare-fun m!611861 () Bool)

(assert (=> b!637818 m!611861))

(assert (=> b!637818 m!611861))

(declare-fun m!611863 () Bool)

(assert (=> b!637818 m!611863))

(assert (=> b!637798 m!611861))

(declare-fun m!611865 () Bool)

(assert (=> b!637802 m!611865))

(declare-fun m!611867 () Bool)

(assert (=> b!637814 m!611867))

(declare-fun m!611869 () Bool)

(assert (=> b!637808 m!611869))

(assert (=> b!637812 m!611861))

(assert (=> b!637812 m!611861))

(declare-fun m!611871 () Bool)

(assert (=> b!637812 m!611871))

(declare-fun m!611873 () Bool)

(assert (=> b!637819 m!611873))

(declare-fun m!611875 () Bool)

(assert (=> b!637819 m!611875))

(declare-fun m!611877 () Bool)

(assert (=> b!637807 m!611877))

(assert (=> b!637800 m!611861))

(assert (=> b!637800 m!611861))

(declare-fun m!611879 () Bool)

(assert (=> b!637800 m!611879))

(assert (=> b!637800 m!611861))

(declare-fun m!611881 () Bool)

(assert (=> b!637800 m!611881))

(declare-fun m!611883 () Bool)

(assert (=> b!637811 m!611883))

(declare-fun m!611885 () Bool)

(assert (=> b!637804 m!611885))

(declare-fun m!611887 () Bool)

(assert (=> b!637820 m!611887))

(assert (=> b!637809 m!611861))

(assert (=> b!637809 m!611861))

(declare-fun m!611889 () Bool)

(assert (=> b!637809 m!611889))

(assert (=> b!637805 m!611861))

(assert (=> b!637805 m!611873))

(declare-fun m!611891 () Bool)

(assert (=> b!637805 m!611891))

(declare-fun m!611893 () Bool)

(assert (=> b!637817 m!611893))

(declare-fun m!611895 () Bool)

(assert (=> b!637816 m!611895))

(declare-fun m!611897 () Bool)

(assert (=> b!637816 m!611897))

(declare-fun m!611899 () Bool)

(assert (=> b!637816 m!611899))

(assert (=> b!637816 m!611873))

(declare-fun m!611901 () Bool)

(assert (=> b!637816 m!611901))

(assert (=> b!637816 m!611861))

(declare-fun m!611903 () Bool)

(assert (=> b!637816 m!611903))

(assert (=> b!637816 m!611861))

(declare-fun m!611905 () Bool)

(assert (=> b!637816 m!611905))

(declare-fun m!611907 () Bool)

(assert (=> start!57720 m!611907))

(declare-fun m!611909 () Bool)

(assert (=> start!57720 m!611909))

(declare-fun m!611911 () Bool)

(assert (=> b!637815 m!611911))

(assert (=> b!637813 m!611861))

(assert (=> b!637813 m!611861))

(declare-fun m!611913 () Bool)

(assert (=> b!637813 m!611913))

(declare-fun m!611915 () Bool)

(assert (=> b!637801 m!611915))

(push 1)

