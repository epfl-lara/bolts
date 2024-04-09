; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!55908 () Bool)

(assert start!55908)

(declare-fun b!611407 () Bool)

(declare-fun res!393309 () Bool)

(declare-fun e!350384 () Bool)

(assert (=> b!611407 (=> (not res!393309) (not e!350384))))

(declare-datatypes ((array!37341 0))(
  ( (array!37342 (arr!17913 (Array (_ BitVec 32) (_ BitVec 64))) (size!18277 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37341)

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!37341 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!611407 (= res!393309 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!611408 () Bool)

(declare-fun res!393304 () Bool)

(assert (=> b!611408 (=> (not res!393304) (not e!350384))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!611408 (= res!393304 (and (= (size!18277 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18277 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18277 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!611409 () Bool)

(declare-fun e!350390 () Bool)

(declare-datatypes ((SeekEntryResult!6360 0))(
  ( (MissingZero!6360 (index!27723 (_ BitVec 32))) (Found!6360 (index!27724 (_ BitVec 32))) (Intermediate!6360 (undefined!7172 Bool) (index!27725 (_ BitVec 32)) (x!56569 (_ BitVec 32))) (Undefined!6360) (MissingVacant!6360 (index!27726 (_ BitVec 32))) )
))
(declare-fun lt!279777 () SeekEntryResult!6360)

(declare-fun lt!279771 () SeekEntryResult!6360)

(assert (=> b!611409 (= e!350390 (= lt!279777 lt!279771))))

(declare-fun b!611410 () Bool)

(declare-fun e!350397 () Bool)

(declare-fun e!350393 () Bool)

(assert (=> b!611410 (= e!350397 (not e!350393))))

(declare-fun res!393295 () Bool)

(assert (=> b!611410 (=> res!393295 e!350393)))

(declare-fun lt!279770 () SeekEntryResult!6360)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!611410 (= res!393295 (not (= lt!279770 (Found!6360 index!984))))))

(declare-datatypes ((Unit!19588 0))(
  ( (Unit!19589) )
))
(declare-fun lt!279779 () Unit!19588)

(declare-fun e!350387 () Unit!19588)

(assert (=> b!611410 (= lt!279779 e!350387)))

(declare-fun c!69425 () Bool)

(assert (=> b!611410 (= c!69425 (= lt!279770 Undefined!6360))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!279776 () array!37341)

(declare-fun lt!279773 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37341 (_ BitVec 32)) SeekEntryResult!6360)

(assert (=> b!611410 (= lt!279770 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!279773 lt!279776 mask!3053))))

(assert (=> b!611410 e!350390))

(declare-fun res!393298 () Bool)

(assert (=> b!611410 (=> (not res!393298) (not e!350390))))

(declare-fun lt!279769 () (_ BitVec 32))

(assert (=> b!611410 (= res!393298 (= lt!279771 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!279769 vacantSpotIndex!68 lt!279773 lt!279776 mask!3053)))))

(assert (=> b!611410 (= lt!279771 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!279769 vacantSpotIndex!68 (select (arr!17913 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!611410 (= lt!279773 (select (store (arr!17913 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!279780 () Unit!19588)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37341 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19588)

(assert (=> b!611410 (= lt!279780 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!279769 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!611410 (= lt!279769 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!611411 () Bool)

(declare-fun res!393299 () Bool)

(declare-fun e!350398 () Bool)

(assert (=> b!611411 (=> (not res!393299) (not e!350398))))

(assert (=> b!611411 (= res!393299 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17913 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!611412 () Bool)

(declare-fun e!350391 () Bool)

(assert (=> b!611412 (= e!350393 e!350391)))

(declare-fun res!393293 () Bool)

(assert (=> b!611412 (=> res!393293 e!350391)))

(declare-fun lt!279781 () (_ BitVec 64))

(assert (=> b!611412 (= res!393293 (or (not (= (select (arr!17913 a!2986) j!136) lt!279773)) (not (= (select (arr!17913 a!2986) j!136) lt!279781))))))

(declare-fun e!350386 () Bool)

(assert (=> b!611412 e!350386))

(declare-fun res!393308 () Bool)

(assert (=> b!611412 (=> (not res!393308) (not e!350386))))

(assert (=> b!611412 (= res!393308 (= lt!279781 (select (arr!17913 a!2986) j!136)))))

(assert (=> b!611412 (= lt!279781 (select (store (arr!17913 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!611413 () Bool)

(declare-fun res!393311 () Bool)

(assert (=> b!611413 (=> (not res!393311) (not e!350384))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!611413 (= res!393311 (validKeyInArray!0 k!1786))))

(declare-fun b!611414 () Bool)

(declare-fun e!350385 () Bool)

(assert (=> b!611414 (= e!350391 e!350385)))

(declare-fun res!393310 () Bool)

(assert (=> b!611414 (=> res!393310 e!350385)))

(assert (=> b!611414 (= res!393310 (bvsge index!984 j!136))))

(declare-fun lt!279768 () Unit!19588)

(declare-fun e!350392 () Unit!19588)

(assert (=> b!611414 (= lt!279768 e!350392)))

(declare-fun c!69424 () Bool)

(assert (=> b!611414 (= c!69424 (bvslt j!136 index!984))))

(declare-fun b!611415 () Bool)

(declare-fun res!393300 () Bool)

(assert (=> b!611415 (=> (not res!393300) (not e!350384))))

(assert (=> b!611415 (= res!393300 (validKeyInArray!0 (select (arr!17913 a!2986) j!136)))))

(declare-fun b!611417 () Bool)

(declare-fun res!393302 () Bool)

(assert (=> b!611417 (=> (not res!393302) (not e!350398))))

(declare-datatypes ((List!12007 0))(
  ( (Nil!12004) (Cons!12003 (h!13048 (_ BitVec 64)) (t!18243 List!12007)) )
))
(declare-fun arrayNoDuplicates!0 (array!37341 (_ BitVec 32) List!12007) Bool)

(assert (=> b!611417 (= res!393302 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12004))))

(declare-fun e!350395 () Bool)

(declare-fun b!611418 () Bool)

(assert (=> b!611418 (= e!350395 (arrayContainsKey!0 lt!279776 (select (arr!17913 a!2986) j!136) index!984))))

(declare-fun b!611419 () Bool)

(declare-fun Unit!19590 () Unit!19588)

(assert (=> b!611419 (= e!350392 Unit!19590)))

(declare-fun b!611420 () Bool)

(declare-fun Unit!19591 () Unit!19588)

(assert (=> b!611420 (= e!350387 Unit!19591)))

(assert (=> b!611420 false))

(declare-fun b!611421 () Bool)

(declare-fun e!350388 () Bool)

(assert (=> b!611421 (= e!350388 (arrayContainsKey!0 lt!279776 (select (arr!17913 a!2986) j!136) index!984))))

(declare-fun b!611422 () Bool)

(declare-fun Unit!19592 () Unit!19588)

(assert (=> b!611422 (= e!350392 Unit!19592)))

(declare-fun lt!279782 () Unit!19588)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37341 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19588)

(assert (=> b!611422 (= lt!279782 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!279776 (select (arr!17913 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!611422 (arrayContainsKey!0 lt!279776 (select (arr!17913 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!279767 () Unit!19588)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37341 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12007) Unit!19588)

(assert (=> b!611422 (= lt!279767 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12004))))

(assert (=> b!611422 (arrayNoDuplicates!0 lt!279776 #b00000000000000000000000000000000 Nil!12004)))

(declare-fun lt!279772 () Unit!19588)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37341 (_ BitVec 32) (_ BitVec 32)) Unit!19588)

(assert (=> b!611422 (= lt!279772 (lemmaNoDuplicateFromThenFromBigger!0 lt!279776 #b00000000000000000000000000000000 j!136))))

(assert (=> b!611422 (arrayNoDuplicates!0 lt!279776 j!136 Nil!12004)))

(declare-fun lt!279775 () Unit!19588)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37341 (_ BitVec 64) (_ BitVec 32) List!12007) Unit!19588)

(assert (=> b!611422 (= lt!279775 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!279776 (select (arr!17913 a!2986) j!136) j!136 Nil!12004))))

(assert (=> b!611422 false))

(declare-fun b!611423 () Bool)

(declare-fun Unit!19593 () Unit!19588)

(assert (=> b!611423 (= e!350387 Unit!19593)))

(declare-fun b!611424 () Bool)

(declare-fun e!350389 () Bool)

(assert (=> b!611424 (= e!350398 e!350389)))

(declare-fun res!393294 () Bool)

(assert (=> b!611424 (=> (not res!393294) (not e!350389))))

(assert (=> b!611424 (= res!393294 (= (select (store (arr!17913 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!611424 (= lt!279776 (array!37342 (store (arr!17913 a!2986) i!1108 k!1786) (size!18277 a!2986)))))

(declare-fun b!611425 () Bool)

(declare-fun res!393306 () Bool)

(assert (=> b!611425 (=> (not res!393306) (not e!350398))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37341 (_ BitVec 32)) Bool)

(assert (=> b!611425 (= res!393306 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!611426 () Bool)

(assert (=> b!611426 (= e!350384 e!350398)))

(declare-fun res!393296 () Bool)

(assert (=> b!611426 (=> (not res!393296) (not e!350398))))

(declare-fun lt!279778 () SeekEntryResult!6360)

(assert (=> b!611426 (= res!393296 (or (= lt!279778 (MissingZero!6360 i!1108)) (= lt!279778 (MissingVacant!6360 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37341 (_ BitVec 32)) SeekEntryResult!6360)

(assert (=> b!611426 (= lt!279778 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!611427 () Bool)

(assert (=> b!611427 (= e!350389 e!350397)))

(declare-fun res!393305 () Bool)

(assert (=> b!611427 (=> (not res!393305) (not e!350397))))

(assert (=> b!611427 (= res!393305 (and (= lt!279777 (Found!6360 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17913 a!2986) index!984) (select (arr!17913 a!2986) j!136))) (not (= (select (arr!17913 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!611427 (= lt!279777 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17913 a!2986) j!136) a!2986 mask!3053))))

(declare-fun res!393303 () Bool)

(assert (=> start!55908 (=> (not res!393303) (not e!350384))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55908 (= res!393303 (validMask!0 mask!3053))))

(assert (=> start!55908 e!350384))

(assert (=> start!55908 true))

(declare-fun array_inv!13687 (array!37341) Bool)

(assert (=> start!55908 (array_inv!13687 a!2986)))

(declare-fun b!611416 () Bool)

(declare-fun e!350394 () Bool)

(assert (=> b!611416 (= e!350394 e!350388)))

(declare-fun res!393307 () Bool)

(assert (=> b!611416 (=> (not res!393307) (not e!350388))))

(assert (=> b!611416 (= res!393307 (arrayContainsKey!0 lt!279776 (select (arr!17913 a!2986) j!136) j!136))))

(declare-fun b!611428 () Bool)

(assert (=> b!611428 (= e!350386 e!350394)))

(declare-fun res!393297 () Bool)

(assert (=> b!611428 (=> res!393297 e!350394)))

(assert (=> b!611428 (= res!393297 (or (not (= (select (arr!17913 a!2986) j!136) lt!279773)) (not (= (select (arr!17913 a!2986) j!136) lt!279781)) (bvsge j!136 index!984)))))

(declare-fun b!611429 () Bool)

(assert (=> b!611429 (= e!350385 true)))

(assert (=> b!611429 (arrayNoDuplicates!0 lt!279776 #b00000000000000000000000000000000 Nil!12004)))

(declare-fun lt!279783 () Unit!19588)

(assert (=> b!611429 (= lt!279783 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12004))))

(assert (=> b!611429 (arrayContainsKey!0 lt!279776 (select (arr!17913 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!279774 () Unit!19588)

(assert (=> b!611429 (= lt!279774 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!279776 (select (arr!17913 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!611429 e!350395))

(declare-fun res!393301 () Bool)

(assert (=> b!611429 (=> (not res!393301) (not e!350395))))

(assert (=> b!611429 (= res!393301 (arrayContainsKey!0 lt!279776 (select (arr!17913 a!2986) j!136) j!136))))

(assert (= (and start!55908 res!393303) b!611408))

(assert (= (and b!611408 res!393304) b!611415))

(assert (= (and b!611415 res!393300) b!611413))

(assert (= (and b!611413 res!393311) b!611407))

(assert (= (and b!611407 res!393309) b!611426))

(assert (= (and b!611426 res!393296) b!611425))

(assert (= (and b!611425 res!393306) b!611417))

(assert (= (and b!611417 res!393302) b!611411))

(assert (= (and b!611411 res!393299) b!611424))

(assert (= (and b!611424 res!393294) b!611427))

(assert (= (and b!611427 res!393305) b!611410))

(assert (= (and b!611410 res!393298) b!611409))

(assert (= (and b!611410 c!69425) b!611420))

(assert (= (and b!611410 (not c!69425)) b!611423))

(assert (= (and b!611410 (not res!393295)) b!611412))

(assert (= (and b!611412 res!393308) b!611428))

(assert (= (and b!611428 (not res!393297)) b!611416))

(assert (= (and b!611416 res!393307) b!611421))

(assert (= (and b!611412 (not res!393293)) b!611414))

(assert (= (and b!611414 c!69424) b!611422))

(assert (= (and b!611414 (not c!69424)) b!611419))

(assert (= (and b!611414 (not res!393310)) b!611429))

(assert (= (and b!611429 res!393301) b!611418))

(declare-fun m!587865 () Bool)

(assert (=> b!611425 m!587865))

(declare-fun m!587867 () Bool)

(assert (=> b!611412 m!587867))

(declare-fun m!587869 () Bool)

(assert (=> b!611412 m!587869))

(declare-fun m!587871 () Bool)

(assert (=> b!611412 m!587871))

(declare-fun m!587873 () Bool)

(assert (=> b!611417 m!587873))

(declare-fun m!587875 () Bool)

(assert (=> b!611413 m!587875))

(assert (=> b!611421 m!587867))

(assert (=> b!611421 m!587867))

(declare-fun m!587877 () Bool)

(assert (=> b!611421 m!587877))

(assert (=> b!611418 m!587867))

(assert (=> b!611418 m!587867))

(assert (=> b!611418 m!587877))

(assert (=> b!611429 m!587867))

(assert (=> b!611429 m!587867))

(declare-fun m!587879 () Bool)

(assert (=> b!611429 m!587879))

(assert (=> b!611429 m!587867))

(declare-fun m!587881 () Bool)

(assert (=> b!611429 m!587881))

(declare-fun m!587883 () Bool)

(assert (=> b!611429 m!587883))

(assert (=> b!611429 m!587867))

(declare-fun m!587885 () Bool)

(assert (=> b!611429 m!587885))

(declare-fun m!587887 () Bool)

(assert (=> b!611429 m!587887))

(assert (=> b!611416 m!587867))

(assert (=> b!611416 m!587867))

(assert (=> b!611416 m!587885))

(declare-fun m!587889 () Bool)

(assert (=> b!611410 m!587889))

(declare-fun m!587891 () Bool)

(assert (=> b!611410 m!587891))

(assert (=> b!611410 m!587869))

(declare-fun m!587893 () Bool)

(assert (=> b!611410 m!587893))

(declare-fun m!587895 () Bool)

(assert (=> b!611410 m!587895))

(assert (=> b!611410 m!587867))

(declare-fun m!587897 () Bool)

(assert (=> b!611410 m!587897))

(assert (=> b!611410 m!587867))

(declare-fun m!587899 () Bool)

(assert (=> b!611410 m!587899))

(assert (=> b!611415 m!587867))

(assert (=> b!611415 m!587867))

(declare-fun m!587901 () Bool)

(assert (=> b!611415 m!587901))

(declare-fun m!587903 () Bool)

(assert (=> b!611426 m!587903))

(assert (=> b!611424 m!587869))

(declare-fun m!587905 () Bool)

(assert (=> b!611424 m!587905))

(declare-fun m!587907 () Bool)

(assert (=> start!55908 m!587907))

(declare-fun m!587909 () Bool)

(assert (=> start!55908 m!587909))

(declare-fun m!587911 () Bool)

(assert (=> b!611411 m!587911))

(declare-fun m!587913 () Bool)

(assert (=> b!611407 m!587913))

(declare-fun m!587915 () Bool)

(assert (=> b!611427 m!587915))

(assert (=> b!611427 m!587867))

(assert (=> b!611427 m!587867))

(declare-fun m!587917 () Bool)

(assert (=> b!611427 m!587917))

(declare-fun m!587919 () Bool)

(assert (=> b!611422 m!587919))

(assert (=> b!611422 m!587883))

(assert (=> b!611422 m!587867))

(declare-fun m!587921 () Bool)

(assert (=> b!611422 m!587921))

(declare-fun m!587923 () Bool)

(assert (=> b!611422 m!587923))

(assert (=> b!611422 m!587867))

(declare-fun m!587925 () Bool)

(assert (=> b!611422 m!587925))

(assert (=> b!611422 m!587887))

(assert (=> b!611422 m!587867))

(assert (=> b!611422 m!587867))

(declare-fun m!587927 () Bool)

(assert (=> b!611422 m!587927))

(assert (=> b!611428 m!587867))

(push 1)

