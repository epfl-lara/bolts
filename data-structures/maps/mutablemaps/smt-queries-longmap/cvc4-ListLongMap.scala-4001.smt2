; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!54274 () Bool)

(assert start!54274)

(declare-fun b!592880 () Bool)

(declare-fun res!379664 () Bool)

(declare-fun e!338624 () Bool)

(assert (=> b!592880 (=> (not res!379664) (not e!338624))))

(declare-datatypes ((array!36904 0))(
  ( (array!36905 (arr!17717 (Array (_ BitVec 32) (_ BitVec 64))) (size!18081 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36904)

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!36904 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!592880 (= res!379664 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!592881 () Bool)

(declare-datatypes ((Unit!18600 0))(
  ( (Unit!18601) )
))
(declare-fun e!338623 () Unit!18600)

(declare-fun Unit!18602 () Unit!18600)

(assert (=> b!592881 (= e!338623 Unit!18602)))

(assert (=> b!592881 false))

(declare-fun b!592882 () Bool)

(declare-fun e!338628 () Bool)

(declare-fun e!338629 () Bool)

(assert (=> b!592882 (= e!338628 e!338629)))

(declare-fun res!379657 () Bool)

(assert (=> b!592882 (=> (not res!379657) (not e!338629))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!592882 (= res!379657 (= (select (store (arr!17717 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!269216 () array!36904)

(assert (=> b!592882 (= lt!269216 (array!36905 (store (arr!17717 a!2986) i!1108 k!1786) (size!18081 a!2986)))))

(declare-fun b!592883 () Bool)

(declare-fun e!338627 () Bool)

(declare-fun e!338626 () Bool)

(assert (=> b!592883 (= e!338627 e!338626)))

(declare-fun res!379659 () Bool)

(assert (=> b!592883 (=> (not res!379659) (not e!338626))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!592883 (= res!379659 (arrayContainsKey!0 lt!269216 (select (arr!17717 a!2986) j!136) j!136))))

(declare-fun b!592884 () Bool)

(declare-fun e!338631 () Bool)

(declare-fun e!338622 () Bool)

(assert (=> b!592884 (= e!338631 e!338622)))

(declare-fun res!379666 () Bool)

(assert (=> b!592884 (=> res!379666 e!338622)))

(declare-fun lt!269218 () (_ BitVec 64))

(declare-fun lt!269214 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!592884 (= res!379666 (or (not (= (select (arr!17717 a!2986) j!136) lt!269214)) (not (= (select (arr!17717 a!2986) j!136) lt!269218)) (bvsge j!136 index!984)))))

(declare-fun e!338625 () Bool)

(assert (=> b!592884 e!338625))

(declare-fun res!379668 () Bool)

(assert (=> b!592884 (=> (not res!379668) (not e!338625))))

(assert (=> b!592884 (= res!379668 (= lt!269218 (select (arr!17717 a!2986) j!136)))))

(assert (=> b!592884 (= lt!269218 (select (store (arr!17717 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!592885 () Bool)

(declare-fun e!338621 () Bool)

(assert (=> b!592885 (= e!338621 (not e!338631))))

(declare-fun res!379663 () Bool)

(assert (=> b!592885 (=> res!379663 e!338631)))

(declare-datatypes ((SeekEntryResult!6164 0))(
  ( (MissingZero!6164 (index!26894 (_ BitVec 32))) (Found!6164 (index!26895 (_ BitVec 32))) (Intermediate!6164 (undefined!6976 Bool) (index!26896 (_ BitVec 32)) (x!55710 (_ BitVec 32))) (Undefined!6164) (MissingVacant!6164 (index!26897 (_ BitVec 32))) )
))
(declare-fun lt!269219 () SeekEntryResult!6164)

(assert (=> b!592885 (= res!379663 (not (= lt!269219 (Found!6164 index!984))))))

(declare-fun lt!269221 () Unit!18600)

(assert (=> b!592885 (= lt!269221 e!338623)))

(declare-fun c!66980 () Bool)

(assert (=> b!592885 (= c!66980 (= lt!269219 Undefined!6164))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36904 (_ BitVec 32)) SeekEntryResult!6164)

(assert (=> b!592885 (= lt!269219 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!269214 lt!269216 mask!3053))))

(declare-fun e!338630 () Bool)

(assert (=> b!592885 e!338630))

(declare-fun res!379661 () Bool)

(assert (=> b!592885 (=> (not res!379661) (not e!338630))))

(declare-fun lt!269223 () SeekEntryResult!6164)

(declare-fun lt!269220 () (_ BitVec 32))

(assert (=> b!592885 (= res!379661 (= lt!269223 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!269220 vacantSpotIndex!68 lt!269214 lt!269216 mask!3053)))))

(assert (=> b!592885 (= lt!269223 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!269220 vacantSpotIndex!68 (select (arr!17717 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!592885 (= lt!269214 (select (store (arr!17717 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!269215 () Unit!18600)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36904 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18600)

(assert (=> b!592885 (= lt!269215 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!269220 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!592885 (= lt!269220 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!592886 () Bool)

(declare-fun res!379656 () Bool)

(assert (=> b!592886 (=> (not res!379656) (not e!338624))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!592886 (= res!379656 (validKeyInArray!0 k!1786))))

(declare-fun b!592887 () Bool)

(declare-fun res!379660 () Bool)

(assert (=> b!592887 (=> (not res!379660) (not e!338624))))

(assert (=> b!592887 (= res!379660 (and (= (size!18081 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18081 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18081 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!592888 () Bool)

(declare-fun lt!269213 () SeekEntryResult!6164)

(assert (=> b!592888 (= e!338630 (= lt!269213 lt!269223))))

(declare-fun b!592889 () Bool)

(assert (=> b!592889 (= e!338629 e!338621)))

(declare-fun res!379658 () Bool)

(assert (=> b!592889 (=> (not res!379658) (not e!338621))))

(assert (=> b!592889 (= res!379658 (and (= lt!269213 (Found!6164 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17717 a!2986) index!984) (select (arr!17717 a!2986) j!136))) (not (= (select (arr!17717 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!592889 (= lt!269213 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17717 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!592890 () Bool)

(assert (=> b!592890 (= e!338625 e!338627)))

(declare-fun res!379662 () Bool)

(assert (=> b!592890 (=> res!379662 e!338627)))

(assert (=> b!592890 (= res!379662 (or (not (= (select (arr!17717 a!2986) j!136) lt!269214)) (not (= (select (arr!17717 a!2986) j!136) lt!269218)) (bvsge j!136 index!984)))))

(declare-fun res!379655 () Bool)

(assert (=> start!54274 (=> (not res!379655) (not e!338624))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54274 (= res!379655 (validMask!0 mask!3053))))

(assert (=> start!54274 e!338624))

(assert (=> start!54274 true))

(declare-fun array_inv!13491 (array!36904) Bool)

(assert (=> start!54274 (array_inv!13491 a!2986)))

(declare-fun b!592891 () Bool)

(declare-fun res!379669 () Bool)

(assert (=> b!592891 (=> (not res!379669) (not e!338628))))

(declare-datatypes ((List!11811 0))(
  ( (Nil!11808) (Cons!11807 (h!12852 (_ BitVec 64)) (t!18047 List!11811)) )
))
(declare-fun arrayNoDuplicates!0 (array!36904 (_ BitVec 32) List!11811) Bool)

(assert (=> b!592891 (= res!379669 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11808))))

(declare-fun b!592892 () Bool)

(declare-fun Unit!18603 () Unit!18600)

(assert (=> b!592892 (= e!338623 Unit!18603)))

(declare-fun b!592893 () Bool)

(assert (=> b!592893 (= e!338624 e!338628)))

(declare-fun res!379665 () Bool)

(assert (=> b!592893 (=> (not res!379665) (not e!338628))))

(declare-fun lt!269222 () SeekEntryResult!6164)

(assert (=> b!592893 (= res!379665 (or (= lt!269222 (MissingZero!6164 i!1108)) (= lt!269222 (MissingVacant!6164 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36904 (_ BitVec 32)) SeekEntryResult!6164)

(assert (=> b!592893 (= lt!269222 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!592894 () Bool)

(assert (=> b!592894 (= e!338622 (or (bvsgt #b00000000000000000000000000000000 (size!18081 a!2986)) (bvslt (size!18081 a!2986) #b01111111111111111111111111111111)))))

(assert (=> b!592894 (arrayContainsKey!0 lt!269216 (select (arr!17717 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!269217 () Unit!18600)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!36904 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18600)

(assert (=> b!592894 (= lt!269217 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!269216 (select (arr!17717 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!592895 () Bool)

(declare-fun res!379670 () Bool)

(assert (=> b!592895 (=> (not res!379670) (not e!338628))))

(assert (=> b!592895 (= res!379670 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17717 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!592896 () Bool)

(declare-fun res!379654 () Bool)

(assert (=> b!592896 (=> (not res!379654) (not e!338624))))

(assert (=> b!592896 (= res!379654 (validKeyInArray!0 (select (arr!17717 a!2986) j!136)))))

(declare-fun b!592897 () Bool)

(assert (=> b!592897 (= e!338626 (arrayContainsKey!0 lt!269216 (select (arr!17717 a!2986) j!136) index!984))))

(declare-fun b!592898 () Bool)

(declare-fun res!379667 () Bool)

(assert (=> b!592898 (=> (not res!379667) (not e!338628))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36904 (_ BitVec 32)) Bool)

(assert (=> b!592898 (= res!379667 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(assert (= (and start!54274 res!379655) b!592887))

(assert (= (and b!592887 res!379660) b!592896))

(assert (= (and b!592896 res!379654) b!592886))

(assert (= (and b!592886 res!379656) b!592880))

(assert (= (and b!592880 res!379664) b!592893))

(assert (= (and b!592893 res!379665) b!592898))

(assert (= (and b!592898 res!379667) b!592891))

(assert (= (and b!592891 res!379669) b!592895))

(assert (= (and b!592895 res!379670) b!592882))

(assert (= (and b!592882 res!379657) b!592889))

(assert (= (and b!592889 res!379658) b!592885))

(assert (= (and b!592885 res!379661) b!592888))

(assert (= (and b!592885 c!66980) b!592881))

(assert (= (and b!592885 (not c!66980)) b!592892))

(assert (= (and b!592885 (not res!379663)) b!592884))

(assert (= (and b!592884 res!379668) b!592890))

(assert (= (and b!592890 (not res!379662)) b!592883))

(assert (= (and b!592883 res!379659) b!592897))

(assert (= (and b!592884 (not res!379666)) b!592894))

(declare-fun m!570937 () Bool)

(assert (=> b!592880 m!570937))

(declare-fun m!570939 () Bool)

(assert (=> b!592891 m!570939))

(declare-fun m!570941 () Bool)

(assert (=> b!592895 m!570941))

(declare-fun m!570943 () Bool)

(assert (=> b!592897 m!570943))

(assert (=> b!592897 m!570943))

(declare-fun m!570945 () Bool)

(assert (=> b!592897 m!570945))

(assert (=> b!592894 m!570943))

(assert (=> b!592894 m!570943))

(declare-fun m!570947 () Bool)

(assert (=> b!592894 m!570947))

(assert (=> b!592894 m!570943))

(declare-fun m!570949 () Bool)

(assert (=> b!592894 m!570949))

(assert (=> b!592896 m!570943))

(assert (=> b!592896 m!570943))

(declare-fun m!570951 () Bool)

(assert (=> b!592896 m!570951))

(assert (=> b!592884 m!570943))

(declare-fun m!570953 () Bool)

(assert (=> b!592884 m!570953))

(declare-fun m!570955 () Bool)

(assert (=> b!592884 m!570955))

(declare-fun m!570957 () Bool)

(assert (=> b!592886 m!570957))

(declare-fun m!570959 () Bool)

(assert (=> b!592885 m!570959))

(declare-fun m!570961 () Bool)

(assert (=> b!592885 m!570961))

(declare-fun m!570963 () Bool)

(assert (=> b!592885 m!570963))

(declare-fun m!570965 () Bool)

(assert (=> b!592885 m!570965))

(assert (=> b!592885 m!570943))

(declare-fun m!570967 () Bool)

(assert (=> b!592885 m!570967))

(assert (=> b!592885 m!570943))

(declare-fun m!570969 () Bool)

(assert (=> b!592885 m!570969))

(assert (=> b!592885 m!570953))

(assert (=> b!592890 m!570943))

(declare-fun m!570971 () Bool)

(assert (=> b!592898 m!570971))

(assert (=> b!592882 m!570953))

(declare-fun m!570973 () Bool)

(assert (=> b!592882 m!570973))

(declare-fun m!570975 () Bool)

(assert (=> b!592893 m!570975))

(declare-fun m!570977 () Bool)

(assert (=> b!592889 m!570977))

(assert (=> b!592889 m!570943))

(assert (=> b!592889 m!570943))

(declare-fun m!570979 () Bool)

(assert (=> b!592889 m!570979))

(declare-fun m!570981 () Bool)

(assert (=> start!54274 m!570981))

(declare-fun m!570983 () Bool)

(assert (=> start!54274 m!570983))

(assert (=> b!592883 m!570943))

(assert (=> b!592883 m!570943))

(declare-fun m!570985 () Bool)

(assert (=> b!592883 m!570985))

(push 1)

(assert (not b!592885))

(assert (not b!592889))

(assert (not b!592886))

(assert (not b!592880))

(assert (not b!592897))

(assert (not b!592898))

(assert (not b!592883))

(assert (not b!592894))

(assert (not start!54274))

(assert (not b!592893))

(assert (not b!592896))

(assert (not b!592891))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!86217 () Bool)

(assert (=> d!86217 (= (validKeyInArray!0 k!1786) (and (not (= k!1786 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1786 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!592886 d!86217))

(declare-fun d!86219 () Bool)

(assert (=> d!86219 (= (validKeyInArray!0 (select (arr!17717 a!2986) j!136)) (and (not (= (select (arr!17717 a!2986) j!136) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!17717 a!2986) j!136) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!592896 d!86219))

(declare-fun b!592977 () Bool)

(declare-fun e!338680 () SeekEntryResult!6164)

(assert (=> b!592977 (= e!338680 (Found!6164 lt!269220))))

(declare-fun b!592978 () Bool)

(declare-fun e!338678 () SeekEntryResult!6164)

(assert (=> b!592978 (= e!338678 (MissingVacant!6164 vacantSpotIndex!68))))

(declare-fun b!592979 () Bool)

(assert (=> b!592979 (= e!338678 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!269220 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 lt!269214 lt!269216 mask!3053))))

(declare-fun b!592981 () Bool)

(declare-fun e!338679 () SeekEntryResult!6164)

(assert (=> b!592981 (= e!338679 Undefined!6164)))

(declare-fun b!592982 () Bool)

(assert (=> b!592982 (= e!338679 e!338680)))

(declare-fun c!67016 () Bool)

(declare-fun lt!269258 () (_ BitVec 64))

(assert (=> b!592982 (= c!67016 (= lt!269258 lt!269214))))

(declare-fun b!592980 () Bool)

(declare-fun c!67014 () Bool)

(assert (=> b!592980 (= c!67014 (= lt!269258 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!592980 (= e!338680 e!338678)))

(declare-fun lt!269259 () SeekEntryResult!6164)

(declare-fun d!86221 () Bool)

(assert (=> d!86221 (and (or (is-Undefined!6164 lt!269259) (not (is-Found!6164 lt!269259)) (and (bvsge (index!26895 lt!269259) #b00000000000000000000000000000000) (bvslt (index!26895 lt!269259) (size!18081 lt!269216)))) (or (is-Undefined!6164 lt!269259) (is-Found!6164 lt!269259) (not (is-MissingVacant!6164 lt!269259)) (not (= (index!26897 lt!269259) vacantSpotIndex!68)) (and (bvsge (index!26897 lt!269259) #b00000000000000000000000000000000) (bvslt (index!26897 lt!269259) (size!18081 lt!269216)))) (or (is-Undefined!6164 lt!269259) (ite (is-Found!6164 lt!269259) (= (select (arr!17717 lt!269216) (index!26895 lt!269259)) lt!269214) (and (is-MissingVacant!6164 lt!269259) (= (index!26897 lt!269259) vacantSpotIndex!68) (= (select (arr!17717 lt!269216) (index!26897 lt!269259)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!86221 (= lt!269259 e!338679)))

(declare-fun c!67015 () Bool)

(assert (=> d!86221 (= c!67015 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!86221 (= lt!269258 (select (arr!17717 lt!269216) lt!269220))))

(assert (=> d!86221 (validMask!0 mask!3053)))

(assert (=> d!86221 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!269220 vacantSpotIndex!68 lt!269214 lt!269216 mask!3053) lt!269259)))

(assert (= (and d!86221 c!67015) b!592981))

(assert (= (and d!86221 (not c!67015)) b!592982))

(assert (= (and b!592982 c!67016) b!592977))

(assert (= (and b!592982 (not c!67016)) b!592980))

(assert (= (and b!592980 c!67014) b!592978))

(assert (= (and b!592980 (not c!67014)) b!592979))

(declare-fun m!571023 () Bool)

(assert (=> b!592979 m!571023))

(assert (=> b!592979 m!571023))

(declare-fun m!571025 () Bool)

(assert (=> b!592979 m!571025))

(declare-fun m!571027 () Bool)

(assert (=> d!86221 m!571027))

(declare-fun m!571029 () Bool)

(assert (=> d!86221 m!571029))

(declare-fun m!571031 () Bool)

(assert (=> d!86221 m!571031))

(assert (=> d!86221 m!570981))

(assert (=> b!592885 d!86221))

(declare-fun d!86227 () Bool)

(declare-fun e!338695 () Bool)

(assert (=> d!86227 e!338695))

(declare-fun res!379688 () Bool)

(assert (=> d!86227 (=> (not res!379688) (not e!338695))))

(assert (=> d!86227 (= res!379688 (and (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18081 a!2986)) (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18081 a!2986)))) (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18081 a!2986)) (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18081 a!2986)))) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18081 a!2986))))))

(declare-fun lt!269275 () Unit!18600)

(declare-fun choose!9 (array!36904 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18600)

(assert (=> d!86227 (= lt!269275 (choose!9 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!269220 vacantSpotIndex!68 mask!3053))))

(assert (=> d!86227 (validMask!0 mask!3053)))

(assert (=> d!86227 (= (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!269220 vacantSpotIndex!68 mask!3053) lt!269275)))

(declare-fun b!593006 () Bool)

(assert (=> b!593006 (= e!338695 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!269220 vacantSpotIndex!68 (select (arr!17717 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!269220 vacantSpotIndex!68 (select (store (arr!17717 a!2986) i!1108 k!1786) j!136) (array!36905 (store (arr!17717 a!2986) i!1108 k!1786) (size!18081 a!2986)) mask!3053)))))

(assert (= (and d!86227 res!379688) b!593006))

(declare-fun m!571071 () Bool)

(assert (=> d!86227 m!571071))

(assert (=> d!86227 m!570981))

(assert (=> b!593006 m!570953))

(assert (=> b!593006 m!570943))

(assert (=> b!593006 m!570961))

(declare-fun m!571073 () Bool)

(assert (=> b!593006 m!571073))

(assert (=> b!593006 m!570961))

(assert (=> b!593006 m!570943))

(assert (=> b!593006 m!570969))

(assert (=> b!592885 d!86227))

(declare-fun d!86243 () Bool)

(declare-fun lt!269284 () (_ BitVec 32))

(assert (=> d!86243 (and (bvsge lt!269284 #b00000000000000000000000000000000) (bvslt lt!269284 (bvadd mask!3053 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!86243 (= lt!269284 (choose!52 index!984 x!910 mask!3053))))

(assert (=> d!86243 (validMask!0 mask!3053)))

(assert (=> d!86243 (= (nextIndex!0 index!984 x!910 mask!3053) lt!269284)))

(declare-fun bs!18297 () Bool)

(assert (= bs!18297 d!86243))

(declare-fun m!571091 () Bool)

(assert (=> bs!18297 m!571091))

(assert (=> bs!18297 m!570981))

(assert (=> b!592885 d!86243))

(declare-fun b!593031 () Bool)

(declare-fun e!338713 () SeekEntryResult!6164)

(assert (=> b!593031 (= e!338713 (Found!6164 index!984))))

(declare-fun b!593032 () Bool)

(declare-fun e!338711 () SeekEntryResult!6164)

(assert (=> b!593032 (= e!338711 (MissingVacant!6164 vacantSpotIndex!68))))

(declare-fun b!593033 () Bool)

(assert (=> b!593033 (= e!338711 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 lt!269214 lt!269216 mask!3053))))

(declare-fun b!593035 () Bool)

(declare-fun e!338712 () SeekEntryResult!6164)

(assert (=> b!593035 (= e!338712 Undefined!6164)))

(declare-fun b!593036 () Bool)

(assert (=> b!593036 (= e!338712 e!338713)))

(declare-fun c!67037 () Bool)

(declare-fun lt!269285 () (_ BitVec 64))

(assert (=> b!593036 (= c!67037 (= lt!269285 lt!269214))))

(declare-fun b!593034 () Bool)

(declare-fun c!67035 () Bool)

(assert (=> b!593034 (= c!67035 (= lt!269285 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!593034 (= e!338713 e!338711)))

(declare-fun lt!269286 () SeekEntryResult!6164)

(declare-fun d!86253 () Bool)

(assert (=> d!86253 (and (or (is-Undefined!6164 lt!269286) (not (is-Found!6164 lt!269286)) (and (bvsge (index!26895 lt!269286) #b00000000000000000000000000000000) (bvslt (index!26895 lt!269286) (size!18081 lt!269216)))) (or (is-Undefined!6164 lt!269286) (is-Found!6164 lt!269286) (not (is-MissingVacant!6164 lt!269286)) (not (= (index!26897 lt!269286) vacantSpotIndex!68)) (and (bvsge (index!26897 lt!269286) #b00000000000000000000000000000000) (bvslt (index!26897 lt!269286) (size!18081 lt!269216)))) (or (is-Undefined!6164 lt!269286) (ite (is-Found!6164 lt!269286) (= (select (arr!17717 lt!269216) (index!26895 lt!269286)) lt!269214) (and (is-MissingVacant!6164 lt!269286) (= (index!26897 lt!269286) vacantSpotIndex!68) (= (select (arr!17717 lt!269216) (index!26897 lt!269286)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!86253 (= lt!269286 e!338712)))

(declare-fun c!67036 () Bool)

(assert (=> d!86253 (= c!67036 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!86253 (= lt!269285 (select (arr!17717 lt!269216) index!984))))

(assert (=> d!86253 (validMask!0 mask!3053)))

(assert (=> d!86253 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!269214 lt!269216 mask!3053) lt!269286)))

(assert (= (and d!86253 c!67036) b!593035))

(assert (= (and d!86253 (not c!67036)) b!593036))

(assert (= (and b!593036 c!67037) b!593031))

(assert (= (and b!593036 (not c!67037)) b!593034))

(assert (= (and b!593034 c!67035) b!593032))

(assert (= (and b!593034 (not c!67035)) b!593033))

(assert (=> b!593033 m!570959))

(assert (=> b!593033 m!570959))

(declare-fun m!571093 () Bool)

(assert (=> b!593033 m!571093))

(declare-fun m!571095 () Bool)

(assert (=> d!86253 m!571095))

(declare-fun m!571097 () Bool)

(assert (=> d!86253 m!571097))

(declare-fun m!571099 () Bool)

(assert (=> d!86253 m!571099))

(assert (=> d!86253 m!570981))

(assert (=> b!592885 d!86253))

(declare-fun b!593037 () Bool)

(declare-fun e!338716 () SeekEntryResult!6164)

(assert (=> b!593037 (= e!338716 (Found!6164 lt!269220))))

(declare-fun b!593038 () Bool)

(declare-fun e!338714 () SeekEntryResult!6164)

(assert (=> b!593038 (= e!338714 (MissingVacant!6164 vacantSpotIndex!68))))

(declare-fun b!593039 () Bool)

(assert (=> b!593039 (= e!338714 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!269220 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 (select (arr!17717 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!593041 () Bool)

(declare-fun e!338715 () SeekEntryResult!6164)

(assert (=> b!593041 (= e!338715 Undefined!6164)))

(declare-fun b!593042 () Bool)

(assert (=> b!593042 (= e!338715 e!338716)))

(declare-fun c!67040 () Bool)

(declare-fun lt!269290 () (_ BitVec 64))

(assert (=> b!593042 (= c!67040 (= lt!269290 (select (arr!17717 a!2986) j!136)))))

(declare-fun b!593040 () Bool)

(declare-fun c!67038 () Bool)

(assert (=> b!593040 (= c!67038 (= lt!269290 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!593040 (= e!338716 e!338714)))

(declare-fun lt!269291 () SeekEntryResult!6164)

(declare-fun d!86255 () Bool)

