; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56682 () Bool)

(assert start!56682)

(declare-fun b!628006 () Bool)

(declare-fun res!405887 () Bool)

(declare-fun e!359342 () Bool)

(assert (=> b!628006 (=> (not res!405887) (not e!359342))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!37935 0))(
  ( (array!37936 (arr!18204 (Array (_ BitVec 32) (_ BitVec 64))) (size!18568 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37935)

(declare-datatypes ((SeekEntryResult!6651 0))(
  ( (MissingZero!6651 (index!28887 (_ BitVec 32))) (Found!6651 (index!28888 (_ BitVec 32))) (Intermediate!6651 (undefined!7463 Bool) (index!28889 (_ BitVec 32)) (x!57648 (_ BitVec 32))) (Undefined!6651) (MissingVacant!6651 (index!28890 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37935 (_ BitVec 32)) SeekEntryResult!6651)

(assert (=> b!628006 (= res!405887 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18204 a!2986) j!136) a!2986 mask!3053) (Found!6651 j!136)))))

(declare-fun b!628007 () Bool)

(declare-fun res!405886 () Bool)

(declare-fun e!359344 () Bool)

(assert (=> b!628007 (=> (not res!405886) (not e!359344))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!628007 (= res!405886 (validKeyInArray!0 k!1786))))

(declare-fun res!405891 () Bool)

(assert (=> start!56682 (=> (not res!405891) (not e!359344))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56682 (= res!405891 (validMask!0 mask!3053))))

(assert (=> start!56682 e!359344))

(assert (=> start!56682 true))

(declare-fun array_inv!13978 (array!37935) Bool)

(assert (=> start!56682 (array_inv!13978 a!2986)))

(declare-fun b!628008 () Bool)

(declare-fun res!405890 () Bool)

(assert (=> b!628008 (=> (not res!405890) (not e!359342))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37935 (_ BitVec 32)) Bool)

(assert (=> b!628008 (= res!405890 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!628009 () Bool)

(declare-fun res!405888 () Bool)

(assert (=> b!628009 (=> (not res!405888) (not e!359342))))

(declare-datatypes ((List!12298 0))(
  ( (Nil!12295) (Cons!12294 (h!13339 (_ BitVec 64)) (t!18534 List!12298)) )
))
(declare-fun arrayNoDuplicates!0 (array!37935 (_ BitVec 32) List!12298) Bool)

(assert (=> b!628009 (= res!405888 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12295))))

(declare-fun b!628010 () Bool)

(declare-fun res!405895 () Bool)

(assert (=> b!628010 (=> (not res!405895) (not e!359344))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!628010 (= res!405895 (and (= (size!18568 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18568 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18568 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!628011 () Bool)

(declare-fun res!405893 () Bool)

(assert (=> b!628011 (=> (not res!405893) (not e!359344))))

(declare-fun arrayContainsKey!0 (array!37935 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!628011 (= res!405893 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!628012 () Bool)

(declare-fun res!405889 () Bool)

(assert (=> b!628012 (=> (not res!405889) (not e!359342))))

(assert (=> b!628012 (= res!405889 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18204 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18204 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!628013 () Bool)

(declare-fun lt!290364 () (_ BitVec 32))

(assert (=> b!628013 (= e!359342 (or (bvslt lt!290364 #b00000000000000000000000000000000) (bvsge lt!290364 (bvadd mask!3053 #b00000000000000000000000000000001))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!628013 (= lt!290364 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!628014 () Bool)

(assert (=> b!628014 (= e!359344 e!359342)))

(declare-fun res!405894 () Bool)

(assert (=> b!628014 (=> (not res!405894) (not e!359342))))

(declare-fun lt!290363 () SeekEntryResult!6651)

(assert (=> b!628014 (= res!405894 (or (= lt!290363 (MissingZero!6651 i!1108)) (= lt!290363 (MissingVacant!6651 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37935 (_ BitVec 32)) SeekEntryResult!6651)

(assert (=> b!628014 (= lt!290363 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!628015 () Bool)

(declare-fun res!405896 () Bool)

(assert (=> b!628015 (=> (not res!405896) (not e!359344))))

(assert (=> b!628015 (= res!405896 (validKeyInArray!0 (select (arr!18204 a!2986) j!136)))))

(declare-fun b!628016 () Bool)

(declare-fun res!405892 () Bool)

(assert (=> b!628016 (=> (not res!405892) (not e!359342))))

(assert (=> b!628016 (= res!405892 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18204 a!2986) index!984) (select (arr!18204 a!2986) j!136))) (not (= (select (arr!18204 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (= (and start!56682 res!405891) b!628010))

(assert (= (and b!628010 res!405895) b!628015))

(assert (= (and b!628015 res!405896) b!628007))

(assert (= (and b!628007 res!405886) b!628011))

(assert (= (and b!628011 res!405893) b!628014))

(assert (= (and b!628014 res!405894) b!628008))

(assert (= (and b!628008 res!405890) b!628009))

(assert (= (and b!628009 res!405888) b!628012))

(assert (= (and b!628012 res!405889) b!628006))

(assert (= (and b!628006 res!405887) b!628016))

(assert (= (and b!628016 res!405892) b!628013))

(declare-fun m!603303 () Bool)

(assert (=> b!628006 m!603303))

(assert (=> b!628006 m!603303))

(declare-fun m!603305 () Bool)

(assert (=> b!628006 m!603305))

(declare-fun m!603307 () Bool)

(assert (=> b!628008 m!603307))

(declare-fun m!603309 () Bool)

(assert (=> start!56682 m!603309))

(declare-fun m!603311 () Bool)

(assert (=> start!56682 m!603311))

(declare-fun m!603313 () Bool)

(assert (=> b!628013 m!603313))

(declare-fun m!603315 () Bool)

(assert (=> b!628007 m!603315))

(assert (=> b!628015 m!603303))

(assert (=> b!628015 m!603303))

(declare-fun m!603317 () Bool)

(assert (=> b!628015 m!603317))

(declare-fun m!603319 () Bool)

(assert (=> b!628009 m!603319))

(declare-fun m!603321 () Bool)

(assert (=> b!628016 m!603321))

(assert (=> b!628016 m!603303))

(declare-fun m!603323 () Bool)

(assert (=> b!628012 m!603323))

(declare-fun m!603325 () Bool)

(assert (=> b!628012 m!603325))

(declare-fun m!603327 () Bool)

(assert (=> b!628012 m!603327))

(declare-fun m!603329 () Bool)

(assert (=> b!628011 m!603329))

(declare-fun m!603331 () Bool)

(assert (=> b!628014 m!603331))

(push 1)

(assert (not b!628008))

(assert (not b!628006))

(assert (not b!628009))

(assert (not b!628007))

(assert (not b!628013))

(assert (not b!628011))

(assert (not b!628015))

(assert (not b!628014))

(assert (not start!56682))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!628125 () Bool)

(declare-fun e!359395 () SeekEntryResult!6651)

(assert (=> b!628125 (= e!359395 (MissingVacant!6651 vacantSpotIndex!68))))

(declare-fun b!628126 () Bool)

(declare-fun e!359394 () SeekEntryResult!6651)

(assert (=> b!628126 (= e!359394 (Found!6651 index!984))))

(declare-fun b!628127 () Bool)

(declare-fun c!71441 () Bool)

(declare-fun lt!290385 () (_ BitVec 64))

(assert (=> b!628127 (= c!71441 (= lt!290385 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!628127 (= e!359394 e!359395)))

(declare-fun b!628128 () Bool)

(declare-fun e!359393 () SeekEntryResult!6651)

(assert (=> b!628128 (= e!359393 e!359394)))

(declare-fun c!71439 () Bool)

(assert (=> b!628128 (= c!71439 (= lt!290385 (select (arr!18204 a!2986) j!136)))))

(declare-fun lt!290384 () SeekEntryResult!6651)

(declare-fun d!88869 () Bool)

(assert (=> d!88869 (and (or (is-Undefined!6651 lt!290384) (not (is-Found!6651 lt!290384)) (and (bvsge (index!28888 lt!290384) #b00000000000000000000000000000000) (bvslt (index!28888 lt!290384) (size!18568 a!2986)))) (or (is-Undefined!6651 lt!290384) (is-Found!6651 lt!290384) (not (is-MissingVacant!6651 lt!290384)) (not (= (index!28890 lt!290384) vacantSpotIndex!68)) (and (bvsge (index!28890 lt!290384) #b00000000000000000000000000000000) (bvslt (index!28890 lt!290384) (size!18568 a!2986)))) (or (is-Undefined!6651 lt!290384) (ite (is-Found!6651 lt!290384) (= (select (arr!18204 a!2986) (index!28888 lt!290384)) (select (arr!18204 a!2986) j!136)) (and (is-MissingVacant!6651 lt!290384) (= (index!28890 lt!290384) vacantSpotIndex!68) (= (select (arr!18204 a!2986) (index!28890 lt!290384)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!88869 (= lt!290384 e!359393)))

(declare-fun c!71440 () Bool)

(assert (=> d!88869 (= c!71440 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!88869 (= lt!290385 (select (arr!18204 a!2986) index!984))))

(assert (=> d!88869 (validMask!0 mask!3053)))

(assert (=> d!88869 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18204 a!2986) j!136) a!2986 mask!3053) lt!290384)))

(declare-fun b!628129 () Bool)

(assert (=> b!628129 (= e!359395 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 (select (arr!18204 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!628130 () Bool)

(assert (=> b!628130 (= e!359393 Undefined!6651)))

(assert (= (and d!88869 c!71440) b!628130))

(assert (= (and d!88869 (not c!71440)) b!628128))

(assert (= (and b!628128 c!71439) b!628126))

(assert (= (and b!628128 (not c!71439)) b!628127))

(assert (= (and b!628127 c!71441) b!628125))

(assert (= (and b!628127 (not c!71441)) b!628129))

(declare-fun m!603411 () Bool)

(assert (=> d!88869 m!603411))

(declare-fun m!603413 () Bool)

(assert (=> d!88869 m!603413))

(assert (=> d!88869 m!603321))

(assert (=> d!88869 m!603309))

(assert (=> b!628129 m!603313))

(assert (=> b!628129 m!603313))

(assert (=> b!628129 m!603303))

(declare-fun m!603415 () Bool)

(assert (=> b!628129 m!603415))

(assert (=> b!628006 d!88869))

(declare-fun d!88875 () Bool)

(declare-fun res!405985 () Bool)

(declare-fun e!359406 () Bool)

(assert (=> d!88875 (=> res!405985 e!359406)))

(assert (=> d!88875 (= res!405985 (= (select (arr!18204 a!2986) #b00000000000000000000000000000000) k!1786))))

(assert (=> d!88875 (= (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000) e!359406)))

(declare-fun b!628147 () Bool)

(declare-fun e!359407 () Bool)

(assert (=> b!628147 (= e!359406 e!359407)))

(declare-fun res!405986 () Bool)

(assert (=> b!628147 (=> (not res!405986) (not e!359407))))

(assert (=> b!628147 (= res!405986 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!18568 a!2986)))))

(declare-fun b!628148 () Bool)

(assert (=> b!628148 (= e!359407 (arrayContainsKey!0 a!2986 k!1786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!88875 (not res!405985)) b!628147))

(assert (= (and b!628147 res!405986) b!628148))

(declare-fun m!603417 () Bool)

(assert (=> d!88875 m!603417))

(declare-fun m!603419 () Bool)

(assert (=> b!628148 m!603419))

(assert (=> b!628011 d!88875))

(declare-fun b!628177 () Bool)

(declare-fun e!359428 () Bool)

(declare-fun e!359425 () Bool)

(assert (=> b!628177 (= e!359428 e!359425)))

(declare-fun res!405993 () Bool)

(assert (=> b!628177 (=> (not res!405993) (not e!359425))))

(declare-fun e!359426 () Bool)

(assert (=> b!628177 (= res!405993 (not e!359426))))

(declare-fun res!405995 () Bool)

(assert (=> b!628177 (=> (not res!405995) (not e!359426))))

(assert (=> b!628177 (= res!405995 (validKeyInArray!0 (select (arr!18204 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!628178 () Bool)

(declare-fun e!359427 () Bool)

(declare-fun call!33257 () Bool)

(assert (=> b!628178 (= e!359427 call!33257)))

(declare-fun b!628179 () Bool)

(assert (=> b!628179 (= e!359427 call!33257)))

(declare-fun d!88877 () Bool)

(declare-fun res!405994 () Bool)

(assert (=> d!88877 (=> res!405994 e!359428)))

(assert (=> d!88877 (= res!405994 (bvsge #b00000000000000000000000000000000 (size!18568 a!2986)))))

(assert (=> d!88877 (= (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12295) e!359428)))

(declare-fun b!628180 () Bool)

(declare-fun contains!3085 (List!12298 (_ BitVec 64)) Bool)

(assert (=> b!628180 (= e!359426 (contains!3085 Nil!12295 (select (arr!18204 a!2986) #b00000000000000000000000000000000)))))

(declare-fun bm!33254 () Bool)

(declare-fun c!71459 () Bool)

(assert (=> bm!33254 (= call!33257 (arrayNoDuplicates!0 a!2986 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!71459 (Cons!12294 (select (arr!18204 a!2986) #b00000000000000000000000000000000) Nil!12295) Nil!12295)))))

(declare-fun b!628181 () Bool)

(assert (=> b!628181 (= e!359425 e!359427)))

(assert (=> b!628181 (= c!71459 (validKeyInArray!0 (select (arr!18204 a!2986) #b00000000000000000000000000000000)))))

(assert (= (and d!88877 (not res!405994)) b!628177))

(assert (= (and b!628177 res!405995) b!628180))

(assert (= (and b!628177 res!405993) b!628181))

(assert (= (and b!628181 c!71459) b!628179))

(assert (= (and b!628181 (not c!71459)) b!628178))

(assert (= (or b!628179 b!628178) bm!33254))

(assert (=> b!628177 m!603417))

(assert (=> b!628177 m!603417))

(declare-fun m!603435 () Bool)

(assert (=> b!628177 m!603435))

(assert (=> b!628180 m!603417))

(assert (=> b!628180 m!603417))

(declare-fun m!603437 () Bool)

(assert (=> b!628180 m!603437))

(assert (=> bm!33254 m!603417))

(declare-fun m!603439 () Bool)

(assert (=> bm!33254 m!603439))

(assert (=> b!628181 m!603417))

(assert (=> b!628181 m!603417))

(assert (=> b!628181 m!603435))

(assert (=> b!628009 d!88877))

(declare-fun d!88881 () Bool)

(assert (=> d!88881 (= (validKeyInArray!0 (select (arr!18204 a!2986) j!136)) (and (not (= (select (arr!18204 a!2986) j!136) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!18204 a!2986) j!136) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!628015 d!88881))

(declare-fun d!88885 () Bool)

(assert (=> d!88885 (= (validMask!0 mask!3053) (and (or (= mask!3053 #b00000000000000000000000000000111) (= mask!3053 #b00000000000000000000000000001111) (= mask!3053 #b00000000000000000000000000011111) (= mask!3053 #b00000000000000000000000000111111) (= mask!3053 #b00000000000000000000000001111111) (= mask!3053 #b00000000000000000000000011111111) (= mask!3053 #b00000000000000000000000111111111) (= mask!3053 #b00000000000000000000001111111111) (= mask!3053 #b00000000000000000000011111111111) (= mask!3053 #b00000000000000000000111111111111) (= mask!3053 #b00000000000000000001111111111111) (= mask!3053 #b00000000000000000011111111111111) (= mask!3053 #b00000000000000000111111111111111) (= mask!3053 #b00000000000000001111111111111111) (= mask!3053 #b00000000000000011111111111111111) (= mask!3053 #b00000000000000111111111111111111) (= mask!3053 #b00000000000001111111111111111111) (= mask!3053 #b00000000000011111111111111111111) (= mask!3053 #b00000000000111111111111111111111) (= mask!3053 #b00000000001111111111111111111111) (= mask!3053 #b00000000011111111111111111111111) (= mask!3053 #b00000000111111111111111111111111) (= mask!3053 #b00000001111111111111111111111111) (= mask!3053 #b00000011111111111111111111111111) (= mask!3053 #b00000111111111111111111111111111) (= mask!3053 #b00001111111111111111111111111111) (= mask!3053 #b00011111111111111111111111111111) (= mask!3053 #b00111111111111111111111111111111)) (bvsle mask!3053 #b00111111111111111111111111111111)))))

(assert (=> start!56682 d!88885))

(declare-fun d!88897 () Bool)

(assert (=> d!88897 (= (array_inv!13978 a!2986) (bvsge (size!18568 a!2986) #b00000000000000000000000000000000))))

(assert (=> start!56682 d!88897))

(declare-fun bm!33260 () Bool)

(declare-fun call!33263 () Bool)

(assert (=> bm!33260 (= call!33263 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2986 mask!3053))))

(declare-fun b!628244 () Bool)

(declare-fun e!359472 () Bool)

(declare-fun e!359473 () Bool)

(assert (=> b!628244 (= e!359472 e!359473)))

(declare-fun c!71480 () Bool)

(assert (=> b!628244 (= c!71480 (validKeyInArray!0 (select (arr!18204 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!628245 () Bool)

(declare-fun e!359471 () Bool)

(assert (=> b!628245 (= e!359473 e!359471)))

(declare-fun lt!290430 () (_ BitVec 64))

(assert (=> b!628245 (= lt!290430 (select (arr!18204 a!2986) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!21080 0))(
  ( (Unit!21081) )
))
(declare-fun lt!290431 () Unit!21080)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!37935 (_ BitVec 64) (_ BitVec 32)) Unit!21080)

(assert (=> b!628245 (= lt!290431 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2986 lt!290430 #b00000000000000000000000000000000))))

(assert (=> b!628245 (arrayContainsKey!0 a!2986 lt!290430 #b00000000000000000000000000000000)))

(declare-fun lt!290432 () Unit!21080)

(assert (=> b!628245 (= lt!290432 lt!290431)))

(declare-fun res!406018 () Bool)

(assert (=> b!628245 (= res!406018 (= (seekEntryOrOpen!0 (select (arr!18204 a!2986) #b00000000000000000000000000000000) a!2986 mask!3053) (Found!6651 #b00000000000000000000000000000000)))))

(assert (=> b!628245 (=> (not res!406018) (not e!359471))))

(declare-fun d!88899 () Bool)

(declare-fun res!406019 () Bool)

(assert (=> d!88899 (=> res!406019 e!359472)))

(assert (=> d!88899 (= res!406019 (bvsge #b00000000000000000000000000000000 (size!18568 a!2986)))))

(assert (=> d!88899 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053) e!359472)))

(declare-fun b!628246 () Bool)

(assert (=> b!628246 (= e!359471 call!33263)))

(declare-fun b!628247 () Bool)

(assert (=> b!628247 (= e!359473 call!33263)))

(assert (= (and d!88899 (not res!406019)) b!628244))

(assert (= (and b!628244 c!71480) b!628245))

(assert (= (and b!628244 (not c!71480)) b!628247))

(assert (= (and b!628245 res!406018) b!628246))

(assert (= (or b!628246 b!628247) bm!33260))

(declare-fun m!603469 () Bool)

(assert (=> bm!33260 m!603469))

(assert (=> b!628244 m!603417))

(assert (=> b!628244 m!603417))

(assert (=> b!628244 m!603435))

(assert (=> b!628245 m!603417))

(declare-fun m!603471 () Bool)

(assert (=> b!628245 m!603471))

(declare-fun m!603473 () Bool)

(assert (=> b!628245 m!603473))

(assert (=> b!628245 m!603417))

(declare-fun m!603475 () Bool)

(assert (=> b!628245 m!603475))

(assert (=> b!628008 d!88899))

(declare-fun d!88901 () Bool)

(declare-fun lt!290437 () (_ BitVec 32))

(assert (=> d!88901 (and (bvsge lt!290437 #b00000000000000000000000000000000) (bvslt lt!290437 (bvadd mask!3053 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!88901 (= lt!290437 (choose!52 index!984 x!910 mask!3053))))

(assert (=> d!88901 (validMask!0 mask!3053)))

(assert (=> d!88901 (= (nextIndex!0 index!984 x!910 mask!3053) lt!290437)))

(declare-fun bs!18952 () Bool)

(assert (= bs!18952 d!88901))

(declare-fun m!603483 () Bool)

(assert (=> bs!18952 m!603483))

(assert (=> bs!18952 m!603309))

(assert (=> b!628013 d!88901))

(declare-fun b!628284 () Bool)

(declare-fun e!359497 () SeekEntryResult!6651)

(assert (=> b!628284 (= e!359497 Undefined!6651)))

(declare-fun b!628285 () Bool)

(declare-fun c!71498 () Bool)

(declare-fun lt!290455 () (_ BitVec 64))

(assert (=> b!628285 (= c!71498 (= lt!290455 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!359495 () SeekEntryResult!6651)

(declare-fun e!359496 () SeekEntryResult!6651)

(assert (=> b!628285 (= e!359495 e!359496)))

(declare-fun b!628286 () Bool)

(declare-fun lt!290456 () SeekEntryResult!6651)

(assert (=> b!628286 (= e!359496 (MissingZero!6651 (index!28889 lt!290456)))))

(declare-fun b!628287 () Bool)

(assert (=> b!628287 (= e!359497 e!359495)))

(assert (=> b!628287 (= lt!290455 (select (arr!18204 a!2986) (index!28889 lt!290456)))))

(declare-fun c!71497 () Bool)

(assert (=> b!628287 (= c!71497 (= lt!290455 k!1786))))

(declare-fun b!628288 () Bool)

(assert (=> b!628288 (= e!359495 (Found!6651 (index!28889 lt!290456)))))

(declare-fun b!628289 () Bool)

(assert (=> b!628289 (= e!359496 (seekKeyOrZeroReturnVacant!0 (x!57648 lt!290456) (index!28889 lt!290456) (index!28889 lt!290456) k!1786 a!2986 mask!3053))))

(declare-fun d!88905 () Bool)

(declare-fun lt!290457 () SeekEntryResult!6651)

(assert (=> d!88905 (and (or (is-Undefined!6651 lt!290457) (not (is-Found!6651 lt!290457)) (and (bvsge (index!28888 lt!290457) #b00000000000000000000000000000000) (bvslt (index!28888 lt!290457) (size!18568 a!2986)))) (or (is-Undefined!6651 lt!290457) (is-Found!6651 lt!290457) (not (is-MissingZero!6651 lt!290457)) (and (bvsge (index!28887 lt!290457) #b00000000000000000000000000000000) (bvslt (index!28887 lt!290457) (size!18568 a!2986)))) (or (is-Undefined!6651 lt!290457) (is-Found!6651 lt!290457) (is-MissingZero!6651 lt!290457) (not (is-MissingVacant!6651 lt!290457)) (and (bvsge (index!28890 lt!290457) #b00000000000000000000000000000000) (bvslt (index!28890 lt!290457) (size!18568 a!2986)))) (or (is-Undefined!6651 lt!290457) (ite (is-Found!6651 lt!290457) (= (select (arr!18204 a!2986) (index!28888 lt!290457)) k!1786) (ite (is-MissingZero!6651 lt!290457) (= (select (arr!18204 a!2986) (index!28887 lt!290457)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!6651 lt!290457) (= (select (arr!18204 a!2986) (index!28890 lt!290457)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!88905 (= lt!290457 e!359497)))

(declare-fun c!71496 () Bool)

(assert (=> d!88905 (= c!71496 (and (is-Intermediate!6651 lt!290456) (undefined!7463 lt!290456)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37935 (_ BitVec 32)) SeekEntryResult!6651)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!88905 (= lt!290456 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1786 mask!3053) k!1786 a!2986 mask!3053))))

(assert (=> d!88905 (validMask!0 mask!3053)))

(assert (=> d!88905 (= (seekEntryOrOpen!0 k!1786 a!2986 mask!3053) lt!290457)))

(assert (= (and d!88905 c!71496) b!628284))

(assert (= (and d!88905 (not c!71496)) b!628287))

(assert (= (and b!628287 c!71497) b!628288))

(assert (= (and b!628287 (not c!71497)) b!628285))

(assert (= (and b!628285 c!71498) b!628286))

(assert (= (and b!628285 (not c!71498)) b!628289))

(declare-fun m!603499 () Bool)

(assert (=> b!628287 m!603499))

(declare-fun m!603501 () Bool)

(assert (=> b!628289 m!603501))

(assert (=> d!88905 m!603309))

(declare-fun m!603503 () Bool)

(assert (=> d!88905 m!603503))

(declare-fun m!603505 () Bool)

(assert (=> d!88905 m!603505))

(declare-fun m!603507 () Bool)

(assert (=> d!88905 m!603507))

(declare-fun m!603509 () Bool)

(assert (=> d!88905 m!603509))

(assert (=> d!88905 m!603503))

(declare-fun m!603511 () Bool)

(assert (=> d!88905 m!603511))

(assert (=> b!628014 d!88905))

(declare-fun d!88915 () Bool)

(assert (=> d!88915 (= (validKeyInArray!0 k!1786) (and (not (= k!1786 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1786 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!628007 d!88915))

(push 1)

(assert (not b!628177))

(assert (not bm!33260))

(assert (not b!628148))

(assert (not b!628245))

(assert (not b!628289))

(assert (not d!88869))

(assert (not b!628129))

(assert (not d!88905))

(assert (not b!628181))

(assert (not b!628180))

(assert (not bm!33254))

(assert (not b!628244))

(assert (not d!88901))

(check-sat)

(pop 1)

(push 1)

(check-sat)

