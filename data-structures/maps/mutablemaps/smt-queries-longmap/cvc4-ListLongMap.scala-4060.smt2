; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!55600 () Bool)

(assert start!55600)

(declare-fun b!608925 () Bool)

(declare-fun res!391684 () Bool)

(declare-fun e!348752 () Bool)

(assert (=> b!608925 (=> res!391684 e!348752)))

(declare-datatypes ((List!11988 0))(
  ( (Nil!11985) (Cons!11984 (h!13029 (_ BitVec 64)) (t!18224 List!11988)) )
))
(declare-fun contains!3034 (List!11988 (_ BitVec 64)) Bool)

(assert (=> b!608925 (= res!391684 (contains!3034 Nil!11985 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!608926 () Bool)

(declare-fun e!348749 () Bool)

(declare-fun e!348743 () Bool)

(assert (=> b!608926 (= e!348749 e!348743)))

(declare-fun res!391679 () Bool)

(assert (=> b!608926 (=> res!391679 e!348743)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!278346 () (_ BitVec 64))

(declare-datatypes ((array!37294 0))(
  ( (array!37295 (arr!17894 (Array (_ BitVec 32) (_ BitVec 64))) (size!18258 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37294)

(declare-fun lt!278352 () (_ BitVec 64))

(assert (=> b!608926 (= res!391679 (or (not (= (select (arr!17894 a!2986) j!136) lt!278346)) (not (= (select (arr!17894 a!2986) j!136) lt!278352))))))

(declare-fun e!348739 () Bool)

(assert (=> b!608926 e!348739))

(declare-fun res!391691 () Bool)

(assert (=> b!608926 (=> (not res!391691) (not e!348739))))

(assert (=> b!608926 (= res!391691 (= lt!278352 (select (arr!17894 a!2986) j!136)))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!608926 (= lt!278352 (select (store (arr!17894 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!608927 () Bool)

(declare-fun res!391671 () Bool)

(declare-fun e!348741 () Bool)

(assert (=> b!608927 (=> (not res!391671) (not e!348741))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37294 (_ BitVec 32)) Bool)

(assert (=> b!608927 (= res!391671 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!608928 () Bool)

(declare-fun res!391688 () Bool)

(assert (=> b!608928 (=> res!391688 e!348752)))

(assert (=> b!608928 (= res!391688 (contains!3034 Nil!11985 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!608929 () Bool)

(declare-fun res!391674 () Bool)

(declare-fun e!348747 () Bool)

(assert (=> b!608929 (=> (not res!391674) (not e!348747))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!608929 (= res!391674 (validKeyInArray!0 (select (arr!17894 a!2986) j!136)))))

(declare-fun b!608930 () Bool)

(declare-datatypes ((Unit!19474 0))(
  ( (Unit!19475) )
))
(declare-fun e!348748 () Unit!19474)

(declare-fun Unit!19476 () Unit!19474)

(assert (=> b!608930 (= e!348748 Unit!19476)))

(declare-fun b!608931 () Bool)

(declare-fun e!348751 () Bool)

(assert (=> b!608931 (= e!348743 e!348751)))

(declare-fun res!391677 () Bool)

(assert (=> b!608931 (=> res!391677 e!348751)))

(assert (=> b!608931 (= res!391677 (bvsge index!984 j!136))))

(declare-fun lt!278353 () Unit!19474)

(declare-fun e!348744 () Unit!19474)

(assert (=> b!608931 (= lt!278353 e!348744)))

(declare-fun c!68996 () Bool)

(assert (=> b!608931 (= c!68996 (bvslt j!136 index!984))))

(declare-fun b!608932 () Bool)

(declare-fun e!348754 () Bool)

(assert (=> b!608932 (= e!348739 e!348754)))

(declare-fun res!391673 () Bool)

(assert (=> b!608932 (=> res!391673 e!348754)))

(assert (=> b!608932 (= res!391673 (or (not (= (select (arr!17894 a!2986) j!136) lt!278346)) (not (= (select (arr!17894 a!2986) j!136) lt!278352)) (bvsge j!136 index!984)))))

(declare-fun b!608933 () Bool)

(declare-fun Unit!19477 () Unit!19474)

(assert (=> b!608933 (= e!348744 Unit!19477)))

(declare-fun lt!278345 () array!37294)

(declare-fun lt!278351 () Unit!19474)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37294 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19474)

(assert (=> b!608933 (= lt!278351 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!278345 (select (arr!17894 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun arrayContainsKey!0 (array!37294 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!608933 (arrayContainsKey!0 lt!278345 (select (arr!17894 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!278355 () Unit!19474)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37294 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11988) Unit!19474)

(assert (=> b!608933 (= lt!278355 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11985))))

(declare-fun arrayNoDuplicates!0 (array!37294 (_ BitVec 32) List!11988) Bool)

(assert (=> b!608933 (arrayNoDuplicates!0 lt!278345 #b00000000000000000000000000000000 Nil!11985)))

(declare-fun lt!278360 () Unit!19474)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37294 (_ BitVec 32) (_ BitVec 32)) Unit!19474)

(assert (=> b!608933 (= lt!278360 (lemmaNoDuplicateFromThenFromBigger!0 lt!278345 #b00000000000000000000000000000000 j!136))))

(assert (=> b!608933 (arrayNoDuplicates!0 lt!278345 j!136 Nil!11985)))

(declare-fun lt!278349 () Unit!19474)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37294 (_ BitVec 64) (_ BitVec 32) List!11988) Unit!19474)

(assert (=> b!608933 (= lt!278349 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!278345 (select (arr!17894 a!2986) j!136) j!136 Nil!11985))))

(assert (=> b!608933 false))

(declare-fun b!608934 () Bool)

(declare-fun e!348750 () Bool)

(assert (=> b!608934 (= e!348750 (not e!348749))))

(declare-fun res!391676 () Bool)

(assert (=> b!608934 (=> res!391676 e!348749)))

(declare-datatypes ((SeekEntryResult!6341 0))(
  ( (MissingZero!6341 (index!27638 (_ BitVec 32))) (Found!6341 (index!27639 (_ BitVec 32))) (Intermediate!6341 (undefined!7153 Bool) (index!27640 (_ BitVec 32)) (x!56467 (_ BitVec 32))) (Undefined!6341) (MissingVacant!6341 (index!27641 (_ BitVec 32))) )
))
(declare-fun lt!278347 () SeekEntryResult!6341)

(assert (=> b!608934 (= res!391676 (not (= lt!278347 (Found!6341 index!984))))))

(declare-fun lt!278359 () Unit!19474)

(assert (=> b!608934 (= lt!278359 e!348748)))

(declare-fun c!68995 () Bool)

(assert (=> b!608934 (= c!68995 (= lt!278347 Undefined!6341))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37294 (_ BitVec 32)) SeekEntryResult!6341)

(assert (=> b!608934 (= lt!278347 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!278346 lt!278345 mask!3053))))

(declare-fun e!348753 () Bool)

(assert (=> b!608934 e!348753))

(declare-fun res!391687 () Bool)

(assert (=> b!608934 (=> (not res!391687) (not e!348753))))

(declare-fun lt!278350 () SeekEntryResult!6341)

(declare-fun lt!278361 () (_ BitVec 32))

(assert (=> b!608934 (= res!391687 (= lt!278350 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!278361 vacantSpotIndex!68 lt!278346 lt!278345 mask!3053)))))

(assert (=> b!608934 (= lt!278350 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!278361 vacantSpotIndex!68 (select (arr!17894 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!608934 (= lt!278346 (select (store (arr!17894 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!278358 () Unit!19474)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37294 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19474)

(assert (=> b!608934 (= lt!278358 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!278361 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!608934 (= lt!278361 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!608935 () Bool)

(assert (=> b!608935 (= e!348752 true)))

(declare-fun lt!278357 () Bool)

(assert (=> b!608935 (= lt!278357 (contains!3034 Nil!11985 k!1786))))

(declare-fun b!608936 () Bool)

(declare-fun res!391672 () Bool)

(assert (=> b!608936 (=> res!391672 e!348752)))

(declare-fun noDuplicate!336 (List!11988) Bool)

(assert (=> b!608936 (= res!391672 (not (noDuplicate!336 Nil!11985)))))

(declare-fun b!608937 () Bool)

(declare-fun lt!278348 () SeekEntryResult!6341)

(assert (=> b!608937 (= e!348753 (= lt!278348 lt!278350))))

(declare-fun b!608938 () Bool)

(declare-fun res!391680 () Bool)

(assert (=> b!608938 (=> (not res!391680) (not e!348741))))

(assert (=> b!608938 (= res!391680 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11985))))

(declare-fun b!608939 () Bool)

(declare-fun e!348746 () Bool)

(assert (=> b!608939 (= e!348746 (arrayContainsKey!0 lt!278345 (select (arr!17894 a!2986) j!136) index!984))))

(declare-fun b!608940 () Bool)

(declare-fun e!348740 () Bool)

(assert (=> b!608940 (= e!348741 e!348740)))

(declare-fun res!391681 () Bool)

(assert (=> b!608940 (=> (not res!391681) (not e!348740))))

(assert (=> b!608940 (= res!391681 (= (select (store (arr!17894 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!608940 (= lt!278345 (array!37295 (store (arr!17894 a!2986) i!1108 k!1786) (size!18258 a!2986)))))

(declare-fun b!608941 () Bool)

(assert (=> b!608941 (= e!348747 e!348741)))

(declare-fun res!391689 () Bool)

(assert (=> b!608941 (=> (not res!391689) (not e!348741))))

(declare-fun lt!278354 () SeekEntryResult!6341)

(assert (=> b!608941 (= res!391689 (or (= lt!278354 (MissingZero!6341 i!1108)) (= lt!278354 (MissingVacant!6341 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37294 (_ BitVec 32)) SeekEntryResult!6341)

(assert (=> b!608941 (= lt!278354 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun e!348742 () Bool)

(declare-fun b!608942 () Bool)

(assert (=> b!608942 (= e!348742 (arrayContainsKey!0 lt!278345 (select (arr!17894 a!2986) j!136) index!984))))

(declare-fun b!608943 () Bool)

(declare-fun Unit!19478 () Unit!19474)

(assert (=> b!608943 (= e!348748 Unit!19478)))

(assert (=> b!608943 false))

(declare-fun b!608944 () Bool)

(declare-fun res!391678 () Bool)

(assert (=> b!608944 (=> (not res!391678) (not e!348747))))

(assert (=> b!608944 (= res!391678 (validKeyInArray!0 k!1786))))

(declare-fun b!608945 () Bool)

(assert (=> b!608945 (= e!348754 e!348742)))

(declare-fun res!391690 () Bool)

(assert (=> b!608945 (=> (not res!391690) (not e!348742))))

(assert (=> b!608945 (= res!391690 (arrayContainsKey!0 lt!278345 (select (arr!17894 a!2986) j!136) j!136))))

(declare-fun b!608946 () Bool)

(assert (=> b!608946 (= e!348740 e!348750)))

(declare-fun res!391682 () Bool)

(assert (=> b!608946 (=> (not res!391682) (not e!348750))))

(assert (=> b!608946 (= res!391682 (and (= lt!278348 (Found!6341 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17894 a!2986) index!984) (select (arr!17894 a!2986) j!136))) (not (= (select (arr!17894 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!608946 (= lt!278348 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17894 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!608947 () Bool)

(declare-fun res!391683 () Bool)

(assert (=> b!608947 (=> (not res!391683) (not e!348747))))

(assert (=> b!608947 (= res!391683 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!608948 () Bool)

(declare-fun res!391685 () Bool)

(assert (=> b!608948 (=> (not res!391685) (not e!348747))))

(assert (=> b!608948 (= res!391685 (and (= (size!18258 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18258 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18258 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!608949 () Bool)

(declare-fun res!391670 () Bool)

(assert (=> b!608949 (=> (not res!391670) (not e!348741))))

(assert (=> b!608949 (= res!391670 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17894 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!608950 () Bool)

(assert (=> b!608950 (= e!348751 e!348752)))

(declare-fun res!391675 () Bool)

(assert (=> b!608950 (=> res!391675 e!348752)))

(assert (=> b!608950 (= res!391675 (or (bvsge (size!18258 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18258 a!2986))))))

(assert (=> b!608950 (arrayContainsKey!0 lt!278345 (select (arr!17894 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!278356 () Unit!19474)

(assert (=> b!608950 (= lt!278356 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!278345 (select (arr!17894 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!608950 e!348746))

(declare-fun res!391686 () Bool)

(assert (=> b!608950 (=> (not res!391686) (not e!348746))))

(assert (=> b!608950 (= res!391686 (arrayContainsKey!0 lt!278345 (select (arr!17894 a!2986) j!136) j!136))))

(declare-fun res!391669 () Bool)

(assert (=> start!55600 (=> (not res!391669) (not e!348747))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55600 (= res!391669 (validMask!0 mask!3053))))

(assert (=> start!55600 e!348747))

(assert (=> start!55600 true))

(declare-fun array_inv!13668 (array!37294) Bool)

(assert (=> start!55600 (array_inv!13668 a!2986)))

(declare-fun b!608951 () Bool)

(declare-fun Unit!19479 () Unit!19474)

(assert (=> b!608951 (= e!348744 Unit!19479)))

(assert (= (and start!55600 res!391669) b!608948))

(assert (= (and b!608948 res!391685) b!608929))

(assert (= (and b!608929 res!391674) b!608944))

(assert (= (and b!608944 res!391678) b!608947))

(assert (= (and b!608947 res!391683) b!608941))

(assert (= (and b!608941 res!391689) b!608927))

(assert (= (and b!608927 res!391671) b!608938))

(assert (= (and b!608938 res!391680) b!608949))

(assert (= (and b!608949 res!391670) b!608940))

(assert (= (and b!608940 res!391681) b!608946))

(assert (= (and b!608946 res!391682) b!608934))

(assert (= (and b!608934 res!391687) b!608937))

(assert (= (and b!608934 c!68995) b!608943))

(assert (= (and b!608934 (not c!68995)) b!608930))

(assert (= (and b!608934 (not res!391676)) b!608926))

(assert (= (and b!608926 res!391691) b!608932))

(assert (= (and b!608932 (not res!391673)) b!608945))

(assert (= (and b!608945 res!391690) b!608942))

(assert (= (and b!608926 (not res!391679)) b!608931))

(assert (= (and b!608931 c!68996) b!608933))

(assert (= (and b!608931 (not c!68996)) b!608951))

(assert (= (and b!608931 (not res!391677)) b!608950))

(assert (= (and b!608950 res!391686) b!608939))

(assert (= (and b!608950 (not res!391675)) b!608936))

(assert (= (and b!608936 (not res!391672)) b!608925))

(assert (= (and b!608925 (not res!391684)) b!608928))

(assert (= (and b!608928 (not res!391688)) b!608935))

(declare-fun m!585525 () Bool)

(assert (=> b!608942 m!585525))

(assert (=> b!608942 m!585525))

(declare-fun m!585527 () Bool)

(assert (=> b!608942 m!585527))

(declare-fun m!585529 () Bool)

(assert (=> b!608949 m!585529))

(declare-fun m!585531 () Bool)

(assert (=> b!608941 m!585531))

(declare-fun m!585533 () Bool)

(assert (=> b!608944 m!585533))

(declare-fun m!585535 () Bool)

(assert (=> b!608946 m!585535))

(assert (=> b!608946 m!585525))

(assert (=> b!608946 m!585525))

(declare-fun m!585537 () Bool)

(assert (=> b!608946 m!585537))

(assert (=> b!608926 m!585525))

(declare-fun m!585539 () Bool)

(assert (=> b!608926 m!585539))

(declare-fun m!585541 () Bool)

(assert (=> b!608926 m!585541))

(declare-fun m!585543 () Bool)

(assert (=> b!608925 m!585543))

(declare-fun m!585545 () Bool)

(assert (=> b!608938 m!585545))

(assert (=> b!608933 m!585525))

(declare-fun m!585547 () Bool)

(assert (=> b!608933 m!585547))

(assert (=> b!608933 m!585525))

(assert (=> b!608933 m!585525))

(declare-fun m!585549 () Bool)

(assert (=> b!608933 m!585549))

(declare-fun m!585551 () Bool)

(assert (=> b!608933 m!585551))

(assert (=> b!608933 m!585525))

(declare-fun m!585553 () Bool)

(assert (=> b!608933 m!585553))

(declare-fun m!585555 () Bool)

(assert (=> b!608933 m!585555))

(declare-fun m!585557 () Bool)

(assert (=> b!608933 m!585557))

(declare-fun m!585559 () Bool)

(assert (=> b!608933 m!585559))

(assert (=> b!608929 m!585525))

(assert (=> b!608929 m!585525))

(declare-fun m!585561 () Bool)

(assert (=> b!608929 m!585561))

(assert (=> b!608934 m!585525))

(declare-fun m!585563 () Bool)

(assert (=> b!608934 m!585563))

(declare-fun m!585565 () Bool)

(assert (=> b!608934 m!585565))

(declare-fun m!585567 () Bool)

(assert (=> b!608934 m!585567))

(declare-fun m!585569 () Bool)

(assert (=> b!608934 m!585569))

(assert (=> b!608934 m!585539))

(declare-fun m!585571 () Bool)

(assert (=> b!608934 m!585571))

(assert (=> b!608934 m!585525))

(declare-fun m!585573 () Bool)

(assert (=> b!608934 m!585573))

(declare-fun m!585575 () Bool)

(assert (=> b!608935 m!585575))

(assert (=> b!608945 m!585525))

(assert (=> b!608945 m!585525))

(declare-fun m!585577 () Bool)

(assert (=> b!608945 m!585577))

(assert (=> b!608939 m!585525))

(assert (=> b!608939 m!585525))

(assert (=> b!608939 m!585527))

(declare-fun m!585579 () Bool)

(assert (=> start!55600 m!585579))

(declare-fun m!585581 () Bool)

(assert (=> start!55600 m!585581))

(declare-fun m!585583 () Bool)

(assert (=> b!608927 m!585583))

(assert (=> b!608932 m!585525))

(declare-fun m!585585 () Bool)

(assert (=> b!608928 m!585585))

(assert (=> b!608940 m!585539))

(declare-fun m!585587 () Bool)

(assert (=> b!608940 m!585587))

(assert (=> b!608950 m!585525))

(assert (=> b!608950 m!585525))

(declare-fun m!585589 () Bool)

(assert (=> b!608950 m!585589))

(assert (=> b!608950 m!585525))

(declare-fun m!585591 () Bool)

(assert (=> b!608950 m!585591))

(assert (=> b!608950 m!585525))

(assert (=> b!608950 m!585577))

(declare-fun m!585593 () Bool)

(assert (=> b!608947 m!585593))

(declare-fun m!585595 () Bool)

(assert (=> b!608936 m!585595))

(push 1)

