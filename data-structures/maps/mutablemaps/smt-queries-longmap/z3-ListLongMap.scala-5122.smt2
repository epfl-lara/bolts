; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!69576 () Bool)

(assert start!69576)

(declare-fun b!810464 () Bool)

(declare-fun e!448633 () Bool)

(declare-fun e!448629 () Bool)

(assert (=> b!810464 (= e!448633 e!448629)))

(declare-fun res!553913 () Bool)

(assert (=> b!810464 (=> (not res!553913) (not e!448629))))

(declare-datatypes ((SeekEntryResult!8677 0))(
  ( (MissingZero!8677 (index!37075 (_ BitVec 32))) (Found!8677 (index!37076 (_ BitVec 32))) (Intermediate!8677 (undefined!9489 Bool) (index!37077 (_ BitVec 32)) (x!67914 (_ BitVec 32))) (Undefined!8677) (MissingVacant!8677 (index!37078 (_ BitVec 32))) )
))
(declare-fun lt!363291 () SeekEntryResult!8677)

(declare-datatypes ((array!44023 0))(
  ( (array!44024 (arr!21079 (Array (_ BitVec 32) (_ BitVec 64))) (size!21500 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!44023)

(declare-fun lt!363287 () SeekEntryResult!8677)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!810464 (= res!553913 (and (= lt!363291 lt!363287) (= lt!363287 (Found!8677 j!153)) (not (= (select (arr!21079 a!3170) index!1236) (select (arr!21079 a!3170) j!153)))))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!44023 (_ BitVec 32)) SeekEntryResult!8677)

(assert (=> b!810464 (= lt!363287 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21079 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!44023 (_ BitVec 32)) SeekEntryResult!8677)

(assert (=> b!810464 (= lt!363291 (seekEntryOrOpen!0 (select (arr!21079 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!810465 () Bool)

(declare-fun res!553917 () Bool)

(declare-fun e!448630 () Bool)

(assert (=> b!810465 (=> (not res!553917) (not e!448630))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!810465 (= res!553917 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21500 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!21079 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21500 a!3170)) (= (select (arr!21079 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!810466 () Bool)

(assert (=> b!810466 (= e!448630 e!448633)))

(declare-fun res!553915 () Bool)

(assert (=> b!810466 (=> (not res!553915) (not e!448633))))

(declare-fun lt!363289 () array!44023)

(declare-fun lt!363288 () (_ BitVec 64))

(assert (=> b!810466 (= res!553915 (= (seekEntryOrOpen!0 lt!363288 lt!363289 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!363288 lt!363289 mask!3266)))))

(declare-fun k0!2044 () (_ BitVec 64))

(assert (=> b!810466 (= lt!363288 (select (store (arr!21079 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!810466 (= lt!363289 (array!44024 (store (arr!21079 a!3170) i!1163 k0!2044) (size!21500 a!3170)))))

(declare-fun b!810467 () Bool)

(declare-fun e!448632 () Bool)

(assert (=> b!810467 (= e!448632 e!448630)))

(declare-fun res!553918 () Bool)

(assert (=> b!810467 (=> (not res!553918) (not e!448630))))

(declare-fun lt!363286 () SeekEntryResult!8677)

(assert (=> b!810467 (= res!553918 (or (= lt!363286 (MissingZero!8677 i!1163)) (= lt!363286 (MissingVacant!8677 i!1163))))))

(assert (=> b!810467 (= lt!363286 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!810468 () Bool)

(declare-fun res!553916 () Bool)

(assert (=> b!810468 (=> (not res!553916) (not e!448632))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!810468 (= res!553916 (validKeyInArray!0 (select (arr!21079 a!3170) j!153)))))

(declare-fun b!810469 () Bool)

(declare-fun res!553920 () Bool)

(assert (=> b!810469 (=> (not res!553920) (not e!448630))))

(declare-datatypes ((List!15095 0))(
  ( (Nil!15092) (Cons!15091 (h!16220 (_ BitVec 64)) (t!21418 List!15095)) )
))
(declare-fun arrayNoDuplicates!0 (array!44023 (_ BitVec 32) List!15095) Bool)

(assert (=> b!810469 (= res!553920 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15092))))

(declare-fun b!810471 () Bool)

(declare-fun res!553911 () Bool)

(assert (=> b!810471 (=> (not res!553911) (not e!448630))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44023 (_ BitVec 32)) Bool)

(assert (=> b!810471 (= res!553911 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!810472 () Bool)

(assert (=> b!810472 (= e!448629 (not true))))

(declare-fun lt!363292 () (_ BitVec 32))

(assert (=> b!810472 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!363292 vacantAfter!23 lt!363288 lt!363289 mask!3266) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!363292 vacantBefore!23 (select (arr!21079 a!3170) j!153) a!3170 mask!3266))))

(declare-datatypes ((Unit!27616 0))(
  ( (Unit!27617) )
))
(declare-fun lt!363290 () Unit!27616)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!44023 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27616)

(assert (=> b!810472 (= lt!363290 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3170 i!1163 k0!2044 j!153 lt!363292 (bvadd #b00000000000000000000000000000001 x!1077) vacantBefore!23 vacantAfter!23 mask!3266))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!810472 (= lt!363292 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!810473 () Bool)

(declare-fun res!553921 () Bool)

(assert (=> b!810473 (=> (not res!553921) (not e!448632))))

(assert (=> b!810473 (= res!553921 (and (= (size!21500 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21500 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21500 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!810474 () Bool)

(declare-fun res!553914 () Bool)

(assert (=> b!810474 (=> (not res!553914) (not e!448632))))

(declare-fun arrayContainsKey!0 (array!44023 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!810474 (= res!553914 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun res!553912 () Bool)

(assert (=> start!69576 (=> (not res!553912) (not e!448632))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69576 (= res!553912 (validMask!0 mask!3266))))

(assert (=> start!69576 e!448632))

(assert (=> start!69576 true))

(declare-fun array_inv!16853 (array!44023) Bool)

(assert (=> start!69576 (array_inv!16853 a!3170)))

(declare-fun b!810470 () Bool)

(declare-fun res!553919 () Bool)

(assert (=> b!810470 (=> (not res!553919) (not e!448632))))

(assert (=> b!810470 (= res!553919 (validKeyInArray!0 k0!2044))))

(assert (= (and start!69576 res!553912) b!810473))

(assert (= (and b!810473 res!553921) b!810468))

(assert (= (and b!810468 res!553916) b!810470))

(assert (= (and b!810470 res!553919) b!810474))

(assert (= (and b!810474 res!553914) b!810467))

(assert (= (and b!810467 res!553918) b!810471))

(assert (= (and b!810471 res!553911) b!810469))

(assert (= (and b!810469 res!553920) b!810465))

(assert (= (and b!810465 res!553917) b!810466))

(assert (= (and b!810466 res!553915) b!810464))

(assert (= (and b!810464 res!553913) b!810472))

(declare-fun m!752763 () Bool)

(assert (=> b!810465 m!752763))

(declare-fun m!752765 () Bool)

(assert (=> b!810465 m!752765))

(declare-fun m!752767 () Bool)

(assert (=> b!810471 m!752767))

(declare-fun m!752769 () Bool)

(assert (=> b!810470 m!752769))

(declare-fun m!752771 () Bool)

(assert (=> start!69576 m!752771))

(declare-fun m!752773 () Bool)

(assert (=> start!69576 m!752773))

(declare-fun m!752775 () Bool)

(assert (=> b!810464 m!752775))

(declare-fun m!752777 () Bool)

(assert (=> b!810464 m!752777))

(assert (=> b!810464 m!752777))

(declare-fun m!752779 () Bool)

(assert (=> b!810464 m!752779))

(assert (=> b!810464 m!752777))

(declare-fun m!752781 () Bool)

(assert (=> b!810464 m!752781))

(declare-fun m!752783 () Bool)

(assert (=> b!810469 m!752783))

(assert (=> b!810468 m!752777))

(assert (=> b!810468 m!752777))

(declare-fun m!752785 () Bool)

(assert (=> b!810468 m!752785))

(declare-fun m!752787 () Bool)

(assert (=> b!810474 m!752787))

(declare-fun m!752789 () Bool)

(assert (=> b!810466 m!752789))

(declare-fun m!752791 () Bool)

(assert (=> b!810466 m!752791))

(declare-fun m!752793 () Bool)

(assert (=> b!810466 m!752793))

(declare-fun m!752795 () Bool)

(assert (=> b!810466 m!752795))

(assert (=> b!810472 m!752777))

(assert (=> b!810472 m!752777))

(declare-fun m!752797 () Bool)

(assert (=> b!810472 m!752797))

(declare-fun m!752799 () Bool)

(assert (=> b!810472 m!752799))

(declare-fun m!752801 () Bool)

(assert (=> b!810472 m!752801))

(declare-fun m!752803 () Bool)

(assert (=> b!810472 m!752803))

(declare-fun m!752805 () Bool)

(assert (=> b!810467 m!752805))

(check-sat (not b!810464) (not b!810474) (not b!810472) (not b!810468) (not b!810470) (not start!69576) (not b!810467) (not b!810469) (not b!810471) (not b!810466))
(check-sat)
