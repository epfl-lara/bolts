; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56136 () Bool)

(assert start!56136)

(declare-fun b!619887 () Bool)

(declare-fun e!355533 () Bool)

(declare-fun e!355530 () Bool)

(assert (=> b!619887 (= e!355533 e!355530)))

(declare-fun res!399546 () Bool)

(assert (=> b!619887 (=> (not res!399546) (not e!355530))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-datatypes ((array!37569 0))(
  ( (array!37570 (arr!18027 (Array (_ BitVec 32) (_ BitVec 64))) (size!18391 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37569)

(assert (=> b!619887 (= res!399546 (= (select (store (arr!18027 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!286398 () array!37569)

(assert (=> b!619887 (= lt!286398 (array!37570 (store (arr!18027 a!2986) i!1108 k!1786) (size!18391 a!2986)))))

(declare-fun b!619888 () Bool)

(declare-datatypes ((Unit!20560 0))(
  ( (Unit!20561) )
))
(declare-fun e!355543 () Unit!20560)

(declare-fun Unit!20562 () Unit!20560)

(assert (=> b!619888 (= e!355543 Unit!20562)))

(declare-fun b!619889 () Bool)

(declare-fun e!355542 () Bool)

(assert (=> b!619889 (= e!355530 e!355542)))

(declare-fun res!399540 () Bool)

(assert (=> b!619889 (=> (not res!399540) (not e!355542))))

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6474 0))(
  ( (MissingZero!6474 (index!28179 (_ BitVec 32))) (Found!6474 (index!28180 (_ BitVec 32))) (Intermediate!6474 (undefined!7286 Bool) (index!28181 (_ BitVec 32)) (x!56987 (_ BitVec 32))) (Undefined!6474) (MissingVacant!6474 (index!28182 (_ BitVec 32))) )
))
(declare-fun lt!286405 () SeekEntryResult!6474)

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!619889 (= res!399540 (and (= lt!286405 (Found!6474 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18027 a!2986) index!984) (select (arr!18027 a!2986) j!136))) (not (= (select (arr!18027 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37569 (_ BitVec 32)) SeekEntryResult!6474)

(assert (=> b!619889 (= lt!286405 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18027 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!619890 () Bool)

(assert (=> b!619890 (= e!355542 (not true))))

(declare-fun lt!286407 () Unit!20560)

(declare-fun e!355535 () Unit!20560)

(assert (=> b!619890 (= lt!286407 e!355535)))

(declare-fun c!70546 () Bool)

(declare-fun lt!286403 () SeekEntryResult!6474)

(assert (=> b!619890 (= c!70546 (= lt!286403 (Found!6474 index!984)))))

(declare-fun lt!286404 () Unit!20560)

(declare-fun e!355537 () Unit!20560)

(assert (=> b!619890 (= lt!286404 e!355537)))

(declare-fun c!70547 () Bool)

(assert (=> b!619890 (= c!70547 (= lt!286403 Undefined!6474))))

(declare-fun lt!286402 () (_ BitVec 64))

(assert (=> b!619890 (= lt!286403 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!286402 lt!286398 mask!3053))))

(declare-fun e!355531 () Bool)

(assert (=> b!619890 e!355531))

(declare-fun res!399548 () Bool)

(assert (=> b!619890 (=> (not res!399548) (not e!355531))))

(declare-fun lt!286400 () (_ BitVec 32))

(declare-fun lt!286414 () SeekEntryResult!6474)

(assert (=> b!619890 (= res!399548 (= lt!286414 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!286400 vacantSpotIndex!68 lt!286402 lt!286398 mask!3053)))))

(assert (=> b!619890 (= lt!286414 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!286400 vacantSpotIndex!68 (select (arr!18027 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!619890 (= lt!286402 (select (store (arr!18027 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!286413 () Unit!20560)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37569 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!20560)

(assert (=> b!619890 (= lt!286413 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!286400 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!619890 (= lt!286400 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!619891 () Bool)

(declare-fun res!399537 () Bool)

(assert (=> b!619891 (= res!399537 (bvsge j!136 index!984))))

(declare-fun e!355536 () Bool)

(assert (=> b!619891 (=> res!399537 e!355536)))

(declare-fun e!355539 () Bool)

(assert (=> b!619891 (= e!355539 e!355536)))

(declare-fun e!355532 () Bool)

(declare-fun b!619892 () Bool)

(declare-fun arrayContainsKey!0 (array!37569 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!619892 (= e!355532 (arrayContainsKey!0 lt!286398 (select (arr!18027 a!2986) j!136) index!984))))

(declare-fun b!619893 () Bool)

(declare-fun res!399535 () Bool)

(declare-fun e!355534 () Bool)

(assert (=> b!619893 (=> (not res!399535) (not e!355534))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!619893 (= res!399535 (validKeyInArray!0 k!1786))))

(declare-fun b!619894 () Bool)

(declare-fun res!399541 () Bool)

(assert (=> b!619894 (=> (not res!399541) (not e!355534))))

(assert (=> b!619894 (= res!399541 (and (= (size!18391 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18391 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18391 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!619895 () Bool)

(assert (=> b!619895 false))

(declare-fun lt!286401 () Unit!20560)

(declare-datatypes ((List!12121 0))(
  ( (Nil!12118) (Cons!12117 (h!13162 (_ BitVec 64)) (t!18357 List!12121)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37569 (_ BitVec 64) (_ BitVec 32) List!12121) Unit!20560)

(assert (=> b!619895 (= lt!286401 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!286398 (select (arr!18027 a!2986) j!136) index!984 Nil!12118))))

(declare-fun arrayNoDuplicates!0 (array!37569 (_ BitVec 32) List!12121) Bool)

(assert (=> b!619895 (arrayNoDuplicates!0 lt!286398 index!984 Nil!12118)))

(declare-fun lt!286408 () Unit!20560)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37569 (_ BitVec 32) (_ BitVec 32)) Unit!20560)

(assert (=> b!619895 (= lt!286408 (lemmaNoDuplicateFromThenFromBigger!0 lt!286398 #b00000000000000000000000000000000 index!984))))

(assert (=> b!619895 (arrayNoDuplicates!0 lt!286398 #b00000000000000000000000000000000 Nil!12118)))

(declare-fun lt!286411 () Unit!20560)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37569 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12121) Unit!20560)

(assert (=> b!619895 (= lt!286411 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12118))))

(assert (=> b!619895 (arrayContainsKey!0 lt!286398 (select (arr!18027 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!286399 () Unit!20560)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37569 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!20560)

(assert (=> b!619895 (= lt!286399 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!286398 (select (arr!18027 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!619895 e!355532))

(declare-fun res!399547 () Bool)

(assert (=> b!619895 (=> (not res!399547) (not e!355532))))

(assert (=> b!619895 (= res!399547 (arrayContainsKey!0 lt!286398 (select (arr!18027 a!2986) j!136) j!136))))

(declare-fun e!355540 () Unit!20560)

(declare-fun Unit!20563 () Unit!20560)

(assert (=> b!619895 (= e!355540 Unit!20563)))

(declare-fun b!619896 () Bool)

(declare-fun Unit!20564 () Unit!20560)

(assert (=> b!619896 (= e!355535 Unit!20564)))

(declare-fun res!399545 () Bool)

(declare-fun b!619897 () Bool)

(assert (=> b!619897 (= res!399545 (arrayContainsKey!0 lt!286398 (select (arr!18027 a!2986) j!136) j!136))))

(declare-fun e!355538 () Bool)

(assert (=> b!619897 (=> (not res!399545) (not e!355538))))

(assert (=> b!619897 (= e!355536 e!355538)))

(declare-fun b!619898 () Bool)

(declare-fun res!399536 () Bool)

(assert (=> b!619898 (=> (not res!399536) (not e!355533))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37569 (_ BitVec 32)) Bool)

(assert (=> b!619898 (= res!399536 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!619899 () Bool)

(declare-fun res!399534 () Bool)

(assert (=> b!619899 (=> (not res!399534) (not e!355534))))

(assert (=> b!619899 (= res!399534 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!619900 () Bool)

(declare-fun Unit!20565 () Unit!20560)

(assert (=> b!619900 (= e!355537 Unit!20565)))

(declare-fun b!619901 () Bool)

(assert (=> b!619901 (= e!355534 e!355533)))

(declare-fun res!399539 () Bool)

(assert (=> b!619901 (=> (not res!399539) (not e!355533))))

(declare-fun lt!286397 () SeekEntryResult!6474)

(assert (=> b!619901 (= res!399539 (or (= lt!286397 (MissingZero!6474 i!1108)) (= lt!286397 (MissingVacant!6474 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37569 (_ BitVec 32)) SeekEntryResult!6474)

(assert (=> b!619901 (= lt!286397 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!619902 () Bool)

(declare-fun res!399538 () Bool)

(assert (=> b!619902 (=> (not res!399538) (not e!355533))))

(assert (=> b!619902 (= res!399538 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12118))))

(declare-fun b!619903 () Bool)

(assert (=> b!619903 (= e!355531 (= lt!286405 lt!286414))))

(declare-fun b!619904 () Bool)

(declare-fun Unit!20566 () Unit!20560)

(assert (=> b!619904 (= e!355540 Unit!20566)))

(declare-fun b!619905 () Bool)

(declare-fun res!399533 () Bool)

(assert (=> b!619905 (=> (not res!399533) (not e!355534))))

(assert (=> b!619905 (= res!399533 (validKeyInArray!0 (select (arr!18027 a!2986) j!136)))))

(declare-fun b!619906 () Bool)

(assert (=> b!619906 false))

(declare-fun lt!286406 () Unit!20560)

(assert (=> b!619906 (= lt!286406 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!286398 (select (arr!18027 a!2986) j!136) j!136 Nil!12118))))

(assert (=> b!619906 (arrayNoDuplicates!0 lt!286398 j!136 Nil!12118)))

(declare-fun lt!286410 () Unit!20560)

(assert (=> b!619906 (= lt!286410 (lemmaNoDuplicateFromThenFromBigger!0 lt!286398 #b00000000000000000000000000000000 j!136))))

(assert (=> b!619906 (arrayNoDuplicates!0 lt!286398 #b00000000000000000000000000000000 Nil!12118)))

(declare-fun lt!286409 () Unit!20560)

(assert (=> b!619906 (= lt!286409 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12118))))

(assert (=> b!619906 (arrayContainsKey!0 lt!286398 (select (arr!18027 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!286415 () Unit!20560)

(assert (=> b!619906 (= lt!286415 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!286398 (select (arr!18027 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!20567 () Unit!20560)

(assert (=> b!619906 (= e!355543 Unit!20567)))

(declare-fun b!619907 () Bool)

(declare-fun res!399543 () Bool)

(assert (=> b!619907 (=> (not res!399543) (not e!355533))))

(assert (=> b!619907 (= res!399543 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18027 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!619908 () Bool)

(declare-fun Unit!20568 () Unit!20560)

(assert (=> b!619908 (= e!355537 Unit!20568)))

(assert (=> b!619908 false))

(declare-fun b!619909 () Bool)

(declare-fun Unit!20569 () Unit!20560)

(assert (=> b!619909 (= e!355535 Unit!20569)))

(declare-fun res!399542 () Bool)

(assert (=> b!619909 (= res!399542 (= (select (store (arr!18027 a!2986) i!1108 k!1786) index!984) (select (arr!18027 a!2986) j!136)))))

(assert (=> b!619909 (=> (not res!399542) (not e!355539))))

(assert (=> b!619909 e!355539))

(declare-fun c!70544 () Bool)

(assert (=> b!619909 (= c!70544 (bvslt j!136 index!984))))

(declare-fun lt!286412 () Unit!20560)

(assert (=> b!619909 (= lt!286412 e!355543)))

(declare-fun c!70545 () Bool)

(assert (=> b!619909 (= c!70545 (bvslt index!984 j!136))))

(declare-fun lt!286416 () Unit!20560)

(assert (=> b!619909 (= lt!286416 e!355540)))

(assert (=> b!619909 false))

(declare-fun res!399544 () Bool)

(assert (=> start!56136 (=> (not res!399544) (not e!355534))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56136 (= res!399544 (validMask!0 mask!3053))))

(assert (=> start!56136 e!355534))

(assert (=> start!56136 true))

(declare-fun array_inv!13801 (array!37569) Bool)

(assert (=> start!56136 (array_inv!13801 a!2986)))

(declare-fun b!619910 () Bool)

(assert (=> b!619910 (= e!355538 (arrayContainsKey!0 lt!286398 (select (arr!18027 a!2986) j!136) index!984))))

(assert (= (and start!56136 res!399544) b!619894))

(assert (= (and b!619894 res!399541) b!619905))

(assert (= (and b!619905 res!399533) b!619893))

(assert (= (and b!619893 res!399535) b!619899))

(assert (= (and b!619899 res!399534) b!619901))

(assert (= (and b!619901 res!399539) b!619898))

(assert (= (and b!619898 res!399536) b!619902))

(assert (= (and b!619902 res!399538) b!619907))

(assert (= (and b!619907 res!399543) b!619887))

(assert (= (and b!619887 res!399546) b!619889))

(assert (= (and b!619889 res!399540) b!619890))

(assert (= (and b!619890 res!399548) b!619903))

(assert (= (and b!619890 c!70547) b!619908))

(assert (= (and b!619890 (not c!70547)) b!619900))

(assert (= (and b!619890 c!70546) b!619909))

(assert (= (and b!619890 (not c!70546)) b!619896))

(assert (= (and b!619909 res!399542) b!619891))

(assert (= (and b!619891 (not res!399537)) b!619897))

(assert (= (and b!619897 res!399545) b!619910))

(assert (= (and b!619909 c!70544) b!619906))

(assert (= (and b!619909 (not c!70544)) b!619888))

(assert (= (and b!619909 c!70545) b!619895))

(assert (= (and b!619909 (not c!70545)) b!619904))

(assert (= (and b!619895 res!399547) b!619892))

(declare-fun m!595869 () Bool)

(assert (=> b!619902 m!595869))

(declare-fun m!595871 () Bool)

(assert (=> b!619909 m!595871))

(declare-fun m!595873 () Bool)

(assert (=> b!619909 m!595873))

(declare-fun m!595875 () Bool)

(assert (=> b!619909 m!595875))

(declare-fun m!595877 () Bool)

(assert (=> start!56136 m!595877))

(declare-fun m!595879 () Bool)

(assert (=> start!56136 m!595879))

(declare-fun m!595881 () Bool)

(assert (=> b!619901 m!595881))

(declare-fun m!595883 () Bool)

(assert (=> b!619890 m!595883))

(declare-fun m!595885 () Bool)

(assert (=> b!619890 m!595885))

(declare-fun m!595887 () Bool)

(assert (=> b!619890 m!595887))

(assert (=> b!619890 m!595875))

(assert (=> b!619890 m!595875))

(declare-fun m!595889 () Bool)

(assert (=> b!619890 m!595889))

(assert (=> b!619890 m!595871))

(declare-fun m!595891 () Bool)

(assert (=> b!619890 m!595891))

(declare-fun m!595893 () Bool)

(assert (=> b!619890 m!595893))

(assert (=> b!619906 m!595875))

(assert (=> b!619906 m!595875))

(declare-fun m!595895 () Bool)

(assert (=> b!619906 m!595895))

(assert (=> b!619906 m!595875))

(declare-fun m!595897 () Bool)

(assert (=> b!619906 m!595897))

(declare-fun m!595899 () Bool)

(assert (=> b!619906 m!595899))

(assert (=> b!619906 m!595875))

(declare-fun m!595901 () Bool)

(assert (=> b!619906 m!595901))

(declare-fun m!595903 () Bool)

(assert (=> b!619906 m!595903))

(declare-fun m!595905 () Bool)

(assert (=> b!619906 m!595905))

(declare-fun m!595907 () Bool)

(assert (=> b!619906 m!595907))

(assert (=> b!619910 m!595875))

(assert (=> b!619910 m!595875))

(declare-fun m!595909 () Bool)

(assert (=> b!619910 m!595909))

(assert (=> b!619897 m!595875))

(assert (=> b!619897 m!595875))

(declare-fun m!595911 () Bool)

(assert (=> b!619897 m!595911))

(assert (=> b!619887 m!595871))

(declare-fun m!595913 () Bool)

(assert (=> b!619887 m!595913))

(assert (=> b!619905 m!595875))

(assert (=> b!619905 m!595875))

(declare-fun m!595915 () Bool)

(assert (=> b!619905 m!595915))

(assert (=> b!619892 m!595875))

(assert (=> b!619892 m!595875))

(assert (=> b!619892 m!595909))

(declare-fun m!595917 () Bool)

(assert (=> b!619898 m!595917))

(declare-fun m!595919 () Bool)

(assert (=> b!619893 m!595919))

(assert (=> b!619895 m!595875))

(declare-fun m!595921 () Bool)

(assert (=> b!619895 m!595921))

(assert (=> b!619895 m!595875))

(declare-fun m!595923 () Bool)

(assert (=> b!619895 m!595923))

(declare-fun m!595925 () Bool)

(assert (=> b!619895 m!595925))

(assert (=> b!619895 m!595903))

(assert (=> b!619895 m!595875))

(declare-fun m!595927 () Bool)

(assert (=> b!619895 m!595927))

(assert (=> b!619895 m!595875))

(declare-fun m!595929 () Bool)

(assert (=> b!619895 m!595929))

(assert (=> b!619895 m!595875))

(assert (=> b!619895 m!595911))

(assert (=> b!619895 m!595907))

(declare-fun m!595931 () Bool)

(assert (=> b!619899 m!595931))

(declare-fun m!595933 () Bool)

(assert (=> b!619907 m!595933))

(declare-fun m!595935 () Bool)

(assert (=> b!619889 m!595935))

(assert (=> b!619889 m!595875))

(assert (=> b!619889 m!595875))

(declare-fun m!595937 () Bool)

(assert (=> b!619889 m!595937))

(push 1)

