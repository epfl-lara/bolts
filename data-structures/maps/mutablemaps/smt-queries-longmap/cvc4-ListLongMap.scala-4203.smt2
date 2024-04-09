; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!57454 () Bool)

(assert start!57454)

(declare-fun b!635555 () Bool)

(declare-fun e!363537 () Bool)

(declare-datatypes ((array!38200 0))(
  ( (array!38201 (arr!18323 (Array (_ BitVec 32) (_ BitVec 64))) (size!18687 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38200)

(assert (=> b!635555 (= e!363537 (or (bvsge (size!18687 a!2986) #b01111111111111111111111111111111) (bvslt #b00000000000000000000000000000000 (size!18687 a!2986))))))

(declare-fun lt!293935 () array!38200)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!38200 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!635555 (arrayContainsKey!0 lt!293935 (select (arr!18323 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-datatypes ((Unit!21438 0))(
  ( (Unit!21439) )
))
(declare-fun lt!293931 () Unit!21438)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38200 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21438)

(assert (=> b!635555 (= lt!293931 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!293935 (select (arr!18323 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!635556 () Bool)

(declare-fun e!363533 () Bool)

(declare-fun e!363539 () Bool)

(assert (=> b!635556 (= e!363533 e!363539)))

(declare-fun res!411296 () Bool)

(assert (=> b!635556 (=> (not res!411296) (not e!363539))))

(declare-datatypes ((SeekEntryResult!6770 0))(
  ( (MissingZero!6770 (index!29384 (_ BitVec 32))) (Found!6770 (index!29385 (_ BitVec 32))) (Intermediate!6770 (undefined!7582 Bool) (index!29386 (_ BitVec 32)) (x!58154 (_ BitVec 32))) (Undefined!6770) (MissingVacant!6770 (index!29387 (_ BitVec 32))) )
))
(declare-fun lt!293933 () SeekEntryResult!6770)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!635556 (= res!411296 (or (= lt!293933 (MissingZero!6770 i!1108)) (= lt!293933 (MissingVacant!6770 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38200 (_ BitVec 32)) SeekEntryResult!6770)

(assert (=> b!635556 (= lt!293933 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!635558 () Bool)

(declare-fun e!363541 () Bool)

(declare-fun lt!293937 () SeekEntryResult!6770)

(declare-fun lt!293940 () SeekEntryResult!6770)

(assert (=> b!635558 (= e!363541 (= lt!293937 lt!293940))))

(declare-fun b!635559 () Bool)

(declare-fun res!411297 () Bool)

(assert (=> b!635559 (=> (not res!411297) (not e!363533))))

(assert (=> b!635559 (= res!411297 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!635560 () Bool)

(declare-fun res!411305 () Bool)

(assert (=> b!635560 (=> (not res!411305) (not e!363533))))

(assert (=> b!635560 (= res!411305 (and (= (size!18687 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18687 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18687 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!635561 () Bool)

(declare-fun e!363540 () Bool)

(assert (=> b!635561 (= e!363540 (arrayContainsKey!0 lt!293935 (select (arr!18323 a!2986) j!136) index!984))))

(declare-fun b!635562 () Bool)

(declare-fun res!411295 () Bool)

(assert (=> b!635562 (=> (not res!411295) (not e!363539))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!635562 (= res!411295 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18323 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!635563 () Bool)

(declare-fun res!411298 () Bool)

(assert (=> b!635563 (=> (not res!411298) (not e!363533))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!635563 (= res!411298 (validKeyInArray!0 (select (arr!18323 a!2986) j!136)))))

(declare-fun b!635564 () Bool)

(declare-fun e!363530 () Bool)

(assert (=> b!635564 (= e!363539 e!363530)))

(declare-fun res!411301 () Bool)

(assert (=> b!635564 (=> (not res!411301) (not e!363530))))

(assert (=> b!635564 (= res!411301 (= (select (store (arr!18323 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!635564 (= lt!293935 (array!38201 (store (arr!18323 a!2986) i!1108 k!1786) (size!18687 a!2986)))))

(declare-fun b!635565 () Bool)

(declare-fun e!363534 () Bool)

(assert (=> b!635565 (= e!363534 e!363540)))

(declare-fun res!411310 () Bool)

(assert (=> b!635565 (=> (not res!411310) (not e!363540))))

(assert (=> b!635565 (= res!411310 (arrayContainsKey!0 lt!293935 (select (arr!18323 a!2986) j!136) j!136))))

(declare-fun b!635566 () Bool)

(declare-fun e!363538 () Bool)

(assert (=> b!635566 (= e!363538 e!363537)))

(declare-fun res!411302 () Bool)

(assert (=> b!635566 (=> res!411302 e!363537)))

(declare-fun lt!293938 () (_ BitVec 64))

(declare-fun lt!293936 () (_ BitVec 64))

(assert (=> b!635566 (= res!411302 (or (not (= (select (arr!18323 a!2986) j!136) lt!293938)) (not (= (select (arr!18323 a!2986) j!136) lt!293936)) (bvsge j!136 index!984)))))

(declare-fun e!363531 () Bool)

(assert (=> b!635566 e!363531))

(declare-fun res!411300 () Bool)

(assert (=> b!635566 (=> (not res!411300) (not e!363531))))

(assert (=> b!635566 (= res!411300 (= lt!293936 (select (arr!18323 a!2986) j!136)))))

(assert (=> b!635566 (= lt!293936 (select (store (arr!18323 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!635567 () Bool)

(declare-fun e!363536 () Bool)

(assert (=> b!635567 (= e!363536 (not e!363538))))

(declare-fun res!411303 () Bool)

(assert (=> b!635567 (=> res!411303 e!363538)))

(declare-fun lt!293934 () SeekEntryResult!6770)

(assert (=> b!635567 (= res!411303 (not (= lt!293934 (Found!6770 index!984))))))

(declare-fun lt!293930 () Unit!21438)

(declare-fun e!363532 () Unit!21438)

(assert (=> b!635567 (= lt!293930 e!363532)))

(declare-fun c!72497 () Bool)

(assert (=> b!635567 (= c!72497 (= lt!293934 Undefined!6770))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38200 (_ BitVec 32)) SeekEntryResult!6770)

(assert (=> b!635567 (= lt!293934 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!293938 lt!293935 mask!3053))))

(assert (=> b!635567 e!363541))

(declare-fun res!411309 () Bool)

(assert (=> b!635567 (=> (not res!411309) (not e!363541))))

(declare-fun lt!293932 () (_ BitVec 32))

(assert (=> b!635567 (= res!411309 (= lt!293940 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!293932 vacantSpotIndex!68 lt!293938 lt!293935 mask!3053)))))

(assert (=> b!635567 (= lt!293940 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!293932 vacantSpotIndex!68 (select (arr!18323 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!635567 (= lt!293938 (select (store (arr!18323 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!293939 () Unit!21438)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38200 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21438)

(assert (=> b!635567 (= lt!293939 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!293932 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!635567 (= lt!293932 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!635568 () Bool)

(declare-fun Unit!21440 () Unit!21438)

(assert (=> b!635568 (= e!363532 Unit!21440)))

(assert (=> b!635568 false))

(declare-fun b!635569 () Bool)

(declare-fun res!411299 () Bool)

(assert (=> b!635569 (=> (not res!411299) (not e!363539))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38200 (_ BitVec 32)) Bool)

(assert (=> b!635569 (= res!411299 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!635557 () Bool)

(declare-fun res!411308 () Bool)

(assert (=> b!635557 (=> (not res!411308) (not e!363539))))

(declare-datatypes ((List!12417 0))(
  ( (Nil!12414) (Cons!12413 (h!13458 (_ BitVec 64)) (t!18653 List!12417)) )
))
(declare-fun arrayNoDuplicates!0 (array!38200 (_ BitVec 32) List!12417) Bool)

(assert (=> b!635557 (= res!411308 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12414))))

(declare-fun res!411311 () Bool)

(assert (=> start!57454 (=> (not res!411311) (not e!363533))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57454 (= res!411311 (validMask!0 mask!3053))))

(assert (=> start!57454 e!363533))

(assert (=> start!57454 true))

(declare-fun array_inv!14097 (array!38200) Bool)

(assert (=> start!57454 (array_inv!14097 a!2986)))

(declare-fun b!635570 () Bool)

(declare-fun res!411307 () Bool)

(assert (=> b!635570 (=> (not res!411307) (not e!363533))))

(assert (=> b!635570 (= res!411307 (validKeyInArray!0 k!1786))))

(declare-fun b!635571 () Bool)

(assert (=> b!635571 (= e!363531 e!363534)))

(declare-fun res!411306 () Bool)

(assert (=> b!635571 (=> res!411306 e!363534)))

(assert (=> b!635571 (= res!411306 (or (not (= (select (arr!18323 a!2986) j!136) lt!293938)) (not (= (select (arr!18323 a!2986) j!136) lt!293936)) (bvsge j!136 index!984)))))

(declare-fun b!635572 () Bool)

(assert (=> b!635572 (= e!363530 e!363536)))

(declare-fun res!411304 () Bool)

(assert (=> b!635572 (=> (not res!411304) (not e!363536))))

(assert (=> b!635572 (= res!411304 (and (= lt!293937 (Found!6770 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18323 a!2986) index!984) (select (arr!18323 a!2986) j!136))) (not (= (select (arr!18323 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!635572 (= lt!293937 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18323 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!635573 () Bool)

(declare-fun Unit!21441 () Unit!21438)

(assert (=> b!635573 (= e!363532 Unit!21441)))

(assert (= (and start!57454 res!411311) b!635560))

(assert (= (and b!635560 res!411305) b!635563))

(assert (= (and b!635563 res!411298) b!635570))

(assert (= (and b!635570 res!411307) b!635559))

(assert (= (and b!635559 res!411297) b!635556))

(assert (= (and b!635556 res!411296) b!635569))

(assert (= (and b!635569 res!411299) b!635557))

(assert (= (and b!635557 res!411308) b!635562))

(assert (= (and b!635562 res!411295) b!635564))

(assert (= (and b!635564 res!411301) b!635572))

(assert (= (and b!635572 res!411304) b!635567))

(assert (= (and b!635567 res!411309) b!635558))

(assert (= (and b!635567 c!72497) b!635568))

(assert (= (and b!635567 (not c!72497)) b!635573))

(assert (= (and b!635567 (not res!411303)) b!635566))

(assert (= (and b!635566 res!411300) b!635571))

(assert (= (and b!635571 (not res!411306)) b!635565))

(assert (= (and b!635565 res!411310) b!635561))

(assert (= (and b!635566 (not res!411302)) b!635555))

(declare-fun m!609943 () Bool)

(assert (=> start!57454 m!609943))

(declare-fun m!609945 () Bool)

(assert (=> start!57454 m!609945))

(declare-fun m!609947 () Bool)

(assert (=> b!635571 m!609947))

(declare-fun m!609949 () Bool)

(assert (=> b!635562 m!609949))

(declare-fun m!609951 () Bool)

(assert (=> b!635557 m!609951))

(declare-fun m!609953 () Bool)

(assert (=> b!635564 m!609953))

(declare-fun m!609955 () Bool)

(assert (=> b!635564 m!609955))

(declare-fun m!609957 () Bool)

(assert (=> b!635570 m!609957))

(declare-fun m!609959 () Bool)

(assert (=> b!635559 m!609959))

(assert (=> b!635565 m!609947))

(assert (=> b!635565 m!609947))

(declare-fun m!609961 () Bool)

(assert (=> b!635565 m!609961))

(assert (=> b!635563 m!609947))

(assert (=> b!635563 m!609947))

(declare-fun m!609963 () Bool)

(assert (=> b!635563 m!609963))

(declare-fun m!609965 () Bool)

(assert (=> b!635556 m!609965))

(assert (=> b!635561 m!609947))

(assert (=> b!635561 m!609947))

(declare-fun m!609967 () Bool)

(assert (=> b!635561 m!609967))

(assert (=> b!635566 m!609947))

(assert (=> b!635566 m!609953))

(declare-fun m!609969 () Bool)

(assert (=> b!635566 m!609969))

(declare-fun m!609971 () Bool)

(assert (=> b!635572 m!609971))

(assert (=> b!635572 m!609947))

(assert (=> b!635572 m!609947))

(declare-fun m!609973 () Bool)

(assert (=> b!635572 m!609973))

(assert (=> b!635555 m!609947))

(assert (=> b!635555 m!609947))

(declare-fun m!609975 () Bool)

(assert (=> b!635555 m!609975))

(assert (=> b!635555 m!609947))

(declare-fun m!609977 () Bool)

(assert (=> b!635555 m!609977))

(declare-fun m!609979 () Bool)

(assert (=> b!635567 m!609979))

(assert (=> b!635567 m!609947))

(declare-fun m!609981 () Bool)

(assert (=> b!635567 m!609981))

(assert (=> b!635567 m!609953))

(declare-fun m!609983 () Bool)

(assert (=> b!635567 m!609983))

(declare-fun m!609985 () Bool)

(assert (=> b!635567 m!609985))

(declare-fun m!609987 () Bool)

(assert (=> b!635567 m!609987))

(assert (=> b!635567 m!609947))

(declare-fun m!609989 () Bool)

(assert (=> b!635567 m!609989))

(declare-fun m!609991 () Bool)

(assert (=> b!635569 m!609991))

(push 1)

