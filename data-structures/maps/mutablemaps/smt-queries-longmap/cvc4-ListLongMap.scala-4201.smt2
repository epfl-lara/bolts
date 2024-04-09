; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!57376 () Bool)

(assert start!57376)

(declare-fun b!634925 () Bool)

(declare-fun e!363136 () Bool)

(declare-datatypes ((SeekEntryResult!6764 0))(
  ( (MissingZero!6764 (index!29357 (_ BitVec 32))) (Found!6764 (index!29358 (_ BitVec 32))) (Intermediate!6764 (undefined!7576 Bool) (index!29359 (_ BitVec 32)) (x!58123 (_ BitVec 32))) (Undefined!6764) (MissingVacant!6764 (index!29360 (_ BitVec 32))) )
))
(declare-fun lt!293623 () SeekEntryResult!6764)

(declare-fun lt!293622 () SeekEntryResult!6764)

(assert (=> b!634925 (= e!363136 (= lt!293623 lt!293622))))

(declare-fun b!634926 () Bool)

(declare-fun res!410914 () Bool)

(declare-fun e!363127 () Bool)

(assert (=> b!634926 (=> (not res!410914) (not e!363127))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!634926 (= res!410914 (validKeyInArray!0 k!1786))))

(declare-fun b!634927 () Bool)

(declare-fun e!363130 () Bool)

(assert (=> b!634927 (= e!363127 e!363130)))

(declare-fun res!410908 () Bool)

(assert (=> b!634927 (=> (not res!410908) (not e!363130))))

