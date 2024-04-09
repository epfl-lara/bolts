; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!54658 () Bool)

(assert start!54658)

(declare-fun b!597292 () Bool)

(declare-fun res!382997 () Bool)

(declare-fun e!341330 () Bool)

(assert (=> b!597292 (=> (not res!382997) (not e!341330))))

(declare-datatypes ((array!37012 0))(
  ( (array!37013 (arr!17765 (Array (_ BitVec 32) (_ BitVec 64))) (size!18129 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37012)

(declare-datatypes ((List!11859 0))(
  ( (Nil!11856) (Cons!11855 (h!12900 (_ BitVec 64)) (t!18095 List!11859)) )
))
(declare-fun arrayNoDuplicates!0 (array!37012 (_ BitVec 32) List!11859) Bool)

(assert (=> b!597292 (= res!382997 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11856))))

(declare-fun b!597293 () Bool)

(declare-fun e!341328 () Bool)

(assert (=> b!597293 (= e!341330 e!341328)))

(declare-fun res!382987 () Bool)

(assert (=> b!597293 (=> (not res!382987) (not e!341328))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!597293 (= res!382987 (= (select (store (arr!17765 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!271412 () array!37012)

(assert (=> b!597293 (= lt!271412 (array!37013 (store (arr!17765 a!2986) i!1108 k!1786) (size!18129 a!2986)))))

(declare-fun b!597294 () Bool)

(declare-fun e!341323 () Bool)

(declare-fun e!341321 () Bool)

(assert (=> b!597294 (= e!341323 e!341321)))

(declare-fun res!382992 () Bool)

(assert (=> b!597294 (=> res!382992 e!341321)))

(assert (=> b!597294 (= res!382992 (or (bvsgt #b00000000000000000000000000000000 (size!18129 a!2986)) (bvsge (size!18129 a!2986) #b01111111111111111111111111111111)))))

(assert (=> b!597294 (arrayNoDuplicates!0 lt!271412 #b00000000000000000000000000000000 Nil!11856)))

(declare-datatypes ((Unit!18792 0))(
  ( (Unit!18793) )
))
(declare-fun lt!271411 () Unit!18792)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37012 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11859) Unit!18792)

(assert (=> b!597294 (= lt!271411 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11856))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!37012 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!597294 (arrayContainsKey!0 lt!271412 (select (arr!17765 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!271413 () Unit!18792)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37012 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18792)

(assert (=> b!597294 (= lt!271413 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!271412 (select (arr!17765 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!597295 () Bool)

(declare-fun e!341320 () Bool)

(declare-fun e!341331 () Bool)

(assert (=> b!597295 (= e!341320 e!341331)))

(declare-fun res!382995 () Bool)

(assert (=> b!597295 (=> (not res!382995) (not e!341331))))

(assert (=> b!597295 (= res!382995 (arrayContainsKey!0 lt!271412 (select (arr!17765 a!2986) j!136) j!136))))

(declare-fun b!597296 () Bool)

(declare-fun res!382988 () Bool)

(declare-fun e!341332 () Bool)

(assert (=> b!597296 (=> (not res!382988) (not e!341332))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!597296 (= res!382988 (validKeyInArray!0 k!1786))))

(declare-fun b!597297 () Bool)

(assert (=> b!597297 (= e!341331 (arrayContainsKey!0 lt!271412 (select (arr!17765 a!2986) j!136) index!984))))

(declare-fun res!382981 () Bool)

(assert (=> start!54658 (=> (not res!382981) (not e!341332))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54658 (= res!382981 (validMask!0 mask!3053))))

(assert (=> start!54658 e!341332))

(assert (=> start!54658 true))

(declare-fun array_inv!13539 (array!37012) Bool)

(assert (=> start!54658 (array_inv!13539 a!2986)))

(declare-fun b!597298 () Bool)

(assert (=> b!597298 (= e!341332 e!341330)))

(declare-fun res!382982 () Bool)

(assert (=> b!597298 (=> (not res!382982) (not e!341330))))

(declare-datatypes ((SeekEntryResult!6212 0))(
  ( (MissingZero!6212 (index!27098 (_ BitVec 32))) (Found!6212 (index!27099 (_ BitVec 32))) (Intermediate!6212 (undefined!7024 Bool) (index!27100 (_ BitVec 32)) (x!55922 (_ BitVec 32))) (Undefined!6212) (MissingVacant!6212 (index!27101 (_ BitVec 32))) )
))
(declare-fun lt!271418 () SeekEntryResult!6212)

(assert (=> b!597298 (= res!382982 (or (= lt!271418 (MissingZero!6212 i!1108)) (= lt!271418 (MissingVacant!6212 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37012 (_ BitVec 32)) SeekEntryResult!6212)

(assert (=> b!597298 (= lt!271418 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!597299 () Bool)

(declare-fun e!341326 () Bool)

(declare-fun e!341327 () Bool)

(assert (=> b!597299 (= e!341326 (not e!341327))))

(declare-fun res!382991 () Bool)

(assert (=> b!597299 (=> res!382991 e!341327)))

(declare-fun lt!271421 () SeekEntryResult!6212)

(assert (=> b!597299 (= res!382991 (not (= lt!271421 (Found!6212 index!984))))))

(declare-fun lt!271416 () Unit!18792)

(declare-fun e!341324 () Unit!18792)

(assert (=> b!597299 (= lt!271416 e!341324)))

(declare-fun c!67523 () Bool)

(assert (=> b!597299 (= c!67523 (= lt!271421 Undefined!6212))))

(declare-fun lt!271420 () (_ BitVec 64))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37012 (_ BitVec 32)) SeekEntryResult!6212)

(assert (=> b!597299 (= lt!271421 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!271420 lt!271412 mask!3053))))

(declare-fun e!341322 () Bool)

(assert (=> b!597299 e!341322))

(declare-fun res!382983 () Bool)

(assert (=> b!597299 (=> (not res!382983) (not e!341322))))

(declare-fun lt!271422 () (_ BitVec 32))

(declare-fun lt!271417 () SeekEntryResult!6212)

(assert (=> b!597299 (= res!382983 (= lt!271417 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!271422 vacantSpotIndex!68 lt!271420 lt!271412 mask!3053)))))

(assert (=> b!597299 (= lt!271417 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!271422 vacantSpotIndex!68 (select (arr!17765 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!597299 (= lt!271420 (select (store (arr!17765 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!271414 () Unit!18792)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37012 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18792)

(assert (=> b!597299 (= lt!271414 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!271422 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!597299 (= lt!271422 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!597300 () Bool)

(declare-fun res!382984 () Bool)

(assert (=> b!597300 (=> (not res!382984) (not e!341330))))

(assert (=> b!597300 (= res!382984 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17765 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!597301 () Bool)

(declare-fun res!382989 () Bool)

(assert (=> b!597301 (=> (not res!382989) (not e!341332))))

(assert (=> b!597301 (= res!382989 (and (= (size!18129 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18129 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18129 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!597302 () Bool)

(declare-fun res!382985 () Bool)

(assert (=> b!597302 (=> (not res!382985) (not e!341330))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37012 (_ BitVec 32)) Bool)

(assert (=> b!597302 (= res!382985 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!597303 () Bool)

(declare-fun noDuplicate!273 (List!11859) Bool)

(assert (=> b!597303 (= e!341321 (noDuplicate!273 Nil!11856))))

(declare-fun b!597304 () Bool)

(declare-fun res!382996 () Bool)

(assert (=> b!597304 (=> (not res!382996) (not e!341332))))

(assert (=> b!597304 (= res!382996 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!597305 () Bool)

(assert (=> b!597305 (= e!341327 e!341323)))

(declare-fun res!382986 () Bool)

(assert (=> b!597305 (=> res!382986 e!341323)))

(declare-fun lt!271419 () (_ BitVec 64))

(assert (=> b!597305 (= res!382986 (or (not (= (select (arr!17765 a!2986) j!136) lt!271420)) (not (= (select (arr!17765 a!2986) j!136) lt!271419)) (bvsge j!136 index!984)))))

(declare-fun e!341325 () Bool)

(assert (=> b!597305 e!341325))

(declare-fun res!382993 () Bool)

(assert (=> b!597305 (=> (not res!382993) (not e!341325))))

(assert (=> b!597305 (= res!382993 (= lt!271419 (select (arr!17765 a!2986) j!136)))))

(assert (=> b!597305 (= lt!271419 (select (store (arr!17765 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!597306 () Bool)

(assert (=> b!597306 (= e!341325 e!341320)))

(declare-fun res!382994 () Bool)

(assert (=> b!597306 (=> res!382994 e!341320)))

(assert (=> b!597306 (= res!382994 (or (not (= (select (arr!17765 a!2986) j!136) lt!271420)) (not (= (select (arr!17765 a!2986) j!136) lt!271419)) (bvsge j!136 index!984)))))

(declare-fun b!597307 () Bool)

(declare-fun res!382990 () Bool)

(assert (=> b!597307 (=> (not res!382990) (not e!341332))))

(assert (=> b!597307 (= res!382990 (validKeyInArray!0 (select (arr!17765 a!2986) j!136)))))

(declare-fun b!597308 () Bool)

(declare-fun Unit!18794 () Unit!18792)

(assert (=> b!597308 (= e!341324 Unit!18794)))

(assert (=> b!597308 false))

(declare-fun b!597309 () Bool)

(declare-fun lt!271415 () SeekEntryResult!6212)

(assert (=> b!597309 (= e!341322 (= lt!271415 lt!271417))))

(declare-fun b!597310 () Bool)

(declare-fun Unit!18795 () Unit!18792)

(assert (=> b!597310 (= e!341324 Unit!18795)))

(declare-fun b!597311 () Bool)

(assert (=> b!597311 (= e!341328 e!341326)))

(declare-fun res!382980 () Bool)

(assert (=> b!597311 (=> (not res!382980) (not e!341326))))

(assert (=> b!597311 (= res!382980 (and (= lt!271415 (Found!6212 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17765 a!2986) index!984) (select (arr!17765 a!2986) j!136))) (not (= (select (arr!17765 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!597311 (= lt!271415 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17765 a!2986) j!136) a!2986 mask!3053))))

(assert (= (and start!54658 res!382981) b!597301))

(assert (= (and b!597301 res!382989) b!597307))

(assert (= (and b!597307 res!382990) b!597296))

(assert (= (and b!597296 res!382988) b!597304))

(assert (= (and b!597304 res!382996) b!597298))

(assert (= (and b!597298 res!382982) b!597302))

(assert (= (and b!597302 res!382985) b!597292))

(assert (= (and b!597292 res!382997) b!597300))

(assert (= (and b!597300 res!382984) b!597293))

(assert (= (and b!597293 res!382987) b!597311))

(assert (= (and b!597311 res!382980) b!597299))

(assert (= (and b!597299 res!382983) b!597309))

(assert (= (and b!597299 c!67523) b!597308))

(assert (= (and b!597299 (not c!67523)) b!597310))

(assert (= (and b!597299 (not res!382991)) b!597305))

(assert (= (and b!597305 res!382993) b!597306))

(assert (= (and b!597306 (not res!382994)) b!597295))

(assert (= (and b!597295 res!382995) b!597297))

(assert (= (and b!597305 (not res!382986)) b!597294))

(assert (= (and b!597294 (not res!382992)) b!597303))

(declare-fun m!574735 () Bool)

(assert (=> start!54658 m!574735))

(declare-fun m!574737 () Bool)

(assert (=> start!54658 m!574737))

(declare-fun m!574739 () Bool)

(assert (=> b!597307 m!574739))

(assert (=> b!597307 m!574739))

(declare-fun m!574741 () Bool)

(assert (=> b!597307 m!574741))

(declare-fun m!574743 () Bool)

(assert (=> b!597300 m!574743))

(declare-fun m!574745 () Bool)

(assert (=> b!597298 m!574745))

(assert (=> b!597305 m!574739))

(declare-fun m!574747 () Bool)

(assert (=> b!597305 m!574747))

(declare-fun m!574749 () Bool)

(assert (=> b!597305 m!574749))

(assert (=> b!597294 m!574739))

(assert (=> b!597294 m!574739))

(declare-fun m!574751 () Bool)

(assert (=> b!597294 m!574751))

(declare-fun m!574753 () Bool)

(assert (=> b!597294 m!574753))

(assert (=> b!597294 m!574739))

(declare-fun m!574755 () Bool)

(assert (=> b!597294 m!574755))

(declare-fun m!574757 () Bool)

(assert (=> b!597294 m!574757))

(assert (=> b!597306 m!574739))

(assert (=> b!597297 m!574739))

(assert (=> b!597297 m!574739))

(declare-fun m!574759 () Bool)

(assert (=> b!597297 m!574759))

(declare-fun m!574761 () Bool)

(assert (=> b!597292 m!574761))

(declare-fun m!574763 () Bool)

(assert (=> b!597299 m!574763))

(declare-fun m!574765 () Bool)

(assert (=> b!597299 m!574765))

(assert (=> b!597299 m!574739))

(assert (=> b!597299 m!574739))

(declare-fun m!574767 () Bool)

(assert (=> b!597299 m!574767))

(assert (=> b!597299 m!574747))

(declare-fun m!574769 () Bool)

(assert (=> b!597299 m!574769))

(declare-fun m!574771 () Bool)

(assert (=> b!597299 m!574771))

(declare-fun m!574773 () Bool)

(assert (=> b!597299 m!574773))

(declare-fun m!574775 () Bool)

(assert (=> b!597296 m!574775))

(declare-fun m!574777 () Bool)

(assert (=> b!597304 m!574777))

(assert (=> b!597293 m!574747))

(declare-fun m!574779 () Bool)

(assert (=> b!597293 m!574779))

(declare-fun m!574781 () Bool)

(assert (=> b!597311 m!574781))

(assert (=> b!597311 m!574739))

(assert (=> b!597311 m!574739))

(declare-fun m!574783 () Bool)

(assert (=> b!597311 m!574783))

(declare-fun m!574785 () Bool)

(assert (=> b!597303 m!574785))

(assert (=> b!597295 m!574739))

(assert (=> b!597295 m!574739))

(declare-fun m!574787 () Bool)

(assert (=> b!597295 m!574787))

(declare-fun m!574789 () Bool)

(assert (=> b!597302 m!574789))

(push 1)

(assert (not b!597299))

(assert (not b!597297))

(assert (not b!597302))

(assert (not b!597304))

(assert (not b!597296))

(assert (not b!597292))

(assert (not b!597303))

(assert (not b!597294))

(assert (not start!54658))

(assert (not b!597295))

(assert (not b!597311))

(assert (not b!597307))

(assert (not b!597298))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!86717 () Bool)

(declare-fun res!383012 () Bool)

(declare-fun e!341367 () Bool)

(assert (=> d!86717 (=> res!383012 e!341367)))

(assert (=> d!86717 (= res!383012 (is-Nil!11856 Nil!11856))))

(assert (=> d!86717 (= (noDuplicate!273 Nil!11856) e!341367)))

(declare-fun b!597366 () Bool)

(declare-fun e!341368 () Bool)

(assert (=> b!597366 (= e!341367 e!341368)))

(declare-fun res!383013 () Bool)

(assert (=> b!597366 (=> (not res!383013) (not e!341368))))

(declare-fun contains!2959 (List!11859 (_ BitVec 64)) Bool)

(assert (=> b!597366 (= res!383013 (not (contains!2959 (t!18095 Nil!11856) (h!12900 Nil!11856))))))

(declare-fun b!597367 () Bool)

(assert (=> b!597367 (= e!341368 (noDuplicate!273 (t!18095 Nil!11856)))))

(assert (= (and d!86717 (not res!383012)) b!597366))

(assert (= (and b!597366 res!383013) b!597367))

(declare-fun m!574815 () Bool)

(assert (=> b!597366 m!574815))

(declare-fun m!574817 () Bool)

(assert (=> b!597367 m!574817))

(assert (=> b!597303 d!86717))

(declare-fun b!597391 () Bool)

(declare-fun e!341391 () Bool)

(declare-fun call!32924 () Bool)

(assert (=> b!597391 (= e!341391 call!32924)))

(declare-fun b!597393 () Bool)

(declare-fun e!341390 () Bool)

(assert (=> b!597393 (= e!341390 (contains!2959 Nil!11856 (select (arr!17765 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!597394 () Bool)

(declare-fun e!341389 () Bool)

(declare-fun e!341392 () Bool)

(assert (=> b!597394 (= e!341389 e!341392)))

(declare-fun res!383032 () Bool)

(assert (=> b!597394 (=> (not res!383032) (not e!341392))))

(assert (=> b!597394 (= res!383032 (not e!341390))))

(declare-fun res!383031 () Bool)

(assert (=> b!597394 (=> (not res!383031) (not e!341390))))

(assert (=> b!597394 (= res!383031 (validKeyInArray!0 (select (arr!17765 a!2986) #b00000000000000000000000000000000)))))

(declare-fun bm!32921 () Bool)

(declare-fun c!67547 () Bool)

(assert (=> bm!32921 (= call!32924 (arrayNoDuplicates!0 a!2986 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!67547 (Cons!11855 (select (arr!17765 a!2986) #b00000000000000000000000000000000) Nil!11856) Nil!11856)))))

(declare-fun b!597395 () Bool)

(assert (=> b!597395 (= e!341392 e!341391)))

(assert (=> b!597395 (= c!67547 (validKeyInArray!0 (select (arr!17765 a!2986) #b00000000000000000000000000000000)))))

(declare-fun d!86719 () Bool)

(declare-fun res!383033 () Bool)

(assert (=> d!86719 (=> res!383033 e!341389)))

(assert (=> d!86719 (= res!383033 (bvsge #b00000000000000000000000000000000 (size!18129 a!2986)))))

(assert (=> d!86719 (= (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11856) e!341389)))

(declare-fun b!597392 () Bool)

(assert (=> b!597392 (= e!341391 call!32924)))

(assert (= (and d!86719 (not res!383033)) b!597394))

(assert (= (and b!597394 res!383031) b!597393))

(assert (= (and b!597394 res!383032) b!597395))

(assert (= (and b!597395 c!67547) b!597392))

(assert (= (and b!597395 (not c!67547)) b!597391))

(assert (= (or b!597392 b!597391) bm!32921))

(declare-fun m!574839 () Bool)

(assert (=> b!597393 m!574839))

(assert (=> b!597393 m!574839))

(declare-fun m!574841 () Bool)

(assert (=> b!597393 m!574841))

(assert (=> b!597394 m!574839))

(assert (=> b!597394 m!574839))

(declare-fun m!574843 () Bool)

(assert (=> b!597394 m!574843))

(assert (=> bm!32921 m!574839))

(declare-fun m!574845 () Bool)

(assert (=> bm!32921 m!574845))

(assert (=> b!597395 m!574839))

(assert (=> b!597395 m!574839))

(assert (=> b!597395 m!574843))

(assert (=> b!597292 d!86719))

(declare-fun bm!32928 () Bool)

(declare-fun call!32931 () Bool)

(assert (=> bm!32928 (= call!32931 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2986 mask!3053))))

(declare-fun b!597424 () Bool)

(declare-fun e!341415 () Bool)

(assert (=> b!597424 (= e!341415 call!32931)))

(declare-fun d!86729 () Bool)

(declare-fun res!383050 () Bool)

(declare-fun e!341416 () Bool)

(assert (=> d!86729 (=> res!383050 e!341416)))

(assert (=> d!86729 (= res!383050 (bvsge #b00000000000000000000000000000000 (size!18129 a!2986)))))

(assert (=> d!86729 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053) e!341416)))

(declare-fun b!597425 () Bool)

(declare-fun e!341417 () Bool)

(assert (=> b!597425 (= e!341417 call!32931)))

(declare-fun b!597426 () Bool)

(assert (=> b!597426 (= e!341415 e!341417)))

(declare-fun lt!271461 () (_ BitVec 64))

(assert (=> b!597426 (= lt!271461 (select (arr!17765 a!2986) #b00000000000000000000000000000000))))

(declare-fun lt!271460 () Unit!18792)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!37012 (_ BitVec 64) (_ BitVec 32)) Unit!18792)

(assert (=> b!597426 (= lt!271460 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2986 lt!271461 #b00000000000000000000000000000000))))

(assert (=> b!597426 (arrayContainsKey!0 a!2986 lt!271461 #b00000000000000000000000000000000)))

(declare-fun lt!271462 () Unit!18792)

(assert (=> b!597426 (= lt!271462 lt!271460)))

(declare-fun res!383051 () Bool)

(assert (=> b!597426 (= res!383051 (= (seekEntryOrOpen!0 (select (arr!17765 a!2986) #b00000000000000000000000000000000) a!2986 mask!3053) (Found!6212 #b00000000000000000000000000000000)))))

(assert (=> b!597426 (=> (not res!383051) (not e!341417))))

(declare-fun b!597427 () Bool)

(assert (=> b!597427 (= e!341416 e!341415)))

(declare-fun c!67554 () Bool)

(assert (=> b!597427 (= c!67554 (validKeyInArray!0 (select (arr!17765 a!2986) #b00000000000000000000000000000000)))))

(assert (= (and d!86729 (not res!383050)) b!597427))

(assert (= (and b!597427 c!67554) b!597426))

(assert (= (and b!597427 (not c!67554)) b!597424))

(assert (= (and b!597426 res!383051) b!597425))

(assert (= (or b!597425 b!597424) bm!32928))

(declare-fun m!574859 () Bool)

(assert (=> bm!32928 m!574859))

(assert (=> b!597426 m!574839))

(declare-fun m!574861 () Bool)

(assert (=> b!597426 m!574861))

(declare-fun m!574863 () Bool)

(assert (=> b!597426 m!574863))

(assert (=> b!597426 m!574839))

(declare-fun m!574865 () Bool)

(assert (=> b!597426 m!574865))

(assert (=> b!597427 m!574839))

(assert (=> b!597427 m!574839))

(assert (=> b!597427 m!574843))

(assert (=> b!597302 d!86729))

(declare-fun b!597505 () Bool)

(declare-fun c!67590 () Bool)

(declare-fun lt!271494 () (_ BitVec 64))

(assert (=> b!597505 (= c!67590 (= lt!271494 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!341463 () SeekEntryResult!6212)

(declare-fun e!341464 () SeekEntryResult!6212)

(assert (=> b!597505 (= e!341463 e!341464)))

(declare-fun b!597506 () Bool)

(assert (=> b!597506 (= e!341464 (MissingVacant!6212 vacantSpotIndex!68))))

(declare-fun d!86735 () Bool)

(declare-fun lt!271493 () SeekEntryResult!6212)

(assert (=> d!86735 (and (or (is-Undefined!6212 lt!271493) (not (is-Found!6212 lt!271493)) (and (bvsge (index!27099 lt!271493) #b00000000000000000000000000000000) (bvslt (index!27099 lt!271493) (size!18129 a!2986)))) (or (is-Undefined!6212 lt!271493) (is-Found!6212 lt!271493) (not (is-MissingVacant!6212 lt!271493)) (not (= (index!27101 lt!271493) vacantSpotIndex!68)) (and (bvsge (index!27101 lt!271493) #b00000000000000000000000000000000) (bvslt (index!27101 lt!271493) (size!18129 a!2986)))) (or (is-Undefined!6212 lt!271493) (ite (is-Found!6212 lt!271493) (= (select (arr!17765 a!2986) (index!27099 lt!271493)) (select (arr!17765 a!2986) j!136)) (and (is-MissingVacant!6212 lt!271493) (= (index!27101 lt!271493) vacantSpotIndex!68) (= (select (arr!17765 a!2986) (index!27101 lt!271493)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!341462 () SeekEntryResult!6212)

(assert (=> d!86735 (= lt!271493 e!341462)))

(declare-fun c!67589 () Bool)

(assert (=> d!86735 (= c!67589 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!86735 (= lt!271494 (select (arr!17765 a!2986) index!984))))

(assert (=> d!86735 (validMask!0 mask!3053)))

(assert (=> d!86735 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17765 a!2986) j!136) a!2986 mask!3053) lt!271493)))

(declare-fun b!597507 () Bool)

(assert (=> b!597507 (= e!341463 (Found!6212 index!984))))

(declare-fun b!597508 () Bool)

(assert (=> b!597508 (= e!341464 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 (select (arr!17765 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!597509 () Bool)

(assert (=> b!597509 (= e!341462 Undefined!6212)))

(declare-fun b!597510 () Bool)

(assert (=> b!597510 (= e!341462 e!341463)))

(declare-fun c!67588 () Bool)

(assert (=> b!597510 (= c!67588 (= lt!271494 (select (arr!17765 a!2986) j!136)))))

(assert (= (and d!86735 c!67589) b!597509))

(assert (= (and d!86735 (not c!67589)) b!597510))

(assert (= (and b!597510 c!67588) b!597507))

(assert (= (and b!597510 (not c!67588)) b!597505))

(assert (= (and b!597505 c!67590) b!597506))

(assert (= (and b!597505 (not c!67590)) b!597508))

(declare-fun m!574941 () Bool)

(assert (=> d!86735 m!574941))

(declare-fun m!574943 () Bool)

(assert (=> d!86735 m!574943))

(assert (=> d!86735 m!574781))

(assert (=> d!86735 m!574735))

(assert (=> b!597508 m!574763))

(assert (=> b!597508 m!574763))

(assert (=> b!597508 m!574739))

(declare-fun m!574945 () Bool)

(assert (=> b!597508 m!574945))

(assert (=> b!597311 d!86735))

(declare-fun d!86763 () Bool)

(assert (=> d!86763 (= (validMask!0 mask!3053) (and (or (= mask!3053 #b00000000000000000000000000000111) (= mask!3053 #b00000000000000000000000000001111) (= mask!3053 #b00000000000000000000000000011111) (= mask!3053 #b00000000000000000000000000111111) (= mask!3053 #b00000000000000000000000001111111) (= mask!3053 #b00000000000000000000000011111111) (= mask!3053 #b00000000000000000000000111111111) (= mask!3053 #b00000000000000000000001111111111) (= mask!3053 #b00000000000000000000011111111111) (= mask!3053 #b00000000000000000000111111111111) (= mask!3053 #b00000000000000000001111111111111) (= mask!3053 #b00000000000000000011111111111111) (= mask!3053 #b00000000000000000111111111111111) (= mask!3053 #b00000000000000001111111111111111) (= mask!3053 #b00000000000000011111111111111111) (= mask!3053 #b00000000000000111111111111111111) (= mask!3053 #b00000000000001111111111111111111) (= mask!3053 #b00000000000011111111111111111111) (= mask!3053 #b00000000000111111111111111111111) (= mask!3053 #b00000000001111111111111111111111) (= mask!3053 #b00000000011111111111111111111111) (= mask!3053 #b00000000111111111111111111111111) (= mask!3053 #b00000001111111111111111111111111) (= mask!3053 #b00000011111111111111111111111111) (= mask!3053 #b00000111111111111111111111111111) (= mask!3053 #b00001111111111111111111111111111) (= mask!3053 #b00011111111111111111111111111111) (= mask!3053 #b00111111111111111111111111111111)) (bvsle mask!3053 #b00111111111111111111111111111111)))))

(assert (=> start!54658 d!86763))

(declare-fun d!86777 () Bool)

(assert (=> d!86777 (= (array_inv!13539 a!2986) (bvsge (size!18129 a!2986) #b00000000000000000000000000000000))))

