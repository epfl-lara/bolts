; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!55026 () Bool)

(assert start!55026)

(declare-fun b!602165 () Bool)

(declare-fun res!386786 () Bool)

(declare-fun e!344395 () Bool)

(assert (=> b!602165 (=> (not res!386786) (not e!344395))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!37143 0))(
  ( (array!37144 (arr!17826 (Array (_ BitVec 32) (_ BitVec 64))) (size!18190 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37143)

(assert (=> b!602165 (= res!386786 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17826 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!602166 () Bool)

(declare-fun res!386777 () Bool)

(declare-fun e!344385 () Bool)

(assert (=> b!602166 (=> (not res!386777) (not e!344385))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!602166 (= res!386777 (validKeyInArray!0 k!1786))))

(declare-fun b!602167 () Bool)

(declare-datatypes ((Unit!19066 0))(
  ( (Unit!19067) )
))
(declare-fun e!344388 () Unit!19066)

(declare-fun Unit!19068 () Unit!19066)

(assert (=> b!602167 (= e!344388 Unit!19068)))

(assert (=> b!602167 false))

(declare-fun b!602168 () Bool)

(declare-fun res!386775 () Bool)

(assert (=> b!602168 (=> (not res!386775) (not e!344385))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!602168 (= res!386775 (and (= (size!18190 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18190 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18190 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!602169 () Bool)

(declare-fun res!386783 () Bool)

(assert (=> b!602169 (=> (not res!386783) (not e!344385))))

(assert (=> b!602169 (= res!386783 (validKeyInArray!0 (select (arr!17826 a!2986) j!136)))))

(declare-fun b!602170 () Bool)

(declare-fun res!386787 () Bool)

(assert (=> b!602170 (=> (not res!386787) (not e!344395))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37143 (_ BitVec 32)) Bool)

(assert (=> b!602170 (= res!386787 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!602171 () Bool)

(declare-fun e!344389 () Bool)

(declare-fun e!344396 () Bool)

(assert (=> b!602171 (= e!344389 e!344396)))

(declare-fun res!386784 () Bool)

(assert (=> b!602171 (=> (not res!386784) (not e!344396))))

(declare-datatypes ((SeekEntryResult!6273 0))(
  ( (MissingZero!6273 (index!27351 (_ BitVec 32))) (Found!6273 (index!27352 (_ BitVec 32))) (Intermediate!6273 (undefined!7085 Bool) (index!27353 (_ BitVec 32)) (x!56178 (_ BitVec 32))) (Undefined!6273) (MissingVacant!6273 (index!27354 (_ BitVec 32))) )
))
(declare-fun lt!274322 () SeekEntryResult!6273)

(assert (=> b!602171 (= res!386784 (and (= lt!274322 (Found!6273 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17826 a!2986) index!984) (select (arr!17826 a!2986) j!136))) (not (= (select (arr!17826 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37143 (_ BitVec 32)) SeekEntryResult!6273)

(assert (=> b!602171 (= lt!274322 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17826 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!602172 () Bool)

(declare-fun e!344391 () Unit!19066)

(declare-fun Unit!19069 () Unit!19066)

(assert (=> b!602172 (= e!344391 Unit!19069)))

(declare-fun b!602173 () Bool)

(declare-fun Unit!19070 () Unit!19066)

(assert (=> b!602173 (= e!344388 Unit!19070)))

(declare-fun b!602174 () Bool)

(declare-fun Unit!19071 () Unit!19066)

(assert (=> b!602174 (= e!344391 Unit!19071)))

(declare-fun lt!274319 () Unit!19066)

(declare-fun lt!274320 () array!37143)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37143 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19066)

(assert (=> b!602174 (= lt!274319 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!274320 (select (arr!17826 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun arrayContainsKey!0 (array!37143 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!602174 (arrayContainsKey!0 lt!274320 (select (arr!17826 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!274331 () Unit!19066)

(declare-datatypes ((List!11920 0))(
  ( (Nil!11917) (Cons!11916 (h!12961 (_ BitVec 64)) (t!18156 List!11920)) )
))
(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37143 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11920) Unit!19066)

(assert (=> b!602174 (= lt!274331 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11917))))

(declare-fun arrayNoDuplicates!0 (array!37143 (_ BitVec 32) List!11920) Bool)

(assert (=> b!602174 (arrayNoDuplicates!0 lt!274320 #b00000000000000000000000000000000 Nil!11917)))

(declare-fun lt!274328 () Unit!19066)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37143 (_ BitVec 32) (_ BitVec 32)) Unit!19066)

(assert (=> b!602174 (= lt!274328 (lemmaNoDuplicateFromThenFromBigger!0 lt!274320 #b00000000000000000000000000000000 j!136))))

(assert (=> b!602174 (arrayNoDuplicates!0 lt!274320 j!136 Nil!11917)))

(declare-fun lt!274321 () Unit!19066)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37143 (_ BitVec 64) (_ BitVec 32) List!11920) Unit!19066)

(assert (=> b!602174 (= lt!274321 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!274320 (select (arr!17826 a!2986) j!136) j!136 Nil!11917))))

(assert (=> b!602174 false))

(declare-fun b!602176 () Bool)

(declare-fun e!344397 () Bool)

(assert (=> b!602176 (= e!344397 (arrayContainsKey!0 lt!274320 (select (arr!17826 a!2986) j!136) index!984))))

(declare-fun b!602177 () Bool)

(declare-fun e!344387 () Bool)

(assert (=> b!602177 (= e!344396 (not e!344387))))

(declare-fun res!386776 () Bool)

(assert (=> b!602177 (=> res!386776 e!344387)))

(declare-fun lt!274318 () SeekEntryResult!6273)

(assert (=> b!602177 (= res!386776 (not (= lt!274318 (Found!6273 index!984))))))

(declare-fun lt!274324 () Unit!19066)

(assert (=> b!602177 (= lt!274324 e!344388)))

(declare-fun c!68063 () Bool)

(assert (=> b!602177 (= c!68063 (= lt!274318 Undefined!6273))))

(declare-fun lt!274326 () (_ BitVec 64))

(assert (=> b!602177 (= lt!274318 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!274326 lt!274320 mask!3053))))

(declare-fun e!344394 () Bool)

(assert (=> b!602177 e!344394))

(declare-fun res!386791 () Bool)

(assert (=> b!602177 (=> (not res!386791) (not e!344394))))

(declare-fun lt!274329 () SeekEntryResult!6273)

(declare-fun lt!274332 () (_ BitVec 32))

(assert (=> b!602177 (= res!386791 (= lt!274329 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!274332 vacantSpotIndex!68 lt!274326 lt!274320 mask!3053)))))

(assert (=> b!602177 (= lt!274329 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!274332 vacantSpotIndex!68 (select (arr!17826 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!602177 (= lt!274326 (select (store (arr!17826 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!274323 () Unit!19066)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37143 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19066)

(assert (=> b!602177 (= lt!274323 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!274332 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!602177 (= lt!274332 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!602178 () Bool)

(declare-fun e!344393 () Bool)

(declare-fun e!344398 () Bool)

(assert (=> b!602178 (= e!344393 e!344398)))

(declare-fun res!386782 () Bool)

(assert (=> b!602178 (=> res!386782 e!344398)))

(assert (=> b!602178 (= res!386782 (bvsge index!984 j!136))))

(declare-fun lt!274325 () Unit!19066)

(assert (=> b!602178 (= lt!274325 e!344391)))

(declare-fun c!68062 () Bool)

(assert (=> b!602178 (= c!68062 (bvslt j!136 index!984))))

(declare-fun b!602179 () Bool)

(assert (=> b!602179 (= e!344398 (or (bvsge index!984 (size!18190 a!2986)) (bvslt (size!18190 a!2986) #b01111111111111111111111111111111)))))

(assert (=> b!602179 (arrayContainsKey!0 lt!274320 (select (arr!17826 a!2986) j!136) j!136)))

(declare-fun b!602180 () Bool)

(declare-fun res!386789 () Bool)

(assert (=> b!602180 (=> (not res!386789) (not e!344385))))

(assert (=> b!602180 (= res!386789 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!602181 () Bool)

(assert (=> b!602181 (= e!344385 e!344395)))

(declare-fun res!386788 () Bool)

(assert (=> b!602181 (=> (not res!386788) (not e!344395))))

(declare-fun lt!274330 () SeekEntryResult!6273)

(assert (=> b!602181 (= res!386788 (or (= lt!274330 (MissingZero!6273 i!1108)) (= lt!274330 (MissingVacant!6273 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37143 (_ BitVec 32)) SeekEntryResult!6273)

(assert (=> b!602181 (= lt!274330 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!602182 () Bool)

(assert (=> b!602182 (= e!344394 (= lt!274322 lt!274329))))

(declare-fun b!602183 () Bool)

(declare-fun e!344386 () Bool)

(declare-fun e!344392 () Bool)

(assert (=> b!602183 (= e!344386 e!344392)))

(declare-fun res!386792 () Bool)

(assert (=> b!602183 (=> res!386792 e!344392)))

(declare-fun lt!274327 () (_ BitVec 64))

(assert (=> b!602183 (= res!386792 (or (not (= (select (arr!17826 a!2986) j!136) lt!274326)) (not (= (select (arr!17826 a!2986) j!136) lt!274327)) (bvsge j!136 index!984)))))

(declare-fun b!602184 () Bool)

(assert (=> b!602184 (= e!344395 e!344389)))

(declare-fun res!386785 () Bool)

(assert (=> b!602184 (=> (not res!386785) (not e!344389))))

(assert (=> b!602184 (= res!386785 (= (select (store (arr!17826 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!602184 (= lt!274320 (array!37144 (store (arr!17826 a!2986) i!1108 k!1786) (size!18190 a!2986)))))

(declare-fun b!602185 () Bool)

(declare-fun res!386778 () Bool)

(assert (=> b!602185 (=> (not res!386778) (not e!344395))))

(assert (=> b!602185 (= res!386778 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11917))))

(declare-fun b!602186 () Bool)

(assert (=> b!602186 (= e!344392 e!344397)))

(declare-fun res!386779 () Bool)

(assert (=> b!602186 (=> (not res!386779) (not e!344397))))

(assert (=> b!602186 (= res!386779 (arrayContainsKey!0 lt!274320 (select (arr!17826 a!2986) j!136) j!136))))

(declare-fun b!602175 () Bool)

(assert (=> b!602175 (= e!344387 e!344393)))

(declare-fun res!386781 () Bool)

(assert (=> b!602175 (=> res!386781 e!344393)))

(assert (=> b!602175 (= res!386781 (or (not (= (select (arr!17826 a!2986) j!136) lt!274326)) (not (= (select (arr!17826 a!2986) j!136) lt!274327))))))

(assert (=> b!602175 e!344386))

(declare-fun res!386790 () Bool)

(assert (=> b!602175 (=> (not res!386790) (not e!344386))))

(assert (=> b!602175 (= res!386790 (= lt!274327 (select (arr!17826 a!2986) j!136)))))

(assert (=> b!602175 (= lt!274327 (select (store (arr!17826 a!2986) i!1108 k!1786) index!984))))

(declare-fun res!386780 () Bool)

(assert (=> start!55026 (=> (not res!386780) (not e!344385))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55026 (= res!386780 (validMask!0 mask!3053))))

(assert (=> start!55026 e!344385))

(assert (=> start!55026 true))

(declare-fun array_inv!13600 (array!37143) Bool)

(assert (=> start!55026 (array_inv!13600 a!2986)))

(assert (= (and start!55026 res!386780) b!602168))

(assert (= (and b!602168 res!386775) b!602169))

(assert (= (and b!602169 res!386783) b!602166))

(assert (= (and b!602166 res!386777) b!602180))

(assert (= (and b!602180 res!386789) b!602181))

(assert (= (and b!602181 res!386788) b!602170))

(assert (= (and b!602170 res!386787) b!602185))

(assert (= (and b!602185 res!386778) b!602165))

(assert (= (and b!602165 res!386786) b!602184))

(assert (= (and b!602184 res!386785) b!602171))

(assert (= (and b!602171 res!386784) b!602177))

(assert (= (and b!602177 res!386791) b!602182))

(assert (= (and b!602177 c!68063) b!602167))

(assert (= (and b!602177 (not c!68063)) b!602173))

(assert (= (and b!602177 (not res!386776)) b!602175))

(assert (= (and b!602175 res!386790) b!602183))

(assert (= (and b!602183 (not res!386792)) b!602186))

(assert (= (and b!602186 res!386779) b!602176))

(assert (= (and b!602175 (not res!386781)) b!602178))

(assert (= (and b!602178 c!68062) b!602174))

(assert (= (and b!602178 (not c!68062)) b!602172))

(assert (= (and b!602178 (not res!386782)) b!602179))

(declare-fun m!579339 () Bool)

(assert (=> b!602179 m!579339))

(assert (=> b!602179 m!579339))

(declare-fun m!579341 () Bool)

(assert (=> b!602179 m!579341))

(assert (=> b!602174 m!579339))

(assert (=> b!602174 m!579339))

(declare-fun m!579343 () Bool)

(assert (=> b!602174 m!579343))

(declare-fun m!579345 () Bool)

(assert (=> b!602174 m!579345))

(assert (=> b!602174 m!579339))

(declare-fun m!579347 () Bool)

(assert (=> b!602174 m!579347))

(declare-fun m!579349 () Bool)

(assert (=> b!602174 m!579349))

(declare-fun m!579351 () Bool)

(assert (=> b!602174 m!579351))

(assert (=> b!602174 m!579339))

(declare-fun m!579353 () Bool)

(assert (=> b!602174 m!579353))

(declare-fun m!579355 () Bool)

(assert (=> b!602174 m!579355))

(declare-fun m!579357 () Bool)

(assert (=> start!55026 m!579357))

(declare-fun m!579359 () Bool)

(assert (=> start!55026 m!579359))

(declare-fun m!579361 () Bool)

(assert (=> b!602166 m!579361))

(assert (=> b!602186 m!579339))

(assert (=> b!602186 m!579339))

(assert (=> b!602186 m!579341))

(assert (=> b!602169 m!579339))

(assert (=> b!602169 m!579339))

(declare-fun m!579363 () Bool)

(assert (=> b!602169 m!579363))

(declare-fun m!579365 () Bool)

(assert (=> b!602177 m!579365))

(declare-fun m!579367 () Bool)

(assert (=> b!602177 m!579367))

(assert (=> b!602177 m!579339))

(declare-fun m!579369 () Bool)

(assert (=> b!602177 m!579369))

(declare-fun m!579371 () Bool)

(assert (=> b!602177 m!579371))

(assert (=> b!602177 m!579339))

(declare-fun m!579373 () Bool)

(assert (=> b!602177 m!579373))

(declare-fun m!579375 () Bool)

(assert (=> b!602177 m!579375))

(declare-fun m!579377 () Bool)

(assert (=> b!602177 m!579377))

(assert (=> b!602176 m!579339))

(assert (=> b!602176 m!579339))

(declare-fun m!579379 () Bool)

(assert (=> b!602176 m!579379))

(declare-fun m!579381 () Bool)

(assert (=> b!602171 m!579381))

(assert (=> b!602171 m!579339))

(assert (=> b!602171 m!579339))

(declare-fun m!579383 () Bool)

(assert (=> b!602171 m!579383))

(declare-fun m!579385 () Bool)

(assert (=> b!602165 m!579385))

(declare-fun m!579387 () Bool)

(assert (=> b!602170 m!579387))

(declare-fun m!579389 () Bool)

(assert (=> b!602180 m!579389))

(assert (=> b!602183 m!579339))

(assert (=> b!602184 m!579369))

(declare-fun m!579391 () Bool)

(assert (=> b!602184 m!579391))

(declare-fun m!579393 () Bool)

(assert (=> b!602185 m!579393))

(declare-fun m!579395 () Bool)

(assert (=> b!602181 m!579395))

(assert (=> b!602175 m!579339))

(assert (=> b!602175 m!579369))

(declare-fun m!579397 () Bool)

(assert (=> b!602175 m!579397))

(push 1)

(assert (not b!602180))

(assert (not b!602185))

(assert (not b!602179))

(assert (not b!602177))

(assert (not b!602174))

(assert (not b!602181))

(assert (not b!602176))

(assert (not b!602186))

(assert (not b!602166))

(assert (not b!602170))

(assert (not b!602171))

(assert (not start!55026))

(assert (not b!602169))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!87161 () Bool)

(assert (=> d!87161 (= (validKeyInArray!0 (select (arr!17826 a!2986) j!136)) (and (not (= (select (arr!17826 a!2986) j!136) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!17826 a!2986) j!136) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!602169 d!87161))

(declare-fun d!87163 () Bool)

(declare-fun res!386928 () Bool)

(declare-fun e!344515 () Bool)

(assert (=> d!87163 (=> res!386928 e!344515)))

(assert (=> d!87163 (= res!386928 (= (select (arr!17826 lt!274320) j!136) (select (arr!17826 a!2986) j!136)))))

(assert (=> d!87163 (= (arrayContainsKey!0 lt!274320 (select (arr!17826 a!2986) j!136) j!136) e!344515)))

(declare-fun b!602356 () Bool)

(declare-fun e!344516 () Bool)

(assert (=> b!602356 (= e!344515 e!344516)))

(declare-fun res!386929 () Bool)

(assert (=> b!602356 (=> (not res!386929) (not e!344516))))

(assert (=> b!602356 (= res!386929 (bvslt (bvadd j!136 #b00000000000000000000000000000001) (size!18190 lt!274320)))))

(declare-fun b!602357 () Bool)

(assert (=> b!602357 (= e!344516 (arrayContainsKey!0 lt!274320 (select (arr!17826 a!2986) j!136) (bvadd j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!87163 (not res!386928)) b!602356))

(assert (= (and b!602356 res!386929) b!602357))

(declare-fun m!579537 () Bool)

(assert (=> d!87163 m!579537))

(assert (=> b!602357 m!579339))

(declare-fun m!579539 () Bool)

(assert (=> b!602357 m!579539))

(assert (=> b!602179 d!87163))

(declare-fun b!602374 () Bool)

(declare-fun e!344528 () SeekEntryResult!6273)

(assert (=> b!602374 (= e!344528 (Found!6273 index!984))))

(declare-fun b!602375 () Bool)

(declare-fun e!344526 () SeekEntryResult!6273)

(assert (=> b!602375 (= e!344526 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 (select (arr!17826 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!602376 () Bool)

(assert (=> b!602376 (= e!344526 (MissingVacant!6273 vacantSpotIndex!68))))

(declare-fun b!602377 () Bool)

(declare-fun e!344527 () SeekEntryResult!6273)

(assert (=> b!602377 (= e!344527 Undefined!6273)))

(declare-fun b!602378 () Bool)

(declare-fun c!68090 () Bool)

(declare-fun lt!274436 () (_ BitVec 64))

(assert (=> b!602378 (= c!68090 (= lt!274436 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!602378 (= e!344528 e!344526)))

(declare-fun d!87165 () Bool)

(declare-fun lt!274437 () SeekEntryResult!6273)

(assert (=> d!87165 (and (or (is-Undefined!6273 lt!274437) (not (is-Found!6273 lt!274437)) (and (bvsge (index!27352 lt!274437) #b00000000000000000000000000000000) (bvslt (index!27352 lt!274437) (size!18190 a!2986)))) (or (is-Undefined!6273 lt!274437) (is-Found!6273 lt!274437) (not (is-MissingVacant!6273 lt!274437)) (not (= (index!27354 lt!274437) vacantSpotIndex!68)) (and (bvsge (index!27354 lt!274437) #b00000000000000000000000000000000) (bvslt (index!27354 lt!274437) (size!18190 a!2986)))) (or (is-Undefined!6273 lt!274437) (ite (is-Found!6273 lt!274437) (= (select (arr!17826 a!2986) (index!27352 lt!274437)) (select (arr!17826 a!2986) j!136)) (and (is-MissingVacant!6273 lt!274437) (= (index!27354 lt!274437) vacantSpotIndex!68) (= (select (arr!17826 a!2986) (index!27354 lt!274437)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!87165 (= lt!274437 e!344527)))

(declare-fun c!68088 () Bool)

(assert (=> d!87165 (= c!68088 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!87165 (= lt!274436 (select (arr!17826 a!2986) index!984))))

(assert (=> d!87165 (validMask!0 mask!3053)))

(assert (=> d!87165 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17826 a!2986) j!136) a!2986 mask!3053) lt!274437)))

(declare-fun b!602379 () Bool)

(assert (=> b!602379 (= e!344527 e!344528)))

(declare-fun c!68089 () Bool)

(assert (=> b!602379 (= c!68089 (= lt!274436 (select (arr!17826 a!2986) j!136)))))

(assert (= (and d!87165 c!68088) b!602377))

(assert (= (and d!87165 (not c!68088)) b!602379))

(assert (= (and b!602379 c!68089) b!602374))

(assert (= (and b!602379 (not c!68089)) b!602378))

(assert (= (and b!602378 c!68090) b!602376))

(assert (= (and b!602378 (not c!68090)) b!602375))

(assert (=> b!602375 m!579365))

(assert (=> b!602375 m!579365))

(assert (=> b!602375 m!579339))

(declare-fun m!579549 () Bool)

(assert (=> b!602375 m!579549))

(declare-fun m!579551 () Bool)

(assert (=> d!87165 m!579551))

(declare-fun m!579553 () Bool)

(assert (=> d!87165 m!579553))

(assert (=> d!87165 m!579381))

(assert (=> d!87165 m!579357))

(assert (=> b!602171 d!87165))

(declare-fun b!602400 () Bool)

(declare-fun e!344542 () Bool)

(declare-fun e!344543 () Bool)

(assert (=> b!602400 (= e!344542 e!344543)))

(declare-fun lt!274448 () (_ BitVec 64))

(assert (=> b!602400 (= lt!274448 (select (arr!17826 a!2986) #b00000000000000000000000000000000))))

(declare-fun lt!274449 () Unit!19066)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!37143 (_ BitVec 64) (_ BitVec 32)) Unit!19066)

(assert (=> b!602400 (= lt!274449 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2986 lt!274448 #b00000000000000000000000000000000))))

(assert (=> b!602400 (arrayContainsKey!0 a!2986 lt!274448 #b00000000000000000000000000000000)))

(declare-fun lt!274450 () Unit!19066)

(assert (=> b!602400 (= lt!274450 lt!274449)))

(declare-fun res!386936 () Bool)

(assert (=> b!602400 (= res!386936 (= (seekEntryOrOpen!0 (select (arr!17826 a!2986) #b00000000000000000000000000000000) a!2986 mask!3053) (Found!6273 #b00000000000000000000000000000000)))))

(assert (=> b!602400 (=> (not res!386936) (not e!344543))))

(declare-fun d!87169 () Bool)

(declare-fun res!386937 () Bool)

(declare-fun e!344541 () Bool)

(assert (=> d!87169 (=> res!386937 e!344541)))

(assert (=> d!87169 (= res!386937 (bvsge #b00000000000000000000000000000000 (size!18190 a!2986)))))

(assert (=> d!87169 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053) e!344541)))

(declare-fun bm!32990 () Bool)

(declare-fun call!32993 () Bool)

(assert (=> bm!32990 (= call!32993 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2986 mask!3053))))

(declare-fun b!602401 () Bool)

(assert (=> b!602401 (= e!344542 call!32993)))

(declare-fun b!602402 () Bool)

(assert (=> b!602402 (= e!344543 call!32993)))

(declare-fun b!602403 () Bool)

(assert (=> b!602403 (= e!344541 e!344542)))

(declare-fun c!68099 () Bool)

(assert (=> b!602403 (= c!68099 (validKeyInArray!0 (select (arr!17826 a!2986) #b00000000000000000000000000000000)))))

(assert (= (and d!87169 (not res!386937)) b!602403))

(assert (= (and b!602403 c!68099) b!602400))

(assert (= (and b!602403 (not c!68099)) b!602401))

(assert (= (and b!602400 res!386936) b!602402))

(assert (= (or b!602402 b!602401) bm!32990))

(declare-fun m!579555 () Bool)

(assert (=> b!602400 m!579555))

(declare-fun m!579557 () Bool)

(assert (=> b!602400 m!579557))

(declare-fun m!579559 () Bool)

(assert (=> b!602400 m!579559))

(assert (=> b!602400 m!579555))

(declare-fun m!579561 () Bool)

(assert (=> b!602400 m!579561))

(declare-fun m!579563 () Bool)

(assert (=> bm!32990 m!579563))

(assert (=> b!602403 m!579555))

(assert (=> b!602403 m!579555))

(declare-fun m!579565 () Bool)

(assert (=> b!602403 m!579565))

(assert (=> b!602170 d!87169))

(declare-fun b!602446 () Bool)

(declare-fun c!68121 () Bool)

(declare-fun lt!274473 () (_ BitVec 64))

(assert (=> b!602446 (= c!68121 (= lt!274473 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!344569 () SeekEntryResult!6273)

(declare-fun e!344568 () SeekEntryResult!6273)

(assert (=> b!602446 (= e!344569 e!344568)))

(declare-fun b!602447 () Bool)

(declare-fun lt!274472 () SeekEntryResult!6273)

(assert (=> b!602447 (= e!344568 (MissingZero!6273 (index!27353 lt!274472)))))

(declare-fun d!87171 () Bool)

(declare-fun lt!274474 () SeekEntryResult!6273)

(assert (=> d!87171 (and (or (is-Undefined!6273 lt!274474) (not (is-Found!6273 lt!274474)) (and (bvsge (index!27352 lt!274474) #b00000000000000000000000000000000) (bvslt (index!27352 lt!274474) (size!18190 a!2986)))) (or (is-Undefined!6273 lt!274474) (is-Found!6273 lt!274474) (not (is-MissingZero!6273 lt!274474)) (and (bvsge (index!27351 lt!274474) #b00000000000000000000000000000000) (bvslt (index!27351 lt!274474) (size!18190 a!2986)))) (or (is-Undefined!6273 lt!274474) (is-Found!6273 lt!274474) (is-MissingZero!6273 lt!274474) (not (is-MissingVacant!6273 lt!274474)) (and (bvsge (index!27354 lt!274474) #b00000000000000000000000000000000) (bvslt (index!27354 lt!274474) (size!18190 a!2986)))) (or (is-Undefined!6273 lt!274474) (ite (is-Found!6273 lt!274474) (= (select (arr!17826 a!2986) (index!27352 lt!274474)) k!1786) (ite (is-MissingZero!6273 lt!274474) (= (select (arr!17826 a!2986) (index!27351 lt!274474)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!6273 lt!274474) (= (select (arr!17826 a!2986) (index!27354 lt!274474)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!344567 () SeekEntryResult!6273)

(assert (=> d!87171 (= lt!274474 e!344567)))

(declare-fun c!68122 () Bool)

(assert (=> d!87171 (= c!68122 (and (is-Intermediate!6273 lt!274472) (undefined!7085 lt!274472)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37143 (_ BitVec 32)) SeekEntryResult!6273)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!87171 (= lt!274472 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1786 mask!3053) k!1786 a!2986 mask!3053))))

(assert (=> d!87171 (validMask!0 mask!3053)))

(assert (=> d!87171 (= (seekEntryOrOpen!0 k!1786 a!2986 mask!3053) lt!274474)))

(declare-fun b!602448 () Bool)

(assert (=> b!602448 (= e!344567 e!344569)))

(assert (=> b!602448 (= lt!274473 (select (arr!17826 a!2986) (index!27353 lt!274472)))))

(declare-fun c!68123 () Bool)

(assert (=> b!602448 (= c!68123 (= lt!274473 k!1786))))

(declare-fun b!602449 () Bool)

(assert (=> b!602449 (= e!344569 (Found!6273 (index!27353 lt!274472)))))

(declare-fun b!602450 () Bool)

(assert (=> b!602450 (= e!344568 (seekKeyOrZeroReturnVacant!0 (x!56178 lt!274472) (index!27353 lt!274472) (index!27353 lt!274472) k!1786 a!2986 mask!3053))))

(declare-fun b!602451 () Bool)

(assert (=> b!602451 (= e!344567 Undefined!6273)))

(assert (= (and d!87171 c!68122) b!602451))

(assert (= (and d!87171 (not c!68122)) b!602448))

(assert (= (and b!602448 c!68123) b!602449))

(assert (= (and b!602448 (not c!68123)) b!602446))

(assert (= (and b!602446 c!68121) b!602447))

(assert (= (and b!602446 (not c!68121)) b!602450))

(declare-fun m!579593 () Bool)

(assert (=> d!87171 m!579593))

(declare-fun m!579595 () Bool)

(assert (=> d!87171 m!579595))

(declare-fun m!579597 () Bool)

(assert (=> d!87171 m!579597))

(declare-fun m!579599 () Bool)

(assert (=> d!87171 m!579599))

(assert (=> d!87171 m!579597))

(assert (=> d!87171 m!579357))

(declare-fun m!579601 () Bool)

(assert (=> d!87171 m!579601))

(declare-fun m!579603 () Bool)

(assert (=> b!602448 m!579603))

(declare-fun m!579605 () Bool)

(assert (=> b!602450 m!579605))

(assert (=> b!602181 d!87171))

(declare-fun d!87183 () Bool)

(declare-fun res!386940 () Bool)

(declare-fun e!344570 () Bool)

(assert (=> d!87183 (=> res!386940 e!344570)))

(assert (=> d!87183 (= res!386940 (= (select (arr!17826 a!2986) #b00000000000000000000000000000000) k!1786))))

(assert (=> d!87183 (= (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000) e!344570)))

(declare-fun b!602454 () Bool)

(declare-fun e!344571 () Bool)

(assert (=> b!602454 (= e!344570 e!344571)))

(declare-fun res!386941 () Bool)

(assert (=> b!602454 (=> (not res!386941) (not e!344571))))

(assert (=> b!602454 (= res!386941 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!18190 a!2986)))))

(declare-fun b!602455 () Bool)

(assert (=> b!602455 (= e!344571 (arrayContainsKey!0 a!2986 k!1786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!87183 (not res!386940)) b!602454))

(assert (= (and b!602454 res!386941) b!602455))

(assert (=> d!87183 m!579555))

(declare-fun m!579607 () Bool)

(assert (=> b!602455 m!579607))

(assert (=> b!602180 d!87183))

(declare-fun b!602481 () Bool)

(declare-fun e!344592 () Bool)

(declare-fun e!344590 () Bool)

(assert (=> b!602481 (= e!344592 e!344590)))

(declare-fun res!386955 () Bool)

(assert (=> b!602481 (=> (not res!386955) (not e!344590))))

(declare-fun e!344593 () Bool)

(assert (=> b!602481 (= res!386955 (not e!344593))))

(declare-fun res!386956 () Bool)

(assert (=> b!602481 (=> (not res!386956) (not e!344593))))

(assert (=> b!602481 (= res!386956 (validKeyInArray!0 (select (arr!17826 lt!274320) j!136)))))

(declare-fun call!32996 () Bool)

(declare-fun bm!32993 () Bool)

(declare-fun c!68129 () Bool)

(assert (=> bm!32993 (= call!32996 (arrayNoDuplicates!0 lt!274320 (bvadd j!136 #b00000000000000000000000000000001) (ite c!68129 (Cons!11916 (select (arr!17826 lt!274320) j!136) Nil!11917) Nil!11917)))))

(declare-fun b!602482 () Bool)

(declare-fun e!344591 () Bool)

(assert (=> b!602482 (= e!344591 call!32996)))

(declare-fun b!602483 () Bool)

(assert (=> b!602483 (= e!344590 e!344591)))

(assert (=> b!602483 (= c!68129 (validKeyInArray!0 (select (arr!17826 lt!274320) j!136)))))

(declare-fun d!87185 () Bool)

(declare-fun res!386957 () Bool)

(assert (=> d!87185 (=> res!386957 e!344592)))

(assert (=> d!87185 (= res!386957 (bvsge j!136 (size!18190 lt!274320)))))

(assert (=> d!87185 (= (arrayNoDuplicates!0 lt!274320 j!136 Nil!11917) e!344592)))

(declare-fun b!602484 () Bool)

(declare-fun contains!2994 (List!11920 (_ BitVec 64)) Bool)

(assert (=> b!602484 (= e!344593 (contains!2994 Nil!11917 (select (arr!17826 lt!274320) j!136)))))

(declare-fun b!602485 () Bool)

(assert (=> b!602485 (= e!344591 call!32996)))

(assert (= (and d!87185 (not res!386957)) b!602481))

(assert (= (and b!602481 res!386956) b!602484))

(assert (= (and b!602481 res!386955) b!602483))

(assert (= (and b!602483 c!68129) b!602485))

(assert (= (and b!602483 (not c!68129)) b!602482))

(assert (= (or b!602485 b!602482) bm!32993))

(assert (=> b!602481 m!579537))

(assert (=> b!602481 m!579537))

(declare-fun m!579623 () Bool)

(assert (=> b!602481 m!579623))

(assert (=> bm!32993 m!579537))

(declare-fun m!579627 () Bool)

(assert (=> bm!32993 m!579627))

(assert (=> b!602483 m!579537))

(assert (=> b!602483 m!579537))

(assert (=> b!602483 m!579623))

(assert (=> b!602484 m!579537))

(assert (=> b!602484 m!579537))

(declare-fun m!579631 () Bool)

(assert (=> b!602484 m!579631))

(assert (=> b!602174 d!87185))

(declare-fun d!87199 () Bool)

(declare-fun res!386960 () Bool)

(declare-fun e!344598 () Bool)

(assert (=> d!87199 (=> res!386960 e!344598)))

(assert (=> d!87199 (= res!386960 (= (select (arr!17826 lt!274320) (bvadd #b00000000000000000000000000000001 j!136)) (select (arr!17826 a!2986) j!136)))))

(assert (=> d!87199 (= (arrayContainsKey!0 lt!274320 (select (arr!17826 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136)) e!344598)))

(declare-fun b!602490 () Bool)

(declare-fun e!344599 () Bool)

(assert (=> b!602490 (= e!344598 e!344599)))

(declare-fun res!386961 () Bool)

(assert (=> b!602490 (=> (not res!386961) (not e!344599))))

(assert (=> b!602490 (= res!386961 (bvslt (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001) (size!18190 lt!274320)))))

(declare-fun b!602491 () Bool)

(assert (=> b!602491 (= e!344599 (arrayContainsKey!0 lt!274320 (select (arr!17826 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!87199 (not res!386960)) b!602490))

(assert (= (and b!602490 res!386961) b!602491))

(declare-fun m!579633 () Bool)

(assert (=> d!87199 m!579633))

(assert (=> b!602491 m!579339))

(declare-fun m!579635 () Bool)

(assert (=> b!602491 m!579635))

(assert (=> b!602174 d!87199))

(declare-fun d!87201 () Bool)

(assert (=> d!87201 (arrayContainsKey!0 lt!274320 (select (arr!17826 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!274488 () Unit!19066)

(declare-fun choose!114 (array!37143 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19066)

(assert (=> d!87201 (= lt!274488 (choose!114 lt!274320 (select (arr!17826 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> d!87201 (bvsge index!984 #b00000000000000000000000000000000)))

(assert (=> d!87201 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!274320 (select (arr!17826 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)) lt!274488)))

(declare-fun bs!18458 () Bool)

(assert (= bs!18458 d!87201))

(assert (=> bs!18458 m!579339))

(assert (=> bs!18458 m!579343))

(assert (=> bs!18458 m!579339))

(declare-fun m!579643 () Bool)

(assert (=> bs!18458 m!579643))

(assert (=> b!602174 d!87201))

(declare-fun b!602497 () Bool)

(declare-fun e!344606 () Bool)

(declare-fun e!344604 () Bool)

(assert (=> b!602497 (= e!344606 e!344604)))

(declare-fun res!386965 () Bool)

(assert (=> b!602497 (=> (not res!386965) (not e!344604))))

(declare-fun e!344607 () Bool)

(assert (=> b!602497 (= res!386965 (not e!344607))))

(declare-fun res!386966 () Bool)

(assert (=> b!602497 (=> (not res!386966) (not e!344607))))

(assert (=> b!602497 (= res!386966 (validKeyInArray!0 (select (arr!17826 lt!274320) #b00000000000000000000000000000000)))))

(declare-fun bm!32997 () Bool)

(declare-fun call!33000 () Bool)

(declare-fun c!68133 () Bool)

(assert (=> bm!32997 (= call!33000 (arrayNoDuplicates!0 lt!274320 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!68133 (Cons!11916 (select (arr!17826 lt!274320) #b00000000000000000000000000000000) Nil!11917) Nil!11917)))))

(declare-fun b!602498 () Bool)

(declare-fun e!344605 () Bool)

(assert (=> b!602498 (= e!344605 call!33000)))

(declare-fun b!602499 () Bool)

(assert (=> b!602499 (= e!344604 e!344605)))

(assert (=> b!602499 (= c!68133 (validKeyInArray!0 (select (arr!17826 lt!274320) #b00000000000000000000000000000000)))))

(declare-fun d!87203 () Bool)

(declare-fun res!386967 () Bool)

(assert (=> d!87203 (=> res!386967 e!344606)))

(assert (=> d!87203 (= res!386967 (bvsge #b00000000000000000000000000000000 (size!18190 lt!274320)))))

(assert (=> d!87203 (= (arrayNoDuplicates!0 lt!274320 #b00000000000000000000000000000000 Nil!11917) e!344606)))

(declare-fun b!602500 () Bool)

(assert (=> b!602500 (= e!344607 (contains!2994 Nil!11917 (select (arr!17826 lt!274320) #b00000000000000000000000000000000)))))

(declare-fun b!602501 () Bool)

(assert (=> b!602501 (= e!344605 call!33000)))

(assert (= (and d!87203 (not res!386967)) b!602497))

(assert (= (and b!602497 res!386966) b!602500))

(assert (= (and b!602497 res!386965) b!602499))

(assert (= (and b!602499 c!68133) b!602501))

(assert (= (and b!602499 (not c!68133)) b!602498))

(assert (= (or b!602501 b!602498) bm!32997))

(declare-fun m!579647 () Bool)

(assert (=> b!602497 m!579647))

(assert (=> b!602497 m!579647))

(declare-fun m!579651 () Bool)

(assert (=> b!602497 m!579651))

(assert (=> bm!32997 m!579647))

(declare-fun m!579653 () Bool)

(assert (=> bm!32997 m!579653))

(assert (=> b!602499 m!579647))

(assert (=> b!602499 m!579647))

(assert (=> b!602499 m!579651))

(assert (=> b!602500 m!579647))

(assert (=> b!602500 m!579647))

(declare-fun m!579655 () Bool)

(assert (=> b!602500 m!579655))

(assert (=> b!602174 d!87203))

(declare-fun d!87209 () Bool)

(assert (=> d!87209 (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18190 lt!274320)) (not (= (select (arr!17826 lt!274320) j!136) (select (arr!17826 a!2986) j!136))))))

(declare-fun lt!274492 () Unit!19066)

(declare-fun choose!21 (array!37143 (_ BitVec 64) (_ BitVec 32) List!11920) Unit!19066)

(assert (=> d!87209 (= lt!274492 (choose!21 lt!274320 (select (arr!17826 a!2986) j!136) j!136 Nil!11917))))

(assert (=> d!87209 (bvslt (size!18190 lt!274320) #b01111111111111111111111111111111)))

(assert (=> d!87209 (= (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!274320 (select (arr!17826 a!2986) j!136) j!136 Nil!11917) lt!274492)))

(declare-fun bs!18460 () Bool)

(assert (= bs!18460 d!87209))

(assert (=> bs!18460 m!579537))

(assert (=> bs!18460 m!579339))

(declare-fun m!579667 () Bool)

(assert (=> bs!18460 m!579667))

(assert (=> b!602174 d!87209))

(declare-fun d!87215 () Bool)

(assert (=> d!87215 (arrayNoDuplicates!0 lt!274320 j!136 Nil!11917)))

(declare-fun lt!274501 () Unit!19066)

(declare-fun choose!39 (array!37143 (_ BitVec 32) (_ BitVec 32)) Unit!19066)

(assert (=> d!87215 (= lt!274501 (choose!39 lt!274320 #b00000000000000000000000000000000 j!136))))

(assert (=> d!87215 (bvslt (size!18190 lt!274320) #b01111111111111111111111111111111)))

(assert (=> d!87215 (= (lemmaNoDuplicateFromThenFromBigger!0 lt!274320 #b00000000000000000000000000000000 j!136) lt!274501)))

(declare-fun bs!18462 () Bool)

(assert (= bs!18462 d!87215))

(assert (=> bs!18462 m!579351))

(declare-fun m!579681 () Bool)

(assert (=> bs!18462 m!579681))

(assert (=> b!602174 d!87215))

(declare-fun d!87221 () Bool)

(declare-fun e!344633 () Bool)

(assert (=> d!87221 e!344633))

(declare-fun res!386990 () Bool)

(assert (=> d!87221 (=> (not res!386990) (not e!344633))))

(assert (=> d!87221 (= res!386990 (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18190 a!2986))))))

(declare-fun lt!274506 () Unit!19066)

(declare-fun choose!41 (array!37143 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11920) Unit!19066)

(assert (=> d!87221 (= lt!274506 (choose!41 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11917))))

(assert (=> d!87221 (bvslt (size!18190 a!2986) #b01111111111111111111111111111111)))

(assert (=> d!87221 (= (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11917) lt!274506)))

(declare-fun b!602530 () Bool)

(assert (=> b!602530 (= e!344633 (arrayNoDuplicates!0 (array!37144 (store (arr!17826 a!2986) i!1108 k!1786) (size!18190 a!2986)) #b00000000000000000000000000000000 Nil!11917))))

(assert (= (and d!87221 res!386990) b!602530))

(declare-fun m!579693 () Bool)

(assert (=> d!87221 m!579693))

(assert (=> b!602530 m!579369))

(declare-fun m!579695 () Bool)

(assert (=> b!602530 m!579695))

(assert (=> b!602174 d!87221))

(declare-fun b!602532 () Bool)

(declare-fun e!344637 () Bool)

(declare-fun e!344635 () Bool)

(assert (=> b!602532 (= e!344637 e!344635)))

(declare-fun res!386992 () Bool)

(assert (=> b!602532 (=> (not res!386992) (not e!344635))))

(declare-fun e!344638 () Bool)

(assert (=> b!602532 (= res!386992 (not e!344638))))

(declare-fun res!386993 () Bool)

(assert (=> b!602532 (=> (not res!386993) (not e!344638))))

(assert (=> b!602532 (= res!386993 (validKeyInArray!0 (select (arr!17826 a!2986) #b00000000000000000000000000000000)))))

(declare-fun bm!33001 () Bool)

(declare-fun call!33004 () Bool)

(declare-fun c!68137 () Bool)

(assert (=> bm!33001 (= call!33004 (arrayNoDuplicates!0 a!2986 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!68137 (Cons!11916 (select (arr!17826 a!2986) #b00000000000000000000000000000000) Nil!11917) Nil!11917)))))

(declare-fun b!602533 () Bool)

(declare-fun e!344636 () Bool)

(assert (=> b!602533 (= e!344636 call!33004)))

(declare-fun b!602534 () Bool)

(assert (=> b!602534 (= e!344635 e!344636)))

(assert (=> b!602534 (= c!68137 (validKeyInArray!0 (select (arr!17826 a!2986) #b00000000000000000000000000000000)))))

(declare-fun d!87229 () Bool)

(declare-fun res!386994 () Bool)

(assert (=> d!87229 (=> res!386994 e!344637)))

(assert (=> d!87229 (= res!386994 (bvsge #b00000000000000000000000000000000 (size!18190 a!2986)))))

(assert (=> d!87229 (= (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11917) e!344637)))

(declare-fun b!602535 () Bool)

(assert (=> b!602535 (= e!344638 (contains!2994 Nil!11917 (select (arr!17826 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!602536 () Bool)

(assert (=> b!602536 (= e!344636 call!33004)))

(assert (= (and d!87229 (not res!386994)) b!602532))

(assert (= (and b!602532 res!386993) b!602535))

(assert (= (and b!602532 res!386992) b!602534))

(assert (= (and b!602534 c!68137) b!602536))

(assert (= (and b!602534 (not c!68137)) b!602533))

(assert (= (or b!602536 b!602533) bm!33001))

(assert (=> b!602532 m!579555))

(assert (=> b!602532 m!579555))

(assert (=> b!602532 m!579565))

(assert (=> bm!33001 m!579555))

(declare-fun m!579701 () Bool)

(assert (=> bm!33001 m!579701))

(assert (=> b!602534 m!579555))

(assert (=> b!602534 m!579555))

(assert (=> b!602534 m!579565))

(assert (=> b!602535 m!579555))

(assert (=> b!602535 m!579555))

(declare-fun m!579703 () Bool)

(assert (=> b!602535 m!579703))

(assert (=> b!602185 d!87229))

(declare-fun d!87233 () Bool)

(assert (=> d!87233 (= (validKeyInArray!0 k!1786) (and (not (= k!1786 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1786 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!602166 d!87233))

(declare-fun d!87235 () Bool)

(declare-fun e!344655 () Bool)

(assert (=> d!87235 e!344655))

(declare-fun res!387004 () Bool)

(assert (=> d!87235 (=> (not res!387004) (not e!344655))))

(assert (=> d!87235 (= res!387004 (and (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18190 a!2986)) (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18190 a!2986)))) (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18190 a!2986)) (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18190 a!2986)))) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18190 a!2986))))))

(declare-fun lt!274522 () Unit!19066)

(declare-fun choose!9 (array!37143 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19066)

(assert (=> d!87235 (= lt!274522 (choose!9 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!274332 vacantSpotIndex!68 mask!3053))))

(assert (=> d!87235 (validMask!0 mask!3053)))

(assert (=> d!87235 (= (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!274332 vacantSpotIndex!68 mask!3053) lt!274522)))

(declare-fun b!602560 () Bool)

(assert (=> b!602560 (= e!344655 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!274332 vacantSpotIndex!68 (select (arr!17826 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!274332 vacantSpotIndex!68 (select (store (arr!17826 a!2986) i!1108 k!1786) j!136) (array!37144 (store (arr!17826 a!2986) i!1108 k!1786) (size!18190 a!2986)) mask!3053)))))

(assert (= (and d!87235 res!387004) b!602560))

(declare-fun m!579723 () Bool)

(assert (=> d!87235 m!579723))

(assert (=> d!87235 m!579357))

(assert (=> b!602560 m!579339))

(assert (=> b!602560 m!579367))

(assert (=> b!602560 m!579339))

(assert (=> b!602560 m!579373))

(assert (=> b!602560 m!579367))

(declare-fun m!579725 () Bool)

(assert (=> b!602560 m!579725))

(assert (=> b!602560 m!579369))

(assert (=> b!602177 d!87235))

(declare-fun b!602561 () Bool)

(declare-fun e!344658 () SeekEntryResult!6273)

(assert (=> b!602561 (= e!344658 (Found!6273 index!984))))

(declare-fun b!602562 () Bool)

(declare-fun e!344656 () SeekEntryResult!6273)

(assert (=> b!602562 (= e!344656 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 lt!274326 lt!274320 mask!3053))))

(declare-fun b!602563 () Bool)

(assert (=> b!602563 (= e!344656 (MissingVacant!6273 vacantSpotIndex!68))))

(declare-fun b!602564 () Bool)

(declare-fun e!344657 () SeekEntryResult!6273)

(assert (=> b!602564 (= e!344657 Undefined!6273)))

(declare-fun b!602565 () Bool)

(declare-fun c!68147 () Bool)

(declare-fun lt!274523 () (_ BitVec 64))

(assert (=> b!602565 (= c!68147 (= lt!274523 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!602565 (= e!344658 e!344656)))

(declare-fun d!87247 () Bool)

(declare-fun lt!274524 () SeekEntryResult!6273)

(assert (=> d!87247 (and (or (is-Undefined!6273 lt!274524) (not (is-Found!6273 lt!274524)) (and (bvsge (index!27352 lt!274524) #b00000000000000000000000000000000) (bvslt (index!27352 lt!274524) (size!18190 lt!274320)))) (or (is-Undefined!6273 lt!274524) (is-Found!6273 lt!274524) (not (is-MissingVacant!6273 lt!274524)) (not (= (index!27354 lt!274524) vacantSpotIndex!68)) (and (bvsge (index!27354 lt!274524) #b00000000000000000000000000000000) (bvslt (index!27354 lt!274524) (size!18190 lt!274320)))) (or (is-Undefined!6273 lt!274524) (ite (is-Found!6273 lt!274524) (= (select (arr!17826 lt!274320) (index!27352 lt!274524)) lt!274326) (and (is-MissingVacant!6273 lt!274524) (= (index!27354 lt!274524) vacantSpotIndex!68) (= (select (arr!17826 lt!274320) (index!27354 lt!274524)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!87247 (= lt!274524 e!344657)))

(declare-fun c!68145 () Bool)

(assert (=> d!87247 (= c!68145 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!87247 (= lt!274523 (select (arr!17826 lt!274320) index!984))))

(assert (=> d!87247 (validMask!0 mask!3053)))

(assert (=> d!87247 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!274326 lt!274320 mask!3053) lt!274524)))

(declare-fun b!602566 () Bool)

(assert (=> b!602566 (= e!344657 e!344658)))

(declare-fun c!68146 () Bool)

(assert (=> b!602566 (= c!68146 (= lt!274523 lt!274326))))

(assert (= (and d!87247 c!68145) b!602564))

(assert (= (and d!87247 (not c!68145)) b!602566))

(assert (= (and b!602566 c!68146) b!602561))

(assert (= (and b!602566 (not c!68146)) b!602565))

(assert (= (and b!602565 c!68147) b!602563))

(assert (= (and b!602565 (not c!68147)) b!602562))

(assert (=> b!602562 m!579365))

(assert (=> b!602562 m!579365))

(declare-fun m!579727 () Bool)

(assert (=> b!602562 m!579727))

(declare-fun m!579729 () Bool)

(assert (=> d!87247 m!579729))

(declare-fun m!579731 () Bool)

(assert (=> d!87247 m!579731))

(declare-fun m!579733 () Bool)

(assert (=> d!87247 m!579733))

(assert (=> d!87247 m!579357))

(assert (=> b!602177 d!87247))

(declare-fun d!87249 () Bool)

(declare-fun lt!274530 () (_ BitVec 32))

(assert (=> d!87249 (and (bvsge lt!274530 #b00000000000000000000000000000000) (bvslt lt!274530 (bvadd mask!3053 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!87249 (= lt!274530 (choose!52 index!984 x!910 mask!3053))))

(assert (=> d!87249 (validMask!0 mask!3053)))

(assert (=> d!87249 (= (nextIndex!0 index!984 x!910 mask!3053) lt!274530)))

(declare-fun bs!18465 () Bool)

(assert (= bs!18465 d!87249))

(declare-fun m!579749 () Bool)

(assert (=> bs!18465 m!579749))

(assert (=> bs!18465 m!579357))

(assert (=> b!602177 d!87249))

(declare-fun b!602579 () Bool)

(declare-fun e!344667 () SeekEntryResult!6273)

(assert (=> b!602579 (= e!344667 (Found!6273 lt!274332))))

(declare-fun b!602580 () Bool)

(declare-fun e!344665 () SeekEntryResult!6273)

(assert (=> b!602580 (= e!344665 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!274332 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 lt!274326 lt!274320 mask!3053))))

(declare-fun b!602581 () Bool)

