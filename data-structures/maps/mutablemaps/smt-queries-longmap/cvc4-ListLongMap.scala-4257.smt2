; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59116 () Bool)

(assert start!59116)

(declare-fun b!651868 () Bool)

(declare-fun e!374137 () Bool)

(declare-fun e!374124 () Bool)

(assert (=> b!651868 (= e!374137 e!374124)))

(declare-fun res!422777 () Bool)

(assert (=> b!651868 (=> (not res!422777) (not e!374124))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6932 0))(
  ( (MissingZero!6932 (index!30080 (_ BitVec 32))) (Found!6932 (index!30081 (_ BitVec 32))) (Intermediate!6932 (undefined!7744 Bool) (index!30082 (_ BitVec 32)) (x!58892 (_ BitVec 32))) (Undefined!6932) (MissingVacant!6932 (index!30083 (_ BitVec 32))) )
))
(declare-fun lt!303284 () SeekEntryResult!6932)

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!38572 0))(
  ( (array!38573 (arr!18485 (Array (_ BitVec 32) (_ BitVec 64))) (size!18849 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38572)

(assert (=> b!651868 (= res!422777 (and (= lt!303284 (Found!6932 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18485 a!2986) index!984) (select (arr!18485 a!2986) j!136))) (not (= (select (arr!18485 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38572 (_ BitVec 32)) SeekEntryResult!6932)

(assert (=> b!651868 (= lt!303284 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18485 a!2986) j!136) a!2986 mask!3053))))

(declare-fun lt!303288 () array!38572)

(declare-fun b!651869 () Bool)

(declare-fun e!374126 () Bool)

(declare-fun arrayContainsKey!0 (array!38572 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!651869 (= e!374126 (arrayContainsKey!0 lt!303288 (select (arr!18485 a!2986) j!136) index!984))))

(declare-fun b!651870 () Bool)

(declare-fun e!374125 () Bool)

(declare-fun e!374136 () Bool)

(assert (=> b!651870 (= e!374125 e!374136)))

(declare-fun res!422774 () Bool)

(assert (=> b!651870 (=> res!422774 e!374136)))

(declare-fun lt!303281 () (_ BitVec 64))

(declare-fun lt!303278 () (_ BitVec 64))

(assert (=> b!651870 (= res!422774 (or (not (= (select (arr!18485 a!2986) j!136) lt!303281)) (not (= (select (arr!18485 a!2986) j!136) lt!303278)) (bvsge j!136 index!984)))))

(declare-fun e!374130 () Bool)

(declare-fun b!651871 () Bool)

(assert (=> b!651871 (= e!374130 (arrayContainsKey!0 lt!303288 (select (arr!18485 a!2986) j!136) index!984))))

(declare-fun b!651872 () Bool)

(declare-fun e!374131 () Bool)

(declare-fun lt!303286 () SeekEntryResult!6932)

(assert (=> b!651872 (= e!374131 (= lt!303284 lt!303286))))

(declare-fun b!651873 () Bool)

(declare-fun e!374133 () Bool)

(declare-fun e!374132 () Bool)

(assert (=> b!651873 (= e!374133 e!374132)))

(declare-fun res!422781 () Bool)

(assert (=> b!651873 (=> (not res!422781) (not e!374132))))

(declare-fun lt!303285 () SeekEntryResult!6932)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!651873 (= res!422781 (or (= lt!303285 (MissingZero!6932 i!1108)) (= lt!303285 (MissingVacant!6932 i!1108))))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38572 (_ BitVec 32)) SeekEntryResult!6932)

(assert (=> b!651873 (= lt!303285 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!651875 () Bool)

(assert (=> b!651875 (= e!374136 e!374126)))

(declare-fun res!422775 () Bool)

(assert (=> b!651875 (=> (not res!422775) (not e!374126))))

(assert (=> b!651875 (= res!422775 (arrayContainsKey!0 lt!303288 (select (arr!18485 a!2986) j!136) j!136))))

(declare-fun b!651876 () Bool)

(declare-datatypes ((Unit!22264 0))(
  ( (Unit!22265) )
))
(declare-fun e!374134 () Unit!22264)

(declare-fun Unit!22266 () Unit!22264)

(assert (=> b!651876 (= e!374134 Unit!22266)))

(declare-fun lt!303275 () Unit!22264)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38572 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22264)

(assert (=> b!651876 (= lt!303275 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!303288 (select (arr!18485 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!651876 (arrayContainsKey!0 lt!303288 (select (arr!18485 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!303282 () Unit!22264)

(declare-datatypes ((List!12579 0))(
  ( (Nil!12576) (Cons!12575 (h!13620 (_ BitVec 64)) (t!18815 List!12579)) )
))
(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38572 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12579) Unit!22264)

(assert (=> b!651876 (= lt!303282 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12576))))

(declare-fun arrayNoDuplicates!0 (array!38572 (_ BitVec 32) List!12579) Bool)

(assert (=> b!651876 (arrayNoDuplicates!0 lt!303288 #b00000000000000000000000000000000 Nil!12576)))

(declare-fun lt!303283 () Unit!22264)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38572 (_ BitVec 32) (_ BitVec 32)) Unit!22264)

(assert (=> b!651876 (= lt!303283 (lemmaNoDuplicateFromThenFromBigger!0 lt!303288 #b00000000000000000000000000000000 j!136))))

(assert (=> b!651876 (arrayNoDuplicates!0 lt!303288 j!136 Nil!12576)))

(declare-fun lt!303272 () Unit!22264)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38572 (_ BitVec 64) (_ BitVec 32) List!12579) Unit!22264)

(assert (=> b!651876 (= lt!303272 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!303288 (select (arr!18485 a!2986) j!136) j!136 Nil!12576))))

(assert (=> b!651876 false))

(declare-fun b!651877 () Bool)

(declare-fun res!422783 () Bool)

(assert (=> b!651877 (=> (not res!422783) (not e!374133))))

(assert (=> b!651877 (= res!422783 (and (= (size!18849 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18849 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18849 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!651878 () Bool)

(assert (=> b!651878 (= e!374132 e!374137)))

(declare-fun res!422778 () Bool)

(assert (=> b!651878 (=> (not res!422778) (not e!374137))))

(assert (=> b!651878 (= res!422778 (= (select (store (arr!18485 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!651878 (= lt!303288 (array!38573 (store (arr!18485 a!2986) i!1108 k!1786) (size!18849 a!2986)))))

(declare-fun b!651879 () Bool)

(declare-fun e!374135 () Unit!22264)

(declare-fun Unit!22267 () Unit!22264)

(assert (=> b!651879 (= e!374135 Unit!22267)))

(assert (=> b!651879 false))

(declare-fun b!651880 () Bool)

(declare-fun res!422785 () Bool)

(assert (=> b!651880 (=> (not res!422785) (not e!374132))))

(assert (=> b!651880 (= res!422785 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12576))))

(declare-fun b!651881 () Bool)

(declare-fun Unit!22268 () Unit!22264)

(assert (=> b!651881 (= e!374134 Unit!22268)))

(declare-fun res!422784 () Bool)

(assert (=> start!59116 (=> (not res!422784) (not e!374133))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!59116 (= res!422784 (validMask!0 mask!3053))))

(assert (=> start!59116 e!374133))

(assert (=> start!59116 true))

(declare-fun array_inv!14259 (array!38572) Bool)

(assert (=> start!59116 (array_inv!14259 a!2986)))

(declare-fun b!651874 () Bool)

(declare-fun res!422782 () Bool)

(assert (=> b!651874 (=> (not res!422782) (not e!374132))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38572 (_ BitVec 32)) Bool)

(assert (=> b!651874 (= res!422782 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!651882 () Bool)

(declare-fun res!422792 () Bool)

(assert (=> b!651882 (=> (not res!422792) (not e!374133))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!651882 (= res!422792 (validKeyInArray!0 (select (arr!18485 a!2986) j!136)))))

(declare-fun b!651883 () Bool)

(declare-fun e!374123 () Bool)

(assert (=> b!651883 (= e!374124 (not e!374123))))

(declare-fun res!422791 () Bool)

(assert (=> b!651883 (=> res!422791 e!374123)))

(declare-fun lt!303287 () SeekEntryResult!6932)

(assert (=> b!651883 (= res!422791 (not (= lt!303287 (Found!6932 index!984))))))

(declare-fun lt!303277 () Unit!22264)

(assert (=> b!651883 (= lt!303277 e!374135)))

(declare-fun c!74914 () Bool)

(assert (=> b!651883 (= c!74914 (= lt!303287 Undefined!6932))))

(assert (=> b!651883 (= lt!303287 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!303281 lt!303288 mask!3053))))

(assert (=> b!651883 e!374131))

(declare-fun res!422788 () Bool)

(assert (=> b!651883 (=> (not res!422788) (not e!374131))))

(declare-fun lt!303273 () (_ BitVec 32))

(assert (=> b!651883 (= res!422788 (= lt!303286 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!303273 vacantSpotIndex!68 lt!303281 lt!303288 mask!3053)))))

(assert (=> b!651883 (= lt!303286 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!303273 vacantSpotIndex!68 (select (arr!18485 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!651883 (= lt!303281 (select (store (arr!18485 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!303276 () Unit!22264)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38572 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22264)

(assert (=> b!651883 (= lt!303276 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!303273 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!651883 (= lt!303273 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!651884 () Bool)

(declare-fun e!374127 () Bool)

(assert (=> b!651884 (= e!374127 true)))

(assert (=> b!651884 (arrayNoDuplicates!0 lt!303288 index!984 Nil!12576)))

(declare-fun lt!303280 () Unit!22264)

(assert (=> b!651884 (= lt!303280 (lemmaNoDuplicateFromThenFromBigger!0 lt!303288 #b00000000000000000000000000000000 index!984))))

(assert (=> b!651884 (arrayNoDuplicates!0 lt!303288 #b00000000000000000000000000000000 Nil!12576)))

(declare-fun lt!303279 () Unit!22264)

(assert (=> b!651884 (= lt!303279 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12576))))

(assert (=> b!651884 (arrayContainsKey!0 lt!303288 (select (arr!18485 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!303274 () Unit!22264)

(assert (=> b!651884 (= lt!303274 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!303288 (select (arr!18485 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!651884 e!374130))

(declare-fun res!422790 () Bool)

(assert (=> b!651884 (=> (not res!422790) (not e!374130))))

(assert (=> b!651884 (= res!422790 (arrayContainsKey!0 lt!303288 (select (arr!18485 a!2986) j!136) j!136))))

(declare-fun b!651885 () Bool)

(declare-fun Unit!22269 () Unit!22264)

(assert (=> b!651885 (= e!374135 Unit!22269)))

(declare-fun b!651886 () Bool)

(declare-fun e!374128 () Bool)

(assert (=> b!651886 (= e!374128 e!374127)))

(declare-fun res!422780 () Bool)

(assert (=> b!651886 (=> res!422780 e!374127)))

(assert (=> b!651886 (= res!422780 (bvsge index!984 j!136))))

(declare-fun lt!303271 () Unit!22264)

(assert (=> b!651886 (= lt!303271 e!374134)))

(declare-fun c!74915 () Bool)

(assert (=> b!651886 (= c!74915 (bvslt j!136 index!984))))

(declare-fun b!651887 () Bool)

(declare-fun res!422786 () Bool)

(assert (=> b!651887 (=> (not res!422786) (not e!374132))))

(assert (=> b!651887 (= res!422786 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18485 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!651888 () Bool)

(declare-fun res!422779 () Bool)

(assert (=> b!651888 (=> (not res!422779) (not e!374133))))

(assert (=> b!651888 (= res!422779 (validKeyInArray!0 k!1786))))

(declare-fun b!651889 () Bool)

(assert (=> b!651889 (= e!374123 e!374128)))

(declare-fun res!422776 () Bool)

(assert (=> b!651889 (=> res!422776 e!374128)))

(assert (=> b!651889 (= res!422776 (or (not (= (select (arr!18485 a!2986) j!136) lt!303281)) (not (= (select (arr!18485 a!2986) j!136) lt!303278))))))

(assert (=> b!651889 e!374125))

(declare-fun res!422787 () Bool)

(assert (=> b!651889 (=> (not res!422787) (not e!374125))))

(assert (=> b!651889 (= res!422787 (= lt!303278 (select (arr!18485 a!2986) j!136)))))

(assert (=> b!651889 (= lt!303278 (select (store (arr!18485 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!651890 () Bool)

(declare-fun res!422789 () Bool)

(assert (=> b!651890 (=> (not res!422789) (not e!374133))))

(assert (=> b!651890 (= res!422789 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(assert (= (and start!59116 res!422784) b!651877))

(assert (= (and b!651877 res!422783) b!651882))

(assert (= (and b!651882 res!422792) b!651888))

(assert (= (and b!651888 res!422779) b!651890))

(assert (= (and b!651890 res!422789) b!651873))

(assert (= (and b!651873 res!422781) b!651874))

(assert (= (and b!651874 res!422782) b!651880))

(assert (= (and b!651880 res!422785) b!651887))

(assert (= (and b!651887 res!422786) b!651878))

(assert (= (and b!651878 res!422778) b!651868))

(assert (= (and b!651868 res!422777) b!651883))

(assert (= (and b!651883 res!422788) b!651872))

(assert (= (and b!651883 c!74914) b!651879))

(assert (= (and b!651883 (not c!74914)) b!651885))

(assert (= (and b!651883 (not res!422791)) b!651889))

(assert (= (and b!651889 res!422787) b!651870))

(assert (= (and b!651870 (not res!422774)) b!651875))

(assert (= (and b!651875 res!422775) b!651869))

(assert (= (and b!651889 (not res!422776)) b!651886))

(assert (= (and b!651886 c!74915) b!651876))

(assert (= (and b!651886 (not c!74915)) b!651881))

(assert (= (and b!651886 (not res!422780)) b!651884))

(assert (= (and b!651884 res!422790) b!651871))

(declare-fun m!625087 () Bool)

(assert (=> b!651878 m!625087))

(declare-fun m!625089 () Bool)

(assert (=> b!651878 m!625089))

(declare-fun m!625091 () Bool)

(assert (=> b!651876 m!625091))

(declare-fun m!625093 () Bool)

(assert (=> b!651876 m!625093))

(assert (=> b!651876 m!625091))

(declare-fun m!625095 () Bool)

(assert (=> b!651876 m!625095))

(declare-fun m!625097 () Bool)

(assert (=> b!651876 m!625097))

(assert (=> b!651876 m!625091))

(declare-fun m!625099 () Bool)

(assert (=> b!651876 m!625099))

(declare-fun m!625101 () Bool)

(assert (=> b!651876 m!625101))

(assert (=> b!651876 m!625091))

(declare-fun m!625103 () Bool)

(assert (=> b!651876 m!625103))

(declare-fun m!625105 () Bool)

(assert (=> b!651876 m!625105))

(declare-fun m!625107 () Bool)

(assert (=> b!651884 m!625107))

(assert (=> b!651884 m!625091))

(assert (=> b!651884 m!625091))

(declare-fun m!625109 () Bool)

(assert (=> b!651884 m!625109))

(assert (=> b!651884 m!625091))

(declare-fun m!625111 () Bool)

(assert (=> b!651884 m!625111))

(declare-fun m!625113 () Bool)

(assert (=> b!651884 m!625113))

(assert (=> b!651884 m!625101))

(assert (=> b!651884 m!625091))

(declare-fun m!625115 () Bool)

(assert (=> b!651884 m!625115))

(assert (=> b!651884 m!625097))

(declare-fun m!625117 () Bool)

(assert (=> b!651888 m!625117))

(assert (=> b!651882 m!625091))

(assert (=> b!651882 m!625091))

(declare-fun m!625119 () Bool)

(assert (=> b!651882 m!625119))

(declare-fun m!625121 () Bool)

(assert (=> b!651883 m!625121))

(assert (=> b!651883 m!625091))

(assert (=> b!651883 m!625087))

(declare-fun m!625123 () Bool)

(assert (=> b!651883 m!625123))

(assert (=> b!651883 m!625091))

(declare-fun m!625125 () Bool)

(assert (=> b!651883 m!625125))

(declare-fun m!625127 () Bool)

(assert (=> b!651883 m!625127))

(declare-fun m!625129 () Bool)

(assert (=> b!651883 m!625129))

(declare-fun m!625131 () Bool)

(assert (=> b!651883 m!625131))

(assert (=> b!651869 m!625091))

(assert (=> b!651869 m!625091))

(declare-fun m!625133 () Bool)

(assert (=> b!651869 m!625133))

(assert (=> b!651889 m!625091))

(assert (=> b!651889 m!625087))

(declare-fun m!625135 () Bool)

(assert (=> b!651889 m!625135))

(declare-fun m!625137 () Bool)

(assert (=> b!651880 m!625137))

(assert (=> b!651870 m!625091))

(assert (=> b!651875 m!625091))

(assert (=> b!651875 m!625091))

(assert (=> b!651875 m!625115))

(declare-fun m!625139 () Bool)

(assert (=> b!651890 m!625139))

(declare-fun m!625141 () Bool)

(assert (=> b!651873 m!625141))

(declare-fun m!625143 () Bool)

(assert (=> b!651868 m!625143))

(assert (=> b!651868 m!625091))

(assert (=> b!651868 m!625091))

(declare-fun m!625145 () Bool)

(assert (=> b!651868 m!625145))

(declare-fun m!625147 () Bool)

(assert (=> b!651887 m!625147))

(assert (=> b!651871 m!625091))

(assert (=> b!651871 m!625091))

(assert (=> b!651871 m!625133))

(declare-fun m!625149 () Bool)

(assert (=> start!59116 m!625149))

(declare-fun m!625151 () Bool)

(assert (=> start!59116 m!625151))

(declare-fun m!625153 () Bool)

(assert (=> b!651874 m!625153))

(push 1)