(declare-fun lt!293625 () SeekEntryResult!6764)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!634927 (= res!410908 (or (= lt!293625 (MissingZero!6764 i!1108)) (= lt!293625 (MissingVacant!6764 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-datatypes ((array!38185 0))(
  ( (array!38186 (arr!18317 (Array (_ BitVec 32) (_ BitVec 64))) (size!18681 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38185)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38185 (_ BitVec 32)) SeekEntryResult!6764)

(assert (=> b!634927 (= lt!293625 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!634928 () Bool)

(declare-fun e!363133 () Bool)

(assert (=> b!634928 (= e!363130 e!363133)))

(declare-fun res!410902 () Bool)

(assert (=> b!634928 (=> (not res!410902) (not e!363133))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!634928 (= res!410902 (= (select (store (arr!18317 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!293618 () array!38185)

(assert (=> b!634928 (= lt!293618 (array!38186 (store (arr!18317 a!2986) i!1108 k!1786) (size!18681 a!2986)))))

(declare-fun b!634929 () Bool)

(declare-fun res!410915 () Bool)

(assert (=> b!634929 (=> (not res!410915) (not e!363130))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38185 (_ BitVec 32)) Bool)

(assert (=> b!634929 (= res!410915 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!634930 () Bool)

(declare-fun e!363128 () Bool)

(declare-fun e!363126 () Bool)

(assert (=> b!634930 (= e!363128 e!363126)))

(declare-fun res!410911 () Bool)

(assert (=> b!634930 (=> res!410911 e!363126)))

(declare-fun lt!293621 () (_ BitVec 64))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!293619 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!634930 (= res!410911 (or (not (= (select (arr!18317 a!2986) j!136) lt!293619)) (not (= (select (arr!18317 a!2986) j!136) lt!293621)) (bvsge j!136 index!984)))))

(declare-fun e!363135 () Bool)

(assert (=> b!634930 e!363135))

(declare-fun res!410903 () Bool)

(assert (=> b!634930 (=> (not res!410903) (not e!363135))))

(assert (=> b!634930 (= res!410903 (= lt!293621 (select (arr!18317 a!2986) j!136)))))

(assert (=> b!634930 (= lt!293621 (select (store (arr!18317 a!2986) i!1108 k!1786) index!984))))

(declare-fun res!410900 () Bool)

(assert (=> start!57376 (=> (not res!410900) (not e!363127))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57376 (= res!410900 (validMask!0 mask!3053))))

(assert (=> start!57376 e!363127))

(assert (=> start!57376 true))

(declare-fun array_inv!14091 (array!38185) Bool)

(assert (=> start!57376 (array_inv!14091 a!2986)))

(declare-fun b!634931 () Bool)

(declare-fun e!363132 () Bool)

(assert (=> b!634931 (= e!363135 e!363132)))

(declare-fun res!410909 () Bool)

(assert (=> b!634931 (=> res!410909 e!363132)))

(assert (=> b!634931 (= res!410909 (or (not (= (select (arr!18317 a!2986) j!136) lt!293619)) (not (= (select (arr!18317 a!2986) j!136) lt!293621)) (bvsge j!136 index!984)))))

(declare-fun b!634932 () Bool)

(declare-fun res!410905 () Bool)

(assert (=> b!634932 (=> (not res!410905) (not e!363127))))

(assert (=> b!634932 (= res!410905 (validKeyInArray!0 (select (arr!18317 a!2986) j!136)))))

(declare-fun b!634933 () Bool)

(declare-fun e!363129 () Bool)

(declare-fun arrayContainsKey!0 (array!38185 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!634933 (= e!363129 (arrayContainsKey!0 lt!293618 (select (arr!18317 a!2986) j!136) index!984))))

(declare-fun b!634934 () Bool)

(declare-datatypes ((Unit!21414 0))(
  ( (Unit!21415) )
))
(declare-fun e!363134 () Unit!21414)

(declare-fun Unit!21416 () Unit!21414)

(assert (=> b!634934 (= e!363134 Unit!21416)))

(assert (=> b!634934 false))

(declare-fun b!634935 () Bool)

(declare-fun res!410912 () Bool)

(assert (=> b!634935 (=> (not res!410912) (not e!363127))))

(assert (=> b!634935 (= res!410912 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!634936 () Bool)

(assert (=> b!634936 (= e!363132 e!363129)))

(declare-fun res!410906 () Bool)

(assert (=> b!634936 (=> (not res!410906) (not e!363129))))

(assert (=> b!634936 (= res!410906 (arrayContainsKey!0 lt!293618 (select (arr!18317 a!2986) j!136) j!136))))

(declare-fun b!634937 () Bool)

(declare-fun e!363131 () Bool)

(assert (=> b!634937 (= e!363133 e!363131)))

(declare-fun res!410913 () Bool)

(assert (=> b!634937 (=> (not res!410913) (not e!363131))))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!634937 (= res!410913 (and (= lt!293623 (Found!6764 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18317 a!2986) index!984) (select (arr!18317 a!2986) j!136))) (not (= (select (arr!18317 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38185 (_ BitVec 32)) SeekEntryResult!6764)

(assert (=> b!634937 (= lt!293623 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18317 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!634938 () Bool)

(declare-fun res!410901 () Bool)

(assert (=> b!634938 (=> (not res!410901) (not e!363130))))

(declare-datatypes ((List!12411 0))(
  ( (Nil!12408) (Cons!12407 (h!13452 (_ BitVec 64)) (t!18647 List!12411)) )
))
(declare-fun arrayNoDuplicates!0 (array!38185 (_ BitVec 32) List!12411) Bool)

(assert (=> b!634938 (= res!410901 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12408))))

(declare-fun b!634939 () Bool)

(declare-fun res!410907 () Bool)

(assert (=> b!634939 (=> (not res!410907) (not e!363127))))

(assert (=> b!634939 (= res!410907 (and (= (size!18681 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18681 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18681 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!634940 () Bool)

(declare-fun res!410904 () Bool)

(assert (=> b!634940 (=> (not res!410904) (not e!363130))))

(assert (=> b!634940 (= res!410904 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18317 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!634941 () Bool)

(assert (=> b!634941 (= e!363126 (bvslt (size!18681 a!2986) #b01111111111111111111111111111111))))

(assert (=> b!634941 (arrayContainsKey!0 lt!293618 (select (arr!18317 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!293620 () Unit!21414)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38185 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21414)

(assert (=> b!634941 (= lt!293620 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!293618 (select (arr!18317 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!634942 () Bool)

(assert (=> b!634942 (= e!363131 (not e!363128))))

(declare-fun res!410910 () Bool)

(assert (=> b!634942 (=> res!410910 e!363128)))

(declare-fun lt!293616 () SeekEntryResult!6764)

(assert (=> b!634942 (= res!410910 (not (= lt!293616 (Found!6764 index!984))))))

(declare-fun lt!293617 () Unit!21414)

(assert (=> b!634942 (= lt!293617 e!363134)))

(declare-fun c!72380 () Bool)

(assert (=> b!634942 (= c!72380 (= lt!293616 Undefined!6764))))

(assert (=> b!634942 (= lt!293616 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!293619 lt!293618 mask!3053))))

(assert (=> b!634942 e!363136))

(declare-fun res!410899 () Bool)

(assert (=> b!634942 (=> (not res!410899) (not e!363136))))

(declare-fun lt!293624 () (_ BitVec 32))

(assert (=> b!634942 (= res!410899 (= lt!293622 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!293624 vacantSpotIndex!68 lt!293619 lt!293618 mask!3053)))))

(assert (=> b!634942 (= lt!293622 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!293624 vacantSpotIndex!68 (select (arr!18317 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!634942 (= lt!293619 (select (store (arr!18317 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!293615 () Unit!21414)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38185 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21414)

(assert (=> b!634942 (= lt!293615 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!293624 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!634942 (= lt!293624 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!634943 () Bool)

(declare-fun Unit!21417 () Unit!21414)

(assert (=> b!634943 (= e!363134 Unit!21417)))

(assert (= (and start!57376 res!410900) b!634939))

(assert (= (and b!634939 res!410907) b!634932))

(assert (= (and b!634932 res!410905) b!634926))

(assert (= (and b!634926 res!410914) b!634935))

(assert (= (and b!634935 res!410912) b!634927))

(assert (= (and b!634927 res!410908) b!634929))

(assert (= (and b!634929 res!410915) b!634938))

(assert (= (and b!634938 res!410901) b!634940))

(assert (= (and b!634940 res!410904) b!634928))

(assert (= (and b!634928 res!410902) b!634937))

(assert (= (and b!634937 res!410913) b!634942))

(assert (= (and b!634942 res!410899) b!634925))

(assert (= (and b!634942 c!72380) b!634934))

(assert (= (and b!634942 (not c!72380)) b!634943))

(assert (= (and b!634942 (not res!410910)) b!634930))

(assert (= (and b!634930 res!410903) b!634931))

(assert (= (and b!634931 (not res!410909)) b!634936))

(assert (= (and b!634936 res!410906) b!634933))

(assert (= (and b!634930 (not res!410911)) b!634941))

(declare-fun m!609397 () Bool)

(assert (=> b!634936 m!609397))

(assert (=> b!634936 m!609397))

(declare-fun m!609399 () Bool)

(assert (=> b!634936 m!609399))

(declare-fun m!609401 () Bool)

(assert (=> b!634940 m!609401))

(declare-fun m!609403 () Bool)

(assert (=> b!634937 m!609403))

(assert (=> b!634937 m!609397))

(assert (=> b!634937 m!609397))

(declare-fun m!609405 () Bool)

(assert (=> b!634937 m!609405))

(declare-fun m!609407 () Bool)

(assert (=> b!634935 m!609407))

(assert (=> b!634933 m!609397))

(assert (=> b!634933 m!609397))

(declare-fun m!609409 () Bool)

(assert (=> b!634933 m!609409))

(assert (=> b!634931 m!609397))

(assert (=> b!634932 m!609397))

(assert (=> b!634932 m!609397))

(declare-fun m!609411 () Bool)

(assert (=> b!634932 m!609411))

(assert (=> b!634930 m!609397))

(declare-fun m!609413 () Bool)

(assert (=> b!634930 m!609413))

(declare-fun m!609415 () Bool)

(assert (=> b!634930 m!609415))

(declare-fun m!609417 () Bool)

(assert (=> start!57376 m!609417))

(declare-fun m!609419 () Bool)

(assert (=> start!57376 m!609419))

(assert (=> b!634928 m!609413))

(declare-fun m!609421 () Bool)

(assert (=> b!634928 m!609421))

(declare-fun m!609423 () Bool)

(assert (=> b!634929 m!609423))

(declare-fun m!609425 () Bool)

(assert (=> b!634938 m!609425))

(declare-fun m!609427 () Bool)

(assert (=> b!634927 m!609427))

(assert (=> b!634941 m!609397))

(assert (=> b!634941 m!609397))

(declare-fun m!609429 () Bool)

(assert (=> b!634941 m!609429))

(assert (=> b!634941 m!609397))

(declare-fun m!609431 () Bool)

(assert (=> b!634941 m!609431))

(declare-fun m!609433 () Bool)

(assert (=> b!634926 m!609433))

(declare-fun m!609435 () Bool)

(assert (=> b!634942 m!609435))

(assert (=> b!634942 m!609397))

(assert (=> b!634942 m!609413))

(declare-fun m!609437 () Bool)

(assert (=> b!634942 m!609437))

(assert (=> b!634942 m!609397))

(declare-fun m!609439 () Bool)

(assert (=> b!634942 m!609439))

(declare-fun m!609441 () Bool)

(assert (=> b!634942 m!609441))

(declare-fun m!609443 () Bool)

(assert (=> b!634942 m!609443))

(declare-fun m!609445 () Bool)

(assert (=> b!634942 m!609445))

(push 1)

(assert (not b!634937))

(assert (not b!634933))

(assert (not b!634942))

(assert (not start!57376))

(assert (not b!634938))

(assert (not b!634932))

(assert (not b!634929))

(assert (not b!634926))

(assert (not b!634936))

(assert (not b!634927))

(assert (not b!634935))

(assert (not b!634941))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!634996 () Bool)

(declare-fun e!363169 () Bool)

(declare-fun call!33395 () Bool)

(assert (=> b!634996 (= e!363169 call!33395)))

(declare-fun b!634997 () Bool)

(declare-fun e!363170 () Bool)

(declare-fun e!363171 () Bool)

(assert (=> b!634997 (= e!363170 e!363171)))

(declare-fun c!72401 () Bool)

(assert (=> b!634997 (= c!72401 (validKeyInArray!0 (select (arr!18317 a!2986) #b00000000000000000000000000000000)))))

(declare-fun bm!33392 () Bool)

(assert (=> bm!33392 (= call!33395 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2986 mask!3053))))

(declare-fun b!634999 () Bool)

(assert (=> b!634999 (= e!363171 e!363169)))

(declare-fun lt!293652 () (_ BitVec 64))

(assert (=> b!634999 (= lt!293652 (select (arr!18317 a!2986) #b00000000000000000000000000000000))))

(declare-fun lt!293651 () Unit!21414)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38185 (_ BitVec 64) (_ BitVec 32)) Unit!21414)

(assert (=> b!634999 (= lt!293651 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2986 lt!293652 #b00000000000000000000000000000000))))

(assert (=> b!634999 (arrayContainsKey!0 a!2986 lt!293652 #b00000000000000000000000000000000)))

(declare-fun lt!293650 () Unit!21414)

(assert (=> b!634999 (= lt!293650 lt!293651)))

(declare-fun res!410929 () Bool)

(assert (=> b!634999 (= res!410929 (= (seekEntryOrOpen!0 (select (arr!18317 a!2986) #b00000000000000000000000000000000) a!2986 mask!3053) (Found!6764 #b00000000000000000000000000000000)))))

(assert (=> b!634999 (=> (not res!410929) (not e!363169))))

(declare-fun b!634998 () Bool)

(assert (=> b!634998 (= e!363171 call!33395)))

(declare-fun d!89605 () Bool)

(declare-fun res!410928 () Bool)

(assert (=> d!89605 (=> res!410928 e!363170)))

(assert (=> d!89605 (= res!410928 (bvsge #b00000000000000000000000000000000 (size!18681 a!2986)))))

(assert (=> d!89605 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053) e!363170)))

(assert (= (and d!89605 (not res!410928)) b!634997))

(assert (= (and b!634997 c!72401) b!634999))

(assert (= (and b!634997 (not c!72401)) b!634998))

(assert (= (and b!634999 res!410929) b!634996))

(assert (= (or b!634996 b!634998) bm!33392))

(declare-fun m!609477 () Bool)

(assert (=> b!634997 m!609477))

(assert (=> b!634997 m!609477))

(declare-fun m!609479 () Bool)

(assert (=> b!634997 m!609479))

(declare-fun m!609481 () Bool)

(assert (=> bm!33392 m!609481))

(assert (=> b!634999 m!609477))

(declare-fun m!609483 () Bool)

(assert (=> b!634999 m!609483))

(declare-fun m!609485 () Bool)

(assert (=> b!634999 m!609485))

(assert (=> b!634999 m!609477))

(declare-fun m!609487 () Bool)

(assert (=> b!634999 m!609487))

(assert (=> b!634929 d!89605))

(declare-fun d!89613 () Bool)

(declare-fun res!410936 () Bool)

(declare-fun e!363179 () Bool)

(assert (=> d!89613 (=> res!410936 e!363179)))

(assert (=> d!89613 (= res!410936 (= (select (arr!18317 lt!293618) (bvadd #b00000000000000000000000000000001 j!136)) (select (arr!18317 a!2986) j!136)))))

(assert (=> d!89613 (= (arrayContainsKey!0 lt!293618 (select (arr!18317 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136)) e!363179)))

(declare-fun b!635010 () Bool)

(declare-fun e!363180 () Bool)

(assert (=> b!635010 (= e!363179 e!363180)))

(declare-fun res!410937 () Bool)

(assert (=> b!635010 (=> (not res!410937) (not e!363180))))

(assert (=> b!635010 (= res!410937 (bvslt (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001) (size!18681 lt!293618)))))

(declare-fun b!635011 () Bool)

(assert (=> b!635011 (= e!363180 (arrayContainsKey!0 lt!293618 (select (arr!18317 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!89613 (not res!410936)) b!635010))

(assert (= (and b!635010 res!410937) b!635011))

(declare-fun m!609489 () Bool)

(assert (=> d!89613 m!609489))

(assert (=> b!635011 m!609397))

(declare-fun m!609491 () Bool)

(assert (=> b!635011 m!609491))

(assert (=> b!634941 d!89613))

(declare-fun d!89615 () Bool)

(assert (=> d!89615 (arrayContainsKey!0 lt!293618 (select (arr!18317 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!293661 () Unit!21414)

(declare-fun choose!114 (array!38185 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21414)

(assert (=> d!89615 (= lt!293661 (choose!114 lt!293618 (select (arr!18317 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> d!89615 (bvsge index!984 #b00000000000000000000000000000000)))

(assert (=> d!89615 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!293618 (select (arr!18317 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)) lt!293661)))

(declare-fun bs!19086 () Bool)

(assert (= bs!19086 d!89615))

(assert (=> bs!19086 m!609397))

(assert (=> bs!19086 m!609429))

(assert (=> bs!19086 m!609397))

(declare-fun m!609493 () Bool)

(assert (=> bs!19086 m!609493))

(assert (=> b!634941 d!89615))

(declare-fun d!89617 () Bool)

(declare-fun e!363215 () Bool)

(assert (=> d!89617 e!363215))

(declare-fun res!410955 () Bool)

(assert (=> d!89617 (=> (not res!410955) (not e!363215))))

(assert (=> d!89617 (= res!410955 (and (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18681 a!2986)) (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18681 a!2986)))) (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18681 a!2986)) (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18681 a!2986)))) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18681 a!2986))))))

(declare-fun lt!293675 () Unit!21414)

(declare-fun choose!9 (array!38185 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21414)

(assert (=> d!89617 (= lt!293675 (choose!9 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!293624 vacantSpotIndex!68 mask!3053))))

(assert (=> d!89617 (validMask!0 mask!3053)))

(assert (=> d!89617 (= (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!293624 vacantSpotIndex!68 mask!3053) lt!293675)))

(declare-fun b!635061 () Bool)

(assert (=> b!635061 (= e!363215 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!293624 vacantSpotIndex!68 (select (arr!18317 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!293624 vacantSpotIndex!68 (select (store (arr!18317 a!2986) i!1108 k!1786) j!136) (array!38186 (store (arr!18317 a!2986) i!1108 k!1786) (size!18681 a!2986)) mask!3053)))))

(assert (= (and d!89617 res!410955) b!635061))

(declare-fun m!609529 () Bool)

(assert (=> d!89617 m!609529))

(assert (=> d!89617 m!609417))

(assert (=> b!635061 m!609397))

(assert (=> b!635061 m!609435))

(declare-fun m!609531 () Bool)

(assert (=> b!635061 m!609531))

(assert (=> b!635061 m!609413))

(assert (=> b!635061 m!609397))

(assert (=> b!635061 m!609439))

(assert (=> b!635061 m!609435))

(assert (=> b!634942 d!89617))

(declare-fun b!635106 () Bool)

(declare-fun c!72439 () Bool)

(declare-fun lt!293701 () (_ BitVec 64))

(assert (=> b!635106 (= c!72439 (= lt!293701 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!363243 () SeekEntryResult!6764)

(declare-fun e!363242 () SeekEntryResult!6764)

(assert (=> b!635106 (= e!363243 e!363242)))

(declare-fun b!635107 () Bool)

(declare-fun e!363244 () SeekEntryResult!6764)

(assert (=> b!635107 (= e!363244 e!363243)))

(declare-fun c!72440 () Bool)

(assert (=> b!635107 (= c!72440 (= lt!293701 lt!293619))))

(declare-fun b!635108 () Bool)

(assert (=> b!635108 (= e!363242 (MissingVacant!6764 vacantSpotIndex!68))))

(declare-fun lt!293700 () SeekEntryResult!6764)

(declare-fun d!89629 () Bool)

