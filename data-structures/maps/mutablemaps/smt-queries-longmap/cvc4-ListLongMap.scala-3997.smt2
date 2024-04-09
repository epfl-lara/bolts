; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!54184 () Bool)

(assert start!54184)

(declare-fun b!591908 () Bool)

(declare-fun res!378962 () Bool)

(declare-fun e!338004 () Bool)

(assert (=> b!591908 (=> (not res!378962) (not e!338004))))

(declare-datatypes ((array!36877 0))(
  ( (array!36878 (arr!17705 (Array (_ BitVec 32) (_ BitVec 64))) (size!18069 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36877)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!591908 (= res!378962 (validKeyInArray!0 (select (arr!17705 a!2986) j!136)))))

(declare-fun b!591909 () Bool)

(declare-fun e!338003 () Bool)

(declare-fun e!338005 () Bool)

(assert (=> b!591909 (= e!338003 e!338005)))

(declare-fun res!378960 () Bool)

(assert (=> b!591909 (=> res!378960 e!338005)))

(declare-fun lt!268706 () (_ BitVec 64))

(declare-fun lt!268700 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!591909 (= res!378960 (or (not (= (select (arr!17705 a!2986) j!136) lt!268706)) (not (= (select (arr!17705 a!2986) j!136) lt!268700)) (bvsge j!136 index!984)))))

(declare-fun e!338002 () Bool)

(assert (=> b!591909 e!338002))

(declare-fun res!378954 () Bool)

(assert (=> b!591909 (=> (not res!378954) (not e!338002))))

(assert (=> b!591909 (= res!378954 (= lt!268700 (select (arr!17705 a!2986) j!136)))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!591909 (= lt!268700 (select (store (arr!17705 a!2986) i!1108 k!1786) index!984))))

(declare-fun res!378959 () Bool)

(assert (=> start!54184 (=> (not res!378959) (not e!338004))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54184 (= res!378959 (validMask!0 mask!3053))))

(assert (=> start!54184 e!338004))

(assert (=> start!54184 true))

(declare-fun array_inv!13479 (array!36877) Bool)

(assert (=> start!54184 (array_inv!13479 a!2986)))

(declare-fun b!591910 () Bool)

(declare-fun e!338001 () Bool)

(declare-datatypes ((SeekEntryResult!6152 0))(
  ( (MissingZero!6152 (index!26843 (_ BitVec 32))) (Found!6152 (index!26844 (_ BitVec 32))) (Intermediate!6152 (undefined!6964 Bool) (index!26845 (_ BitVec 32)) (x!55657 (_ BitVec 32))) (Undefined!6152) (MissingVacant!6152 (index!26846 (_ BitVec 32))) )
))
(declare-fun lt!268707 () SeekEntryResult!6152)

(declare-fun lt!268701 () SeekEntryResult!6152)

(assert (=> b!591910 (= e!338001 (= lt!268707 lt!268701))))

(declare-fun b!591911 () Bool)

(declare-fun e!338000 () Bool)

(assert (=> b!591911 (= e!338004 e!338000)))

(declare-fun res!378956 () Bool)

(assert (=> b!591911 (=> (not res!378956) (not e!338000))))

(declare-fun lt!268702 () SeekEntryResult!6152)

(assert (=> b!591911 (= res!378956 (or (= lt!268702 (MissingZero!6152 i!1108)) (= lt!268702 (MissingVacant!6152 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36877 (_ BitVec 32)) SeekEntryResult!6152)

(assert (=> b!591911 (= lt!268702 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!591912 () Bool)

(declare-fun res!378966 () Bool)

(assert (=> b!591912 (=> (not res!378966) (not e!338004))))

(declare-fun arrayContainsKey!0 (array!36877 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!591912 (= res!378966 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!591913 () Bool)

(declare-fun e!338011 () Bool)

(assert (=> b!591913 (= e!338000 e!338011)))

(declare-fun res!378967 () Bool)

(assert (=> b!591913 (=> (not res!378967) (not e!338011))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!591913 (= res!378967 (= (select (store (arr!17705 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!268703 () array!36877)

(assert (=> b!591913 (= lt!268703 (array!36878 (store (arr!17705 a!2986) i!1108 k!1786) (size!18069 a!2986)))))

(declare-fun b!591914 () Bool)

(declare-datatypes ((Unit!18552 0))(
  ( (Unit!18553) )
))
(declare-fun e!338008 () Unit!18552)

(declare-fun Unit!18554 () Unit!18552)

(assert (=> b!591914 (= e!338008 Unit!18554)))

(assert (=> b!591914 false))

(declare-fun b!591915 () Bool)

(declare-fun res!378968 () Bool)

(assert (=> b!591915 (=> (not res!378968) (not e!338004))))

(assert (=> b!591915 (= res!378968 (and (= (size!18069 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18069 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18069 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!591916 () Bool)

(declare-fun Unit!18555 () Unit!18552)

(assert (=> b!591916 (= e!338008 Unit!18555)))

(declare-fun b!591917 () Bool)

(declare-fun res!378958 () Bool)

(assert (=> b!591917 (=> (not res!378958) (not e!338004))))

(assert (=> b!591917 (= res!378958 (validKeyInArray!0 k!1786))))

(declare-fun b!591918 () Bool)

(assert (=> b!591918 (= e!338005 (bvsge (bvadd #b00000000000000000000000000000001 j!136) #b00000000000000000000000000000000))))

(assert (=> b!591918 (arrayContainsKey!0 lt!268703 (select (arr!17705 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!268708 () Unit!18552)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!36877 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18552)

(assert (=> b!591918 (= lt!268708 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!268703 (select (arr!17705 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!591919 () Bool)

(declare-fun res!378963 () Bool)

(assert (=> b!591919 (=> (not res!378963) (not e!338000))))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!591919 (= res!378963 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17705 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!591920 () Bool)

(declare-fun e!338007 () Bool)

(assert (=> b!591920 (= e!338011 e!338007)))

(declare-fun res!378965 () Bool)

(assert (=> b!591920 (=> (not res!378965) (not e!338007))))

(assert (=> b!591920 (= res!378965 (and (= lt!268707 (Found!6152 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17705 a!2986) index!984) (select (arr!17705 a!2986) j!136))) (not (= (select (arr!17705 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36877 (_ BitVec 32)) SeekEntryResult!6152)

(assert (=> b!591920 (= lt!268707 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17705 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!591921 () Bool)

(assert (=> b!591921 (= e!338007 (not e!338003))))

(declare-fun res!378955 () Bool)

(assert (=> b!591921 (=> res!378955 e!338003)))

(declare-fun lt!268709 () SeekEntryResult!6152)

(assert (=> b!591921 (= res!378955 (not (= lt!268709 (Found!6152 index!984))))))

(declare-fun lt!268705 () Unit!18552)

(assert (=> b!591921 (= lt!268705 e!338008)))

(declare-fun c!66845 () Bool)

(assert (=> b!591921 (= c!66845 (= lt!268709 Undefined!6152))))

(assert (=> b!591921 (= lt!268709 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!268706 lt!268703 mask!3053))))

(assert (=> b!591921 e!338001))

(declare-fun res!378953 () Bool)

(assert (=> b!591921 (=> (not res!378953) (not e!338001))))

(declare-fun lt!268704 () (_ BitVec 32))

(assert (=> b!591921 (= res!378953 (= lt!268701 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!268704 vacantSpotIndex!68 lt!268706 lt!268703 mask!3053)))))

(assert (=> b!591921 (= lt!268701 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!268704 vacantSpotIndex!68 (select (arr!17705 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!591921 (= lt!268706 (select (store (arr!17705 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!268710 () Unit!18552)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36877 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18552)

(assert (=> b!591921 (= lt!268710 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!268704 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!591921 (= lt!268704 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!591922 () Bool)

(declare-fun e!338009 () Bool)

(assert (=> b!591922 (= e!338002 e!338009)))

(declare-fun res!378964 () Bool)

(assert (=> b!591922 (=> res!378964 e!338009)))

(assert (=> b!591922 (= res!378964 (or (not (= (select (arr!17705 a!2986) j!136) lt!268706)) (not (= (select (arr!17705 a!2986) j!136) lt!268700)) (bvsge j!136 index!984)))))

(declare-fun b!591923 () Bool)

(declare-fun res!378957 () Bool)

(assert (=> b!591923 (=> (not res!378957) (not e!338000))))

(declare-datatypes ((List!11799 0))(
  ( (Nil!11796) (Cons!11795 (h!12840 (_ BitVec 64)) (t!18035 List!11799)) )
))
(declare-fun arrayNoDuplicates!0 (array!36877 (_ BitVec 32) List!11799) Bool)

(assert (=> b!591923 (= res!378957 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11796))))

(declare-fun b!591924 () Bool)

(declare-fun e!338006 () Bool)

(assert (=> b!591924 (= e!338006 (arrayContainsKey!0 lt!268703 (select (arr!17705 a!2986) j!136) index!984))))

(declare-fun b!591925 () Bool)

(assert (=> b!591925 (= e!338009 e!338006)))

(declare-fun res!378961 () Bool)

(assert (=> b!591925 (=> (not res!378961) (not e!338006))))

(assert (=> b!591925 (= res!378961 (arrayContainsKey!0 lt!268703 (select (arr!17705 a!2986) j!136) j!136))))

(declare-fun b!591926 () Bool)

(declare-fun res!378952 () Bool)

(assert (=> b!591926 (=> (not res!378952) (not e!338000))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36877 (_ BitVec 32)) Bool)

(assert (=> b!591926 (= res!378952 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(assert (= (and start!54184 res!378959) b!591915))

(assert (= (and b!591915 res!378968) b!591908))

(assert (= (and b!591908 res!378962) b!591917))

(assert (= (and b!591917 res!378958) b!591912))

(assert (= (and b!591912 res!378966) b!591911))

(assert (= (and b!591911 res!378956) b!591926))

(assert (= (and b!591926 res!378952) b!591923))

(assert (= (and b!591923 res!378957) b!591919))

(assert (= (and b!591919 res!378963) b!591913))

(assert (= (and b!591913 res!378967) b!591920))

(assert (= (and b!591920 res!378965) b!591921))

(assert (= (and b!591921 res!378953) b!591910))

(assert (= (and b!591921 c!66845) b!591914))

(assert (= (and b!591921 (not c!66845)) b!591916))

(assert (= (and b!591921 (not res!378955)) b!591909))

(assert (= (and b!591909 res!378954) b!591922))

(assert (= (and b!591922 (not res!378964)) b!591925))

(assert (= (and b!591925 res!378961) b!591924))

(assert (= (and b!591909 (not res!378960)) b!591918))

(declare-fun m!570091 () Bool)

(assert (=> b!591917 m!570091))

(declare-fun m!570093 () Bool)

(assert (=> b!591920 m!570093))

(declare-fun m!570095 () Bool)

(assert (=> b!591920 m!570095))

(assert (=> b!591920 m!570095))

(declare-fun m!570097 () Bool)

(assert (=> b!591920 m!570097))

(assert (=> b!591924 m!570095))

(assert (=> b!591924 m!570095))

(declare-fun m!570099 () Bool)

(assert (=> b!591924 m!570099))

(assert (=> b!591908 m!570095))

(assert (=> b!591908 m!570095))

(declare-fun m!570101 () Bool)

(assert (=> b!591908 m!570101))

(declare-fun m!570103 () Bool)

(assert (=> b!591913 m!570103))

(declare-fun m!570105 () Bool)

(assert (=> b!591913 m!570105))

(declare-fun m!570107 () Bool)

(assert (=> b!591911 m!570107))

(assert (=> b!591922 m!570095))

(assert (=> b!591925 m!570095))

(assert (=> b!591925 m!570095))

(declare-fun m!570109 () Bool)

(assert (=> b!591925 m!570109))

(assert (=> b!591918 m!570095))

(assert (=> b!591918 m!570095))

(declare-fun m!570111 () Bool)

(assert (=> b!591918 m!570111))

(assert (=> b!591918 m!570095))

(declare-fun m!570113 () Bool)

(assert (=> b!591918 m!570113))

(declare-fun m!570115 () Bool)

(assert (=> b!591921 m!570115))

(declare-fun m!570117 () Bool)

(assert (=> b!591921 m!570117))

(assert (=> b!591921 m!570095))

(assert (=> b!591921 m!570103))

(declare-fun m!570119 () Bool)

(assert (=> b!591921 m!570119))

(declare-fun m!570121 () Bool)

(assert (=> b!591921 m!570121))

(declare-fun m!570123 () Bool)

(assert (=> b!591921 m!570123))

(assert (=> b!591921 m!570095))

(declare-fun m!570125 () Bool)

(assert (=> b!591921 m!570125))

(declare-fun m!570127 () Bool)

(assert (=> b!591912 m!570127))

(declare-fun m!570129 () Bool)

(assert (=> b!591926 m!570129))

(declare-fun m!570131 () Bool)

(assert (=> start!54184 m!570131))

(declare-fun m!570133 () Bool)

(assert (=> start!54184 m!570133))

(assert (=> b!591909 m!570095))

(assert (=> b!591909 m!570103))

(declare-fun m!570135 () Bool)

(assert (=> b!591909 m!570135))

(declare-fun m!570137 () Bool)

(assert (=> b!591923 m!570137))

(declare-fun m!570139 () Bool)

(assert (=> b!591919 m!570139))

(push 1)

