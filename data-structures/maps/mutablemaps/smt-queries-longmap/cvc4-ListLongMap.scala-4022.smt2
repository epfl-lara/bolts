; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!54850 () Bool)

(assert start!54850)

(declare-fun b!598859 () Bool)

(declare-fun res!384057 () Bool)

(declare-fun e!342368 () Bool)

(assert (=> b!598859 (=> (not res!384057) (not e!342368))))

(declare-datatypes ((array!37048 0))(
  ( (array!37049 (arr!17780 (Array (_ BitVec 32) (_ BitVec 64))) (size!18144 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37048)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37048 (_ BitVec 32)) Bool)

(assert (=> b!598859 (= res!384057 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!598860 () Bool)

(declare-fun e!342363 () Bool)

(assert (=> b!598860 (= e!342368 e!342363)))

(declare-fun res!384056 () Bool)

(assert (=> b!598860 (=> (not res!384056) (not e!342363))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!598860 (= res!384056 (= (select (store (arr!17780 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!272222 () array!37048)

(assert (=> b!598860 (= lt!272222 (array!37049 (store (arr!17780 a!2986) i!1108 k!1786) (size!18144 a!2986)))))

(declare-fun e!342359 () Bool)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun b!598861 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!37048 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!598861 (= e!342359 (arrayContainsKey!0 lt!272222 (select (arr!17780 a!2986) j!136) index!984))))

(declare-fun res!384060 () Bool)

(declare-fun e!342370 () Bool)

(assert (=> start!54850 (=> (not res!384060) (not e!342370))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54850 (= res!384060 (validMask!0 mask!3053))))

(assert (=> start!54850 e!342370))

(assert (=> start!54850 true))

(declare-fun array_inv!13554 (array!37048) Bool)

(assert (=> start!54850 (array_inv!13554 a!2986)))

(declare-fun b!598862 () Bool)

(declare-fun e!342367 () Bool)

(declare-fun e!342369 () Bool)

(assert (=> b!598862 (= e!342367 e!342369)))

(declare-fun res!384061 () Bool)

(assert (=> b!598862 (=> res!384061 e!342369)))

(declare-fun lt!272220 () (_ BitVec 64))

(declare-fun lt!272223 () (_ BitVec 64))

(assert (=> b!598862 (= res!384061 (or (not (= (select (arr!17780 a!2986) j!136) lt!272223)) (not (= (select (arr!17780 a!2986) j!136) lt!272220)) (bvsge j!136 index!984)))))

(declare-fun b!598863 () Bool)

(declare-fun res!384054 () Bool)

(assert (=> b!598863 (=> (not res!384054) (not e!342370))))

(assert (=> b!598863 (= res!384054 (and (= (size!18144 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18144 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18144 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!598864 () Bool)

(assert (=> b!598864 (= e!342370 e!342368)))

(declare-fun res!384049 () Bool)

(assert (=> b!598864 (=> (not res!384049) (not e!342368))))

(declare-datatypes ((SeekEntryResult!6227 0))(
  ( (MissingZero!6227 (index!27164 (_ BitVec 32))) (Found!6227 (index!27165 (_ BitVec 32))) (Intermediate!6227 (undefined!7039 Bool) (index!27166 (_ BitVec 32)) (x!55995 (_ BitVec 32))) (Undefined!6227) (MissingVacant!6227 (index!27167 (_ BitVec 32))) )
))
(declare-fun lt!272219 () SeekEntryResult!6227)

(assert (=> b!598864 (= res!384049 (or (= lt!272219 (MissingZero!6227 i!1108)) (= lt!272219 (MissingVacant!6227 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37048 (_ BitVec 32)) SeekEntryResult!6227)

(assert (=> b!598864 (= lt!272219 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!598865 () Bool)

(declare-datatypes ((Unit!18852 0))(
  ( (Unit!18853) )
))
(declare-fun e!342364 () Unit!18852)

(declare-fun Unit!18854 () Unit!18852)

(assert (=> b!598865 (= e!342364 Unit!18854)))

(assert (=> b!598865 false))

(declare-fun b!598866 () Bool)

(declare-fun res!384058 () Bool)

(assert (=> b!598866 (=> (not res!384058) (not e!342368))))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!598866 (= res!384058 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17780 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!598867 () Bool)

(declare-fun e!342362 () Bool)

(declare-fun e!342365 () Bool)

(assert (=> b!598867 (= e!342362 e!342365)))

(declare-fun res!384053 () Bool)

(assert (=> b!598867 (=> res!384053 e!342365)))

(assert (=> b!598867 (= res!384053 (or (not (= (select (arr!17780 a!2986) j!136) lt!272223)) (not (= (select (arr!17780 a!2986) j!136) lt!272220)) (bvsge j!136 index!984)))))

(assert (=> b!598867 e!342367))

(declare-fun res!384055 () Bool)

(assert (=> b!598867 (=> (not res!384055) (not e!342367))))

(assert (=> b!598867 (= res!384055 (= lt!272220 (select (arr!17780 a!2986) j!136)))))

(assert (=> b!598867 (= lt!272220 (select (store (arr!17780 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!598868 () Bool)

(assert (=> b!598868 (= e!342369 e!342359)))

(declare-fun res!384052 () Bool)

(assert (=> b!598868 (=> (not res!384052) (not e!342359))))

(assert (=> b!598868 (= res!384052 (arrayContainsKey!0 lt!272222 (select (arr!17780 a!2986) j!136) j!136))))

(declare-fun b!598869 () Bool)

(declare-fun Unit!18855 () Unit!18852)

(assert (=> b!598869 (= e!342364 Unit!18855)))

(declare-fun b!598870 () Bool)

(declare-fun res!384050 () Bool)

(assert (=> b!598870 (=> (not res!384050) (not e!342370))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!598870 (= res!384050 (validKeyInArray!0 (select (arr!17780 a!2986) j!136)))))

(declare-fun b!598871 () Bool)

(declare-fun e!342360 () Bool)

(assert (=> b!598871 (= e!342363 e!342360)))

(declare-fun res!384062 () Bool)

(assert (=> b!598871 (=> (not res!384062) (not e!342360))))

(declare-fun lt!272215 () SeekEntryResult!6227)

(assert (=> b!598871 (= res!384062 (and (= lt!272215 (Found!6227 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17780 a!2986) index!984) (select (arr!17780 a!2986) j!136))) (not (= (select (arr!17780 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37048 (_ BitVec 32)) SeekEntryResult!6227)

(assert (=> b!598871 (= lt!272215 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17780 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!598872 () Bool)

(declare-fun res!384059 () Bool)

(assert (=> b!598872 (=> (not res!384059) (not e!342368))))

(declare-datatypes ((List!11874 0))(
  ( (Nil!11871) (Cons!11870 (h!12915 (_ BitVec 64)) (t!18110 List!11874)) )
))
(declare-fun arrayNoDuplicates!0 (array!37048 (_ BitVec 32) List!11874) Bool)

(assert (=> b!598872 (= res!384059 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11871))))

(declare-fun b!598873 () Bool)

(assert (=> b!598873 (= e!342365 true)))

(assert (=> b!598873 (arrayNoDuplicates!0 lt!272222 #b00000000000000000000000000000000 Nil!11871)))

(declare-fun lt!272217 () Unit!18852)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37048 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11874) Unit!18852)

(assert (=> b!598873 (= lt!272217 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11871))))

(assert (=> b!598873 (arrayContainsKey!0 lt!272222 (select (arr!17780 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!272226 () Unit!18852)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37048 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18852)

(assert (=> b!598873 (= lt!272226 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!272222 (select (arr!17780 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!598874 () Bool)

(declare-fun res!384063 () Bool)

(assert (=> b!598874 (=> (not res!384063) (not e!342370))))

(assert (=> b!598874 (= res!384063 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!598875 () Bool)

(assert (=> b!598875 (= e!342360 (not e!342362))))

(declare-fun res!384051 () Bool)

(assert (=> b!598875 (=> res!384051 e!342362)))

(declare-fun lt!272218 () SeekEntryResult!6227)

(assert (=> b!598875 (= res!384051 (not (= lt!272218 (Found!6227 index!984))))))

(declare-fun lt!272225 () Unit!18852)

(assert (=> b!598875 (= lt!272225 e!342364)))

(declare-fun c!67772 () Bool)

(assert (=> b!598875 (= c!67772 (= lt!272218 Undefined!6227))))

(assert (=> b!598875 (= lt!272218 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!272223 lt!272222 mask!3053))))

(declare-fun e!342361 () Bool)

(assert (=> b!598875 e!342361))

(declare-fun res!384064 () Bool)

(assert (=> b!598875 (=> (not res!384064) (not e!342361))))

(declare-fun lt!272221 () SeekEntryResult!6227)

(declare-fun lt!272216 () (_ BitVec 32))

(assert (=> b!598875 (= res!384064 (= lt!272221 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!272216 vacantSpotIndex!68 lt!272223 lt!272222 mask!3053)))))

(assert (=> b!598875 (= lt!272221 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!272216 vacantSpotIndex!68 (select (arr!17780 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!598875 (= lt!272223 (select (store (arr!17780 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!272224 () Unit!18852)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37048 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18852)

(assert (=> b!598875 (= lt!272224 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!272216 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!598875 (= lt!272216 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!598876 () Bool)

(assert (=> b!598876 (= e!342361 (= lt!272215 lt!272221))))

(declare-fun b!598877 () Bool)

(declare-fun res!384065 () Bool)

(assert (=> b!598877 (=> (not res!384065) (not e!342370))))

(assert (=> b!598877 (= res!384065 (validKeyInArray!0 k!1786))))

(assert (= (and start!54850 res!384060) b!598863))

(assert (= (and b!598863 res!384054) b!598870))

(assert (= (and b!598870 res!384050) b!598877))

(assert (= (and b!598877 res!384065) b!598874))

(assert (= (and b!598874 res!384063) b!598864))

(assert (= (and b!598864 res!384049) b!598859))

(assert (= (and b!598859 res!384057) b!598872))

(assert (= (and b!598872 res!384059) b!598866))

(assert (= (and b!598866 res!384058) b!598860))

(assert (= (and b!598860 res!384056) b!598871))

(assert (= (and b!598871 res!384062) b!598875))

(assert (= (and b!598875 res!384064) b!598876))

(assert (= (and b!598875 c!67772) b!598865))

(assert (= (and b!598875 (not c!67772)) b!598869))

(assert (= (and b!598875 (not res!384051)) b!598867))

(assert (= (and b!598867 res!384055) b!598862))

(assert (= (and b!598862 (not res!384061)) b!598868))

(assert (= (and b!598868 res!384052) b!598861))

(assert (= (and b!598867 (not res!384053)) b!598873))

(declare-fun m!576183 () Bool)

(assert (=> b!598861 m!576183))

(assert (=> b!598861 m!576183))

(declare-fun m!576185 () Bool)

(assert (=> b!598861 m!576185))

(declare-fun m!576187 () Bool)

(assert (=> b!598866 m!576187))

(declare-fun m!576189 () Bool)

(assert (=> b!598877 m!576189))

(declare-fun m!576191 () Bool)

(assert (=> b!598864 m!576191))

(declare-fun m!576193 () Bool)

(assert (=> b!598875 m!576193))

(declare-fun m!576195 () Bool)

(assert (=> b!598875 m!576195))

(assert (=> b!598875 m!576183))

(declare-fun m!576197 () Bool)

(assert (=> b!598875 m!576197))

(assert (=> b!598875 m!576183))

(declare-fun m!576199 () Bool)

(assert (=> b!598875 m!576199))

(declare-fun m!576201 () Bool)

(assert (=> b!598875 m!576201))

(declare-fun m!576203 () Bool)

(assert (=> b!598875 m!576203))

(declare-fun m!576205 () Bool)

(assert (=> b!598875 m!576205))

(declare-fun m!576207 () Bool)

(assert (=> b!598872 m!576207))

(declare-fun m!576209 () Bool)

(assert (=> b!598859 m!576209))

(assert (=> b!598862 m!576183))

(assert (=> b!598860 m!576197))

(declare-fun m!576211 () Bool)

(assert (=> b!598860 m!576211))

(assert (=> b!598870 m!576183))

(assert (=> b!598870 m!576183))

(declare-fun m!576213 () Bool)

(assert (=> b!598870 m!576213))

(declare-fun m!576215 () Bool)

(assert (=> b!598874 m!576215))

(assert (=> b!598867 m!576183))

(assert (=> b!598867 m!576197))

(declare-fun m!576217 () Bool)

(assert (=> b!598867 m!576217))

(assert (=> b!598873 m!576183))

(assert (=> b!598873 m!576183))

(declare-fun m!576219 () Bool)

(assert (=> b!598873 m!576219))

(declare-fun m!576221 () Bool)

(assert (=> b!598873 m!576221))

(assert (=> b!598873 m!576183))

(declare-fun m!576223 () Bool)

(assert (=> b!598873 m!576223))

(declare-fun m!576225 () Bool)

(assert (=> b!598873 m!576225))

(assert (=> b!598868 m!576183))

(assert (=> b!598868 m!576183))

(declare-fun m!576227 () Bool)

(assert (=> b!598868 m!576227))

(declare-fun m!576229 () Bool)

(assert (=> b!598871 m!576229))

(assert (=> b!598871 m!576183))

(assert (=> b!598871 m!576183))

(declare-fun m!576231 () Bool)

(assert (=> b!598871 m!576231))

(declare-fun m!576233 () Bool)

(assert (=> start!54850 m!576233))

(declare-fun m!576235 () Bool)

(assert (=> start!54850 m!576235))

(push 1)

