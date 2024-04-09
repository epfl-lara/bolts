; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!58038 () Bool)

(assert start!58038)

(declare-fun b!641255 () Bool)

(declare-fun e!367172 () Bool)

(declare-fun e!367178 () Bool)

(assert (=> b!641255 (= e!367172 (not e!367178))))

(declare-fun res!415424 () Bool)

(assert (=> b!641255 (=> res!415424 e!367178)))

(declare-datatypes ((SeekEntryResult!6831 0))(
  ( (MissingZero!6831 (index!29646 (_ BitVec 32))) (Found!6831 (index!29647 (_ BitVec 32))) (Intermediate!6831 (undefined!7643 Bool) (index!29648 (_ BitVec 32)) (x!58437 (_ BitVec 32))) (Undefined!6831) (MissingVacant!6831 (index!29649 (_ BitVec 32))) )
))
(declare-fun lt!296932 () SeekEntryResult!6831)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!641255 (= res!415424 (not (= lt!296932 (Found!6831 index!984))))))

(declare-datatypes ((Unit!21682 0))(
  ( (Unit!21683) )
))
(declare-fun lt!296929 () Unit!21682)

(declare-fun e!367174 () Unit!21682)

(assert (=> b!641255 (= lt!296929 e!367174)))

(declare-fun c!73289 () Bool)

(assert (=> b!641255 (= c!73289 (= lt!296932 Undefined!6831))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun lt!296938 () (_ BitVec 64))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((array!38340 0))(
  ( (array!38341 (arr!18384 (Array (_ BitVec 32) (_ BitVec 64))) (size!18748 (_ BitVec 32))) )
))
(declare-fun lt!296931 () array!38340)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38340 (_ BitVec 32)) SeekEntryResult!6831)

(assert (=> b!641255 (= lt!296932 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!296938 lt!296931 mask!3053))))

(declare-fun e!367171 () Bool)

(assert (=> b!641255 e!367171))

(declare-fun res!415422 () Bool)

(assert (=> b!641255 (=> (not res!415422) (not e!367171))))

(declare-fun lt!296936 () (_ BitVec 32))

(declare-fun lt!296940 () SeekEntryResult!6831)

(assert (=> b!641255 (= res!415422 (= lt!296940 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!296936 vacantSpotIndex!68 lt!296938 lt!296931 mask!3053)))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun a!2986 () array!38340)

