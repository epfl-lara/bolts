; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69670 () Bool)

(assert start!69670)

(declare-fun b!811340 () Bool)

(declare-fun e!449082 () Bool)

(declare-fun e!449083 () Bool)

(assert (=> b!811340 (= e!449082 e!449083)))

(declare-fun res!554562 () Bool)

(assert (=> b!811340 (=> (not res!554562) (not e!449083))))

(declare-datatypes ((array!44060 0))(
  ( (array!44061 (arr!21096 (Array (_ BitVec 32) (_ BitVec 64))) (size!21517 (_ BitVec 32))) )
))
(declare-fun lt!363801 () array!44060)

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!363796 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!8694 0))(
  ( (MissingZero!8694 (index!37146 (_ BitVec 32))) (Found!8694 (index!37147 (_ BitVec 32))) (Intermediate!8694 (undefined!9506 Bool) (index!37148 (_ BitVec 32)) (x!67988 (_ BitVec 32))) (Undefined!8694) (MissingVacant!8694 (index!37149 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!44060 (_ BitVec 32)) SeekEntryResult!8694)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!44060 (_ BitVec 32)) SeekEntryResult!8694)

(assert (=> b!811340 (= res!554562 (= (seekEntryOrOpen!0 lt!363796 lt!363801 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!363796 lt!363801 mask!3266)))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun a!3170 () array!44060)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun k!2044 () (_ BitVec 64))

