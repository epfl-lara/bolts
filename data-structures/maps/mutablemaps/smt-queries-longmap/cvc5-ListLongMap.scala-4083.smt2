; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56004 () Bool)

(assert start!56004)

(declare-fun b!614982 () Bool)

(declare-fun res!396213 () Bool)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!614982 (= res!396213 (bvsge j!136 index!984))))

(declare-fun e!352608 () Bool)

(assert (=> b!614982 (=> res!396213 e!352608)))

(declare-fun e!352612 () Bool)

(assert (=> b!614982 (= e!352612 e!352608)))

(declare-fun b!614983 () Bool)

(declare-fun res!396219 () Bool)

(declare-fun e!352613 () Bool)

(assert (=> b!614983 (=> (not res!396219) (not e!352613))))

(declare-datatypes ((array!37437 0))(
  ( (array!37438 (arr!17961 (Array (_ BitVec 32) (_ BitVec 64))) (size!18325 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37437)

(declare-datatypes ((List!12055 0))(
  ( (Nil!12052) (Cons!12051 (h!13096 (_ BitVec 64)) (t!18291 List!12055)) )
))
(declare-fun arrayNoDuplicates!0 (array!37437 (_ BitVec 32) List!12055) Bool)

(assert (=> b!614983 (= res!396219 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12052))))

(declare-fun b!614984 () Bool)

(declare-fun res!396222 () Bool)

(declare-fun e!352611 () Bool)

(assert (=> b!614984 (=> (not res!396222) (not e!352611))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!614984 (= res!396222 (and (= (size!18325 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18325 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18325 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!614985 () Bool)

(declare-datatypes ((Unit!19900 0))(
  ( (Unit!19901) )
))
(declare-fun e!352609 () Unit!19900)

(declare-fun Unit!19902 () Unit!19900)

(assert (=> b!614985 (= e!352609 Unit!19902)))

(declare-fun b!614986 () Bool)

(declare-fun e!352618 () Unit!19900)

(declare-fun Unit!19903 () Unit!19900)

(assert (=> b!614986 (= e!352618 Unit!19903)))

(declare-fun b!614987 () Bool)

(assert (=> b!614987 (= e!352611 e!352613)))

(declare-fun res!396214 () Bool)

(assert (=> b!614987 (=> (not res!396214) (not e!352613))))

(declare-datatypes ((SeekEntryResult!6408 0))(
  ( (MissingZero!6408 (index!27915 (_ BitVec 32))) (Found!6408 (index!27916 (_ BitVec 32))) (Intermediate!6408 (undefined!7220 Bool) (index!27917 (_ BitVec 32)) (x!56745 (_ BitVec 32))) (Undefined!6408) (MissingVacant!6408 (index!27918 (_ BitVec 32))) )
))
(declare-fun lt!282447 () SeekEntryResult!6408)

(assert (=> b!614987 (= res!396214 (or (= lt!282447 (MissingZero!6408 i!1108)) (= lt!282447 (MissingVacant!6408 i!1108))))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37437 (_ BitVec 32)) SeekEntryResult!6408)

(assert (=> b!614987 (= lt!282447 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun lt!282451 () array!37437)

(declare-fun b!614988 () Bool)

(declare-fun e!352614 () Bool)

(declare-fun arrayContainsKey!0 (array!37437 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!614988 (= e!352614 (arrayContainsKey!0 lt!282451 (select (arr!17961 a!2986) j!136) index!984))))

(declare-fun b!614990 () Bool)

(declare-fun res!396226 () Bool)

(assert (=> b!614990 (=> (not res!396226) (not e!352613))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!614990 (= res!396226 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17961 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!614991 () Bool)

(declare-fun res!396221 () Bool)

(assert (=> b!614991 (=> (not res!396221) (not e!352613))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37437 (_ BitVec 32)) Bool)

(assert (=> b!614991 (= res!396221 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun res!396223 () Bool)

(declare-fun b!614992 () Bool)

(assert (=> b!614992 (= res!396223 (arrayContainsKey!0 lt!282451 (select (arr!17961 a!2986) j!136) j!136))))

(declare-fun e!352606 () Bool)

(assert (=> b!614992 (=> (not res!396223) (not e!352606))))

(assert (=> b!614992 (= e!352608 e!352606)))

(declare-fun b!614993 () Bool)

(declare-fun Unit!19904 () Unit!19900)

(assert (=> b!614993 (= e!352618 Unit!19904)))

(declare-fun res!396215 () Bool)

(assert (=> b!614993 (= res!396215 (= (select (store (arr!17961 a!2986) i!1108 k!1786) index!984) (select (arr!17961 a!2986) j!136)))))

(assert (=> b!614993 (=> (not res!396215) (not e!352612))))

(assert (=> b!614993 e!352612))

(declare-fun c!69752 () Bool)

(assert (=> b!614993 (= c!69752 (bvslt j!136 index!984))))

(declare-fun lt!282448 () Unit!19900)

(assert (=> b!614993 (= lt!282448 e!352609)))

(declare-fun c!69753 () Bool)

(assert (=> b!614993 (= c!69753 (bvslt index!984 j!136))))

(declare-fun lt!282449 () Unit!19900)

(declare-fun e!352605 () Unit!19900)

(assert (=> b!614993 (= lt!282449 e!352605)))

(assert (=> b!614993 false))

(declare-fun b!614994 () Bool)

(declare-fun e!352610 () Unit!19900)

(declare-fun Unit!19905 () Unit!19900)

(assert (=> b!614994 (= e!352610 Unit!19905)))

(declare-fun b!614995 () Bool)

(declare-fun res!396217 () Bool)

(assert (=> b!614995 (=> (not res!396217) (not e!352611))))

(assert (=> b!614995 (= res!396217 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!614996 () Bool)

(assert (=> b!614996 false))

(declare-fun lt!282454 () Unit!19900)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37437 (_ BitVec 64) (_ BitVec 32) List!12055) Unit!19900)

(assert (=> b!614996 (= lt!282454 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!282451 (select (arr!17961 a!2986) j!136) index!984 Nil!12052))))

(assert (=> b!614996 (arrayNoDuplicates!0 lt!282451 index!984 Nil!12052)))

(declare-fun lt!282446 () Unit!19900)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37437 (_ BitVec 32) (_ BitVec 32)) Unit!19900)

(assert (=> b!614996 (= lt!282446 (lemmaNoDuplicateFromThenFromBigger!0 lt!282451 #b00000000000000000000000000000000 index!984))))

(assert (=> b!614996 (arrayNoDuplicates!0 lt!282451 #b00000000000000000000000000000000 Nil!12052)))

(declare-fun lt!282456 () Unit!19900)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37437 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12055) Unit!19900)

(assert (=> b!614996 (= lt!282456 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12052))))

(assert (=> b!614996 (arrayContainsKey!0 lt!282451 (select (arr!17961 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!282441 () Unit!19900)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37437 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19900)

(assert (=> b!614996 (= lt!282441 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!282451 (select (arr!17961 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!614996 e!352614))

(declare-fun res!396227 () Bool)

(assert (=> b!614996 (=> (not res!396227) (not e!352614))))

(assert (=> b!614996 (= res!396227 (arrayContainsKey!0 lt!282451 (select (arr!17961 a!2986) j!136) j!136))))

(declare-fun Unit!19906 () Unit!19900)

(assert (=> b!614996 (= e!352605 Unit!19906)))

(declare-fun b!614997 () Bool)

(declare-fun e!352607 () Bool)

(declare-fun e!352615 () Bool)

(assert (=> b!614997 (= e!352607 e!352615)))

(declare-fun res!396216 () Bool)

(assert (=> b!614997 (=> (not res!396216) (not e!352615))))

(declare-fun lt!282439 () SeekEntryResult!6408)

(assert (=> b!614997 (= res!396216 (and (= lt!282439 (Found!6408 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17961 a!2986) index!984) (select (arr!17961 a!2986) j!136))) (not (= (select (arr!17961 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37437 (_ BitVec 32)) SeekEntryResult!6408)

(assert (=> b!614997 (= lt!282439 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17961 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!614998 () Bool)

(declare-fun Unit!19907 () Unit!19900)

(assert (=> b!614998 (= e!352605 Unit!19907)))

(declare-fun b!614989 () Bool)

(declare-fun res!396225 () Bool)

(assert (=> b!614989 (=> (not res!396225) (not e!352611))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!614989 (= res!396225 (validKeyInArray!0 k!1786))))

(declare-fun res!396220 () Bool)

(assert (=> start!56004 (=> (not res!396220) (not e!352611))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56004 (= res!396220 (validMask!0 mask!3053))))

(assert (=> start!56004 e!352611))

(assert (=> start!56004 true))

(declare-fun array_inv!13735 (array!37437) Bool)

(assert (=> start!56004 (array_inv!13735 a!2986)))

(declare-fun b!614999 () Bool)

(assert (=> b!614999 (= e!352606 (arrayContainsKey!0 lt!282451 (select (arr!17961 a!2986) j!136) index!984))))

(declare-fun b!615000 () Bool)

(declare-fun res!396224 () Bool)

(assert (=> b!615000 (=> (not res!396224) (not e!352611))))

(assert (=> b!615000 (= res!396224 (validKeyInArray!0 (select (arr!17961 a!2986) j!136)))))

(declare-fun b!615001 () Bool)

(assert (=> b!615001 (= e!352615 (not true))))

(declare-fun lt!282455 () Unit!19900)

(assert (=> b!615001 (= lt!282455 e!352618)))

(declare-fun c!69755 () Bool)

(declare-fun lt!282453 () SeekEntryResult!6408)

(assert (=> b!615001 (= c!69755 (= lt!282453 (Found!6408 index!984)))))

(declare-fun lt!282438 () Unit!19900)

(assert (=> b!615001 (= lt!282438 e!352610)))

(declare-fun c!69754 () Bool)

(assert (=> b!615001 (= c!69754 (= lt!282453 Undefined!6408))))

(declare-fun lt!282450 () (_ BitVec 64))

(assert (=> b!615001 (= lt!282453 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!282450 lt!282451 mask!3053))))

(declare-fun e!352616 () Bool)

(assert (=> b!615001 e!352616))

(declare-fun res!396212 () Bool)

(assert (=> b!615001 (=> (not res!396212) (not e!352616))))

(declare-fun lt!282442 () (_ BitVec 32))

(declare-fun lt!282443 () SeekEntryResult!6408)

(assert (=> b!615001 (= res!396212 (= lt!282443 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!282442 vacantSpotIndex!68 lt!282450 lt!282451 mask!3053)))))

(assert (=> b!615001 (= lt!282443 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!282442 vacantSpotIndex!68 (select (arr!17961 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!615001 (= lt!282450 (select (store (arr!17961 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!282445 () Unit!19900)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37437 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19900)

(assert (=> b!615001 (= lt!282445 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!282442 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!615001 (= lt!282442 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!615002 () Bool)

(assert (=> b!615002 (= e!352616 (= lt!282439 lt!282443))))

(declare-fun b!615003 () Bool)

(declare-fun Unit!19908 () Unit!19900)

(assert (=> b!615003 (= e!352610 Unit!19908)))

(assert (=> b!615003 false))

(declare-fun b!615004 () Bool)

(assert (=> b!615004 false))

(declare-fun lt!282444 () Unit!19900)

(assert (=> b!615004 (= lt!282444 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!282451 (select (arr!17961 a!2986) j!136) j!136 Nil!12052))))

(assert (=> b!615004 (arrayNoDuplicates!0 lt!282451 j!136 Nil!12052)))

(declare-fun lt!282440 () Unit!19900)

(assert (=> b!615004 (= lt!282440 (lemmaNoDuplicateFromThenFromBigger!0 lt!282451 #b00000000000000000000000000000000 j!136))))

(assert (=> b!615004 (arrayNoDuplicates!0 lt!282451 #b00000000000000000000000000000000 Nil!12052)))

(declare-fun lt!282452 () Unit!19900)

(assert (=> b!615004 (= lt!282452 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12052))))

(assert (=> b!615004 (arrayContainsKey!0 lt!282451 (select (arr!17961 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!282437 () Unit!19900)

(assert (=> b!615004 (= lt!282437 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!282451 (select (arr!17961 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!19909 () Unit!19900)

(assert (=> b!615004 (= e!352609 Unit!19909)))

(declare-fun b!615005 () Bool)

(assert (=> b!615005 (= e!352613 e!352607)))

(declare-fun res!396218 () Bool)

(assert (=> b!615005 (=> (not res!396218) (not e!352607))))

(assert (=> b!615005 (= res!396218 (= (select (store (arr!17961 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!615005 (= lt!282451 (array!37438 (store (arr!17961 a!2986) i!1108 k!1786) (size!18325 a!2986)))))

(assert (= (and start!56004 res!396220) b!614984))

(assert (= (and b!614984 res!396222) b!615000))

(assert (= (and b!615000 res!396224) b!614989))

(assert (= (and b!614989 res!396225) b!614995))

(assert (= (and b!614995 res!396217) b!614987))

(assert (= (and b!614987 res!396214) b!614991))

(assert (= (and b!614991 res!396221) b!614983))

(assert (= (and b!614983 res!396219) b!614990))

(assert (= (and b!614990 res!396226) b!615005))

(assert (= (and b!615005 res!396218) b!614997))

(assert (= (and b!614997 res!396216) b!615001))

(assert (= (and b!615001 res!396212) b!615002))

(assert (= (and b!615001 c!69754) b!615003))

(assert (= (and b!615001 (not c!69754)) b!614994))

(assert (= (and b!615001 c!69755) b!614993))

(assert (= (and b!615001 (not c!69755)) b!614986))

(assert (= (and b!614993 res!396215) b!614982))

(assert (= (and b!614982 (not res!396213)) b!614992))

(assert (= (and b!614992 res!396223) b!614999))

(assert (= (and b!614993 c!69752) b!615004))

(assert (= (and b!614993 (not c!69752)) b!614985))

(assert (= (and b!614993 c!69753) b!614996))

(assert (= (and b!614993 (not c!69753)) b!614998))

(assert (= (and b!614996 res!396227) b!614988))

(declare-fun m!591243 () Bool)

(assert (=> start!56004 m!591243))

(declare-fun m!591245 () Bool)

(assert (=> start!56004 m!591245))

(declare-fun m!591247 () Bool)

(assert (=> b!614991 m!591247))

(declare-fun m!591249 () Bool)

(assert (=> b!614995 m!591249))

(declare-fun m!591251 () Bool)

(assert (=> b!614993 m!591251))

(declare-fun m!591253 () Bool)

(assert (=> b!614993 m!591253))

(declare-fun m!591255 () Bool)

(assert (=> b!614993 m!591255))

(declare-fun m!591257 () Bool)

(assert (=> b!614989 m!591257))

(assert (=> b!614999 m!591255))

(assert (=> b!614999 m!591255))

(declare-fun m!591259 () Bool)

(assert (=> b!614999 m!591259))

(assert (=> b!615000 m!591255))

(assert (=> b!615000 m!591255))

(declare-fun m!591261 () Bool)

(assert (=> b!615000 m!591261))

(declare-fun m!591263 () Bool)

(assert (=> b!614983 m!591263))

(assert (=> b!615004 m!591255))

(declare-fun m!591265 () Bool)

(assert (=> b!615004 m!591265))

(assert (=> b!615004 m!591255))

(declare-fun m!591267 () Bool)

(assert (=> b!615004 m!591267))

(assert (=> b!615004 m!591255))

(declare-fun m!591269 () Bool)

(assert (=> b!615004 m!591269))

(declare-fun m!591271 () Bool)

(assert (=> b!615004 m!591271))

(declare-fun m!591273 () Bool)

(assert (=> b!615004 m!591273))

(assert (=> b!615004 m!591255))

(declare-fun m!591275 () Bool)

(assert (=> b!615004 m!591275))

(declare-fun m!591277 () Bool)

(assert (=> b!615004 m!591277))

(assert (=> b!614992 m!591255))

(assert (=> b!614992 m!591255))

(declare-fun m!591279 () Bool)

(assert (=> b!614992 m!591279))

(declare-fun m!591281 () Bool)

(assert (=> b!614990 m!591281))

(assert (=> b!615005 m!591251))

(declare-fun m!591283 () Bool)

(assert (=> b!615005 m!591283))

(declare-fun m!591285 () Bool)

(assert (=> b!614997 m!591285))

(assert (=> b!614997 m!591255))

(assert (=> b!614997 m!591255))

(declare-fun m!591287 () Bool)

(assert (=> b!614997 m!591287))

(declare-fun m!591289 () Bool)

(assert (=> b!614987 m!591289))

(assert (=> b!614988 m!591255))

(assert (=> b!614988 m!591255))

(assert (=> b!614988 m!591259))

(declare-fun m!591291 () Bool)

(assert (=> b!614996 m!591291))

(assert (=> b!614996 m!591255))

(assert (=> b!614996 m!591255))

(assert (=> b!614996 m!591279))

(declare-fun m!591293 () Bool)

(assert (=> b!614996 m!591293))

(assert (=> b!614996 m!591255))

(declare-fun m!591295 () Bool)

(assert (=> b!614996 m!591295))

(assert (=> b!614996 m!591255))

(declare-fun m!591297 () Bool)

(assert (=> b!614996 m!591297))

(assert (=> b!614996 m!591271))

(assert (=> b!614996 m!591255))

(declare-fun m!591299 () Bool)

(assert (=> b!614996 m!591299))

(assert (=> b!614996 m!591277))

(declare-fun m!591301 () Bool)

(assert (=> b!615001 m!591301))

(declare-fun m!591303 () Bool)

(assert (=> b!615001 m!591303))

(assert (=> b!615001 m!591255))

(declare-fun m!591305 () Bool)

(assert (=> b!615001 m!591305))

(assert (=> b!615001 m!591251))

(assert (=> b!615001 m!591255))

(declare-fun m!591307 () Bool)

(assert (=> b!615001 m!591307))

(declare-fun m!591309 () Bool)

(assert (=> b!615001 m!591309))

(declare-fun m!591311 () Bool)

(assert (=> b!615001 m!591311))

(push 1)

