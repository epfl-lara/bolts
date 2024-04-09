; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68832 () Bool)

(assert start!68832)

(declare-fun b!801914 () Bool)

(declare-fun e!444483 () Bool)

(declare-fun e!444482 () Bool)

(assert (=> b!801914 (= e!444483 e!444482)))

(declare-fun res!546604 () Bool)

(assert (=> b!801914 (=> (not res!546604) (not e!444482))))

(declare-datatypes ((SeekEntryResult!8461 0))(
  ( (MissingZero!8461 (index!36211 (_ BitVec 32))) (Found!8461 (index!36212 (_ BitVec 32))) (Intermediate!8461 (undefined!9273 Bool) (index!36213 (_ BitVec 32)) (x!67092 (_ BitVec 32))) (Undefined!8461) (MissingVacant!8461 (index!36214 (_ BitVec 32))) )
))
(declare-fun lt!358571 () SeekEntryResult!8461)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!801914 (= res!546604 (or (= lt!358571 (MissingZero!8461 i!1163)) (= lt!358571 (MissingVacant!8461 i!1163))))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-datatypes ((array!43573 0))(
  ( (array!43574 (arr!20863 (Array (_ BitVec 32) (_ BitVec 64))) (size!21284 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43573)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43573 (_ BitVec 32)) SeekEntryResult!8461)

(assert (=> b!801914 (= lt!358571 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!801915 () Bool)

(declare-fun e!444480 () Bool)

(declare-fun e!444481 () Bool)

(assert (=> b!801915 (= e!444480 e!444481)))

(declare-fun res!546608 () Bool)

(assert (=> b!801915 (=> (not res!546608) (not e!444481))))

(declare-fun lt!358572 () SeekEntryResult!8461)

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun lt!358575 () SeekEntryResult!8461)

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!801915 (= res!546608 (and (= lt!358572 lt!358575) (= lt!358575 (Found!8461 j!153)) (not (= (select (arr!20863 a!3170) index!1236) (select (arr!20863 a!3170) j!153)))))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43573 (_ BitVec 32)) SeekEntryResult!8461)

