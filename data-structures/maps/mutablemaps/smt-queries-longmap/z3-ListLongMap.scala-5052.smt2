; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68844 () Bool)

(assert start!68844)

(declare-fun res!546803 () Bool)

(declare-fun e!444571 () Bool)

(assert (=> start!68844 (=> (not res!546803) (not e!444571))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68844 (= res!546803 (validMask!0 mask!3266))))

(assert (=> start!68844 e!444571))

(assert (=> start!68844 true))

(declare-datatypes ((array!43585 0))(
  ( (array!43586 (arr!20869 (Array (_ BitVec 32) (_ BitVec 64))) (size!21290 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43585)

(declare-fun array_inv!16643 (array!43585) Bool)

(assert (=> start!68844 (array_inv!16643 a!3170)))

(declare-fun b!802112 () Bool)

(declare-fun res!546809 () Bool)

(assert (=> b!802112 (=> (not res!546809) (not e!444571))))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!802112 (= res!546809 (validKeyInArray!0 (select (arr!20869 a!3170) j!153)))))

(declare-fun b!802113 () Bool)

(declare-fun e!444574 () Bool)

(assert (=> b!802113 (= e!444571 e!444574)))

(declare-fun res!546807 () Bool)

(assert (=> b!802113 (=> (not res!546807) (not e!444574))))

(declare-datatypes ((SeekEntryResult!8467 0))(
  ( (MissingZero!8467 (index!36235 (_ BitVec 32))) (Found!8467 (index!36236 (_ BitVec 32))) (Intermediate!8467 (undefined!9279 Bool) (index!36237 (_ BitVec 32)) (x!67114 (_ BitVec 32))) (Undefined!8467) (MissingVacant!8467 (index!36238 (_ BitVec 32))) )
))
(declare-fun lt!358699 () SeekEntryResult!8467)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!802113 (= res!546807 (or (= lt!358699 (MissingZero!8467 i!1163)) (= lt!358699 (MissingVacant!8467 i!1163))))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43585 (_ BitVec 32)) SeekEntryResult!8467)

