; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68894 () Bool)

(assert start!68894)

(declare-fun b!802981 () Bool)

(declare-fun res!547678 () Bool)

(declare-fun e!444991 () Bool)

(assert (=> b!802981 (=> (not res!547678) (not e!444991))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!802981 (= res!547678 (validKeyInArray!0 k!2044))))

(declare-fun b!802982 () Bool)

(declare-fun res!547671 () Bool)

(assert (=> b!802982 (=> (not res!547671) (not e!444991))))

(declare-datatypes ((array!43635 0))(
  ( (array!43636 (arr!20894 (Array (_ BitVec 32) (_ BitVec 64))) (size!21315 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43635)

(declare-fun arrayContainsKey!0 (array!43635 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!802982 (= res!547671 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!802983 () Bool)

(declare-fun res!547677 () Bool)

(declare-fun e!444989 () Bool)

(assert (=> b!802983 (=> (not res!547677) (not e!444989))))

(declare-datatypes ((List!14910 0))(
  ( (Nil!14907) (Cons!14906 (h!16035 (_ BitVec 64)) (t!21233 List!14910)) )
))
(declare-fun arrayNoDuplicates!0 (array!43635 (_ BitVec 32) List!14910) Bool)

(assert (=> b!802983 (= res!547677 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14907))))

(declare-fun b!802984 () Bool)

(declare-fun e!444994 () Bool)

(declare-fun e!444992 () Bool)

(assert (=> b!802984 (= e!444994 e!444992)))

(declare-fun res!547675 () Bool)

(assert (=> b!802984 (=> (not res!547675) (not e!444992))))

(declare-datatypes ((SeekEntryResult!8492 0))(
  ( (MissingZero!8492 (index!36335 (_ BitVec 32))) (Found!8492 (index!36336 (_ BitVec 32))) (Intermediate!8492 (undefined!9304 Bool) (index!36337 (_ BitVec 32)) (x!67203 (_ BitVec 32))) (Undefined!8492) (MissingVacant!8492 (index!36338 (_ BitVec 32))) )
))
(declare-fun lt!359330 () SeekEntryResult!8492)

(declare-fun lt!359329 () SeekEntryResult!8492)

(assert (=> b!802984 (= res!547675 (= lt!359330 lt!359329))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43635 (_ BitVec 32)) SeekEntryResult!8492)

(assert (=> b!802984 (= lt!359329 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20894 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43635 (_ BitVec 32)) SeekEntryResult!8492)

(assert (=> b!802984 (= lt!359330 (seekEntryOrOpen!0 (select (arr!20894 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!802985 () Bool)

(assert (=> b!802985 (= e!444991 e!444989)))

(declare-fun res!547672 () Bool)

(assert (=> b!802985 (=> (not res!547672) (not e!444989))))

(declare-fun lt!359328 () SeekEntryResult!8492)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!802985 (= res!547672 (or (= lt!359328 (MissingZero!8492 i!1163)) (= lt!359328 (MissingVacant!8492 i!1163))))))

(assert (=> b!802985 (= lt!359328 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!802986 () Bool)

(assert (=> b!802986 (= e!444989 e!444994)))

(declare-fun res!547670 () Bool)

(assert (=> b!802986 (=> (not res!547670) (not e!444994))))

(declare-fun lt!359334 () SeekEntryResult!8492)

(declare-fun lt!359332 () SeekEntryResult!8492)

(assert (=> b!802986 (= res!547670 (= lt!359334 lt!359332))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!359333 () (_ BitVec 64))

(declare-fun lt!359326 () array!43635)

(assert (=> b!802986 (= lt!359332 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!359333 lt!359326 mask!3266))))

(assert (=> b!802986 (= lt!359334 (seekEntryOrOpen!0 lt!359333 lt!359326 mask!3266))))

(assert (=> b!802986 (= lt!359333 (select (store (arr!20894 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!802986 (= lt!359326 (array!43636 (store (arr!20894 a!3170) i!1163 k!2044) (size!21315 a!3170)))))

(declare-fun b!802988 () Bool)

(declare-fun res!547680 () Bool)

(assert (=> b!802988 (=> (not res!547680) (not e!444991))))

(assert (=> b!802988 (= res!547680 (validKeyInArray!0 (select (arr!20894 a!3170) j!153)))))

(declare-fun b!802989 () Bool)

(declare-fun res!547676 () Bool)

(assert (=> b!802989 (=> (not res!547676) (not e!444991))))

(assert (=> b!802989 (= res!547676 (and (= (size!21315 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21315 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21315 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!802990 () Bool)

(declare-fun e!444993 () Bool)

(assert (=> b!802990 (= e!444992 e!444993)))

(declare-fun res!547679 () Bool)

(assert (=> b!802990 (=> (not res!547679) (not e!444993))))

(declare-fun lt!359335 () SeekEntryResult!8492)

(assert (=> b!802990 (= res!547679 (and (= lt!359329 lt!359335) (not (= (select (arr!20894 a!3170) index!1236) (select (arr!20894 a!3170) j!153)))))))

(assert (=> b!802990 (= lt!359335 (Found!8492 j!153))))

(declare-fun b!802991 () Bool)

(assert (=> b!802991 (= e!444993 (not (or (not (= lt!359332 lt!359335)) (bvslt mask!3266 #b00000000000000000000000000000000) (bvsge index!1236 (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge vacantAfter!23 (bvadd #b00000000000000000000000000000001 mask!3266)) (= (select (store (arr!20894 a!3170) i!1163 k!2044) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!359331 () (_ BitVec 32))

(assert (=> b!802991 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!359331 vacantAfter!23 lt!359333 lt!359326 mask!3266) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!359331 vacantBefore!23 (select (arr!20894 a!3170) j!153) a!3170 mask!3266))))

(declare-datatypes ((Unit!27526 0))(
  ( (Unit!27527) )
))
(declare-fun lt!359327 () Unit!27526)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!43635 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27526)

(assert (=> b!802991 (= lt!359327 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3170 i!1163 k!2044 j!153 lt!359331 (bvadd #b00000000000000000000000000000001 x!1077) vacantBefore!23 vacantAfter!23 mask!3266))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!802991 (= lt!359331 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!802992 () Bool)

(declare-fun res!547681 () Bool)

(assert (=> b!802992 (=> (not res!547681) (not e!444989))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43635 (_ BitVec 32)) Bool)

(assert (=> b!802992 (= res!547681 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun res!547674 () Bool)

(assert (=> start!68894 (=> (not res!547674) (not e!444991))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68894 (= res!547674 (validMask!0 mask!3266))))

(assert (=> start!68894 e!444991))

(assert (=> start!68894 true))

(declare-fun array_inv!16668 (array!43635) Bool)

(assert (=> start!68894 (array_inv!16668 a!3170)))

(declare-fun b!802987 () Bool)

(declare-fun res!547673 () Bool)

(assert (=> b!802987 (=> (not res!547673) (not e!444989))))

(assert (=> b!802987 (= res!547673 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21315 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20894 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21315 a!3170)) (= (select (arr!20894 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(assert (= (and start!68894 res!547674) b!802989))

(assert (= (and b!802989 res!547676) b!802988))

(assert (= (and b!802988 res!547680) b!802981))

(assert (= (and b!802981 res!547678) b!802982))

(assert (= (and b!802982 res!547671) b!802985))

(assert (= (and b!802985 res!547672) b!802992))

(assert (= (and b!802992 res!547681) b!802983))

(assert (= (and b!802983 res!547677) b!802987))

(assert (= (and b!802987 res!547673) b!802986))

(assert (= (and b!802986 res!547670) b!802984))

(assert (= (and b!802984 res!547675) b!802990))

(assert (= (and b!802990 res!547679) b!802991))

(declare-fun m!744723 () Bool)

(assert (=> b!802985 m!744723))

(declare-fun m!744725 () Bool)

(assert (=> b!802986 m!744725))

(declare-fun m!744727 () Bool)

(assert (=> b!802986 m!744727))

(declare-fun m!744729 () Bool)

(assert (=> b!802986 m!744729))

(declare-fun m!744731 () Bool)

(assert (=> b!802986 m!744731))

(declare-fun m!744733 () Bool)

(assert (=> b!802992 m!744733))

(declare-fun m!744735 () Bool)

(assert (=> b!802983 m!744735))

(declare-fun m!744737 () Bool)

(assert (=> b!802990 m!744737))

(declare-fun m!744739 () Bool)

(assert (=> b!802990 m!744739))

(assert (=> b!802984 m!744739))

(assert (=> b!802984 m!744739))

(declare-fun m!744741 () Bool)

(assert (=> b!802984 m!744741))

(assert (=> b!802984 m!744739))

(declare-fun m!744743 () Bool)

(assert (=> b!802984 m!744743))

(declare-fun m!744745 () Bool)

(assert (=> b!802987 m!744745))

(declare-fun m!744747 () Bool)

(assert (=> b!802987 m!744747))

(declare-fun m!744749 () Bool)

(assert (=> b!802981 m!744749))

(declare-fun m!744751 () Bool)

(assert (=> start!68894 m!744751))

(declare-fun m!744753 () Bool)

(assert (=> start!68894 m!744753))

(declare-fun m!744755 () Bool)

(assert (=> b!802982 m!744755))

(assert (=> b!802988 m!744739))

(assert (=> b!802988 m!744739))

(declare-fun m!744757 () Bool)

(assert (=> b!802988 m!744757))

(assert (=> b!802991 m!744739))

(declare-fun m!744759 () Bool)

(assert (=> b!802991 m!744759))

(assert (=> b!802991 m!744739))

(declare-fun m!744761 () Bool)

(assert (=> b!802991 m!744761))

(declare-fun m!744763 () Bool)

(assert (=> b!802991 m!744763))

(declare-fun m!744765 () Bool)

(assert (=> b!802991 m!744765))

(declare-fun m!744767 () Bool)

(assert (=> b!802991 m!744767))

(assert (=> b!802991 m!744729))

(push 1)

(assert (not b!802985))

(assert (not b!802981))

(assert (not b!802982))

(assert (not b!802992))

(assert (not b!802991))

