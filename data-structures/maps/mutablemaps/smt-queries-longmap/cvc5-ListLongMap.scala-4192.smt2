; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!57198 () Bool)

(assert start!57198)

(declare-fun b!632769 () Bool)

(declare-datatypes ((Unit!21298 0))(
  ( (Unit!21299) )
))
(declare-fun e!361784 () Unit!21298)

(declare-fun Unit!21300 () Unit!21298)

(assert (=> b!632769 (= e!361784 Unit!21300)))

(assert (=> b!632769 false))

(declare-fun b!632770 () Bool)

(declare-fun e!361785 () Bool)

(declare-fun e!361780 () Bool)

(assert (=> b!632770 (= e!361785 e!361780)))

(declare-fun res!409328 () Bool)

(assert (=> b!632770 (=> res!409328 e!361780)))

(declare-fun lt!292503 () (_ BitVec 64))

(declare-fun lt!292510 () (_ BitVec 64))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!38121 0))(
  ( (array!38122 (arr!18288 (Array (_ BitVec 32) (_ BitVec 64))) (size!18652 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38121)

(assert (=> b!632770 (= res!409328 (or (not (= (select (arr!18288 a!2986) j!136) lt!292510)) (not (= (select (arr!18288 a!2986) j!136) lt!292503)) (bvsge j!136 index!984)))))

(declare-fun e!361777 () Bool)

(assert (=> b!632770 e!361777))

(declare-fun res!409324 () Bool)

(assert (=> b!632770 (=> (not res!409324) (not e!361777))))

(assert (=> b!632770 (= res!409324 (= lt!292503 (select (arr!18288 a!2986) j!136)))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!632770 (= lt!292503 (select (store (arr!18288 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!632771 () Bool)

(declare-fun e!361778 () Bool)

(declare-fun e!361786 () Bool)

(assert (=> b!632771 (= e!361778 e!361786)))

(declare-fun res!409320 () Bool)

(assert (=> b!632771 (=> (not res!409320) (not e!361786))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!632771 (= res!409320 (= (select (store (arr!18288 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!292509 () array!38121)

(assert (=> b!632771 (= lt!292509 (array!38122 (store (arr!18288 a!2986) i!1108 k!1786) (size!18652 a!2986)))))

(declare-fun b!632772 () Bool)

(declare-fun e!361783 () Bool)

(assert (=> b!632772 (= e!361783 (not e!361785))))

(declare-fun res!409327 () Bool)

(assert (=> b!632772 (=> res!409327 e!361785)))

(declare-datatypes ((SeekEntryResult!6735 0))(
  ( (MissingZero!6735 (index!29235 (_ BitVec 32))) (Found!6735 (index!29236 (_ BitVec 32))) (Intermediate!6735 (undefined!7547 Bool) (index!29237 (_ BitVec 32)) (x!58004 (_ BitVec 32))) (Undefined!6735) (MissingVacant!6735 (index!29238 (_ BitVec 32))) )
))
(declare-fun lt!292511 () SeekEntryResult!6735)

(assert (=> b!632772 (= res!409327 (not (= lt!292511 (Found!6735 index!984))))))

(declare-fun lt!292507 () Unit!21298)

(assert (=> b!632772 (= lt!292507 e!361784)))

(declare-fun c!72095 () Bool)

(assert (=> b!632772 (= c!72095 (= lt!292511 Undefined!6735))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38121 (_ BitVec 32)) SeekEntryResult!6735)

(assert (=> b!632772 (= lt!292511 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!292510 lt!292509 mask!3053))))

(declare-fun e!361779 () Bool)

(assert (=> b!632772 e!361779))

(declare-fun res!409321 () Bool)

(assert (=> b!632772 (=> (not res!409321) (not e!361779))))

(declare-fun lt!292505 () (_ BitVec 32))

(declare-fun lt!292508 () SeekEntryResult!6735)

(assert (=> b!632772 (= res!409321 (= lt!292508 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!292505 vacantSpotIndex!68 lt!292510 lt!292509 mask!3053)))))

(assert (=> b!632772 (= lt!292508 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!292505 vacantSpotIndex!68 (select (arr!18288 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!632772 (= lt!292510 (select (store (arr!18288 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!292512 () Unit!21298)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38121 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21298)

(assert (=> b!632772 (= lt!292512 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!292505 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!632772 (= lt!292505 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!632773 () Bool)

(assert (=> b!632773 (= e!361786 e!361783)))

(declare-fun res!409316 () Bool)

(assert (=> b!632773 (=> (not res!409316) (not e!361783))))

(declare-fun lt!292506 () SeekEntryResult!6735)

(assert (=> b!632773 (= res!409316 (and (= lt!292506 (Found!6735 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18288 a!2986) index!984) (select (arr!18288 a!2986) j!136))) (not (= (select (arr!18288 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!632773 (= lt!292506 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18288 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!632774 () Bool)

(declare-fun e!361776 () Bool)

(assert (=> b!632774 (= e!361776 e!361778)))

(declare-fun res!409319 () Bool)

(assert (=> b!632774 (=> (not res!409319) (not e!361778))))

(declare-fun lt!292504 () SeekEntryResult!6735)

(assert (=> b!632774 (= res!409319 (or (= lt!292504 (MissingZero!6735 i!1108)) (= lt!292504 (MissingVacant!6735 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38121 (_ BitVec 32)) SeekEntryResult!6735)

(assert (=> b!632774 (= lt!292504 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!632775 () Bool)

(declare-fun e!361782 () Bool)

(assert (=> b!632775 (= e!361777 e!361782)))

(declare-fun res!409318 () Bool)

(assert (=> b!632775 (=> res!409318 e!361782)))

(assert (=> b!632775 (= res!409318 (or (not (= (select (arr!18288 a!2986) j!136) lt!292510)) (not (= (select (arr!18288 a!2986) j!136) lt!292503)) (bvsge j!136 index!984)))))

(declare-fun b!632776 () Bool)

(declare-fun res!409323 () Bool)

(assert (=> b!632776 (=> (not res!409323) (not e!361776))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!632776 (= res!409323 (validKeyInArray!0 k!1786))))

(declare-fun res!409326 () Bool)

(assert (=> start!57198 (=> (not res!409326) (not e!361776))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57198 (= res!409326 (validMask!0 mask!3053))))

(assert (=> start!57198 e!361776))

(assert (=> start!57198 true))

(declare-fun array_inv!14062 (array!38121) Bool)

(assert (=> start!57198 (array_inv!14062 a!2986)))

(declare-fun b!632777 () Bool)

(declare-fun res!409325 () Bool)

(assert (=> b!632777 (=> (not res!409325) (not e!361778))))

(assert (=> b!632777 (= res!409325 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18288 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!632778 () Bool)

(declare-fun res!409322 () Bool)

(assert (=> b!632778 (=> (not res!409322) (not e!361778))))

(declare-datatypes ((List!12382 0))(
  ( (Nil!12379) (Cons!12378 (h!13423 (_ BitVec 64)) (t!18618 List!12382)) )
))
(declare-fun arrayNoDuplicates!0 (array!38121 (_ BitVec 32) List!12382) Bool)

(assert (=> b!632778 (= res!409322 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12379))))

(declare-fun b!632779 () Bool)

(declare-fun res!409317 () Bool)

(assert (=> b!632779 (=> (not res!409317) (not e!361776))))

(declare-fun arrayContainsKey!0 (array!38121 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!632779 (= res!409317 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!632780 () Bool)

(declare-fun res!409313 () Bool)

(assert (=> b!632780 (=> (not res!409313) (not e!361776))))

(assert (=> b!632780 (= res!409313 (validKeyInArray!0 (select (arr!18288 a!2986) j!136)))))

(declare-fun b!632781 () Bool)

(assert (=> b!632781 (= e!361779 (= lt!292506 lt!292508))))

(declare-fun b!632782 () Bool)

(assert (=> b!632782 (= e!361782 (arrayContainsKey!0 lt!292509 (select (arr!18288 a!2986) j!136) j!136))))

(declare-fun b!632783 () Bool)

(declare-fun res!409314 () Bool)

(assert (=> b!632783 (=> (not res!409314) (not e!361778))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38121 (_ BitVec 32)) Bool)

(assert (=> b!632783 (= res!409314 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!632784 () Bool)

(assert (=> b!632784 (= e!361780 (arrayContainsKey!0 lt!292509 (select (arr!18288 a!2986) j!136) index!984))))

(declare-fun b!632785 () Bool)

(declare-fun Unit!21301 () Unit!21298)

(assert (=> b!632785 (= e!361784 Unit!21301)))

(declare-fun b!632786 () Bool)

(declare-fun res!409315 () Bool)

(assert (=> b!632786 (=> (not res!409315) (not e!361776))))

(assert (=> b!632786 (= res!409315 (and (= (size!18652 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18652 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18652 a!2986)) (not (= i!1108 j!136))))))

(assert (= (and start!57198 res!409326) b!632786))

(assert (= (and b!632786 res!409315) b!632780))

(assert (= (and b!632780 res!409313) b!632776))

(assert (= (and b!632776 res!409323) b!632779))

(assert (= (and b!632779 res!409317) b!632774))

(assert (= (and b!632774 res!409319) b!632783))

(assert (= (and b!632783 res!409314) b!632778))

(assert (= (and b!632778 res!409322) b!632777))

(assert (= (and b!632777 res!409325) b!632771))

(assert (= (and b!632771 res!409320) b!632773))

(assert (= (and b!632773 res!409316) b!632772))

(assert (= (and b!632772 res!409321) b!632781))

(assert (= (and b!632772 c!72095) b!632769))

(assert (= (and b!632772 (not c!72095)) b!632785))

(assert (= (and b!632772 (not res!409327)) b!632770))

(assert (= (and b!632770 res!409324) b!632775))

(assert (= (and b!632775 (not res!409318)) b!632782))

(assert (= (and b!632770 (not res!409328)) b!632784))

(declare-fun m!607575 () Bool)

(assert (=> b!632776 m!607575))

(declare-fun m!607577 () Bool)

(assert (=> b!632779 m!607577))

(declare-fun m!607579 () Bool)

(assert (=> b!632782 m!607579))

(assert (=> b!632782 m!607579))

(declare-fun m!607581 () Bool)

(assert (=> b!632782 m!607581))

(assert (=> b!632780 m!607579))

(assert (=> b!632780 m!607579))

(declare-fun m!607583 () Bool)

(assert (=> b!632780 m!607583))

(declare-fun m!607585 () Bool)

(assert (=> b!632773 m!607585))

(assert (=> b!632773 m!607579))

(assert (=> b!632773 m!607579))

(declare-fun m!607587 () Bool)

(assert (=> b!632773 m!607587))

(declare-fun m!607589 () Bool)

(assert (=> b!632771 m!607589))

(declare-fun m!607591 () Bool)

(assert (=> b!632771 m!607591))

(declare-fun m!607593 () Bool)

(assert (=> b!632774 m!607593))

(declare-fun m!607595 () Bool)

(assert (=> b!632783 m!607595))

(assert (=> b!632775 m!607579))

(declare-fun m!607597 () Bool)

(assert (=> b!632772 m!607597))

(declare-fun m!607599 () Bool)

(assert (=> b!632772 m!607599))

(declare-fun m!607601 () Bool)

(assert (=> b!632772 m!607601))

(assert (=> b!632772 m!607589))

(declare-fun m!607603 () Bool)

(assert (=> b!632772 m!607603))

(assert (=> b!632772 m!607579))

(declare-fun m!607605 () Bool)

(assert (=> b!632772 m!607605))

(assert (=> b!632772 m!607579))

(declare-fun m!607607 () Bool)

(assert (=> b!632772 m!607607))

(declare-fun m!607609 () Bool)

(assert (=> start!57198 m!607609))

(declare-fun m!607611 () Bool)

(assert (=> start!57198 m!607611))

(declare-fun m!607613 () Bool)

(assert (=> b!632777 m!607613))

(declare-fun m!607615 () Bool)

(assert (=> b!632778 m!607615))

(assert (=> b!632770 m!607579))

(assert (=> b!632770 m!607589))

(declare-fun m!607617 () Bool)

(assert (=> b!632770 m!607617))

(assert (=> b!632784 m!607579))

(assert (=> b!632784 m!607579))

(declare-fun m!607619 () Bool)

(assert (=> b!632784 m!607619))

(push 1)

(assert (not b!632778))

(assert (not b!632776))

(assert (not start!57198))

(assert (not b!632782))

(assert (not b!632783))

(assert (not b!632773))

(assert (not b!632784))

(assert (not b!632774))

(assert (not b!632772))

(assert (not b!632780))

(assert (not b!632779))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!89385 () Bool)

(declare-fun res!409429 () Bool)

(declare-fun e!361875 () Bool)

(assert (=> d!89385 (=> res!409429 e!361875)))

(assert (=> d!89385 (= res!409429 (= (select (arr!18288 lt!292509) j!136) (select (arr!18288 a!2986) j!136)))))

(assert (=> d!89385 (= (arrayContainsKey!0 lt!292509 (select (arr!18288 a!2986) j!136) j!136) e!361875)))

(declare-fun b!632935 () Bool)

(declare-fun e!361876 () Bool)

(assert (=> b!632935 (= e!361875 e!361876)))

(declare-fun res!409430 () Bool)

(assert (=> b!632935 (=> (not res!409430) (not e!361876))))

(assert (=> b!632935 (= res!409430 (bvslt (bvadd j!136 #b00000000000000000000000000000001) (size!18652 lt!292509)))))

(declare-fun b!632936 () Bool)

(assert (=> b!632936 (= e!361876 (arrayContainsKey!0 lt!292509 (select (arr!18288 a!2986) j!136) (bvadd j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!89385 (not res!409429)) b!632935))

(assert (= (and b!632935 res!409430) b!632936))

(declare-fun m!607733 () Bool)

(assert (=> d!89385 m!607733))

(assert (=> b!632936 m!607579))

(declare-fun m!607735 () Bool)

(assert (=> b!632936 m!607735))

(assert (=> b!632782 d!89385))

(declare-fun d!89387 () Bool)

(declare-fun res!409454 () Bool)

(declare-fun e!361906 () Bool)

(assert (=> d!89387 (=> res!409454 e!361906)))

(assert (=> d!89387 (= res!409454 (bvsge #b00000000000000000000000000000000 (size!18652 a!2986)))))

(assert (=> d!89387 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053) e!361906)))

(declare-fun b!632969 () Bool)

(declare-fun e!361904 () Bool)

(declare-fun call!33362 () Bool)

(assert (=> b!632969 (= e!361904 call!33362)))

(declare-fun b!632970 () Bool)

(declare-fun e!361905 () Bool)

(assert (=> b!632970 (= e!361905 e!361904)))

(declare-fun lt!292603 () (_ BitVec 64))

(assert (=> b!632970 (= lt!292603 (select (arr!18288 a!2986) #b00000000000000000000000000000000))))

(declare-fun lt!292604 () Unit!21298)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38121 (_ BitVec 64) (_ BitVec 32)) Unit!21298)

(assert (=> b!632970 (= lt!292604 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2986 lt!292603 #b00000000000000000000000000000000))))

(assert (=> b!632970 (arrayContainsKey!0 a!2986 lt!292603 #b00000000000000000000000000000000)))

(declare-fun lt!292605 () Unit!21298)

(assert (=> b!632970 (= lt!292605 lt!292604)))

(declare-fun res!409453 () Bool)

(assert (=> b!632970 (= res!409453 (= (seekEntryOrOpen!0 (select (arr!18288 a!2986) #b00000000000000000000000000000000) a!2986 mask!3053) (Found!6735 #b00000000000000000000000000000000)))))

(assert (=> b!632970 (=> (not res!409453) (not e!361904))))

(declare-fun b!632971 () Bool)

(assert (=> b!632971 (= e!361905 call!33362)))

(declare-fun bm!33359 () Bool)

(assert (=> bm!33359 (= call!33362 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2986 mask!3053))))

(declare-fun b!632972 () Bool)

(assert (=> b!632972 (= e!361906 e!361905)))

(declare-fun c!72125 () Bool)

(assert (=> b!632972 (= c!72125 (validKeyInArray!0 (select (arr!18288 a!2986) #b00000000000000000000000000000000)))))

(assert (= (and d!89387 (not res!409454)) b!632972))

(assert (= (and b!632972 c!72125) b!632970))

(assert (= (and b!632972 (not c!72125)) b!632971))

(assert (= (and b!632970 res!409453) b!632969))

(assert (= (or b!632969 b!632971) bm!33359))

(declare-fun m!607757 () Bool)

(assert (=> b!632970 m!607757))

(declare-fun m!607759 () Bool)

(assert (=> b!632970 m!607759))

(declare-fun m!607761 () Bool)

(assert (=> b!632970 m!607761))

(assert (=> b!632970 m!607757))

(declare-fun m!607763 () Bool)

(assert (=> b!632970 m!607763))

(declare-fun m!607765 () Bool)

(assert (=> bm!33359 m!607765))

(assert (=> b!632972 m!607757))

(assert (=> b!632972 m!607757))

(declare-fun m!607767 () Bool)

(assert (=> b!632972 m!607767))

(assert (=> b!632783 d!89387))

(declare-fun b!633008 () Bool)

(declare-fun e!361931 () SeekEntryResult!6735)

(declare-fun e!361930 () SeekEntryResult!6735)

(assert (=> b!633008 (= e!361931 e!361930)))

(declare-fun c!72139 () Bool)

(declare-fun lt!292613 () (_ BitVec 64))

(assert (=> b!633008 (= c!72139 (= lt!292613 lt!292510))))

(declare-fun d!89397 () Bool)

(declare-fun lt!292612 () SeekEntryResult!6735)

(assert (=> d!89397 (and (or (is-Undefined!6735 lt!292612) (not (is-Found!6735 lt!292612)) (and (bvsge (index!29236 lt!292612) #b00000000000000000000000000000000) (bvslt (index!29236 lt!292612) (size!18652 lt!292509)))) (or (is-Undefined!6735 lt!292612) (is-Found!6735 lt!292612) (not (is-MissingVacant!6735 lt!292612)) (not (= (index!29238 lt!292612) vacantSpotIndex!68)) (and (bvsge (index!29238 lt!292612) #b00000000000000000000000000000000) (bvslt (index!29238 lt!292612) (size!18652 lt!292509)))) (or (is-Undefined!6735 lt!292612) (ite (is-Found!6735 lt!292612) (= (select (arr!18288 lt!292509) (index!29236 lt!292612)) lt!292510) (and (is-MissingVacant!6735 lt!292612) (= (index!29238 lt!292612) vacantSpotIndex!68) (= (select (arr!18288 lt!292509) (index!29238 lt!292612)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!89397 (= lt!292612 e!361931)))

(declare-fun c!72138 () Bool)

(assert (=> d!89397 (= c!72138 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!89397 (= lt!292613 (select (arr!18288 lt!292509) lt!292505))))

(assert (=> d!89397 (validMask!0 mask!3053)))

(assert (=> d!89397 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!292505 vacantSpotIndex!68 lt!292510 lt!292509 mask!3053) lt!292612)))

(declare-fun b!633009 () Bool)

(declare-fun e!361932 () SeekEntryResult!6735)

(assert (=> b!633009 (= e!361932 (MissingVacant!6735 vacantSpotIndex!68))))

(declare-fun b!633010 () Bool)

(assert (=> b!633010 (= e!361931 Undefined!6735)))

(declare-fun b!633011 () Bool)

(assert (=> b!633011 (= e!361932 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!292505 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 lt!292510 lt!292509 mask!3053))))

(declare-fun b!633012 () Bool)

(declare-fun c!72140 () Bool)

(assert (=> b!633012 (= c!72140 (= lt!292613 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!633012 (= e!361930 e!361932)))

(declare-fun b!633013 () Bool)

(assert (=> b!633013 (= e!361930 (Found!6735 lt!292505))))

(assert (= (and d!89397 c!72138) b!633010))

(assert (= (and d!89397 (not c!72138)) b!633008))

(assert (= (and b!633008 c!72139) b!633013))

(assert (= (and b!633008 (not c!72139)) b!633012))

(assert (= (and b!633012 c!72140) b!633009))

(assert (= (and b!633012 (not c!72140)) b!633011))

(declare-fun m!607787 () Bool)

(assert (=> d!89397 m!607787))

(declare-fun m!607789 () Bool)

(assert (=> d!89397 m!607789))

(declare-fun m!607791 () Bool)

(assert (=> d!89397 m!607791))

(assert (=> d!89397 m!607609))

(declare-fun m!607793 () Bool)

(assert (=> b!633011 m!607793))

(assert (=> b!633011 m!607793))

(declare-fun m!607795 () Bool)

(assert (=> b!633011 m!607795))

(assert (=> b!632772 d!89397))

(declare-fun b!633014 () Bool)

(declare-fun e!361934 () SeekEntryResult!6735)

(declare-fun e!361933 () SeekEntryResult!6735)

(assert (=> b!633014 (= e!361934 e!361933)))

(declare-fun c!72142 () Bool)

(declare-fun lt!292617 () (_ BitVec 64))

(assert (=> b!633014 (= c!72142 (= lt!292617 (select (arr!18288 a!2986) j!136)))))

(declare-fun lt!292616 () SeekEntryResult!6735)

(declare-fun d!89409 () Bool)

(assert (=> d!89409 (and (or (is-Undefined!6735 lt!292616) (not (is-Found!6735 lt!292616)) (and (bvsge (index!29236 lt!292616) #b00000000000000000000000000000000) (bvslt (index!29236 lt!292616) (size!18652 a!2986)))) (or (is-Undefined!6735 lt!292616) (is-Found!6735 lt!292616) (not (is-MissingVacant!6735 lt!292616)) (not (= (index!29238 lt!292616) vacantSpotIndex!68)) (and (bvsge (index!29238 lt!292616) #b00000000000000000000000000000000) (bvslt (index!29238 lt!292616) (size!18652 a!2986)))) (or (is-Undefined!6735 lt!292616) (ite (is-Found!6735 lt!292616) (= (select (arr!18288 a!2986) (index!29236 lt!292616)) (select (arr!18288 a!2986) j!136)) (and (is-MissingVacant!6735 lt!292616) (= (index!29238 lt!292616) vacantSpotIndex!68) (= (select (arr!18288 a!2986) (index!29238 lt!292616)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!89409 (= lt!292616 e!361934)))

(declare-fun c!72141 () Bool)

(assert (=> d!89409 (= c!72141 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!89409 (= lt!292617 (select (arr!18288 a!2986) lt!292505))))

(assert (=> d!89409 (validMask!0 mask!3053)))

(assert (=> d!89409 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!292505 vacantSpotIndex!68 (select (arr!18288 a!2986) j!136) a!2986 mask!3053) lt!292616)))

(declare-fun b!633015 () Bool)

(declare-fun e!361935 () SeekEntryResult!6735)

(assert (=> b!633015 (= e!361935 (MissingVacant!6735 vacantSpotIndex!68))))

(declare-fun b!633016 () Bool)

(assert (=> b!633016 (= e!361934 Undefined!6735)))

(declare-fun b!633017 () Bool)

(assert (=> b!633017 (= e!361935 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!292505 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 (select (arr!18288 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!633018 () Bool)

(declare-fun c!72143 () Bool)

(assert (=> b!633018 (= c!72143 (= lt!292617 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!633018 (= e!361933 e!361935)))

(declare-fun b!633019 () Bool)

(assert (=> b!633019 (= e!361933 (Found!6735 lt!292505))))

(assert (= (and d!89409 c!72141) b!633016))

(assert (= (and d!89409 (not c!72141)) b!633014))

(assert (= (and b!633014 c!72142) b!633019))

(assert (= (and b!633014 (not c!72142)) b!633018))

(assert (= (and b!633018 c!72143) b!633015))

(assert (= (and b!633018 (not c!72143)) b!633017))

(declare-fun m!607797 () Bool)

(assert (=> d!89409 m!607797))

(declare-fun m!607799 () Bool)

(assert (=> d!89409 m!607799))

(declare-fun m!607801 () Bool)

(assert (=> d!89409 m!607801))

(assert (=> d!89409 m!607609))

(assert (=> b!633017 m!607793))

(assert (=> b!633017 m!607793))

(assert (=> b!633017 m!607579))

(declare-fun m!607803 () Bool)

(assert (=> b!633017 m!607803))

(assert (=> b!632772 d!89409))

(declare-fun d!89411 () Bool)

(declare-fun lt!292627 () (_ BitVec 32))

(assert (=> d!89411 (and (bvsge lt!292627 #b00000000000000000000000000000000) (bvslt lt!292627 (bvadd mask!3053 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!89411 (= lt!292627 (choose!52 index!984 x!910 mask!3053))))

(assert (=> d!89411 (validMask!0 mask!3053)))

(assert (=> d!89411 (= (nextIndex!0 index!984 x!910 mask!3053) lt!292627)))

