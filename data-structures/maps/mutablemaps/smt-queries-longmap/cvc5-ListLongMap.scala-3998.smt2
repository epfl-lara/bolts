; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!54186 () Bool)

(assert start!54186)

(declare-fun b!591965 () Bool)

(declare-fun res!379006 () Bool)

(declare-fun e!338037 () Bool)

(assert (=> b!591965 (=> (not res!379006) (not e!338037))))

(declare-datatypes ((array!36879 0))(
  ( (array!36880 (arr!17706 (Array (_ BitVec 32) (_ BitVec 64))) (size!18070 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36879)

(declare-datatypes ((List!11800 0))(
  ( (Nil!11797) (Cons!11796 (h!12841 (_ BitVec 64)) (t!18036 List!11800)) )
))
(declare-fun arrayNoDuplicates!0 (array!36879 (_ BitVec 32) List!11800) Bool)

(assert (=> b!591965 (= res!379006 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11797))))

(declare-fun b!591967 () Bool)

(declare-fun e!338042 () Bool)

(assert (=> b!591967 (= e!338037 e!338042)))

(declare-fun res!379018 () Bool)

(assert (=> b!591967 (=> (not res!379018) (not e!338042))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!591967 (= res!379018 (= (select (store (arr!17706 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!268743 () array!36879)

(assert (=> b!591967 (= lt!268743 (array!36880 (store (arr!17706 a!2986) i!1108 k!1786) (size!18070 a!2986)))))

(declare-fun b!591968 () Bool)

(declare-fun res!379017 () Bool)

(declare-fun e!338041 () Bool)

(assert (=> b!591968 (=> (not res!379017) (not e!338041))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!591968 (= res!379017 (validKeyInArray!0 (select (arr!17706 a!2986) j!136)))))

(declare-fun b!591969 () Bool)

(declare-fun res!379008 () Bool)

(assert (=> b!591969 (=> (not res!379008) (not e!338041))))

(assert (=> b!591969 (= res!379008 (validKeyInArray!0 k!1786))))

(declare-fun b!591970 () Bool)

(assert (=> b!591970 (= e!338041 e!338037)))

(declare-fun res!379019 () Bool)

(assert (=> b!591970 (=> (not res!379019) (not e!338037))))

(declare-datatypes ((SeekEntryResult!6153 0))(
  ( (MissingZero!6153 (index!26847 (_ BitVec 32))) (Found!6153 (index!26848 (_ BitVec 32))) (Intermediate!6153 (undefined!6965 Bool) (index!26849 (_ BitVec 32)) (x!55666 (_ BitVec 32))) (Undefined!6153) (MissingVacant!6153 (index!26850 (_ BitVec 32))) )
))
(declare-fun lt!268740 () SeekEntryResult!6153)

(assert (=> b!591970 (= res!379019 (or (= lt!268740 (MissingZero!6153 i!1108)) (= lt!268740 (MissingVacant!6153 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36879 (_ BitVec 32)) SeekEntryResult!6153)

(assert (=> b!591970 (= lt!268740 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!591971 () Bool)

(declare-fun e!338036 () Bool)

(assert (=> b!591971 (= e!338036 (or (bvslt (bvadd #b00000000000000000000000000000001 j!136) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 j!136) (size!18070 a!2986))))))

(declare-fun arrayContainsKey!0 (array!36879 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!591971 (arrayContainsKey!0 lt!268743 (select (arr!17706 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-datatypes ((Unit!18556 0))(
  ( (Unit!18557) )
))
(declare-fun lt!268741 () Unit!18556)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!36879 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18556)

(assert (=> b!591971 (= lt!268741 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!268743 (select (arr!17706 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!591972 () Bool)

(declare-fun e!338039 () Bool)

(declare-fun e!338047 () Bool)

(assert (=> b!591972 (= e!338039 e!338047)))

(declare-fun res!379014 () Bool)

(assert (=> b!591972 (=> res!379014 e!338047)))

(declare-fun lt!268733 () (_ BitVec 64))

(declare-fun lt!268742 () (_ BitVec 64))

(assert (=> b!591972 (= res!379014 (or (not (= (select (arr!17706 a!2986) j!136) lt!268742)) (not (= (select (arr!17706 a!2986) j!136) lt!268733)) (bvsge j!136 index!984)))))

(declare-fun b!591973 () Bool)

(declare-fun res!379009 () Bool)

(assert (=> b!591973 (=> (not res!379009) (not e!338041))))

(assert (=> b!591973 (= res!379009 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!591974 () Bool)

(declare-fun res!379007 () Bool)

(assert (=> b!591974 (=> (not res!379007) (not e!338041))))

(assert (=> b!591974 (= res!379007 (and (= (size!18070 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18070 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18070 a!2986)) (not (= i!1108 j!136))))))

(declare-fun e!338043 () Bool)

(declare-fun b!591975 () Bool)

(assert (=> b!591975 (= e!338043 (arrayContainsKey!0 lt!268743 (select (arr!17706 a!2986) j!136) index!984))))

(declare-fun b!591976 () Bool)

(declare-fun res!379003 () Bool)

(assert (=> b!591976 (=> (not res!379003) (not e!338037))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36879 (_ BitVec 32)) Bool)

(assert (=> b!591976 (= res!379003 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!591977 () Bool)

(declare-fun e!338040 () Bool)

(declare-fun lt!268735 () SeekEntryResult!6153)

(declare-fun lt!268737 () SeekEntryResult!6153)

(assert (=> b!591977 (= e!338040 (= lt!268735 lt!268737))))

(declare-fun b!591978 () Bool)

(declare-fun e!338044 () Bool)

(assert (=> b!591978 (= e!338042 e!338044)))

(declare-fun res!379012 () Bool)

(assert (=> b!591978 (=> (not res!379012) (not e!338044))))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!591978 (= res!379012 (and (= lt!268735 (Found!6153 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17706 a!2986) index!984) (select (arr!17706 a!2986) j!136))) (not (= (select (arr!17706 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36879 (_ BitVec 32)) SeekEntryResult!6153)

(assert (=> b!591978 (= lt!268735 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17706 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!591979 () Bool)

(declare-fun e!338046 () Unit!18556)

(declare-fun Unit!18558 () Unit!18556)

(assert (=> b!591979 (= e!338046 Unit!18558)))

(declare-fun b!591980 () Bool)

(declare-fun res!379016 () Bool)

(assert (=> b!591980 (=> (not res!379016) (not e!338037))))

(assert (=> b!591980 (= res!379016 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17706 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!591981 () Bool)

(declare-fun e!338045 () Bool)

(assert (=> b!591981 (= e!338044 (not e!338045))))

(declare-fun res!379011 () Bool)

(assert (=> b!591981 (=> res!379011 e!338045)))

(declare-fun lt!268736 () SeekEntryResult!6153)

(assert (=> b!591981 (= res!379011 (not (= lt!268736 (Found!6153 index!984))))))

(declare-fun lt!268738 () Unit!18556)

(assert (=> b!591981 (= lt!268738 e!338046)))

(declare-fun c!66848 () Bool)

(assert (=> b!591981 (= c!66848 (= lt!268736 Undefined!6153))))

(assert (=> b!591981 (= lt!268736 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!268742 lt!268743 mask!3053))))

(assert (=> b!591981 e!338040))

(declare-fun res!379004 () Bool)

(assert (=> b!591981 (=> (not res!379004) (not e!338040))))

(declare-fun lt!268734 () (_ BitVec 32))

(assert (=> b!591981 (= res!379004 (= lt!268737 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!268734 vacantSpotIndex!68 lt!268742 lt!268743 mask!3053)))))

(assert (=> b!591981 (= lt!268737 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!268734 vacantSpotIndex!68 (select (arr!17706 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!591981 (= lt!268742 (select (store (arr!17706 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!268739 () Unit!18556)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36879 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18556)

(assert (=> b!591981 (= lt!268739 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!268734 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!591981 (= lt!268734 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun res!379015 () Bool)

(assert (=> start!54186 (=> (not res!379015) (not e!338041))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54186 (= res!379015 (validMask!0 mask!3053))))

(assert (=> start!54186 e!338041))

(assert (=> start!54186 true))

(declare-fun array_inv!13480 (array!36879) Bool)

(assert (=> start!54186 (array_inv!13480 a!2986)))

(declare-fun b!591966 () Bool)

(declare-fun Unit!18559 () Unit!18556)

(assert (=> b!591966 (= e!338046 Unit!18559)))

(assert (=> b!591966 false))

(declare-fun b!591982 () Bool)

(assert (=> b!591982 (= e!338045 e!338036)))

(declare-fun res!379005 () Bool)

(assert (=> b!591982 (=> res!379005 e!338036)))

(assert (=> b!591982 (= res!379005 (or (not (= (select (arr!17706 a!2986) j!136) lt!268742)) (not (= (select (arr!17706 a!2986) j!136) lt!268733)) (bvsge j!136 index!984)))))

(assert (=> b!591982 e!338039))

(declare-fun res!379013 () Bool)

(assert (=> b!591982 (=> (not res!379013) (not e!338039))))

(assert (=> b!591982 (= res!379013 (= lt!268733 (select (arr!17706 a!2986) j!136)))))

(assert (=> b!591982 (= lt!268733 (select (store (arr!17706 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!591983 () Bool)

(assert (=> b!591983 (= e!338047 e!338043)))

(declare-fun res!379010 () Bool)

(assert (=> b!591983 (=> (not res!379010) (not e!338043))))

(assert (=> b!591983 (= res!379010 (arrayContainsKey!0 lt!268743 (select (arr!17706 a!2986) j!136) j!136))))

(assert (= (and start!54186 res!379015) b!591974))

(assert (= (and b!591974 res!379007) b!591968))

(assert (= (and b!591968 res!379017) b!591969))

(assert (= (and b!591969 res!379008) b!591973))

(assert (= (and b!591973 res!379009) b!591970))

(assert (= (and b!591970 res!379019) b!591976))

(assert (= (and b!591976 res!379003) b!591965))

(assert (= (and b!591965 res!379006) b!591980))

(assert (= (and b!591980 res!379016) b!591967))

(assert (= (and b!591967 res!379018) b!591978))

(assert (= (and b!591978 res!379012) b!591981))

(assert (= (and b!591981 res!379004) b!591977))

(assert (= (and b!591981 c!66848) b!591966))

(assert (= (and b!591981 (not c!66848)) b!591979))

(assert (= (and b!591981 (not res!379011)) b!591982))

(assert (= (and b!591982 res!379013) b!591972))

(assert (= (and b!591972 (not res!379014)) b!591983))

(assert (= (and b!591983 res!379010) b!591975))

(assert (= (and b!591982 (not res!379005)) b!591971))

(declare-fun m!570141 () Bool)

(assert (=> b!591970 m!570141))

(declare-fun m!570143 () Bool)

(assert (=> b!591980 m!570143))

(declare-fun m!570145 () Bool)

(assert (=> b!591971 m!570145))

(assert (=> b!591971 m!570145))

(declare-fun m!570147 () Bool)

(assert (=> b!591971 m!570147))

(assert (=> b!591971 m!570145))

(declare-fun m!570149 () Bool)

(assert (=> b!591971 m!570149))

(declare-fun m!570151 () Bool)

(assert (=> b!591969 m!570151))

(declare-fun m!570153 () Bool)

(assert (=> b!591981 m!570153))

(declare-fun m!570155 () Bool)

(assert (=> b!591981 m!570155))

(assert (=> b!591981 m!570145))

(declare-fun m!570157 () Bool)

(assert (=> b!591981 m!570157))

(declare-fun m!570159 () Bool)

(assert (=> b!591981 m!570159))

(assert (=> b!591981 m!570145))

(declare-fun m!570161 () Bool)

(assert (=> b!591981 m!570161))

(declare-fun m!570163 () Bool)

(assert (=> b!591981 m!570163))

(declare-fun m!570165 () Bool)

(assert (=> b!591981 m!570165))

(assert (=> b!591983 m!570145))

(assert (=> b!591983 m!570145))

(declare-fun m!570167 () Bool)

(assert (=> b!591983 m!570167))

(declare-fun m!570169 () Bool)

(assert (=> start!54186 m!570169))

(declare-fun m!570171 () Bool)

(assert (=> start!54186 m!570171))

(assert (=> b!591975 m!570145))

(assert (=> b!591975 m!570145))

(declare-fun m!570173 () Bool)

(assert (=> b!591975 m!570173))

(declare-fun m!570175 () Bool)

(assert (=> b!591965 m!570175))

(declare-fun m!570177 () Bool)

(assert (=> b!591973 m!570177))

(declare-fun m!570179 () Bool)

(assert (=> b!591976 m!570179))

(assert (=> b!591967 m!570157))

(declare-fun m!570181 () Bool)

(assert (=> b!591967 m!570181))

(assert (=> b!591968 m!570145))

(assert (=> b!591968 m!570145))

(declare-fun m!570183 () Bool)

(assert (=> b!591968 m!570183))

(assert (=> b!591982 m!570145))

(assert (=> b!591982 m!570157))

(declare-fun m!570185 () Bool)

(assert (=> b!591982 m!570185))

(declare-fun m!570187 () Bool)

(assert (=> b!591978 m!570187))

(assert (=> b!591978 m!570145))

(assert (=> b!591978 m!570145))

(declare-fun m!570189 () Bool)

(assert (=> b!591978 m!570189))

(assert (=> b!591972 m!570145))

(push 1)

(assert (not start!54186))

(assert (not b!591965))

(assert (not b!591975))

(assert (not b!591971))

(assert (not b!591981))

(assert (not b!591973))

(assert (not b!591978))

(assert (not b!591969))

(assert (not b!591970))

(assert (not b!591983))

(assert (not b!591968))

(assert (not b!591976))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

