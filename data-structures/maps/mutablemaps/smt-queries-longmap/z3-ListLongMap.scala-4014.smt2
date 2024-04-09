; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!54566 () Bool)

(assert start!54566)

(declare-fun b!596386 () Bool)

(declare-datatypes ((Unit!18752 0))(
  ( (Unit!18753) )
))
(declare-fun e!340750 () Unit!18752)

(declare-fun Unit!18754 () Unit!18752)

(assert (=> b!596386 (= e!340750 Unit!18754)))

(assert (=> b!596386 false))

(declare-fun b!596387 () Bool)

(declare-fun res!382342 () Bool)

(declare-fun e!340743 () Bool)

(assert (=> b!596387 (=> (not res!382342) (not e!340743))))

(declare-datatypes ((array!36989 0))(
  ( (array!36990 (arr!17755 (Array (_ BitVec 32) (_ BitVec 64))) (size!18119 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36989)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!596387 (= res!382342 (validKeyInArray!0 (select (arr!17755 a!2986) j!136)))))

(declare-fun b!596388 () Bool)

(declare-fun Unit!18755 () Unit!18752)

(assert (=> b!596388 (= e!340750 Unit!18755)))

(declare-fun b!596389 () Bool)

(declare-fun res!382351 () Bool)

(declare-fun e!340738 () Bool)

(assert (=> b!596389 (=> (not res!382351) (not e!340738))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36989 (_ BitVec 32)) Bool)

(assert (=> b!596389 (= res!382351 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!596390 () Bool)

(declare-fun e!340749 () Bool)

(assert (=> b!596390 (= e!340749 true)))

(declare-fun lt!270931 () Bool)

(declare-fun k0!1786 () (_ BitVec 64))

(declare-datatypes ((List!11849 0))(
  ( (Nil!11846) (Cons!11845 (h!12890 (_ BitVec 64)) (t!18085 List!11849)) )
))
(declare-fun contains!2953 (List!11849 (_ BitVec 64)) Bool)

(assert (=> b!596390 (= lt!270931 (contains!2953 Nil!11846 k0!1786))))

(declare-fun b!596391 () Bool)

(declare-fun res!382354 () Bool)

(assert (=> b!596391 (=> res!382354 e!340749)))

(assert (=> b!596391 (= res!382354 (contains!2953 Nil!11846 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!596392 () Bool)

(declare-fun res!382352 () Bool)

(assert (=> b!596392 (=> res!382352 e!340749)))

(declare-fun noDuplicate!269 (List!11849) Bool)

(assert (=> b!596392 (= res!382352 (not (noDuplicate!269 Nil!11846)))))

(declare-fun b!596393 () Bool)

(declare-fun e!340742 () Bool)

(assert (=> b!596393 (= e!340742 e!340749)))

(declare-fun res!382343 () Bool)

(assert (=> b!596393 (=> res!382343 e!340749)))

(assert (=> b!596393 (= res!382343 (or (bvsge (size!18119 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18119 a!2986))))))

(declare-fun lt!270925 () array!36989)

(declare-fun arrayContainsKey!0 (array!36989 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!596393 (arrayContainsKey!0 lt!270925 (select (arr!17755 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!270936 () Unit!18752)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!36989 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18752)

(assert (=> b!596393 (= lt!270936 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!270925 (select (arr!17755 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!596394 () Bool)

(declare-fun res!382358 () Bool)

(assert (=> b!596394 (=> (not res!382358) (not e!340743))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!596394 (= res!382358 (and (= (size!18119 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18119 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18119 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!596395 () Bool)

(declare-fun res!382344 () Bool)

(assert (=> b!596395 (=> (not res!382344) (not e!340738))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!596395 (= res!382344 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17755 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!596396 () Bool)

(assert (=> b!596396 (= e!340743 e!340738)))

(declare-fun res!382340 () Bool)

(assert (=> b!596396 (=> (not res!382340) (not e!340738))))

(declare-datatypes ((SeekEntryResult!6202 0))(
  ( (MissingZero!6202 (index!27055 (_ BitVec 32))) (Found!6202 (index!27056 (_ BitVec 32))) (Intermediate!6202 (undefined!7014 Bool) (index!27057 (_ BitVec 32)) (x!55879 (_ BitVec 32))) (Undefined!6202) (MissingVacant!6202 (index!27058 (_ BitVec 32))) )
))
(declare-fun lt!270933 () SeekEntryResult!6202)

(assert (=> b!596396 (= res!382340 (or (= lt!270933 (MissingZero!6202 i!1108)) (= lt!270933 (MissingVacant!6202 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36989 (_ BitVec 32)) SeekEntryResult!6202)

(assert (=> b!596396 (= lt!270933 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun res!382355 () Bool)

(assert (=> start!54566 (=> (not res!382355) (not e!340743))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54566 (= res!382355 (validMask!0 mask!3053))))

(assert (=> start!54566 e!340743))

(assert (=> start!54566 true))

(declare-fun array_inv!13529 (array!36989) Bool)

(assert (=> start!54566 (array_inv!13529 a!2986)))

(declare-fun b!596397 () Bool)

(declare-fun e!340745 () Bool)

(declare-fun e!340740 () Bool)

(assert (=> b!596397 (= e!340745 e!340740)))

(declare-fun res!382356 () Bool)

(assert (=> b!596397 (=> (not res!382356) (not e!340740))))

(declare-fun lt!270926 () SeekEntryResult!6202)

(assert (=> b!596397 (= res!382356 (and (= lt!270926 (Found!6202 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17755 a!2986) index!984) (select (arr!17755 a!2986) j!136))) (not (= (select (arr!17755 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36989 (_ BitVec 32)) SeekEntryResult!6202)

(assert (=> b!596397 (= lt!270926 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17755 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!596398 () Bool)

(declare-fun e!340739 () Bool)

(declare-fun e!340748 () Bool)

(assert (=> b!596398 (= e!340739 e!340748)))

(declare-fun res!382349 () Bool)

(assert (=> b!596398 (=> (not res!382349) (not e!340748))))

(assert (=> b!596398 (= res!382349 (arrayContainsKey!0 lt!270925 (select (arr!17755 a!2986) j!136) j!136))))

(declare-fun b!596399 () Bool)

(declare-fun res!382345 () Bool)

(assert (=> b!596399 (=> (not res!382345) (not e!340743))))

(assert (=> b!596399 (= res!382345 (validKeyInArray!0 k0!1786))))

(declare-fun b!596400 () Bool)

(declare-fun e!340744 () Bool)

(declare-fun lt!270934 () SeekEntryResult!6202)

(assert (=> b!596400 (= e!340744 (= lt!270926 lt!270934))))

(declare-fun b!596401 () Bool)

(assert (=> b!596401 (= e!340748 (arrayContainsKey!0 lt!270925 (select (arr!17755 a!2986) j!136) index!984))))

(declare-fun b!596402 () Bool)

(declare-fun e!340747 () Bool)

(assert (=> b!596402 (= e!340747 e!340742)))

(declare-fun res!382350 () Bool)

(assert (=> b!596402 (=> res!382350 e!340742)))

(declare-fun lt!270930 () (_ BitVec 64))

(declare-fun lt!270935 () (_ BitVec 64))

(assert (=> b!596402 (= res!382350 (or (not (= (select (arr!17755 a!2986) j!136) lt!270935)) (not (= (select (arr!17755 a!2986) j!136) lt!270930)) (bvsge j!136 index!984)))))

(declare-fun e!340746 () Bool)

(assert (=> b!596402 e!340746))

(declare-fun res!382346 () Bool)

(assert (=> b!596402 (=> (not res!382346) (not e!340746))))

(assert (=> b!596402 (= res!382346 (= lt!270930 (select (arr!17755 a!2986) j!136)))))

(assert (=> b!596402 (= lt!270930 (select (store (arr!17755 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!596403 () Bool)

(declare-fun res!382353 () Bool)

(assert (=> b!596403 (=> (not res!382353) (not e!340738))))

(declare-fun arrayNoDuplicates!0 (array!36989 (_ BitVec 32) List!11849) Bool)

(assert (=> b!596403 (= res!382353 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11846))))

(declare-fun b!596404 () Bool)

(declare-fun res!382338 () Bool)

(assert (=> b!596404 (=> (not res!382338) (not e!340743))))

(assert (=> b!596404 (= res!382338 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!596405 () Bool)

(declare-fun res!382348 () Bool)

(assert (=> b!596405 (=> res!382348 e!340749)))

(assert (=> b!596405 (= res!382348 (contains!2953 Nil!11846 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!596406 () Bool)

(assert (=> b!596406 (= e!340740 (not e!340747))))

(declare-fun res!382341 () Bool)

(assert (=> b!596406 (=> res!382341 e!340747)))

(declare-fun lt!270927 () SeekEntryResult!6202)

(assert (=> b!596406 (= res!382341 (not (= lt!270927 (Found!6202 index!984))))))

(declare-fun lt!270932 () Unit!18752)

(assert (=> b!596406 (= lt!270932 e!340750)))

(declare-fun c!67391 () Bool)

(assert (=> b!596406 (= c!67391 (= lt!270927 Undefined!6202))))

(assert (=> b!596406 (= lt!270927 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!270935 lt!270925 mask!3053))))

(assert (=> b!596406 e!340744))

(declare-fun res!382357 () Bool)

(assert (=> b!596406 (=> (not res!382357) (not e!340744))))

(declare-fun lt!270929 () (_ BitVec 32))

(assert (=> b!596406 (= res!382357 (= lt!270934 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!270929 vacantSpotIndex!68 lt!270935 lt!270925 mask!3053)))))

(assert (=> b!596406 (= lt!270934 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!270929 vacantSpotIndex!68 (select (arr!17755 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!596406 (= lt!270935 (select (store (arr!17755 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!270928 () Unit!18752)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36989 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18752)

(assert (=> b!596406 (= lt!270928 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!270929 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!596406 (= lt!270929 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!596407 () Bool)

(assert (=> b!596407 (= e!340738 e!340745)))

(declare-fun res!382347 () Bool)

(assert (=> b!596407 (=> (not res!382347) (not e!340745))))

(assert (=> b!596407 (= res!382347 (= (select (store (arr!17755 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!596407 (= lt!270925 (array!36990 (store (arr!17755 a!2986) i!1108 k0!1786) (size!18119 a!2986)))))

(declare-fun b!596408 () Bool)

(assert (=> b!596408 (= e!340746 e!340739)))

(declare-fun res!382339 () Bool)

(assert (=> b!596408 (=> res!382339 e!340739)))

(assert (=> b!596408 (= res!382339 (or (not (= (select (arr!17755 a!2986) j!136) lt!270935)) (not (= (select (arr!17755 a!2986) j!136) lt!270930)) (bvsge j!136 index!984)))))

(assert (= (and start!54566 res!382355) b!596394))

(assert (= (and b!596394 res!382358) b!596387))

(assert (= (and b!596387 res!382342) b!596399))

(assert (= (and b!596399 res!382345) b!596404))

(assert (= (and b!596404 res!382338) b!596396))

(assert (= (and b!596396 res!382340) b!596389))

(assert (= (and b!596389 res!382351) b!596403))

(assert (= (and b!596403 res!382353) b!596395))

(assert (= (and b!596395 res!382344) b!596407))

(assert (= (and b!596407 res!382347) b!596397))

(assert (= (and b!596397 res!382356) b!596406))

(assert (= (and b!596406 res!382357) b!596400))

(assert (= (and b!596406 c!67391) b!596386))

(assert (= (and b!596406 (not c!67391)) b!596388))

(assert (= (and b!596406 (not res!382341)) b!596402))

(assert (= (and b!596402 res!382346) b!596408))

(assert (= (and b!596408 (not res!382339)) b!596398))

(assert (= (and b!596398 res!382349) b!596401))

(assert (= (and b!596402 (not res!382350)) b!596393))

(assert (= (and b!596393 (not res!382343)) b!596392))

(assert (= (and b!596392 (not res!382352)) b!596391))

(assert (= (and b!596391 (not res!382354)) b!596405))

(assert (= (and b!596405 (not res!382348)) b!596390))

(declare-fun m!573901 () Bool)

(assert (=> b!596399 m!573901))

(declare-fun m!573903 () Bool)

(assert (=> b!596390 m!573903))

(declare-fun m!573905 () Bool)

(assert (=> b!596387 m!573905))

(assert (=> b!596387 m!573905))

(declare-fun m!573907 () Bool)

(assert (=> b!596387 m!573907))

(assert (=> b!596393 m!573905))

(assert (=> b!596393 m!573905))

(declare-fun m!573909 () Bool)

(assert (=> b!596393 m!573909))

(assert (=> b!596393 m!573905))

(declare-fun m!573911 () Bool)

(assert (=> b!596393 m!573911))

(declare-fun m!573913 () Bool)

(assert (=> b!596395 m!573913))

(declare-fun m!573915 () Bool)

(assert (=> b!596392 m!573915))

(declare-fun m!573917 () Bool)

(assert (=> b!596406 m!573917))

(declare-fun m!573919 () Bool)

(assert (=> b!596406 m!573919))

(assert (=> b!596406 m!573905))

(assert (=> b!596406 m!573905))

(declare-fun m!573921 () Bool)

(assert (=> b!596406 m!573921))

(declare-fun m!573923 () Bool)

(assert (=> b!596406 m!573923))

(declare-fun m!573925 () Bool)

(assert (=> b!596406 m!573925))

(declare-fun m!573927 () Bool)

(assert (=> b!596406 m!573927))

(declare-fun m!573929 () Bool)

(assert (=> b!596406 m!573929))

(declare-fun m!573931 () Bool)

(assert (=> b!596396 m!573931))

(assert (=> b!596408 m!573905))

(declare-fun m!573933 () Bool)

(assert (=> b!596391 m!573933))

(declare-fun m!573935 () Bool)

(assert (=> b!596403 m!573935))

(assert (=> b!596398 m!573905))

(assert (=> b!596398 m!573905))

(declare-fun m!573937 () Bool)

(assert (=> b!596398 m!573937))

(assert (=> b!596401 m!573905))

(assert (=> b!596401 m!573905))

(declare-fun m!573939 () Bool)

(assert (=> b!596401 m!573939))

(assert (=> b!596407 m!573929))

(declare-fun m!573941 () Bool)

(assert (=> b!596407 m!573941))

(declare-fun m!573943 () Bool)

(assert (=> b!596404 m!573943))

(declare-fun m!573945 () Bool)

(assert (=> b!596389 m!573945))

(declare-fun m!573947 () Bool)

(assert (=> b!596397 m!573947))

(assert (=> b!596397 m!573905))

(assert (=> b!596397 m!573905))

(declare-fun m!573949 () Bool)

(assert (=> b!596397 m!573949))

(declare-fun m!573951 () Bool)

(assert (=> b!596405 m!573951))

(assert (=> b!596402 m!573905))

(assert (=> b!596402 m!573929))

(declare-fun m!573953 () Bool)

(assert (=> b!596402 m!573953))

(declare-fun m!573955 () Bool)

(assert (=> start!54566 m!573955))

(declare-fun m!573957 () Bool)

(assert (=> start!54566 m!573957))

(check-sat (not b!596393) (not b!596392) (not b!596389) (not b!596396) (not b!596406) (not b!596387) (not b!596399) (not b!596398) (not b!596397) (not b!596405) (not b!596401) (not b!596390) (not b!596403) (not b!596404) (not b!596391) (not start!54566))
(check-sat)
