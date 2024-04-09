; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56848 () Bool)

(assert start!56848)

(declare-fun b!629414 () Bool)

(declare-fun res!406990 () Bool)

(declare-fun e!359928 () Bool)

(assert (=> b!629414 (=> (not res!406990) (not e!359928))))

(declare-datatypes ((array!37999 0))(
  ( (array!38000 (arr!18233 (Array (_ BitVec 32) (_ BitVec 64))) (size!18597 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37999)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37999 (_ BitVec 32)) Bool)

(assert (=> b!629414 (= res!406990 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun res!406994 () Bool)

(declare-fun e!359927 () Bool)

(assert (=> start!56848 (=> (not res!406994) (not e!359927))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56848 (= res!406994 (validMask!0 mask!3053))))

(assert (=> start!56848 e!359927))

(assert (=> start!56848 true))

(declare-fun array_inv!14007 (array!37999) Bool)

(assert (=> start!56848 (array_inv!14007 a!2986)))

(declare-fun b!629415 () Bool)

(declare-fun e!359929 () Bool)

(assert (=> b!629415 (= e!359928 e!359929)))

(declare-fun res!406991 () Bool)

(assert (=> b!629415 (=> (not res!406991) (not e!359929))))

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6680 0))(
  ( (MissingZero!6680 (index!29003 (_ BitVec 32))) (Found!6680 (index!29004 (_ BitVec 32))) (Intermediate!6680 (undefined!7492 Bool) (index!29005 (_ BitVec 32)) (x!57761 (_ BitVec 32))) (Undefined!6680) (MissingVacant!6680 (index!29006 (_ BitVec 32))) )
))
(declare-fun lt!290765 () SeekEntryResult!6680)

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!629415 (= res!406991 (and (= lt!290765 (Found!6680 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18233 a!2986) index!984) (select (arr!18233 a!2986) j!136))) (not (= (select (arr!18233 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37999 (_ BitVec 32)) SeekEntryResult!6680)

(assert (=> b!629415 (= lt!290765 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18233 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!629416 () Bool)

(assert (=> b!629416 (= e!359927 e!359928)))

(declare-fun res!406997 () Bool)

(assert (=> b!629416 (=> (not res!406997) (not e!359928))))

(declare-fun lt!290766 () SeekEntryResult!6680)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!629416 (= res!406997 (or (= lt!290766 (MissingZero!6680 i!1108)) (= lt!290766 (MissingVacant!6680 i!1108))))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37999 (_ BitVec 32)) SeekEntryResult!6680)

(assert (=> b!629416 (= lt!290766 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!629417 () Bool)

(declare-fun res!406988 () Bool)

(assert (=> b!629417 (=> (not res!406988) (not e!359927))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!629417 (= res!406988 (validKeyInArray!0 (select (arr!18233 a!2986) j!136)))))

(declare-fun b!629418 () Bool)

(declare-fun res!406993 () Bool)

(assert (=> b!629418 (=> (not res!406993) (not e!359927))))

(assert (=> b!629418 (= res!406993 (and (= (size!18597 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18597 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18597 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!629419 () Bool)

(declare-fun res!406995 () Bool)

(assert (=> b!629419 (=> (not res!406995) (not e!359928))))

(declare-datatypes ((List!12327 0))(
  ( (Nil!12324) (Cons!12323 (h!13368 (_ BitVec 64)) (t!18563 List!12327)) )
))
(declare-fun arrayNoDuplicates!0 (array!37999 (_ BitVec 32) List!12327) Bool)

(assert (=> b!629419 (= res!406995 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12324))))

(declare-fun b!629420 () Bool)

(declare-fun res!406992 () Bool)

(assert (=> b!629420 (=> (not res!406992) (not e!359927))))

(declare-fun arrayContainsKey!0 (array!37999 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!629420 (= res!406992 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!629421 () Bool)

(declare-fun lt!290769 () SeekEntryResult!6680)

(assert (=> b!629421 (= e!359929 (not (= lt!290765 lt!290769)))))

(declare-fun lt!290768 () (_ BitVec 32))

(assert (=> b!629421 (= lt!290769 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!290768 vacantSpotIndex!68 (select (store (arr!18233 a!2986) i!1108 k!1786) j!136) (array!38000 (store (arr!18233 a!2986) i!1108 k!1786) (size!18597 a!2986)) mask!3053))))

(assert (=> b!629421 (= lt!290769 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!290768 vacantSpotIndex!68 (select (arr!18233 a!2986) j!136) a!2986 mask!3053))))

(declare-datatypes ((Unit!21104 0))(
  ( (Unit!21105) )
))
(declare-fun lt!290767 () Unit!21104)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37999 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21104)

(assert (=> b!629421 (= lt!290767 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!290768 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!629421 (= lt!290768 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!629422 () Bool)

(declare-fun res!406996 () Bool)

(assert (=> b!629422 (=> (not res!406996) (not e!359927))))

(assert (=> b!629422 (= res!406996 (validKeyInArray!0 k!1786))))

(declare-fun b!629423 () Bool)

(declare-fun res!406989 () Bool)

(assert (=> b!629423 (=> (not res!406989) (not e!359928))))

(assert (=> b!629423 (= res!406989 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18233 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18233 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!56848 res!406994) b!629418))

(assert (= (and b!629418 res!406993) b!629417))

(assert (= (and b!629417 res!406988) b!629422))

(assert (= (and b!629422 res!406996) b!629420))

(assert (= (and b!629420 res!406992) b!629416))

(assert (= (and b!629416 res!406997) b!629414))

(assert (= (and b!629414 res!406990) b!629419))

(assert (= (and b!629419 res!406995) b!629423))

(assert (= (and b!629423 res!406989) b!629415))

(assert (= (and b!629415 res!406991) b!629421))

(declare-fun m!604519 () Bool)

(assert (=> b!629414 m!604519))

(declare-fun m!604521 () Bool)

(assert (=> b!629419 m!604521))

(declare-fun m!604523 () Bool)

(assert (=> b!629421 m!604523))

(declare-fun m!604525 () Bool)

(assert (=> b!629421 m!604525))

(declare-fun m!604527 () Bool)

(assert (=> b!629421 m!604527))

(declare-fun m!604529 () Bool)

(assert (=> b!629421 m!604529))

(declare-fun m!604531 () Bool)

(assert (=> b!629421 m!604531))

(assert (=> b!629421 m!604525))

(declare-fun m!604533 () Bool)

(assert (=> b!629421 m!604533))

(assert (=> b!629421 m!604527))

(declare-fun m!604535 () Bool)

(assert (=> b!629421 m!604535))

(declare-fun m!604537 () Bool)

(assert (=> b!629420 m!604537))

(declare-fun m!604539 () Bool)

(assert (=> b!629415 m!604539))

(assert (=> b!629415 m!604527))

(assert (=> b!629415 m!604527))

(declare-fun m!604541 () Bool)

(assert (=> b!629415 m!604541))

(assert (=> b!629417 m!604527))

(assert (=> b!629417 m!604527))

(declare-fun m!604543 () Bool)

(assert (=> b!629417 m!604543))

(declare-fun m!604545 () Bool)

(assert (=> b!629422 m!604545))

(declare-fun m!604547 () Bool)

(assert (=> start!56848 m!604547))

(declare-fun m!604549 () Bool)

(assert (=> start!56848 m!604549))

(declare-fun m!604551 () Bool)

(assert (=> b!629423 m!604551))

(assert (=> b!629423 m!604529))

(declare-fun m!604553 () Bool)

(assert (=> b!629423 m!604553))

(declare-fun m!604555 () Bool)

(assert (=> b!629416 m!604555))

(push 1)

(assert (not b!629415))

(assert (not b!629417))

(assert (not b!629420))

(assert (not b!629414))

(assert (not b!629416))

(assert (not b!629419))

(assert (not b!629421))

(assert (not b!629422))

(assert (not start!56848))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!89013 () Bool)

(declare-fun res!407005 () Bool)

(declare-fun e!359955 () Bool)

(assert (=> d!89013 (=> res!407005 e!359955)))

(assert (=> d!89013 (= res!407005 (= (select (arr!18233 a!2986) #b00000000000000000000000000000000) k!1786))))

(assert (=> d!89013 (= (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000) e!359955)))

(declare-fun b!629467 () Bool)

(declare-fun e!359956 () Bool)

(assert (=> b!629467 (= e!359955 e!359956)))

(declare-fun res!407006 () Bool)

(assert (=> b!629467 (=> (not res!407006) (not e!359956))))

(assert (=> b!629467 (= res!407006 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!18597 a!2986)))))

(declare-fun b!629468 () Bool)

(assert (=> b!629468 (= e!359956 (arrayContainsKey!0 a!2986 k!1786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!89013 (not res!407005)) b!629467))

(assert (= (and b!629467 res!407006) b!629468))

(declare-fun m!604579 () Bool)

(assert (=> d!89013 m!604579))

(declare-fun m!604581 () Bool)

(assert (=> b!629468 m!604581))

(assert (=> b!629420 d!89013))

(declare-fun b!629517 () Bool)

(declare-fun e!359989 () SeekEntryResult!6680)

(assert (=> b!629517 (= e!359989 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 (select (arr!18233 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!629518 () Bool)

(declare-fun e!359988 () SeekEntryResult!6680)

(assert (=> b!629518 (= e!359988 (Found!6680 index!984))))

(declare-fun b!629519 () Bool)

(declare-fun e!359987 () SeekEntryResult!6680)

(assert (=> b!629519 (= e!359987 e!359988)))

(declare-fun lt!290810 () (_ BitVec 64))

(declare-fun c!71616 () Bool)

(assert (=> b!629519 (= c!71616 (= lt!290810 (select (arr!18233 a!2986) j!136)))))

(declare-fun d!89015 () Bool)

(declare-fun lt!290809 () SeekEntryResult!6680)

(assert (=> d!89015 (and (or (is-Undefined!6680 lt!290809) (not (is-Found!6680 lt!290809)) (and (bvsge (index!29004 lt!290809) #b00000000000000000000000000000000) (bvslt (index!29004 lt!290809) (size!18597 a!2986)))) (or (is-Undefined!6680 lt!290809) (is-Found!6680 lt!290809) (not (is-MissingVacant!6680 lt!290809)) (not (= (index!29006 lt!290809) vacantSpotIndex!68)) (and (bvsge (index!29006 lt!290809) #b00000000000000000000000000000000) (bvslt (index!29006 lt!290809) (size!18597 a!2986)))) (or (is-Undefined!6680 lt!290809) (ite (is-Found!6680 lt!290809) (= (select (arr!18233 a!2986) (index!29004 lt!290809)) (select (arr!18233 a!2986) j!136)) (and (is-MissingVacant!6680 lt!290809) (= (index!29006 lt!290809) vacantSpotIndex!68) (= (select (arr!18233 a!2986) (index!29006 lt!290809)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!89015 (= lt!290809 e!359987)))

(declare-fun c!71617 () Bool)

(assert (=> d!89015 (= c!71617 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!89015 (= lt!290810 (select (arr!18233 a!2986) index!984))))

(assert (=> d!89015 (validMask!0 mask!3053)))

(assert (=> d!89015 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18233 a!2986) j!136) a!2986 mask!3053) lt!290809)))

(declare-fun b!629520 () Bool)

(assert (=> b!629520 (= e!359989 (MissingVacant!6680 vacantSpotIndex!68))))

(declare-fun b!629521 () Bool)

(assert (=> b!629521 (= e!359987 Undefined!6680)))

(declare-fun b!629522 () Bool)

(declare-fun c!71618 () Bool)

(assert (=> b!629522 (= c!71618 (= lt!290810 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!629522 (= e!359988 e!359989)))

(assert (= (and d!89015 c!71617) b!629521))

(assert (= (and d!89015 (not c!71617)) b!629519))

(assert (= (and b!629519 c!71616) b!629518))

(assert (= (and b!629519 (not c!71616)) b!629522))

(assert (= (and b!629522 c!71618) b!629520))

(assert (= (and b!629522 (not c!71618)) b!629517))

(assert (=> b!629517 m!604523))

(assert (=> b!629517 m!604523))

(assert (=> b!629517 m!604527))

(declare-fun m!604619 () Bool)

(assert (=> b!629517 m!604619))

(declare-fun m!604621 () Bool)

(assert (=> d!89015 m!604621))

(declare-fun m!604623 () Bool)

(assert (=> d!89015 m!604623))

(assert (=> d!89015 m!604539))

(assert (=> d!89015 m!604547))

(assert (=> b!629415 d!89015))

(declare-fun b!629559 () Bool)

(declare-fun e!360019 () Bool)

(declare-fun e!360021 () Bool)

(assert (=> b!629559 (= e!360019 e!360021)))

(declare-fun lt!290822 () (_ BitVec 64))

(assert (=> b!629559 (= lt!290822 (select (arr!18233 a!2986) #b00000000000000000000000000000000))))

(declare-fun lt!290821 () Unit!21104)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!37999 (_ BitVec 64) (_ BitVec 32)) Unit!21104)

(assert (=> b!629559 (= lt!290821 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2986 lt!290822 #b00000000000000000000000000000000))))

(assert (=> b!629559 (arrayContainsKey!0 a!2986 lt!290822 #b00000000000000000000000000000000)))

(declare-fun lt!290823 () Unit!21104)

(assert (=> b!629559 (= lt!290823 lt!290821)))

(declare-fun res!407042 () Bool)

(assert (=> b!629559 (= res!407042 (= (seekEntryOrOpen!0 (select (arr!18233 a!2986) #b00000000000000000000000000000000) a!2986 mask!3053) (Found!6680 #b00000000000000000000000000000000)))))

(assert (=> b!629559 (=> (not res!407042) (not e!360021))))

(declare-fun b!629560 () Bool)

(declare-fun call!33295 () Bool)

(assert (=> b!629560 (= e!360019 call!33295)))

