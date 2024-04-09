; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!57834 () Bool)

(assert start!57834)

(declare-fun b!639371 () Bool)

(declare-fun res!414079 () Bool)

(declare-fun e!365947 () Bool)

(assert (=> b!639371 (=> (not res!414079) (not e!365947))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-datatypes ((array!38292 0))(
  ( (array!38293 (arr!18363 (Array (_ BitVec 32) (_ BitVec 64))) (size!18727 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38292)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!639371 (= res!414079 (and (= (size!18727 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18727 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18727 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!639372 () Bool)

(declare-fun res!414085 () Bool)

(declare-fun e!365940 () Bool)

(assert (=> b!639372 (=> (not res!414085) (not e!365940))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!639372 (= res!414085 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18363 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!639373 () Bool)

(declare-fun res!414074 () Bool)

(assert (=> b!639373 (=> (not res!414074) (not e!365947))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!38292 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!639373 (= res!414074 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!639374 () Bool)

(declare-fun e!365946 () Bool)

(assert (=> b!639374 (= e!365940 e!365946)))

(declare-fun res!414080 () Bool)

(assert (=> b!639374 (=> (not res!414080) (not e!365946))))

(assert (=> b!639374 (= res!414080 (= (select (store (arr!18363 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!295856 () array!38292)

(assert (=> b!639374 (= lt!295856 (array!38293 (store (arr!18363 a!2986) i!1108 k!1786) (size!18727 a!2986)))))

(declare-fun b!639375 () Bool)

(declare-fun e!365942 () Bool)

(assert (=> b!639375 (= e!365942 (arrayContainsKey!0 lt!295856 (select (arr!18363 a!2986) j!136) index!984))))

(declare-fun b!639377 () Bool)

(declare-fun e!365943 () Bool)

(assert (=> b!639377 (= e!365946 e!365943)))

(declare-fun res!414073 () Bool)

(assert (=> b!639377 (=> (not res!414073) (not e!365943))))

(declare-datatypes ((SeekEntryResult!6810 0))(
  ( (MissingZero!6810 (index!29556 (_ BitVec 32))) (Found!6810 (index!29557 (_ BitVec 32))) (Intermediate!6810 (undefined!7622 Bool) (index!29558 (_ BitVec 32)) (x!58342 (_ BitVec 32))) (Undefined!6810) (MissingVacant!6810 (index!29559 (_ BitVec 32))) )
))
(declare-fun lt!295846 () SeekEntryResult!6810)

(assert (=> b!639377 (= res!414073 (and (= lt!295846 (Found!6810 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18363 a!2986) index!984) (select (arr!18363 a!2986) j!136))) (not (= (select (arr!18363 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38292 (_ BitVec 32)) SeekEntryResult!6810)

(assert (=> b!639377 (= lt!295846 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18363 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!639378 () Bool)

(declare-fun res!414084 () Bool)

(assert (=> b!639378 (=> (not res!414084) (not e!365940))))

(declare-datatypes ((List!12457 0))(
  ( (Nil!12454) (Cons!12453 (h!13498 (_ BitVec 64)) (t!18693 List!12457)) )
))
(declare-fun arrayNoDuplicates!0 (array!38292 (_ BitVec 32) List!12457) Bool)

(assert (=> b!639378 (= res!414084 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12454))))

(declare-fun b!639379 () Bool)

(declare-datatypes ((Unit!21598 0))(
  ( (Unit!21599) )
))
(declare-fun e!365945 () Unit!21598)

(declare-fun Unit!21600 () Unit!21598)

(assert (=> b!639379 (= e!365945 Unit!21600)))

(declare-fun b!639380 () Bool)

(declare-fun e!365944 () Bool)

(declare-fun e!365939 () Bool)

(assert (=> b!639380 (= e!365944 e!365939)))

(declare-fun res!414086 () Bool)

(assert (=> b!639380 (=> res!414086 e!365939)))

(declare-fun lt!295857 () (_ BitVec 64))

(declare-fun lt!295848 () (_ BitVec 64))

(assert (=> b!639380 (= res!414086 (or (not (= (select (arr!18363 a!2986) j!136) lt!295848)) (not (= (select (arr!18363 a!2986) j!136) lt!295857)) (bvsge j!136 index!984)))))

(declare-fun e!365938 () Bool)

(assert (=> b!639380 e!365938))

(declare-fun res!414089 () Bool)

(assert (=> b!639380 (=> (not res!414089) (not e!365938))))

(assert (=> b!639380 (= res!414089 (= lt!295857 (select (arr!18363 a!2986) j!136)))))

(assert (=> b!639380 (= lt!295857 (select (store (arr!18363 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!639381 () Bool)

(declare-fun res!414082 () Bool)

(assert (=> b!639381 (=> (not res!414082) (not e!365940))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38292 (_ BitVec 32)) Bool)

(assert (=> b!639381 (= res!414082 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!639382 () Bool)

(assert (=> b!639382 (= e!365947 e!365940)))

(declare-fun res!414075 () Bool)

(assert (=> b!639382 (=> (not res!414075) (not e!365940))))

(declare-fun lt!295854 () SeekEntryResult!6810)

(assert (=> b!639382 (= res!414075 (or (= lt!295854 (MissingZero!6810 i!1108)) (= lt!295854 (MissingVacant!6810 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38292 (_ BitVec 32)) SeekEntryResult!6810)

(assert (=> b!639382 (= lt!295854 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!639383 () Bool)

(assert (=> b!639383 (= e!365939 true)))

(assert (=> b!639383 (arrayNoDuplicates!0 lt!295856 #b00000000000000000000000000000000 Nil!12454)))

(declare-fun lt!295852 () Unit!21598)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38292 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12457) Unit!21598)

(assert (=> b!639383 (= lt!295852 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12454))))

(assert (=> b!639383 (arrayContainsKey!0 lt!295856 (select (arr!18363 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!295849 () Unit!21598)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38292 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21598)

(assert (=> b!639383 (= lt!295849 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!295856 (select (arr!18363 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!639384 () Bool)

(assert (=> b!639384 (= e!365943 (not e!365944))))

(declare-fun res!414078 () Bool)

(assert (=> b!639384 (=> res!414078 e!365944)))

(declare-fun lt!295850 () SeekEntryResult!6810)

(assert (=> b!639384 (= res!414078 (not (= lt!295850 (Found!6810 index!984))))))

(declare-fun lt!295847 () Unit!21598)

(assert (=> b!639384 (= lt!295847 e!365945)))

(declare-fun c!73016 () Bool)

(assert (=> b!639384 (= c!73016 (= lt!295850 Undefined!6810))))

(assert (=> b!639384 (= lt!295850 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!295848 lt!295856 mask!3053))))

(declare-fun e!365937 () Bool)

(assert (=> b!639384 e!365937))

(declare-fun res!414076 () Bool)

(assert (=> b!639384 (=> (not res!414076) (not e!365937))))

(declare-fun lt!295853 () (_ BitVec 32))

(declare-fun lt!295851 () SeekEntryResult!6810)

(assert (=> b!639384 (= res!414076 (= lt!295851 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!295853 vacantSpotIndex!68 lt!295848 lt!295856 mask!3053)))))

(assert (=> b!639384 (= lt!295851 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!295853 vacantSpotIndex!68 (select (arr!18363 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!639384 (= lt!295848 (select (store (arr!18363 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!295855 () Unit!21598)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38292 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21598)

(assert (=> b!639384 (= lt!295855 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!295853 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!639384 (= lt!295853 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!639385 () Bool)

(declare-fun e!365941 () Bool)

(assert (=> b!639385 (= e!365941 e!365942)))

(declare-fun res!414087 () Bool)

(assert (=> b!639385 (=> (not res!414087) (not e!365942))))

(assert (=> b!639385 (= res!414087 (arrayContainsKey!0 lt!295856 (select (arr!18363 a!2986) j!136) j!136))))

(declare-fun b!639386 () Bool)

(declare-fun res!414081 () Bool)

(assert (=> b!639386 (=> (not res!414081) (not e!365947))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!639386 (= res!414081 (validKeyInArray!0 (select (arr!18363 a!2986) j!136)))))

(declare-fun b!639387 () Bool)

(declare-fun res!414077 () Bool)

(assert (=> b!639387 (=> (not res!414077) (not e!365947))))

(assert (=> b!639387 (= res!414077 (validKeyInArray!0 k!1786))))

(declare-fun b!639376 () Bool)

(assert (=> b!639376 (= e!365937 (= lt!295846 lt!295851))))

(declare-fun res!414088 () Bool)

(assert (=> start!57834 (=> (not res!414088) (not e!365947))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57834 (= res!414088 (validMask!0 mask!3053))))

(assert (=> start!57834 e!365947))

(assert (=> start!57834 true))

(declare-fun array_inv!14137 (array!38292) Bool)

(assert (=> start!57834 (array_inv!14137 a!2986)))

(declare-fun b!639388 () Bool)

(assert (=> b!639388 (= e!365938 e!365941)))

(declare-fun res!414083 () Bool)

(assert (=> b!639388 (=> res!414083 e!365941)))

(assert (=> b!639388 (= res!414083 (or (not (= (select (arr!18363 a!2986) j!136) lt!295848)) (not (= (select (arr!18363 a!2986) j!136) lt!295857)) (bvsge j!136 index!984)))))

(declare-fun b!639389 () Bool)

(declare-fun Unit!21601 () Unit!21598)

(assert (=> b!639389 (= e!365945 Unit!21601)))

(assert (=> b!639389 false))

(assert (= (and start!57834 res!414088) b!639371))

(assert (= (and b!639371 res!414079) b!639386))

(assert (= (and b!639386 res!414081) b!639387))

(assert (= (and b!639387 res!414077) b!639373))

(assert (= (and b!639373 res!414074) b!639382))

(assert (= (and b!639382 res!414075) b!639381))

(assert (= (and b!639381 res!414082) b!639378))

(assert (= (and b!639378 res!414084) b!639372))

(assert (= (and b!639372 res!414085) b!639374))

(assert (= (and b!639374 res!414080) b!639377))

(assert (= (and b!639377 res!414073) b!639384))

(assert (= (and b!639384 res!414076) b!639376))

(assert (= (and b!639384 c!73016) b!639389))

(assert (= (and b!639384 (not c!73016)) b!639379))

(assert (= (and b!639384 (not res!414078)) b!639380))

(assert (= (and b!639380 res!414089) b!639388))

(assert (= (and b!639388 (not res!414083)) b!639385))

(assert (= (and b!639385 res!414087) b!639375))

(assert (= (and b!639380 (not res!414086)) b!639383))

(declare-fun m!613299 () Bool)

(assert (=> b!639383 m!613299))

(assert (=> b!639383 m!613299))

(declare-fun m!613301 () Bool)

(assert (=> b!639383 m!613301))

(assert (=> b!639383 m!613299))

(declare-fun m!613303 () Bool)

(assert (=> b!639383 m!613303))

(declare-fun m!613305 () Bool)

(assert (=> b!639383 m!613305))

(declare-fun m!613307 () Bool)

(assert (=> b!639383 m!613307))

(declare-fun m!613309 () Bool)

(assert (=> b!639378 m!613309))

(assert (=> b!639388 m!613299))

(declare-fun m!613311 () Bool)

(assert (=> start!57834 m!613311))

(declare-fun m!613313 () Bool)

(assert (=> start!57834 m!613313))

(declare-fun m!613315 () Bool)

(assert (=> b!639382 m!613315))

(assert (=> b!639375 m!613299))

(assert (=> b!639375 m!613299))

(declare-fun m!613317 () Bool)

(assert (=> b!639375 m!613317))

(assert (=> b!639386 m!613299))

(assert (=> b!639386 m!613299))

(declare-fun m!613319 () Bool)

(assert (=> b!639386 m!613319))

(declare-fun m!613321 () Bool)

(assert (=> b!639381 m!613321))

(assert (=> b!639380 m!613299))

(declare-fun m!613323 () Bool)

(assert (=> b!639380 m!613323))

(declare-fun m!613325 () Bool)

(assert (=> b!639380 m!613325))

(declare-fun m!613327 () Bool)

(assert (=> b!639377 m!613327))

(assert (=> b!639377 m!613299))

(assert (=> b!639377 m!613299))

(declare-fun m!613329 () Bool)

(assert (=> b!639377 m!613329))

(assert (=> b!639374 m!613323))

(declare-fun m!613331 () Bool)

(assert (=> b!639374 m!613331))

(declare-fun m!613333 () Bool)

(assert (=> b!639373 m!613333))

(assert (=> b!639385 m!613299))

(assert (=> b!639385 m!613299))

(declare-fun m!613335 () Bool)

(assert (=> b!639385 m!613335))

(declare-fun m!613337 () Bool)

(assert (=> b!639384 m!613337))

(declare-fun m!613339 () Bool)

(assert (=> b!639384 m!613339))

(assert (=> b!639384 m!613299))

(assert (=> b!639384 m!613323))

(declare-fun m!613341 () Bool)

(assert (=> b!639384 m!613341))

(assert (=> b!639384 m!613299))

(declare-fun m!613343 () Bool)

(assert (=> b!639384 m!613343))

(declare-fun m!613345 () Bool)

(assert (=> b!639384 m!613345))

(declare-fun m!613347 () Bool)

(assert (=> b!639384 m!613347))

(declare-fun m!613349 () Bool)

(assert (=> b!639372 m!613349))

(declare-fun m!613351 () Bool)

(assert (=> b!639387 m!613351))

(push 1)

