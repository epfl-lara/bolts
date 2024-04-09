; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!58766 () Bool)

(assert start!58766)

(declare-fun b!647643 () Bool)

(declare-datatypes ((Unit!22006 0))(
  ( (Unit!22007) )
))
(declare-fun e!371397 () Unit!22006)

(declare-fun Unit!22008 () Unit!22006)

(assert (=> b!647643 (= e!371397 Unit!22008)))

(declare-fun b!647645 () Bool)

(declare-fun e!371408 () Bool)

(declare-fun k0!1786 () (_ BitVec 64))

(declare-datatypes ((List!12536 0))(
  ( (Nil!12533) (Cons!12532 (h!13577 (_ BitVec 64)) (t!18772 List!12536)) )
))
(declare-fun contains!3159 (List!12536 (_ BitVec 64)) Bool)

(assert (=> b!647645 (= e!371408 (not (contains!3159 Nil!12533 k0!1786)))))

(declare-fun b!647646 () Bool)

(declare-fun e!371404 () Bool)

(assert (=> b!647646 (= e!371404 e!371408)))

(declare-fun res!419721 () Bool)

(assert (=> b!647646 (=> res!419721 e!371408)))

(declare-datatypes ((array!38477 0))(
  ( (array!38478 (arr!18442 (Array (_ BitVec 32) (_ BitVec 64))) (size!18806 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38477)

(assert (=> b!647646 (= res!419721 (or (bvsge (size!18806 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18806 a!2986))))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!300611 () array!38477)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!38477 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!647646 (arrayContainsKey!0 lt!300611 (select (arr!18442 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!300601 () Unit!22006)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38477 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22006)

(assert (=> b!647646 (= lt!300601 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!300611 (select (arr!18442 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!371405 () Bool)

(assert (=> b!647646 e!371405))

(declare-fun res!419720 () Bool)

(assert (=> b!647646 (=> (not res!419720) (not e!371405))))

(assert (=> b!647646 (= res!419720 (arrayContainsKey!0 lt!300611 (select (arr!18442 a!2986) j!136) j!136))))

(declare-fun b!647647 () Bool)

(declare-fun e!371403 () Bool)

(declare-datatypes ((SeekEntryResult!6889 0))(
  ( (MissingZero!6889 (index!29899 (_ BitVec 32))) (Found!6889 (index!29900 (_ BitVec 32))) (Intermediate!6889 (undefined!7701 Bool) (index!29901 (_ BitVec 32)) (x!58710 (_ BitVec 32))) (Undefined!6889) (MissingVacant!6889 (index!29902 (_ BitVec 32))) )
))
(declare-fun lt!300609 () SeekEntryResult!6889)

(declare-fun lt!300599 () SeekEntryResult!6889)

(assert (=> b!647647 (= e!371403 (= lt!300609 lt!300599))))

(declare-fun b!647648 () Bool)

(declare-fun res!419702 () Bool)

(declare-fun e!371409 () Bool)

(assert (=> b!647648 (=> (not res!419702) (not e!371409))))

(assert (=> b!647648 (= res!419702 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!647649 () Bool)

(declare-fun res!419719 () Bool)

(declare-fun e!371398 () Bool)

(assert (=> b!647649 (=> (not res!419719) (not e!371398))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38477 (_ BitVec 32)) Bool)

(assert (=> b!647649 (= res!419719 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!647650 () Bool)

(declare-fun res!419718 () Bool)

(assert (=> b!647650 (=> (not res!419718) (not e!371409))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!647650 (= res!419718 (and (= (size!18806 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18806 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18806 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!647651 () Bool)

(declare-fun e!371396 () Bool)

(declare-fun e!371410 () Bool)

(assert (=> b!647651 (= e!371396 e!371410)))

(declare-fun res!419703 () Bool)

(assert (=> b!647651 (=> res!419703 e!371410)))

(declare-fun lt!300606 () (_ BitVec 64))

(declare-fun lt!300612 () (_ BitVec 64))

(assert (=> b!647651 (= res!419703 (or (not (= (select (arr!18442 a!2986) j!136) lt!300612)) (not (= (select (arr!18442 a!2986) j!136) lt!300606))))))

(declare-fun e!371401 () Bool)

(assert (=> b!647651 e!371401))

(declare-fun res!419707 () Bool)

(assert (=> b!647651 (=> (not res!419707) (not e!371401))))

(assert (=> b!647651 (= res!419707 (= lt!300606 (select (arr!18442 a!2986) j!136)))))

(assert (=> b!647651 (= lt!300606 (select (store (arr!18442 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!647652 () Bool)

(declare-fun e!371402 () Bool)

(assert (=> b!647652 (= e!371402 (not e!371396))))

(declare-fun res!419704 () Bool)

(assert (=> b!647652 (=> res!419704 e!371396)))

(declare-fun lt!300603 () SeekEntryResult!6889)

(assert (=> b!647652 (= res!419704 (not (= lt!300603 (Found!6889 index!984))))))

(declare-fun lt!300604 () Unit!22006)

(assert (=> b!647652 (= lt!300604 e!371397)))

(declare-fun c!74338 () Bool)

(assert (=> b!647652 (= c!74338 (= lt!300603 Undefined!6889))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38477 (_ BitVec 32)) SeekEntryResult!6889)

(assert (=> b!647652 (= lt!300603 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!300612 lt!300611 mask!3053))))

(assert (=> b!647652 e!371403))

(declare-fun res!419713 () Bool)

(assert (=> b!647652 (=> (not res!419713) (not e!371403))))

(declare-fun lt!300600 () (_ BitVec 32))

(assert (=> b!647652 (= res!419713 (= lt!300599 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!300600 vacantSpotIndex!68 lt!300612 lt!300611 mask!3053)))))

(assert (=> b!647652 (= lt!300599 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!300600 vacantSpotIndex!68 (select (arr!18442 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!647652 (= lt!300612 (select (store (arr!18442 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!300605 () Unit!22006)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38477 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22006)

(assert (=> b!647652 (= lt!300605 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!300600 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!647652 (= lt!300600 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!647653 () Bool)

(assert (=> b!647653 (= e!371410 e!371404)))

(declare-fun res!419708 () Bool)

(assert (=> b!647653 (=> res!419708 e!371404)))

(assert (=> b!647653 (= res!419708 (bvsge index!984 j!136))))

(declare-fun lt!300607 () Unit!22006)

(declare-fun e!371400 () Unit!22006)

(assert (=> b!647653 (= lt!300607 e!371400)))

(declare-fun c!74339 () Bool)

(assert (=> b!647653 (= c!74339 (bvslt j!136 index!984))))

(declare-fun b!647654 () Bool)

(declare-fun Unit!22009 () Unit!22006)

(assert (=> b!647654 (= e!371400 Unit!22009)))

(declare-fun e!371395 () Bool)

(declare-fun b!647655 () Bool)

(assert (=> b!647655 (= e!371395 (arrayContainsKey!0 lt!300611 (select (arr!18442 a!2986) j!136) index!984))))

(declare-fun b!647656 () Bool)

(declare-fun res!419712 () Bool)

(assert (=> b!647656 (=> res!419712 e!371408)))

(assert (=> b!647656 (= res!419712 (contains!3159 Nil!12533 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!647657 () Bool)

(declare-fun res!419723 () Bool)

(assert (=> b!647657 (=> (not res!419723) (not e!371409))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!647657 (= res!419723 (validKeyInArray!0 k0!1786))))

(declare-fun res!419705 () Bool)

(assert (=> start!58766 (=> (not res!419705) (not e!371409))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!58766 (= res!419705 (validMask!0 mask!3053))))

(assert (=> start!58766 e!371409))

(assert (=> start!58766 true))

(declare-fun array_inv!14216 (array!38477) Bool)

(assert (=> start!58766 (array_inv!14216 a!2986)))

(declare-fun b!647644 () Bool)

(declare-fun e!371406 () Bool)

(assert (=> b!647644 (= e!371406 e!371395)))

(declare-fun res!419701 () Bool)

(assert (=> b!647644 (=> (not res!419701) (not e!371395))))

(assert (=> b!647644 (= res!419701 (arrayContainsKey!0 lt!300611 (select (arr!18442 a!2986) j!136) j!136))))

(declare-fun b!647658 () Bool)

(declare-fun res!419714 () Bool)

(assert (=> b!647658 (=> res!419714 e!371408)))

(declare-fun noDuplicate!419 (List!12536) Bool)

(assert (=> b!647658 (= res!419714 (not (noDuplicate!419 Nil!12533)))))

(declare-fun b!647659 () Bool)

(declare-fun res!419709 () Bool)

(assert (=> b!647659 (=> (not res!419709) (not e!371398))))

(declare-fun arrayNoDuplicates!0 (array!38477 (_ BitVec 32) List!12536) Bool)

(assert (=> b!647659 (= res!419709 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12533))))

(declare-fun b!647660 () Bool)

(declare-fun e!371407 () Bool)

(assert (=> b!647660 (= e!371398 e!371407)))

(declare-fun res!419722 () Bool)

(assert (=> b!647660 (=> (not res!419722) (not e!371407))))

(assert (=> b!647660 (= res!419722 (= (select (store (arr!18442 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!647660 (= lt!300611 (array!38478 (store (arr!18442 a!2986) i!1108 k0!1786) (size!18806 a!2986)))))

(declare-fun b!647661 () Bool)

(declare-fun Unit!22010 () Unit!22006)

(assert (=> b!647661 (= e!371397 Unit!22010)))

(assert (=> b!647661 false))

(declare-fun b!647662 () Bool)

(assert (=> b!647662 (= e!371409 e!371398)))

(declare-fun res!419717 () Bool)

(assert (=> b!647662 (=> (not res!419717) (not e!371398))))

(declare-fun lt!300597 () SeekEntryResult!6889)

(assert (=> b!647662 (= res!419717 (or (= lt!300597 (MissingZero!6889 i!1108)) (= lt!300597 (MissingVacant!6889 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38477 (_ BitVec 32)) SeekEntryResult!6889)

(assert (=> b!647662 (= lt!300597 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!647663 () Bool)

(assert (=> b!647663 (= e!371405 (arrayContainsKey!0 lt!300611 (select (arr!18442 a!2986) j!136) index!984))))

(declare-fun b!647664 () Bool)

(declare-fun Unit!22011 () Unit!22006)

(assert (=> b!647664 (= e!371400 Unit!22011)))

(declare-fun lt!300602 () Unit!22006)

(assert (=> b!647664 (= lt!300602 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!300611 (select (arr!18442 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!647664 (arrayContainsKey!0 lt!300611 (select (arr!18442 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!300608 () Unit!22006)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38477 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12536) Unit!22006)

(assert (=> b!647664 (= lt!300608 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12533))))

(assert (=> b!647664 (arrayNoDuplicates!0 lt!300611 #b00000000000000000000000000000000 Nil!12533)))

(declare-fun lt!300598 () Unit!22006)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38477 (_ BitVec 32) (_ BitVec 32)) Unit!22006)

(assert (=> b!647664 (= lt!300598 (lemmaNoDuplicateFromThenFromBigger!0 lt!300611 #b00000000000000000000000000000000 j!136))))

(assert (=> b!647664 (arrayNoDuplicates!0 lt!300611 j!136 Nil!12533)))

(declare-fun lt!300610 () Unit!22006)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38477 (_ BitVec 64) (_ BitVec 32) List!12536) Unit!22006)

(assert (=> b!647664 (= lt!300610 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!300611 (select (arr!18442 a!2986) j!136) j!136 Nil!12533))))

(assert (=> b!647664 false))

(declare-fun b!647665 () Bool)

(declare-fun res!419710 () Bool)

(assert (=> b!647665 (=> (not res!419710) (not e!371409))))

(assert (=> b!647665 (= res!419710 (validKeyInArray!0 (select (arr!18442 a!2986) j!136)))))

(declare-fun b!647666 () Bool)

(assert (=> b!647666 (= e!371401 e!371406)))

(declare-fun res!419711 () Bool)

(assert (=> b!647666 (=> res!419711 e!371406)))

(assert (=> b!647666 (= res!419711 (or (not (= (select (arr!18442 a!2986) j!136) lt!300612)) (not (= (select (arr!18442 a!2986) j!136) lt!300606)) (bvsge j!136 index!984)))))

(declare-fun b!647667 () Bool)

(declare-fun res!419706 () Bool)

(assert (=> b!647667 (=> (not res!419706) (not e!371398))))

(assert (=> b!647667 (= res!419706 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18442 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!647668 () Bool)

(assert (=> b!647668 (= e!371407 e!371402)))

(declare-fun res!419715 () Bool)

(assert (=> b!647668 (=> (not res!419715) (not e!371402))))

(assert (=> b!647668 (= res!419715 (and (= lt!300609 (Found!6889 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18442 a!2986) index!984) (select (arr!18442 a!2986) j!136))) (not (= (select (arr!18442 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!647668 (= lt!300609 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18442 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!647669 () Bool)

(declare-fun res!419716 () Bool)

(assert (=> b!647669 (=> res!419716 e!371408)))

(assert (=> b!647669 (= res!419716 (contains!3159 Nil!12533 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!58766 res!419705) b!647650))

(assert (= (and b!647650 res!419718) b!647665))

(assert (= (and b!647665 res!419710) b!647657))

(assert (= (and b!647657 res!419723) b!647648))

(assert (= (and b!647648 res!419702) b!647662))

(assert (= (and b!647662 res!419717) b!647649))

(assert (= (and b!647649 res!419719) b!647659))

(assert (= (and b!647659 res!419709) b!647667))

(assert (= (and b!647667 res!419706) b!647660))

(assert (= (and b!647660 res!419722) b!647668))

(assert (= (and b!647668 res!419715) b!647652))

(assert (= (and b!647652 res!419713) b!647647))

(assert (= (and b!647652 c!74338) b!647661))

(assert (= (and b!647652 (not c!74338)) b!647643))

(assert (= (and b!647652 (not res!419704)) b!647651))

(assert (= (and b!647651 res!419707) b!647666))

(assert (= (and b!647666 (not res!419711)) b!647644))

(assert (= (and b!647644 res!419701) b!647655))

(assert (= (and b!647651 (not res!419703)) b!647653))

(assert (= (and b!647653 c!74339) b!647664))

(assert (= (and b!647653 (not c!74339)) b!647654))

(assert (= (and b!647653 (not res!419708)) b!647646))

(assert (= (and b!647646 res!419720) b!647663))

(assert (= (and b!647646 (not res!419721)) b!647658))

(assert (= (and b!647658 (not res!419714)) b!647656))

(assert (= (and b!647656 (not res!419712)) b!647669))

(assert (= (and b!647669 (not res!419716)) b!647645))

(declare-fun m!621099 () Bool)

(assert (=> b!647658 m!621099))

(declare-fun m!621101 () Bool)

(assert (=> b!647666 m!621101))

(declare-fun m!621103 () Bool)

(assert (=> b!647648 m!621103))

(declare-fun m!621105 () Bool)

(assert (=> b!647662 m!621105))

(declare-fun m!621107 () Bool)

(assert (=> start!58766 m!621107))

(declare-fun m!621109 () Bool)

(assert (=> start!58766 m!621109))

(declare-fun m!621111 () Bool)

(assert (=> b!647669 m!621111))

(declare-fun m!621113 () Bool)

(assert (=> b!647660 m!621113))

(declare-fun m!621115 () Bool)

(assert (=> b!647660 m!621115))

(assert (=> b!647663 m!621101))

(assert (=> b!647663 m!621101))

(declare-fun m!621117 () Bool)

(assert (=> b!647663 m!621117))

(assert (=> b!647655 m!621101))

(assert (=> b!647655 m!621101))

(assert (=> b!647655 m!621117))

(declare-fun m!621119 () Bool)

(assert (=> b!647652 m!621119))

(declare-fun m!621121 () Bool)

(assert (=> b!647652 m!621121))

(assert (=> b!647652 m!621113))

(declare-fun m!621123 () Bool)

(assert (=> b!647652 m!621123))

(declare-fun m!621125 () Bool)

(assert (=> b!647652 m!621125))

(declare-fun m!621127 () Bool)

(assert (=> b!647652 m!621127))

(assert (=> b!647652 m!621101))

(declare-fun m!621129 () Bool)

(assert (=> b!647652 m!621129))

(assert (=> b!647652 m!621101))

(declare-fun m!621131 () Bool)

(assert (=> b!647657 m!621131))

(declare-fun m!621133 () Bool)

(assert (=> b!647659 m!621133))

(assert (=> b!647651 m!621101))

(assert (=> b!647651 m!621113))

(declare-fun m!621135 () Bool)

(assert (=> b!647651 m!621135))

(declare-fun m!621137 () Bool)

(assert (=> b!647668 m!621137))

(assert (=> b!647668 m!621101))

(assert (=> b!647668 m!621101))

(declare-fun m!621139 () Bool)

(assert (=> b!647668 m!621139))

(assert (=> b!647644 m!621101))

(assert (=> b!647644 m!621101))

(declare-fun m!621141 () Bool)

(assert (=> b!647644 m!621141))

(declare-fun m!621143 () Bool)

(assert (=> b!647667 m!621143))

(assert (=> b!647665 m!621101))

(assert (=> b!647665 m!621101))

(declare-fun m!621145 () Bool)

(assert (=> b!647665 m!621145))

(declare-fun m!621147 () Bool)

(assert (=> b!647664 m!621147))

(assert (=> b!647664 m!621101))

(assert (=> b!647664 m!621101))

(declare-fun m!621149 () Bool)

(assert (=> b!647664 m!621149))

(declare-fun m!621151 () Bool)

(assert (=> b!647664 m!621151))

(assert (=> b!647664 m!621101))

(declare-fun m!621153 () Bool)

(assert (=> b!647664 m!621153))

(assert (=> b!647664 m!621101))

(declare-fun m!621155 () Bool)

(assert (=> b!647664 m!621155))

(declare-fun m!621157 () Bool)

(assert (=> b!647664 m!621157))

(declare-fun m!621159 () Bool)

(assert (=> b!647664 m!621159))

(declare-fun m!621161 () Bool)

(assert (=> b!647656 m!621161))

(declare-fun m!621163 () Bool)

(assert (=> b!647649 m!621163))

(assert (=> b!647646 m!621101))

(assert (=> b!647646 m!621101))

(declare-fun m!621165 () Bool)

(assert (=> b!647646 m!621165))

(assert (=> b!647646 m!621101))

(declare-fun m!621167 () Bool)

(assert (=> b!647646 m!621167))

(assert (=> b!647646 m!621101))

(assert (=> b!647646 m!621141))

(declare-fun m!621169 () Bool)

(assert (=> b!647645 m!621169))

(check-sat (not b!647668) (not start!58766) (not b!647656) (not b!647658) (not b!647646) (not b!647659) (not b!647665) (not b!647649) (not b!647663) (not b!647648) (not b!647669) (not b!647662) (not b!647664) (not b!647652) (not b!647645) (not b!647657) (not b!647655) (not b!647644))
(check-sat)
(get-model)

(declare-fun e!371467 () SeekEntryResult!6889)

(declare-fun b!647763 () Bool)

(assert (=> b!647763 (= e!371467 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!300600 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 lt!300612 lt!300611 mask!3053))))

(declare-fun b!647764 () Bool)

(declare-fun e!371466 () SeekEntryResult!6889)

(assert (=> b!647764 (= e!371466 (Found!6889 lt!300600))))

(declare-fun b!647765 () Bool)

(declare-fun e!371465 () SeekEntryResult!6889)

(assert (=> b!647765 (= e!371465 e!371466)))

(declare-fun c!74353 () Bool)

(declare-fun lt!300666 () (_ BitVec 64))

(assert (=> b!647765 (= c!74353 (= lt!300666 lt!300612))))

(declare-fun b!647766 () Bool)

(assert (=> b!647766 (= e!371465 Undefined!6889)))

(declare-fun b!647767 () Bool)

(assert (=> b!647767 (= e!371467 (MissingVacant!6889 vacantSpotIndex!68))))

(declare-fun lt!300665 () SeekEntryResult!6889)

(declare-fun d!91577 () Bool)

(get-info :version)

(assert (=> d!91577 (and (or ((_ is Undefined!6889) lt!300665) (not ((_ is Found!6889) lt!300665)) (and (bvsge (index!29900 lt!300665) #b00000000000000000000000000000000) (bvslt (index!29900 lt!300665) (size!18806 lt!300611)))) (or ((_ is Undefined!6889) lt!300665) ((_ is Found!6889) lt!300665) (not ((_ is MissingVacant!6889) lt!300665)) (not (= (index!29902 lt!300665) vacantSpotIndex!68)) (and (bvsge (index!29902 lt!300665) #b00000000000000000000000000000000) (bvslt (index!29902 lt!300665) (size!18806 lt!300611)))) (or ((_ is Undefined!6889) lt!300665) (ite ((_ is Found!6889) lt!300665) (= (select (arr!18442 lt!300611) (index!29900 lt!300665)) lt!300612) (and ((_ is MissingVacant!6889) lt!300665) (= (index!29902 lt!300665) vacantSpotIndex!68) (= (select (arr!18442 lt!300611) (index!29902 lt!300665)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!91577 (= lt!300665 e!371465)))

(declare-fun c!74354 () Bool)

(assert (=> d!91577 (= c!74354 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!91577 (= lt!300666 (select (arr!18442 lt!300611) lt!300600))))

(assert (=> d!91577 (validMask!0 mask!3053)))

(assert (=> d!91577 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!300600 vacantSpotIndex!68 lt!300612 lt!300611 mask!3053) lt!300665)))

(declare-fun b!647768 () Bool)

(declare-fun c!74352 () Bool)

(assert (=> b!647768 (= c!74352 (= lt!300666 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!647768 (= e!371466 e!371467)))

(assert (= (and d!91577 c!74354) b!647766))

(assert (= (and d!91577 (not c!74354)) b!647765))

(assert (= (and b!647765 c!74353) b!647764))

(assert (= (and b!647765 (not c!74353)) b!647768))

(assert (= (and b!647768 c!74352) b!647767))

(assert (= (and b!647768 (not c!74352)) b!647763))

(declare-fun m!621243 () Bool)

(assert (=> b!647763 m!621243))

(assert (=> b!647763 m!621243))

(declare-fun m!621245 () Bool)

(assert (=> b!647763 m!621245))

(declare-fun m!621247 () Bool)

(assert (=> d!91577 m!621247))

(declare-fun m!621249 () Bool)

(assert (=> d!91577 m!621249))

(declare-fun m!621251 () Bool)

(assert (=> d!91577 m!621251))

(assert (=> d!91577 m!621107))

(assert (=> b!647652 d!91577))

(declare-fun d!91579 () Bool)

(declare-fun lt!300669 () (_ BitVec 32))

(assert (=> d!91579 (and (bvsge lt!300669 #b00000000000000000000000000000000) (bvslt lt!300669 (bvadd mask!3053 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!91579 (= lt!300669 (choose!52 index!984 x!910 mask!3053))))

(assert (=> d!91579 (validMask!0 mask!3053)))

(assert (=> d!91579 (= (nextIndex!0 index!984 x!910 mask!3053) lt!300669)))

(declare-fun bs!19349 () Bool)

(assert (= bs!19349 d!91579))

(declare-fun m!621253 () Bool)

(assert (=> bs!19349 m!621253))

(assert (=> bs!19349 m!621107))

(assert (=> b!647652 d!91579))

(declare-fun e!371470 () SeekEntryResult!6889)

(declare-fun b!647769 () Bool)

(assert (=> b!647769 (= e!371470 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 lt!300612 lt!300611 mask!3053))))

(declare-fun b!647770 () Bool)

(declare-fun e!371469 () SeekEntryResult!6889)

(assert (=> b!647770 (= e!371469 (Found!6889 index!984))))

(declare-fun b!647771 () Bool)

(declare-fun e!371468 () SeekEntryResult!6889)

(assert (=> b!647771 (= e!371468 e!371469)))

(declare-fun c!74356 () Bool)

(declare-fun lt!300671 () (_ BitVec 64))

(assert (=> b!647771 (= c!74356 (= lt!300671 lt!300612))))

(declare-fun b!647772 () Bool)

(assert (=> b!647772 (= e!371468 Undefined!6889)))

(declare-fun b!647773 () Bool)

(assert (=> b!647773 (= e!371470 (MissingVacant!6889 vacantSpotIndex!68))))

(declare-fun lt!300670 () SeekEntryResult!6889)

(declare-fun d!91581 () Bool)

(assert (=> d!91581 (and (or ((_ is Undefined!6889) lt!300670) (not ((_ is Found!6889) lt!300670)) (and (bvsge (index!29900 lt!300670) #b00000000000000000000000000000000) (bvslt (index!29900 lt!300670) (size!18806 lt!300611)))) (or ((_ is Undefined!6889) lt!300670) ((_ is Found!6889) lt!300670) (not ((_ is MissingVacant!6889) lt!300670)) (not (= (index!29902 lt!300670) vacantSpotIndex!68)) (and (bvsge (index!29902 lt!300670) #b00000000000000000000000000000000) (bvslt (index!29902 lt!300670) (size!18806 lt!300611)))) (or ((_ is Undefined!6889) lt!300670) (ite ((_ is Found!6889) lt!300670) (= (select (arr!18442 lt!300611) (index!29900 lt!300670)) lt!300612) (and ((_ is MissingVacant!6889) lt!300670) (= (index!29902 lt!300670) vacantSpotIndex!68) (= (select (arr!18442 lt!300611) (index!29902 lt!300670)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!91581 (= lt!300670 e!371468)))

(declare-fun c!74357 () Bool)

(assert (=> d!91581 (= c!74357 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!91581 (= lt!300671 (select (arr!18442 lt!300611) index!984))))

(assert (=> d!91581 (validMask!0 mask!3053)))

(assert (=> d!91581 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!300612 lt!300611 mask!3053) lt!300670)))

(declare-fun b!647774 () Bool)

(declare-fun c!74355 () Bool)

(assert (=> b!647774 (= c!74355 (= lt!300671 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!647774 (= e!371469 e!371470)))

(assert (= (and d!91581 c!74357) b!647772))

(assert (= (and d!91581 (not c!74357)) b!647771))

(assert (= (and b!647771 c!74356) b!647770))

(assert (= (and b!647771 (not c!74356)) b!647774))

(assert (= (and b!647774 c!74355) b!647773))

(assert (= (and b!647774 (not c!74355)) b!647769))

(assert (=> b!647769 m!621119))

(assert (=> b!647769 m!621119))

(declare-fun m!621255 () Bool)

(assert (=> b!647769 m!621255))

(declare-fun m!621257 () Bool)

(assert (=> d!91581 m!621257))

(declare-fun m!621259 () Bool)

(assert (=> d!91581 m!621259))

(declare-fun m!621261 () Bool)

(assert (=> d!91581 m!621261))

(assert (=> d!91581 m!621107))

(assert (=> b!647652 d!91581))

(declare-fun d!91583 () Bool)

(declare-fun e!371473 () Bool)

(assert (=> d!91583 e!371473))

(declare-fun res!419795 () Bool)

(assert (=> d!91583 (=> (not res!419795) (not e!371473))))

(assert (=> d!91583 (= res!419795 (and (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18806 a!2986)) (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18806 a!2986)))) (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18806 a!2986)) (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18806 a!2986)))) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18806 a!2986))))))

(declare-fun lt!300674 () Unit!22006)

(declare-fun choose!9 (array!38477 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22006)

(assert (=> d!91583 (= lt!300674 (choose!9 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!300600 vacantSpotIndex!68 mask!3053))))

(assert (=> d!91583 (validMask!0 mask!3053)))

(assert (=> d!91583 (= (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!300600 vacantSpotIndex!68 mask!3053) lt!300674)))

(declare-fun b!647777 () Bool)

(assert (=> b!647777 (= e!371473 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!300600 vacantSpotIndex!68 (select (arr!18442 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!300600 vacantSpotIndex!68 (select (store (arr!18442 a!2986) i!1108 k0!1786) j!136) (array!38478 (store (arr!18442 a!2986) i!1108 k0!1786) (size!18806 a!2986)) mask!3053)))))

(assert (= (and d!91583 res!419795) b!647777))

(declare-fun m!621263 () Bool)

(assert (=> d!91583 m!621263))

(assert (=> d!91583 m!621107))

(assert (=> b!647777 m!621101))

(assert (=> b!647777 m!621129))

(assert (=> b!647777 m!621101))

(assert (=> b!647777 m!621121))

(declare-fun m!621265 () Bool)

(assert (=> b!647777 m!621265))

(assert (=> b!647777 m!621121))

(assert (=> b!647777 m!621113))

(assert (=> b!647652 d!91583))

(declare-fun b!647778 () Bool)

(declare-fun e!371476 () SeekEntryResult!6889)

(assert (=> b!647778 (= e!371476 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!300600 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 (select (arr!18442 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!647779 () Bool)

(declare-fun e!371475 () SeekEntryResult!6889)

(assert (=> b!647779 (= e!371475 (Found!6889 lt!300600))))

(declare-fun b!647780 () Bool)

(declare-fun e!371474 () SeekEntryResult!6889)

(assert (=> b!647780 (= e!371474 e!371475)))

(declare-fun lt!300676 () (_ BitVec 64))

(declare-fun c!74359 () Bool)

(assert (=> b!647780 (= c!74359 (= lt!300676 (select (arr!18442 a!2986) j!136)))))

(declare-fun b!647781 () Bool)

(assert (=> b!647781 (= e!371474 Undefined!6889)))

(declare-fun b!647782 () Bool)

(assert (=> b!647782 (= e!371476 (MissingVacant!6889 vacantSpotIndex!68))))

(declare-fun lt!300675 () SeekEntryResult!6889)

(declare-fun d!91585 () Bool)

(assert (=> d!91585 (and (or ((_ is Undefined!6889) lt!300675) (not ((_ is Found!6889) lt!300675)) (and (bvsge (index!29900 lt!300675) #b00000000000000000000000000000000) (bvslt (index!29900 lt!300675) (size!18806 a!2986)))) (or ((_ is Undefined!6889) lt!300675) ((_ is Found!6889) lt!300675) (not ((_ is MissingVacant!6889) lt!300675)) (not (= (index!29902 lt!300675) vacantSpotIndex!68)) (and (bvsge (index!29902 lt!300675) #b00000000000000000000000000000000) (bvslt (index!29902 lt!300675) (size!18806 a!2986)))) (or ((_ is Undefined!6889) lt!300675) (ite ((_ is Found!6889) lt!300675) (= (select (arr!18442 a!2986) (index!29900 lt!300675)) (select (arr!18442 a!2986) j!136)) (and ((_ is MissingVacant!6889) lt!300675) (= (index!29902 lt!300675) vacantSpotIndex!68) (= (select (arr!18442 a!2986) (index!29902 lt!300675)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!91585 (= lt!300675 e!371474)))

(declare-fun c!74360 () Bool)

(assert (=> d!91585 (= c!74360 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!91585 (= lt!300676 (select (arr!18442 a!2986) lt!300600))))

(assert (=> d!91585 (validMask!0 mask!3053)))

(assert (=> d!91585 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!300600 vacantSpotIndex!68 (select (arr!18442 a!2986) j!136) a!2986 mask!3053) lt!300675)))

(declare-fun b!647783 () Bool)

(declare-fun c!74358 () Bool)

(assert (=> b!647783 (= c!74358 (= lt!300676 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!647783 (= e!371475 e!371476)))

(assert (= (and d!91585 c!74360) b!647781))

(assert (= (and d!91585 (not c!74360)) b!647780))

(assert (= (and b!647780 c!74359) b!647779))

(assert (= (and b!647780 (not c!74359)) b!647783))

(assert (= (and b!647783 c!74358) b!647782))

(assert (= (and b!647783 (not c!74358)) b!647778))

(assert (=> b!647778 m!621243))

(assert (=> b!647778 m!621243))

(assert (=> b!647778 m!621101))

(declare-fun m!621267 () Bool)

(assert (=> b!647778 m!621267))

(declare-fun m!621269 () Bool)

(assert (=> d!91585 m!621269))

(declare-fun m!621271 () Bool)

(assert (=> d!91585 m!621271))

(declare-fun m!621273 () Bool)

(assert (=> d!91585 m!621273))

(assert (=> d!91585 m!621107))

(assert (=> b!647652 d!91585))

(declare-fun d!91587 () Bool)

(assert (=> d!91587 (= (validMask!0 mask!3053) (and (or (= mask!3053 #b00000000000000000000000000000111) (= mask!3053 #b00000000000000000000000000001111) (= mask!3053 #b00000000000000000000000000011111) (= mask!3053 #b00000000000000000000000000111111) (= mask!3053 #b00000000000000000000000001111111) (= mask!3053 #b00000000000000000000000011111111) (= mask!3053 #b00000000000000000000000111111111) (= mask!3053 #b00000000000000000000001111111111) (= mask!3053 #b00000000000000000000011111111111) (= mask!3053 #b00000000000000000000111111111111) (= mask!3053 #b00000000000000000001111111111111) (= mask!3053 #b00000000000000000011111111111111) (= mask!3053 #b00000000000000000111111111111111) (= mask!3053 #b00000000000000001111111111111111) (= mask!3053 #b00000000000000011111111111111111) (= mask!3053 #b00000000000000111111111111111111) (= mask!3053 #b00000000000001111111111111111111) (= mask!3053 #b00000000000011111111111111111111) (= mask!3053 #b00000000000111111111111111111111) (= mask!3053 #b00000000001111111111111111111111) (= mask!3053 #b00000000011111111111111111111111) (= mask!3053 #b00000000111111111111111111111111) (= mask!3053 #b00000001111111111111111111111111) (= mask!3053 #b00000011111111111111111111111111) (= mask!3053 #b00000111111111111111111111111111) (= mask!3053 #b00001111111111111111111111111111) (= mask!3053 #b00011111111111111111111111111111) (= mask!3053 #b00111111111111111111111111111111)) (bvsle mask!3053 #b00111111111111111111111111111111)))))

(assert (=> start!58766 d!91587))

(declare-fun d!91589 () Bool)

(assert (=> d!91589 (= (array_inv!14216 a!2986) (bvsge (size!18806 a!2986) #b00000000000000000000000000000000))))

(assert (=> start!58766 d!91589))

(declare-fun d!91591 () Bool)

(declare-fun res!419800 () Bool)

(declare-fun e!371481 () Bool)

(assert (=> d!91591 (=> res!419800 e!371481)))

(assert (=> d!91591 (= res!419800 (= (select (arr!18442 lt!300611) index!984) (select (arr!18442 a!2986) j!136)))))

(assert (=> d!91591 (= (arrayContainsKey!0 lt!300611 (select (arr!18442 a!2986) j!136) index!984) e!371481)))

(declare-fun b!647788 () Bool)

(declare-fun e!371482 () Bool)

(assert (=> b!647788 (= e!371481 e!371482)))

(declare-fun res!419801 () Bool)

(assert (=> b!647788 (=> (not res!419801) (not e!371482))))

(assert (=> b!647788 (= res!419801 (bvslt (bvadd index!984 #b00000000000000000000000000000001) (size!18806 lt!300611)))))

(declare-fun b!647789 () Bool)

(assert (=> b!647789 (= e!371482 (arrayContainsKey!0 lt!300611 (select (arr!18442 a!2986) j!136) (bvadd index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!91591 (not res!419800)) b!647788))

(assert (= (and b!647788 res!419801) b!647789))

(assert (=> d!91591 m!621261))

(assert (=> b!647789 m!621101))

(declare-fun m!621275 () Bool)

(assert (=> b!647789 m!621275))

(assert (=> b!647663 d!91591))

(declare-fun b!647828 () Bool)

(declare-fun e!371516 () SeekEntryResult!6889)

(assert (=> b!647828 (= e!371516 Undefined!6889)))

(declare-fun b!647829 () Bool)

(declare-fun e!371515 () SeekEntryResult!6889)

(assert (=> b!647829 (= e!371516 e!371515)))

(declare-fun lt!300686 () (_ BitVec 64))

(declare-fun lt!300688 () SeekEntryResult!6889)

(assert (=> b!647829 (= lt!300686 (select (arr!18442 a!2986) (index!29901 lt!300688)))))

(declare-fun c!74367 () Bool)

(assert (=> b!647829 (= c!74367 (= lt!300686 k0!1786))))

(declare-fun d!91593 () Bool)

(declare-fun lt!300687 () SeekEntryResult!6889)

(assert (=> d!91593 (and (or ((_ is Undefined!6889) lt!300687) (not ((_ is Found!6889) lt!300687)) (and (bvsge (index!29900 lt!300687) #b00000000000000000000000000000000) (bvslt (index!29900 lt!300687) (size!18806 a!2986)))) (or ((_ is Undefined!6889) lt!300687) ((_ is Found!6889) lt!300687) (not ((_ is MissingZero!6889) lt!300687)) (and (bvsge (index!29899 lt!300687) #b00000000000000000000000000000000) (bvslt (index!29899 lt!300687) (size!18806 a!2986)))) (or ((_ is Undefined!6889) lt!300687) ((_ is Found!6889) lt!300687) ((_ is MissingZero!6889) lt!300687) (not ((_ is MissingVacant!6889) lt!300687)) (and (bvsge (index!29902 lt!300687) #b00000000000000000000000000000000) (bvslt (index!29902 lt!300687) (size!18806 a!2986)))) (or ((_ is Undefined!6889) lt!300687) (ite ((_ is Found!6889) lt!300687) (= (select (arr!18442 a!2986) (index!29900 lt!300687)) k0!1786) (ite ((_ is MissingZero!6889) lt!300687) (= (select (arr!18442 a!2986) (index!29899 lt!300687)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!6889) lt!300687) (= (select (arr!18442 a!2986) (index!29902 lt!300687)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!91593 (= lt!300687 e!371516)))

(declare-fun c!74368 () Bool)

(assert (=> d!91593 (= c!74368 (and ((_ is Intermediate!6889) lt!300688) (undefined!7701 lt!300688)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38477 (_ BitVec 32)) SeekEntryResult!6889)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!91593 (= lt!300688 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1786 mask!3053) k0!1786 a!2986 mask!3053))))

(assert (=> d!91593 (validMask!0 mask!3053)))

(assert (=> d!91593 (= (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053) lt!300687)))

(declare-fun e!371517 () SeekEntryResult!6889)

(declare-fun b!647830 () Bool)

(assert (=> b!647830 (= e!371517 (seekKeyOrZeroReturnVacant!0 (x!58710 lt!300688) (index!29901 lt!300688) (index!29901 lt!300688) k0!1786 a!2986 mask!3053))))

(declare-fun b!647831 () Bool)

(declare-fun c!74369 () Bool)

(assert (=> b!647831 (= c!74369 (= lt!300686 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!647831 (= e!371515 e!371517)))

(declare-fun b!647832 () Bool)

(assert (=> b!647832 (= e!371515 (Found!6889 (index!29901 lt!300688)))))

(declare-fun b!647833 () Bool)

(assert (=> b!647833 (= e!371517 (MissingZero!6889 (index!29901 lt!300688)))))

(assert (= (and d!91593 c!74368) b!647828))

(assert (= (and d!91593 (not c!74368)) b!647829))

(assert (= (and b!647829 c!74367) b!647832))

(assert (= (and b!647829 (not c!74367)) b!647831))

(assert (= (and b!647831 c!74369) b!647833))

(assert (= (and b!647831 (not c!74369)) b!647830))

(declare-fun m!621295 () Bool)

(assert (=> b!647829 m!621295))

(declare-fun m!621297 () Bool)

(assert (=> d!91593 m!621297))

(declare-fun m!621299 () Bool)

(assert (=> d!91593 m!621299))

(assert (=> d!91593 m!621107))

(declare-fun m!621301 () Bool)

(assert (=> d!91593 m!621301))

(declare-fun m!621303 () Bool)

(assert (=> d!91593 m!621303))

(declare-fun m!621305 () Bool)

(assert (=> d!91593 m!621305))

(assert (=> d!91593 m!621301))

(declare-fun m!621307 () Bool)

(assert (=> b!647830 m!621307))

(assert (=> b!647662 d!91593))

(declare-fun d!91609 () Bool)

(declare-fun res!419828 () Bool)

(declare-fun e!371520 () Bool)

(assert (=> d!91609 (=> res!419828 e!371520)))

(assert (=> d!91609 (= res!419828 (= (select (arr!18442 lt!300611) j!136) (select (arr!18442 a!2986) j!136)))))

(assert (=> d!91609 (= (arrayContainsKey!0 lt!300611 (select (arr!18442 a!2986) j!136) j!136) e!371520)))

(declare-fun b!647838 () Bool)

(declare-fun e!371521 () Bool)

(assert (=> b!647838 (= e!371520 e!371521)))

(declare-fun res!419829 () Bool)

(assert (=> b!647838 (=> (not res!419829) (not e!371521))))

(assert (=> b!647838 (= res!419829 (bvslt (bvadd j!136 #b00000000000000000000000000000001) (size!18806 lt!300611)))))

(declare-fun b!647839 () Bool)

(assert (=> b!647839 (= e!371521 (arrayContainsKey!0 lt!300611 (select (arr!18442 a!2986) j!136) (bvadd j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!91609 (not res!419828)) b!647838))

(assert (= (and b!647838 res!419829) b!647839))

(declare-fun m!621309 () Bool)

(assert (=> d!91609 m!621309))

(assert (=> b!647839 m!621101))

(declare-fun m!621311 () Bool)

(assert (=> b!647839 m!621311))

(assert (=> b!647644 d!91609))

(declare-fun d!91611 () Bool)

(assert (=> d!91611 (= (validKeyInArray!0 (select (arr!18442 a!2986) j!136)) (and (not (= (select (arr!18442 a!2986) j!136) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!18442 a!2986) j!136) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!647665 d!91611))

(assert (=> b!647655 d!91591))

(declare-fun d!91613 () Bool)

(assert (=> d!91613 (arrayNoDuplicates!0 lt!300611 j!136 Nil!12533)))

(declare-fun lt!300691 () Unit!22006)

(declare-fun choose!39 (array!38477 (_ BitVec 32) (_ BitVec 32)) Unit!22006)

(assert (=> d!91613 (= lt!300691 (choose!39 lt!300611 #b00000000000000000000000000000000 j!136))))

(assert (=> d!91613 (bvslt (size!18806 lt!300611) #b01111111111111111111111111111111)))

(assert (=> d!91613 (= (lemmaNoDuplicateFromThenFromBigger!0 lt!300611 #b00000000000000000000000000000000 j!136) lt!300691)))

(declare-fun bs!19351 () Bool)

(assert (= bs!19351 d!91613))

(assert (=> bs!19351 m!621151))

(declare-fun m!621321 () Bool)

(assert (=> bs!19351 m!621321))

(assert (=> b!647664 d!91613))

(declare-fun d!91617 () Bool)

(assert (=> d!91617 (arrayContainsKey!0 lt!300611 (select (arr!18442 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!300694 () Unit!22006)

(declare-fun choose!114 (array!38477 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22006)

(assert (=> d!91617 (= lt!300694 (choose!114 lt!300611 (select (arr!18442 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> d!91617 (bvsge index!984 #b00000000000000000000000000000000)))

(assert (=> d!91617 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!300611 (select (arr!18442 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)) lt!300694)))

(declare-fun bs!19352 () Bool)

(assert (= bs!19352 d!91617))

(assert (=> bs!19352 m!621101))

(assert (=> bs!19352 m!621155))

(assert (=> bs!19352 m!621101))

(declare-fun m!621323 () Bool)

(assert (=> bs!19352 m!621323))

(assert (=> b!647664 d!91617))

(declare-fun b!647867 () Bool)

(declare-fun e!371542 () Bool)

(declare-fun call!33707 () Bool)

(assert (=> b!647867 (= e!371542 call!33707)))

(declare-fun b!647868 () Bool)

(assert (=> b!647868 (= e!371542 call!33707)))

(declare-fun d!91619 () Bool)

(declare-fun res!419839 () Bool)

(declare-fun e!371541 () Bool)

(assert (=> d!91619 (=> res!419839 e!371541)))

(assert (=> d!91619 (= res!419839 (bvsge j!136 (size!18806 lt!300611)))))

(assert (=> d!91619 (= (arrayNoDuplicates!0 lt!300611 j!136 Nil!12533) e!371541)))

(declare-fun c!74381 () Bool)

(declare-fun bm!33704 () Bool)

(assert (=> bm!33704 (= call!33707 (arrayNoDuplicates!0 lt!300611 (bvadd j!136 #b00000000000000000000000000000001) (ite c!74381 (Cons!12532 (select (arr!18442 lt!300611) j!136) Nil!12533) Nil!12533)))))

(declare-fun b!647869 () Bool)

(declare-fun e!371540 () Bool)

(assert (=> b!647869 (= e!371541 e!371540)))

(declare-fun res!419841 () Bool)

(assert (=> b!647869 (=> (not res!419841) (not e!371540))))

(declare-fun e!371543 () Bool)

(assert (=> b!647869 (= res!419841 (not e!371543))))

(declare-fun res!419840 () Bool)

(assert (=> b!647869 (=> (not res!419840) (not e!371543))))

(assert (=> b!647869 (= res!419840 (validKeyInArray!0 (select (arr!18442 lt!300611) j!136)))))

(declare-fun b!647870 () Bool)

(assert (=> b!647870 (= e!371543 (contains!3159 Nil!12533 (select (arr!18442 lt!300611) j!136)))))

(declare-fun b!647871 () Bool)

(assert (=> b!647871 (= e!371540 e!371542)))

(assert (=> b!647871 (= c!74381 (validKeyInArray!0 (select (arr!18442 lt!300611) j!136)))))

(assert (= (and d!91619 (not res!419839)) b!647869))

(assert (= (and b!647869 res!419840) b!647870))

(assert (= (and b!647869 res!419841) b!647871))

(assert (= (and b!647871 c!74381) b!647867))

(assert (= (and b!647871 (not c!74381)) b!647868))

(assert (= (or b!647867 b!647868) bm!33704))

(assert (=> bm!33704 m!621309))

(declare-fun m!621325 () Bool)

(assert (=> bm!33704 m!621325))

(assert (=> b!647869 m!621309))

(assert (=> b!647869 m!621309))

(declare-fun m!621327 () Bool)

(assert (=> b!647869 m!621327))

(assert (=> b!647870 m!621309))

(assert (=> b!647870 m!621309))

(declare-fun m!621329 () Bool)

(assert (=> b!647870 m!621329))

(assert (=> b!647871 m!621309))

(assert (=> b!647871 m!621309))

(assert (=> b!647871 m!621327))

(assert (=> b!647664 d!91619))

(declare-fun b!647872 () Bool)

(declare-fun e!371546 () Bool)

(declare-fun call!33708 () Bool)

(assert (=> b!647872 (= e!371546 call!33708)))

(declare-fun b!647873 () Bool)

(assert (=> b!647873 (= e!371546 call!33708)))

(declare-fun d!91621 () Bool)

(declare-fun res!419842 () Bool)

(declare-fun e!371545 () Bool)

(assert (=> d!91621 (=> res!419842 e!371545)))

(assert (=> d!91621 (= res!419842 (bvsge #b00000000000000000000000000000000 (size!18806 lt!300611)))))

(assert (=> d!91621 (= (arrayNoDuplicates!0 lt!300611 #b00000000000000000000000000000000 Nil!12533) e!371545)))

(declare-fun bm!33705 () Bool)

(declare-fun c!74382 () Bool)

(assert (=> bm!33705 (= call!33708 (arrayNoDuplicates!0 lt!300611 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!74382 (Cons!12532 (select (arr!18442 lt!300611) #b00000000000000000000000000000000) Nil!12533) Nil!12533)))))

(declare-fun b!647874 () Bool)

(declare-fun e!371544 () Bool)

(assert (=> b!647874 (= e!371545 e!371544)))

(declare-fun res!419844 () Bool)

(assert (=> b!647874 (=> (not res!419844) (not e!371544))))

(declare-fun e!371547 () Bool)

(assert (=> b!647874 (= res!419844 (not e!371547))))

(declare-fun res!419843 () Bool)

(assert (=> b!647874 (=> (not res!419843) (not e!371547))))

(assert (=> b!647874 (= res!419843 (validKeyInArray!0 (select (arr!18442 lt!300611) #b00000000000000000000000000000000)))))

(declare-fun b!647875 () Bool)

(assert (=> b!647875 (= e!371547 (contains!3159 Nil!12533 (select (arr!18442 lt!300611) #b00000000000000000000000000000000)))))

(declare-fun b!647876 () Bool)

(assert (=> b!647876 (= e!371544 e!371546)))

(assert (=> b!647876 (= c!74382 (validKeyInArray!0 (select (arr!18442 lt!300611) #b00000000000000000000000000000000)))))

(assert (= (and d!91621 (not res!419842)) b!647874))

(assert (= (and b!647874 res!419843) b!647875))

(assert (= (and b!647874 res!419844) b!647876))

(assert (= (and b!647876 c!74382) b!647872))

(assert (= (and b!647876 (not c!74382)) b!647873))

(assert (= (or b!647872 b!647873) bm!33705))

(declare-fun m!621331 () Bool)

(assert (=> bm!33705 m!621331))

(declare-fun m!621333 () Bool)

(assert (=> bm!33705 m!621333))

(assert (=> b!647874 m!621331))

(assert (=> b!647874 m!621331))

(declare-fun m!621335 () Bool)

(assert (=> b!647874 m!621335))

(assert (=> b!647875 m!621331))

(assert (=> b!647875 m!621331))

(declare-fun m!621337 () Bool)

(assert (=> b!647875 m!621337))

(assert (=> b!647876 m!621331))

(assert (=> b!647876 m!621331))

(assert (=> b!647876 m!621335))

(assert (=> b!647664 d!91621))

(declare-fun d!91623 () Bool)

(declare-fun e!371563 () Bool)

(assert (=> d!91623 e!371563))

(declare-fun res!419851 () Bool)

(assert (=> d!91623 (=> (not res!419851) (not e!371563))))

(assert (=> d!91623 (= res!419851 (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18806 a!2986))))))

(declare-fun lt!300712 () Unit!22006)

(declare-fun choose!41 (array!38477 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12536) Unit!22006)

(assert (=> d!91623 (= lt!300712 (choose!41 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12533))))

(assert (=> d!91623 (bvslt (size!18806 a!2986) #b01111111111111111111111111111111)))

(assert (=> d!91623 (= (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12533) lt!300712)))

(declare-fun b!647901 () Bool)

(assert (=> b!647901 (= e!371563 (arrayNoDuplicates!0 (array!38478 (store (arr!18442 a!2986) i!1108 k0!1786) (size!18806 a!2986)) #b00000000000000000000000000000000 Nil!12533))))

(assert (= (and d!91623 res!419851) b!647901))

(declare-fun m!621353 () Bool)

(assert (=> d!91623 m!621353))

(assert (=> b!647901 m!621113))

(declare-fun m!621355 () Bool)

(assert (=> b!647901 m!621355))

(assert (=> b!647664 d!91623))

(declare-fun d!91627 () Bool)

(declare-fun res!419854 () Bool)

(declare-fun e!371566 () Bool)

(assert (=> d!91627 (=> res!419854 e!371566)))

(assert (=> d!91627 (= res!419854 (= (select (arr!18442 lt!300611) (bvadd #b00000000000000000000000000000001 j!136)) (select (arr!18442 a!2986) j!136)))))

(assert (=> d!91627 (= (arrayContainsKey!0 lt!300611 (select (arr!18442 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136)) e!371566)))

(declare-fun b!647904 () Bool)

(declare-fun e!371567 () Bool)

(assert (=> b!647904 (= e!371566 e!371567)))

(declare-fun res!419855 () Bool)

(assert (=> b!647904 (=> (not res!419855) (not e!371567))))

(assert (=> b!647904 (= res!419855 (bvslt (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001) (size!18806 lt!300611)))))

(declare-fun b!647905 () Bool)

(assert (=> b!647905 (= e!371567 (arrayContainsKey!0 lt!300611 (select (arr!18442 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!91627 (not res!419854)) b!647904))

(assert (= (and b!647904 res!419855) b!647905))

(declare-fun m!621363 () Bool)

(assert (=> d!91627 m!621363))

(assert (=> b!647905 m!621101))

(declare-fun m!621365 () Bool)

(assert (=> b!647905 m!621365))

(assert (=> b!647664 d!91627))

(declare-fun d!91631 () Bool)

(assert (=> d!91631 (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18806 lt!300611)) (not (= (select (arr!18442 lt!300611) j!136) (select (arr!18442 a!2986) j!136))))))

(declare-fun lt!300718 () Unit!22006)

(declare-fun choose!21 (array!38477 (_ BitVec 64) (_ BitVec 32) List!12536) Unit!22006)

(assert (=> d!91631 (= lt!300718 (choose!21 lt!300611 (select (arr!18442 a!2986) j!136) j!136 Nil!12533))))

(assert (=> d!91631 (bvslt (size!18806 lt!300611) #b01111111111111111111111111111111)))

(assert (=> d!91631 (= (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!300611 (select (arr!18442 a!2986) j!136) j!136 Nil!12533) lt!300718)))

(declare-fun bs!19353 () Bool)

(assert (= bs!19353 d!91631))

(assert (=> bs!19353 m!621309))

(assert (=> bs!19353 m!621101))

(declare-fun m!621371 () Bool)

(assert (=> bs!19353 m!621371))

(assert (=> b!647664 d!91631))

(declare-fun e!371575 () SeekEntryResult!6889)

(declare-fun b!647914 () Bool)

(assert (=> b!647914 (= e!371575 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 (select (arr!18442 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!647915 () Bool)

(declare-fun e!371574 () SeekEntryResult!6889)

(assert (=> b!647915 (= e!371574 (Found!6889 index!984))))

(declare-fun b!647916 () Bool)

(declare-fun e!371573 () SeekEntryResult!6889)

(assert (=> b!647916 (= e!371573 e!371574)))

(declare-fun c!74396 () Bool)

(declare-fun lt!300720 () (_ BitVec 64))

(assert (=> b!647916 (= c!74396 (= lt!300720 (select (arr!18442 a!2986) j!136)))))

(declare-fun b!647917 () Bool)

(assert (=> b!647917 (= e!371573 Undefined!6889)))

(declare-fun b!647918 () Bool)

(assert (=> b!647918 (= e!371575 (MissingVacant!6889 vacantSpotIndex!68))))

(declare-fun d!91637 () Bool)

(declare-fun lt!300719 () SeekEntryResult!6889)

(assert (=> d!91637 (and (or ((_ is Undefined!6889) lt!300719) (not ((_ is Found!6889) lt!300719)) (and (bvsge (index!29900 lt!300719) #b00000000000000000000000000000000) (bvslt (index!29900 lt!300719) (size!18806 a!2986)))) (or ((_ is Undefined!6889) lt!300719) ((_ is Found!6889) lt!300719) (not ((_ is MissingVacant!6889) lt!300719)) (not (= (index!29902 lt!300719) vacantSpotIndex!68)) (and (bvsge (index!29902 lt!300719) #b00000000000000000000000000000000) (bvslt (index!29902 lt!300719) (size!18806 a!2986)))) (or ((_ is Undefined!6889) lt!300719) (ite ((_ is Found!6889) lt!300719) (= (select (arr!18442 a!2986) (index!29900 lt!300719)) (select (arr!18442 a!2986) j!136)) (and ((_ is MissingVacant!6889) lt!300719) (= (index!29902 lt!300719) vacantSpotIndex!68) (= (select (arr!18442 a!2986) (index!29902 lt!300719)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!91637 (= lt!300719 e!371573)))

(declare-fun c!74397 () Bool)

(assert (=> d!91637 (= c!74397 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!91637 (= lt!300720 (select (arr!18442 a!2986) index!984))))

(assert (=> d!91637 (validMask!0 mask!3053)))

(assert (=> d!91637 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18442 a!2986) j!136) a!2986 mask!3053) lt!300719)))

(declare-fun b!647919 () Bool)

(declare-fun c!74395 () Bool)

(assert (=> b!647919 (= c!74395 (= lt!300720 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!647919 (= e!371574 e!371575)))

(assert (= (and d!91637 c!74397) b!647917))

(assert (= (and d!91637 (not c!74397)) b!647916))

(assert (= (and b!647916 c!74396) b!647915))

(assert (= (and b!647916 (not c!74396)) b!647919))

(assert (= (and b!647919 c!74395) b!647918))

(assert (= (and b!647919 (not c!74395)) b!647914))

(assert (=> b!647914 m!621119))

(assert (=> b!647914 m!621119))

(assert (=> b!647914 m!621101))

(declare-fun m!621379 () Bool)

(assert (=> b!647914 m!621379))

(declare-fun m!621381 () Bool)

(assert (=> d!91637 m!621381))

(declare-fun m!621383 () Bool)

(assert (=> d!91637 m!621383))

(assert (=> d!91637 m!621137))

(assert (=> d!91637 m!621107))

(assert (=> b!647668 d!91637))

(declare-fun d!91641 () Bool)

(assert (=> d!91641 (= (validKeyInArray!0 k0!1786) (and (not (= k0!1786 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1786 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!647657 d!91641))

(declare-fun d!91643 () Bool)

(declare-fun res!419868 () Bool)

(declare-fun e!371588 () Bool)

(assert (=> d!91643 (=> res!419868 e!371588)))

(assert (=> d!91643 (= res!419868 ((_ is Nil!12533) Nil!12533))))

(assert (=> d!91643 (= (noDuplicate!419 Nil!12533) e!371588)))

(declare-fun b!647934 () Bool)

(declare-fun e!371589 () Bool)

(assert (=> b!647934 (= e!371588 e!371589)))

(declare-fun res!419869 () Bool)

(assert (=> b!647934 (=> (not res!419869) (not e!371589))))

(assert (=> b!647934 (= res!419869 (not (contains!3159 (t!18772 Nil!12533) (h!13577 Nil!12533))))))

(declare-fun b!647935 () Bool)

(assert (=> b!647935 (= e!371589 (noDuplicate!419 (t!18772 Nil!12533)))))

(assert (= (and d!91643 (not res!419868)) b!647934))

(assert (= (and b!647934 res!419869) b!647935))

(declare-fun m!621385 () Bool)

(assert (=> b!647934 m!621385))

(declare-fun m!621389 () Bool)

(assert (=> b!647935 m!621389))

(assert (=> b!647658 d!91643))

(declare-fun d!91645 () Bool)

(declare-fun lt!300730 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!251 (List!12536) (InoxSet (_ BitVec 64)))

(assert (=> d!91645 (= lt!300730 (select (content!251 Nil!12533) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!371609 () Bool)

(assert (=> d!91645 (= lt!300730 e!371609)))

(declare-fun res!419881 () Bool)

(assert (=> d!91645 (=> (not res!419881) (not e!371609))))

(assert (=> d!91645 (= res!419881 ((_ is Cons!12532) Nil!12533))))

(assert (=> d!91645 (= (contains!3159 Nil!12533 #b0000000000000000000000000000000000000000000000000000000000000000) lt!300730)))

(declare-fun b!647962 () Bool)

(declare-fun e!371608 () Bool)

(assert (=> b!647962 (= e!371609 e!371608)))

(declare-fun res!419880 () Bool)

(assert (=> b!647962 (=> res!419880 e!371608)))

(assert (=> b!647962 (= res!419880 (= (h!13577 Nil!12533) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!647963 () Bool)

(assert (=> b!647963 (= e!371608 (contains!3159 (t!18772 Nil!12533) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!91645 res!419881) b!647962))

(assert (= (and b!647962 (not res!419880)) b!647963))

(declare-fun m!621423 () Bool)

(assert (=> d!91645 m!621423))

(declare-fun m!621425 () Bool)

(assert (=> d!91645 m!621425))

(declare-fun m!621427 () Bool)

(assert (=> b!647963 m!621427))

(assert (=> b!647656 d!91645))

(declare-fun d!91657 () Bool)

(declare-fun lt!300731 () Bool)

(assert (=> d!91657 (= lt!300731 (select (content!251 Nil!12533) k0!1786))))

(declare-fun e!371611 () Bool)

(assert (=> d!91657 (= lt!300731 e!371611)))

(declare-fun res!419883 () Bool)

(assert (=> d!91657 (=> (not res!419883) (not e!371611))))

(assert (=> d!91657 (= res!419883 ((_ is Cons!12532) Nil!12533))))

(assert (=> d!91657 (= (contains!3159 Nil!12533 k0!1786) lt!300731)))

(declare-fun b!647964 () Bool)

(declare-fun e!371610 () Bool)

(assert (=> b!647964 (= e!371611 e!371610)))

(declare-fun res!419882 () Bool)

(assert (=> b!647964 (=> res!419882 e!371610)))

(assert (=> b!647964 (= res!419882 (= (h!13577 Nil!12533) k0!1786))))

(declare-fun b!647965 () Bool)

(assert (=> b!647965 (= e!371610 (contains!3159 (t!18772 Nil!12533) k0!1786))))

(assert (= (and d!91657 res!419883) b!647964))

(assert (= (and b!647964 (not res!419882)) b!647965))

(assert (=> d!91657 m!621423))

(declare-fun m!621429 () Bool)

(assert (=> d!91657 m!621429))

(declare-fun m!621431 () Bool)

(assert (=> b!647965 m!621431))

(assert (=> b!647645 d!91657))

(declare-fun d!91659 () Bool)

(declare-fun res!419884 () Bool)

(declare-fun e!371612 () Bool)

(assert (=> d!91659 (=> res!419884 e!371612)))

(assert (=> d!91659 (= res!419884 (= (select (arr!18442 lt!300611) (bvadd #b00000000000000000000000000000001 index!984)) (select (arr!18442 a!2986) j!136)))))

(assert (=> d!91659 (= (arrayContainsKey!0 lt!300611 (select (arr!18442 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984)) e!371612)))

(declare-fun b!647966 () Bool)

(declare-fun e!371613 () Bool)

(assert (=> b!647966 (= e!371612 e!371613)))

(declare-fun res!419885 () Bool)

(assert (=> b!647966 (=> (not res!419885) (not e!371613))))

(assert (=> b!647966 (= res!419885 (bvslt (bvadd #b00000000000000000000000000000001 index!984 #b00000000000000000000000000000001) (size!18806 lt!300611)))))

(declare-fun b!647967 () Bool)

(assert (=> b!647967 (= e!371613 (arrayContainsKey!0 lt!300611 (select (arr!18442 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!91659 (not res!419884)) b!647966))

(assert (= (and b!647966 res!419885) b!647967))

(declare-fun m!621433 () Bool)

(assert (=> d!91659 m!621433))

(assert (=> b!647967 m!621101))

(declare-fun m!621435 () Bool)

(assert (=> b!647967 m!621435))

(assert (=> b!647646 d!91659))

(declare-fun d!91661 () Bool)

(assert (=> d!91661 (arrayContainsKey!0 lt!300611 (select (arr!18442 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!300735 () Unit!22006)

(assert (=> d!91661 (= lt!300735 (choose!114 lt!300611 (select (arr!18442 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> d!91661 (bvsge j!136 #b00000000000000000000000000000000)))

(assert (=> d!91661 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!300611 (select (arr!18442 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)) lt!300735)))

(declare-fun bs!19356 () Bool)

(assert (= bs!19356 d!91661))

(assert (=> bs!19356 m!621101))

(assert (=> bs!19356 m!621165))

(assert (=> bs!19356 m!621101))

(declare-fun m!621439 () Bool)

(assert (=> bs!19356 m!621439))

(assert (=> b!647646 d!91661))

(assert (=> b!647646 d!91609))

(declare-fun b!647981 () Bool)

(declare-fun e!371626 () Bool)

(declare-fun e!371625 () Bool)

(assert (=> b!647981 (= e!371626 e!371625)))

(declare-fun c!74410 () Bool)

(assert (=> b!647981 (= c!74410 (validKeyInArray!0 (select (arr!18442 a!2986) #b00000000000000000000000000000000)))))

(declare-fun d!91665 () Bool)

(declare-fun res!419896 () Bool)

(assert (=> d!91665 (=> res!419896 e!371626)))

(assert (=> d!91665 (= res!419896 (bvsge #b00000000000000000000000000000000 (size!18806 a!2986)))))

(assert (=> d!91665 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053) e!371626)))

(declare-fun bm!33712 () Bool)

(declare-fun call!33715 () Bool)

(assert (=> bm!33712 (= call!33715 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2986 mask!3053))))

(declare-fun b!647982 () Bool)

(declare-fun e!371627 () Bool)

(assert (=> b!647982 (= e!371625 e!371627)))

(declare-fun lt!300749 () (_ BitVec 64))

(assert (=> b!647982 (= lt!300749 (select (arr!18442 a!2986) #b00000000000000000000000000000000))))

(declare-fun lt!300748 () Unit!22006)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38477 (_ BitVec 64) (_ BitVec 32)) Unit!22006)

(assert (=> b!647982 (= lt!300748 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2986 lt!300749 #b00000000000000000000000000000000))))

(assert (=> b!647982 (arrayContainsKey!0 a!2986 lt!300749 #b00000000000000000000000000000000)))

(declare-fun lt!300750 () Unit!22006)

(assert (=> b!647982 (= lt!300750 lt!300748)))

(declare-fun res!419895 () Bool)

(assert (=> b!647982 (= res!419895 (= (seekEntryOrOpen!0 (select (arr!18442 a!2986) #b00000000000000000000000000000000) a!2986 mask!3053) (Found!6889 #b00000000000000000000000000000000)))))

(assert (=> b!647982 (=> (not res!419895) (not e!371627))))

(declare-fun b!647983 () Bool)

(assert (=> b!647983 (= e!371627 call!33715)))

(declare-fun b!647984 () Bool)

(assert (=> b!647984 (= e!371625 call!33715)))

(assert (= (and d!91665 (not res!419896)) b!647981))

(assert (= (and b!647981 c!74410) b!647982))

(assert (= (and b!647981 (not c!74410)) b!647984))

(assert (= (and b!647982 res!419895) b!647983))

(assert (= (or b!647983 b!647984) bm!33712))

(declare-fun m!621453 () Bool)

(assert (=> b!647981 m!621453))

(assert (=> b!647981 m!621453))

(declare-fun m!621455 () Bool)

(assert (=> b!647981 m!621455))

(declare-fun m!621457 () Bool)

(assert (=> bm!33712 m!621457))

(assert (=> b!647982 m!621453))

(declare-fun m!621459 () Bool)

(assert (=> b!647982 m!621459))

(declare-fun m!621461 () Bool)

(assert (=> b!647982 m!621461))

(assert (=> b!647982 m!621453))

(declare-fun m!621463 () Bool)

(assert (=> b!647982 m!621463))

(assert (=> b!647649 d!91665))

(declare-fun d!91675 () Bool)

(declare-fun res!419897 () Bool)

(declare-fun e!371628 () Bool)

(assert (=> d!91675 (=> res!419897 e!371628)))

(assert (=> d!91675 (= res!419897 (= (select (arr!18442 a!2986) #b00000000000000000000000000000000) k0!1786))))

(assert (=> d!91675 (= (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000) e!371628)))

(declare-fun b!647985 () Bool)

(declare-fun e!371629 () Bool)

(assert (=> b!647985 (= e!371628 e!371629)))

(declare-fun res!419898 () Bool)

(assert (=> b!647985 (=> (not res!419898) (not e!371629))))

(assert (=> b!647985 (= res!419898 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!18806 a!2986)))))

(declare-fun b!647986 () Bool)

(assert (=> b!647986 (= e!371629 (arrayContainsKey!0 a!2986 k0!1786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!91675 (not res!419897)) b!647985))

(assert (= (and b!647985 res!419898) b!647986))

(assert (=> d!91675 m!621453))

(declare-fun m!621465 () Bool)

(assert (=> b!647986 m!621465))

(assert (=> b!647648 d!91675))

(declare-fun d!91677 () Bool)

(declare-fun lt!300752 () Bool)

(assert (=> d!91677 (= lt!300752 (select (content!251 Nil!12533) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!371631 () Bool)

(assert (=> d!91677 (= lt!300752 e!371631)))

(declare-fun res!419900 () Bool)

(assert (=> d!91677 (=> (not res!419900) (not e!371631))))

(assert (=> d!91677 (= res!419900 ((_ is Cons!12532) Nil!12533))))

(assert (=> d!91677 (= (contains!3159 Nil!12533 #b1000000000000000000000000000000000000000000000000000000000000000) lt!300752)))

(declare-fun b!647987 () Bool)

(declare-fun e!371630 () Bool)

(assert (=> b!647987 (= e!371631 e!371630)))

(declare-fun res!419899 () Bool)

(assert (=> b!647987 (=> res!419899 e!371630)))

(assert (=> b!647987 (= res!419899 (= (h!13577 Nil!12533) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!647988 () Bool)

(assert (=> b!647988 (= e!371630 (contains!3159 (t!18772 Nil!12533) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!91677 res!419900) b!647987))

(assert (= (and b!647987 (not res!419899)) b!647988))

(assert (=> d!91677 m!621423))

(declare-fun m!621467 () Bool)

(assert (=> d!91677 m!621467))

(declare-fun m!621469 () Bool)

(assert (=> b!647988 m!621469))

(assert (=> b!647669 d!91677))

(declare-fun b!647989 () Bool)

(declare-fun e!371634 () Bool)

(declare-fun call!33716 () Bool)

(assert (=> b!647989 (= e!371634 call!33716)))

(declare-fun b!647990 () Bool)

(assert (=> b!647990 (= e!371634 call!33716)))

(declare-fun d!91679 () Bool)

(declare-fun res!419901 () Bool)

(declare-fun e!371633 () Bool)

(assert (=> d!91679 (=> res!419901 e!371633)))

(assert (=> d!91679 (= res!419901 (bvsge #b00000000000000000000000000000000 (size!18806 a!2986)))))

(assert (=> d!91679 (= (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12533) e!371633)))

(declare-fun bm!33713 () Bool)

(declare-fun c!74411 () Bool)

(assert (=> bm!33713 (= call!33716 (arrayNoDuplicates!0 a!2986 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!74411 (Cons!12532 (select (arr!18442 a!2986) #b00000000000000000000000000000000) Nil!12533) Nil!12533)))))

(declare-fun b!647991 () Bool)

(declare-fun e!371632 () Bool)

(assert (=> b!647991 (= e!371633 e!371632)))

(declare-fun res!419903 () Bool)

(assert (=> b!647991 (=> (not res!419903) (not e!371632))))

(declare-fun e!371635 () Bool)

(assert (=> b!647991 (= res!419903 (not e!371635))))

(declare-fun res!419902 () Bool)

(assert (=> b!647991 (=> (not res!419902) (not e!371635))))

(assert (=> b!647991 (= res!419902 (validKeyInArray!0 (select (arr!18442 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!647992 () Bool)

(assert (=> b!647992 (= e!371635 (contains!3159 Nil!12533 (select (arr!18442 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!647993 () Bool)

(assert (=> b!647993 (= e!371632 e!371634)))

(assert (=> b!647993 (= c!74411 (validKeyInArray!0 (select (arr!18442 a!2986) #b00000000000000000000000000000000)))))

(assert (= (and d!91679 (not res!419901)) b!647991))

(assert (= (and b!647991 res!419902) b!647992))

(assert (= (and b!647991 res!419903) b!647993))

(assert (= (and b!647993 c!74411) b!647989))

(assert (= (and b!647993 (not c!74411)) b!647990))

(assert (= (or b!647989 b!647990) bm!33713))

(assert (=> bm!33713 m!621453))

(declare-fun m!621471 () Bool)

(assert (=> bm!33713 m!621471))

(assert (=> b!647991 m!621453))

(assert (=> b!647991 m!621453))

(assert (=> b!647991 m!621455))

(assert (=> b!647992 m!621453))

(assert (=> b!647992 m!621453))

(declare-fun m!621473 () Bool)

(assert (=> b!647992 m!621473))

(assert (=> b!647993 m!621453))

(assert (=> b!647993 m!621453))

(assert (=> b!647993 m!621455))

(assert (=> b!647659 d!91679))

(check-sat (not bm!33705) (not b!647992) (not b!647914) (not bm!33704) (not d!91637) (not b!647988) (not b!647869) (not b!647769) (not d!91657) (not d!91661) (not b!647763) (not b!647870) (not b!647871) (not b!647965) (not bm!33712) (not d!91631) (not b!647934) (not b!647777) (not b!647839) (not b!647935) (not b!647967) (not bm!33713) (not d!91585) (not b!647986) (not b!647982) (not b!647875) (not b!647991) (not d!91593) (not d!91583) (not b!647778) (not b!647993) (not b!647874) (not d!91579) (not b!647901) (not d!91677) (not b!647981) (not b!647830) (not b!647963) (not d!91613) (not d!91645) (not d!91581) (not d!91623) (not d!91577) (not b!647876) (not d!91617) (not b!647905) (not b!647789))
(check-sat)
