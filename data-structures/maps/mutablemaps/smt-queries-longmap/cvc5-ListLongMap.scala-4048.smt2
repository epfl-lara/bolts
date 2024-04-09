; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!55254 () Bool)

(assert start!55254)

(declare-fun b!604888 () Bool)

(declare-fun e!346190 () Bool)

(declare-fun e!346187 () Bool)

(assert (=> b!604888 (= e!346190 e!346187)))

(declare-fun res!388725 () Bool)

(assert (=> b!604888 (=> (not res!388725) (not e!346187))))

(declare-datatypes ((SeekEntryResult!6303 0))(
  ( (MissingZero!6303 (index!27477 (_ BitVec 32))) (Found!6303 (index!27478 (_ BitVec 32))) (Intermediate!6303 (undefined!7115 Bool) (index!27479 (_ BitVec 32)) (x!56306 (_ BitVec 32))) (Undefined!6303) (MissingVacant!6303 (index!27480 (_ BitVec 32))) )
))
(declare-fun lt!275994 () SeekEntryResult!6303)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!604888 (= res!388725 (or (= lt!275994 (MissingZero!6303 i!1108)) (= lt!275994 (MissingVacant!6303 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-datatypes ((array!37209 0))(
  ( (array!37210 (arr!17856 (Array (_ BitVec 32) (_ BitVec 64))) (size!18220 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37209)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37209 (_ BitVec 32)) SeekEntryResult!6303)

(assert (=> b!604888 (= lt!275994 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!604889 () Bool)

(declare-fun e!346183 () Bool)

(declare-fun lt!275989 () SeekEntryResult!6303)

(declare-fun lt!276003 () SeekEntryResult!6303)

(assert (=> b!604889 (= e!346183 (= lt!275989 lt!276003))))

(declare-fun b!604890 () Bool)

(declare-fun res!388727 () Bool)

(assert (=> b!604890 (=> (not res!388727) (not e!346190))))

(declare-fun arrayContainsKey!0 (array!37209 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!604890 (= res!388727 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!604891 () Bool)

(declare-fun res!388722 () Bool)

(assert (=> b!604891 (=> (not res!388722) (not e!346190))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!604891 (= res!388722 (and (= (size!18220 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18220 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18220 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!604892 () Bool)

(declare-fun res!388724 () Bool)

(assert (=> b!604892 (=> (not res!388724) (not e!346187))))

(declare-datatypes ((List!11950 0))(
  ( (Nil!11947) (Cons!11946 (h!12991 (_ BitVec 64)) (t!18186 List!11950)) )
))
(declare-fun arrayNoDuplicates!0 (array!37209 (_ BitVec 32) List!11950) Bool)

(assert (=> b!604892 (= res!388724 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11947))))

(declare-fun b!604893 () Bool)

(declare-fun res!388720 () Bool)

(assert (=> b!604893 (=> (not res!388720) (not e!346187))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!604893 (= res!388720 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17856 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!604894 () Bool)

(declare-fun lt!276001 () array!37209)

(declare-fun e!346178 () Bool)

(assert (=> b!604894 (= e!346178 (arrayContainsKey!0 lt!276001 (select (arr!17856 a!2986) j!136) index!984))))

(declare-fun b!604895 () Bool)

(declare-fun e!346188 () Bool)

(declare-fun e!346185 () Bool)

(assert (=> b!604895 (= e!346188 e!346185)))

(declare-fun res!388728 () Bool)

(assert (=> b!604895 (=> (not res!388728) (not e!346185))))

(assert (=> b!604895 (= res!388728 (and (= lt!275989 (Found!6303 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17856 a!2986) index!984) (select (arr!17856 a!2986) j!136))) (not (= (select (arr!17856 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37209 (_ BitVec 32)) SeekEntryResult!6303)

(assert (=> b!604895 (= lt!275989 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17856 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!604896 () Bool)

(declare-fun e!346179 () Bool)

(assert (=> b!604896 (= e!346185 (not e!346179))))

(declare-fun res!388736 () Bool)

(assert (=> b!604896 (=> res!388736 e!346179)))

(declare-fun lt!275999 () SeekEntryResult!6303)

(assert (=> b!604896 (= res!388736 (not (= lt!275999 (Found!6303 index!984))))))

(declare-datatypes ((Unit!19246 0))(
  ( (Unit!19247) )
))
(declare-fun lt!276002 () Unit!19246)

(declare-fun e!346180 () Unit!19246)

(assert (=> b!604896 (= lt!276002 e!346180)))

(declare-fun c!68453 () Bool)

(assert (=> b!604896 (= c!68453 (= lt!275999 Undefined!6303))))

(declare-fun lt!275990 () (_ BitVec 64))

(assert (=> b!604896 (= lt!275999 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!275990 lt!276001 mask!3053))))

(assert (=> b!604896 e!346183))

(declare-fun res!388730 () Bool)

(assert (=> b!604896 (=> (not res!388730) (not e!346183))))

(declare-fun lt!275988 () (_ BitVec 32))

(assert (=> b!604896 (= res!388730 (= lt!276003 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!275988 vacantSpotIndex!68 lt!275990 lt!276001 mask!3053)))))

(assert (=> b!604896 (= lt!276003 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!275988 vacantSpotIndex!68 (select (arr!17856 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!604896 (= lt!275990 (select (store (arr!17856 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!275991 () Unit!19246)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37209 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19246)

(assert (=> b!604896 (= lt!275991 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!275988 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!604896 (= lt!275988 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!604898 () Bool)

(declare-fun e!346181 () Bool)

(assert (=> b!604898 (= e!346181 (bvsle #b00000000000000000000000000000000 (size!18220 a!2986)))))

(assert (=> b!604898 (arrayContainsKey!0 lt!276001 (select (arr!17856 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!276000 () Unit!19246)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37209 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19246)

(assert (=> b!604898 (= lt!276000 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!276001 (select (arr!17856 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!604898 e!346178))

(declare-fun res!388731 () Bool)

(assert (=> b!604898 (=> (not res!388731) (not e!346178))))

(assert (=> b!604898 (= res!388731 (arrayContainsKey!0 lt!276001 (select (arr!17856 a!2986) j!136) j!136))))

(declare-fun b!604899 () Bool)

(declare-fun res!388735 () Bool)

(assert (=> b!604899 (=> (not res!388735) (not e!346190))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!604899 (= res!388735 (validKeyInArray!0 (select (arr!17856 a!2986) j!136)))))

(declare-fun b!604900 () Bool)

(declare-fun e!346189 () Bool)

(assert (=> b!604900 (= e!346189 e!346181)))

(declare-fun res!388734 () Bool)

(assert (=> b!604900 (=> res!388734 e!346181)))

(assert (=> b!604900 (= res!388734 (bvsge index!984 j!136))))

(declare-fun lt!275995 () Unit!19246)

(declare-fun e!346186 () Unit!19246)

(assert (=> b!604900 (= lt!275995 e!346186)))

(declare-fun c!68452 () Bool)

(assert (=> b!604900 (= c!68452 (bvslt j!136 index!984))))

(declare-fun b!604901 () Bool)

(declare-fun res!388723 () Bool)

(assert (=> b!604901 (=> (not res!388723) (not e!346187))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37209 (_ BitVec 32)) Bool)

(assert (=> b!604901 (= res!388723 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!604902 () Bool)

(declare-fun Unit!19248 () Unit!19246)

(assert (=> b!604902 (= e!346180 Unit!19248)))

(declare-fun b!604903 () Bool)

(declare-fun e!346182 () Bool)

(declare-fun e!346192 () Bool)

(assert (=> b!604903 (= e!346182 e!346192)))

(declare-fun res!388718 () Bool)

(assert (=> b!604903 (=> (not res!388718) (not e!346192))))

(assert (=> b!604903 (= res!388718 (arrayContainsKey!0 lt!276001 (select (arr!17856 a!2986) j!136) j!136))))

(declare-fun b!604904 () Bool)

(assert (=> b!604904 (= e!346192 (arrayContainsKey!0 lt!276001 (select (arr!17856 a!2986) j!136) index!984))))

(declare-fun b!604905 () Bool)

(declare-fun e!346184 () Bool)

(assert (=> b!604905 (= e!346184 e!346182)))

(declare-fun res!388719 () Bool)

(assert (=> b!604905 (=> res!388719 e!346182)))

(declare-fun lt!275998 () (_ BitVec 64))

(assert (=> b!604905 (= res!388719 (or (not (= (select (arr!17856 a!2986) j!136) lt!275990)) (not (= (select (arr!17856 a!2986) j!136) lt!275998)) (bvsge j!136 index!984)))))

(declare-fun b!604906 () Bool)

(declare-fun Unit!19249 () Unit!19246)

(assert (=> b!604906 (= e!346186 Unit!19249)))

(declare-fun b!604907 () Bool)

(assert (=> b!604907 (= e!346179 e!346189)))

(declare-fun res!388721 () Bool)

(assert (=> b!604907 (=> res!388721 e!346189)))

(assert (=> b!604907 (= res!388721 (or (not (= (select (arr!17856 a!2986) j!136) lt!275990)) (not (= (select (arr!17856 a!2986) j!136) lt!275998))))))

(assert (=> b!604907 e!346184))

(declare-fun res!388726 () Bool)

(assert (=> b!604907 (=> (not res!388726) (not e!346184))))

(assert (=> b!604907 (= res!388726 (= lt!275998 (select (arr!17856 a!2986) j!136)))))

(assert (=> b!604907 (= lt!275998 (select (store (arr!17856 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!604908 () Bool)

(declare-fun Unit!19250 () Unit!19246)

(assert (=> b!604908 (= e!346186 Unit!19250)))

(declare-fun lt!275997 () Unit!19246)

(assert (=> b!604908 (= lt!275997 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!276001 (select (arr!17856 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!604908 (arrayContainsKey!0 lt!276001 (select (arr!17856 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!275992 () Unit!19246)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37209 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11950) Unit!19246)

(assert (=> b!604908 (= lt!275992 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11947))))

(assert (=> b!604908 (arrayNoDuplicates!0 lt!276001 #b00000000000000000000000000000000 Nil!11947)))

(declare-fun lt!275996 () Unit!19246)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37209 (_ BitVec 32) (_ BitVec 32)) Unit!19246)

(assert (=> b!604908 (= lt!275996 (lemmaNoDuplicateFromThenFromBigger!0 lt!276001 #b00000000000000000000000000000000 j!136))))

(assert (=> b!604908 (arrayNoDuplicates!0 lt!276001 j!136 Nil!11947)))

(declare-fun lt!275993 () Unit!19246)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37209 (_ BitVec 64) (_ BitVec 32) List!11950) Unit!19246)

(assert (=> b!604908 (= lt!275993 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!276001 (select (arr!17856 a!2986) j!136) j!136 Nil!11947))))

(assert (=> b!604908 false))

(declare-fun b!604909 () Bool)

(assert (=> b!604909 (= e!346187 e!346188)))

(declare-fun res!388732 () Bool)

(assert (=> b!604909 (=> (not res!388732) (not e!346188))))

(assert (=> b!604909 (= res!388732 (= (select (store (arr!17856 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!604909 (= lt!276001 (array!37210 (store (arr!17856 a!2986) i!1108 k!1786) (size!18220 a!2986)))))

(declare-fun b!604910 () Bool)

(declare-fun res!388729 () Bool)

(assert (=> b!604910 (=> (not res!388729) (not e!346190))))

(assert (=> b!604910 (= res!388729 (validKeyInArray!0 k!1786))))

(declare-fun res!388733 () Bool)

(assert (=> start!55254 (=> (not res!388733) (not e!346190))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55254 (= res!388733 (validMask!0 mask!3053))))

(assert (=> start!55254 e!346190))

(assert (=> start!55254 true))

(declare-fun array_inv!13630 (array!37209) Bool)

(assert (=> start!55254 (array_inv!13630 a!2986)))

(declare-fun b!604897 () Bool)

(declare-fun Unit!19251 () Unit!19246)

(assert (=> b!604897 (= e!346180 Unit!19251)))

(assert (=> b!604897 false))

(assert (= (and start!55254 res!388733) b!604891))

(assert (= (and b!604891 res!388722) b!604899))

(assert (= (and b!604899 res!388735) b!604910))

(assert (= (and b!604910 res!388729) b!604890))

(assert (= (and b!604890 res!388727) b!604888))

(assert (= (and b!604888 res!388725) b!604901))

(assert (= (and b!604901 res!388723) b!604892))

(assert (= (and b!604892 res!388724) b!604893))

(assert (= (and b!604893 res!388720) b!604909))

(assert (= (and b!604909 res!388732) b!604895))

(assert (= (and b!604895 res!388728) b!604896))

(assert (= (and b!604896 res!388730) b!604889))

(assert (= (and b!604896 c!68453) b!604897))

(assert (= (and b!604896 (not c!68453)) b!604902))

(assert (= (and b!604896 (not res!388736)) b!604907))

(assert (= (and b!604907 res!388726) b!604905))

(assert (= (and b!604905 (not res!388719)) b!604903))

(assert (= (and b!604903 res!388718) b!604904))

(assert (= (and b!604907 (not res!388721)) b!604900))

(assert (= (and b!604900 c!68452) b!604908))

(assert (= (and b!604900 (not c!68452)) b!604906))

(assert (= (and b!604900 (not res!388734)) b!604898))

(assert (= (and b!604898 res!388731) b!604894))

(declare-fun m!581817 () Bool)

(assert (=> b!604905 m!581817))

(declare-fun m!581819 () Bool)

(assert (=> b!604909 m!581819))

(declare-fun m!581821 () Bool)

(assert (=> b!604909 m!581821))

(declare-fun m!581823 () Bool)

(assert (=> start!55254 m!581823))

(declare-fun m!581825 () Bool)

(assert (=> start!55254 m!581825))

(declare-fun m!581827 () Bool)

(assert (=> b!604888 m!581827))

(assert (=> b!604904 m!581817))

(assert (=> b!604904 m!581817))

(declare-fun m!581829 () Bool)

(assert (=> b!604904 m!581829))

(assert (=> b!604898 m!581817))

(assert (=> b!604898 m!581817))

(declare-fun m!581831 () Bool)

(assert (=> b!604898 m!581831))

(assert (=> b!604898 m!581817))

(declare-fun m!581833 () Bool)

(assert (=> b!604898 m!581833))

(assert (=> b!604898 m!581817))

(declare-fun m!581835 () Bool)

(assert (=> b!604898 m!581835))

(assert (=> b!604894 m!581817))

(assert (=> b!604894 m!581817))

(assert (=> b!604894 m!581829))

(declare-fun m!581837 () Bool)

(assert (=> b!604892 m!581837))

(declare-fun m!581839 () Bool)

(assert (=> b!604901 m!581839))

(declare-fun m!581841 () Bool)

(assert (=> b!604890 m!581841))

(assert (=> b!604907 m!581817))

(assert (=> b!604907 m!581819))

(declare-fun m!581843 () Bool)

(assert (=> b!604907 m!581843))

(declare-fun m!581845 () Bool)

(assert (=> b!604895 m!581845))

(assert (=> b!604895 m!581817))

(assert (=> b!604895 m!581817))

(declare-fun m!581847 () Bool)

(assert (=> b!604895 m!581847))

(declare-fun m!581849 () Bool)

(assert (=> b!604908 m!581849))

(declare-fun m!581851 () Bool)

(assert (=> b!604908 m!581851))

(assert (=> b!604908 m!581817))

(declare-fun m!581853 () Bool)

(assert (=> b!604908 m!581853))

(assert (=> b!604908 m!581817))

(declare-fun m!581855 () Bool)

(assert (=> b!604908 m!581855))

(assert (=> b!604908 m!581817))

(declare-fun m!581857 () Bool)

(assert (=> b!604908 m!581857))

(assert (=> b!604908 m!581817))

(declare-fun m!581859 () Bool)

(assert (=> b!604908 m!581859))

(declare-fun m!581861 () Bool)

(assert (=> b!604908 m!581861))

(assert (=> b!604899 m!581817))

(assert (=> b!604899 m!581817))

(declare-fun m!581863 () Bool)

(assert (=> b!604899 m!581863))

(declare-fun m!581865 () Bool)

(assert (=> b!604896 m!581865))

(assert (=> b!604896 m!581817))

(assert (=> b!604896 m!581819))

(declare-fun m!581867 () Bool)

(assert (=> b!604896 m!581867))

(declare-fun m!581869 () Bool)

(assert (=> b!604896 m!581869))

(assert (=> b!604896 m!581817))

(declare-fun m!581871 () Bool)

(assert (=> b!604896 m!581871))

(declare-fun m!581873 () Bool)

(assert (=> b!604896 m!581873))

(declare-fun m!581875 () Bool)

(assert (=> b!604896 m!581875))

(declare-fun m!581877 () Bool)

(assert (=> b!604893 m!581877))

(assert (=> b!604903 m!581817))

(assert (=> b!604903 m!581817))

(assert (=> b!604903 m!581835))

(declare-fun m!581879 () Bool)

(assert (=> b!604910 m!581879))

(push 1)

