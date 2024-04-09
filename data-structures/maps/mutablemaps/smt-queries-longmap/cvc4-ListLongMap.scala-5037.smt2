; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68756 () Bool)

(assert start!68756)

(declare-fun b!800514 () Bool)

(declare-fun res!545211 () Bool)

(declare-fun e!443837 () Bool)

(assert (=> b!800514 (=> (not res!545211) (not e!443837))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-datatypes ((array!43497 0))(
  ( (array!43498 (arr!20825 (Array (_ BitVec 32) (_ BitVec 64))) (size!21246 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43497)

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!800514 (= res!545211 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21246 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20825 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21246 a!3170)) (= (select (arr!20825 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!800515 () Bool)

(declare-fun res!545206 () Bool)

(declare-fun e!443842 () Bool)

(assert (=> b!800515 (=> (not res!545206) (not e!443842))))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(assert (=> b!800515 (= res!545206 (and (= (size!21246 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21246 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21246 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!800516 () Bool)

(declare-fun res!545208 () Bool)

(assert (=> b!800516 (=> (not res!545208) (not e!443842))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43497 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!800516 (= res!545208 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!800517 () Bool)

(declare-fun res!545212 () Bool)

(assert (=> b!800517 (=> (not res!545212) (not e!443837))))

(declare-datatypes ((List!14841 0))(
  ( (Nil!14838) (Cons!14837 (h!15966 (_ BitVec 64)) (t!21164 List!14841)) )
))
(declare-fun arrayNoDuplicates!0 (array!43497 (_ BitVec 32) List!14841) Bool)

(assert (=> b!800517 (= res!545212 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14838))))

(declare-fun b!800518 () Bool)

(declare-fun res!545207 () Bool)

(assert (=> b!800518 (=> (not res!545207) (not e!443842))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!800518 (= res!545207 (validKeyInArray!0 (select (arr!20825 a!3170) j!153)))))

(declare-fun b!800519 () Bool)

(declare-fun e!443841 () Bool)

(declare-fun e!443838 () Bool)

(assert (=> b!800519 (= e!443841 e!443838)))

(declare-fun res!545203 () Bool)

(assert (=> b!800519 (=> (not res!545203) (not e!443838))))

(declare-fun lt!357702 () (_ BitVec 32))

(assert (=> b!800519 (= res!545203 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1077) #b01111111111111111111111111111110) (bvsge (bvadd #b00000000000000000000000000000001 x!1077) #b00000000000000000000000000000000) (bvsge lt!357702 #b00000000000000000000000000000000) (bvslt lt!357702 (size!21246 a!3170))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!800519 (= lt!357702 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun res!545209 () Bool)

(assert (=> start!68756 (=> (not res!545209) (not e!443842))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68756 (= res!545209 (validMask!0 mask!3266))))

(assert (=> start!68756 e!443842))

(assert (=> start!68756 true))

(declare-fun array_inv!16599 (array!43497) Bool)

(assert (=> start!68756 (array_inv!16599 a!3170)))

(declare-fun b!800520 () Bool)

(declare-fun res!545204 () Bool)

(assert (=> b!800520 (=> (not res!545204) (not e!443838))))

(declare-fun lt!357704 () array!43497)

(declare-fun lt!357700 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!8423 0))(
  ( (MissingZero!8423 (index!36059 (_ BitVec 32))) (Found!8423 (index!36060 (_ BitVec 32))) (Intermediate!8423 (undefined!9235 Bool) (index!36061 (_ BitVec 32)) (x!66950 (_ BitVec 32))) (Undefined!8423) (MissingVacant!8423 (index!36062 (_ BitVec 32))) )
))
(declare-fun lt!357705 () SeekEntryResult!8423)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43497 (_ BitVec 32)) SeekEntryResult!8423)

(assert (=> b!800520 (= res!545204 (= lt!357705 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!357702 vacantAfter!23 lt!357700 lt!357704 mask!3266)))))

(declare-fun b!800521 () Bool)

(declare-fun res!545213 () Bool)

(assert (=> b!800521 (=> (not res!545213) (not e!443837))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43497 (_ BitVec 32)) Bool)

(assert (=> b!800521 (= res!545213 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!800522 () Bool)

(assert (=> b!800522 (= e!443842 e!443837)))

(declare-fun res!545210 () Bool)

(assert (=> b!800522 (=> (not res!545210) (not e!443837))))

(declare-fun lt!357699 () SeekEntryResult!8423)

(assert (=> b!800522 (= res!545210 (or (= lt!357699 (MissingZero!8423 i!1163)) (= lt!357699 (MissingVacant!8423 i!1163))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43497 (_ BitVec 32)) SeekEntryResult!8423)

(assert (=> b!800522 (= lt!357699 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!800523 () Bool)

(declare-fun e!443840 () Bool)

(assert (=> b!800523 (= e!443840 e!443841)))

(declare-fun res!545215 () Bool)

(assert (=> b!800523 (=> (not res!545215) (not e!443841))))

(declare-fun lt!357701 () SeekEntryResult!8423)

(declare-fun lt!357706 () SeekEntryResult!8423)

(assert (=> b!800523 (= res!545215 (and (= lt!357701 lt!357706) (= lt!357706 (Found!8423 j!153)) (not (= (select (arr!20825 a!3170) index!1236) (select (arr!20825 a!3170) j!153)))))))

(assert (=> b!800523 (= lt!357706 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20825 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!800523 (= lt!357701 (seekEntryOrOpen!0 (select (arr!20825 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!800524 () Bool)

(assert (=> b!800524 (= e!443837 e!443840)))

(declare-fun res!545205 () Bool)

(assert (=> b!800524 (=> (not res!545205) (not e!443840))))

(assert (=> b!800524 (= res!545205 (= lt!357705 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!357700 lt!357704 mask!3266)))))

(assert (=> b!800524 (= lt!357705 (seekEntryOrOpen!0 lt!357700 lt!357704 mask!3266))))

(assert (=> b!800524 (= lt!357700 (select (store (arr!20825 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!800524 (= lt!357704 (array!43498 (store (arr!20825 a!3170) i!1163 k!2044) (size!21246 a!3170)))))

(declare-fun b!800525 () Bool)

(assert (=> b!800525 (= e!443838 false)))

(declare-fun lt!357703 () SeekEntryResult!8423)

(assert (=> b!800525 (= lt!357703 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!357702 vacantBefore!23 (select (arr!20825 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!800526 () Bool)

(declare-fun res!545214 () Bool)

(assert (=> b!800526 (=> (not res!545214) (not e!443842))))

(assert (=> b!800526 (= res!545214 (validKeyInArray!0 k!2044))))

(assert (= (and start!68756 res!545209) b!800515))

(assert (= (and b!800515 res!545206) b!800518))

(assert (= (and b!800518 res!545207) b!800526))

(assert (= (and b!800526 res!545214) b!800516))

(assert (= (and b!800516 res!545208) b!800522))

(assert (= (and b!800522 res!545210) b!800521))

(assert (= (and b!800521 res!545213) b!800517))

(assert (= (and b!800517 res!545212) b!800514))

(assert (= (and b!800514 res!545211) b!800524))

(assert (= (and b!800524 res!545205) b!800523))

(assert (= (and b!800523 res!545215) b!800519))

(assert (= (and b!800519 res!545203) b!800520))

(assert (= (and b!800520 res!545204) b!800525))

(declare-fun m!741715 () Bool)

(assert (=> b!800524 m!741715))

(declare-fun m!741717 () Bool)

(assert (=> b!800524 m!741717))

(declare-fun m!741719 () Bool)

(assert (=> b!800524 m!741719))

(declare-fun m!741721 () Bool)

(assert (=> b!800524 m!741721))

(declare-fun m!741723 () Bool)

(assert (=> b!800523 m!741723))

(declare-fun m!741725 () Bool)

(assert (=> b!800523 m!741725))

(assert (=> b!800523 m!741725))

(declare-fun m!741727 () Bool)

(assert (=> b!800523 m!741727))

(assert (=> b!800523 m!741725))

(declare-fun m!741729 () Bool)

(assert (=> b!800523 m!741729))

(declare-fun m!741731 () Bool)

(assert (=> b!800522 m!741731))

(declare-fun m!741733 () Bool)

(assert (=> b!800521 m!741733))

(declare-fun m!741735 () Bool)

(assert (=> b!800517 m!741735))

(declare-fun m!741737 () Bool)

(assert (=> b!800514 m!741737))

(declare-fun m!741739 () Bool)

(assert (=> b!800514 m!741739))

(declare-fun m!741741 () Bool)

(assert (=> start!68756 m!741741))

(declare-fun m!741743 () Bool)

(assert (=> start!68756 m!741743))

(declare-fun m!741745 () Bool)

(assert (=> b!800519 m!741745))

(assert (=> b!800525 m!741725))

(assert (=> b!800525 m!741725))

(declare-fun m!741747 () Bool)

(assert (=> b!800525 m!741747))

(declare-fun m!741749 () Bool)

(assert (=> b!800516 m!741749))

(assert (=> b!800518 m!741725))

(assert (=> b!800518 m!741725))

(declare-fun m!741751 () Bool)

(assert (=> b!800518 m!741751))

(declare-fun m!741753 () Bool)

(assert (=> b!800520 m!741753))

(declare-fun m!741755 () Bool)

(assert (=> b!800526 m!741755))

(push 1)

