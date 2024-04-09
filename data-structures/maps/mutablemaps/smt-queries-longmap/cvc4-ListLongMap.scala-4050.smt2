; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!55354 () Bool)

(assert start!55354)

(declare-fun b!605781 () Bool)

(declare-datatypes ((Unit!19294 0))(
  ( (Unit!19295) )
))
(declare-fun e!346776 () Unit!19294)

(declare-fun Unit!19296 () Unit!19294)

(assert (=> b!605781 (= e!346776 Unit!19296)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun b!605782 () Bool)

(declare-datatypes ((array!37228 0))(
  ( (array!37229 (arr!17864 (Array (_ BitVec 32) (_ BitVec 64))) (size!18228 (_ BitVec 32))) )
))
(declare-fun lt!276522 () array!37228)

(declare-fun e!346786 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun a!2986 () array!37228)

(declare-fun arrayContainsKey!0 (array!37228 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!605782 (= e!346786 (arrayContainsKey!0 lt!276522 (select (arr!17864 a!2986) j!136) index!984))))

(declare-fun b!605784 () Bool)

(declare-fun e!346774 () Bool)

(declare-fun e!346780 () Bool)

(assert (=> b!605784 (= e!346774 e!346780)))

(declare-fun res!389320 () Bool)

(assert (=> b!605784 (=> res!389320 e!346780)))

(assert (=> b!605784 (= res!389320 (bvsge index!984 j!136))))

(declare-fun lt!276520 () Unit!19294)

(assert (=> b!605784 (= lt!276520 e!346776)))

(declare-fun c!68605 () Bool)

(assert (=> b!605784 (= c!68605 (bvslt j!136 index!984))))

(declare-fun b!605785 () Bool)

(declare-fun e!346782 () Bool)

(declare-fun e!346788 () Bool)

(assert (=> b!605785 (= e!346782 (not e!346788))))

(declare-fun res!389312 () Bool)

(assert (=> b!605785 (=> res!389312 e!346788)))

(declare-datatypes ((SeekEntryResult!6311 0))(
  ( (MissingZero!6311 (index!27512 (_ BitVec 32))) (Found!6311 (index!27513 (_ BitVec 32))) (Intermediate!6311 (undefined!7123 Bool) (index!27514 (_ BitVec 32)) (x!56339 (_ BitVec 32))) (Undefined!6311) (MissingVacant!6311 (index!27515 (_ BitVec 32))) )
))
(declare-fun lt!276526 () SeekEntryResult!6311)

(assert (=> b!605785 (= res!389312 (not (= lt!276526 (Found!6311 index!984))))))

(declare-fun lt!276523 () Unit!19294)

(declare-fun e!346787 () Unit!19294)

(assert (=> b!605785 (= lt!276523 e!346787)))

(declare-fun c!68606 () Bool)

(assert (=> b!605785 (= c!68606 (= lt!276526 Undefined!6311))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!276524 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37228 (_ BitVec 32)) SeekEntryResult!6311)

(assert (=> b!605785 (= lt!276526 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!276524 lt!276522 mask!3053))))

(declare-fun e!346783 () Bool)

(assert (=> b!605785 e!346783))

(declare-fun res!389323 () Bool)

(assert (=> b!605785 (=> (not res!389323) (not e!346783))))

(declare-fun lt!276528 () (_ BitVec 32))

(declare-fun lt!276530 () SeekEntryResult!6311)

(assert (=> b!605785 (= res!389323 (= lt!276530 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!276528 vacantSpotIndex!68 lt!276524 lt!276522 mask!3053)))))