(assert (=> b!641255 (= lt!296940 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!296936 vacantSpotIndex!68 (select (arr!18384 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!641255 (= lt!296938 (select (store (arr!18384 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!296933 () Unit!21682)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38340 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21682)

(assert (=> b!641255 (= lt!296933 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!296936 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!641255 (= lt!296936 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!641256 () Bool)

(declare-fun e!367167 () Bool)

(declare-fun e!367170 () Bool)

(assert (=> b!641256 (= e!367167 e!367170)))

(declare-fun res!415429 () Bool)

(assert (=> b!641256 (=> (not res!415429) (not e!367170))))

(declare-datatypes ((List!12478 0))(
  ( (Nil!12475) (Cons!12474 (h!13519 (_ BitVec 64)) (t!18714 List!12478)) )
))
(declare-fun contains!3132 (List!12478 (_ BitVec 64)) Bool)

(assert (=> b!641256 (= res!415429 (not (contains!3132 Nil!12475 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!641257 () Bool)

(declare-fun e!367179 () Bool)

(assert (=> b!641257 (= e!367179 e!367172)))

(declare-fun res!415412 () Bool)

(assert (=> b!641257 (=> (not res!415412) (not e!367172))))

(declare-fun lt!296934 () SeekEntryResult!6831)

(assert (=> b!641257 (= res!415412 (and (= lt!296934 (Found!6831 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18384 a!2986) index!984) (select (arr!18384 a!2986) j!136))) (not (= (select (arr!18384 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!641257 (= lt!296934 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18384 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!641258 () Bool)

(assert (=> b!641258 (= e!367170 (not (contains!3132 Nil!12475 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!641259 () Bool)

(declare-fun res!415413 () Bool)

(declare-fun e!367175 () Bool)

(assert (=> b!641259 (=> (not res!415413) (not e!367175))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!641259 (= res!415413 (validKeyInArray!0 k!1786))))

(declare-fun b!641260 () Bool)

(declare-fun res!415421 () Bool)

(declare-fun e!367169 () Bool)

(assert (=> b!641260 (=> (not res!415421) (not e!367169))))

(declare-fun arrayNoDuplicates!0 (array!38340 (_ BitVec 32) List!12478) Bool)

(assert (=> b!641260 (= res!415421 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12475))))

(declare-fun b!641261 () Bool)

(declare-fun Unit!21684 () Unit!21682)

(assert (=> b!641261 (= e!367174 Unit!21684)))

(assert (=> b!641261 false))

(declare-fun b!641263 () Bool)

(declare-fun res!415425 () Bool)

(assert (=> b!641263 (=> (not res!415425) (not e!367175))))

(declare-fun arrayContainsKey!0 (array!38340 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!641263 (= res!415425 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!641264 () Bool)

(declare-fun e!367177 () Bool)

(declare-fun e!367180 () Bool)

(assert (=> b!641264 (= e!367177 e!367180)))

(declare-fun res!415419 () Bool)

(assert (=> b!641264 (=> (not res!415419) (not e!367180))))

(assert (=> b!641264 (= res!415419 (arrayContainsKey!0 lt!296931 (select (arr!18384 a!2986) j!136) j!136))))

(declare-fun b!641265 () Bool)

(assert (=> b!641265 (= e!367175 e!367169)))

(declare-fun res!415426 () Bool)

(assert (=> b!641265 (=> (not res!415426) (not e!367169))))

(declare-fun lt!296937 () SeekEntryResult!6831)

(assert (=> b!641265 (= res!415426 (or (= lt!296937 (MissingZero!6831 i!1108)) (= lt!296937 (MissingVacant!6831 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38340 (_ BitVec 32)) SeekEntryResult!6831)

(assert (=> b!641265 (= lt!296937 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!641266 () Bool)

(declare-fun Unit!21685 () Unit!21682)

(assert (=> b!641266 (= e!367174 Unit!21685)))

(declare-fun b!641267 () Bool)

(assert (=> b!641267 (= e!367171 (= lt!296934 lt!296940))))

(declare-fun b!641268 () Bool)

(declare-fun res!415417 () Bool)

(assert (=> b!641268 (=> (not res!415417) (not e!367169))))

(assert (=> b!641268 (= res!415417 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18384 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!641269 () Bool)

(declare-fun res!415411 () Bool)

(assert (=> b!641269 (=> (not res!415411) (not e!367175))))

(assert (=> b!641269 (= res!415411 (validKeyInArray!0 (select (arr!18384 a!2986) j!136)))))

(declare-fun b!641270 () Bool)

(declare-fun e!367168 () Bool)

(assert (=> b!641270 (= e!367168 e!367177)))

(declare-fun res!415427 () Bool)

(assert (=> b!641270 (=> res!415427 e!367177)))

(declare-fun lt!296935 () (_ BitVec 64))

(assert (=> b!641270 (= res!415427 (or (not (= (select (arr!18384 a!2986) j!136) lt!296938)) (not (= (select (arr!18384 a!2986) j!136) lt!296935)) (bvsge j!136 index!984)))))

(declare-fun b!641271 () Bool)

(declare-fun res!415420 () Bool)

(assert (=> b!641271 (=> (not res!415420) (not e!367175))))

(assert (=> b!641271 (= res!415420 (and (= (size!18748 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18748 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18748 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!641272 () Bool)

(assert (=> b!641272 (= e!367180 (arrayContainsKey!0 lt!296931 (select (arr!18384 a!2986) j!136) index!984))))

(declare-fun b!641273 () Bool)

(declare-fun e!367176 () Bool)

(assert (=> b!641273 (= e!367178 e!367176)))

(declare-fun res!415418 () Bool)

(assert (=> b!641273 (=> res!415418 e!367176)))

(assert (=> b!641273 (= res!415418 (or (not (= (select (arr!18384 a!2986) j!136) lt!296938)) (not (= (select (arr!18384 a!2986) j!136) lt!296935)) (bvsge j!136 index!984)))))

(assert (=> b!641273 e!367168))

(declare-fun res!415414 () Bool)

(assert (=> b!641273 (=> (not res!415414) (not e!367168))))

(assert (=> b!641273 (= res!415414 (= lt!296935 (select (arr!18384 a!2986) j!136)))))

(assert (=> b!641273 (= lt!296935 (select (store (arr!18384 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!641274 () Bool)

(assert (=> b!641274 (= e!367169 e!367179)))

(declare-fun res!415430 () Bool)

(assert (=> b!641274 (=> (not res!415430) (not e!367179))))

(assert (=> b!641274 (= res!415430 (= (select (store (arr!18384 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!641274 (= lt!296931 (array!38341 (store (arr!18384 a!2986) i!1108 k!1786) (size!18748 a!2986)))))

(declare-fun b!641262 () Bool)

(declare-fun res!415415 () Bool)

(assert (=> b!641262 (=> (not res!415415) (not e!367169))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38340 (_ BitVec 32)) Bool)

(assert (=> b!641262 (= res!415415 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun res!415423 () Bool)

(assert (=> start!58038 (=> (not res!415423) (not e!367175))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!58038 (= res!415423 (validMask!0 mask!3053))))

(assert (=> start!58038 e!367175))

(assert (=> start!58038 true))

(declare-fun array_inv!14158 (array!38340) Bool)

(assert (=> start!58038 (array_inv!14158 a!2986)))

(declare-fun b!641275 () Bool)

(assert (=> b!641275 (= e!367176 e!367167)))

(declare-fun res!415416 () Bool)

(assert (=> b!641275 (=> res!415416 e!367167)))

(assert (=> b!641275 (= res!415416 (or (bvsge (size!18748 a!2986) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 j!136) (size!18748 a!2986))))))

(assert (=> b!641275 (arrayNoDuplicates!0 lt!296931 j!136 Nil!12475)))

(declare-fun lt!296928 () Unit!21682)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38340 (_ BitVec 32) (_ BitVec 32)) Unit!21682)

(assert (=> b!641275 (= lt!296928 (lemmaNoDuplicateFromThenFromBigger!0 lt!296931 #b00000000000000000000000000000000 j!136))))

(assert (=> b!641275 (arrayNoDuplicates!0 lt!296931 #b00000000000000000000000000000000 Nil!12475)))

(declare-fun lt!296939 () Unit!21682)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38340 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12478) Unit!21682)

(assert (=> b!641275 (= lt!296939 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12475))))

(assert (=> b!641275 (arrayContainsKey!0 lt!296931 (select (arr!18384 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!296930 () Unit!21682)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38340 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21682)

(assert (=> b!641275 (= lt!296930 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!296931 (select (arr!18384 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!641276 () Bool)

(declare-fun res!415428 () Bool)

(assert (=> b!641276 (=> res!415428 e!367167)))

(declare-fun noDuplicate!403 (List!12478) Bool)

(assert (=> b!641276 (= res!415428 (not (noDuplicate!403 Nil!12475)))))

(assert (= (and start!58038 res!415423) b!641271))

(assert (= (and b!641271 res!415420) b!641269))

(assert (= (and b!641269 res!415411) b!641259))

(assert (= (and b!641259 res!415413) b!641263))

(assert (= (and b!641263 res!415425) b!641265))

(assert (= (and b!641265 res!415426) b!641262))

(assert (= (and b!641262 res!415415) b!641260))

(assert (= (and b!641260 res!415421) b!641268))

(assert (= (and b!641268 res!415417) b!641274))

(assert (= (and b!641274 res!415430) b!641257))

(assert (= (and b!641257 res!415412) b!641255))

(assert (= (and b!641255 res!415422) b!641267))

(assert (= (and b!641255 c!73289) b!641261))

(assert (= (and b!641255 (not c!73289)) b!641266))

(assert (= (and b!641255 (not res!415424)) b!641273))

(assert (= (and b!641273 res!415414) b!641270))

(assert (= (and b!641270 (not res!415427)) b!641264))

(assert (= (and b!641264 res!415419) b!641272))

(assert (= (and b!641273 (not res!415418)) b!641275))

(assert (= (and b!641275 (not res!415416)) b!641276))

(assert (= (and b!641276 (not res!415428)) b!641256))

(assert (= (and b!641256 res!415429) b!641258))

(declare-fun m!615135 () Bool)

(assert (=> b!641265 m!615135))

(declare-fun m!615137 () Bool)

(assert (=> b!641263 m!615137))

(declare-fun m!615139 () Bool)

(assert (=> b!641257 m!615139))

(declare-fun m!615141 () Bool)

(assert (=> b!641257 m!615141))

(assert (=> b!641257 m!615141))

(declare-fun m!615143 () Bool)

(assert (=> b!641257 m!615143))

(declare-fun m!615145 () Bool)

(assert (=> b!641255 m!615145))

(declare-fun m!615147 () Bool)

(assert (=> b!641255 m!615147))

(declare-fun m!615149 () Bool)

(assert (=> b!641255 m!615149))

(assert (=> b!641255 m!615141))

(declare-fun m!615151 () Bool)

(assert (=> b!641255 m!615151))

(assert (=> b!641255 m!615141))

(declare-fun m!615153 () Bool)

(assert (=> b!641255 m!615153))

(declare-fun m!615155 () Bool)

(assert (=> b!641255 m!615155))

(declare-fun m!615157 () Bool)

(assert (=> b!641255 m!615157))

(declare-fun m!615159 () Bool)

(assert (=> b!641258 m!615159))

(assert (=> b!641270 m!615141))

(declare-fun m!615161 () Bool)

(assert (=> b!641262 m!615161))

(declare-fun m!615163 () Bool)

(assert (=> b!641276 m!615163))

(assert (=> b!641275 m!615141))

(declare-fun m!615165 () Bool)

(assert (=> b!641275 m!615165))

(assert (=> b!641275 m!615141))

(declare-fun m!615167 () Bool)

(assert (=> b!641275 m!615167))

(declare-fun m!615169 () Bool)

(assert (=> b!641275 m!615169))

(declare-fun m!615171 () Bool)

(assert (=> b!641275 m!615171))

(declare-fun m!615173 () Bool)

(assert (=> b!641275 m!615173))

(assert (=> b!641275 m!615141))

(declare-fun m!615175 () Bool)

(assert (=> b!641275 m!615175))

(declare-fun m!615177 () Bool)

(assert (=> b!641260 m!615177))

(assert (=> b!641273 m!615141))

(assert (=> b!641273 m!615155))

(declare-fun m!615179 () Bool)

(assert (=> b!641273 m!615179))

(declare-fun m!615181 () Bool)

(assert (=> b!641259 m!615181))

(assert (=> b!641269 m!615141))

(assert (=> b!641269 m!615141))

(declare-fun m!615183 () Bool)

(assert (=> b!641269 m!615183))

(assert (=> b!641274 m!615155))

(declare-fun m!615185 () Bool)

(assert (=> b!641274 m!615185))

(assert (=> b!641272 m!615141))

(assert (=> b!641272 m!615141))

(declare-fun m!615187 () Bool)

(assert (=> b!641272 m!615187))

(declare-fun m!615189 () Bool)

(assert (=> b!641256 m!615189))

(declare-fun m!615191 () Bool)

(assert (=> start!58038 m!615191))

(declare-fun m!615193 () Bool)

(assert (=> start!58038 m!615193))

(declare-fun m!615195 () Bool)

(assert (=> b!641268 m!615195))

(assert (=> b!641264 m!615141))

(assert (=> b!641264 m!615141))

(declare-fun m!615197 () Bool)

(assert (=> b!641264 m!615197))

(push 1)

(assert (not b!641262))

(assert (not b!641272))

(assert (not b!641257))

(assert (not b!641260))

(assert (not b!641258))

(assert (not b!641264))

(assert (not b!641265))

(assert (not b!641259))

(assert (not b!641275))

(assert (not b!641256))

(assert (not b!641276))

(assert (not b!641255))

(assert (not b!641269))

(assert (not b!641263))

(assert (not start!58038))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!641471 () Bool)

(declare-fun e!367316 () Bool)

(declare-fun e!367315 () Bool)

(assert (=> b!641471 (= e!367316 e!367315)))

(declare-fun res!415585 () Bool)

(assert (=> b!641471 (=> (not res!415585) (not e!367315))))

(declare-fun e!367314 () Bool)

(assert (=> b!641471 (= res!415585 (not e!367314))))

(declare-fun res!415586 () Bool)

(assert (=> b!641471 (=> (not res!415586) (not e!367314))))

(assert (=> b!641471 (= res!415586 (validKeyInArray!0 (select (arr!18384 a!2986) #b00000000000000000000000000000000)))))

(declare-fun bm!33536 () Bool)

(declare-fun call!33539 () Bool)

(declare-fun c!73310 () Bool)

(assert (=> bm!33536 (= call!33539 (arrayNoDuplicates!0 a!2986 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!73310 (Cons!12474 (select (arr!18384 a!2986) #b00000000000000000000000000000000) Nil!12475) Nil!12475)))))

(declare-fun b!641472 () Bool)

(declare-fun e!367313 () Bool)

(assert (=> b!641472 (= e!367313 call!33539)))

(declare-fun b!641473 () Bool)

(assert (=> b!641473 (= e!367315 e!367313)))

(assert (=> b!641473 (= c!73310 (validKeyInArray!0 (select (arr!18384 a!2986) #b00000000000000000000000000000000)))))

(declare-fun d!90519 () Bool)

(declare-fun res!415587 () Bool)

(assert (=> d!90519 (=> res!415587 e!367316)))

(assert (=> d!90519 (= res!415587 (bvsge #b00000000000000000000000000000000 (size!18748 a!2986)))))

(assert (=> d!90519 (= (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12475) e!367316)))

(declare-fun b!641474 () Bool)

(assert (=> b!641474 (= e!367314 (contains!3132 Nil!12475 (select (arr!18384 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!641475 () Bool)

(assert (=> b!641475 (= e!367313 call!33539)))

(assert (= (and d!90519 (not res!415587)) b!641471))

(assert (= (and b!641471 res!415586) b!641474))

(assert (= (and b!641471 res!415585) b!641473))

(assert (= (and b!641473 c!73310) b!641472))

(assert (= (and b!641473 (not c!73310)) b!641475))

(assert (= (or b!641472 b!641475) bm!33536))

(declare-fun m!615363 () Bool)

(assert (=> b!641471 m!615363))

(assert (=> b!641471 m!615363))

(declare-fun m!615365 () Bool)

(assert (=> b!641471 m!615365))

(assert (=> bm!33536 m!615363))

(declare-fun m!615367 () Bool)

(assert (=> bm!33536 m!615367))

(assert (=> b!641473 m!615363))

(assert (=> b!641473 m!615363))

(assert (=> b!641473 m!615365))

(assert (=> b!641474 m!615363))

(assert (=> b!641474 m!615363))

(declare-fun m!615369 () Bool)

(assert (=> b!641474 m!615369))

(assert (=> b!641260 d!90519))

(declare-fun d!90525 () Bool)

(assert (=> d!90525 (= (validKeyInArray!0 (select (arr!18384 a!2986) j!136)) (and (not (= (select (arr!18384 a!2986) j!136) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!18384 a!2986) j!136) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!641269 d!90525))

(declare-fun d!90527 () Bool)

(assert (=> d!90527 (= (validKeyInArray!0 k!1786) (and (not (= k!1786 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1786 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!641259 d!90527))

(declare-fun d!90529 () Bool)

(declare-fun res!415592 () Bool)

(declare-fun e!367321 () Bool)

(assert (=> d!90529 (=> res!415592 e!367321)))

(assert (=> d!90529 (= res!415592 (= (select (arr!18384 a!2986) #b00000000000000000000000000000000) k!1786))))

(assert (=> d!90529 (= (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000) e!367321)))

(declare-fun b!641480 () Bool)

(declare-fun e!367322 () Bool)

(assert (=> b!641480 (= e!367321 e!367322)))

(declare-fun res!415593 () Bool)

(assert (=> b!641480 (=> (not res!415593) (not e!367322))))

(assert (=> b!641480 (= res!415593 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!18748 a!2986)))))

(declare-fun b!641481 () Bool)

(assert (=> b!641481 (= e!367322 (arrayContainsKey!0 a!2986 k!1786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!90529 (not res!415592)) b!641480))

(assert (= (and b!641480 res!415593) b!641481))

(assert (=> d!90529 m!615363))

(declare-fun m!615371 () Bool)

(assert (=> b!641481 m!615371))

(assert (=> b!641263 d!90529))

(declare-fun d!90531 () Bool)

(declare-fun res!415594 () Bool)

(declare-fun e!367323 () Bool)

(assert (=> d!90531 (=> res!415594 e!367323)))

(assert (=> d!90531 (= res!415594 (= (select (arr!18384 lt!296931) index!984) (select (arr!18384 a!2986) j!136)))))

(assert (=> d!90531 (= (arrayContainsKey!0 lt!296931 (select (arr!18384 a!2986) j!136) index!984) e!367323)))

(declare-fun b!641482 () Bool)

(declare-fun e!367324 () Bool)

(assert (=> b!641482 (= e!367323 e!367324)))

(declare-fun res!415595 () Bool)

(assert (=> b!641482 (=> (not res!415595) (not e!367324))))

(assert (=> b!641482 (= res!415595 (bvslt (bvadd index!984 #b00000000000000000000000000000001) (size!18748 lt!296931)))))

(declare-fun b!641483 () Bool)

(assert (=> b!641483 (= e!367324 (arrayContainsKey!0 lt!296931 (select (arr!18384 a!2986) j!136) (bvadd index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!90531 (not res!415594)) b!641482))

(assert (= (and b!641482 res!415595) b!641483))

(declare-fun m!615373 () Bool)

(assert (=> d!90531 m!615373))

(assert (=> b!641483 m!615141))

(declare-fun m!615375 () Bool)

(assert (=> b!641483 m!615375))

(assert (=> b!641272 d!90531))

(declare-fun b!641516 () Bool)

(declare-fun e!367347 () Bool)

(declare-fun call!33542 () Bool)

(assert (=> b!641516 (= e!367347 call!33542)))

(declare-fun b!641517 () Bool)

(declare-fun e!367348 () Bool)

(declare-fun e!367346 () Bool)

(assert (=> b!641517 (= e!367348 e!367346)))

(declare-fun c!73322 () Bool)

(assert (=> b!641517 (= c!73322 (validKeyInArray!0 (select (arr!18384 a!2986) #b00000000000000000000000000000000)))))

(declare-fun bm!33539 () Bool)

(assert (=> bm!33539 (= call!33542 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2986 mask!3053))))

(declare-fun b!641518 () Bool)

(assert (=> b!641518 (= e!367346 call!33542)))

(declare-fun d!90533 () Bool)

(declare-fun res!415604 () Bool)

(assert (=> d!90533 (=> res!415604 e!367348)))

(assert (=> d!90533 (= res!415604 (bvsge #b00000000000000000000000000000000 (size!18748 a!2986)))))

(assert (=> d!90533 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053) e!367348)))

(declare-fun b!641519 () Bool)

(assert (=> b!641519 (= e!367346 e!367347)))

(declare-fun lt!297058 () (_ BitVec 64))

(assert (=> b!641519 (= lt!297058 (select (arr!18384 a!2986) #b00000000000000000000000000000000))))

(declare-fun lt!297057 () Unit!21682)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38340 (_ BitVec 64) (_ BitVec 32)) Unit!21682)

(assert (=> b!641519 (= lt!297057 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2986 lt!297058 #b00000000000000000000000000000000))))

(assert (=> b!641519 (arrayContainsKey!0 a!2986 lt!297058 #b00000000000000000000000000000000)))

(declare-fun lt!297055 () Unit!21682)

(assert (=> b!641519 (= lt!297055 lt!297057)))

(declare-fun res!415605 () Bool)

(assert (=> b!641519 (= res!415605 (= (seekEntryOrOpen!0 (select (arr!18384 a!2986) #b00000000000000000000000000000000) a!2986 mask!3053) (Found!6831 #b00000000000000000000000000000000)))))

(assert (=> b!641519 (=> (not res!415605) (not e!367347))))

(assert (= (and d!90533 (not res!415604)) b!641517))

(assert (= (and b!641517 c!73322) b!641519))

(assert (= (and b!641517 (not c!73322)) b!641518))

(assert (= (and b!641519 res!415605) b!641516))

(assert (= (or b!641516 b!641518) bm!33539))

(assert (=> b!641517 m!615363))

(assert (=> b!641517 m!615363))

(assert (=> b!641517 m!615365))

(declare-fun m!615397 () Bool)

(assert (=> bm!33539 m!615397))

(assert (=> b!641519 m!615363))

(declare-fun m!615399 () Bool)

(assert (=> b!641519 m!615399))

(declare-fun m!615401 () Bool)

(assert (=> b!641519 m!615401))

(assert (=> b!641519 m!615363))

(declare-fun m!615403 () Bool)

(assert (=> b!641519 m!615403))

(assert (=> b!641262 d!90533))

(declare-fun b!641591 () Bool)

(declare-fun e!367393 () SeekEntryResult!6831)

(declare-fun e!367395 () SeekEntryResult!6831)

(assert (=> b!641591 (= e!367393 e!367395)))

(declare-fun lt!297092 () (_ BitVec 64))

(declare-fun lt!297094 () SeekEntryResult!6831)

(assert (=> b!641591 (= lt!297092 (select (arr!18384 a!2986) (index!29648 lt!297094)))))

(declare-fun c!73351 () Bool)

(assert (=> b!641591 (= c!73351 (= lt!297092 k!1786))))

(declare-fun b!641592 () Bool)

(assert (=> b!641592 (= e!367393 Undefined!6831)))

(declare-fun b!641593 () Bool)

(declare-fun e!367394 () SeekEntryResult!6831)

(assert (=> b!641593 (= e!367394 (MissingZero!6831 (index!29648 lt!297094)))))

(declare-fun d!90539 () Bool)

(declare-fun lt!297093 () SeekEntryResult!6831)

(assert (=> d!90539 (and (or (is-Undefined!6831 lt!297093) (not (is-Found!6831 lt!297093)) (and (bvsge (index!29647 lt!297093) #b00000000000000000000000000000000) (bvslt (index!29647 lt!297093) (size!18748 a!2986)))) (or (is-Undefined!6831 lt!297093) (is-Found!6831 lt!297093) (not (is-MissingZero!6831 lt!297093)) (and (bvsge (index!29646 lt!297093) #b00000000000000000000000000000000) (bvslt (index!29646 lt!297093) (size!18748 a!2986)))) (or (is-Undefined!6831 lt!297093) (is-Found!6831 lt!297093) (is-MissingZero!6831 lt!297093) (not (is-MissingVacant!6831 lt!297093)) (and (bvsge (index!29649 lt!297093) #b00000000000000000000000000000000) (bvslt (index!29649 lt!297093) (size!18748 a!2986)))) (or (is-Undefined!6831 lt!297093) (ite (is-Found!6831 lt!297093) (= (select (arr!18384 a!2986) (index!29647 lt!297093)) k!1786) (ite (is-MissingZero!6831 lt!297093) (= (select (arr!18384 a!2986) (index!29646 lt!297093)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!6831 lt!297093) (= (select (arr!18384 a!2986) (index!29649 lt!297093)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!90539 (= lt!297093 e!367393)))

(declare-fun c!73350 () Bool)

(assert (=> d!90539 (= c!73350 (and (is-Intermediate!6831 lt!297094) (undefined!7643 lt!297094)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38340 (_ BitVec 32)) SeekEntryResult!6831)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!90539 (= lt!297094 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1786 mask!3053) k!1786 a!2986 mask!3053))))

(assert (=> d!90539 (validMask!0 mask!3053)))

(assert (=> d!90539 (= (seekEntryOrOpen!0 k!1786 a!2986 mask!3053) lt!297093)))

(declare-fun b!641594 () Bool)

(assert (=> b!641594 (= e!367395 (Found!6831 (index!29648 lt!297094)))))

(declare-fun b!641595 () Bool)

(assert (=> b!641595 (= e!367394 (seekKeyOrZeroReturnVacant!0 (x!58437 lt!297094) (index!29648 lt!297094) (index!29648 lt!297094) k!1786 a!2986 mask!3053))))

(declare-fun b!641596 () Bool)

(declare-fun c!73352 () Bool)

(assert (=> b!641596 (= c!73352 (= lt!297092 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!641596 (= e!367395 e!367394)))

(assert (= (and d!90539 c!73350) b!641592))

(assert (= (and d!90539 (not c!73350)) b!641591))

(assert (= (and b!641591 c!73351) b!641594))

(assert (= (and b!641591 (not c!73351)) b!641596))

(assert (= (and b!641596 c!73352) b!641593))

(assert (= (and b!641596 (not c!73352)) b!641595))

(declare-fun m!615469 () Bool)

(assert (=> b!641591 m!615469))

(declare-fun m!615471 () Bool)

(assert (=> d!90539 m!615471))

(declare-fun m!615473 () Bool)

(assert (=> d!90539 m!615473))

(assert (=> d!90539 m!615191))

(declare-fun m!615475 () Bool)

(assert (=> d!90539 m!615475))

(assert (=> d!90539 m!615475))

(declare-fun m!615477 () Bool)

(assert (=> d!90539 m!615477))

(declare-fun m!615479 () Bool)

(assert (=> d!90539 m!615479))

(declare-fun m!615481 () Bool)

(assert (=> b!641595 m!615481))

(assert (=> b!641265 d!90539))

(declare-fun d!90561 () Bool)

(declare-fun res!415629 () Bool)

(declare-fun e!367400 () Bool)

(assert (=> d!90561 (=> res!415629 e!367400)))

(assert (=> d!90561 (= res!415629 (is-Nil!12475 Nil!12475))))

(assert (=> d!90561 (= (noDuplicate!403 Nil!12475) e!367400)))

(declare-fun b!641601 () Bool)

(declare-fun e!367401 () Bool)

(assert (=> b!641601 (= e!367400 e!367401)))

(declare-fun res!415630 () Bool)

(assert (=> b!641601 (=> (not res!415630) (not e!367401))))

(assert (=> b!641601 (= res!415630 (not (contains!3132 (t!18714 Nil!12475) (h!13519 Nil!12475))))))

(declare-fun b!641602 () Bool)

(assert (=> b!641602 (= e!367401 (noDuplicate!403 (t!18714 Nil!12475)))))

(assert (= (and d!90561 (not res!415629)) b!641601))

(assert (= (and b!641601 res!415630) b!641602))

(declare-fun m!615485 () Bool)

(assert (=> b!641601 m!615485))

(declare-fun m!615487 () Bool)

(assert (=> b!641602 m!615487))

(assert (=> b!641276 d!90561))

(declare-fun b!641648 () Bool)

(declare-fun e!367437 () SeekEntryResult!6831)

(assert (=> b!641648 (= e!367437 (Found!6831 index!984))))

(declare-fun b!641649 () Bool)

(declare-fun e!367438 () SeekEntryResult!6831)

(assert (=> b!641649 (= e!367438 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 lt!296938 lt!296931 mask!3053))))

(declare-fun lt!297111 () SeekEntryResult!6831)

(declare-fun d!90565 () Bool)

(assert (=> d!90565 (and (or (is-Undefined!6831 lt!297111) (not (is-Found!6831 lt!297111)) (and (bvsge (index!29647 lt!297111) #b00000000000000000000000000000000) (bvslt (index!29647 lt!297111) (size!18748 lt!296931)))) (or (is-Undefined!6831 lt!297111) (is-Found!6831 lt!297111) (not (is-MissingVacant!6831 lt!297111)) (not (= (index!29649 lt!297111) vacantSpotIndex!68)) (and (bvsge (index!29649 lt!297111) #b00000000000000000000000000000000) (bvslt (index!29649 lt!297111) (size!18748 lt!296931)))) (or (is-Undefined!6831 lt!297111) (ite (is-Found!6831 lt!297111) (= (select (arr!18384 lt!296931) (index!29647 lt!297111)) lt!296938) (and (is-MissingVacant!6831 lt!297111) (= (index!29649 lt!297111) vacantSpotIndex!68) (= (select (arr!18384 lt!296931) (index!29649 lt!297111)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!367436 () SeekEntryResult!6831)

(assert (=> d!90565 (= lt!297111 e!367436)))

(declare-fun c!73365 () Bool)

(assert (=> d!90565 (= c!73365 (bvsge x!910 #b01111111111111111111111111111110))))

(declare-fun lt!297112 () (_ BitVec 64))

(assert (=> d!90565 (= lt!297112 (select (arr!18384 lt!296931) index!984))))

(assert (=> d!90565 (validMask!0 mask!3053)))

(assert (=> d!90565 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!296938 lt!296931 mask!3053) lt!297111)))

(declare-fun b!641650 () Bool)

(declare-fun c!73366 () Bool)

(assert (=> b!641650 (= c!73366 (= lt!297112 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!641650 (= e!367437 e!367438)))

(declare-fun b!641651 () Bool)

(assert (=> b!641651 (= e!367436 Undefined!6831)))

(declare-fun b!641652 () Bool)

(assert (=> b!641652 (= e!367436 e!367437)))

(declare-fun c!73364 () Bool)

(assert (=> b!641652 (= c!73364 (= lt!297112 lt!296938))))

(declare-fun b!641653 () Bool)

(assert (=> b!641653 (= e!367438 (MissingVacant!6831 vacantSpotIndex!68))))

(assert (= (and d!90565 c!73365) b!641651))

(assert (= (and d!90565 (not c!73365)) b!641652))

(assert (= (and b!641652 c!73364) b!641648))

(assert (= (and b!641652 (not c!73364)) b!641650))

(assert (= (and b!641650 c!73366) b!641653))

(assert (= (and b!641650 (not c!73366)) b!641649))

(assert (=> b!641649 m!615145))

(assert (=> b!641649 m!615145))

(declare-fun m!615521 () Bool)

(assert (=> b!641649 m!615521))

(declare-fun m!615523 () Bool)

(assert (=> d!90565 m!615523))

(declare-fun m!615525 () Bool)

(assert (=> d!90565 m!615525))

(assert (=> d!90565 m!615373))

(assert (=> d!90565 m!615191))

(assert (=> b!641255 d!90565))

(declare-fun b!641654 () Bool)

(declare-fun e!367440 () SeekEntryResult!6831)

(assert (=> b!641654 (= e!367440 (Found!6831 lt!296936))))

(declare-fun e!367441 () SeekEntryResult!6831)

(declare-fun b!641655 () Bool)

(assert (=> b!641655 (= e!367441 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!296936 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 (select (arr!18384 a!2986) j!136) a!2986 mask!3053))))

(declare-fun lt!297113 () SeekEntryResult!6831)

(declare-fun d!90581 () Bool)

(assert (=> d!90581 (and (or (is-Undefined!6831 lt!297113) (not (is-Found!6831 lt!297113)) (and (bvsge (index!29647 lt!297113) #b00000000000000000000000000000000) (bvslt (index!29647 lt!297113) (size!18748 a!2986)))) (or (is-Undefined!6831 lt!297113) (is-Found!6831 lt!297113) (not (is-MissingVacant!6831 lt!297113)) (not (= (index!29649 lt!297113) vacantSpotIndex!68)) (and (bvsge (index!29649 lt!297113) #b00000000000000000000000000000000) (bvslt (index!29649 lt!297113) (size!18748 a!2986)))) (or (is-Undefined!6831 lt!297113) (ite (is-Found!6831 lt!297113) (= (select (arr!18384 a!2986) (index!29647 lt!297113)) (select (arr!18384 a!2986) j!136)) (and (is-MissingVacant!6831 lt!297113) (= (index!29649 lt!297113) vacantSpotIndex!68) (= (select (arr!18384 a!2986) (index!29649 lt!297113)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!367439 () SeekEntryResult!6831)

(assert (=> d!90581 (= lt!297113 e!367439)))

(declare-fun c!73368 () Bool)

(assert (=> d!90581 (= c!73368 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(declare-fun lt!297114 () (_ BitVec 64))

(assert (=> d!90581 (= lt!297114 (select (arr!18384 a!2986) lt!296936))))

(assert (=> d!90581 (validMask!0 mask!3053)))

(assert (=> d!90581 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!296936 vacantSpotIndex!68 (select (arr!18384 a!2986) j!136) a!2986 mask!3053) lt!297113)))

(declare-fun b!641656 () Bool)

(declare-fun c!73369 () Bool)

(assert (=> b!641656 (= c!73369 (= lt!297114 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!641656 (= e!367440 e!367441)))

(declare-fun b!641657 () Bool)

(assert (=> b!641657 (= e!367439 Undefined!6831)))

(declare-fun b!641658 () Bool)

(assert (=> b!641658 (= e!367439 e!367440)))

(declare-fun c!73367 () Bool)

(assert (=> b!641658 (= c!73367 (= lt!297114 (select (arr!18384 a!2986) j!136)))))

(declare-fun b!641659 () Bool)

(assert (=> b!641659 (= e!367441 (MissingVacant!6831 vacantSpotIndex!68))))

(assert (= (and d!90581 c!73368) b!641657))

(assert (= (and d!90581 (not c!73368)) b!641658))

(assert (= (and b!641658 c!73367) b!641654))

(assert (= (and b!641658 (not c!73367)) b!641656))

(assert (= (and b!641656 c!73369) b!641659))

(assert (= (and b!641656 (not c!73369)) b!641655))

(declare-fun m!615527 () Bool)

(assert (=> b!641655 m!615527))

(assert (=> b!641655 m!615527))

(assert (=> b!641655 m!615141))

(declare-fun m!615529 () Bool)

(assert (=> b!641655 m!615529))

(declare-fun m!615531 () Bool)

(assert (=> d!90581 m!615531))

(declare-fun m!615533 () Bool)

(assert (=> d!90581 m!615533))

(declare-fun m!615535 () Bool)

(assert (=> d!90581 m!615535))

(assert (=> d!90581 m!615191))

(assert (=> b!641255 d!90581))

(declare-fun d!90583 () Bool)

(declare-fun lt!297121 () (_ BitVec 32))

(assert (=> d!90583 (and (bvsge lt!297121 #b00000000000000000000000000000000) (bvslt lt!297121 (bvadd mask!3053 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!90583 (= lt!297121 (choose!52 index!984 x!910 mask!3053))))

(assert (=> d!90583 (validMask!0 mask!3053)))

(assert (=> d!90583 (= (nextIndex!0 index!984 x!910 mask!3053) lt!297121)))

(declare-fun bs!19205 () Bool)

(assert (= bs!19205 d!90583))

(declare-fun m!615537 () Bool)

(assert (=> bs!19205 m!615537))

(assert (=> bs!19205 m!615191))

(assert (=> b!641255 d!90583))

(declare-fun d!90585 () Bool)

(declare-fun e!367464 () Bool)

(assert (=> d!90585 e!367464))

(declare-fun res!415658 () Bool)

(assert (=> d!90585 (=> (not res!415658) (not e!367464))))

(assert (=> d!90585 (= res!415658 (and (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18748 a!2986)) (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18748 a!2986)))) (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18748 a!2986)) (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18748 a!2986)))) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18748 a!2986))))))

(declare-fun lt!297135 () Unit!21682)

(declare-fun choose!9 (array!38340 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21682)

(assert (=> d!90585 (= lt!297135 (choose!9 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!296936 vacantSpotIndex!68 mask!3053))))

(assert (=> d!90585 (validMask!0 mask!3053)))

(assert (=> d!90585 (= (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!296936 vacantSpotIndex!68 mask!3053) lt!297135)))

(declare-fun b!641700 () Bool)

(assert (=> b!641700 (= e!367464 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!296936 vacantSpotIndex!68 (select (arr!18384 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!296936 vacantSpotIndex!68 (select (store (arr!18384 a!2986) i!1108 k!1786) j!136) (array!38341 (store (arr!18384 a!2986) i!1108 k!1786) (size!18748 a!2986)) mask!3053)))))

(assert (= (and d!90585 res!415658) b!641700))

(declare-fun m!615575 () Bool)

(assert (=> d!90585 m!615575))

(assert (=> d!90585 m!615191))

(assert (=> b!641700 m!615155))

(assert (=> b!641700 m!615147))

(declare-fun m!615577 () Bool)

(assert (=> b!641700 m!615577))

(assert (=> b!641700 m!615147))

(assert (=> b!641700 m!615141))

(assert (=> b!641700 m!615151))

(assert (=> b!641700 m!615141))

(assert (=> b!641255 d!90585))

(declare-fun b!641705 () Bool)

(declare-fun e!367470 () SeekEntryResult!6831)

(assert (=> b!641705 (= e!367470 (Found!6831 lt!296936))))

(declare-fun b!641706 () Bool)

(declare-fun e!367471 () SeekEntryResult!6831)

(assert (=> b!641706 (= e!367471 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!296936 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 lt!296938 lt!296931 mask!3053))))

(declare-fun lt!297138 () SeekEntryResult!6831)

(declare-fun d!90601 () Bool)

(assert (=> d!90601 (and (or (is-Undefined!6831 lt!297138) (not (is-Found!6831 lt!297138)) (and (bvsge (index!29647 lt!297138) #b00000000000000000000000000000000) (bvslt (index!29647 lt!297138) (size!18748 lt!296931)))) (or (is-Undefined!6831 lt!297138) (is-Found!6831 lt!297138) (not (is-MissingVacant!6831 lt!297138)) (not (= (index!29649 lt!297138) vacantSpotIndex!68)) (and (bvsge (index!29649 lt!297138) #b00000000000000000000000000000000) (bvslt (index!29649 lt!297138) (size!18748 lt!296931)))) (or (is-Undefined!6831 lt!297138) (ite (is-Found!6831 lt!297138) (= (select (arr!18384 lt!296931) (index!29647 lt!297138)) lt!296938) (and (is-MissingVacant!6831 lt!297138) (= (index!29649 lt!297138) vacantSpotIndex!68) (= (select (arr!18384 lt!296931) (index!29649 lt!297138)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!367469 () SeekEntryResult!6831)

(assert (=> d!90601 (= lt!297138 e!367469)))

(declare-fun c!73389 () Bool)

(assert (=> d!90601 (= c!73389 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(declare-fun lt!297139 () (_ BitVec 64))

(assert (=> d!90601 (= lt!297139 (select (arr!18384 lt!296931) lt!296936))))

(assert (=> d!90601 (validMask!0 mask!3053)))

(assert (=> d!90601 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!296936 vacantSpotIndex!68 lt!296938 lt!296931 mask!3053) lt!297138)))

(declare-fun b!641707 () Bool)

(declare-fun c!73390 () Bool)

(assert (=> b!641707 (= c!73390 (= lt!297139 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!641707 (= e!367470 e!367471)))

(declare-fun b!641708 () Bool)

(assert (=> b!641708 (= e!367469 Undefined!6831)))

(declare-fun b!641709 () Bool)

(assert (=> b!641709 (= e!367469 e!367470)))

(declare-fun c!73388 () Bool)

(assert (=> b!641709 (= c!73388 (= lt!297139 lt!296938))))

(declare-fun b!641710 () Bool)

(assert (=> b!641710 (= e!367471 (MissingVacant!6831 vacantSpotIndex!68))))

(assert (= (and d!90601 c!73389) b!641708))

(assert (= (and d!90601 (not c!73389)) b!641709))

(assert (= (and b!641709 c!73388) b!641705))

(assert (= (and b!641709 (not c!73388)) b!641707))

(assert (= (and b!641707 c!73390) b!641710))

(assert (= (and b!641707 (not c!73390)) b!641706))

(assert (=> b!641706 m!615527))

(assert (=> b!641706 m!615527))

(declare-fun m!615579 () Bool)

(assert (=> b!641706 m!615579))

(declare-fun m!615581 () Bool)

(assert (=> d!90601 m!615581))

(declare-fun m!615583 () Bool)

(assert (=> d!90601 m!615583))

(declare-fun m!615585 () Bool)

(assert (=> d!90601 m!615585))

(assert (=> d!90601 m!615191))

(assert (=> b!641255 d!90601))

(declare-fun d!90603 () Bool)

(declare-fun res!415663 () Bool)

(declare-fun e!367472 () Bool)

(assert (=> d!90603 (=> res!415663 e!367472)))

(assert (=> d!90603 (= res!415663 (= (select (arr!18384 lt!296931) j!136) (select (arr!18384 a!2986) j!136)))))

(assert (=> d!90603 (= (arrayContainsKey!0 lt!296931 (select (arr!18384 a!2986) j!136) j!136) e!367472)))

(declare-fun b!641711 () Bool)

(declare-fun e!367473 () Bool)

(assert (=> b!641711 (= e!367472 e!367473)))

(declare-fun res!415664 () Bool)

(assert (=> b!641711 (=> (not res!415664) (not e!367473))))

(assert (=> b!641711 (= res!415664 (bvslt (bvadd j!136 #b00000000000000000000000000000001) (size!18748 lt!296931)))))

(declare-fun b!641712 () Bool)

(assert (=> b!641712 (= e!367473 (arrayContainsKey!0 lt!296931 (select (arr!18384 a!2986) j!136) (bvadd j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!90603 (not res!415663)) b!641711))

(assert (= (and b!641711 res!415664) b!641712))

(declare-fun m!615587 () Bool)

(assert (=> d!90603 m!615587))

(assert (=> b!641712 m!615141))

(declare-fun m!615589 () Bool)

(assert (=> b!641712 m!615589))

(assert (=> b!641264 d!90603))

(declare-fun b!641715 () Bool)

(declare-fun e!367479 () Bool)

(declare-fun e!367478 () Bool)

(assert (=> b!641715 (= e!367479 e!367478)))

(declare-fun res!415667 () Bool)

(assert (=> b!641715 (=> (not res!415667) (not e!367478))))

(declare-fun e!367477 () Bool)

(assert (=> b!641715 (= res!415667 (not e!367477))))

(declare-fun res!415668 () Bool)

(assert (=> b!641715 (=> (not res!415668) (not e!367477))))

(assert (=> b!641715 (= res!415668 (validKeyInArray!0 (select (arr!18384 lt!296931) #b00000000000000000000000000000000)))))

(declare-fun bm!33548 () Bool)

(declare-fun call!33551 () Bool)

(declare-fun c!73391 () Bool)

(assert (=> bm!33548 (= call!33551 (arrayNoDuplicates!0 lt!296931 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!73391 (Cons!12474 (select (arr!18384 lt!296931) #b00000000000000000000000000000000) Nil!12475) Nil!12475)))))

(declare-fun b!641716 () Bool)

(declare-fun e!367476 () Bool)

(assert (=> b!641716 (= e!367476 call!33551)))

(declare-fun b!641717 () Bool)

(assert (=> b!641717 (= e!367478 e!367476)))

(assert (=> b!641717 (= c!73391 (validKeyInArray!0 (select (arr!18384 lt!296931) #b00000000000000000000000000000000)))))

(declare-fun d!90605 () Bool)

(declare-fun res!415669 () Bool)

(assert (=> d!90605 (=> res!415669 e!367479)))

(assert (=> d!90605 (= res!415669 (bvsge #b00000000000000000000000000000000 (size!18748 lt!296931)))))

(assert (=> d!90605 (= (arrayNoDuplicates!0 lt!296931 #b00000000000000000000000000000000 Nil!12475) e!367479)))

(declare-fun b!641718 () Bool)

(assert (=> b!641718 (= e!367477 (contains!3132 Nil!12475 (select (arr!18384 lt!296931) #b00000000000000000000000000000000)))))

(declare-fun b!641719 () Bool)

(assert (=> b!641719 (= e!367476 call!33551)))

(assert (= (and d!90605 (not res!415669)) b!641715))

(assert (= (and b!641715 res!415668) b!641718))

(assert (= (and b!641715 res!415667) b!641717))

(assert (= (and b!641717 c!73391) b!641716))

(assert (= (and b!641717 (not c!73391)) b!641719))

(assert (= (or b!641716 b!641719) bm!33548))

(declare-fun m!615597 () Bool)

(assert (=> b!641715 m!615597))

(assert (=> b!641715 m!615597))

(declare-fun m!615601 () Bool)

(assert (=> b!641715 m!615601))

(assert (=> bm!33548 m!615597))

(declare-fun m!615603 () Bool)

(assert (=> bm!33548 m!615603))

(assert (=> b!641717 m!615597))

(assert (=> b!641717 m!615597))

(assert (=> b!641717 m!615601))

(assert (=> b!641718 m!615597))

(assert (=> b!641718 m!615597))

(declare-fun m!615605 () Bool)

(assert (=> b!641718 m!615605))

(assert (=> b!641275 d!90605))

(declare-fun b!641724 () Bool)

(declare-fun e!367487 () Bool)

(declare-fun e!367486 () Bool)

(assert (=> b!641724 (= e!367487 e!367486)))

(declare-fun res!415674 () Bool)

(assert (=> b!641724 (=> (not res!415674) (not e!367486))))

(declare-fun e!367485 () Bool)

(assert (=> b!641724 (= res!415674 (not e!367485))))

(declare-fun res!415675 () Bool)

(assert (=> b!641724 (=> (not res!415675) (not e!367485))))

(assert (=> b!641724 (= res!415675 (validKeyInArray!0 (select (arr!18384 lt!296931) j!136)))))

(declare-fun c!73392 () Bool)

(declare-fun call!33552 () Bool)

(declare-fun bm!33549 () Bool)

(assert (=> bm!33549 (= call!33552 (arrayNoDuplicates!0 lt!296931 (bvadd j!136 #b00000000000000000000000000000001) (ite c!73392 (Cons!12474 (select (arr!18384 lt!296931) j!136) Nil!12475) Nil!12475)))))

(declare-fun b!641725 () Bool)

(declare-fun e!367484 () Bool)

(assert (=> b!641725 (= e!367484 call!33552)))

(declare-fun b!641726 () Bool)

(assert (=> b!641726 (= e!367486 e!367484)))

