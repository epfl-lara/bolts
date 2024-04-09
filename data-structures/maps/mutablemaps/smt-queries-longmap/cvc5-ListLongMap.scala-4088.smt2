; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56034 () Bool)

(assert start!56034)

(declare-fun b!616065 () Bool)

(declare-fun e!353244 () Bool)

(declare-fun e!353249 () Bool)

(assert (=> b!616065 (= e!353244 e!353249)))

(declare-fun res!396945 () Bool)

(assert (=> b!616065 (=> (not res!396945) (not e!353249))))

(declare-datatypes ((SeekEntryResult!6423 0))(
  ( (MissingZero!6423 (index!27975 (_ BitVec 32))) (Found!6423 (index!27976 (_ BitVec 32))) (Intermediate!6423 (undefined!7235 Bool) (index!27977 (_ BitVec 32)) (x!56800 (_ BitVec 32))) (Undefined!6423) (MissingVacant!6423 (index!27978 (_ BitVec 32))) )
))
(declare-fun lt!283347 () SeekEntryResult!6423)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!616065 (= res!396945 (or (= lt!283347 (MissingZero!6423 i!1108)) (= lt!283347 (MissingVacant!6423 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-datatypes ((array!37467 0))(
  ( (array!37468 (arr!17976 (Array (_ BitVec 32) (_ BitVec 64))) (size!18340 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37467)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37467 (_ BitVec 32)) SeekEntryResult!6423)

(assert (=> b!616065 (= lt!283347 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!616066 () Bool)

(declare-fun e!353243 () Bool)

(declare-fun lt!283338 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!616066 (= e!353243 (validKeyInArray!0 lt!283338))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun res!396950 () Bool)

(declare-fun lt!283351 () array!37467)

(declare-fun b!616067 () Bool)

(declare-fun arrayContainsKey!0 (array!37467 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!616067 (= res!396950 (arrayContainsKey!0 lt!283351 (select (arr!17976 a!2986) j!136) j!136))))

(declare-fun e!353241 () Bool)

(assert (=> b!616067 (=> (not res!396950) (not e!353241))))

(declare-fun e!353240 () Bool)

(assert (=> b!616067 (= e!353240 e!353241)))

(declare-fun b!616068 () Bool)

(declare-datatypes ((Unit!20050 0))(
  ( (Unit!20051) )
))
(declare-fun e!353238 () Unit!20050)

(declare-fun Unit!20052 () Unit!20050)

(assert (=> b!616068 (= e!353238 Unit!20052)))

(declare-fun res!396934 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!616068 (= res!396934 (= (select (store (arr!17976 a!2986) i!1108 k!1786) index!984) (select (arr!17976 a!2986) j!136)))))

(declare-fun e!353237 () Bool)

(assert (=> b!616068 (=> (not res!396934) (not e!353237))))

(assert (=> b!616068 e!353237))

(declare-fun c!69934 () Bool)

(assert (=> b!616068 (= c!69934 (bvslt j!136 index!984))))

(declare-fun lt!283354 () Unit!20050)

(declare-fun e!353248 () Unit!20050)

(assert (=> b!616068 (= lt!283354 e!353248)))

(declare-fun c!69935 () Bool)

(assert (=> b!616068 (= c!69935 (bvslt index!984 j!136))))

(declare-fun lt!283339 () Unit!20050)

(declare-fun e!353242 () Unit!20050)

(assert (=> b!616068 (= lt!283339 e!353242)))

(assert (=> b!616068 false))

(declare-fun b!616069 () Bool)

(declare-fun res!396938 () Bool)

(assert (=> b!616069 (=> (not res!396938) (not e!353249))))

(declare-datatypes ((List!12070 0))(
  ( (Nil!12067) (Cons!12066 (h!13111 (_ BitVec 64)) (t!18306 List!12070)) )
))
(declare-fun arrayNoDuplicates!0 (array!37467 (_ BitVec 32) List!12070) Bool)

(assert (=> b!616069 (= res!396938 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12067))))

(declare-fun b!616070 () Bool)

(assert (=> b!616070 (= e!353241 (arrayContainsKey!0 lt!283351 (select (arr!17976 a!2986) j!136) index!984))))

(declare-fun b!616071 () Bool)

(declare-fun res!396940 () Bool)

(assert (=> b!616071 (=> (not res!396940) (not e!353244))))

(assert (=> b!616071 (= res!396940 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!616072 () Bool)

(declare-fun res!396947 () Bool)

(assert (=> b!616072 (=> (not res!396947) (not e!353249))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!616072 (= res!396947 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17976 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!616073 () Bool)

(declare-fun e!353250 () Bool)

(assert (=> b!616073 (= e!353249 e!353250)))

(declare-fun res!396937 () Bool)

(assert (=> b!616073 (=> (not res!396937) (not e!353250))))

(assert (=> b!616073 (= res!396937 (= (select (store (arr!17976 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!616073 (= lt!283351 (array!37468 (store (arr!17976 a!2986) i!1108 k!1786) (size!18340 a!2986)))))

(declare-fun b!616074 () Bool)

(declare-fun e!353246 () Bool)

(declare-fun lt!283352 () SeekEntryResult!6423)

(declare-fun lt!283340 () SeekEntryResult!6423)

(assert (=> b!616074 (= e!353246 (= lt!283352 lt!283340))))

(declare-fun b!616075 () Bool)

(declare-fun res!396936 () Bool)

(assert (=> b!616075 (=> (not res!396936) (not e!353249))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37467 (_ BitVec 32)) Bool)

(assert (=> b!616075 (= res!396936 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!616076 () Bool)

(declare-fun Unit!20053 () Unit!20050)

(assert (=> b!616076 (= e!353242 Unit!20053)))

(declare-fun b!616077 () Bool)

(declare-fun res!396949 () Bool)

(assert (=> b!616077 (= res!396949 (bvsge j!136 index!984))))

(assert (=> b!616077 (=> res!396949 e!353240)))

(assert (=> b!616077 (= e!353237 e!353240)))

(declare-fun b!616078 () Bool)

(declare-fun Unit!20054 () Unit!20050)

(assert (=> b!616078 (= e!353238 Unit!20054)))

(declare-fun b!616079 () Bool)

(assert (=> b!616079 false))

(declare-fun lt!283353 () Unit!20050)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37467 (_ BitVec 64) (_ BitVec 32) List!12070) Unit!20050)

(assert (=> b!616079 (= lt!283353 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!283351 (select (arr!17976 a!2986) j!136) index!984 Nil!12067))))

(assert (=> b!616079 (arrayNoDuplicates!0 lt!283351 index!984 Nil!12067)))

(declare-fun lt!283345 () Unit!20050)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37467 (_ BitVec 32) (_ BitVec 32)) Unit!20050)

(assert (=> b!616079 (= lt!283345 (lemmaNoDuplicateFromThenFromBigger!0 lt!283351 #b00000000000000000000000000000000 index!984))))

(assert (=> b!616079 (arrayNoDuplicates!0 lt!283351 #b00000000000000000000000000000000 Nil!12067)))

(declare-fun lt!283348 () Unit!20050)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37467 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12070) Unit!20050)

(assert (=> b!616079 (= lt!283348 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12067))))

(assert (=> b!616079 (arrayContainsKey!0 lt!283351 (select (arr!17976 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!283343 () Unit!20050)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37467 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!20050)

(assert (=> b!616079 (= lt!283343 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!283351 (select (arr!17976 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!353239 () Bool)

(assert (=> b!616079 e!353239))

(declare-fun res!396943 () Bool)

(assert (=> b!616079 (=> (not res!396943) (not e!353239))))

(assert (=> b!616079 (= res!396943 (arrayContainsKey!0 lt!283351 (select (arr!17976 a!2986) j!136) j!136))))

(declare-fun Unit!20055 () Unit!20050)

(assert (=> b!616079 (= e!353242 Unit!20055)))

(declare-fun b!616080 () Bool)

(declare-fun res!396944 () Bool)

(assert (=> b!616080 (=> (not res!396944) (not e!353244))))

(assert (=> b!616080 (= res!396944 (and (= (size!18340 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18340 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18340 a!2986)) (not (= i!1108 j!136))))))

(declare-fun res!396942 () Bool)

(assert (=> start!56034 (=> (not res!396942) (not e!353244))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56034 (= res!396942 (validMask!0 mask!3053))))

(assert (=> start!56034 e!353244))

(assert (=> start!56034 true))

(declare-fun array_inv!13750 (array!37467) Bool)

(assert (=> start!56034 (array_inv!13750 a!2986)))

(declare-fun b!616064 () Bool)

(declare-fun e!353251 () Unit!20050)

(declare-fun Unit!20056 () Unit!20050)

(assert (=> b!616064 (= e!353251 Unit!20056)))

(declare-fun b!616081 () Bool)

(declare-fun Unit!20057 () Unit!20050)

(assert (=> b!616081 (= e!353248 Unit!20057)))

(declare-fun b!616082 () Bool)

(declare-fun Unit!20058 () Unit!20050)

(assert (=> b!616082 (= e!353251 Unit!20058)))

(assert (=> b!616082 false))

(declare-fun b!616083 () Bool)

(assert (=> b!616083 false))

(declare-fun lt!283349 () Unit!20050)

(assert (=> b!616083 (= lt!283349 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!283351 (select (arr!17976 a!2986) j!136) j!136 Nil!12067))))

(assert (=> b!616083 (arrayNoDuplicates!0 lt!283351 j!136 Nil!12067)))

(declare-fun lt!283341 () Unit!20050)

(assert (=> b!616083 (= lt!283341 (lemmaNoDuplicateFromThenFromBigger!0 lt!283351 #b00000000000000000000000000000000 j!136))))

(assert (=> b!616083 (arrayNoDuplicates!0 lt!283351 #b00000000000000000000000000000000 Nil!12067)))

(declare-fun lt!283355 () Unit!20050)

(assert (=> b!616083 (= lt!283355 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12067))))

(assert (=> b!616083 (arrayContainsKey!0 lt!283351 (select (arr!17976 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!283350 () Unit!20050)

(assert (=> b!616083 (= lt!283350 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!283351 (select (arr!17976 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!20059 () Unit!20050)

(assert (=> b!616083 (= e!353248 Unit!20059)))

(declare-fun b!616084 () Bool)

(assert (=> b!616084 (= e!353239 (arrayContainsKey!0 lt!283351 (select (arr!17976 a!2986) j!136) index!984))))

(declare-fun b!616085 () Bool)

(declare-fun res!396948 () Bool)

(assert (=> b!616085 (=> (not res!396948) (not e!353244))))

(assert (=> b!616085 (= res!396948 (validKeyInArray!0 k!1786))))

(declare-fun b!616086 () Bool)

(declare-fun e!353245 () Bool)

(assert (=> b!616086 (= e!353245 (not e!353243))))

(declare-fun res!396941 () Bool)

(assert (=> b!616086 (=> res!396941 e!353243)))

(assert (=> b!616086 (= res!396941 (bvslt mask!3053 #b00000000000000000000000000000000))))

(declare-fun lt!283337 () Unit!20050)

(assert (=> b!616086 (= lt!283337 e!353238)))

(declare-fun c!69932 () Bool)

(declare-fun lt!283356 () SeekEntryResult!6423)

(assert (=> b!616086 (= c!69932 (= lt!283356 (Found!6423 index!984)))))

(declare-fun lt!283346 () Unit!20050)

(assert (=> b!616086 (= lt!283346 e!353251)))

(declare-fun c!69933 () Bool)

(assert (=> b!616086 (= c!69933 (= lt!283356 Undefined!6423))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37467 (_ BitVec 32)) SeekEntryResult!6423)

(assert (=> b!616086 (= lt!283356 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!283338 lt!283351 mask!3053))))

(assert (=> b!616086 e!353246))

(declare-fun res!396935 () Bool)

(assert (=> b!616086 (=> (not res!396935) (not e!353246))))

(declare-fun lt!283342 () (_ BitVec 32))

(assert (=> b!616086 (= res!396935 (= lt!283340 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!283342 vacantSpotIndex!68 lt!283338 lt!283351 mask!3053)))))

(assert (=> b!616086 (= lt!283340 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!283342 vacantSpotIndex!68 (select (arr!17976 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!616086 (= lt!283338 (select (store (arr!17976 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!283344 () Unit!20050)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37467 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!20050)

(assert (=> b!616086 (= lt!283344 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!283342 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!616086 (= lt!283342 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!616087 () Bool)

(declare-fun res!396939 () Bool)

(assert (=> b!616087 (=> (not res!396939) (not e!353244))))

(assert (=> b!616087 (= res!396939 (validKeyInArray!0 (select (arr!17976 a!2986) j!136)))))

(declare-fun b!616088 () Bool)

(assert (=> b!616088 (= e!353250 e!353245)))

(declare-fun res!396946 () Bool)

(assert (=> b!616088 (=> (not res!396946) (not e!353245))))

(assert (=> b!616088 (= res!396946 (and (= lt!283352 (Found!6423 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17976 a!2986) index!984) (select (arr!17976 a!2986) j!136))) (not (= (select (arr!17976 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!616088 (= lt!283352 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17976 a!2986) j!136) a!2986 mask!3053))))

(assert (= (and start!56034 res!396942) b!616080))

(assert (= (and b!616080 res!396944) b!616087))

(assert (= (and b!616087 res!396939) b!616085))

(assert (= (and b!616085 res!396948) b!616071))

(assert (= (and b!616071 res!396940) b!616065))

(assert (= (and b!616065 res!396945) b!616075))

(assert (= (and b!616075 res!396936) b!616069))

(assert (= (and b!616069 res!396938) b!616072))

(assert (= (and b!616072 res!396947) b!616073))

(assert (= (and b!616073 res!396937) b!616088))

(assert (= (and b!616088 res!396946) b!616086))

(assert (= (and b!616086 res!396935) b!616074))

(assert (= (and b!616086 c!69933) b!616082))

(assert (= (and b!616086 (not c!69933)) b!616064))

(assert (= (and b!616086 c!69932) b!616068))

(assert (= (and b!616086 (not c!69932)) b!616078))

(assert (= (and b!616068 res!396934) b!616077))

(assert (= (and b!616077 (not res!396949)) b!616067))

(assert (= (and b!616067 res!396950) b!616070))

(assert (= (and b!616068 c!69934) b!616083))

(assert (= (and b!616068 (not c!69934)) b!616081))

(assert (= (and b!616068 c!69935) b!616079))

(assert (= (and b!616068 (not c!69935)) b!616076))

(assert (= (and b!616079 res!396943) b!616084))

(assert (= (and b!616086 (not res!396941)) b!616066))

(declare-fun m!592293 () Bool)

(assert (=> b!616085 m!592293))

(declare-fun m!592295 () Bool)

(assert (=> start!56034 m!592295))

(declare-fun m!592297 () Bool)

(assert (=> start!56034 m!592297))

(declare-fun m!592299 () Bool)

(assert (=> b!616071 m!592299))

(declare-fun m!592301 () Bool)

(assert (=> b!616073 m!592301))

(declare-fun m!592303 () Bool)

(assert (=> b!616073 m!592303))

(declare-fun m!592305 () Bool)

(assert (=> b!616067 m!592305))

(assert (=> b!616067 m!592305))

(declare-fun m!592307 () Bool)

(assert (=> b!616067 m!592307))

(declare-fun m!592309 () Bool)

(assert (=> b!616069 m!592309))

(declare-fun m!592311 () Bool)

(assert (=> b!616088 m!592311))

(assert (=> b!616088 m!592305))

(assert (=> b!616088 m!592305))

(declare-fun m!592313 () Bool)

(assert (=> b!616088 m!592313))

(assert (=> b!616070 m!592305))

(assert (=> b!616070 m!592305))

(declare-fun m!592315 () Bool)

(assert (=> b!616070 m!592315))

(assert (=> b!616084 m!592305))

(assert (=> b!616084 m!592305))

(assert (=> b!616084 m!592315))

(declare-fun m!592317 () Bool)

(assert (=> b!616065 m!592317))

(declare-fun m!592319 () Bool)

(assert (=> b!616072 m!592319))

(declare-fun m!592321 () Bool)

(assert (=> b!616066 m!592321))

(assert (=> b!616068 m!592301))

(declare-fun m!592323 () Bool)

(assert (=> b!616068 m!592323))

(assert (=> b!616068 m!592305))

(declare-fun m!592325 () Bool)

(assert (=> b!616086 m!592325))

(declare-fun m!592327 () Bool)

(assert (=> b!616086 m!592327))

(declare-fun m!592329 () Bool)

(assert (=> b!616086 m!592329))

(assert (=> b!616086 m!592301))

(assert (=> b!616086 m!592305))

(declare-fun m!592331 () Bool)

(assert (=> b!616086 m!592331))

(declare-fun m!592333 () Bool)

(assert (=> b!616086 m!592333))

(declare-fun m!592335 () Bool)

(assert (=> b!616086 m!592335))

(assert (=> b!616086 m!592305))

(declare-fun m!592337 () Bool)

(assert (=> b!616079 m!592337))

(assert (=> b!616079 m!592305))

(assert (=> b!616079 m!592307))

(declare-fun m!592339 () Bool)

(assert (=> b!616079 m!592339))

(assert (=> b!616079 m!592305))

(declare-fun m!592341 () Bool)

(assert (=> b!616079 m!592341))

(declare-fun m!592343 () Bool)

(assert (=> b!616079 m!592343))

(declare-fun m!592345 () Bool)

(assert (=> b!616079 m!592345))

(assert (=> b!616079 m!592305))

(assert (=> b!616079 m!592305))

(declare-fun m!592347 () Bool)

(assert (=> b!616079 m!592347))

(assert (=> b!616079 m!592305))

(declare-fun m!592349 () Bool)

(assert (=> b!616079 m!592349))

(declare-fun m!592351 () Bool)

(assert (=> b!616083 m!592351))

(assert (=> b!616083 m!592337))

(assert (=> b!616083 m!592305))

(declare-fun m!592353 () Bool)

(assert (=> b!616083 m!592353))

(assert (=> b!616083 m!592305))

(declare-fun m!592355 () Bool)

(assert (=> b!616083 m!592355))

(assert (=> b!616083 m!592305))

(declare-fun m!592357 () Bool)

(assert (=> b!616083 m!592357))

(assert (=> b!616083 m!592305))

(declare-fun m!592359 () Bool)

(assert (=> b!616083 m!592359))

(assert (=> b!616083 m!592345))

(assert (=> b!616087 m!592305))

(assert (=> b!616087 m!592305))

(declare-fun m!592361 () Bool)

(assert (=> b!616087 m!592361))

(declare-fun m!592363 () Bool)

(assert (=> b!616075 m!592363))

(push 1)

