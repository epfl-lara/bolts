; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68662 () Bool)

(assert start!68662)

(declare-fun res!543375 () Bool)

(declare-fun e!442993 () Bool)

(assert (=> start!68662 (=> (not res!543375) (not e!442993))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68662 (= res!543375 (validMask!0 mask!3266))))

(assert (=> start!68662 e!442993))

(assert (=> start!68662 true))

(declare-datatypes ((array!43403 0))(
  ( (array!43404 (arr!20778 (Array (_ BitVec 32) (_ BitVec 64))) (size!21199 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43403)

(declare-fun array_inv!16552 (array!43403) Bool)

(assert (=> start!68662 (array_inv!16552 a!3170)))

(declare-fun b!798681 () Bool)

(declare-fun res!543372 () Bool)

(assert (=> b!798681 (=> (not res!543372) (not e!442993))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!798681 (= res!543372 (and (= (size!21199 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21199 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21199 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!798682 () Bool)

(declare-fun res!543382 () Bool)

(assert (=> b!798682 (=> (not res!543382) (not e!442993))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!798682 (= res!543382 (validKeyInArray!0 k!2044))))

(declare-fun b!798683 () Bool)

(declare-fun res!543380 () Bool)

(declare-fun e!442994 () Bool)

(assert (=> b!798683 (=> (not res!543380) (not e!442994))))

(declare-fun lt!356578 () (_ BitVec 32))

(declare-fun lt!356571 () array!43403)

(declare-datatypes ((SeekEntryResult!8376 0))(
  ( (MissingZero!8376 (index!35871 (_ BitVec 32))) (Found!8376 (index!35872 (_ BitVec 32))) (Intermediate!8376 (undefined!9188 Bool) (index!35873 (_ BitVec 32)) (x!66783 (_ BitVec 32))) (Undefined!8376) (MissingVacant!8376 (index!35874 (_ BitVec 32))) )
))
(declare-fun lt!356577 () SeekEntryResult!8376)

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!356576 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43403 (_ BitVec 32)) SeekEntryResult!8376)

(assert (=> b!798683 (= res!543380 (= lt!356577 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!356578 vacantAfter!23 lt!356576 lt!356571 mask!3266)))))

(declare-fun b!798684 () Bool)

(declare-fun e!442996 () Bool)

(declare-fun e!442992 () Bool)

(assert (=> b!798684 (= e!442996 e!442992)))

(declare-fun res!543377 () Bool)

(assert (=> b!798684 (=> (not res!543377) (not e!442992))))

(declare-fun lt!356572 () SeekEntryResult!8376)

(declare-fun lt!356573 () SeekEntryResult!8376)

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!798684 (= res!543377 (and (= lt!356572 lt!356573) (= lt!356573 (Found!8376 j!153)) (not (= (select (arr!20778 a!3170) index!1236) (select (arr!20778 a!3170) j!153)))))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!798684 (= lt!356573 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20778 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43403 (_ BitVec 32)) SeekEntryResult!8376)

(assert (=> b!798684 (= lt!356572 (seekEntryOrOpen!0 (select (arr!20778 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!798685 () Bool)

(assert (=> b!798685 (= e!442992 e!442994)))

(declare-fun res!543373 () Bool)

(assert (=> b!798685 (=> (not res!543373) (not e!442994))))

(assert (=> b!798685 (= res!543373 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1077) #b01111111111111111111111111111110) (bvsge (bvadd #b00000000000000000000000000000001 x!1077) #b00000000000000000000000000000000) (bvsge lt!356578 #b00000000000000000000000000000000) (bvslt lt!356578 (size!21199 a!3170))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!798685 (= lt!356578 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!798686 () Bool)

(assert (=> b!798686 (= e!442994 false)))

(declare-fun lt!356575 () SeekEntryResult!8376)

(assert (=> b!798686 (= lt!356575 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!356578 vacantBefore!23 (select (arr!20778 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!798687 () Bool)

(declare-fun res!543371 () Bool)

(assert (=> b!798687 (=> (not res!543371) (not e!442993))))

(declare-fun arrayContainsKey!0 (array!43403 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!798687 (= res!543371 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!798688 () Bool)

(declare-fun res!543378 () Bool)

(declare-fun e!442995 () Bool)

(assert (=> b!798688 (=> (not res!543378) (not e!442995))))

(declare-datatypes ((List!14794 0))(
  ( (Nil!14791) (Cons!14790 (h!15919 (_ BitVec 64)) (t!21117 List!14794)) )
))
(declare-fun arrayNoDuplicates!0 (array!43403 (_ BitVec 32) List!14794) Bool)

(assert (=> b!798688 (= res!543378 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14791))))

(declare-fun b!798689 () Bool)

(declare-fun res!543381 () Bool)

(assert (=> b!798689 (=> (not res!543381) (not e!442995))))

(assert (=> b!798689 (= res!543381 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21199 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20778 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21199 a!3170)) (= (select (arr!20778 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!798690 () Bool)

(declare-fun res!543374 () Bool)

(assert (=> b!798690 (=> (not res!543374) (not e!442993))))

(assert (=> b!798690 (= res!543374 (validKeyInArray!0 (select (arr!20778 a!3170) j!153)))))

(declare-fun b!798691 () Bool)

(declare-fun res!543370 () Bool)

(assert (=> b!798691 (=> (not res!543370) (not e!442995))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43403 (_ BitVec 32)) Bool)

(assert (=> b!798691 (= res!543370 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!798692 () Bool)

(assert (=> b!798692 (= e!442995 e!442996)))

(declare-fun res!543376 () Bool)

(assert (=> b!798692 (=> (not res!543376) (not e!442996))))

(assert (=> b!798692 (= res!543376 (= lt!356577 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!356576 lt!356571 mask!3266)))))

(assert (=> b!798692 (= lt!356577 (seekEntryOrOpen!0 lt!356576 lt!356571 mask!3266))))

(assert (=> b!798692 (= lt!356576 (select (store (arr!20778 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!798692 (= lt!356571 (array!43404 (store (arr!20778 a!3170) i!1163 k!2044) (size!21199 a!3170)))))

(declare-fun b!798693 () Bool)

(assert (=> b!798693 (= e!442993 e!442995)))

(declare-fun res!543379 () Bool)

(assert (=> b!798693 (=> (not res!543379) (not e!442995))))

(declare-fun lt!356574 () SeekEntryResult!8376)

(assert (=> b!798693 (= res!543379 (or (= lt!356574 (MissingZero!8376 i!1163)) (= lt!356574 (MissingVacant!8376 i!1163))))))

(assert (=> b!798693 (= lt!356574 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(assert (= (and start!68662 res!543375) b!798681))

(assert (= (and b!798681 res!543372) b!798690))

(assert (= (and b!798690 res!543374) b!798682))

(assert (= (and b!798682 res!543382) b!798687))

(assert (= (and b!798687 res!543371) b!798693))

(assert (= (and b!798693 res!543379) b!798691))

(assert (= (and b!798691 res!543370) b!798688))

(assert (= (and b!798688 res!543378) b!798689))

(assert (= (and b!798689 res!543381) b!798692))

(assert (= (and b!798692 res!543376) b!798684))

(assert (= (and b!798684 res!543377) b!798685))

(assert (= (and b!798685 res!543373) b!798683))

(assert (= (and b!798683 res!543380) b!798686))

(declare-fun m!739741 () Bool)

(assert (=> b!798691 m!739741))

(declare-fun m!739743 () Bool)

(assert (=> b!798692 m!739743))

(declare-fun m!739745 () Bool)

(assert (=> b!798692 m!739745))

(declare-fun m!739747 () Bool)

(assert (=> b!798692 m!739747))

(declare-fun m!739749 () Bool)

(assert (=> b!798692 m!739749))

(declare-fun m!739751 () Bool)

(assert (=> b!798687 m!739751))

(declare-fun m!739753 () Bool)

(assert (=> b!798688 m!739753))

(declare-fun m!739755 () Bool)

(assert (=> b!798683 m!739755))

(declare-fun m!739757 () Bool)

(assert (=> b!798689 m!739757))

(declare-fun m!739759 () Bool)

(assert (=> b!798689 m!739759))

(declare-fun m!739761 () Bool)

(assert (=> b!798686 m!739761))

(assert (=> b!798686 m!739761))

(declare-fun m!739763 () Bool)

(assert (=> b!798686 m!739763))

(declare-fun m!739765 () Bool)

(assert (=> b!798682 m!739765))

(assert (=> b!798690 m!739761))

(assert (=> b!798690 m!739761))

(declare-fun m!739767 () Bool)

(assert (=> b!798690 m!739767))

(declare-fun m!739769 () Bool)

(assert (=> b!798685 m!739769))

(declare-fun m!739771 () Bool)

(assert (=> start!68662 m!739771))

(declare-fun m!739773 () Bool)

(assert (=> start!68662 m!739773))

(declare-fun m!739775 () Bool)

(assert (=> b!798693 m!739775))

(declare-fun m!739777 () Bool)

(assert (=> b!798684 m!739777))

(assert (=> b!798684 m!739761))

(assert (=> b!798684 m!739761))

(declare-fun m!739779 () Bool)

(assert (=> b!798684 m!739779))

(assert (=> b!798684 m!739761))

(declare-fun m!739781 () Bool)

(assert (=> b!798684 m!739781))

(push 1)