(assert (=> b!605785 (= lt!276530 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!276528 vacantSpotIndex!68 (select (arr!17864 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!605785 (= lt!276524 (select (store (arr!17864 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!276529 () Unit!19294)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37228 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19294)

(assert (=> b!605785 (= lt!276529 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!276528 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!605785 (= lt!276528 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!605786 () Bool)

(declare-fun Unit!19297 () Unit!19294)

(assert (=> b!605786 (= e!346787 Unit!19297)))

(declare-fun b!605787 () Bool)

(assert (=> b!605787 (= e!346788 e!346774)))

(declare-fun res!389314 () Bool)

(assert (=> b!605787 (=> res!389314 e!346774)))

(declare-fun lt!276521 () (_ BitVec 64))

(assert (=> b!605787 (= res!389314 (or (not (= (select (arr!17864 a!2986) j!136) lt!276524)) (not (= (select (arr!17864 a!2986) j!136) lt!276521))))))

(declare-fun e!346785 () Bool)

(assert (=> b!605787 e!346785))

(declare-fun res!389311 () Bool)

(assert (=> b!605787 (=> (not res!389311) (not e!346785))))

(assert (=> b!605787 (= res!389311 (= lt!276521 (select (arr!17864 a!2986) j!136)))))

(assert (=> b!605787 (= lt!276521 (select (store (arr!17864 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!605788 () Bool)

(declare-fun res!389307 () Bool)

(declare-fun e!346778 () Bool)

(assert (=> b!605788 (=> (not res!389307) (not e!346778))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!605788 (= res!389307 (validKeyInArray!0 k!1786))))

(declare-fun b!605789 () Bool)

(declare-fun e!346784 () Bool)

(assert (=> b!605789 (= e!346785 e!346784)))

(declare-fun res!389313 () Bool)

(assert (=> b!605789 (=> res!389313 e!346784)))

(assert (=> b!605789 (= res!389313 (or (not (= (select (arr!17864 a!2986) j!136) lt!276524)) (not (= (select (arr!17864 a!2986) j!136) lt!276521)) (bvsge j!136 index!984)))))

(declare-fun b!605790 () Bool)

(declare-fun res!389319 () Bool)

(declare-fun e!346775 () Bool)

(assert (=> b!605790 (=> (not res!389319) (not e!346775))))

(assert (=> b!605790 (= res!389319 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17864 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!605791 () Bool)

(declare-fun e!346777 () Bool)

(assert (=> b!605791 (= e!346780 e!346777)))

(declare-fun res!389309 () Bool)

(assert (=> b!605791 (=> res!389309 e!346777)))

(assert (=> b!605791 (= res!389309 (or (bvsgt #b00000000000000000000000000000000 (size!18228 a!2986)) (bvsge (size!18228 a!2986) #b01111111111111111111111111111111)))))

(assert (=> b!605791 (arrayContainsKey!0 lt!276522 (select (arr!17864 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!276534 () Unit!19294)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37228 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19294)

(assert (=> b!605791 (= lt!276534 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!276522 (select (arr!17864 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!346789 () Bool)

(assert (=> b!605791 e!346789))

(declare-fun res!389315 () Bool)

(assert (=> b!605791 (=> (not res!389315) (not e!346789))))

(assert (=> b!605791 (= res!389315 (arrayContainsKey!0 lt!276522 (select (arr!17864 a!2986) j!136) j!136))))

(declare-fun b!605792 () Bool)

(declare-datatypes ((List!11958 0))(
  ( (Nil!11955) (Cons!11954 (h!12999 (_ BitVec 64)) (t!18194 List!11958)) )
))
(declare-fun noDuplicate!306 (List!11958) Bool)

(assert (=> b!605792 (= e!346777 (noDuplicate!306 Nil!11955))))

(declare-fun b!605793 () Bool)

(declare-fun e!346781 () Bool)

(assert (=> b!605793 (= e!346775 e!346781)))

(declare-fun res!389324 () Bool)

(assert (=> b!605793 (=> (not res!389324) (not e!346781))))

(assert (=> b!605793 (= res!389324 (= (select (store (arr!17864 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!605793 (= lt!276522 (array!37229 (store (arr!17864 a!2986) i!1108 k!1786) (size!18228 a!2986)))))

(declare-fun b!605794 () Bool)

(declare-fun lt!276525 () SeekEntryResult!6311)

(assert (=> b!605794 (= e!346783 (= lt!276525 lt!276530))))

(declare-fun b!605795 () Bool)

(declare-fun res!389308 () Bool)

(assert (=> b!605795 (=> (not res!389308) (not e!346778))))

(assert (=> b!605795 (= res!389308 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun res!389305 () Bool)

(assert (=> start!55354 (=> (not res!389305) (not e!346778))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55354 (= res!389305 (validMask!0 mask!3053))))

(assert (=> start!55354 e!346778))

(assert (=> start!55354 true))

(declare-fun array_inv!13638 (array!37228) Bool)

(assert (=> start!55354 (array_inv!13638 a!2986)))

(declare-fun b!605783 () Bool)

(declare-fun Unit!19298 () Unit!19294)

(assert (=> b!605783 (= e!346776 Unit!19298)))

(declare-fun lt!276531 () Unit!19294)

(assert (=> b!605783 (= lt!276531 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!276522 (select (arr!17864 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!605783 (arrayContainsKey!0 lt!276522 (select (arr!17864 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!276527 () Unit!19294)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37228 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11958) Unit!19294)

(assert (=> b!605783 (= lt!276527 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11955))))

(declare-fun arrayNoDuplicates!0 (array!37228 (_ BitVec 32) List!11958) Bool)

(assert (=> b!605783 (arrayNoDuplicates!0 lt!276522 #b00000000000000000000000000000000 Nil!11955)))

(declare-fun lt!276532 () Unit!19294)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37228 (_ BitVec 32) (_ BitVec 32)) Unit!19294)

(assert (=> b!605783 (= lt!276532 (lemmaNoDuplicateFromThenFromBigger!0 lt!276522 #b00000000000000000000000000000000 j!136))))

(assert (=> b!605783 (arrayNoDuplicates!0 lt!276522 j!136 Nil!11955)))

(declare-fun lt!276519 () Unit!19294)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37228 (_ BitVec 64) (_ BitVec 32) List!11958) Unit!19294)

(assert (=> b!605783 (= lt!276519 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!276522 (select (arr!17864 a!2986) j!136) j!136 Nil!11955))))

(assert (=> b!605783 false))

(declare-fun b!605796 () Bool)

(declare-fun res!389316 () Bool)

(assert (=> b!605796 (=> (not res!389316) (not e!346778))))

(assert (=> b!605796 (= res!389316 (validKeyInArray!0 (select (arr!17864 a!2986) j!136)))))

(declare-fun b!605797 () Bool)

(declare-fun res!389318 () Bool)

(assert (=> b!605797 (=> (not res!389318) (not e!346778))))

(assert (=> b!605797 (= res!389318 (and (= (size!18228 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18228 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18228 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!605798 () Bool)

(assert (=> b!605798 (= e!346789 (arrayContainsKey!0 lt!276522 (select (arr!17864 a!2986) j!136) index!984))))

(declare-fun b!605799 () Bool)

(declare-fun res!389321 () Bool)

(assert (=> b!605799 (=> (not res!389321) (not e!346775))))

(assert (=> b!605799 (= res!389321 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11955))))

(declare-fun b!605800 () Bool)

(declare-fun Unit!19299 () Unit!19294)

(assert (=> b!605800 (= e!346787 Unit!19299)))

(assert (=> b!605800 false))

(declare-fun b!605801 () Bool)

(assert (=> b!605801 (= e!346778 e!346775)))

(declare-fun res!389317 () Bool)

(assert (=> b!605801 (=> (not res!389317) (not e!346775))))

(declare-fun lt!276533 () SeekEntryResult!6311)

(assert (=> b!605801 (= res!389317 (or (= lt!276533 (MissingZero!6311 i!1108)) (= lt!276533 (MissingVacant!6311 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37228 (_ BitVec 32)) SeekEntryResult!6311)

(assert (=> b!605801 (= lt!276533 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!605802 () Bool)

(declare-fun res!389322 () Bool)

(assert (=> b!605802 (=> (not res!389322) (not e!346775))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37228 (_ BitVec 32)) Bool)

(assert (=> b!605802 (= res!389322 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!605803 () Bool)

(assert (=> b!605803 (= e!346784 e!346786)))

(declare-fun res!389306 () Bool)

(assert (=> b!605803 (=> (not res!389306) (not e!346786))))

(assert (=> b!605803 (= res!389306 (arrayContainsKey!0 lt!276522 (select (arr!17864 a!2986) j!136) j!136))))

(declare-fun b!605804 () Bool)

(assert (=> b!605804 (= e!346781 e!346782)))

(declare-fun res!389310 () Bool)

(assert (=> b!605804 (=> (not res!389310) (not e!346782))))

(assert (=> b!605804 (= res!389310 (and (= lt!276525 (Found!6311 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17864 a!2986) index!984) (select (arr!17864 a!2986) j!136))) (not (= (select (arr!17864 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!605804 (= lt!276525 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17864 a!2986) j!136) a!2986 mask!3053))))

(assert (= (and start!55354 res!389305) b!605797))

(assert (= (and b!605797 res!389318) b!605796))

(assert (= (and b!605796 res!389316) b!605788))

(assert (= (and b!605788 res!389307) b!605795))

(assert (= (and b!605795 res!389308) b!605801))

(assert (= (and b!605801 res!389317) b!605802))

(assert (= (and b!605802 res!389322) b!605799))

(assert (= (and b!605799 res!389321) b!605790))

(assert (= (and b!605790 res!389319) b!605793))

(assert (= (and b!605793 res!389324) b!605804))

(assert (= (and b!605804 res!389310) b!605785))

(assert (= (and b!605785 res!389323) b!605794))

(assert (= (and b!605785 c!68606) b!605800))

(assert (= (and b!605785 (not c!68606)) b!605786))

(assert (= (and b!605785 (not res!389312)) b!605787))

(assert (= (and b!605787 res!389311) b!605789))

(assert (= (and b!605789 (not res!389313)) b!605803))

(assert (= (and b!605803 res!389306) b!605782))

(assert (= (and b!605787 (not res!389314)) b!605784))

(assert (= (and b!605784 c!68605) b!605783))

(assert (= (and b!605784 (not c!68605)) b!605781))

(assert (= (and b!605784 (not res!389320)) b!605791))

(assert (= (and b!605791 res!389315) b!605798))

(assert (= (and b!605791 (not res!389309)) b!605792))

(declare-fun m!582663 () Bool)

(assert (=> b!605793 m!582663))

(declare-fun m!582665 () Bool)

(assert (=> b!605793 m!582665))

(declare-fun m!582667 () Bool)

(assert (=> b!605783 m!582667))

(declare-fun m!582669 () Bool)

(assert (=> b!605783 m!582669))

(assert (=> b!605783 m!582667))

(assert (=> b!605783 m!582667))

(declare-fun m!582671 () Bool)

(assert (=> b!605783 m!582671))

(declare-fun m!582673 () Bool)

(assert (=> b!605783 m!582673))

(assert (=> b!605783 m!582667))

(declare-fun m!582675 () Bool)

(assert (=> b!605783 m!582675))

(declare-fun m!582677 () Bool)

(assert (=> b!605783 m!582677))

(declare-fun m!582679 () Bool)

(assert (=> b!605783 m!582679))

(declare-fun m!582681 () Bool)

(assert (=> b!605783 m!582681))

(assert (=> b!605787 m!582667))

(assert (=> b!605787 m!582663))

(declare-fun m!582683 () Bool)

(assert (=> b!605787 m!582683))

(declare-fun m!582685 () Bool)

(assert (=> b!605795 m!582685))

(assert (=> b!605796 m!582667))

(assert (=> b!605796 m!582667))

(declare-fun m!582687 () Bool)

(assert (=> b!605796 m!582687))

(declare-fun m!582689 () Bool)

(assert (=> b!605790 m!582689))

(declare-fun m!582691 () Bool)

(assert (=> b!605799 m!582691))

(assert (=> b!605791 m!582667))

(assert (=> b!605791 m!582667))

(declare-fun m!582693 () Bool)

(assert (=> b!605791 m!582693))

(assert (=> b!605791 m!582667))

(declare-fun m!582695 () Bool)

(assert (=> b!605791 m!582695))

(assert (=> b!605791 m!582667))

(declare-fun m!582697 () Bool)

(assert (=> b!605791 m!582697))

(declare-fun m!582699 () Bool)

(assert (=> b!605792 m!582699))

(declare-fun m!582701 () Bool)

(assert (=> b!605788 m!582701))

(assert (=> b!605803 m!582667))

(assert (=> b!605803 m!582667))

(assert (=> b!605803 m!582697))

(assert (=> b!605782 m!582667))

(assert (=> b!605782 m!582667))

(declare-fun m!582703 () Bool)

(assert (=> b!605782 m!582703))

(declare-fun m!582705 () Bool)

(assert (=> b!605801 m!582705))

(declare-fun m!582707 () Bool)

(assert (=> start!55354 m!582707))

(declare-fun m!582709 () Bool)

(assert (=> start!55354 m!582709))

(declare-fun m!582711 () Bool)

(assert (=> b!605785 m!582711))

(declare-fun m!582713 () Bool)

(assert (=> b!605785 m!582713))

(declare-fun m!582715 () Bool)

(assert (=> b!605785 m!582715))

(assert (=> b!605785 m!582667))

(assert (=> b!605785 m!582663))

(assert (=> b!605785 m!582667))

(declare-fun m!582717 () Bool)

(assert (=> b!605785 m!582717))

(declare-fun m!582719 () Bool)

(assert (=> b!605785 m!582719))

(declare-fun m!582721 () Bool)

(assert (=> b!605785 m!582721))

(assert (=> b!605798 m!582667))

(assert (=> b!605798 m!582667))

(assert (=> b!605798 m!582703))

(assert (=> b!605789 m!582667))

(declare-fun m!582723 () Bool)

(assert (=> b!605802 m!582723))

(declare-fun m!582725 () Bool)

(assert (=> b!605804 m!582725))

(assert (=> b!605804 m!582667))

(assert (=> b!605804 m!582667))

(declare-fun m!582727 () Bool)

(assert (=> b!605804 m!582727))

(push 1)

(assert (not b!605785))

(assert (not start!55354))

(assert (not b!605802))

(assert (not b!605804))

(assert (not b!605788))

(assert (not b!605803))

(assert (not b!605791))

(assert (not b!605799))

(assert (not b!605798))

(assert (not b!605795))

(assert (not b!605796))

(assert (not b!605792))

(assert (not b!605801))

(assert (not b!605782))

(assert (not b!605783))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!87623 () Bool)

(declare-fun res!389350 () Bool)

(declare-fun e!346821 () Bool)

(assert (=> d!87623 (=> res!389350 e!346821)))

(assert (=> d!87623 (= res!389350 (= (select (arr!17864 a!2986) #b00000000000000000000000000000000) k!1786))))

(assert (=> d!87623 (= (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000) e!346821)))

(declare-fun b!605842 () Bool)

(declare-fun e!346822 () Bool)

(assert (=> b!605842 (= e!346821 e!346822)))

(declare-fun res!389351 () Bool)

(assert (=> b!605842 (=> (not res!389351) (not e!346822))))

(assert (=> b!605842 (= res!389351 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!18228 a!2986)))))

(declare-fun b!605843 () Bool)

(assert (=> b!605843 (= e!346822 (arrayContainsKey!0 a!2986 k!1786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!87623 (not res!389350)) b!605842))

(assert (= (and b!605842 res!389351) b!605843))

(declare-fun m!582749 () Bool)

(assert (=> d!87623 m!582749))

(declare-fun m!582751 () Bool)

(assert (=> b!605843 m!582751))

(assert (=> b!605795 d!87623))

(declare-fun d!87625 () Bool)

(declare-fun e!346856 () Bool)

(assert (=> d!87625 e!346856))

(declare-fun res!389368 () Bool)

(assert (=> d!87625 (=> (not res!389368) (not e!346856))))

(assert (=> d!87625 (= res!389368 (and (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18228 a!2986)) (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18228 a!2986)))) (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18228 a!2986)) (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18228 a!2986)))) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18228 a!2986))))))

(declare-fun lt!276559 () Unit!19294)

(declare-fun choose!9 (array!37228 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19294)

(assert (=> d!87625 (= lt!276559 (choose!9 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!276528 vacantSpotIndex!68 mask!3053))))

(assert (=> d!87625 (validMask!0 mask!3053)))

(assert (=> d!87625 (= (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!276528 vacantSpotIndex!68 mask!3053) lt!276559)))

(declare-fun b!605894 () Bool)

(assert (=> b!605894 (= e!346856 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!276528 vacantSpotIndex!68 (select (arr!17864 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!276528 vacantSpotIndex!68 (select (store (arr!17864 a!2986) i!1108 k!1786) j!136) (array!37229 (store (arr!17864 a!2986) i!1108 k!1786) (size!18228 a!2986)) mask!3053)))))

(assert (= (and d!87625 res!389368) b!605894))

(declare-fun m!582789 () Bool)

(assert (=> d!87625 m!582789))

(assert (=> d!87625 m!582707))

(assert (=> b!605894 m!582713))

(declare-fun m!582791 () Bool)

(assert (=> b!605894 m!582791))

(assert (=> b!605894 m!582663))

(assert (=> b!605894 m!582713))

(assert (=> b!605894 m!582667))

(assert (=> b!605894 m!582717))

(assert (=> b!605894 m!582667))

(assert (=> b!605785 d!87625))

(declare-fun e!346887 () SeekEntryResult!6311)

(declare-fun b!605932 () Bool)

(assert (=> b!605932 (= e!346887 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!276528 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 (select (arr!17864 a!2986) j!136) a!2986 mask!3053))))

(declare-fun lt!276579 () SeekEntryResult!6311)

(declare-fun d!87641 () Bool)

(assert (=> d!87641 (and (or (is-Undefined!6311 lt!276579) (not (is-Found!6311 lt!276579)) (and (bvsge (index!27513 lt!276579) #b00000000000000000000000000000000) (bvslt (index!27513 lt!276579) (size!18228 a!2986)))) (or (is-Undefined!6311 lt!276579) (is-Found!6311 lt!276579) (not (is-MissingVacant!6311 lt!276579)) (not (= (index!27515 lt!276579) vacantSpotIndex!68)) (and (bvsge (index!27515 lt!276579) #b00000000000000000000000000000000) (bvslt (index!27515 lt!276579) (size!18228 a!2986)))) (or (is-Undefined!6311 lt!276579) (ite (is-Found!6311 lt!276579) (= (select (arr!17864 a!2986) (index!27513 lt!276579)) (select (arr!17864 a!2986) j!136)) (and (is-MissingVacant!6311 lt!276579) (= (index!27515 lt!276579) vacantSpotIndex!68) (= (select (arr!17864 a!2986) (index!27515 lt!276579)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!346885 () SeekEntryResult!6311)

(assert (=> d!87641 (= lt!276579 e!346885)))

(declare-fun c!68641 () Bool)

(assert (=> d!87641 (= c!68641 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(declare-fun lt!276580 () (_ BitVec 64))

(assert (=> d!87641 (= lt!276580 (select (arr!17864 a!2986) lt!276528))))

(assert (=> d!87641 (validMask!0 mask!3053)))

(assert (=> d!87641 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!276528 vacantSpotIndex!68 (select (arr!17864 a!2986) j!136) a!2986 mask!3053) lt!276579)))

(declare-fun b!605933 () Bool)

(declare-fun e!346886 () SeekEntryResult!6311)

(assert (=> b!605933 (= e!346885 e!346886)))

(declare-fun c!68640 () Bool)

(assert (=> b!605933 (= c!68640 (= lt!276580 (select (arr!17864 a!2986) j!136)))))

(declare-fun b!605934 () Bool)

(assert (=> b!605934 (= e!346887 (MissingVacant!6311 vacantSpotIndex!68))))

(declare-fun b!605935 () Bool)

(assert (=> b!605935 (= e!346886 (Found!6311 lt!276528))))

(declare-fun b!605936 () Bool)

(assert (=> b!605936 (= e!346885 Undefined!6311)))

(declare-fun b!605937 () Bool)

(declare-fun c!68639 () Bool)

(assert (=> b!605937 (= c!68639 (= lt!276580 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!605937 (= e!346886 e!346887)))

(assert (= (and d!87641 c!68641) b!605936))

(assert (= (and d!87641 (not c!68641)) b!605933))

(assert (= (and b!605933 c!68640) b!605935))

(assert (= (and b!605933 (not c!68640)) b!605937))

(assert (= (and b!605937 c!68639) b!605934))

(assert (= (and b!605937 (not c!68639)) b!605932))

(declare-fun m!582837 () Bool)

(assert (=> b!605932 m!582837))

(assert (=> b!605932 m!582837))

(assert (=> b!605932 m!582667))

(declare-fun m!582839 () Bool)

(assert (=> b!605932 m!582839))

(declare-fun m!582841 () Bool)

(assert (=> d!87641 m!582841))

(declare-fun m!582843 () Bool)

(assert (=> d!87641 m!582843))

(declare-fun m!582845 () Bool)

(assert (=> d!87641 m!582845))

(assert (=> d!87641 m!582707))

(assert (=> b!605785 d!87641))

(declare-fun e!346890 () SeekEntryResult!6311)

(declare-fun b!605938 () Bool)

(assert (=> b!605938 (= e!346890 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 lt!276524 lt!276522 mask!3053))))

(declare-fun lt!276581 () SeekEntryResult!6311)

(declare-fun d!87665 () Bool)

(assert (=> d!87665 (and (or (is-Undefined!6311 lt!276581) (not (is-Found!6311 lt!276581)) (and (bvsge (index!27513 lt!276581) #b00000000000000000000000000000000) (bvslt (index!27513 lt!276581) (size!18228 lt!276522)))) (or (is-Undefined!6311 lt!276581) (is-Found!6311 lt!276581) (not (is-MissingVacant!6311 lt!276581)) (not (= (index!27515 lt!276581) vacantSpotIndex!68)) (and (bvsge (index!27515 lt!276581) #b00000000000000000000000000000000) (bvslt (index!27515 lt!276581) (size!18228 lt!276522)))) (or (is-Undefined!6311 lt!276581) (ite (is-Found!6311 lt!276581) (= (select (arr!17864 lt!276522) (index!27513 lt!276581)) lt!276524) (and (is-MissingVacant!6311 lt!276581) (= (index!27515 lt!276581) vacantSpotIndex!68) (= (select (arr!17864 lt!276522) (index!27515 lt!276581)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!346888 () SeekEntryResult!6311)

(assert (=> d!87665 (= lt!276581 e!346888)))

(declare-fun c!68644 () Bool)

(assert (=> d!87665 (= c!68644 (bvsge x!910 #b01111111111111111111111111111110))))

(declare-fun lt!276582 () (_ BitVec 64))

(assert (=> d!87665 (= lt!276582 (select (arr!17864 lt!276522) index!984))))

(assert (=> d!87665 (validMask!0 mask!3053)))

(assert (=> d!87665 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!276524 lt!276522 mask!3053) lt!276581)))

(declare-fun b!605939 () Bool)

(declare-fun e!346889 () SeekEntryResult!6311)

(assert (=> b!605939 (= e!346888 e!346889)))

(declare-fun c!68643 () Bool)

(assert (=> b!605939 (= c!68643 (= lt!276582 lt!276524))))

(declare-fun b!605940 () Bool)

(assert (=> b!605940 (= e!346890 (MissingVacant!6311 vacantSpotIndex!68))))

(declare-fun b!605941 () Bool)

(assert (=> b!605941 (= e!346889 (Found!6311 index!984))))

(declare-fun b!605942 () Bool)

(assert (=> b!605942 (= e!346888 Undefined!6311)))

(declare-fun b!605943 () Bool)

(declare-fun c!68642 () Bool)

(assert (=> b!605943 (= c!68642 (= lt!276582 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!605943 (= e!346889 e!346890)))

(assert (= (and d!87665 c!68644) b!605942))

(assert (= (and d!87665 (not c!68644)) b!605939))

(assert (= (and b!605939 c!68643) b!605941))

(assert (= (and b!605939 (not c!68643)) b!605943))

(assert (= (and b!605943 c!68642) b!605940))

(assert (= (and b!605943 (not c!68642)) b!605938))

(assert (=> b!605938 m!582711))

(assert (=> b!605938 m!582711))

(declare-fun m!582847 () Bool)

(assert (=> b!605938 m!582847))

(declare-fun m!582849 () Bool)

(assert (=> d!87665 m!582849))

(declare-fun m!582851 () Bool)

(assert (=> d!87665 m!582851))

(declare-fun m!582853 () Bool)

(assert (=> d!87665 m!582853))

(assert (=> d!87665 m!582707))

(assert (=> b!605785 d!87665))

(declare-fun e!346893 () SeekEntryResult!6311)

(declare-fun b!605944 () Bool)

(assert (=> b!605944 (= e!346893 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!276528 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 lt!276524 lt!276522 mask!3053))))

(declare-fun lt!276586 () SeekEntryResult!6311)

(declare-fun d!87667 () Bool)

(assert (=> d!87667 (and (or (is-Undefined!6311 lt!276586) (not (is-Found!6311 lt!276586)) (and (bvsge (index!27513 lt!276586) #b00000000000000000000000000000000) (bvslt (index!27513 lt!276586) (size!18228 lt!276522)))) (or (is-Undefined!6311 lt!276586) (is-Found!6311 lt!276586) (not (is-MissingVacant!6311 lt!276586)) (not (= (index!27515 lt!276586) vacantSpotIndex!68)) (and (bvsge (index!27515 lt!276586) #b00000000000000000000000000000000) (bvslt (index!27515 lt!276586) (size!18228 lt!276522)))) (or (is-Undefined!6311 lt!276586) (ite (is-Found!6311 lt!276586) (= (select (arr!17864 lt!276522) (index!27513 lt!276586)) lt!276524) (and (is-MissingVacant!6311 lt!276586) (= (index!27515 lt!276586) vacantSpotIndex!68) (= (select (arr!17864 lt!276522) (index!27515 lt!276586)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!346891 () SeekEntryResult!6311)

(assert (=> d!87667 (= lt!276586 e!346891)))

(declare-fun c!68647 () Bool)

(assert (=> d!87667 (= c!68647 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(declare-fun lt!276587 () (_ BitVec 64))

(assert (=> d!87667 (= lt!276587 (select (arr!17864 lt!276522) lt!276528))))

(assert (=> d!87667 (validMask!0 mask!3053)))

(assert (=> d!87667 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!276528 vacantSpotIndex!68 lt!276524 lt!276522 mask!3053) lt!276586)))

(declare-fun b!605945 () Bool)

(declare-fun e!346892 () SeekEntryResult!6311)

(assert (=> b!605945 (= e!346891 e!346892)))

(declare-fun c!68646 () Bool)

(assert (=> b!605945 (= c!68646 (= lt!276587 lt!276524))))

(declare-fun b!605946 () Bool)

(assert (=> b!605946 (= e!346893 (MissingVacant!6311 vacantSpotIndex!68))))

(declare-fun b!605947 () Bool)

(assert (=> b!605947 (= e!346892 (Found!6311 lt!276528))))

(declare-fun b!605948 () Bool)

(assert (=> b!605948 (= e!346891 Undefined!6311)))

(declare-fun b!605949 () Bool)

(declare-fun c!68645 () Bool)

(assert (=> b!605949 (= c!68645 (= lt!276587 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!605949 (= e!346892 e!346893)))

(assert (= (and d!87667 c!68647) b!605948))

(assert (= (and d!87667 (not c!68647)) b!605945))

(assert (= (and b!605945 c!68646) b!605947))

(assert (= (and b!605945 (not c!68646)) b!605949))

(assert (= (and b!605949 c!68645) b!605946))

(assert (= (and b!605949 (not c!68645)) b!605944))

(assert (=> b!605944 m!582837))

(assert (=> b!605944 m!582837))

(declare-fun m!582857 () Bool)

(assert (=> b!605944 m!582857))

(declare-fun m!582859 () Bool)

(assert (=> d!87667 m!582859))

(declare-fun m!582861 () Bool)

(assert (=> d!87667 m!582861))

(declare-fun m!582863 () Bool)

(assert (=> d!87667 m!582863))

(assert (=> d!87667 m!582707))

(assert (=> b!605785 d!87667))

(declare-fun d!87671 () Bool)

(declare-fun lt!276590 () (_ BitVec 32))

(assert (=> d!87671 (and (bvsge lt!276590 #b00000000000000000000000000000000) (bvslt lt!276590 (bvadd mask!3053 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!87671 (= lt!276590 (choose!52 index!984 x!910 mask!3053))))

(assert (=> d!87671 (validMask!0 mask!3053)))

(assert (=> d!87671 (= (nextIndex!0 index!984 x!910 mask!3053) lt!276590)))

(declare-fun bs!18538 () Bool)

(assert (= bs!18538 d!87671))

(declare-fun m!582869 () Bool)

(assert (=> bs!18538 m!582869))

(assert (=> bs!18538 m!582707))

(assert (=> b!605785 d!87671))

(declare-fun d!87675 () Bool)

(assert (=> d!87675 (= (validKeyInArray!0 (select (arr!17864 a!2986) j!136)) (and (not (= (select (arr!17864 a!2986) j!136) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!17864 a!2986) j!136) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!605796 d!87675))

(declare-fun b!605985 () Bool)

(declare-fun e!346921 () Bool)

(declare-fun e!346922 () Bool)

(assert (=> b!605985 (= e!346921 e!346922)))

(declare-fun res!389407 () Bool)

(assert (=> b!605985 (=> (not res!389407) (not e!346922))))

(declare-fun e!346923 () Bool)

(assert (=> b!605985 (= res!389407 (not e!346923))))

(declare-fun res!389405 () Bool)

(assert (=> b!605985 (=> (not res!389405) (not e!346923))))

(assert (=> b!605985 (= res!389405 (validKeyInArray!0 (select (arr!17864 lt!276522) j!136)))))

(declare-fun b!605986 () Bool)

(declare-fun e!346920 () Bool)

(declare-fun call!33071 () Bool)

(assert (=> b!605986 (= e!346920 call!33071)))

(declare-fun b!605987 () Bool)

(assert (=> b!605987 (= e!346920 call!33071)))

(declare-fun b!605989 () Bool)

(declare-fun contains!3004 (List!11958 (_ BitVec 64)) Bool)

(assert (=> b!605989 (= e!346923 (contains!3004 Nil!11955 (select (arr!17864 lt!276522) j!136)))))

(declare-fun c!68657 () Bool)

(declare-fun bm!33068 () Bool)

(assert (=> bm!33068 (= call!33071 (arrayNoDuplicates!0 lt!276522 (bvadd j!136 #b00000000000000000000000000000001) (ite c!68657 (Cons!11954 (select (arr!17864 lt!276522) j!136) Nil!11955) Nil!11955)))))

(declare-fun d!87681 () Bool)

(declare-fun res!389406 () Bool)

(assert (=> d!87681 (=> res!389406 e!346921)))

(assert (=> d!87681 (= res!389406 (bvsge j!136 (size!18228 lt!276522)))))

(assert (=> d!87681 (= (arrayNoDuplicates!0 lt!276522 j!136 Nil!11955) e!346921)))

(declare-fun b!605988 () Bool)

(assert (=> b!605988 (= e!346922 e!346920)))

(assert (=> b!605988 (= c!68657 (validKeyInArray!0 (select (arr!17864 lt!276522) j!136)))))

(assert (= (and d!87681 (not res!389406)) b!605985))

(assert (= (and b!605985 res!389405) b!605989))

(assert (= (and b!605985 res!389407) b!605988))

(assert (= (and b!605988 c!68657) b!605986))

(assert (= (and b!605988 (not c!68657)) b!605987))

(assert (= (or b!605986 b!605987) bm!33068))

(declare-fun m!582887 () Bool)

(assert (=> b!605985 m!582887))

(assert (=> b!605985 m!582887))

(declare-fun m!582889 () Bool)

(assert (=> b!605985 m!582889))

(assert (=> b!605989 m!582887))

(assert (=> b!605989 m!582887))

(declare-fun m!582891 () Bool)

(assert (=> b!605989 m!582891))

(assert (=> bm!33068 m!582887))

(declare-fun m!582893 () Bool)

(assert (=> bm!33068 m!582893))

(assert (=> b!605988 m!582887))

(assert (=> b!605988 m!582887))

(assert (=> b!605988 m!582889))

(assert (=> b!605783 d!87681))

(declare-fun b!605995 () Bool)

(declare-fun e!346929 () Bool)

(declare-fun e!346930 () Bool)

(assert (=> b!605995 (= e!346929 e!346930)))

(declare-fun res!389413 () Bool)

(assert (=> b!605995 (=> (not res!389413) (not e!346930))))

(declare-fun e!346931 () Bool)

(assert (=> b!605995 (= res!389413 (not e!346931))))

(declare-fun res!389411 () Bool)

(assert (=> b!605995 (=> (not res!389411) (not e!346931))))

(assert (=> b!605995 (= res!389411 (validKeyInArray!0 (select (arr!17864 lt!276522) #b00000000000000000000000000000000)))))

(declare-fun b!605996 () Bool)

(declare-fun e!346928 () Bool)

(declare-fun call!33073 () Bool)

(assert (=> b!605996 (= e!346928 call!33073)))

(declare-fun b!605997 () Bool)

(assert (=> b!605997 (= e!346928 call!33073)))

(declare-fun b!605999 () Bool)

(assert (=> b!605999 (= e!346931 (contains!3004 Nil!11955 (select (arr!17864 lt!276522) #b00000000000000000000000000000000)))))

(declare-fun bm!33070 () Bool)

(declare-fun c!68659 () Bool)

(assert (=> bm!33070 (= call!33073 (arrayNoDuplicates!0 lt!276522 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!68659 (Cons!11954 (select (arr!17864 lt!276522) #b00000000000000000000000000000000) Nil!11955) Nil!11955)))))

(declare-fun d!87689 () Bool)

(declare-fun res!389412 () Bool)

(assert (=> d!87689 (=> res!389412 e!346929)))

(assert (=> d!87689 (= res!389412 (bvsge #b00000000000000000000000000000000 (size!18228 lt!276522)))))

(assert (=> d!87689 (= (arrayNoDuplicates!0 lt!276522 #b00000000000000000000000000000000 Nil!11955) e!346929)))

(declare-fun b!605998 () Bool)

(assert (=> b!605998 (= e!346930 e!346928)))

(assert (=> b!605998 (= c!68659 (validKeyInArray!0 (select (arr!17864 lt!276522) #b00000000000000000000000000000000)))))

(assert (= (and d!87689 (not res!389412)) b!605995))

(assert (= (and b!605995 res!389411) b!605999))

(assert (= (and b!605995 res!389413) b!605998))

(assert (= (and b!605998 c!68659) b!605996))

(assert (= (and b!605998 (not c!68659)) b!605997))

(assert (= (or b!605996 b!605997) bm!33070))

(declare-fun m!582903 () Bool)

(assert (=> b!605995 m!582903))

(assert (=> b!605995 m!582903))

(declare-fun m!582905 () Bool)

(assert (=> b!605995 m!582905))

(assert (=> b!605999 m!582903))

(assert (=> b!605999 m!582903))

(declare-fun m!582907 () Bool)

(assert (=> b!605999 m!582907))

(assert (=> bm!33070 m!582903))

(declare-fun m!582915 () Bool)

(assert (=> bm!33070 m!582915))

(assert (=> b!605998 m!582903))

(assert (=> b!605998 m!582903))

(assert (=> b!605998 m!582905))

(assert (=> b!605783 d!87689))

(declare-fun d!87693 () Bool)

(assert (=> d!87693 (arrayNoDuplicates!0 lt!276522 j!136 Nil!11955)))

(declare-fun lt!276608 () Unit!19294)

(declare-fun choose!39 (array!37228 (_ BitVec 32) (_ BitVec 32)) Unit!19294)

(assert (=> d!87693 (= lt!276608 (choose!39 lt!276522 #b00000000000000000000000000000000 j!136))))

(assert (=> d!87693 (bvslt (size!18228 lt!276522) #b01111111111111111111111111111111)))

(assert (=> d!87693 (= (lemmaNoDuplicateFromThenFromBigger!0 lt!276522 #b00000000000000000000000000000000 j!136) lt!276608)))

(declare-fun bs!18542 () Bool)

(assert (= bs!18542 d!87693))

(assert (=> bs!18542 m!582679))

(declare-fun m!582929 () Bool)

(assert (=> bs!18542 m!582929))

(assert (=> b!605783 d!87693))

(declare-fun d!87699 () Bool)

(assert (=> d!87699 (arrayContainsKey!0 lt!276522 (select (arr!17864 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!276619 () Unit!19294)

(declare-fun choose!114 (array!37228 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19294)

(assert (=> d!87699 (= lt!276619 (choose!114 lt!276522 (select (arr!17864 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> d!87699 (bvsge index!984 #b00000000000000000000000000000000)))

(assert (=> d!87699 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!276522 (select (arr!17864 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)) lt!276619)))

(declare-fun bs!18544 () Bool)

(assert (= bs!18544 d!87699))

(assert (=> bs!18544 m!582667))

(assert (=> bs!18544 m!582669))

(assert (=> bs!18544 m!582667))

(declare-fun m!582943 () Bool)

(assert (=> bs!18544 m!582943))

(assert (=> b!605783 d!87699))

(declare-fun d!87707 () Bool)

(declare-fun res!389419 () Bool)

(declare-fun e!346946 () Bool)

(assert (=> d!87707 (=> res!389419 e!346946)))

(assert (=> d!87707 (= res!389419 (= (select (arr!17864 lt!276522) (bvadd #b00000000000000000000000000000001 j!136)) (select (arr!17864 a!2986) j!136)))))

(assert (=> d!87707 (= (arrayContainsKey!0 lt!276522 (select (arr!17864 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136)) e!346946)))

(declare-fun b!606023 () Bool)

(declare-fun e!346947 () Bool)

(assert (=> b!606023 (= e!346946 e!346947)))

(declare-fun res!389420 () Bool)

(assert (=> b!606023 (=> (not res!389420) (not e!346947))))

(assert (=> b!606023 (= res!389420 (bvslt (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001) (size!18228 lt!276522)))))

(declare-fun b!606024 () Bool)

(assert (=> b!606024 (= e!346947 (arrayContainsKey!0 lt!276522 (select (arr!17864 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!87707 (not res!389419)) b!606023))

(assert (= (and b!606023 res!389420) b!606024))

(declare-fun m!582947 () Bool)

(assert (=> d!87707 m!582947))

(assert (=> b!606024 m!582667))

(declare-fun m!582949 () Bool)

(assert (=> b!606024 m!582949))

(assert (=> b!605783 d!87707))

(declare-fun d!87711 () Bool)

(assert (=> d!87711 (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18228 lt!276522)) (not (= (select (arr!17864 lt!276522) j!136) (select (arr!17864 a!2986) j!136))))))

(declare-fun lt!276622 () Unit!19294)

(declare-fun choose!21 (array!37228 (_ BitVec 64) (_ BitVec 32) List!11958) Unit!19294)

(assert (=> d!87711 (= lt!276622 (choose!21 lt!276522 (select (arr!17864 a!2986) j!136) j!136 Nil!11955))))

(assert (=> d!87711 (bvslt (size!18228 lt!276522) #b01111111111111111111111111111111)))

(assert (=> d!87711 (= (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!276522 (select (arr!17864 a!2986) j!136) j!136 Nil!11955) lt!276622)))