(assert (=> b!802113 (= lt!358699 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!802114 () Bool)

(declare-fun res!546804 () Bool)

(assert (=> b!802114 (=> (not res!546804) (not e!444571))))

(assert (=> b!802114 (= res!546804 (validKeyInArray!0 k0!2044))))

(declare-fun b!802115 () Bool)

(declare-fun res!546806 () Bool)

(assert (=> b!802115 (=> (not res!546806) (not e!444571))))

(assert (=> b!802115 (= res!546806 (and (= (size!21290 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21290 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21290 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!802116 () Bool)

(declare-fun res!546811 () Bool)

(assert (=> b!802116 (=> (not res!546811) (not e!444574))))

(declare-datatypes ((List!14885 0))(
  ( (Nil!14882) (Cons!14881 (h!16010 (_ BitVec 64)) (t!21208 List!14885)) )
))
(declare-fun arrayNoDuplicates!0 (array!43585 (_ BitVec 32) List!14885) Bool)

(assert (=> b!802116 (= res!546811 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14882))))

(declare-fun b!802117 () Bool)

(declare-fun res!546808 () Bool)

(assert (=> b!802117 (=> (not res!546808) (not e!444574))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!802117 (= res!546808 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21290 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20869 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21290 a!3170)) (= (select (arr!20869 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!802118 () Bool)

(declare-fun res!546805 () Bool)

(assert (=> b!802118 (=> (not res!546805) (not e!444574))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43585 (_ BitVec 32)) Bool)

(assert (=> b!802118 (= res!546805 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!802119 () Bool)

(declare-fun e!444573 () Bool)

(assert (=> b!802119 (= e!444573 (not (or (bvslt mask!3266 #b00000000000000000000000000000000) (bvsge index!1236 (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge vacantAfter!23 (bvadd #b00000000000000000000000000000001 mask!3266)) (= (select (store (arr!20869 a!3170) i!1163 k0!2044) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!358702 () array!43585)

(declare-fun lt!358696 () (_ BitVec 32))

(declare-fun lt!358697 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43585 (_ BitVec 32)) SeekEntryResult!8467)

(assert (=> b!802119 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!358696 vacantAfter!23 lt!358697 lt!358702 mask!3266) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!358696 vacantBefore!23 (select (arr!20869 a!3170) j!153) a!3170 mask!3266))))

(declare-datatypes ((Unit!27476 0))(
  ( (Unit!27477) )
))
(declare-fun lt!358700 () Unit!27476)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!43585 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27476)

(assert (=> b!802119 (= lt!358700 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3170 i!1163 k0!2044 j!153 lt!358696 (bvadd #b00000000000000000000000000000001 x!1077) vacantBefore!23 vacantAfter!23 mask!3266))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!802119 (= lt!358696 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!802120 () Bool)

(declare-fun res!546810 () Bool)

(assert (=> b!802120 (=> (not res!546810) (not e!444571))))

(declare-fun arrayContainsKey!0 (array!43585 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!802120 (= res!546810 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!802121 () Bool)

(declare-fun e!444572 () Bool)

(assert (=> b!802121 (= e!444574 e!444572)))

(declare-fun res!546801 () Bool)

(assert (=> b!802121 (=> (not res!546801) (not e!444572))))

(assert (=> b!802121 (= res!546801 (= (seekEntryOrOpen!0 lt!358697 lt!358702 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!358697 lt!358702 mask!3266)))))

(assert (=> b!802121 (= lt!358697 (select (store (arr!20869 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!802121 (= lt!358702 (array!43586 (store (arr!20869 a!3170) i!1163 k0!2044) (size!21290 a!3170)))))

(declare-fun b!802122 () Bool)

(assert (=> b!802122 (= e!444572 e!444573)))

(declare-fun res!546802 () Bool)

(assert (=> b!802122 (=> (not res!546802) (not e!444573))))

(declare-fun lt!358701 () SeekEntryResult!8467)

(declare-fun lt!358698 () SeekEntryResult!8467)

(assert (=> b!802122 (= res!546802 (and (= lt!358698 lt!358701) (= lt!358701 (Found!8467 j!153)) (not (= (select (arr!20869 a!3170) index!1236) (select (arr!20869 a!3170) j!153)))))))

(assert (=> b!802122 (= lt!358701 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20869 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!802122 (= lt!358698 (seekEntryOrOpen!0 (select (arr!20869 a!3170) j!153) a!3170 mask!3266))))

(assert (= (and start!68844 res!546803) b!802115))

(assert (= (and b!802115 res!546806) b!802112))

(assert (= (and b!802112 res!546809) b!802114))

(assert (= (and b!802114 res!546804) b!802120))

(assert (= (and b!802120 res!546810) b!802113))

(assert (= (and b!802113 res!546807) b!802118))

(assert (= (and b!802118 res!546805) b!802116))

(assert (= (and b!802116 res!546811) b!802117))

(assert (= (and b!802117 res!546808) b!802121))

(assert (= (and b!802121 res!546801) b!802122))

(assert (= (and b!802122 res!546802) b!802119))

(declare-fun m!743603 () Bool)

(assert (=> b!802113 m!743603))

(declare-fun m!743605 () Bool)

(assert (=> b!802117 m!743605))

(declare-fun m!743607 () Bool)

(assert (=> b!802117 m!743607))

(declare-fun m!743609 () Bool)

(assert (=> b!802114 m!743609))

(declare-fun m!743611 () Bool)

(assert (=> b!802122 m!743611))

(declare-fun m!743613 () Bool)

(assert (=> b!802122 m!743613))

(assert (=> b!802122 m!743613))

(declare-fun m!743615 () Bool)

(assert (=> b!802122 m!743615))

(assert (=> b!802122 m!743613))

(declare-fun m!743617 () Bool)

(assert (=> b!802122 m!743617))

(assert (=> b!802119 m!743613))

(declare-fun m!743619 () Bool)

(assert (=> b!802119 m!743619))

(declare-fun m!743621 () Bool)

(assert (=> b!802119 m!743621))

(assert (=> b!802119 m!743613))

(declare-fun m!743623 () Bool)

(assert (=> b!802119 m!743623))

(declare-fun m!743625 () Bool)

(assert (=> b!802119 m!743625))

(declare-fun m!743627 () Bool)

(assert (=> b!802119 m!743627))

(declare-fun m!743629 () Bool)

(assert (=> b!802119 m!743629))

(declare-fun m!743631 () Bool)

(assert (=> b!802118 m!743631))

(declare-fun m!743633 () Bool)

(assert (=> b!802116 m!743633))

(assert (=> b!802112 m!743613))

(assert (=> b!802112 m!743613))

(declare-fun m!743635 () Bool)

(assert (=> b!802112 m!743635))

(declare-fun m!743637 () Bool)

(assert (=> b!802120 m!743637))

(declare-fun m!743639 () Bool)

(assert (=> b!802121 m!743639))

(declare-fun m!743641 () Bool)

(assert (=> b!802121 m!743641))

(assert (=> b!802121 m!743629))

(declare-fun m!743643 () Bool)

(assert (=> b!802121 m!743643))

(declare-fun m!743645 () Bool)

(assert (=> start!68844 m!743645))

(declare-fun m!743647 () Bool)

(assert (=> start!68844 m!743647))

(check-sat (not b!802120) (not b!802121) (not b!802119) (not b!802113) (not b!802122) (not b!802112) (not b!802118) (not b!802116) (not start!68844) (not b!802114))
(check-sat)
