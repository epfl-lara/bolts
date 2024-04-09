; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!54564 () Bool)

(assert start!54564)

(declare-fun b!596317 () Bool)

(declare-fun e!340710 () Bool)

(declare-fun e!340699 () Bool)

(assert (=> b!596317 (= e!340710 e!340699)))

(declare-fun res!382287 () Bool)

(assert (=> b!596317 (=> res!382287 e!340699)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!270891 () (_ BitVec 64))

(declare-fun lt!270895 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!36987 0))(
  ( (array!36988 (arr!17754 (Array (_ BitVec 32) (_ BitVec 64))) (size!18118 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36987)

(assert (=> b!596317 (= res!382287 (or (not (= (select (arr!17754 a!2986) j!136) lt!270891)) (not (= (select (arr!17754 a!2986) j!136) lt!270895)) (bvsge j!136 index!984)))))

(declare-fun b!596318 () Bool)

(declare-fun res!382278 () Bool)

(declare-fun e!340701 () Bool)

(assert (=> b!596318 (=> (not res!382278) (not e!340701))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36987 (_ BitVec 32)) Bool)

(assert (=> b!596318 (= res!382278 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!596319 () Bool)

(declare-fun res!382289 () Bool)

(declare-fun e!340708 () Bool)

(assert (=> b!596319 (=> (not res!382289) (not e!340708))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!36987 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!596319 (= res!382289 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!596320 () Bool)

(declare-fun e!340703 () Bool)

(declare-fun e!340711 () Bool)

(assert (=> b!596320 (= e!340703 e!340711)))

(declare-fun res!382283 () Bool)

(assert (=> b!596320 (=> res!382283 e!340711)))

(assert (=> b!596320 (= res!382283 (or (bvsge (size!18118 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18118 a!2986))))))

(declare-fun lt!270900 () array!36987)

(assert (=> b!596320 (arrayContainsKey!0 lt!270900 (select (arr!17754 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-datatypes ((Unit!18748 0))(
  ( (Unit!18749) )
))
(declare-fun lt!270894 () Unit!18748)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!36987 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18748)

(assert (=> b!596320 (= lt!270894 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!270900 (select (arr!17754 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!596321 () Bool)

(declare-fun res!382285 () Bool)

(assert (=> b!596321 (=> (not res!382285) (not e!340708))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!596321 (= res!382285 (and (= (size!18118 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18118 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18118 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!596322 () Bool)

(declare-fun res!382286 () Bool)

(assert (=> b!596322 (=> (not res!382286) (not e!340708))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!596322 (= res!382286 (validKeyInArray!0 (select (arr!17754 a!2986) j!136)))))

(declare-fun b!596323 () Bool)

(declare-fun e!340707 () Unit!18748)

(declare-fun Unit!18750 () Unit!18748)

(assert (=> b!596323 (= e!340707 Unit!18750)))

(assert (=> b!596323 false))

(declare-fun b!596324 () Bool)

(declare-fun e!340706 () Bool)

(assert (=> b!596324 (= e!340706 e!340703)))

(declare-fun res!382288 () Bool)

(assert (=> b!596324 (=> res!382288 e!340703)))

(assert (=> b!596324 (= res!382288 (or (not (= (select (arr!17754 a!2986) j!136) lt!270891)) (not (= (select (arr!17754 a!2986) j!136) lt!270895)) (bvsge j!136 index!984)))))

(assert (=> b!596324 e!340710))

(declare-fun res!382282 () Bool)

(assert (=> b!596324 (=> (not res!382282) (not e!340710))))

(assert (=> b!596324 (= res!382282 (= lt!270895 (select (arr!17754 a!2986) j!136)))))

(assert (=> b!596324 (= lt!270895 (select (store (arr!17754 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!596325 () Bool)

(declare-fun e!340702 () Bool)

(assert (=> b!596325 (= e!340702 (arrayContainsKey!0 lt!270900 (select (arr!17754 a!2986) j!136) index!984))))

(declare-fun b!596326 () Bool)

(declare-fun e!340704 () Bool)

(declare-fun e!340709 () Bool)

(assert (=> b!596326 (= e!340704 e!340709)))

(declare-fun res!382295 () Bool)

(assert (=> b!596326 (=> (not res!382295) (not e!340709))))

(declare-datatypes ((SeekEntryResult!6201 0))(
  ( (MissingZero!6201 (index!27051 (_ BitVec 32))) (Found!6201 (index!27052 (_ BitVec 32))) (Intermediate!6201 (undefined!7013 Bool) (index!27053 (_ BitVec 32)) (x!55878 (_ BitVec 32))) (Undefined!6201) (MissingVacant!6201 (index!27054 (_ BitVec 32))) )
))
(declare-fun lt!270893 () SeekEntryResult!6201)

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!596326 (= res!382295 (and (= lt!270893 (Found!6201 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17754 a!2986) index!984) (select (arr!17754 a!2986) j!136))) (not (= (select (arr!17754 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36987 (_ BitVec 32)) SeekEntryResult!6201)

(assert (=> b!596326 (= lt!270893 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17754 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!596327 () Bool)

(declare-fun res!382291 () Bool)

(assert (=> b!596327 (=> res!382291 e!340711)))

(declare-datatypes ((List!11848 0))(
  ( (Nil!11845) (Cons!11844 (h!12889 (_ BitVec 64)) (t!18084 List!11848)) )
))
(declare-fun contains!2952 (List!11848 (_ BitVec 64)) Bool)

(assert (=> b!596327 (= res!382291 (contains!2952 Nil!11845 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!596329 () Bool)

(declare-fun e!340700 () Bool)

(declare-fun lt!270898 () SeekEntryResult!6201)

(assert (=> b!596329 (= e!340700 (= lt!270893 lt!270898))))

(declare-fun b!596330 () Bool)

(declare-fun Unit!18751 () Unit!18748)

(assert (=> b!596330 (= e!340707 Unit!18751)))

(declare-fun b!596331 () Bool)

(declare-fun res!382280 () Bool)

(assert (=> b!596331 (=> (not res!382280) (not e!340708))))

(assert (=> b!596331 (= res!382280 (validKeyInArray!0 k!1786))))

(declare-fun b!596332 () Bool)

(assert (=> b!596332 (= e!340709 (not e!340706))))

(declare-fun res!382294 () Bool)

(assert (=> b!596332 (=> res!382294 e!340706)))

(declare-fun lt!270896 () SeekEntryResult!6201)

(assert (=> b!596332 (= res!382294 (not (= lt!270896 (Found!6201 index!984))))))

(declare-fun lt!270890 () Unit!18748)

(assert (=> b!596332 (= lt!270890 e!340707)))

(declare-fun c!67388 () Bool)

(assert (=> b!596332 (= c!67388 (= lt!270896 Undefined!6201))))

(assert (=> b!596332 (= lt!270896 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!270891 lt!270900 mask!3053))))

(assert (=> b!596332 e!340700))

(declare-fun res!382292 () Bool)

(assert (=> b!596332 (=> (not res!382292) (not e!340700))))

(declare-fun lt!270889 () (_ BitVec 32))

(assert (=> b!596332 (= res!382292 (= lt!270898 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!270889 vacantSpotIndex!68 lt!270891 lt!270900 mask!3053)))))

(assert (=> b!596332 (= lt!270898 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!270889 vacantSpotIndex!68 (select (arr!17754 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!596332 (= lt!270891 (select (store (arr!17754 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!270892 () Unit!18748)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36987 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18748)

(assert (=> b!596332 (= lt!270892 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!270889 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!596332 (= lt!270889 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!596333 () Bool)

(assert (=> b!596333 (= e!340701 e!340704)))

(declare-fun res!382293 () Bool)

(assert (=> b!596333 (=> (not res!382293) (not e!340704))))

(assert (=> b!596333 (= res!382293 (= (select (store (arr!17754 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!596333 (= lt!270900 (array!36988 (store (arr!17754 a!2986) i!1108 k!1786) (size!18118 a!2986)))))

(declare-fun b!596334 () Bool)

(assert (=> b!596334 (= e!340699 e!340702)))

(declare-fun res!382284 () Bool)

(assert (=> b!596334 (=> (not res!382284) (not e!340702))))

(assert (=> b!596334 (= res!382284 (arrayContainsKey!0 lt!270900 (select (arr!17754 a!2986) j!136) j!136))))

(declare-fun b!596335 () Bool)

(declare-fun res!382275 () Bool)

(assert (=> b!596335 (=> (not res!382275) (not e!340701))))

(assert (=> b!596335 (= res!382275 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17754 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!596336 () Bool)

(declare-fun res!382277 () Bool)

(assert (=> b!596336 (=> res!382277 e!340711)))

(assert (=> b!596336 (= res!382277 (contains!2952 Nil!11845 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!596337 () Bool)

(declare-fun res!382279 () Bool)

(assert (=> b!596337 (=> res!382279 e!340711)))

(declare-fun noDuplicate!268 (List!11848) Bool)

(assert (=> b!596337 (= res!382279 (not (noDuplicate!268 Nil!11845)))))

(declare-fun b!596338 () Bool)

(declare-fun res!382276 () Bool)

(assert (=> b!596338 (=> (not res!382276) (not e!340701))))

(declare-fun arrayNoDuplicates!0 (array!36987 (_ BitVec 32) List!11848) Bool)

(assert (=> b!596338 (= res!382276 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11845))))

(declare-fun b!596339 () Bool)

(assert (=> b!596339 (= e!340711 true)))

(declare-fun lt!270899 () Bool)

(assert (=> b!596339 (= lt!270899 (contains!2952 Nil!11845 k!1786))))

(declare-fun b!596328 () Bool)

(assert (=> b!596328 (= e!340708 e!340701)))

(declare-fun res!382281 () Bool)

(assert (=> b!596328 (=> (not res!382281) (not e!340701))))

(declare-fun lt!270897 () SeekEntryResult!6201)

(assert (=> b!596328 (= res!382281 (or (= lt!270897 (MissingZero!6201 i!1108)) (= lt!270897 (MissingVacant!6201 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36987 (_ BitVec 32)) SeekEntryResult!6201)

(assert (=> b!596328 (= lt!270897 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun res!382290 () Bool)

(assert (=> start!54564 (=> (not res!382290) (not e!340708))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54564 (= res!382290 (validMask!0 mask!3053))))

(assert (=> start!54564 e!340708))

(assert (=> start!54564 true))

(declare-fun array_inv!13528 (array!36987) Bool)

(assert (=> start!54564 (array_inv!13528 a!2986)))

(assert (= (and start!54564 res!382290) b!596321))

(assert (= (and b!596321 res!382285) b!596322))

(assert (= (and b!596322 res!382286) b!596331))

(assert (= (and b!596331 res!382280) b!596319))

(assert (= (and b!596319 res!382289) b!596328))

(assert (= (and b!596328 res!382281) b!596318))

(assert (= (and b!596318 res!382278) b!596338))

(assert (= (and b!596338 res!382276) b!596335))

(assert (= (and b!596335 res!382275) b!596333))

(assert (= (and b!596333 res!382293) b!596326))

(assert (= (and b!596326 res!382295) b!596332))

(assert (= (and b!596332 res!382292) b!596329))

(assert (= (and b!596332 c!67388) b!596323))

(assert (= (and b!596332 (not c!67388)) b!596330))

(assert (= (and b!596332 (not res!382294)) b!596324))

(assert (= (and b!596324 res!382282) b!596317))

(assert (= (and b!596317 (not res!382287)) b!596334))

(assert (= (and b!596334 res!382284) b!596325))

(assert (= (and b!596324 (not res!382288)) b!596320))

(assert (= (and b!596320 (not res!382283)) b!596337))

(assert (= (and b!596337 (not res!382279)) b!596336))

(assert (= (and b!596336 (not res!382277)) b!596327))

(assert (= (and b!596327 (not res!382291)) b!596339))

(declare-fun m!573843 () Bool)

(assert (=> b!596336 m!573843))

(declare-fun m!573845 () Bool)

(assert (=> b!596325 m!573845))

(assert (=> b!596325 m!573845))

(declare-fun m!573847 () Bool)

(assert (=> b!596325 m!573847))

(assert (=> b!596324 m!573845))

(declare-fun m!573849 () Bool)

(assert (=> b!596324 m!573849))

(declare-fun m!573851 () Bool)

(assert (=> b!596324 m!573851))

(declare-fun m!573853 () Bool)

(assert (=> b!596339 m!573853))

(declare-fun m!573855 () Bool)

(assert (=> b!596328 m!573855))

(assert (=> b!596320 m!573845))

(assert (=> b!596320 m!573845))

(declare-fun m!573857 () Bool)

(assert (=> b!596320 m!573857))

(assert (=> b!596320 m!573845))

(declare-fun m!573859 () Bool)

(assert (=> b!596320 m!573859))

(declare-fun m!573861 () Bool)

(assert (=> b!596338 m!573861))

(declare-fun m!573863 () Bool)

(assert (=> start!54564 m!573863))

(declare-fun m!573865 () Bool)

(assert (=> start!54564 m!573865))

(declare-fun m!573867 () Bool)

(assert (=> b!596331 m!573867))

(declare-fun m!573869 () Bool)

(assert (=> b!596326 m!573869))

(assert (=> b!596326 m!573845))

(assert (=> b!596326 m!573845))

(declare-fun m!573871 () Bool)

(assert (=> b!596326 m!573871))

(declare-fun m!573873 () Bool)

(assert (=> b!596335 m!573873))

(declare-fun m!573875 () Bool)

(assert (=> b!596319 m!573875))

(assert (=> b!596333 m!573849))

(declare-fun m!573877 () Bool)

(assert (=> b!596333 m!573877))

(declare-fun m!573879 () Bool)

(assert (=> b!596327 m!573879))

(assert (=> b!596322 m!573845))

(assert (=> b!596322 m!573845))

(declare-fun m!573881 () Bool)

(assert (=> b!596322 m!573881))

(assert (=> b!596334 m!573845))

(assert (=> b!596334 m!573845))

(declare-fun m!573883 () Bool)

(assert (=> b!596334 m!573883))

(assert (=> b!596317 m!573845))

(declare-fun m!573885 () Bool)

(assert (=> b!596318 m!573885))

(declare-fun m!573887 () Bool)

(assert (=> b!596332 m!573887))

(assert (=> b!596332 m!573845))

(declare-fun m!573889 () Bool)

(assert (=> b!596332 m!573889))

(assert (=> b!596332 m!573845))

(declare-fun m!573891 () Bool)

(assert (=> b!596332 m!573891))

(assert (=> b!596332 m!573849))

(declare-fun m!573893 () Bool)

(assert (=> b!596332 m!573893))

(declare-fun m!573895 () Bool)

(assert (=> b!596332 m!573895))

(declare-fun m!573897 () Bool)

(assert (=> b!596332 m!573897))

(declare-fun m!573899 () Bool)

(assert (=> b!596337 m!573899))

(push 1)

