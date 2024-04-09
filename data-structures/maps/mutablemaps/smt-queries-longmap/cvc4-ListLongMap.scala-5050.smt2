; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68834 () Bool)

(assert start!68834)

(declare-fun b!801947 () Bool)

(declare-fun res!546645 () Bool)

(declare-fun e!444496 () Bool)

(assert (=> b!801947 (=> (not res!546645) (not e!444496))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-datatypes ((array!43575 0))(
  ( (array!43576 (arr!20864 (Array (_ BitVec 32) (_ BitVec 64))) (size!21285 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43575)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(assert (=> b!801947 (= res!546645 (and (= (size!21285 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21285 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21285 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!801948 () Bool)

(declare-fun res!546640 () Bool)

(declare-fun e!444498 () Bool)

(assert (=> b!801948 (=> (not res!546640) (not e!444498))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!801948 (= res!546640 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21285 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20864 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21285 a!3170)) (= (select (arr!20864 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!801949 () Bool)

(declare-fun res!546637 () Bool)

(assert (=> b!801949 (=> (not res!546637) (not e!444496))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43575 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!801949 (= res!546637 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun res!546643 () Bool)

(assert (=> start!68834 (=> (not res!546643) (not e!444496))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68834 (= res!546643 (validMask!0 mask!3266))))

(assert (=> start!68834 e!444496))

(assert (=> start!68834 true))

(declare-fun array_inv!16638 (array!43575) Bool)

(assert (=> start!68834 (array_inv!16638 a!3170)))

(declare-fun b!801950 () Bool)

(declare-fun e!444495 () Bool)

(declare-fun e!444499 () Bool)

(assert (=> b!801950 (= e!444495 e!444499)))

(declare-fun res!546644 () Bool)

(assert (=> b!801950 (=> (not res!546644) (not e!444499))))

(declare-datatypes ((SeekEntryResult!8462 0))(
  ( (MissingZero!8462 (index!36215 (_ BitVec 32))) (Found!8462 (index!36216 (_ BitVec 32))) (Intermediate!8462 (undefined!9274 Bool) (index!36217 (_ BitVec 32)) (x!67093 (_ BitVec 32))) (Undefined!8462) (MissingVacant!8462 (index!36218 (_ BitVec 32))) )
))
(declare-fun lt!358597 () SeekEntryResult!8462)

(declare-fun lt!358596 () SeekEntryResult!8462)

(assert (=> b!801950 (= res!546644 (and (= lt!358596 lt!358597) (= lt!358597 (Found!8462 j!153)) (not (= (select (arr!20864 a!3170) index!1236) (select (arr!20864 a!3170) j!153)))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43575 (_ BitVec 32)) SeekEntryResult!8462)

(assert (=> b!801950 (= lt!358597 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20864 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43575 (_ BitVec 32)) SeekEntryResult!8462)

(assert (=> b!801950 (= lt!358596 (seekEntryOrOpen!0 (select (arr!20864 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!801951 () Bool)

(assert (=> b!801951 (= e!444498 e!444495)))

(declare-fun res!546641 () Bool)

(assert (=> b!801951 (=> (not res!546641) (not e!444495))))

(declare-fun lt!358592 () array!43575)

(declare-fun lt!358593 () (_ BitVec 64))

(assert (=> b!801951 (= res!546641 (= (seekEntryOrOpen!0 lt!358593 lt!358592 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!358593 lt!358592 mask!3266)))))

(assert (=> b!801951 (= lt!358593 (select (store (arr!20864 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!801951 (= lt!358592 (array!43576 (store (arr!20864 a!3170) i!1163 k!2044) (size!21285 a!3170)))))

(declare-fun b!801952 () Bool)

(declare-fun res!546642 () Bool)

(assert (=> b!801952 (=> (not res!546642) (not e!444496))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!801952 (= res!546642 (validKeyInArray!0 (select (arr!20864 a!3170) j!153)))))

(declare-fun b!801953 () Bool)

(assert (=> b!801953 (= e!444496 e!444498)))

(declare-fun res!546638 () Bool)

(assert (=> b!801953 (=> (not res!546638) (not e!444498))))

(declare-fun lt!358595 () SeekEntryResult!8462)

(assert (=> b!801953 (= res!546638 (or (= lt!358595 (MissingZero!8462 i!1163)) (= lt!358595 (MissingVacant!8462 i!1163))))))

(assert (=> b!801953 (= lt!358595 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!801954 () Bool)

(declare-fun res!546639 () Bool)

(assert (=> b!801954 (=> (not res!546639) (not e!444498))))

(declare-datatypes ((List!14880 0))(
  ( (Nil!14877) (Cons!14876 (h!16005 (_ BitVec 64)) (t!21203 List!14880)) )
))
(declare-fun arrayNoDuplicates!0 (array!43575 (_ BitVec 32) List!14880) Bool)

(assert (=> b!801954 (= res!546639 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14877))))

(declare-fun b!801955 () Bool)

(declare-fun res!546636 () Bool)

(assert (=> b!801955 (=> (not res!546636) (not e!444498))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43575 (_ BitVec 32)) Bool)

(assert (=> b!801955 (= res!546636 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!801956 () Bool)

(assert (=> b!801956 (= e!444499 (not true))))

(declare-fun lt!358594 () (_ BitVec 32))

(assert (=> b!801956 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!358594 vacantAfter!23 lt!358593 lt!358592 mask!3266) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!358594 vacantBefore!23 (select (arr!20864 a!3170) j!153) a!3170 mask!3266))))

(declare-datatypes ((Unit!27466 0))(
  ( (Unit!27467) )
))
(declare-fun lt!358591 () Unit!27466)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!43575 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27466)

(assert (=> b!801956 (= lt!358591 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3170 i!1163 k!2044 j!153 lt!358594 (bvadd #b00000000000000000000000000000001 x!1077) vacantBefore!23 vacantAfter!23 mask!3266))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!801956 (= lt!358594 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!801957 () Bool)

(declare-fun res!546646 () Bool)

(assert (=> b!801957 (=> (not res!546646) (not e!444496))))

(assert (=> b!801957 (= res!546646 (validKeyInArray!0 k!2044))))

(assert (= (and start!68834 res!546643) b!801947))

(assert (= (and b!801947 res!546645) b!801952))

(assert (= (and b!801952 res!546642) b!801957))

(assert (= (and b!801957 res!546646) b!801949))

(assert (= (and b!801949 res!546637) b!801953))

(assert (= (and b!801953 res!546638) b!801955))

(assert (= (and b!801955 res!546636) b!801954))

(assert (= (and b!801954 res!546639) b!801948))

(assert (= (and b!801948 res!546640) b!801951))

(assert (= (and b!801951 res!546641) b!801950))

(assert (= (and b!801950 res!546644) b!801956))

(declare-fun m!743381 () Bool)

(assert (=> b!801956 m!743381))

(declare-fun m!743383 () Bool)

(assert (=> b!801956 m!743383))

(declare-fun m!743385 () Bool)

(assert (=> b!801956 m!743385))

(assert (=> b!801956 m!743381))

(declare-fun m!743387 () Bool)

(assert (=> b!801956 m!743387))

(declare-fun m!743389 () Bool)

(assert (=> b!801956 m!743389))

(declare-fun m!743391 () Bool)

(assert (=> b!801955 m!743391))

(declare-fun m!743393 () Bool)

(assert (=> b!801954 m!743393))

(declare-fun m!743395 () Bool)

(assert (=> b!801951 m!743395))

(declare-fun m!743397 () Bool)

(assert (=> b!801951 m!743397))

(declare-fun m!743399 () Bool)

(assert (=> b!801951 m!743399))

(declare-fun m!743401 () Bool)

(assert (=> b!801951 m!743401))

(assert (=> b!801952 m!743381))

(assert (=> b!801952 m!743381))

(declare-fun m!743403 () Bool)

(assert (=> b!801952 m!743403))

(declare-fun m!743405 () Bool)

(assert (=> start!68834 m!743405))

(declare-fun m!743407 () Bool)

(assert (=> start!68834 m!743407))

(declare-fun m!743409 () Bool)

(assert (=> b!801957 m!743409))

(declare-fun m!743411 () Bool)

(assert (=> b!801950 m!743411))

(assert (=> b!801950 m!743381))

(assert (=> b!801950 m!743381))

(declare-fun m!743413 () Bool)

(assert (=> b!801950 m!743413))

(assert (=> b!801950 m!743381))

(declare-fun m!743415 () Bool)

(assert (=> b!801950 m!743415))

(declare-fun m!743417 () Bool)

(assert (=> b!801948 m!743417))

(declare-fun m!743419 () Bool)

(assert (=> b!801948 m!743419))

(declare-fun m!743421 () Bool)

(assert (=> b!801953 m!743421))

(declare-fun m!743423 () Bool)

(assert (=> b!801949 m!743423))

(push 1)

