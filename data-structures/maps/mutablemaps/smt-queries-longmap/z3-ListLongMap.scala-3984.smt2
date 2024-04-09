; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53994 () Bool)

(assert start!53994)

(declare-fun b!589353 () Bool)

(declare-fun e!336473 () Bool)

(declare-datatypes ((SeekEntryResult!6112 0))(
  ( (MissingZero!6112 (index!26678 (_ BitVec 32))) (Found!6112 (index!26679 (_ BitVec 32))) (Intermediate!6112 (undefined!6924 Bool) (index!26680 (_ BitVec 32)) (x!55497 (_ BitVec 32))) (Undefined!6112) (MissingVacant!6112 (index!26681 (_ BitVec 32))) )
))
(declare-fun lt!267368 () SeekEntryResult!6112)

(declare-fun lt!267367 () SeekEntryResult!6112)

(assert (=> b!589353 (= e!336473 (= lt!267368 lt!267367))))

(declare-fun b!589354 () Bool)

(declare-fun res!377007 () Bool)

(declare-fun e!336470 () Bool)

(assert (=> b!589354 (=> (not res!377007) (not e!336470))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!589354 (= res!377007 (validKeyInArray!0 k0!1786))))

(declare-fun b!589355 () Bool)

(declare-fun e!336471 () Bool)

(declare-fun lt!267366 () (_ BitVec 64))

(assert (=> b!589355 (= e!336471 (validKeyInArray!0 lt!267366))))

(declare-fun b!589356 () Bool)

(declare-fun e!336468 () Bool)

(assert (=> b!589356 (= e!336470 e!336468)))

(declare-fun res!377012 () Bool)

(assert (=> b!589356 (=> (not res!377012) (not e!336468))))

