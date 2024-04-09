; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!54852 () Bool)

(assert start!54852)

(declare-fun b!598916 () Bool)

(declare-fun res!384103 () Bool)

(declare-fun e!342403 () Bool)

(assert (=> b!598916 (=> (not res!384103) (not e!342403))))

(declare-datatypes ((array!37050 0))(
  ( (array!37051 (arr!17781 (Array (_ BitVec 32) (_ BitVec 64))) (size!18145 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37050)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37050 (_ BitVec 32)) Bool)

(assert (=> b!598916 (= res!384103 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!598917 () Bool)

(declare-fun res!384113 () Bool)

(declare-fun e!342402 () Bool)

(assert (=> b!598917 (=> (not res!384113) (not e!342402))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!598917 (= res!384113 (and (= (size!18145 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18145 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18145 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!598918 () Bool)

(declare-fun res!384100 () Bool)

(assert (=> b!598918 (=> (not res!384100) (not e!342402))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!598918 (= res!384100 (validKeyInArray!0 (select (arr!17781 a!2986) j!136)))))

(declare-fun b!598919 () Bool)

(declare-fun res!384104 () Bool)

(assert (=> b!598919 (=> (not res!384104) (not e!342403))))

(declare-datatypes ((List!11875 0))(
  ( (Nil!11872) (Cons!11871 (h!12916 (_ BitVec 64)) (t!18111 List!11875)) )
))
(declare-fun arrayNoDuplicates!0 (array!37050 (_ BitVec 32) List!11875) Bool)

(assert (=> b!598919 (= res!384104 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11872))))

(declare-fun b!598920 () Bool)

(declare-datatypes ((Unit!18856 0))(
  ( (Unit!18857) )
))
(declare-fun e!342401 () Unit!18856)

(declare-fun Unit!18858 () Unit!18856)

(assert (=> b!598920 (= e!342401 Unit!18858)))

(declare-fun b!598921 () Bool)

(declare-fun res!384110 () Bool)

(assert (=> b!598921 (=> (not res!384110) (not e!342403))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!598921 (= res!384110 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17781 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!598922 () Bool)

(declare-fun e!342398 () Bool)

(assert (=> b!598922 (= e!342398 true)))

(declare-fun lt!272261 () array!37050)

(assert (=> b!598922 (arrayNoDuplicates!0 lt!272261 #b00000000000000000000000000000000 Nil!11872)))

(declare-fun lt!272252 () Unit!18856)

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37050 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11875) Unit!18856)

(assert (=> b!598922 (= lt!272252 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11872))))

(declare-fun arrayContainsKey!0 (array!37050 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!598922 (arrayContainsKey!0 lt!272261 (select (arr!17781 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!272255 () Unit!18856)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37050 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18856)

(assert (=> b!598922 (= lt!272255 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!272261 (select (arr!17781 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!598923 () Bool)

(declare-fun e!342399 () Bool)

(assert (=> b!598923 (= e!342399 (arrayContainsKey!0 lt!272261 (select (arr!17781 a!2986) j!136) index!984))))

(declare-fun b!598924 () Bool)

(declare-fun e!342396 () Bool)

(declare-fun e!342397 () Bool)

(assert (=> b!598924 (= e!342396 e!342397)))

(declare-fun res!384116 () Bool)

(assert (=> b!598924 (=> (not res!384116) (not e!342397))))

(declare-datatypes ((SeekEntryResult!6228 0))(
  ( (MissingZero!6228 (index!27168 (_ BitVec 32))) (Found!6228 (index!27169 (_ BitVec 32))) (Intermediate!6228 (undefined!7040 Bool) (index!27170 (_ BitVec 32)) (x!56004 (_ BitVec 32))) (Undefined!6228) (MissingVacant!6228 (index!27171 (_ BitVec 32))) )
))
(declare-fun lt!272251 () SeekEntryResult!6228)

(assert (=> b!598924 (= res!384116 (and (= lt!272251 (Found!6228 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17781 a!2986) index!984) (select (arr!17781 a!2986) j!136))) (not (= (select (arr!17781 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37050 (_ BitVec 32)) SeekEntryResult!6228)

(assert (=> b!598924 (= lt!272251 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17781 a!2986) j!136) a!2986 mask!3053))))

(declare-fun res!384108 () Bool)

(assert (=> start!54852 (=> (not res!384108) (not e!342402))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54852 (= res!384108 (validMask!0 mask!3053))))

(assert (=> start!54852 e!342402))

(assert (=> start!54852 true))

(declare-fun array_inv!13555 (array!37050) Bool)

(assert (=> start!54852 (array_inv!13555 a!2986)))

(declare-fun b!598925 () Bool)

(declare-fun res!384115 () Bool)

(assert (=> b!598925 (=> (not res!384115) (not e!342402))))

(assert (=> b!598925 (= res!384115 (validKeyInArray!0 k!1786))))

(declare-fun b!598926 () Bool)

(declare-fun e!342404 () Bool)

(assert (=> b!598926 (= e!342404 e!342398)))

(declare-fun res!384107 () Bool)

(assert (=> b!598926 (=> res!384107 e!342398)))

(declare-fun lt!272260 () (_ BitVec 64))

(declare-fun lt!272262 () (_ BitVec 64))

(assert (=> b!598926 (= res!384107 (or (not (= (select (arr!17781 a!2986) j!136) lt!272260)) (not (= (select (arr!17781 a!2986) j!136) lt!272262)) (bvsge j!136 index!984)))))

(declare-fun e!342400 () Bool)

(assert (=> b!598926 e!342400))

(declare-fun res!384109 () Bool)

(assert (=> b!598926 (=> (not res!384109) (not e!342400))))

(assert (=> b!598926 (= res!384109 (= lt!272262 (select (arr!17781 a!2986) j!136)))))

(assert (=> b!598926 (= lt!272262 (select (store (arr!17781 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!598927 () Bool)

(declare-fun res!384106 () Bool)

(assert (=> b!598927 (=> (not res!384106) (not e!342402))))

(assert (=> b!598927 (= res!384106 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!598928 () Bool)

(assert (=> b!598928 (= e!342402 e!342403)))

(declare-fun res!384111 () Bool)

(assert (=> b!598928 (=> (not res!384111) (not e!342403))))

(declare-fun lt!272253 () SeekEntryResult!6228)

(assert (=> b!598928 (= res!384111 (or (= lt!272253 (MissingZero!6228 i!1108)) (= lt!272253 (MissingVacant!6228 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37050 (_ BitVec 32)) SeekEntryResult!6228)

(assert (=> b!598928 (= lt!272253 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!598929 () Bool)

(declare-fun e!342395 () Bool)

(declare-fun lt!272254 () SeekEntryResult!6228)

(assert (=> b!598929 (= e!342395 (= lt!272251 lt!272254))))

(declare-fun b!598930 () Bool)

(declare-fun e!342405 () Bool)

(assert (=> b!598930 (= e!342400 e!342405)))

(declare-fun res!384112 () Bool)

(assert (=> b!598930 (=> res!384112 e!342405)))

(assert (=> b!598930 (= res!384112 (or (not (= (select (arr!17781 a!2986) j!136) lt!272260)) (not (= (select (arr!17781 a!2986) j!136) lt!272262)) (bvsge j!136 index!984)))))

(declare-fun b!598931 () Bool)

(declare-fun Unit!18859 () Unit!18856)

(assert (=> b!598931 (= e!342401 Unit!18859)))

(assert (=> b!598931 false))

(declare-fun b!598932 () Bool)

(assert (=> b!598932 (= e!342405 e!342399)))

(declare-fun res!384105 () Bool)

(assert (=> b!598932 (=> (not res!384105) (not e!342399))))

(assert (=> b!598932 (= res!384105 (arrayContainsKey!0 lt!272261 (select (arr!17781 a!2986) j!136) j!136))))

(declare-fun b!598933 () Bool)

(assert (=> b!598933 (= e!342397 (not e!342404))))

(declare-fun res!384102 () Bool)

(assert (=> b!598933 (=> res!384102 e!342404)))

(declare-fun lt!272256 () SeekEntryResult!6228)

(assert (=> b!598933 (= res!384102 (not (= lt!272256 (Found!6228 index!984))))))

(declare-fun lt!272258 () Unit!18856)

(assert (=> b!598933 (= lt!272258 e!342401)))

(declare-fun c!67775 () Bool)

(assert (=> b!598933 (= c!67775 (= lt!272256 Undefined!6228))))

(assert (=> b!598933 (= lt!272256 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!272260 lt!272261 mask!3053))))

(assert (=> b!598933 e!342395))

(declare-fun res!384114 () Bool)

(assert (=> b!598933 (=> (not res!384114) (not e!342395))))

(declare-fun lt!272257 () (_ BitVec 32))

(assert (=> b!598933 (= res!384114 (= lt!272254 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!272257 vacantSpotIndex!68 lt!272260 lt!272261 mask!3053)))))

(assert (=> b!598933 (= lt!272254 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!272257 vacantSpotIndex!68 (select (arr!17781 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!598933 (= lt!272260 (select (store (arr!17781 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!272259 () Unit!18856)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37050 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18856)

(assert (=> b!598933 (= lt!272259 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!272257 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!598933 (= lt!272257 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!598934 () Bool)

(assert (=> b!598934 (= e!342403 e!342396)))

(declare-fun res!384101 () Bool)

(assert (=> b!598934 (=> (not res!384101) (not e!342396))))

(assert (=> b!598934 (= res!384101 (= (select (store (arr!17781 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!598934 (= lt!272261 (array!37051 (store (arr!17781 a!2986) i!1108 k!1786) (size!18145 a!2986)))))

(assert (= (and start!54852 res!384108) b!598917))

(assert (= (and b!598917 res!384113) b!598918))

(assert (= (and b!598918 res!384100) b!598925))

(assert (= (and b!598925 res!384115) b!598927))

(assert (= (and b!598927 res!384106) b!598928))

(assert (= (and b!598928 res!384111) b!598916))

(assert (= (and b!598916 res!384103) b!598919))

(assert (= (and b!598919 res!384104) b!598921))

(assert (= (and b!598921 res!384110) b!598934))

(assert (= (and b!598934 res!384101) b!598924))

(assert (= (and b!598924 res!384116) b!598933))

(assert (= (and b!598933 res!384114) b!598929))

(assert (= (and b!598933 c!67775) b!598931))

(assert (= (and b!598933 (not c!67775)) b!598920))

(assert (= (and b!598933 (not res!384102)) b!598926))

(assert (= (and b!598926 res!384109) b!598930))

(assert (= (and b!598930 (not res!384112)) b!598932))

(assert (= (and b!598932 res!384105) b!598923))

(assert (= (and b!598926 (not res!384107)) b!598922))

(declare-fun m!576237 () Bool)

(assert (=> b!598930 m!576237))

(declare-fun m!576239 () Bool)

(assert (=> b!598924 m!576239))

(assert (=> b!598924 m!576237))

(assert (=> b!598924 m!576237))

(declare-fun m!576241 () Bool)

(assert (=> b!598924 m!576241))

(declare-fun m!576243 () Bool)

(assert (=> b!598925 m!576243))

(declare-fun m!576245 () Bool)

(assert (=> b!598934 m!576245))

(declare-fun m!576247 () Bool)

(assert (=> b!598934 m!576247))

(declare-fun m!576249 () Bool)

(assert (=> b!598916 m!576249))

(declare-fun m!576251 () Bool)

(assert (=> b!598933 m!576251))

(declare-fun m!576253 () Bool)

(assert (=> b!598933 m!576253))

(declare-fun m!576255 () Bool)

(assert (=> b!598933 m!576255))

(assert (=> b!598933 m!576237))

(assert (=> b!598933 m!576245))

(declare-fun m!576257 () Bool)

(assert (=> b!598933 m!576257))

(declare-fun m!576259 () Bool)

(assert (=> b!598933 m!576259))

(assert (=> b!598933 m!576237))

(declare-fun m!576261 () Bool)

(assert (=> b!598933 m!576261))

(assert (=> b!598922 m!576237))

(declare-fun m!576263 () Bool)

(assert (=> b!598922 m!576263))

(assert (=> b!598922 m!576237))

(declare-fun m!576265 () Bool)

(assert (=> b!598922 m!576265))

(assert (=> b!598922 m!576237))

(declare-fun m!576267 () Bool)

(assert (=> b!598922 m!576267))

(declare-fun m!576269 () Bool)

(assert (=> b!598922 m!576269))

(assert (=> b!598932 m!576237))

(assert (=> b!598932 m!576237))

(declare-fun m!576271 () Bool)

(assert (=> b!598932 m!576271))

(assert (=> b!598926 m!576237))

(assert (=> b!598926 m!576245))

(declare-fun m!576273 () Bool)

(assert (=> b!598926 m!576273))

(declare-fun m!576275 () Bool)

(assert (=> b!598919 m!576275))

(declare-fun m!576277 () Bool)

(assert (=> b!598928 m!576277))

(declare-fun m!576279 () Bool)

(assert (=> b!598927 m!576279))

(assert (=> b!598923 m!576237))

(assert (=> b!598923 m!576237))

(declare-fun m!576281 () Bool)

(assert (=> b!598923 m!576281))

(assert (=> b!598918 m!576237))

(assert (=> b!598918 m!576237))

(declare-fun m!576283 () Bool)

(assert (=> b!598918 m!576283))

(declare-fun m!576285 () Bool)

(assert (=> b!598921 m!576285))

(declare-fun m!576287 () Bool)

(assert (=> start!54852 m!576287))

(declare-fun m!576289 () Bool)

(assert (=> start!54852 m!576289))

(push 1)

