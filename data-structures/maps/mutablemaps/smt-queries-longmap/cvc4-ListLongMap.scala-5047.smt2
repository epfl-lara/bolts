; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68816 () Bool)

(assert start!68816)

(declare-fun b!801650 () Bool)

(declare-fun res!546344 () Bool)

(declare-fun e!444361 () Bool)

(assert (=> b!801650 (=> (not res!546344) (not e!444361))))

(declare-datatypes ((array!43557 0))(
  ( (array!43558 (arr!20855 (Array (_ BitVec 32) (_ BitVec 64))) (size!21276 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43557)

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43557 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!801650 (= res!546344 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!801651 () Bool)

(declare-fun res!546341 () Bool)

(assert (=> b!801651 (=> (not res!546341) (not e!444361))))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!801651 (= res!546341 (validKeyInArray!0 (select (arr!20855 a!3170) j!153)))))

(declare-fun b!801652 () Bool)

(declare-fun e!444360 () Bool)

(declare-fun e!444362 () Bool)

(assert (=> b!801652 (= e!444360 e!444362)))

(declare-fun res!546343 () Bool)

(assert (=> b!801652 (=> (not res!546343) (not e!444362))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!358402 () array!43557)

(declare-fun lt!358404 () (_ BitVec 64))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8453 0))(
  ( (MissingZero!8453 (index!36179 (_ BitVec 32))) (Found!8453 (index!36180 (_ BitVec 32))) (Intermediate!8453 (undefined!9265 Bool) (index!36181 (_ BitVec 32)) (x!67060 (_ BitVec 32))) (Undefined!8453) (MissingVacant!8453 (index!36182 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43557 (_ BitVec 32)) SeekEntryResult!8453)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43557 (_ BitVec 32)) SeekEntryResult!8453)

(assert (=> b!801652 (= res!546343 (= (seekEntryOrOpen!0 lt!358404 lt!358402 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!358404 lt!358402 mask!3266)))))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!801652 (= lt!358404 (select (store (arr!20855 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!801652 (= lt!358402 (array!43558 (store (arr!20855 a!3170) i!1163 k!2044) (size!21276 a!3170)))))

(declare-fun b!801653 () Bool)

(declare-fun res!546340 () Bool)

(assert (=> b!801653 (=> (not res!546340) (not e!444361))))

(assert (=> b!801653 (= res!546340 (validKeyInArray!0 k!2044))))

(declare-fun b!801654 () Bool)

(declare-fun e!444364 () Bool)

(assert (=> b!801654 (= e!444364 (not (bvsge mask!3266 #b00000000000000000000000000000000)))))

(declare-fun lt!358406 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!801654 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!358406 vacantAfter!23 lt!358404 lt!358402 mask!3266) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!358406 vacantBefore!23 (select (arr!20855 a!3170) j!153) a!3170 mask!3266))))

(declare-datatypes ((Unit!27448 0))(
  ( (Unit!27449) )
))
(declare-fun lt!358405 () Unit!27448)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!43557 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27448)

(assert (=> b!801654 (= lt!358405 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3170 i!1163 k!2044 j!153 lt!358406 (bvadd #b00000000000000000000000000000001 x!1077) vacantBefore!23 vacantAfter!23 mask!3266))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!801654 (= lt!358406 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!801655 () Bool)

(declare-fun res!546339 () Bool)

(assert (=> b!801655 (=> (not res!546339) (not e!444361))))

(assert (=> b!801655 (= res!546339 (and (= (size!21276 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21276 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21276 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!801656 () Bool)

(declare-fun res!546347 () Bool)

(assert (=> b!801656 (=> (not res!546347) (not e!444360))))

(declare-datatypes ((List!14871 0))(
  ( (Nil!14868) (Cons!14867 (h!15996 (_ BitVec 64)) (t!21194 List!14871)) )
))
(declare-fun arrayNoDuplicates!0 (array!43557 (_ BitVec 32) List!14871) Bool)

(assert (=> b!801656 (= res!546347 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14868))))

(declare-fun b!801657 () Bool)

(assert (=> b!801657 (= e!444361 e!444360)))

(declare-fun res!546345 () Bool)

(assert (=> b!801657 (=> (not res!546345) (not e!444360))))

(declare-fun lt!358407 () SeekEntryResult!8453)

(assert (=> b!801657 (= res!546345 (or (= lt!358407 (MissingZero!8453 i!1163)) (= lt!358407 (MissingVacant!8453 i!1163))))))

(assert (=> b!801657 (= lt!358407 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!801658 () Bool)

(declare-fun res!546349 () Bool)

(assert (=> b!801658 (=> (not res!546349) (not e!444360))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43557 (_ BitVec 32)) Bool)

(assert (=> b!801658 (= res!546349 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun res!546342 () Bool)

(assert (=> start!68816 (=> (not res!546342) (not e!444361))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68816 (= res!546342 (validMask!0 mask!3266))))

(assert (=> start!68816 e!444361))

(assert (=> start!68816 true))

(declare-fun array_inv!16629 (array!43557) Bool)

(assert (=> start!68816 (array_inv!16629 a!3170)))

(declare-fun b!801659 () Bool)

(assert (=> b!801659 (= e!444362 e!444364)))

(declare-fun res!546346 () Bool)

(assert (=> b!801659 (=> (not res!546346) (not e!444364))))

(declare-fun lt!358403 () SeekEntryResult!8453)

(declare-fun lt!358408 () SeekEntryResult!8453)

(assert (=> b!801659 (= res!546346 (and (= lt!358408 lt!358403) (= lt!358403 (Found!8453 j!153)) (not (= (select (arr!20855 a!3170) index!1236) (select (arr!20855 a!3170) j!153)))))))

(assert (=> b!801659 (= lt!358403 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20855 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!801659 (= lt!358408 (seekEntryOrOpen!0 (select (arr!20855 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!801660 () Bool)

(declare-fun res!546348 () Bool)

(assert (=> b!801660 (=> (not res!546348) (not e!444360))))

(assert (=> b!801660 (= res!546348 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21276 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20855 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21276 a!3170)) (= (select (arr!20855 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(assert (= (and start!68816 res!546342) b!801655))

(assert (= (and b!801655 res!546339) b!801651))

(assert (= (and b!801651 res!546341) b!801653))

(assert (= (and b!801653 res!546340) b!801650))

(assert (= (and b!801650 res!546344) b!801657))

(assert (= (and b!801657 res!546345) b!801658))

(assert (= (and b!801658 res!546349) b!801656))

(assert (= (and b!801656 res!546347) b!801660))

(assert (= (and b!801660 res!546348) b!801652))

(assert (= (and b!801652 res!546343) b!801659))

(assert (= (and b!801659 res!546346) b!801654))

(declare-fun m!742985 () Bool)

(assert (=> b!801657 m!742985))

(declare-fun m!742987 () Bool)

(assert (=> b!801654 m!742987))

(assert (=> b!801654 m!742987))

(declare-fun m!742989 () Bool)

(assert (=> b!801654 m!742989))

(declare-fun m!742991 () Bool)

(assert (=> b!801654 m!742991))

(declare-fun m!742993 () Bool)

(assert (=> b!801654 m!742993))

(declare-fun m!742995 () Bool)

(assert (=> b!801654 m!742995))

(declare-fun m!742997 () Bool)

(assert (=> b!801650 m!742997))

(declare-fun m!742999 () Bool)

(assert (=> b!801652 m!742999))

(declare-fun m!743001 () Bool)

(assert (=> b!801652 m!743001))

(declare-fun m!743003 () Bool)

(assert (=> b!801652 m!743003))

(declare-fun m!743005 () Bool)

(assert (=> b!801652 m!743005))

(declare-fun m!743007 () Bool)

(assert (=> start!68816 m!743007))

(declare-fun m!743009 () Bool)

(assert (=> start!68816 m!743009))

(declare-fun m!743011 () Bool)

(assert (=> b!801653 m!743011))

(declare-fun m!743013 () Bool)

(assert (=> b!801659 m!743013))

(assert (=> b!801659 m!742987))

(assert (=> b!801659 m!742987))

(declare-fun m!743015 () Bool)

(assert (=> b!801659 m!743015))

(assert (=> b!801659 m!742987))

(declare-fun m!743017 () Bool)

(assert (=> b!801659 m!743017))

(declare-fun m!743019 () Bool)

(assert (=> b!801658 m!743019))

(assert (=> b!801651 m!742987))

(assert (=> b!801651 m!742987))

(declare-fun m!743021 () Bool)

(assert (=> b!801651 m!743021))

(declare-fun m!743023 () Bool)

(assert (=> b!801656 m!743023))

(declare-fun m!743025 () Bool)

(assert (=> b!801660 m!743025))

(declare-fun m!743027 () Bool)

(assert (=> b!801660 m!743027))

(push 1)

(assert (not b!801656))

(assert (not b!801650))

(assert (not b!801651))

(assert (not b!801659))

(assert (not b!801653))

(assert (not start!68816))

(assert (not b!801658))