(declare-fun lt!267363 () SeekEntryResult!6112)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!589356 (= res!377012 (or (= lt!267363 (MissingZero!6112 i!1108)) (= lt!267363 (MissingVacant!6112 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-datatypes ((array!36792 0))(
  ( (array!36793 (arr!17665 (Array (_ BitVec 32) (_ BitVec 64))) (size!18029 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36792)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36792 (_ BitVec 32)) SeekEntryResult!6112)

(assert (=> b!589356 (= lt!267363 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!589357 () Bool)

(declare-datatypes ((Unit!18392 0))(
  ( (Unit!18393) )
))
(declare-fun e!336474 () Unit!18392)

(declare-fun Unit!18394 () Unit!18392)

(assert (=> b!589357 (= e!336474 Unit!18394)))

(assert (=> b!589357 false))

(declare-fun b!589359 () Bool)

(declare-fun e!336475 () Bool)

(assert (=> b!589359 (= e!336475 (not e!336471))))

(declare-fun res!377015 () Bool)

(assert (=> b!589359 (=> res!377015 e!336471)))

(assert (=> b!589359 (= res!377015 (bvslt mask!3053 #b00000000000000000000000000000000))))

(declare-fun lt!267364 () Unit!18392)

(assert (=> b!589359 (= lt!267364 e!336474)))

(declare-fun lt!267365 () array!36792)

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun c!66542 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36792 (_ BitVec 32)) SeekEntryResult!6112)

(assert (=> b!589359 (= c!66542 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!267366 lt!267365 mask!3053) Undefined!6112))))

(assert (=> b!589359 e!336473))

(declare-fun res!377014 () Bool)

(assert (=> b!589359 (=> (not res!377014) (not e!336473))))

(declare-fun lt!267362 () (_ BitVec 32))

(assert (=> b!589359 (= res!377014 (= lt!267367 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!267362 vacantSpotIndex!68 lt!267366 lt!267365 mask!3053)))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!589359 (= lt!267367 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!267362 vacantSpotIndex!68 (select (arr!17665 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!589359 (= lt!267366 (select (store (arr!17665 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!267361 () Unit!18392)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36792 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18392)

(assert (=> b!589359 (= lt!267361 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!267362 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!589359 (= lt!267362 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!589360 () Bool)

(declare-fun e!336472 () Bool)

(assert (=> b!589360 (= e!336472 e!336475)))

(declare-fun res!377006 () Bool)

(assert (=> b!589360 (=> (not res!377006) (not e!336475))))

(assert (=> b!589360 (= res!377006 (and (= lt!267368 (Found!6112 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17665 a!2986) index!984) (select (arr!17665 a!2986) j!136))) (not (= (select (arr!17665 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!589360 (= lt!267368 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17665 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!589361 () Bool)

(declare-fun Unit!18395 () Unit!18392)

(assert (=> b!589361 (= e!336474 Unit!18395)))

(declare-fun b!589362 () Bool)

(declare-fun res!377008 () Bool)

(assert (=> b!589362 (=> (not res!377008) (not e!336470))))

(declare-fun arrayContainsKey!0 (array!36792 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!589362 (= res!377008 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!589363 () Bool)

(declare-fun res!377005 () Bool)

(assert (=> b!589363 (=> (not res!377005) (not e!336470))))

(assert (=> b!589363 (= res!377005 (and (= (size!18029 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18029 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18029 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!589364 () Bool)

(declare-fun res!377009 () Bool)

(assert (=> b!589364 (=> (not res!377009) (not e!336470))))

(assert (=> b!589364 (= res!377009 (validKeyInArray!0 (select (arr!17665 a!2986) j!136)))))

(declare-fun b!589365 () Bool)

(declare-fun res!377010 () Bool)

(assert (=> b!589365 (=> (not res!377010) (not e!336468))))

(assert (=> b!589365 (= res!377010 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17665 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!589366 () Bool)

(assert (=> b!589366 (= e!336468 e!336472)))

(declare-fun res!377004 () Bool)

(assert (=> b!589366 (=> (not res!377004) (not e!336472))))

(assert (=> b!589366 (= res!377004 (= (select (store (arr!17665 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!589366 (= lt!267365 (array!36793 (store (arr!17665 a!2986) i!1108 k0!1786) (size!18029 a!2986)))))

(declare-fun b!589367 () Bool)

(declare-fun res!377011 () Bool)

(assert (=> b!589367 (=> (not res!377011) (not e!336468))))

(declare-datatypes ((List!11759 0))(
  ( (Nil!11756) (Cons!11755 (h!12800 (_ BitVec 64)) (t!17995 List!11759)) )
))
(declare-fun arrayNoDuplicates!0 (array!36792 (_ BitVec 32) List!11759) Bool)

(assert (=> b!589367 (= res!377011 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11756))))

(declare-fun b!589358 () Bool)

(declare-fun res!377003 () Bool)

(assert (=> b!589358 (=> (not res!377003) (not e!336468))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36792 (_ BitVec 32)) Bool)

(assert (=> b!589358 (= res!377003 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun res!377013 () Bool)

(assert (=> start!53994 (=> (not res!377013) (not e!336470))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53994 (= res!377013 (validMask!0 mask!3053))))

(assert (=> start!53994 e!336470))

(assert (=> start!53994 true))

(declare-fun array_inv!13439 (array!36792) Bool)

(assert (=> start!53994 (array_inv!13439 a!2986)))

(assert (= (and start!53994 res!377013) b!589363))

(assert (= (and b!589363 res!377005) b!589364))

(assert (= (and b!589364 res!377009) b!589354))

(assert (= (and b!589354 res!377007) b!589362))

(assert (= (and b!589362 res!377008) b!589356))

(assert (= (and b!589356 res!377012) b!589358))

(assert (= (and b!589358 res!377003) b!589367))

(assert (= (and b!589367 res!377011) b!589365))

(assert (= (and b!589365 res!377010) b!589366))

(assert (= (and b!589366 res!377004) b!589360))

(assert (= (and b!589360 res!377006) b!589359))

(assert (= (and b!589359 res!377014) b!589353))

(assert (= (and b!589359 c!66542) b!589357))

(assert (= (and b!589359 (not c!66542)) b!589361))

(assert (= (and b!589359 (not res!377015)) b!589355))

(declare-fun m!567925 () Bool)

(assert (=> b!589358 m!567925))

(declare-fun m!567927 () Bool)

(assert (=> b!589364 m!567927))

(assert (=> b!589364 m!567927))

(declare-fun m!567929 () Bool)

(assert (=> b!589364 m!567929))

(declare-fun m!567931 () Bool)

(assert (=> start!53994 m!567931))

(declare-fun m!567933 () Bool)

(assert (=> start!53994 m!567933))

(declare-fun m!567935 () Bool)

(assert (=> b!589356 m!567935))

(declare-fun m!567937 () Bool)

(assert (=> b!589359 m!567937))

(assert (=> b!589359 m!567927))

(declare-fun m!567939 () Bool)

(assert (=> b!589359 m!567939))

(declare-fun m!567941 () Bool)

(assert (=> b!589359 m!567941))

(declare-fun m!567943 () Bool)

(assert (=> b!589359 m!567943))

(assert (=> b!589359 m!567927))

(declare-fun m!567945 () Bool)

(assert (=> b!589359 m!567945))

(declare-fun m!567947 () Bool)

(assert (=> b!589359 m!567947))

(declare-fun m!567949 () Bool)

(assert (=> b!589359 m!567949))

(declare-fun m!567951 () Bool)

(assert (=> b!589360 m!567951))

(assert (=> b!589360 m!567927))

(assert (=> b!589360 m!567927))

(declare-fun m!567953 () Bool)

(assert (=> b!589360 m!567953))

(declare-fun m!567955 () Bool)

(assert (=> b!589365 m!567955))

(declare-fun m!567957 () Bool)

(assert (=> b!589362 m!567957))

(assert (=> b!589366 m!567941))

(declare-fun m!567959 () Bool)

(assert (=> b!589366 m!567959))

(declare-fun m!567961 () Bool)

(assert (=> b!589367 m!567961))

(declare-fun m!567963 () Bool)

(assert (=> b!589354 m!567963))

(declare-fun m!567965 () Bool)

(assert (=> b!589355 m!567965))

(check-sat (not b!589360) (not b!589362) (not b!589355) (not b!589367) (not b!589358) (not b!589356) (not start!53994) (not b!589354) (not b!589364) (not b!589359))
(check-sat)
