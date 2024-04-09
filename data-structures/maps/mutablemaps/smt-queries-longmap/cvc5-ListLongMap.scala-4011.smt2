; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!54546 () Bool)

(assert start!54546)

(declare-fun b!595696 () Bool)

(declare-fun res!381726 () Bool)

(declare-fun e!340351 () Bool)

(assert (=> b!595696 (=> res!381726 e!340351)))

(declare-datatypes ((List!11839 0))(
  ( (Nil!11836) (Cons!11835 (h!12880 (_ BitVec 64)) (t!18075 List!11839)) )
))
(declare-fun contains!2943 (List!11839 (_ BitVec 64)) Bool)

(assert (=> b!595696 (= res!381726 (contains!2943 Nil!11836 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!595697 () Bool)

(declare-fun res!381712 () Bool)

(declare-fun e!340350 () Bool)

(assert (=> b!595697 (=> (not res!381712) (not e!340350))))

(declare-datatypes ((array!36969 0))(
  ( (array!36970 (arr!17745 (Array (_ BitVec 32) (_ BitVec 64))) (size!18109 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36969)

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!36969 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!595697 (= res!381712 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!595698 () Bool)

(declare-fun res!381725 () Bool)

(assert (=> b!595698 (=> res!381725 e!340351)))

(declare-fun noDuplicate!259 (List!11839) Bool)

(assert (=> b!595698 (= res!381725 (not (noDuplicate!259 Nil!11836)))))

(declare-fun b!595699 () Bool)

(declare-fun e!340349 () Bool)

(declare-fun e!340354 () Bool)

(assert (=> b!595699 (= e!340349 e!340354)))

(declare-fun res!381719 () Bool)

(assert (=> b!595699 (=> (not res!381719) (not e!340354))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!270572 () array!36969)

(assert (=> b!595699 (= res!381719 (arrayContainsKey!0 lt!270572 (select (arr!17745 a!2986) j!136) j!136))))

(declare-fun b!595700 () Bool)

(declare-fun res!381728 () Bool)

(assert (=> b!595700 (=> (not res!381728) (not e!340350))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!595700 (= res!381728 (validKeyInArray!0 k!1786))))

(declare-fun b!595701 () Bool)

(declare-fun e!340353 () Bool)

(declare-fun e!340348 () Bool)

(assert (=> b!595701 (= e!340353 (not e!340348))))

(declare-fun res!381714 () Bool)

(assert (=> b!595701 (=> res!381714 e!340348)))

(declare-datatypes ((SeekEntryResult!6192 0))(
  ( (MissingZero!6192 (index!27015 (_ BitVec 32))) (Found!6192 (index!27016 (_ BitVec 32))) (Intermediate!6192 (undefined!7004 Bool) (index!27017 (_ BitVec 32)) (x!55845 (_ BitVec 32))) (Undefined!6192) (MissingVacant!6192 (index!27018 (_ BitVec 32))) )
))
(declare-fun lt!270566 () SeekEntryResult!6192)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!595701 (= res!381714 (not (= lt!270566 (Found!6192 index!984))))))

(declare-datatypes ((Unit!18712 0))(
  ( (Unit!18713) )
))
(declare-fun lt!270571 () Unit!18712)

(declare-fun e!340358 () Unit!18712)

(assert (=> b!595701 (= lt!270571 e!340358)))

(declare-fun c!67361 () Bool)

(assert (=> b!595701 (= c!67361 (= lt!270566 Undefined!6192))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun lt!270570 () (_ BitVec 64))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36969 (_ BitVec 32)) SeekEntryResult!6192)

(assert (=> b!595701 (= lt!270566 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!270570 lt!270572 mask!3053))))

(declare-fun e!340355 () Bool)

(assert (=> b!595701 e!340355))

(declare-fun res!381723 () Bool)

(assert (=> b!595701 (=> (not res!381723) (not e!340355))))

(declare-fun lt!270568 () (_ BitVec 32))

(declare-fun lt!270574 () SeekEntryResult!6192)

(assert (=> b!595701 (= res!381723 (= lt!270574 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!270568 vacantSpotIndex!68 lt!270570 lt!270572 mask!3053)))))

(assert (=> b!595701 (= lt!270574 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!270568 vacantSpotIndex!68 (select (arr!17745 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!595701 (= lt!270570 (select (store (arr!17745 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!270565 () Unit!18712)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36969 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18712)

(assert (=> b!595701 (= lt!270565 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!270568 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!595701 (= lt!270568 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!595702 () Bool)

(declare-fun e!340356 () Bool)

(assert (=> b!595702 (= e!340356 e!340351)))

(declare-fun res!381710 () Bool)

(assert (=> b!595702 (=> res!381710 e!340351)))

(assert (=> b!595702 (= res!381710 (or (bvsge (size!18109 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18109 a!2986))))))

(assert (=> b!595702 (arrayContainsKey!0 lt!270572 (select (arr!17745 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!270567 () Unit!18712)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!36969 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18712)

(assert (=> b!595702 (= lt!270567 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!270572 (select (arr!17745 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!595703 () Bool)

(declare-fun res!381715 () Bool)

(assert (=> b!595703 (=> (not res!381715) (not e!340350))))

(assert (=> b!595703 (= res!381715 (validKeyInArray!0 (select (arr!17745 a!2986) j!136)))))

(declare-fun b!595704 () Bool)

(assert (=> b!595704 (= e!340348 e!340356)))

(declare-fun res!381722 () Bool)

(assert (=> b!595704 (=> res!381722 e!340356)))

(declare-fun lt!270575 () (_ BitVec 64))

(assert (=> b!595704 (= res!381722 (or (not (= (select (arr!17745 a!2986) j!136) lt!270570)) (not (= (select (arr!17745 a!2986) j!136) lt!270575)) (bvsge j!136 index!984)))))

(declare-fun e!340357 () Bool)

(assert (=> b!595704 e!340357))

(declare-fun res!381721 () Bool)

(assert (=> b!595704 (=> (not res!381721) (not e!340357))))

(assert (=> b!595704 (= res!381721 (= lt!270575 (select (arr!17745 a!2986) j!136)))))

(assert (=> b!595704 (= lt!270575 (select (store (arr!17745 a!2986) i!1108 k!1786) index!984))))

(declare-fun res!381727 () Bool)

(assert (=> start!54546 (=> (not res!381727) (not e!340350))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54546 (= res!381727 (validMask!0 mask!3053))))

(assert (=> start!54546 e!340350))

(assert (=> start!54546 true))

(declare-fun array_inv!13519 (array!36969) Bool)

(assert (=> start!54546 (array_inv!13519 a!2986)))

(declare-fun b!595705 () Bool)

(declare-fun res!381716 () Bool)

(declare-fun e!340360 () Bool)

(assert (=> b!595705 (=> (not res!381716) (not e!340360))))

(declare-fun arrayNoDuplicates!0 (array!36969 (_ BitVec 32) List!11839) Bool)

(assert (=> b!595705 (= res!381716 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11836))))

(declare-fun b!595706 () Bool)

(assert (=> b!595706 (= e!340350 e!340360)))

(declare-fun res!381708 () Bool)

(assert (=> b!595706 (=> (not res!381708) (not e!340360))))

(declare-fun lt!270569 () SeekEntryResult!6192)

(assert (=> b!595706 (= res!381708 (or (= lt!270569 (MissingZero!6192 i!1108)) (= lt!270569 (MissingVacant!6192 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36969 (_ BitVec 32)) SeekEntryResult!6192)

(assert (=> b!595706 (= lt!270569 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!595707 () Bool)

(declare-fun res!381713 () Bool)

(assert (=> b!595707 (=> (not res!381713) (not e!340360))))

(assert (=> b!595707 (= res!381713 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17745 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!595708 () Bool)

(declare-fun e!340359 () Bool)

(assert (=> b!595708 (= e!340359 e!340353)))

(declare-fun res!381718 () Bool)

(assert (=> b!595708 (=> (not res!381718) (not e!340353))))

(declare-fun lt!270573 () SeekEntryResult!6192)

(assert (=> b!595708 (= res!381718 (and (= lt!270573 (Found!6192 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17745 a!2986) index!984) (select (arr!17745 a!2986) j!136))) (not (= (select (arr!17745 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!595708 (= lt!270573 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17745 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!595709 () Bool)

(declare-fun Unit!18714 () Unit!18712)

(assert (=> b!595709 (= e!340358 Unit!18714)))

(declare-fun b!595710 () Bool)

(declare-fun res!381709 () Bool)

(assert (=> b!595710 (=> (not res!381709) (not e!340360))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36969 (_ BitVec 32)) Bool)

(assert (=> b!595710 (= res!381709 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!595711 () Bool)

(declare-fun res!381724 () Bool)

(assert (=> b!595711 (=> (not res!381724) (not e!340350))))

(assert (=> b!595711 (= res!381724 (and (= (size!18109 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18109 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18109 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!595712 () Bool)

(assert (=> b!595712 (= e!340360 e!340359)))

(declare-fun res!381717 () Bool)

(assert (=> b!595712 (=> (not res!381717) (not e!340359))))

(assert (=> b!595712 (= res!381717 (= (select (store (arr!17745 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!595712 (= lt!270572 (array!36970 (store (arr!17745 a!2986) i!1108 k!1786) (size!18109 a!2986)))))

(declare-fun b!595713 () Bool)

(declare-fun Unit!18715 () Unit!18712)

(assert (=> b!595713 (= e!340358 Unit!18715)))

(assert (=> b!595713 false))

(declare-fun b!595714 () Bool)

(declare-fun res!381720 () Bool)

(assert (=> b!595714 (=> res!381720 e!340351)))

(assert (=> b!595714 (= res!381720 (contains!2943 Nil!11836 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!595715 () Bool)

(assert (=> b!595715 (= e!340357 e!340349)))

(declare-fun res!381711 () Bool)

(assert (=> b!595715 (=> res!381711 e!340349)))

(assert (=> b!595715 (= res!381711 (or (not (= (select (arr!17745 a!2986) j!136) lt!270570)) (not (= (select (arr!17745 a!2986) j!136) lt!270575)) (bvsge j!136 index!984)))))

(declare-fun b!595716 () Bool)

(assert (=> b!595716 (= e!340351 true)))

(declare-fun lt!270576 () Bool)

(assert (=> b!595716 (= lt!270576 (contains!2943 Nil!11836 k!1786))))

(declare-fun b!595717 () Bool)

(assert (=> b!595717 (= e!340355 (= lt!270573 lt!270574))))

(declare-fun b!595718 () Bool)

(assert (=> b!595718 (= e!340354 (arrayContainsKey!0 lt!270572 (select (arr!17745 a!2986) j!136) index!984))))

(assert (= (and start!54546 res!381727) b!595711))

(assert (= (and b!595711 res!381724) b!595703))

(assert (= (and b!595703 res!381715) b!595700))

(assert (= (and b!595700 res!381728) b!595697))

(assert (= (and b!595697 res!381712) b!595706))

(assert (= (and b!595706 res!381708) b!595710))

(assert (= (and b!595710 res!381709) b!595705))

(assert (= (and b!595705 res!381716) b!595707))

(assert (= (and b!595707 res!381713) b!595712))

(assert (= (and b!595712 res!381717) b!595708))

(assert (= (and b!595708 res!381718) b!595701))

(assert (= (and b!595701 res!381723) b!595717))

(assert (= (and b!595701 c!67361) b!595713))

(assert (= (and b!595701 (not c!67361)) b!595709))

(assert (= (and b!595701 (not res!381714)) b!595704))

(assert (= (and b!595704 res!381721) b!595715))

(assert (= (and b!595715 (not res!381711)) b!595699))

(assert (= (and b!595699 res!381719) b!595718))

(assert (= (and b!595704 (not res!381722)) b!595702))

(assert (= (and b!595702 (not res!381710)) b!595698))

(assert (= (and b!595698 (not res!381725)) b!595714))

(assert (= (and b!595714 (not res!381720)) b!595696))

(assert (= (and b!595696 (not res!381726)) b!595716))

(declare-fun m!573321 () Bool)

(assert (=> b!595704 m!573321))

(declare-fun m!573323 () Bool)

(assert (=> b!595704 m!573323))

(declare-fun m!573325 () Bool)

(assert (=> b!595704 m!573325))

(declare-fun m!573327 () Bool)

(assert (=> b!595700 m!573327))

(declare-fun m!573329 () Bool)

(assert (=> b!595707 m!573329))

(assert (=> b!595699 m!573321))

(assert (=> b!595699 m!573321))

(declare-fun m!573331 () Bool)

(assert (=> b!595699 m!573331))

(declare-fun m!573333 () Bool)

(assert (=> b!595696 m!573333))

(assert (=> b!595718 m!573321))

(assert (=> b!595718 m!573321))

(declare-fun m!573335 () Bool)

(assert (=> b!595718 m!573335))

(declare-fun m!573337 () Bool)

(assert (=> b!595698 m!573337))

(assert (=> b!595702 m!573321))

(assert (=> b!595702 m!573321))

(declare-fun m!573339 () Bool)

(assert (=> b!595702 m!573339))

(assert (=> b!595702 m!573321))

(declare-fun m!573341 () Bool)

(assert (=> b!595702 m!573341))

(declare-fun m!573343 () Bool)

(assert (=> b!595714 m!573343))

(assert (=> b!595703 m!573321))

(assert (=> b!595703 m!573321))

(declare-fun m!573345 () Bool)

(assert (=> b!595703 m!573345))

(declare-fun m!573347 () Bool)

(assert (=> b!595716 m!573347))

(assert (=> b!595712 m!573323))

(declare-fun m!573349 () Bool)

(assert (=> b!595712 m!573349))

(declare-fun m!573351 () Bool)

(assert (=> start!54546 m!573351))

(declare-fun m!573353 () Bool)

(assert (=> start!54546 m!573353))

(declare-fun m!573355 () Bool)

(assert (=> b!595705 m!573355))

(declare-fun m!573357 () Bool)

(assert (=> b!595697 m!573357))

(declare-fun m!573359 () Bool)

(assert (=> b!595710 m!573359))

(assert (=> b!595715 m!573321))

(declare-fun m!573361 () Bool)

(assert (=> b!595706 m!573361))

(declare-fun m!573363 () Bool)

(assert (=> b!595708 m!573363))

(assert (=> b!595708 m!573321))

(assert (=> b!595708 m!573321))

(declare-fun m!573365 () Bool)

(assert (=> b!595708 m!573365))

(declare-fun m!573367 () Bool)

(assert (=> b!595701 m!573367))

(declare-fun m!573369 () Bool)

(assert (=> b!595701 m!573369))

(assert (=> b!595701 m!573321))

(assert (=> b!595701 m!573321))

(declare-fun m!573371 () Bool)

(assert (=> b!595701 m!573371))

(assert (=> b!595701 m!573323))

(declare-fun m!573373 () Bool)

(assert (=> b!595701 m!573373))

(declare-fun m!573375 () Bool)

(assert (=> b!595701 m!573375))

(declare-fun m!573377 () Bool)

(assert (=> b!595701 m!573377))

(push 1)

