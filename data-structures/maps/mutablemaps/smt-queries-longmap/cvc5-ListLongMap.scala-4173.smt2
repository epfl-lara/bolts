; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56844 () Bool)

(assert start!56844)

(declare-fun b!629354 () Bool)

(declare-fun e!359903 () Bool)

(declare-fun e!359902 () Bool)

(assert (=> b!629354 (= e!359903 e!359902)))

(declare-fun res!406931 () Bool)

(assert (=> b!629354 (=> (not res!406931) (not e!359902))))

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6678 0))(
  ( (MissingZero!6678 (index!28995 (_ BitVec 32))) (Found!6678 (index!28996 (_ BitVec 32))) (Intermediate!6678 (undefined!7490 Bool) (index!28997 (_ BitVec 32)) (x!57759 (_ BitVec 32))) (Undefined!6678) (MissingVacant!6678 (index!28998 (_ BitVec 32))) )
))
(declare-fun lt!290738 () SeekEntryResult!6678)

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!37995 0))(
  ( (array!37996 (arr!18231 (Array (_ BitVec 32) (_ BitVec 64))) (size!18595 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37995)

(assert (=> b!629354 (= res!406931 (and (= lt!290738 (Found!6678 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18231 a!2986) index!984) (select (arr!18231 a!2986) j!136))) (not (= (select (arr!18231 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37995 (_ BitVec 32)) SeekEntryResult!6678)

(assert (=> b!629354 (= lt!290738 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18231 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!629355 () Bool)

(declare-fun res!406930 () Bool)

(declare-fun e!359905 () Bool)

(assert (=> b!629355 (=> (not res!406930) (not e!359905))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!37995 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!629355 (= res!406930 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!629356 () Bool)

(declare-fun res!406934 () Bool)

(assert (=> b!629356 (=> (not res!406934) (not e!359903))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37995 (_ BitVec 32)) Bool)

(assert (=> b!629356 (= res!406934 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun res!406929 () Bool)

(assert (=> start!56844 (=> (not res!406929) (not e!359905))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56844 (= res!406929 (validMask!0 mask!3053))))

(assert (=> start!56844 e!359905))

(assert (=> start!56844 true))

(declare-fun array_inv!14005 (array!37995) Bool)

(assert (=> start!56844 (array_inv!14005 a!2986)))

(declare-fun b!629357 () Bool)

(declare-fun res!406933 () Bool)

(assert (=> b!629357 (=> (not res!406933) (not e!359905))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!629357 (= res!406933 (validKeyInArray!0 k!1786))))

(declare-fun b!629358 () Bool)

(declare-fun lt!290736 () SeekEntryResult!6678)

(assert (=> b!629358 (= e!359902 (not (= lt!290738 lt!290736)))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun lt!290735 () (_ BitVec 32))

(assert (=> b!629358 (= lt!290736 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!290735 vacantSpotIndex!68 (select (store (arr!18231 a!2986) i!1108 k!1786) j!136) (array!37996 (store (arr!18231 a!2986) i!1108 k!1786) (size!18595 a!2986)) mask!3053))))

(assert (=> b!629358 (= lt!290736 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!290735 vacantSpotIndex!68 (select (arr!18231 a!2986) j!136) a!2986 mask!3053))))

(declare-datatypes ((Unit!21100 0))(
  ( (Unit!21101) )
))
(declare-fun lt!290739 () Unit!21100)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37995 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21100)

(assert (=> b!629358 (= lt!290739 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!290735 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!629358 (= lt!290735 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!629359 () Bool)

(declare-fun res!406928 () Bool)

(assert (=> b!629359 (=> (not res!406928) (not e!359903))))

(assert (=> b!629359 (= res!406928 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18231 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18231 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!629360 () Bool)

(assert (=> b!629360 (= e!359905 e!359903)))

(declare-fun res!406935 () Bool)

(assert (=> b!629360 (=> (not res!406935) (not e!359903))))

(declare-fun lt!290737 () SeekEntryResult!6678)

(assert (=> b!629360 (= res!406935 (or (= lt!290737 (MissingZero!6678 i!1108)) (= lt!290737 (MissingVacant!6678 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37995 (_ BitVec 32)) SeekEntryResult!6678)

(assert (=> b!629360 (= lt!290737 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!629361 () Bool)

(declare-fun res!406936 () Bool)

(assert (=> b!629361 (=> (not res!406936) (not e!359905))))

(assert (=> b!629361 (= res!406936 (validKeyInArray!0 (select (arr!18231 a!2986) j!136)))))

(declare-fun b!629362 () Bool)

(declare-fun res!406932 () Bool)

(assert (=> b!629362 (=> (not res!406932) (not e!359905))))

(assert (=> b!629362 (= res!406932 (and (= (size!18595 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18595 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18595 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!629363 () Bool)

(declare-fun res!406937 () Bool)

(assert (=> b!629363 (=> (not res!406937) (not e!359903))))

(declare-datatypes ((List!12325 0))(
  ( (Nil!12322) (Cons!12321 (h!13366 (_ BitVec 64)) (t!18561 List!12325)) )
))
(declare-fun arrayNoDuplicates!0 (array!37995 (_ BitVec 32) List!12325) Bool)

(assert (=> b!629363 (= res!406937 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12322))))

(assert (= (and start!56844 res!406929) b!629362))

(assert (= (and b!629362 res!406932) b!629361))

(assert (= (and b!629361 res!406936) b!629357))

(assert (= (and b!629357 res!406933) b!629355))

(assert (= (and b!629355 res!406930) b!629360))

(assert (= (and b!629360 res!406935) b!629356))

(assert (= (and b!629356 res!406934) b!629363))

(assert (= (and b!629363 res!406937) b!629359))

(assert (= (and b!629359 res!406928) b!629354))

(assert (= (and b!629354 res!406931) b!629358))

(declare-fun m!604443 () Bool)

(assert (=> start!56844 m!604443))

(declare-fun m!604445 () Bool)

(assert (=> start!56844 m!604445))

(declare-fun m!604447 () Bool)

(assert (=> b!629358 m!604447))

(declare-fun m!604449 () Bool)

(assert (=> b!629358 m!604449))

(declare-fun m!604451 () Bool)

(assert (=> b!629358 m!604451))

(declare-fun m!604453 () Bool)

(assert (=> b!629358 m!604453))

(declare-fun m!604455 () Bool)

(assert (=> b!629358 m!604455))

(assert (=> b!629358 m!604449))

(declare-fun m!604457 () Bool)

(assert (=> b!629358 m!604457))

(assert (=> b!629358 m!604451))

(declare-fun m!604459 () Bool)

(assert (=> b!629358 m!604459))

(declare-fun m!604461 () Bool)

(assert (=> b!629355 m!604461))

(declare-fun m!604463 () Bool)

(assert (=> b!629357 m!604463))

(declare-fun m!604465 () Bool)

(assert (=> b!629363 m!604465))

(assert (=> b!629361 m!604451))

(assert (=> b!629361 m!604451))

(declare-fun m!604467 () Bool)

(assert (=> b!629361 m!604467))

(declare-fun m!604469 () Bool)

(assert (=> b!629360 m!604469))

(declare-fun m!604471 () Bool)

(assert (=> b!629356 m!604471))

(declare-fun m!604473 () Bool)

(assert (=> b!629354 m!604473))

(assert (=> b!629354 m!604451))

(assert (=> b!629354 m!604451))

(declare-fun m!604475 () Bool)

(assert (=> b!629354 m!604475))

(declare-fun m!604477 () Bool)

(assert (=> b!629359 m!604477))

(assert (=> b!629359 m!604453))

(declare-fun m!604479 () Bool)

(assert (=> b!629359 m!604479))

(push 1)

(assert (not b!629356))

(assert (not b!629354))

(assert (not b!629361))

(assert (not b!629363))

(assert (not b!629357))

(assert (not b!629360))

(assert (not b!629355))

(assert (not start!56844))

(assert (not b!629358))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!629469 () Bool)

(declare-fun e!359959 () SeekEntryResult!6678)

(declare-fun e!359957 () SeekEntryResult!6678)

(assert (=> b!629469 (= e!359959 e!359957)))

(declare-fun lt!290788 () (_ BitVec 64))

(declare-fun c!71598 () Bool)

(assert (=> b!629469 (= c!71598 (= lt!290788 (select (store (arr!18231 a!2986) i!1108 k!1786) j!136)))))

(declare-fun d!89007 () Bool)

(declare-fun lt!290789 () SeekEntryResult!6678)

(assert (=> d!89007 (and (or (is-Undefined!6678 lt!290789) (not (is-Found!6678 lt!290789)) (and (bvsge (index!28996 lt!290789) #b00000000000000000000000000000000) (bvslt (index!28996 lt!290789) (size!18595 (array!37996 (store (arr!18231 a!2986) i!1108 k!1786) (size!18595 a!2986)))))) (or (is-Undefined!6678 lt!290789) (is-Found!6678 lt!290789) (not (is-MissingVacant!6678 lt!290789)) (not (= (index!28998 lt!290789) vacantSpotIndex!68)) (and (bvsge (index!28998 lt!290789) #b00000000000000000000000000000000) (bvslt (index!28998 lt!290789) (size!18595 (array!37996 (store (arr!18231 a!2986) i!1108 k!1786) (size!18595 a!2986)))))) (or (is-Undefined!6678 lt!290789) (ite (is-Found!6678 lt!290789) (= (select (arr!18231 (array!37996 (store (arr!18231 a!2986) i!1108 k!1786) (size!18595 a!2986))) (index!28996 lt!290789)) (select (store (arr!18231 a!2986) i!1108 k!1786) j!136)) (and (is-MissingVacant!6678 lt!290789) (= (index!28998 lt!290789) vacantSpotIndex!68) (= (select (arr!18231 (array!37996 (store (arr!18231 a!2986) i!1108 k!1786) (size!18595 a!2986))) (index!28998 lt!290789)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!89007 (= lt!290789 e!359959)))

(declare-fun c!71599 () Bool)

(assert (=> d!89007 (= c!71599 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!89007 (= lt!290788 (select (arr!18231 (array!37996 (store (arr!18231 a!2986) i!1108 k!1786) (size!18595 a!2986))) lt!290735))))

(assert (=> d!89007 (validMask!0 mask!3053)))

(assert (=> d!89007 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!290735 vacantSpotIndex!68 (select (store (arr!18231 a!2986) i!1108 k!1786) j!136) (array!37996 (store (arr!18231 a!2986) i!1108 k!1786) (size!18595 a!2986)) mask!3053) lt!290789)))

(declare-fun b!629470 () Bool)

(assert (=> b!629470 (= e!359959 Undefined!6678)))

(declare-fun b!629471 () Bool)

(declare-fun c!71600 () Bool)

(assert (=> b!629471 (= c!71600 (= lt!290788 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!359958 () SeekEntryResult!6678)

(assert (=> b!629471 (= e!359957 e!359958)))

(declare-fun b!629472 () Bool)

(assert (=> b!629472 (= e!359958 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!290735 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 (select (store (arr!18231 a!2986) i!1108 k!1786) j!136) (array!37996 (store (arr!18231 a!2986) i!1108 k!1786) (size!18595 a!2986)) mask!3053))))

(declare-fun b!629473 () Bool)

(assert (=> b!629473 (= e!359958 (MissingVacant!6678 vacantSpotIndex!68))))

(declare-fun b!629474 () Bool)

(assert (=> b!629474 (= e!359957 (Found!6678 lt!290735))))

(assert (= (and d!89007 c!71599) b!629470))

(assert (= (and d!89007 (not c!71599)) b!629469))

(assert (= (and b!629469 c!71598) b!629474))

(assert (= (and b!629469 (not c!71598)) b!629471))

(assert (= (and b!629471 c!71600) b!629473))

(assert (= (and b!629471 (not c!71600)) b!629472))

(declare-fun m!604583 () Bool)

(assert (=> d!89007 m!604583))

(declare-fun m!604585 () Bool)

(assert (=> d!89007 m!604585))

(declare-fun m!604587 () Bool)

(assert (=> d!89007 m!604587))

(assert (=> d!89007 m!604443))

(declare-fun m!604589 () Bool)

(assert (=> b!629472 m!604589))

(assert (=> b!629472 m!604589))

(assert (=> b!629472 m!604449))

(declare-fun m!604591 () Bool)

(assert (=> b!629472 m!604591))

(assert (=> b!629358 d!89007))

(declare-fun b!629475 () Bool)

(declare-fun e!359962 () SeekEntryResult!6678)

(declare-fun e!359960 () SeekEntryResult!6678)

(assert (=> b!629475 (= e!359962 e!359960)))

(declare-fun c!71601 () Bool)

(declare-fun lt!290790 () (_ BitVec 64))

(assert (=> b!629475 (= c!71601 (= lt!290790 (select (arr!18231 a!2986) j!136)))))

(declare-fun d!89019 () Bool)

(declare-fun lt!290791 () SeekEntryResult!6678)

(assert (=> d!89019 (and (or (is-Undefined!6678 lt!290791) (not (is-Found!6678 lt!290791)) (and (bvsge (index!28996 lt!290791) #b00000000000000000000000000000000) (bvslt (index!28996 lt!290791) (size!18595 a!2986)))) (or (is-Undefined!6678 lt!290791) (is-Found!6678 lt!290791) (not (is-MissingVacant!6678 lt!290791)) (not (= (index!28998 lt!290791) vacantSpotIndex!68)) (and (bvsge (index!28998 lt!290791) #b00000000000000000000000000000000) (bvslt (index!28998 lt!290791) (size!18595 a!2986)))) (or (is-Undefined!6678 lt!290791) (ite (is-Found!6678 lt!290791) (= (select (arr!18231 a!2986) (index!28996 lt!290791)) (select (arr!18231 a!2986) j!136)) (and (is-MissingVacant!6678 lt!290791) (= (index!28998 lt!290791) vacantSpotIndex!68) (= (select (arr!18231 a!2986) (index!28998 lt!290791)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!89019 (= lt!290791 e!359962)))

(declare-fun c!71602 () Bool)

(assert (=> d!89019 (= c!71602 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!89019 (= lt!290790 (select (arr!18231 a!2986) lt!290735))))

(assert (=> d!89019 (validMask!0 mask!3053)))

(assert (=> d!89019 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!290735 vacantSpotIndex!68 (select (arr!18231 a!2986) j!136) a!2986 mask!3053) lt!290791)))

(declare-fun b!629476 () Bool)

(assert (=> b!629476 (= e!359962 Undefined!6678)))

(declare-fun b!629477 () Bool)

(declare-fun c!71603 () Bool)

(assert (=> b!629477 (= c!71603 (= lt!290790 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!359961 () SeekEntryResult!6678)

(assert (=> b!629477 (= e!359960 e!359961)))

(declare-fun b!629478 () Bool)

(assert (=> b!629478 (= e!359961 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!290735 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 (select (arr!18231 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!629479 () Bool)

(assert (=> b!629479 (= e!359961 (MissingVacant!6678 vacantSpotIndex!68))))

(declare-fun b!629480 () Bool)

(assert (=> b!629480 (= e!359960 (Found!6678 lt!290735))))

(assert (= (and d!89019 c!71602) b!629476))

(assert (= (and d!89019 (not c!71602)) b!629475))

(assert (= (and b!629475 c!71601) b!629480))

(assert (= (and b!629475 (not c!71601)) b!629477))

(assert (= (and b!629477 c!71603) b!629479))

(assert (= (and b!629477 (not c!71603)) b!629478))

(declare-fun m!604593 () Bool)

(assert (=> d!89019 m!604593))

(declare-fun m!604595 () Bool)

(assert (=> d!89019 m!604595))

(declare-fun m!604597 () Bool)

(assert (=> d!89019 m!604597))

(assert (=> d!89019 m!604443))

(assert (=> b!629478 m!604589))

(assert (=> b!629478 m!604589))

(assert (=> b!629478 m!604451))

(declare-fun m!604599 () Bool)

(assert (=> b!629478 m!604599))

(assert (=> b!629358 d!89019))

(declare-fun d!89023 () Bool)

(declare-fun e!359992 () Bool)

(assert (=> d!89023 e!359992))

(declare-fun res!407021 () Bool)

(assert (=> d!89023 (=> (not res!407021) (not e!359992))))

(assert (=> d!89023 (= res!407021 (and (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18595 a!2986)) (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18595 a!2986)))) (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18595 a!2986)) (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18595 a!2986)))) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18595 a!2986))))))

(declare-fun lt!290811 () Unit!21100)

(declare-fun choose!9 (array!37995 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21100)

(assert (=> d!89023 (= lt!290811 (choose!9 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!290735 vacantSpotIndex!68 mask!3053))))

(assert (=> d!89023 (validMask!0 mask!3053)))

(assert (=> d!89023 (= (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!290735 vacantSpotIndex!68 mask!3053) lt!290811)))

(declare-fun b!629525 () Bool)

(assert (=> b!629525 (= e!359992 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!290735 vacantSpotIndex!68 (select (arr!18231 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!290735 vacantSpotIndex!68 (select (store (arr!18231 a!2986) i!1108 k!1786) j!136) (array!37996 (store (arr!18231 a!2986) i!1108 k!1786) (size!18595 a!2986)) mask!3053)))))

(assert (= (and d!89023 res!407021) b!629525))

(declare-fun m!604627 () Bool)

(assert (=> d!89023 m!604627))

(assert (=> d!89023 m!604443))

(assert (=> b!629525 m!604451))

(assert (=> b!629525 m!604459))

(assert (=> b!629525 m!604453))

(assert (=> b!629525 m!604451))

(assert (=> b!629525 m!604449))

(assert (=> b!629525 m!604457))

(assert (=> b!629525 m!604449))

(assert (=> b!629358 d!89023))

(declare-fun d!89037 () Bool)

(declare-fun lt!290814 () (_ BitVec 32))

(assert (=> d!89037 (and (bvsge lt!290814 #b00000000000000000000000000000000) (bvslt lt!290814 (bvadd mask!3053 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!89037 (= lt!290814 (choose!52 index!984 x!910 mask!3053))))

(assert (=> d!89037 (validMask!0 mask!3053)))

(assert (=> d!89037 (= (nextIndex!0 index!984 x!910 mask!3053) lt!290814)))

(declare-fun bs!18984 () Bool)

(assert (= bs!18984 d!89037))

(declare-fun m!604629 () Bool)

(assert (=> bs!18984 m!604629))

(assert (=> bs!18984 m!604443))

(assert (=> b!629358 d!89037))

(declare-fun b!629563 () Bool)

(declare-fun e!360023 () Bool)

(declare-fun contains!3089 (List!12325 (_ BitVec 64)) Bool)

(assert (=> b!629563 (= e!360023 (contains!3089 Nil!12322 (select (arr!18231 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!629564 () Bool)

(declare-fun e!360022 () Bool)

(declare-fun call!33296 () Bool)

(assert (=> b!629564 (= e!360022 call!33296)))

(declare-fun b!629565 () Bool)

(assert (=> b!629565 (= e!360022 call!33296)))

(declare-fun b!629566 () Bool)

(declare-fun e!360024 () Bool)

(declare-fun e!360025 () Bool)

(assert (=> b!629566 (= e!360024 e!360025)))

(declare-fun res!407044 () Bool)

(assert (=> b!629566 (=> (not res!407044) (not e!360025))))

(assert (=> b!629566 (= res!407044 (not e!360023))))

(declare-fun res!407045 () Bool)

(assert (=> b!629566 (=> (not res!407045) (not e!360023))))

(assert (=> b!629566 (= res!407045 (validKeyInArray!0 (select (arr!18231 a!2986) #b00000000000000000000000000000000)))))

(declare-fun d!89039 () Bool)

(declare-fun res!407043 () Bool)

(assert (=> d!89039 (=> res!407043 e!360024)))

(assert (=> d!89039 (= res!407043 (bvsge #b00000000000000000000000000000000 (size!18595 a!2986)))))

(assert (=> d!89039 (= (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12322) e!360024)))

(declare-fun bm!33293 () Bool)

(declare-fun c!71627 () Bool)

(assert (=> bm!33293 (= call!33296 (arrayNoDuplicates!0 a!2986 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!71627 (Cons!12321 (select (arr!18231 a!2986) #b00000000000000000000000000000000) Nil!12322) Nil!12322)))))

(declare-fun b!629567 () Bool)

(assert (=> b!629567 (= e!360025 e!360022)))

(assert (=> b!629567 (= c!71627 (validKeyInArray!0 (select (arr!18231 a!2986) #b00000000000000000000000000000000)))))

(assert (= (and d!89039 (not res!407043)) b!629566))

(assert (= (and b!629566 res!407045) b!629563))

(assert (= (and b!629566 res!407044) b!629567))

(assert (= (and b!629567 c!71627) b!629565))

(assert (= (and b!629567 (not c!71627)) b!629564))

(assert (= (or b!629565 b!629564) bm!33293))

(declare-fun m!604645 () Bool)

(assert (=> b!629563 m!604645))

(assert (=> b!629563 m!604645))

(declare-fun m!604647 () Bool)

(assert (=> b!629563 m!604647))

(assert (=> b!629566 m!604645))

(assert (=> b!629566 m!604645))

(declare-fun m!604649 () Bool)

(assert (=> b!629566 m!604649))

(assert (=> bm!33293 m!604645))

(declare-fun m!604651 () Bool)

(assert (=> bm!33293 m!604651))

(assert (=> b!629567 m!604645))

(assert (=> b!629567 m!604645))

(assert (=> b!629567 m!604649))

(assert (=> b!629363 d!89039))

(declare-fun d!89045 () Bool)

(assert (=> d!89045 (= (validKeyInArray!0 k!1786) (and (not (= k!1786 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1786 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!629357 d!89045))

(declare-fun b!629591 () Bool)

(declare-fun e!360045 () Bool)

(declare-fun call!33302 () Bool)

(assert (=> b!629591 (= e!360045 call!33302)))

(declare-fun b!629592 () Bool)

(declare-fun e!360044 () Bool)

(assert (=> b!629592 (= e!360045 e!360044)))

(declare-fun lt!290830 () (_ BitVec 64))

(assert (=> b!629592 (= lt!290830 (select (arr!18231 a!2986) #b00000000000000000000000000000000))))

(declare-fun lt!290831 () Unit!21100)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!37995 (_ BitVec 64) (_ BitVec 32)) Unit!21100)

(assert (=> b!629592 (= lt!290831 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2986 lt!290830 #b00000000000000000000000000000000))))

(assert (=> b!629592 (arrayContainsKey!0 a!2986 lt!290830 #b00000000000000000000000000000000)))

(declare-fun lt!290832 () Unit!21100)

(assert (=> b!629592 (= lt!290832 lt!290831)))

(declare-fun res!407060 () Bool)

(assert (=> b!629592 (= res!407060 (= (seekEntryOrOpen!0 (select (arr!18231 a!2986) #b00000000000000000000000000000000) a!2986 mask!3053) (Found!6678 #b00000000000000000000000000000000)))))

(assert (=> b!629592 (=> (not res!407060) (not e!360044))))

(declare-fun d!89047 () Bool)

(declare-fun res!407059 () Bool)

(declare-fun e!360046 () Bool)

(assert (=> d!89047 (=> res!407059 e!360046)))

(assert (=> d!89047 (= res!407059 (bvsge #b00000000000000000000000000000000 (size!18595 a!2986)))))

(assert (=> d!89047 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053) e!360046)))

(declare-fun bm!33299 () Bool)

(assert (=> bm!33299 (= call!33302 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2986 mask!3053))))

(declare-fun b!629593 () Bool)

(assert (=> b!629593 (= e!360046 e!360045)))

(declare-fun c!71633 () Bool)

(assert (=> b!629593 (= c!71633 (validKeyInArray!0 (select (arr!18231 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!629594 () Bool)

(assert (=> b!629594 (= e!360044 call!33302)))

(assert (= (and d!89047 (not res!407059)) b!629593))

(assert (= (and b!629593 c!71633) b!629592))

(assert (= (and b!629593 (not c!71633)) b!629591))

(assert (= (and b!629592 res!407060) b!629594))

(assert (= (or b!629594 b!629591) bm!33299))

(assert (=> b!629592 m!604645))

(declare-fun m!604657 () Bool)

(assert (=> b!629592 m!604657))

(declare-fun m!604659 () Bool)

(assert (=> b!629592 m!604659))

(assert (=> b!629592 m!604645))

(declare-fun m!604661 () Bool)

(assert (=> b!629592 m!604661))

(declare-fun m!604663 () Bool)

(assert (=> bm!33299 m!604663))

(assert (=> b!629593 m!604645))

(assert (=> b!629593 m!604645))

(assert (=> b!629593 m!604649))

(assert (=> b!629356 d!89047))

(declare-fun d!89055 () Bool)

(assert (=> d!89055 (= (validMask!0 mask!3053) (and (or (= mask!3053 #b00000000000000000000000000000111) (= mask!3053 #b00000000000000000000000000001111) (= mask!3053 #b00000000000000000000000000011111) (= mask!3053 #b00000000000000000000000000111111) (= mask!3053 #b00000000000000000000000001111111) (= mask!3053 #b00000000000000000000000011111111) (= mask!3053 #b00000000000000000000000111111111) (= mask!3053 #b00000000000000000000001111111111) (= mask!3053 #b00000000000000000000011111111111) (= mask!3053 #b00000000000000000000111111111111) (= mask!3053 #b00000000000000000001111111111111) (= mask!3053 #b00000000000000000011111111111111) (= mask!3053 #b00000000000000000111111111111111) (= mask!3053 #b00000000000000001111111111111111) (= mask!3053 #b00000000000000011111111111111111) (= mask!3053 #b00000000000000111111111111111111) (= mask!3053 #b00000000000001111111111111111111) (= mask!3053 #b00000000000011111111111111111111) (= mask!3053 #b00000000000111111111111111111111) (= mask!3053 #b00000000001111111111111111111111) (= mask!3053 #b00000000011111111111111111111111) (= mask!3053 #b00000000111111111111111111111111) (= mask!3053 #b00000001111111111111111111111111) (= mask!3053 #b00000011111111111111111111111111) (= mask!3053 #b00000111111111111111111111111111) (= mask!3053 #b00001111111111111111111111111111) (= mask!3053 #b00011111111111111111111111111111) (= mask!3053 #b00111111111111111111111111111111)) (bvsle mask!3053 #b00111111111111111111111111111111)))))

(assert (=> start!56844 d!89055))

(declare-fun d!89057 () Bool)

(assert (=> d!89057 (= (array_inv!14005 a!2986) (bvsge (size!18595 a!2986) #b00000000000000000000000000000000))))

(assert (=> start!56844 d!89057))

(declare-fun d!89059 () Bool)

(assert (=> d!89059 (= (validKeyInArray!0 (select (arr!18231 a!2986) j!136)) (and (not (= (select (arr!18231 a!2986) j!136) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!18231 a!2986) j!136) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!629361 d!89059))

(declare-fun d!89061 () Bool)

(declare-fun res!407065 () Bool)

(declare-fun e!360060 () Bool)

(assert (=> d!89061 (=> res!407065 e!360060)))

(assert (=> d!89061 (= res!407065 (= (select (arr!18231 a!2986) #b00000000000000000000000000000000) k!1786))))

(assert (=> d!89061 (= (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000) e!360060)))

(declare-fun b!629617 () Bool)

(declare-fun e!360061 () Bool)

(assert (=> b!629617 (= e!360060 e!360061)))

(declare-fun res!407066 () Bool)

(assert (=> b!629617 (=> (not res!407066) (not e!360061))))

(assert (=> b!629617 (= res!407066 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!18595 a!2986)))))

(declare-fun b!629618 () Bool)

(assert (=> b!629618 (= e!360061 (arrayContainsKey!0 a!2986 k!1786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!89061 (not res!407065)) b!629617))

(assert (= (and b!629617 res!407066) b!629618))

(assert (=> d!89061 m!604645))

(declare-fun m!604679 () Bool)

(assert (=> b!629618 m!604679))

(assert (=> b!629355 d!89061))

(declare-fun b!629649 () Bool)

(declare-fun e!360078 () SeekEntryResult!6678)

(declare-fun lt!290858 () SeekEntryResult!6678)

(assert (=> b!629649 (= e!360078 (Found!6678 (index!28997 lt!290858)))))

(declare-fun e!360079 () SeekEntryResult!6678)

(declare-fun b!629651 () Bool)

(assert (=> b!629651 (= e!360079 (seekKeyOrZeroReturnVacant!0 (x!57759 lt!290858) (index!28997 lt!290858) (index!28997 lt!290858) k!1786 a!2986 mask!3053))))

(declare-fun b!629652 () Bool)

(assert (=> b!629652 (= e!360079 (MissingZero!6678 (index!28997 lt!290858)))))

(declare-fun b!629653 () Bool)

(declare-fun c!71659 () Bool)

(declare-fun lt!290857 () (_ BitVec 64))

(assert (=> b!629653 (= c!71659 (= lt!290857 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!629653 (= e!360078 e!360079)))

(declare-fun b!629654 () Bool)

(declare-fun e!360077 () SeekEntryResult!6678)

(assert (=> b!629654 (= e!360077 Undefined!6678)))

(declare-fun b!629650 () Bool)

(assert (=> b!629650 (= e!360077 e!360078)))

(assert (=> b!629650 (= lt!290857 (select (arr!18231 a!2986) (index!28997 lt!290858)))))

(declare-fun c!71660 () Bool)

(assert (=> b!629650 (= c!71660 (= lt!290857 k!1786))))

(declare-fun d!89063 () Bool)

(declare-fun lt!290859 () SeekEntryResult!6678)

