; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!57702 () Bool)

(assert start!57702)

(declare-fun b!637177 () Bool)

(declare-fun e!364605 () Bool)

(assert (=> b!637177 (= e!364605 true)))

(declare-fun lt!294644 () Bool)

(declare-fun k!1786 () (_ BitVec 64))

(declare-datatypes ((List!12427 0))(
  ( (Nil!12424) (Cons!12423 (h!13468 (_ BitVec 64)) (t!18663 List!12427)) )
))
(declare-fun contains!3110 (List!12427 (_ BitVec 64)) Bool)

(assert (=> b!637177 (= lt!294644 (contains!3110 Nil!12424 k!1786))))

(declare-fun b!637178 () Bool)

(declare-fun e!364615 () Bool)

(declare-fun e!364613 () Bool)

(assert (=> b!637178 (= e!364615 e!364613)))

(declare-fun res!412270 () Bool)

(assert (=> b!637178 (=> res!412270 e!364613)))

(declare-fun lt!294650 () (_ BitVec 64))

(declare-fun lt!294651 () (_ BitVec 64))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!38229 0))(
  ( (array!38230 (arr!18333 (Array (_ BitVec 32) (_ BitVec 64))) (size!18697 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38229)

(assert (=> b!637178 (= res!412270 (or (not (= (select (arr!18333 a!2986) j!136) lt!294651)) (not (= (select (arr!18333 a!2986) j!136) lt!294650)) (bvsge j!136 index!984)))))

(declare-fun e!364604 () Bool)

(assert (=> b!637178 e!364604))

(declare-fun res!412278 () Bool)

(assert (=> b!637178 (=> (not res!412278) (not e!364604))))

(assert (=> b!637178 (= res!412278 (= lt!294650 (select (arr!18333 a!2986) j!136)))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!637178 (= lt!294650 (select (store (arr!18333 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!637179 () Bool)

(declare-fun lt!294645 () array!38229)

(declare-fun e!364609 () Bool)

(declare-fun arrayContainsKey!0 (array!38229 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!637179 (= e!364609 (arrayContainsKey!0 lt!294645 (select (arr!18333 a!2986) j!136) index!984))))

(declare-fun b!637180 () Bool)

(declare-fun e!364603 () Bool)

(assert (=> b!637180 (= e!364603 (not e!364615))))

(declare-fun res!412276 () Bool)

(assert (=> b!637180 (=> res!412276 e!364615)))

(declare-datatypes ((SeekEntryResult!6780 0))(
  ( (MissingZero!6780 (index!29433 (_ BitVec 32))) (Found!6780 (index!29434 (_ BitVec 32))) (Intermediate!6780 (undefined!7592 Bool) (index!29435 (_ BitVec 32)) (x!58223 (_ BitVec 32))) (Undefined!6780) (MissingVacant!6780 (index!29436 (_ BitVec 32))) )
))
(declare-fun lt!294640 () SeekEntryResult!6780)

(assert (=> b!637180 (= res!412276 (not (= lt!294640 (Found!6780 index!984))))))

(declare-datatypes ((Unit!21478 0))(
  ( (Unit!21479) )
))
(declare-fun lt!294642 () Unit!21478)

(declare-fun e!364614 () Unit!21478)

(assert (=> b!637180 (= lt!294642 e!364614)))

(declare-fun c!72824 () Bool)

(assert (=> b!637180 (= c!72824 (= lt!294640 Undefined!6780))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38229 (_ BitVec 32)) SeekEntryResult!6780)

(assert (=> b!637180 (= lt!294640 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!294651 lt!294645 mask!3053))))

(declare-fun e!364607 () Bool)

(assert (=> b!637180 e!364607))

(declare-fun res!412272 () Bool)

(assert (=> b!637180 (=> (not res!412272) (not e!364607))))

(declare-fun lt!294646 () SeekEntryResult!6780)

(declare-fun lt!294648 () (_ BitVec 32))

(assert (=> b!637180 (= res!412272 (= lt!294646 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!294648 vacantSpotIndex!68 lt!294651 lt!294645 mask!3053)))))

(assert (=> b!637180 (= lt!294646 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!294648 vacantSpotIndex!68 (select (arr!18333 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!637180 (= lt!294651 (select (store (arr!18333 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!294649 () Unit!21478)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38229 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21478)

(assert (=> b!637180 (= lt!294649 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!294648 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!637180 (= lt!294648 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun res!412273 () Bool)

(declare-fun e!364611 () Bool)

(assert (=> start!57702 (=> (not res!412273) (not e!364611))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57702 (= res!412273 (validMask!0 mask!3053))))

(assert (=> start!57702 e!364611))

(assert (=> start!57702 true))

(declare-fun array_inv!14107 (array!38229) Bool)

(assert (=> start!57702 (array_inv!14107 a!2986)))

(declare-fun b!637181 () Bool)

(declare-fun lt!294641 () SeekEntryResult!6780)

(assert (=> b!637181 (= e!364607 (= lt!294641 lt!294646))))

(declare-fun b!637182 () Bool)

(declare-fun e!364608 () Bool)

(declare-fun e!364606 () Bool)

(assert (=> b!637182 (= e!364608 e!364606)))

(declare-fun res!412281 () Bool)

(assert (=> b!637182 (=> (not res!412281) (not e!364606))))

(assert (=> b!637182 (= res!412281 (= (select (store (arr!18333 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!637182 (= lt!294645 (array!38230 (store (arr!18333 a!2986) i!1108 k!1786) (size!18697 a!2986)))))

(declare-fun b!637183 () Bool)

(declare-fun res!412267 () Bool)

(assert (=> b!637183 (=> (not res!412267) (not e!364611))))

(assert (=> b!637183 (= res!412267 (and (= (size!18697 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18697 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18697 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!637184 () Bool)

(declare-fun res!412268 () Bool)

(assert (=> b!637184 (=> res!412268 e!364605)))

(assert (=> b!637184 (= res!412268 (contains!3110 Nil!12424 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!637185 () Bool)

(declare-fun Unit!21480 () Unit!21478)

(assert (=> b!637185 (= e!364614 Unit!21480)))

(assert (=> b!637185 false))

(declare-fun b!637186 () Bool)

(declare-fun res!412279 () Bool)

(assert (=> b!637186 (=> (not res!412279) (not e!364608))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38229 (_ BitVec 32)) Bool)

(assert (=> b!637186 (= res!412279 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!637187 () Bool)

(declare-fun res!412282 () Bool)

(assert (=> b!637187 (=> (not res!412282) (not e!364611))))

(assert (=> b!637187 (= res!412282 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!637188 () Bool)

(assert (=> b!637188 (= e!364606 e!364603)))

(declare-fun res!412275 () Bool)

(assert (=> b!637188 (=> (not res!412275) (not e!364603))))

(assert (=> b!637188 (= res!412275 (and (= lt!294641 (Found!6780 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18333 a!2986) index!984) (select (arr!18333 a!2986) j!136))) (not (= (select (arr!18333 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!637188 (= lt!294641 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18333 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!637189 () Bool)

(declare-fun res!412280 () Bool)

(assert (=> b!637189 (=> (not res!412280) (not e!364611))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!637189 (= res!412280 (validKeyInArray!0 (select (arr!18333 a!2986) j!136)))))

(declare-fun b!637190 () Bool)

(declare-fun res!412263 () Bool)

(assert (=> b!637190 (=> res!412263 e!364605)))

(assert (=> b!637190 (= res!412263 (contains!3110 Nil!12424 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!637191 () Bool)

(assert (=> b!637191 (= e!364613 e!364605)))

(declare-fun res!412266 () Bool)

(assert (=> b!637191 (=> res!412266 e!364605)))

(assert (=> b!637191 (= res!412266 (or (bvsge (size!18697 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18697 a!2986))))))

(assert (=> b!637191 (arrayContainsKey!0 lt!294645 (select (arr!18333 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!294643 () Unit!21478)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38229 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21478)

(assert (=> b!637191 (= lt!294643 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!294645 (select (arr!18333 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!637192 () Bool)

(declare-fun res!412264 () Bool)

(assert (=> b!637192 (=> (not res!412264) (not e!364611))))

(assert (=> b!637192 (= res!412264 (validKeyInArray!0 k!1786))))

(declare-fun b!637193 () Bool)

(declare-fun e!364610 () Bool)

(assert (=> b!637193 (= e!364610 e!364609)))

(declare-fun res!412269 () Bool)

(assert (=> b!637193 (=> (not res!412269) (not e!364609))))

(assert (=> b!637193 (= res!412269 (arrayContainsKey!0 lt!294645 (select (arr!18333 a!2986) j!136) j!136))))

(declare-fun b!637194 () Bool)

(assert (=> b!637194 (= e!364604 e!364610)))

(declare-fun res!412265 () Bool)

(assert (=> b!637194 (=> res!412265 e!364610)))

(assert (=> b!637194 (= res!412265 (or (not (= (select (arr!18333 a!2986) j!136) lt!294651)) (not (= (select (arr!18333 a!2986) j!136) lt!294650)) (bvsge j!136 index!984)))))

(declare-fun b!637195 () Bool)

(declare-fun res!412271 () Bool)

(assert (=> b!637195 (=> (not res!412271) (not e!364608))))

(declare-fun arrayNoDuplicates!0 (array!38229 (_ BitVec 32) List!12427) Bool)

(assert (=> b!637195 (= res!412271 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12424))))

(declare-fun b!637196 () Bool)

(declare-fun Unit!21481 () Unit!21478)

(assert (=> b!637196 (= e!364614 Unit!21481)))

(declare-fun b!637197 () Bool)

(declare-fun res!412277 () Bool)

(assert (=> b!637197 (=> (not res!412277) (not e!364608))))

(assert (=> b!637197 (= res!412277 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18333 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!637198 () Bool)

(declare-fun res!412283 () Bool)

(assert (=> b!637198 (=> res!412283 e!364605)))

(declare-fun noDuplicate!385 (List!12427) Bool)

(assert (=> b!637198 (= res!412283 (not (noDuplicate!385 Nil!12424)))))

(declare-fun b!637199 () Bool)

(assert (=> b!637199 (= e!364611 e!364608)))

(declare-fun res!412274 () Bool)

(assert (=> b!637199 (=> (not res!412274) (not e!364608))))

(declare-fun lt!294647 () SeekEntryResult!6780)

(assert (=> b!637199 (= res!412274 (or (= lt!294647 (MissingZero!6780 i!1108)) (= lt!294647 (MissingVacant!6780 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38229 (_ BitVec 32)) SeekEntryResult!6780)

(assert (=> b!637199 (= lt!294647 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(assert (= (and start!57702 res!412273) b!637183))

(assert (= (and b!637183 res!412267) b!637189))

(assert (= (and b!637189 res!412280) b!637192))

(assert (= (and b!637192 res!412264) b!637187))

(assert (= (and b!637187 res!412282) b!637199))

(assert (= (and b!637199 res!412274) b!637186))

(assert (= (and b!637186 res!412279) b!637195))

(assert (= (and b!637195 res!412271) b!637197))

(assert (= (and b!637197 res!412277) b!637182))

(assert (= (and b!637182 res!412281) b!637188))

(assert (= (and b!637188 res!412275) b!637180))

(assert (= (and b!637180 res!412272) b!637181))

(assert (= (and b!637180 c!72824) b!637185))

(assert (= (and b!637180 (not c!72824)) b!637196))

(assert (= (and b!637180 (not res!412276)) b!637178))

(assert (= (and b!637178 res!412278) b!637194))

(assert (= (and b!637194 (not res!412265)) b!637193))

(assert (= (and b!637193 res!412269) b!637179))

(assert (= (and b!637178 (not res!412270)) b!637191))

(assert (= (and b!637191 (not res!412266)) b!637198))

(assert (= (and b!637198 (not res!412283)) b!637184))

(assert (= (and b!637184 (not res!412268)) b!637190))

(assert (= (and b!637190 (not res!412263)) b!637177))

(declare-fun m!611337 () Bool)

(assert (=> b!637192 m!611337))

(declare-fun m!611339 () Bool)

(assert (=> b!637189 m!611339))

(assert (=> b!637189 m!611339))

(declare-fun m!611341 () Bool)

(assert (=> b!637189 m!611341))

(assert (=> b!637194 m!611339))

(declare-fun m!611343 () Bool)

(assert (=> b!637186 m!611343))

(declare-fun m!611345 () Bool)

(assert (=> b!637180 m!611345))

(declare-fun m!611347 () Bool)

(assert (=> b!637180 m!611347))

(declare-fun m!611349 () Bool)

(assert (=> b!637180 m!611349))

(assert (=> b!637180 m!611339))

(declare-fun m!611351 () Bool)

(assert (=> b!637180 m!611351))

(assert (=> b!637180 m!611339))

(declare-fun m!611353 () Bool)

(assert (=> b!637180 m!611353))

(declare-fun m!611355 () Bool)

(assert (=> b!637180 m!611355))

(declare-fun m!611357 () Bool)

(assert (=> b!637180 m!611357))

(declare-fun m!611359 () Bool)

(assert (=> b!637177 m!611359))

(declare-fun m!611361 () Bool)

(assert (=> b!637195 m!611361))

(declare-fun m!611363 () Bool)

(assert (=> start!57702 m!611363))

(declare-fun m!611365 () Bool)

(assert (=> start!57702 m!611365))

(assert (=> b!637179 m!611339))

(assert (=> b!637179 m!611339))

(declare-fun m!611367 () Bool)

(assert (=> b!637179 m!611367))

(declare-fun m!611369 () Bool)

(assert (=> b!637188 m!611369))

(assert (=> b!637188 m!611339))

(assert (=> b!637188 m!611339))

(declare-fun m!611371 () Bool)

(assert (=> b!637188 m!611371))

(declare-fun m!611373 () Bool)

(assert (=> b!637184 m!611373))

(declare-fun m!611375 () Bool)

(assert (=> b!637190 m!611375))

(assert (=> b!637178 m!611339))

(assert (=> b!637178 m!611351))

(declare-fun m!611377 () Bool)

(assert (=> b!637178 m!611377))

(declare-fun m!611379 () Bool)

(assert (=> b!637199 m!611379))

(assert (=> b!637193 m!611339))

(assert (=> b!637193 m!611339))

(declare-fun m!611381 () Bool)

(assert (=> b!637193 m!611381))

(declare-fun m!611383 () Bool)

(assert (=> b!637187 m!611383))

(assert (=> b!637191 m!611339))

(assert (=> b!637191 m!611339))

(declare-fun m!611385 () Bool)

(assert (=> b!637191 m!611385))

(assert (=> b!637191 m!611339))

(declare-fun m!611387 () Bool)

(assert (=> b!637191 m!611387))

(assert (=> b!637182 m!611351))

(declare-fun m!611389 () Bool)

(assert (=> b!637182 m!611389))

(declare-fun m!611391 () Bool)

(assert (=> b!637198 m!611391))

(declare-fun m!611393 () Bool)

(assert (=> b!637197 m!611393))

(push 1)

