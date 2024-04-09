; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!55618 () Bool)

(assert start!55618)

(declare-fun b!609622 () Bool)

(declare-fun res!392270 () Bool)

(declare-fun e!349165 () Bool)

(assert (=> b!609622 (=> (not res!392270) (not e!349165))))

(declare-datatypes ((array!37312 0))(
  ( (array!37313 (arr!17903 (Array (_ BitVec 32) (_ BitVec 64))) (size!18267 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37312)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37312 (_ BitVec 32)) Bool)

(assert (=> b!609622 (= res!392270 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!609623 () Bool)

(declare-fun res!392259 () Bool)

(declare-fun e!349166 () Bool)

(assert (=> b!609623 (=> (not res!392259) (not e!349166))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!609623 (= res!392259 (validKeyInArray!0 k!1786))))

(declare-fun b!609624 () Bool)

(declare-datatypes ((Unit!19528 0))(
  ( (Unit!19529) )
))
(declare-fun e!349163 () Unit!19528)

(declare-fun Unit!19530 () Unit!19528)

(assert (=> b!609624 (= e!349163 Unit!19530)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!278804 () array!37312)

(declare-fun lt!278806 () Unit!19528)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37312 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19528)

(assert (=> b!609624 (= lt!278806 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!278804 (select (arr!17903 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun arrayContainsKey!0 (array!37312 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!609624 (arrayContainsKey!0 lt!278804 (select (arr!17903 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun lt!278812 () Unit!19528)

(declare-datatypes ((List!11997 0))(
  ( (Nil!11994) (Cons!11993 (h!13038 (_ BitVec 64)) (t!18233 List!11997)) )
))
(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37312 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11997) Unit!19528)

(assert (=> b!609624 (= lt!278812 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11994))))

(declare-fun arrayNoDuplicates!0 (array!37312 (_ BitVec 32) List!11997) Bool)

(assert (=> b!609624 (arrayNoDuplicates!0 lt!278804 #b00000000000000000000000000000000 Nil!11994)))

(declare-fun lt!278816 () Unit!19528)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37312 (_ BitVec 32) (_ BitVec 32)) Unit!19528)

(assert (=> b!609624 (= lt!278816 (lemmaNoDuplicateFromThenFromBigger!0 lt!278804 #b00000000000000000000000000000000 j!136))))

(assert (=> b!609624 (arrayNoDuplicates!0 lt!278804 j!136 Nil!11994)))

(declare-fun lt!278808 () Unit!19528)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37312 (_ BitVec 64) (_ BitVec 32) List!11997) Unit!19528)

(assert (=> b!609624 (= lt!278808 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!278804 (select (arr!17903 a!2986) j!136) j!136 Nil!11994))))

(assert (=> b!609624 false))

(declare-fun b!609625 () Bool)

(declare-fun e!349171 () Bool)

(declare-fun e!349174 () Bool)

(assert (=> b!609625 (= e!349171 e!349174)))

(declare-fun res!392272 () Bool)

(assert (=> b!609625 (=> (not res!392272) (not e!349174))))

(assert (=> b!609625 (= res!392272 (arrayContainsKey!0 lt!278804 (select (arr!17903 a!2986) j!136) j!136))))

(declare-fun b!609626 () Bool)

(declare-fun e!349169 () Unit!19528)

(declare-fun Unit!19531 () Unit!19528)

(assert (=> b!609626 (= e!349169 Unit!19531)))

(assert (=> b!609626 false))

(declare-fun b!609628 () Bool)

(declare-fun e!349176 () Bool)

(declare-fun e!349172 () Bool)

(assert (=> b!609628 (= e!349176 (not e!349172))))

(declare-fun res!392261 () Bool)

(assert (=> b!609628 (=> res!392261 e!349172)))

(declare-datatypes ((SeekEntryResult!6350 0))(
  ( (MissingZero!6350 (index!27674 (_ BitVec 32))) (Found!6350 (index!27675 (_ BitVec 32))) (Intermediate!6350 (undefined!7162 Bool) (index!27676 (_ BitVec 32)) (x!56500 (_ BitVec 32))) (Undefined!6350) (MissingVacant!6350 (index!27677 (_ BitVec 32))) )
))
(declare-fun lt!278810 () SeekEntryResult!6350)

(assert (=> b!609628 (= res!392261 (not (= lt!278810 (Found!6350 index!984))))))

(declare-fun lt!278820 () Unit!19528)

(assert (=> b!609628 (= lt!278820 e!349169)))

(declare-fun c!69050 () Bool)

(assert (=> b!609628 (= c!69050 (= lt!278810 Undefined!6350))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun lt!278814 () (_ BitVec 64))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37312 (_ BitVec 32)) SeekEntryResult!6350)

(assert (=> b!609628 (= lt!278810 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!278814 lt!278804 mask!3053))))

(declare-fun e!349173 () Bool)

(assert (=> b!609628 e!349173))

(declare-fun res!392274 () Bool)

(assert (=> b!609628 (=> (not res!392274) (not e!349173))))

(declare-fun lt!278805 () (_ BitVec 32))

(declare-fun lt!278819 () SeekEntryResult!6350)

(assert (=> b!609628 (= res!392274 (= lt!278819 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!278805 vacantSpotIndex!68 lt!278814 lt!278804 mask!3053)))))

(assert (=> b!609628 (= lt!278819 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!278805 vacantSpotIndex!68 (select (arr!17903 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!609628 (= lt!278814 (select (store (arr!17903 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!278813 () Unit!19528)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37312 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19528)

(assert (=> b!609628 (= lt!278813 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!278805 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!609628 (= lt!278805 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!609629 () Bool)

(declare-fun e!349164 () Bool)

(assert (=> b!609629 (= e!349164 (arrayContainsKey!0 lt!278804 (select (arr!17903 a!2986) j!136) index!984))))

(declare-fun b!609630 () Bool)

(declare-fun res!392263 () Bool)

(assert (=> b!609630 (=> (not res!392263) (not e!349166))))

(assert (=> b!609630 (= res!392263 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!609631 () Bool)

(declare-fun e!349167 () Bool)

(assert (=> b!609631 (= e!349165 e!349167)))

(declare-fun res!392267 () Bool)

(assert (=> b!609631 (=> (not res!392267) (not e!349167))))

(assert (=> b!609631 (= res!392267 (= (select (store (arr!17903 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!609631 (= lt!278804 (array!37313 (store (arr!17903 a!2986) i!1108 k!1786) (size!18267 a!2986)))))

(declare-fun b!609632 () Bool)

(declare-fun lt!278807 () SeekEntryResult!6350)

(assert (=> b!609632 (= e!349173 (= lt!278807 lt!278819))))

(declare-fun b!609633 () Bool)

(declare-fun e!349168 () Bool)

(declare-fun e!349170 () Bool)

(assert (=> b!609633 (= e!349168 e!349170)))

(declare-fun res!392273 () Bool)

(assert (=> b!609633 (=> res!392273 e!349170)))

(assert (=> b!609633 (= res!392273 (bvsge index!984 j!136))))

(declare-fun lt!278817 () Unit!19528)

(assert (=> b!609633 (= lt!278817 e!349163)))

(declare-fun c!69049 () Bool)

(assert (=> b!609633 (= c!69049 (bvslt j!136 index!984))))

(declare-fun b!609634 () Bool)

(declare-fun res!392268 () Bool)

(assert (=> b!609634 (=> (not res!392268) (not e!349165))))

(assert (=> b!609634 (= res!392268 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11994))))

(declare-fun b!609635 () Bool)

(declare-fun e!349177 () Bool)

(assert (=> b!609635 (= e!349177 e!349171)))

(declare-fun res!392269 () Bool)

(assert (=> b!609635 (=> res!392269 e!349171)))

(declare-fun lt!278809 () (_ BitVec 64))

(assert (=> b!609635 (= res!392269 (or (not (= (select (arr!17903 a!2986) j!136) lt!278814)) (not (= (select (arr!17903 a!2986) j!136) lt!278809)) (bvsge j!136 index!984)))))

(declare-fun b!609636 () Bool)

(assert (=> b!609636 (= e!349170 (bvsle #b00000000000000000000000000000000 (size!18267 a!2986)))))

(assert (=> b!609636 (arrayNoDuplicates!0 lt!278804 #b00000000000000000000000000000000 Nil!11994)))

(declare-fun lt!278811 () Unit!19528)

(assert (=> b!609636 (= lt!278811 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11994))))

(assert (=> b!609636 (arrayContainsKey!0 lt!278804 (select (arr!17903 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!278815 () Unit!19528)

(assert (=> b!609636 (= lt!278815 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!278804 (select (arr!17903 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!609636 e!349164))

(declare-fun res!392276 () Bool)

(assert (=> b!609636 (=> (not res!392276) (not e!349164))))

(assert (=> b!609636 (= res!392276 (arrayContainsKey!0 lt!278804 (select (arr!17903 a!2986) j!136) j!136))))

(declare-fun b!609637 () Bool)

(assert (=> b!609637 (= e!349172 e!349168)))

(declare-fun res!392271 () Bool)

(assert (=> b!609637 (=> res!392271 e!349168)))

(assert (=> b!609637 (= res!392271 (or (not (= (select (arr!17903 a!2986) j!136) lt!278814)) (not (= (select (arr!17903 a!2986) j!136) lt!278809))))))

(assert (=> b!609637 e!349177))

(declare-fun res!392266 () Bool)

(assert (=> b!609637 (=> (not res!392266) (not e!349177))))

(assert (=> b!609637 (= res!392266 (= lt!278809 (select (arr!17903 a!2986) j!136)))))

(assert (=> b!609637 (= lt!278809 (select (store (arr!17903 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!609627 () Bool)

(assert (=> b!609627 (= e!349174 (arrayContainsKey!0 lt!278804 (select (arr!17903 a!2986) j!136) index!984))))

(declare-fun res!392264 () Bool)

(assert (=> start!55618 (=> (not res!392264) (not e!349166))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55618 (= res!392264 (validMask!0 mask!3053))))

(assert (=> start!55618 e!349166))

(assert (=> start!55618 true))

(declare-fun array_inv!13677 (array!37312) Bool)

(assert (=> start!55618 (array_inv!13677 a!2986)))

(declare-fun b!609638 () Bool)

(declare-fun res!392262 () Bool)

(assert (=> b!609638 (=> (not res!392262) (not e!349165))))

(assert (=> b!609638 (= res!392262 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17903 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!609639 () Bool)

(assert (=> b!609639 (= e!349166 e!349165)))

(declare-fun res!392265 () Bool)

(assert (=> b!609639 (=> (not res!392265) (not e!349165))))

(declare-fun lt!278818 () SeekEntryResult!6350)

(assert (=> b!609639 (= res!392265 (or (= lt!278818 (MissingZero!6350 i!1108)) (= lt!278818 (MissingVacant!6350 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37312 (_ BitVec 32)) SeekEntryResult!6350)

(assert (=> b!609639 (= lt!278818 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!609640 () Bool)

(declare-fun res!392260 () Bool)

(assert (=> b!609640 (=> (not res!392260) (not e!349166))))

(assert (=> b!609640 (= res!392260 (validKeyInArray!0 (select (arr!17903 a!2986) j!136)))))

(declare-fun b!609641 () Bool)

(declare-fun Unit!19532 () Unit!19528)

(assert (=> b!609641 (= e!349163 Unit!19532)))

(declare-fun b!609642 () Bool)

(declare-fun res!392275 () Bool)

(assert (=> b!609642 (=> (not res!392275) (not e!349166))))

(assert (=> b!609642 (= res!392275 (and (= (size!18267 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18267 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18267 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!609643 () Bool)

(assert (=> b!609643 (= e!349167 e!349176)))

(declare-fun res!392258 () Bool)

(assert (=> b!609643 (=> (not res!392258) (not e!349176))))

(assert (=> b!609643 (= res!392258 (and (= lt!278807 (Found!6350 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17903 a!2986) index!984) (select (arr!17903 a!2986) j!136))) (not (= (select (arr!17903 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!609643 (= lt!278807 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17903 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!609644 () Bool)

(declare-fun Unit!19533 () Unit!19528)

(assert (=> b!609644 (= e!349169 Unit!19533)))

(assert (= (and start!55618 res!392264) b!609642))

(assert (= (and b!609642 res!392275) b!609640))

(assert (= (and b!609640 res!392260) b!609623))

(assert (= (and b!609623 res!392259) b!609630))

(assert (= (and b!609630 res!392263) b!609639))

(assert (= (and b!609639 res!392265) b!609622))

(assert (= (and b!609622 res!392270) b!609634))

(assert (= (and b!609634 res!392268) b!609638))

(assert (= (and b!609638 res!392262) b!609631))

(assert (= (and b!609631 res!392267) b!609643))

(assert (= (and b!609643 res!392258) b!609628))

(assert (= (and b!609628 res!392274) b!609632))

(assert (= (and b!609628 c!69050) b!609626))

(assert (= (and b!609628 (not c!69050)) b!609644))

(assert (= (and b!609628 (not res!392261)) b!609637))

(assert (= (and b!609637 res!392266) b!609635))

(assert (= (and b!609635 (not res!392269)) b!609625))

(assert (= (and b!609625 res!392272) b!609627))

(assert (= (and b!609637 (not res!392271)) b!609633))

(assert (= (and b!609633 c!69049) b!609624))

(assert (= (and b!609633 (not c!69049)) b!609641))

(assert (= (and b!609633 (not res!392273)) b!609636))

(assert (= (and b!609636 res!392276) b!609629))

(declare-fun m!586157 () Bool)

(assert (=> b!609630 m!586157))

(declare-fun m!586159 () Bool)

(assert (=> b!609623 m!586159))

(declare-fun m!586161 () Bool)

(assert (=> b!609636 m!586161))

(declare-fun m!586163 () Bool)

(assert (=> b!609636 m!586163))

(assert (=> b!609636 m!586161))

(assert (=> b!609636 m!586161))

(declare-fun m!586165 () Bool)

(assert (=> b!609636 m!586165))

(assert (=> b!609636 m!586161))

(declare-fun m!586167 () Bool)

(assert (=> b!609636 m!586167))

(declare-fun m!586169 () Bool)

(assert (=> b!609636 m!586169))

(declare-fun m!586171 () Bool)

(assert (=> b!609636 m!586171))

(declare-fun m!586173 () Bool)

(assert (=> b!609638 m!586173))

(declare-fun m!586175 () Bool)

(assert (=> b!609634 m!586175))

(assert (=> b!609627 m!586161))

(assert (=> b!609627 m!586161))

(declare-fun m!586177 () Bool)

(assert (=> b!609627 m!586177))

(declare-fun m!586179 () Bool)

(assert (=> start!55618 m!586179))

(declare-fun m!586181 () Bool)

(assert (=> start!55618 m!586181))

(declare-fun m!586183 () Bool)

(assert (=> b!609628 m!586183))

(declare-fun m!586185 () Bool)

(assert (=> b!609628 m!586185))

(assert (=> b!609628 m!586161))

(declare-fun m!586187 () Bool)

(assert (=> b!609628 m!586187))

(assert (=> b!609628 m!586161))

(declare-fun m!586189 () Bool)

(assert (=> b!609628 m!586189))

(declare-fun m!586191 () Bool)

(assert (=> b!609628 m!586191))

(declare-fun m!586193 () Bool)

(assert (=> b!609628 m!586193))

(declare-fun m!586195 () Bool)

(assert (=> b!609628 m!586195))

(assert (=> b!609629 m!586161))

(assert (=> b!609629 m!586161))

(assert (=> b!609629 m!586177))

(assert (=> b!609637 m!586161))

(assert (=> b!609637 m!586189))

(declare-fun m!586197 () Bool)

(assert (=> b!609637 m!586197))

(assert (=> b!609640 m!586161))

(assert (=> b!609640 m!586161))

(declare-fun m!586199 () Bool)

(assert (=> b!609640 m!586199))

(assert (=> b!609635 m!586161))

(declare-fun m!586201 () Bool)

(assert (=> b!609643 m!586201))

(assert (=> b!609643 m!586161))

(assert (=> b!609643 m!586161))

(declare-fun m!586203 () Bool)

(assert (=> b!609643 m!586203))

(assert (=> b!609625 m!586161))

(assert (=> b!609625 m!586161))

(assert (=> b!609625 m!586165))

(assert (=> b!609624 m!586161))

(assert (=> b!609624 m!586161))

(declare-fun m!586205 () Bool)

(assert (=> b!609624 m!586205))

(declare-fun m!586207 () Bool)

(assert (=> b!609624 m!586207))

(assert (=> b!609624 m!586161))

(declare-fun m!586209 () Bool)

(assert (=> b!609624 m!586209))

(assert (=> b!609624 m!586161))

(declare-fun m!586211 () Bool)

(assert (=> b!609624 m!586211))

(declare-fun m!586213 () Bool)

(assert (=> b!609624 m!586213))

(assert (=> b!609624 m!586169))

(assert (=> b!609624 m!586171))

(declare-fun m!586215 () Bool)

(assert (=> b!609639 m!586215))

(assert (=> b!609631 m!586189))

(declare-fun m!586217 () Bool)

(assert (=> b!609631 m!586217))

(declare-fun m!586219 () Bool)

(assert (=> b!609622 m!586219))

(push 1)

