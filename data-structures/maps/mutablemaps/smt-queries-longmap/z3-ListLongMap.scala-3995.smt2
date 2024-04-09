; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!54170 () Bool)

(assert start!54170)

(declare-fun b!591522 () Bool)

(declare-fun res!378623 () Bool)

(declare-fun e!337766 () Bool)

(assert (=> b!591522 (=> (not res!378623) (not e!337766))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!591522 (= res!378623 (validKeyInArray!0 k0!1786))))

(declare-fun e!337767 () Bool)

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((array!36863 0))(
  ( (array!36864 (arr!17698 (Array (_ BitVec 32) (_ BitVec 64))) (size!18062 (_ BitVec 32))) )
))
(declare-fun lt!268490 () array!36863)

(declare-fun b!591523 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun a!2986 () array!36863)

(declare-fun arrayContainsKey!0 (array!36863 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!591523 (= e!337767 (arrayContainsKey!0 lt!268490 (select (arr!17698 a!2986) j!136) index!984))))

(declare-fun b!591524 () Bool)

(declare-fun e!337765 () Bool)

(declare-fun e!337763 () Bool)

(assert (=> b!591524 (= e!337765 e!337763)))

(declare-fun res!378614 () Bool)

(assert (=> b!591524 (=> (not res!378614) (not e!337763))))

