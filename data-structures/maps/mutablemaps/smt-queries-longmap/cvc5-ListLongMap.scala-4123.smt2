; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56292 () Bool)

(assert start!56292)

(declare-fun b!623722 () Bool)

(declare-fun e!357735 () Bool)

(declare-fun e!357738 () Bool)

(assert (=> b!623722 (= e!357735 e!357738)))

(declare-fun res!402093 () Bool)

(assert (=> b!623722 (=> (not res!402093) (not e!357738))))

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6528 0))(
  ( (MissingZero!6528 (index!28395 (_ BitVec 32))) (Found!6528 (index!28396 (_ BitVec 32))) (Intermediate!6528 (undefined!7340 Bool) (index!28397 (_ BitVec 32)) (x!57188 (_ BitVec 32))) (Undefined!6528) (MissingVacant!6528 (index!28398 (_ BitVec 32))) )
))
(declare-fun lt!289350 () SeekEntryResult!6528)

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!37680 0))(
  ( (array!37681 (arr!18081 (Array (_ BitVec 32) (_ BitVec 64))) (size!18445 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37680)

(assert (=> b!623722 (= res!402093 (and (= lt!289350 (Found!6528 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18081 a!2986) index!984) (select (arr!18081 a!2986) j!136))) (not (= (select (arr!18081 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37680 (_ BitVec 32)) SeekEntryResult!6528)

(assert (=> b!623722 (= lt!289350 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18081 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!623723 () Bool)

(declare-fun e!357736 () Bool)

(declare-fun e!357739 () Bool)

(assert (=> b!623723 (= e!357736 e!357739)))

(declare-fun res!402090 () Bool)

(assert (=> b!623723 (=> (not res!402090) (not e!357739))))

(declare-fun lt!289349 () SeekEntryResult!6528)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!623723 (= res!402090 (or (= lt!289349 (MissingZero!6528 i!1108)) (= lt!289349 (MissingVacant!6528 i!1108))))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37680 (_ BitVec 32)) SeekEntryResult!6528)

(assert (=> b!623723 (= lt!289349 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!623724 () Bool)

(declare-fun res!402083 () Bool)

(assert (=> b!623724 (=> (not res!402083) (not e!357739))))

(assert (=> b!623724 (= res!402083 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18081 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!623725 () Bool)

(declare-fun e!357732 () Bool)

(declare-fun lt!289352 () SeekEntryResult!6528)

(assert (=> b!623725 (= e!357732 (= lt!289350 lt!289352))))

(declare-fun b!623726 () Bool)

(declare-fun res!402088 () Bool)

(assert (=> b!623726 (=> (not res!402088) (not e!357736))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!623726 (= res!402088 (validKeyInArray!0 (select (arr!18081 a!2986) j!136)))))

(declare-fun b!623727 () Bool)

(declare-fun res!402087 () Bool)

(assert (=> b!623727 (=> (not res!402087) (not e!357736))))

(assert (=> b!623727 (= res!402087 (and (= (size!18445 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18445 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18445 a!2986)) (not (= i!1108 j!136))))))

(declare-fun e!357733 () Bool)

(declare-fun lt!289348 () (_ BitVec 64))

(declare-fun b!623728 () Bool)

(assert (=> b!623728 (= e!357733 (= (select (arr!18081 a!2986) j!136) lt!289348))))

(assert (=> b!623728 (= (select (store (arr!18081 a!2986) i!1108 k!1786) index!984) (select (arr!18081 a!2986) j!136))))

(declare-fun b!623729 () Bool)

(assert (=> b!623729 (= e!357739 e!357735)))

(declare-fun res!402085 () Bool)

(assert (=> b!623729 (=> (not res!402085) (not e!357735))))

(assert (=> b!623729 (= res!402085 (= (select (store (arr!18081 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!289345 () array!37680)

(assert (=> b!623729 (= lt!289345 (array!37681 (store (arr!18081 a!2986) i!1108 k!1786) (size!18445 a!2986)))))

(declare-fun b!623730 () Bool)

(declare-fun res!402086 () Bool)

(assert (=> b!623730 (=> (not res!402086) (not e!357736))))

(assert (=> b!623730 (= res!402086 (validKeyInArray!0 k!1786))))

(declare-fun b!623731 () Bool)

(declare-datatypes ((Unit!21042 0))(
  ( (Unit!21043) )
))
(declare-fun e!357734 () Unit!21042)

(declare-fun Unit!21044 () Unit!21042)

(assert (=> b!623731 (= e!357734 Unit!21044)))

(declare-fun res!402095 () Bool)

(assert (=> start!56292 (=> (not res!402095) (not e!357736))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56292 (= res!402095 (validMask!0 mask!3053))))

(assert (=> start!56292 e!357736))

(assert (=> start!56292 true))

(declare-fun array_inv!13855 (array!37680) Bool)

(assert (=> start!56292 (array_inv!13855 a!2986)))

(declare-fun b!623721 () Bool)

(assert (=> b!623721 (= e!357738 (not e!357733))))

(declare-fun res!402084 () Bool)

(assert (=> b!623721 (=> res!402084 e!357733)))

(declare-fun lt!289351 () SeekEntryResult!6528)

(assert (=> b!623721 (= res!402084 (not (= lt!289351 (Found!6528 index!984))))))

(declare-fun lt!289346 () Unit!21042)

(assert (=> b!623721 (= lt!289346 e!357734)))

(declare-fun c!71186 () Bool)

(assert (=> b!623721 (= c!71186 (= lt!289351 Undefined!6528))))

(assert (=> b!623721 (= lt!289351 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!289348 lt!289345 mask!3053))))

(assert (=> b!623721 e!357732))

(declare-fun res!402089 () Bool)

(assert (=> b!623721 (=> (not res!402089) (not e!357732))))

(declare-fun lt!289347 () (_ BitVec 32))

(assert (=> b!623721 (= res!402089 (= lt!289352 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!289347 vacantSpotIndex!68 lt!289348 lt!289345 mask!3053)))))

(assert (=> b!623721 (= lt!289352 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!289347 vacantSpotIndex!68 (select (arr!18081 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!623721 (= lt!289348 (select (store (arr!18081 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!289353 () Unit!21042)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37680 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21042)

(assert (=> b!623721 (= lt!289353 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!289347 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!623721 (= lt!289347 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!623732 () Bool)

(declare-fun res!402092 () Bool)

(assert (=> b!623732 (=> (not res!402092) (not e!357736))))

(declare-fun arrayContainsKey!0 (array!37680 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!623732 (= res!402092 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!623733 () Bool)

(declare-fun res!402091 () Bool)

(assert (=> b!623733 (=> (not res!402091) (not e!357739))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37680 (_ BitVec 32)) Bool)

(assert (=> b!623733 (= res!402091 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!623734 () Bool)

(declare-fun res!402094 () Bool)

(assert (=> b!623734 (=> (not res!402094) (not e!357739))))

(declare-datatypes ((List!12175 0))(
  ( (Nil!12172) (Cons!12171 (h!13216 (_ BitVec 64)) (t!18411 List!12175)) )
))
(declare-fun arrayNoDuplicates!0 (array!37680 (_ BitVec 32) List!12175) Bool)

(assert (=> b!623734 (= res!402094 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12172))))

(declare-fun b!623735 () Bool)

(declare-fun Unit!21045 () Unit!21042)

(assert (=> b!623735 (= e!357734 Unit!21045)))

(assert (=> b!623735 false))

(assert (= (and start!56292 res!402095) b!623727))

(assert (= (and b!623727 res!402087) b!623726))

(assert (= (and b!623726 res!402088) b!623730))

(assert (= (and b!623730 res!402086) b!623732))

(assert (= (and b!623732 res!402092) b!623723))

(assert (= (and b!623723 res!402090) b!623733))

(assert (= (and b!623733 res!402091) b!623734))

(assert (= (and b!623734 res!402094) b!623724))

(assert (= (and b!623724 res!402083) b!623729))

(assert (= (and b!623729 res!402085) b!623722))

(assert (= (and b!623722 res!402093) b!623721))

(assert (= (and b!623721 res!402089) b!623725))

(assert (= (and b!623721 c!71186) b!623735))

(assert (= (and b!623721 (not c!71186)) b!623731))

(assert (= (and b!623721 (not res!402084)) b!623728))

(declare-fun m!599523 () Bool)

(assert (=> b!623726 m!599523))

(assert (=> b!623726 m!599523))

(declare-fun m!599525 () Bool)

(assert (=> b!623726 m!599525))

(declare-fun m!599527 () Bool)

(assert (=> b!623723 m!599527))

(declare-fun m!599529 () Bool)

(assert (=> start!56292 m!599529))

(declare-fun m!599531 () Bool)

(assert (=> start!56292 m!599531))

(declare-fun m!599533 () Bool)

(assert (=> b!623721 m!599533))

(declare-fun m!599535 () Bool)

(assert (=> b!623721 m!599535))

(declare-fun m!599537 () Bool)

(assert (=> b!623721 m!599537))

(declare-fun m!599539 () Bool)

(assert (=> b!623721 m!599539))

(declare-fun m!599541 () Bool)

(assert (=> b!623721 m!599541))

(assert (=> b!623721 m!599523))

(declare-fun m!599543 () Bool)

(assert (=> b!623721 m!599543))

(declare-fun m!599545 () Bool)

(assert (=> b!623721 m!599545))

(assert (=> b!623721 m!599523))

(declare-fun m!599547 () Bool)

(assert (=> b!623733 m!599547))

(declare-fun m!599549 () Bool)

(assert (=> b!623730 m!599549))

(declare-fun m!599551 () Bool)

(assert (=> b!623722 m!599551))

(assert (=> b!623722 m!599523))

(assert (=> b!623722 m!599523))

(declare-fun m!599553 () Bool)

(assert (=> b!623722 m!599553))

(declare-fun m!599555 () Bool)

(assert (=> b!623732 m!599555))

(declare-fun m!599557 () Bool)

(assert (=> b!623734 m!599557))

(declare-fun m!599559 () Bool)

(assert (=> b!623724 m!599559))

(assert (=> b!623729 m!599537))

(declare-fun m!599561 () Bool)

(assert (=> b!623729 m!599561))

(assert (=> b!623728 m!599523))

(assert (=> b!623728 m!599537))

(declare-fun m!599563 () Bool)

(assert (=> b!623728 m!599563))

(push 1)

