; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!54144 () Bool)

(assert start!54144)

(declare-fun b!590820 () Bool)

(declare-fun res!377995 () Bool)

(declare-fun e!337333 () Bool)

(assert (=> b!590820 (=> (not res!377995) (not e!337333))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!590820 (= res!377995 (validKeyInArray!0 k!1786))))

(declare-fun b!590821 () Bool)

(declare-fun e!337335 () Bool)

(assert (=> b!590821 (= e!337333 e!337335)))

(declare-fun res!377992 () Bool)

(assert (=> b!590821 (=> (not res!377992) (not e!337335))))

(declare-datatypes ((SeekEntryResult!6132 0))(
  ( (MissingZero!6132 (index!26763 (_ BitVec 32))) (Found!6132 (index!26764 (_ BitVec 32))) (Intermediate!6132 (undefined!6944 Bool) (index!26765 (_ BitVec 32)) (x!55589 (_ BitVec 32))) (Undefined!6132) (MissingVacant!6132 (index!26766 (_ BitVec 32))) )
))
(declare-fun lt!268094 () SeekEntryResult!6132)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!590821 (= res!377992 (or (= lt!268094 (MissingZero!6132 i!1108)) (= lt!268094 (MissingVacant!6132 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-datatypes ((array!36837 0))(
  ( (array!36838 (arr!17685 (Array (_ BitVec 32) (_ BitVec 64))) (size!18049 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36837)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36837 (_ BitVec 32)) SeekEntryResult!6132)

(assert (=> b!590821 (= lt!268094 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!590822 () Bool)

(declare-fun e!337334 () Bool)

(declare-fun e!337332 () Bool)

(assert (=> b!590822 (= e!337334 (not e!337332))))

(declare-fun res!377991 () Bool)

(assert (=> b!590822 (=> res!377991 e!337332)))

(declare-fun lt!268093 () SeekEntryResult!6132)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!590822 (= res!377991 (not (= lt!268093 (Found!6132 index!984))))))

(declare-datatypes ((Unit!18472 0))(
  ( (Unit!18473) )
))
(declare-fun lt!268100 () Unit!18472)

(declare-fun e!337336 () Unit!18472)

(assert (=> b!590822 (= lt!268100 e!337336)))

(declare-fun c!66785 () Bool)

(assert (=> b!590822 (= c!66785 (= lt!268093 Undefined!6132))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!268098 () (_ BitVec 64))

(declare-fun lt!268099 () array!36837)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36837 (_ BitVec 32)) SeekEntryResult!6132)

(assert (=> b!590822 (= lt!268093 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!268098 lt!268099 mask!3053))))

(declare-fun e!337342 () Bool)

(assert (=> b!590822 e!337342))

(declare-fun res!377989 () Bool)

(assert (=> b!590822 (=> (not res!377989) (not e!337342))))

(declare-fun lt!268096 () (_ BitVec 32))

(declare-fun lt!268092 () SeekEntryResult!6132)

(assert (=> b!590822 (= res!377989 (= lt!268092 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!268096 vacantSpotIndex!68 lt!268098 lt!268099 mask!3053)))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!590822 (= lt!268092 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!268096 vacantSpotIndex!68 (select (arr!17685 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!590822 (= lt!268098 (select (store (arr!17685 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!268097 () Unit!18472)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36837 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18472)

(assert (=> b!590822 (= lt!268097 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!268096 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!590822 (= lt!268096 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!590823 () Bool)

(declare-fun e!337340 () Bool)

(assert (=> b!590823 (= e!337340 e!337334)))

(declare-fun res!377997 () Bool)

(assert (=> b!590823 (=> (not res!377997) (not e!337334))))

(declare-fun lt!268095 () SeekEntryResult!6132)

(assert (=> b!590823 (= res!377997 (and (= lt!268095 (Found!6132 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17685 a!2986) index!984) (select (arr!17685 a!2986) j!136))) (not (= (select (arr!17685 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!590823 (= lt!268095 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17685 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!590824 () Bool)

(declare-fun res!377986 () Bool)

(assert (=> b!590824 (=> (not res!377986) (not e!337333))))

(declare-fun arrayContainsKey!0 (array!36837 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!590824 (= res!377986 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!590825 () Bool)

(declare-fun e!337338 () Bool)

(declare-fun e!337337 () Bool)

(assert (=> b!590825 (= e!337338 e!337337)))

(declare-fun res!377985 () Bool)

(assert (=> b!590825 (=> res!377985 e!337337)))

(declare-fun lt!268101 () (_ BitVec 64))

(assert (=> b!590825 (= res!377985 (or (not (= (select (arr!17685 a!2986) j!136) lt!268098)) (not (= (select (arr!17685 a!2986) j!136) lt!268101)) (bvsge j!136 index!984)))))

(declare-fun res!377999 () Bool)

(assert (=> start!54144 (=> (not res!377999) (not e!337333))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54144 (= res!377999 (validMask!0 mask!3053))))

(assert (=> start!54144 e!337333))

(assert (=> start!54144 true))

(declare-fun array_inv!13459 (array!36837) Bool)

(assert (=> start!54144 (array_inv!13459 a!2986)))

(declare-fun b!590826 () Bool)

(assert (=> b!590826 (= e!337332 true)))

(assert (=> b!590826 e!337338))

(declare-fun res!377988 () Bool)

(assert (=> b!590826 (=> (not res!377988) (not e!337338))))

(assert (=> b!590826 (= res!377988 (= lt!268101 (select (arr!17685 a!2986) j!136)))))

(assert (=> b!590826 (= lt!268101 (select (store (arr!17685 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!590827 () Bool)

(declare-fun e!337339 () Bool)

(assert (=> b!590827 (= e!337337 e!337339)))

(declare-fun res!377996 () Bool)

(assert (=> b!590827 (=> (not res!377996) (not e!337339))))

(assert (=> b!590827 (= res!377996 (arrayContainsKey!0 lt!268099 (select (arr!17685 a!2986) j!136) j!136))))

(declare-fun b!590828 () Bool)

(declare-fun res!377993 () Bool)

(assert (=> b!590828 (=> (not res!377993) (not e!337335))))

(assert (=> b!590828 (= res!377993 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17685 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!590829 () Bool)

(declare-fun res!377998 () Bool)

(assert (=> b!590829 (=> (not res!377998) (not e!337335))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36837 (_ BitVec 32)) Bool)

(assert (=> b!590829 (= res!377998 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!590830 () Bool)

(declare-fun Unit!18474 () Unit!18472)

(assert (=> b!590830 (= e!337336 Unit!18474)))

(declare-fun b!590831 () Bool)

(declare-fun res!377994 () Bool)

(assert (=> b!590831 (=> (not res!377994) (not e!337333))))

(assert (=> b!590831 (= res!377994 (validKeyInArray!0 (select (arr!17685 a!2986) j!136)))))

(declare-fun b!590832 () Bool)

(declare-fun res!377984 () Bool)

(assert (=> b!590832 (=> (not res!377984) (not e!337335))))

(declare-datatypes ((List!11779 0))(
  ( (Nil!11776) (Cons!11775 (h!12820 (_ BitVec 64)) (t!18015 List!11779)) )
))
(declare-fun arrayNoDuplicates!0 (array!36837 (_ BitVec 32) List!11779) Bool)

(assert (=> b!590832 (= res!377984 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11776))))

(declare-fun b!590833 () Bool)

(assert (=> b!590833 (= e!337342 (= lt!268095 lt!268092))))

(declare-fun b!590834 () Bool)

(assert (=> b!590834 (= e!337339 (arrayContainsKey!0 lt!268099 (select (arr!17685 a!2986) j!136) index!984))))

(declare-fun b!590835 () Bool)

(declare-fun Unit!18475 () Unit!18472)

(assert (=> b!590835 (= e!337336 Unit!18475)))

(assert (=> b!590835 false))

(declare-fun b!590836 () Bool)

(declare-fun res!377987 () Bool)

(assert (=> b!590836 (=> (not res!377987) (not e!337333))))

(assert (=> b!590836 (= res!377987 (and (= (size!18049 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18049 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18049 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!590837 () Bool)

(assert (=> b!590837 (= e!337335 e!337340)))

(declare-fun res!377990 () Bool)

(assert (=> b!590837 (=> (not res!377990) (not e!337340))))

(assert (=> b!590837 (= res!377990 (= (select (store (arr!17685 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!590837 (= lt!268099 (array!36838 (store (arr!17685 a!2986) i!1108 k!1786) (size!18049 a!2986)))))

(assert (= (and start!54144 res!377999) b!590836))

(assert (= (and b!590836 res!377987) b!590831))

(assert (= (and b!590831 res!377994) b!590820))

(assert (= (and b!590820 res!377995) b!590824))

(assert (= (and b!590824 res!377986) b!590821))

(assert (= (and b!590821 res!377992) b!590829))

(assert (= (and b!590829 res!377998) b!590832))

(assert (= (and b!590832 res!377984) b!590828))

(assert (= (and b!590828 res!377993) b!590837))

(assert (= (and b!590837 res!377990) b!590823))

(assert (= (and b!590823 res!377997) b!590822))

(assert (= (and b!590822 res!377989) b!590833))

(assert (= (and b!590822 c!66785) b!590835))

(assert (= (and b!590822 (not c!66785)) b!590830))

(assert (= (and b!590822 (not res!377991)) b!590826))

(assert (= (and b!590826 res!377988) b!590825))

(assert (= (and b!590825 (not res!377985)) b!590827))

(assert (= (and b!590827 res!377996) b!590834))

(declare-fun m!569163 () Bool)

(assert (=> b!590829 m!569163))

(declare-fun m!569165 () Bool)

(assert (=> b!590820 m!569165))

(declare-fun m!569167 () Bool)

(assert (=> start!54144 m!569167))

(declare-fun m!569169 () Bool)

(assert (=> start!54144 m!569169))

(declare-fun m!569171 () Bool)

(assert (=> b!590821 m!569171))

(declare-fun m!569173 () Bool)

(assert (=> b!590824 m!569173))

(declare-fun m!569175 () Bool)

(assert (=> b!590826 m!569175))

(declare-fun m!569177 () Bool)

(assert (=> b!590826 m!569177))

(declare-fun m!569179 () Bool)

(assert (=> b!590826 m!569179))

(assert (=> b!590831 m!569175))

(assert (=> b!590831 m!569175))

(declare-fun m!569181 () Bool)

(assert (=> b!590831 m!569181))

(assert (=> b!590827 m!569175))

(assert (=> b!590827 m!569175))

(declare-fun m!569183 () Bool)

(assert (=> b!590827 m!569183))

(declare-fun m!569185 () Bool)

(assert (=> b!590832 m!569185))

(declare-fun m!569187 () Bool)

(assert (=> b!590823 m!569187))

(assert (=> b!590823 m!569175))

(assert (=> b!590823 m!569175))

(declare-fun m!569189 () Bool)

(assert (=> b!590823 m!569189))

(assert (=> b!590825 m!569175))

(assert (=> b!590834 m!569175))

(assert (=> b!590834 m!569175))

(declare-fun m!569191 () Bool)

(assert (=> b!590834 m!569191))

(assert (=> b!590837 m!569177))

(declare-fun m!569193 () Bool)

(assert (=> b!590837 m!569193))

(declare-fun m!569195 () Bool)

(assert (=> b!590822 m!569195))

(declare-fun m!569197 () Bool)

(assert (=> b!590822 m!569197))

(assert (=> b!590822 m!569175))

(assert (=> b!590822 m!569177))

(declare-fun m!569199 () Bool)

(assert (=> b!590822 m!569199))

(declare-fun m!569201 () Bool)

(assert (=> b!590822 m!569201))

(assert (=> b!590822 m!569175))

(declare-fun m!569203 () Bool)

(assert (=> b!590822 m!569203))

(declare-fun m!569205 () Bool)

(assert (=> b!590822 m!569205))

(declare-fun m!569207 () Bool)

(assert (=> b!590828 m!569207))

(push 1)