(declare-datatypes ((SeekEntryResult!6145 0))(
  ( (MissingZero!6145 (index!26815 (_ BitVec 32))) (Found!6145 (index!26816 (_ BitVec 32))) (Intermediate!6145 (undefined!6957 Bool) (index!26817 (_ BitVec 32)) (x!55634 (_ BitVec 32))) (Undefined!6145) (MissingVacant!6145 (index!26818 (_ BitVec 32))) )
))
(declare-fun lt!268483 () SeekEntryResult!6145)

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!591524 (= res!378614 (and (= lt!268483 (Found!6145 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17698 a!2986) index!984) (select (arr!17698 a!2986) j!136))) (not (= (select (arr!17698 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36863 (_ BitVec 32)) SeekEntryResult!6145)

(assert (=> b!591524 (= lt!268483 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17698 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!591525 () Bool)

(declare-fun e!337770 () Bool)

(assert (=> b!591525 (= e!337770 true)))

(declare-fun e!337761 () Bool)

(assert (=> b!591525 e!337761))

(declare-fun res!378616 () Bool)

(assert (=> b!591525 (=> (not res!378616) (not e!337761))))

(declare-fun lt!268487 () (_ BitVec 64))

(assert (=> b!591525 (= res!378616 (= lt!268487 (select (arr!17698 a!2986) j!136)))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!591525 (= lt!268487 (select (store (arr!17698 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!591526 () Bool)

(declare-fun res!378608 () Bool)

(declare-fun e!337771 () Bool)

(assert (=> b!591526 (=> (not res!378608) (not e!337771))))

(declare-datatypes ((List!11792 0))(
  ( (Nil!11789) (Cons!11788 (h!12833 (_ BitVec 64)) (t!18028 List!11792)) )
))
(declare-fun arrayNoDuplicates!0 (array!36863 (_ BitVec 32) List!11792) Bool)

(assert (=> b!591526 (= res!378608 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11789))))

(declare-fun b!591527 () Bool)

(declare-fun res!378621 () Bool)

(assert (=> b!591527 (=> (not res!378621) (not e!337766))))

(assert (=> b!591527 (= res!378621 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!591528 () Bool)

(declare-fun res!378617 () Bool)

(assert (=> b!591528 (=> (not res!378617) (not e!337766))))

(assert (=> b!591528 (= res!378617 (validKeyInArray!0 (select (arr!17698 a!2986) j!136)))))

(declare-fun b!591529 () Bool)

(declare-fun e!337762 () Bool)

(assert (=> b!591529 (= e!337761 e!337762)))

(declare-fun res!378612 () Bool)

(assert (=> b!591529 (=> res!378612 e!337762)))

(declare-fun lt!268488 () (_ BitVec 64))

(assert (=> b!591529 (= res!378612 (or (not (= (select (arr!17698 a!2986) j!136) lt!268488)) (not (= (select (arr!17698 a!2986) j!136) lt!268487)) (bvsge j!136 index!984)))))

(declare-fun b!591530 () Bool)

(declare-datatypes ((Unit!18524 0))(
  ( (Unit!18525) )
))
(declare-fun e!337768 () Unit!18524)

(declare-fun Unit!18526 () Unit!18524)

(assert (=> b!591530 (= e!337768 Unit!18526)))

(declare-fun b!591531 () Bool)

(assert (=> b!591531 (= e!337766 e!337771)))

(declare-fun res!378620 () Bool)

(assert (=> b!591531 (=> (not res!378620) (not e!337771))))

(declare-fun lt!268489 () SeekEntryResult!6145)

(assert (=> b!591531 (= res!378620 (or (= lt!268489 (MissingZero!6145 i!1108)) (= lt!268489 (MissingVacant!6145 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36863 (_ BitVec 32)) SeekEntryResult!6145)

(assert (=> b!591531 (= lt!268489 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun res!378609 () Bool)

(assert (=> start!54170 (=> (not res!378609) (not e!337766))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54170 (= res!378609 (validMask!0 mask!3053))))

(assert (=> start!54170 e!337766))

(assert (=> start!54170 true))

(declare-fun array_inv!13472 (array!36863) Bool)

(assert (=> start!54170 (array_inv!13472 a!2986)))

(declare-fun b!591532 () Bool)

(declare-fun res!378619 () Bool)

(assert (=> b!591532 (=> (not res!378619) (not e!337771))))

(assert (=> b!591532 (= res!378619 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17698 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!591533 () Bool)

(declare-fun e!337769 () Bool)

(declare-fun lt!268484 () SeekEntryResult!6145)

(assert (=> b!591533 (= e!337769 (= lt!268483 lt!268484))))

(declare-fun b!591534 () Bool)

(assert (=> b!591534 (= e!337762 e!337767)))

(declare-fun res!378610 () Bool)

(assert (=> b!591534 (=> (not res!378610) (not e!337767))))

(assert (=> b!591534 (= res!378610 (arrayContainsKey!0 lt!268490 (select (arr!17698 a!2986) j!136) j!136))))

(declare-fun b!591535 () Bool)

(assert (=> b!591535 (= e!337771 e!337765)))

(declare-fun res!378611 () Bool)

(assert (=> b!591535 (=> (not res!378611) (not e!337765))))

(assert (=> b!591535 (= res!378611 (= (select (store (arr!17698 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!591535 (= lt!268490 (array!36864 (store (arr!17698 a!2986) i!1108 k0!1786) (size!18062 a!2986)))))

(declare-fun b!591536 () Bool)

(declare-fun res!378613 () Bool)

(assert (=> b!591536 (=> (not res!378613) (not e!337771))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36863 (_ BitVec 32)) Bool)

(assert (=> b!591536 (= res!378613 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!591537 () Bool)

(declare-fun res!378615 () Bool)

(assert (=> b!591537 (=> (not res!378615) (not e!337766))))

(assert (=> b!591537 (= res!378615 (and (= (size!18062 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18062 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18062 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!591538 () Bool)

(declare-fun Unit!18527 () Unit!18524)

(assert (=> b!591538 (= e!337768 Unit!18527)))

(assert (=> b!591538 false))

(declare-fun b!591539 () Bool)

(assert (=> b!591539 (= e!337763 (not e!337770))))

(declare-fun res!378618 () Bool)

(assert (=> b!591539 (=> res!378618 e!337770)))

(declare-fun lt!268485 () SeekEntryResult!6145)

(assert (=> b!591539 (= res!378618 (not (= lt!268485 (Found!6145 index!984))))))

(declare-fun lt!268491 () Unit!18524)

(assert (=> b!591539 (= lt!268491 e!337768)))

(declare-fun c!66824 () Bool)

(assert (=> b!591539 (= c!66824 (= lt!268485 Undefined!6145))))

(assert (=> b!591539 (= lt!268485 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!268488 lt!268490 mask!3053))))

(assert (=> b!591539 e!337769))

(declare-fun res!378622 () Bool)

(assert (=> b!591539 (=> (not res!378622) (not e!337769))))

(declare-fun lt!268482 () (_ BitVec 32))

(assert (=> b!591539 (= res!378622 (= lt!268484 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!268482 vacantSpotIndex!68 lt!268488 lt!268490 mask!3053)))))

(assert (=> b!591539 (= lt!268484 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!268482 vacantSpotIndex!68 (select (arr!17698 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!591539 (= lt!268488 (select (store (arr!17698 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!268486 () Unit!18524)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36863 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18524)

(assert (=> b!591539 (= lt!268486 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!268482 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!591539 (= lt!268482 (nextIndex!0 index!984 x!910 mask!3053))))

(assert (= (and start!54170 res!378609) b!591537))

(assert (= (and b!591537 res!378615) b!591528))

(assert (= (and b!591528 res!378617) b!591522))

(assert (= (and b!591522 res!378623) b!591527))

(assert (= (and b!591527 res!378621) b!591531))

(assert (= (and b!591531 res!378620) b!591536))

(assert (= (and b!591536 res!378613) b!591526))

(assert (= (and b!591526 res!378608) b!591532))

(assert (= (and b!591532 res!378619) b!591535))

(assert (= (and b!591535 res!378611) b!591524))

(assert (= (and b!591524 res!378614) b!591539))

(assert (= (and b!591539 res!378622) b!591533))

(assert (= (and b!591539 c!66824) b!591538))

(assert (= (and b!591539 (not c!66824)) b!591530))

(assert (= (and b!591539 (not res!378618)) b!591525))

(assert (= (and b!591525 res!378616) b!591529))

(assert (= (and b!591529 (not res!378612)) b!591534))

(assert (= (and b!591534 res!378610) b!591523))

(declare-fun m!569761 () Bool)

(assert (=> b!591522 m!569761))

(declare-fun m!569763 () Bool)

(assert (=> b!591523 m!569763))

(assert (=> b!591523 m!569763))

(declare-fun m!569765 () Bool)

(assert (=> b!591523 m!569765))

(declare-fun m!569767 () Bool)

(assert (=> b!591535 m!569767))

(declare-fun m!569769 () Bool)

(assert (=> b!591535 m!569769))

(declare-fun m!569771 () Bool)

(assert (=> b!591524 m!569771))

(assert (=> b!591524 m!569763))

(assert (=> b!591524 m!569763))

(declare-fun m!569773 () Bool)

(assert (=> b!591524 m!569773))

(declare-fun m!569775 () Bool)

(assert (=> b!591536 m!569775))

(declare-fun m!569777 () Bool)

(assert (=> b!591526 m!569777))

(declare-fun m!569779 () Bool)

(assert (=> b!591527 m!569779))

(assert (=> b!591534 m!569763))

(assert (=> b!591534 m!569763))

(declare-fun m!569781 () Bool)

(assert (=> b!591534 m!569781))

(assert (=> b!591525 m!569763))

(assert (=> b!591525 m!569767))

(declare-fun m!569783 () Bool)

(assert (=> b!591525 m!569783))

(assert (=> b!591528 m!569763))

(assert (=> b!591528 m!569763))

(declare-fun m!569785 () Bool)

(assert (=> b!591528 m!569785))

(declare-fun m!569787 () Bool)

(assert (=> b!591532 m!569787))

(assert (=> b!591529 m!569763))

(declare-fun m!569789 () Bool)

(assert (=> start!54170 m!569789))

(declare-fun m!569791 () Bool)

(assert (=> start!54170 m!569791))

(declare-fun m!569793 () Bool)

(assert (=> b!591531 m!569793))

(declare-fun m!569795 () Bool)

(assert (=> b!591539 m!569795))

(declare-fun m!569797 () Bool)

(assert (=> b!591539 m!569797))

(assert (=> b!591539 m!569763))

(declare-fun m!569799 () Bool)

(assert (=> b!591539 m!569799))

(assert (=> b!591539 m!569763))

(assert (=> b!591539 m!569767))

(declare-fun m!569801 () Bool)

(assert (=> b!591539 m!569801))

(declare-fun m!569803 () Bool)

(assert (=> b!591539 m!569803))

(declare-fun m!569805 () Bool)

(assert (=> b!591539 m!569805))

(check-sat (not b!591524) (not b!591534) (not start!54170) (not b!591539) (not b!591536) (not b!591526) (not b!591527) (not b!591528) (not b!591531) (not b!591522) (not b!591523))
(check-sat)