(assert (=> b!801915 (= lt!358575 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20863 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!801915 (= lt!358572 (seekEntryOrOpen!0 (select (arr!20863 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!801916 () Bool)

(declare-fun res!546606 () Bool)

(assert (=> b!801916 (=> (not res!546606) (not e!444482))))

(declare-datatypes ((List!14879 0))(
  ( (Nil!14876) (Cons!14875 (h!16004 (_ BitVec 64)) (t!21202 List!14879)) )
))
(declare-fun arrayNoDuplicates!0 (array!43573 (_ BitVec 32) List!14879) Bool)

(assert (=> b!801916 (= res!546606 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14876))))

(declare-fun b!801918 () Bool)

(declare-fun res!546613 () Bool)

(assert (=> b!801918 (=> (not res!546613) (not e!444482))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(assert (=> b!801918 (= res!546613 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21284 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20863 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21284 a!3170)) (= (select (arr!20863 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!801919 () Bool)

(declare-fun res!546610 () Bool)

(assert (=> b!801919 (=> (not res!546610) (not e!444482))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43573 (_ BitVec 32)) Bool)

(assert (=> b!801919 (= res!546610 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!801920 () Bool)

(assert (=> b!801920 (= e!444482 e!444480)))

(declare-fun res!546611 () Bool)

(assert (=> b!801920 (=> (not res!546611) (not e!444480))))

(declare-fun lt!358576 () (_ BitVec 64))

(declare-fun lt!358570 () array!43573)

(assert (=> b!801920 (= res!546611 (= (seekEntryOrOpen!0 lt!358576 lt!358570 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!358576 lt!358570 mask!3266)))))

(assert (=> b!801920 (= lt!358576 (select (store (arr!20863 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!801920 (= lt!358570 (array!43574 (store (arr!20863 a!3170) i!1163 k0!2044) (size!21284 a!3170)))))

(declare-fun b!801921 () Bool)

(declare-fun res!546612 () Bool)

(assert (=> b!801921 (=> (not res!546612) (not e!444483))))

(declare-fun arrayContainsKey!0 (array!43573 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!801921 (= res!546612 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!801922 () Bool)

(declare-fun res!546609 () Bool)

(assert (=> b!801922 (=> (not res!546609) (not e!444483))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!801922 (= res!546609 (validKeyInArray!0 k0!2044))))

(declare-fun b!801917 () Bool)

(assert (=> b!801917 (= e!444481 (not true))))

(declare-fun lt!358574 () (_ BitVec 32))

(assert (=> b!801917 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!358574 vacantAfter!23 lt!358576 lt!358570 mask!3266) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!358574 vacantBefore!23 (select (arr!20863 a!3170) j!153) a!3170 mask!3266))))

(declare-datatypes ((Unit!27464 0))(
  ( (Unit!27465) )
))
(declare-fun lt!358573 () Unit!27464)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!43573 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27464)

(assert (=> b!801917 (= lt!358573 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3170 i!1163 k0!2044 j!153 lt!358574 (bvadd #b00000000000000000000000000000001 x!1077) vacantBefore!23 vacantAfter!23 mask!3266))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!801917 (= lt!358574 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun res!546607 () Bool)

(assert (=> start!68832 (=> (not res!546607) (not e!444483))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68832 (= res!546607 (validMask!0 mask!3266))))

(assert (=> start!68832 e!444483))

(assert (=> start!68832 true))

(declare-fun array_inv!16637 (array!43573) Bool)

(assert (=> start!68832 (array_inv!16637 a!3170)))

(declare-fun b!801923 () Bool)

(declare-fun res!546603 () Bool)

(assert (=> b!801923 (=> (not res!546603) (not e!444483))))

(assert (=> b!801923 (= res!546603 (and (= (size!21284 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21284 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21284 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!801924 () Bool)

(declare-fun res!546605 () Bool)

(assert (=> b!801924 (=> (not res!546605) (not e!444483))))

(assert (=> b!801924 (= res!546605 (validKeyInArray!0 (select (arr!20863 a!3170) j!153)))))

(assert (= (and start!68832 res!546607) b!801923))

(assert (= (and b!801923 res!546603) b!801924))

(assert (= (and b!801924 res!546605) b!801922))

(assert (= (and b!801922 res!546609) b!801921))

(assert (= (and b!801921 res!546612) b!801914))

(assert (= (and b!801914 res!546604) b!801919))

(assert (= (and b!801919 res!546610) b!801916))

(assert (= (and b!801916 res!546606) b!801918))

(assert (= (and b!801918 res!546613) b!801920))

(assert (= (and b!801920 res!546611) b!801915))

(assert (= (and b!801915 res!546608) b!801917))

(declare-fun m!743337 () Bool)

(assert (=> start!68832 m!743337))

(declare-fun m!743339 () Bool)

(assert (=> start!68832 m!743339))

(declare-fun m!743341 () Bool)

(assert (=> b!801920 m!743341))

(declare-fun m!743343 () Bool)

(assert (=> b!801920 m!743343))

(declare-fun m!743345 () Bool)

(assert (=> b!801920 m!743345))

(declare-fun m!743347 () Bool)

(assert (=> b!801920 m!743347))

(declare-fun m!743349 () Bool)

(assert (=> b!801915 m!743349))

(declare-fun m!743351 () Bool)

(assert (=> b!801915 m!743351))

(assert (=> b!801915 m!743351))

(declare-fun m!743353 () Bool)

(assert (=> b!801915 m!743353))

(assert (=> b!801915 m!743351))

(declare-fun m!743355 () Bool)

(assert (=> b!801915 m!743355))

(assert (=> b!801924 m!743351))

(assert (=> b!801924 m!743351))

(declare-fun m!743357 () Bool)

(assert (=> b!801924 m!743357))

(declare-fun m!743359 () Bool)

(assert (=> b!801919 m!743359))

(declare-fun m!743361 () Bool)

(assert (=> b!801914 m!743361))

(declare-fun m!743363 () Bool)

(assert (=> b!801916 m!743363))

(declare-fun m!743365 () Bool)

(assert (=> b!801922 m!743365))

(assert (=> b!801917 m!743351))

(declare-fun m!743367 () Bool)

(assert (=> b!801917 m!743367))

(declare-fun m!743369 () Bool)

(assert (=> b!801917 m!743369))

(assert (=> b!801917 m!743351))

(declare-fun m!743371 () Bool)

(assert (=> b!801917 m!743371))

(declare-fun m!743373 () Bool)

(assert (=> b!801917 m!743373))

(declare-fun m!743375 () Bool)

(assert (=> b!801918 m!743375))

(declare-fun m!743377 () Bool)

(assert (=> b!801918 m!743377))

(declare-fun m!743379 () Bool)

(assert (=> b!801921 m!743379))

(check-sat (not b!801924) (not b!801919) (not b!801922) (not b!801916) (not start!68832) (not b!801915) (not b!801914) (not b!801920) (not b!801917) (not b!801921))
(check-sat)