(assert (=> b!811340 (= lt!363796 (select (store (arr!21096 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!811340 (= lt!363801 (array!44061 (store (arr!21096 a!3170) i!1163 k!2044) (size!21517 a!3170)))))

(declare-fun b!811341 () Bool)

(declare-fun res!554554 () Bool)

(declare-fun e!449084 () Bool)

(assert (=> b!811341 (=> (not res!554554) (not e!449084))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!811341 (= res!554554 (validKeyInArray!0 (select (arr!21096 a!3170) j!153)))))

(declare-fun b!811342 () Bool)

(assert (=> b!811342 (= e!449084 e!449082)))

(declare-fun res!554560 () Bool)

(assert (=> b!811342 (=> (not res!554560) (not e!449082))))

(declare-fun lt!363802 () SeekEntryResult!8694)

(assert (=> b!811342 (= res!554560 (or (= lt!363802 (MissingZero!8694 i!1163)) (= lt!363802 (MissingVacant!8694 i!1163))))))

(assert (=> b!811342 (= lt!363802 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!811343 () Bool)

(declare-fun res!554561 () Bool)

(assert (=> b!811343 (=> (not res!554561) (not e!449082))))

(declare-datatypes ((List!15112 0))(
  ( (Nil!15109) (Cons!15108 (h!16237 (_ BitVec 64)) (t!21435 List!15112)) )
))
(declare-fun arrayNoDuplicates!0 (array!44060 (_ BitVec 32) List!15112) Bool)

(assert (=> b!811343 (= res!554561 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15109))))

(declare-fun b!811344 () Bool)

(declare-fun res!554559 () Bool)

(assert (=> b!811344 (=> (not res!554559) (not e!449084))))

(declare-fun arrayContainsKey!0 (array!44060 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!811344 (= res!554559 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!811345 () Bool)

(declare-fun res!554558 () Bool)

(assert (=> b!811345 (=> (not res!554558) (not e!449084))))

(assert (=> b!811345 (= res!554558 (and (= (size!21517 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21517 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21517 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!811346 () Bool)

(declare-fun res!554556 () Bool)

(assert (=> b!811346 (=> (not res!554556) (not e!449082))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!811346 (= res!554556 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21517 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!21096 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21517 a!3170)) (= (select (arr!21096 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!811347 () Bool)

(declare-fun e!449085 () Bool)

(assert (=> b!811347 (= e!449083 e!449085)))

(declare-fun res!554555 () Bool)

(assert (=> b!811347 (=> (not res!554555) (not e!449085))))

(declare-fun lt!363800 () SeekEntryResult!8694)

(declare-fun lt!363799 () SeekEntryResult!8694)

(assert (=> b!811347 (= res!554555 (and (= lt!363799 lt!363800) (= lt!363800 (Found!8694 j!153)) (not (= (select (arr!21096 a!3170) index!1236) (select (arr!21096 a!3170) j!153)))))))

(assert (=> b!811347 (= lt!363800 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21096 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!811347 (= lt!363799 (seekEntryOrOpen!0 (select (arr!21096 a!3170) j!153) a!3170 mask!3266))))

(declare-fun res!554557 () Bool)

(assert (=> start!69670 (=> (not res!554557) (not e!449084))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69670 (= res!554557 (validMask!0 mask!3266))))

(assert (=> start!69670 e!449084))

(assert (=> start!69670 true))

(declare-fun array_inv!16870 (array!44060) Bool)

(assert (=> start!69670 (array_inv!16870 a!3170)))

(declare-fun b!811348 () Bool)

(declare-fun res!554553 () Bool)

(assert (=> b!811348 (=> (not res!554553) (not e!449084))))

(assert (=> b!811348 (= res!554553 (validKeyInArray!0 k!2044))))

(declare-fun b!811349 () Bool)

(declare-fun res!554563 () Bool)

(assert (=> b!811349 (=> (not res!554563) (not e!449082))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44060 (_ BitVec 32)) Bool)

(assert (=> b!811349 (= res!554563 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!811350 () Bool)

(assert (=> b!811350 (= e!449085 (not true))))

(declare-fun lt!363797 () (_ BitVec 32))

(assert (=> b!811350 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!363797 vacantAfter!23 lt!363796 lt!363801 mask!3266) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!363797 vacantBefore!23 (select (arr!21096 a!3170) j!153) a!3170 mask!3266))))

(declare-datatypes ((Unit!27650 0))(
  ( (Unit!27651) )
))
(declare-fun lt!363798 () Unit!27650)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!44060 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27650)

(assert (=> b!811350 (= lt!363798 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3170 i!1163 k!2044 j!153 lt!363797 (bvadd #b00000000000000000000000000000001 x!1077) vacantBefore!23 vacantAfter!23 mask!3266))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!811350 (= lt!363797 (nextIndex!0 index!1236 x!1077 mask!3266))))

(assert (= (and start!69670 res!554557) b!811345))

(assert (= (and b!811345 res!554558) b!811341))

(assert (= (and b!811341 res!554554) b!811348))

(assert (= (and b!811348 res!554553) b!811344))

(assert (= (and b!811344 res!554559) b!811342))

(assert (= (and b!811342 res!554560) b!811349))

(assert (= (and b!811349 res!554563) b!811343))

(assert (= (and b!811343 res!554561) b!811346))

(assert (= (and b!811346 res!554556) b!811340))

(assert (= (and b!811340 res!554562) b!811347))

(assert (= (and b!811347 res!554555) b!811350))

(declare-fun m!753805 () Bool)

(assert (=> b!811346 m!753805))

(declare-fun m!753807 () Bool)

(assert (=> b!811346 m!753807))

(declare-fun m!753809 () Bool)

(assert (=> b!811344 m!753809))

(declare-fun m!753811 () Bool)

(assert (=> b!811341 m!753811))

(assert (=> b!811341 m!753811))

(declare-fun m!753813 () Bool)

(assert (=> b!811341 m!753813))

(assert (=> b!811350 m!753811))

(declare-fun m!753815 () Bool)

(assert (=> b!811350 m!753815))

(declare-fun m!753817 () Bool)

(assert (=> b!811350 m!753817))

(declare-fun m!753819 () Bool)

(assert (=> b!811350 m!753819))

(assert (=> b!811350 m!753811))

(declare-fun m!753821 () Bool)

(assert (=> b!811350 m!753821))

(declare-fun m!753823 () Bool)

(assert (=> b!811343 m!753823))

(declare-fun m!753825 () Bool)

(assert (=> start!69670 m!753825))

(declare-fun m!753827 () Bool)

(assert (=> start!69670 m!753827))

(declare-fun m!753829 () Bool)

(assert (=> b!811342 m!753829))

(declare-fun m!753831 () Bool)

(assert (=> b!811347 m!753831))

(assert (=> b!811347 m!753811))

(assert (=> b!811347 m!753811))

(declare-fun m!753833 () Bool)

(assert (=> b!811347 m!753833))

(assert (=> b!811347 m!753811))

(declare-fun m!753835 () Bool)

(assert (=> b!811347 m!753835))

(declare-fun m!753837 () Bool)

(assert (=> b!811348 m!753837))

(declare-fun m!753839 () Bool)

(assert (=> b!811340 m!753839))

(declare-fun m!753841 () Bool)

(assert (=> b!811340 m!753841))

(declare-fun m!753843 () Bool)

(assert (=> b!811340 m!753843))

(declare-fun m!753845 () Bool)

(assert (=> b!811340 m!753845))

(declare-fun m!753847 () Bool)

(assert (=> b!811349 m!753847))

(push 1)

