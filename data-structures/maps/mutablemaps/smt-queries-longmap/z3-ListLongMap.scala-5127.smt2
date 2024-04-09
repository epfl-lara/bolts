; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!69666 () Bool)

(assert start!69666)

(declare-fun b!811274 () Bool)

(declare-fun e!449056 () Bool)

(declare-fun e!449053 () Bool)

(assert (=> b!811274 (= e!449056 e!449053)))

(declare-fun res!554488 () Bool)

(assert (=> b!811274 (=> (not res!554488) (not e!449053))))

(declare-datatypes ((SeekEntryResult!8692 0))(
  ( (MissingZero!8692 (index!37138 (_ BitVec 32))) (Found!8692 (index!37139 (_ BitVec 32))) (Intermediate!8692 (undefined!9504 Bool) (index!37140 (_ BitVec 32)) (x!67978 (_ BitVec 32))) (Undefined!8692) (MissingVacant!8692 (index!37141 (_ BitVec 32))) )
))
(declare-fun lt!363757 () SeekEntryResult!8692)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!811274 (= res!554488 (or (= lt!363757 (MissingZero!8692 i!1163)) (= lt!363757 (MissingVacant!8692 i!1163))))))

(declare-datatypes ((array!44056 0))(
  ( (array!44057 (arr!21094 (Array (_ BitVec 32) (_ BitVec 64))) (size!21515 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!44056)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!44056 (_ BitVec 32)) SeekEntryResult!8692)

(assert (=> b!811274 (= lt!363757 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!811276 () Bool)

(declare-fun e!449052 () Bool)

(assert (=> b!811276 (= e!449052 (not true))))

(declare-fun lt!363756 () (_ BitVec 32))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!363759 () array!44056)

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun lt!363758 () (_ BitVec 64))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!44056 (_ BitVec 32)) SeekEntryResult!8692)

(assert (=> b!811276 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!363756 vacantAfter!23 lt!363758 lt!363759 mask!3266) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!363756 vacantBefore!23 (select (arr!21094 a!3170) j!153) a!3170 mask!3266))))

(declare-datatypes ((Unit!27646 0))(
  ( (Unit!27647) )
))
(declare-fun lt!363754 () Unit!27646)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!44056 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27646)

(assert (=> b!811276 (= lt!363754 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3170 i!1163 k0!2044 j!153 lt!363756 (bvadd #b00000000000000000000000000000001 x!1077) vacantBefore!23 vacantAfter!23 mask!3266))))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!811276 (= lt!363756 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!811277 () Bool)

(declare-fun res!554487 () Bool)

(assert (=> b!811277 (=> (not res!554487) (not e!449056))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!811277 (= res!554487 (validKeyInArray!0 (select (arr!21094 a!3170) j!153)))))

(declare-fun b!811278 () Bool)

(declare-fun e!449054 () Bool)

(assert (=> b!811278 (= e!449053 e!449054)))

(declare-fun res!554492 () Bool)

(assert (=> b!811278 (=> (not res!554492) (not e!449054))))

(assert (=> b!811278 (= res!554492 (= (seekEntryOrOpen!0 lt!363758 lt!363759 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!363758 lt!363759 mask!3266)))))

(assert (=> b!811278 (= lt!363758 (select (store (arr!21094 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!811278 (= lt!363759 (array!44057 (store (arr!21094 a!3170) i!1163 k0!2044) (size!21515 a!3170)))))

(declare-fun b!811279 () Bool)

(declare-fun res!554490 () Bool)

(assert (=> b!811279 (=> (not res!554490) (not e!449053))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44056 (_ BitVec 32)) Bool)

(assert (=> b!811279 (= res!554490 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!811280 () Bool)

(declare-fun res!554495 () Bool)

(assert (=> b!811280 (=> (not res!554495) (not e!449053))))

(declare-datatypes ((List!15110 0))(
  ( (Nil!15107) (Cons!15106 (h!16235 (_ BitVec 64)) (t!21433 List!15110)) )
))
(declare-fun arrayNoDuplicates!0 (array!44056 (_ BitVec 32) List!15110) Bool)

(assert (=> b!811280 (= res!554495 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15107))))

(declare-fun b!811275 () Bool)

(assert (=> b!811275 (= e!449054 e!449052)))

(declare-fun res!554497 () Bool)

(assert (=> b!811275 (=> (not res!554497) (not e!449052))))

(declare-fun lt!363755 () SeekEntryResult!8692)

(declare-fun lt!363760 () SeekEntryResult!8692)

(assert (=> b!811275 (= res!554497 (and (= lt!363755 lt!363760) (= lt!363760 (Found!8692 j!153)) (not (= (select (arr!21094 a!3170) index!1236) (select (arr!21094 a!3170) j!153)))))))

(assert (=> b!811275 (= lt!363760 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21094 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!811275 (= lt!363755 (seekEntryOrOpen!0 (select (arr!21094 a!3170) j!153) a!3170 mask!3266))))

(declare-fun res!554491 () Bool)

(assert (=> start!69666 (=> (not res!554491) (not e!449056))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69666 (= res!554491 (validMask!0 mask!3266))))

(assert (=> start!69666 e!449056))

(assert (=> start!69666 true))

(declare-fun array_inv!16868 (array!44056) Bool)

(assert (=> start!69666 (array_inv!16868 a!3170)))

(declare-fun b!811281 () Bool)

(declare-fun res!554494 () Bool)

(assert (=> b!811281 (=> (not res!554494) (not e!449056))))

(declare-fun arrayContainsKey!0 (array!44056 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!811281 (= res!554494 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!811282 () Bool)

(declare-fun res!554493 () Bool)

(assert (=> b!811282 (=> (not res!554493) (not e!449056))))

(assert (=> b!811282 (= res!554493 (and (= (size!21515 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21515 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21515 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!811283 () Bool)

(declare-fun res!554496 () Bool)

(assert (=> b!811283 (=> (not res!554496) (not e!449053))))

(assert (=> b!811283 (= res!554496 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21515 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!21094 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21515 a!3170)) (= (select (arr!21094 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!811284 () Bool)

(declare-fun res!554489 () Bool)

(assert (=> b!811284 (=> (not res!554489) (not e!449056))))

(assert (=> b!811284 (= res!554489 (validKeyInArray!0 k0!2044))))

(assert (= (and start!69666 res!554491) b!811282))

(assert (= (and b!811282 res!554493) b!811277))

(assert (= (and b!811277 res!554487) b!811284))

(assert (= (and b!811284 res!554489) b!811281))

(assert (= (and b!811281 res!554494) b!811274))

(assert (= (and b!811274 res!554488) b!811279))

(assert (= (and b!811279 res!554490) b!811280))

(assert (= (and b!811280 res!554495) b!811283))

(assert (= (and b!811283 res!554496) b!811278))

(assert (= (and b!811278 res!554492) b!811275))

(assert (= (and b!811275 res!554497) b!811276))

(declare-fun m!753717 () Bool)

(assert (=> b!811276 m!753717))

(declare-fun m!753719 () Bool)

(assert (=> b!811276 m!753719))

(declare-fun m!753721 () Bool)

(assert (=> b!811276 m!753721))

(declare-fun m!753723 () Bool)

(assert (=> b!811276 m!753723))

(assert (=> b!811276 m!753717))

(declare-fun m!753725 () Bool)

(assert (=> b!811276 m!753725))

(declare-fun m!753727 () Bool)

(assert (=> b!811283 m!753727))

(declare-fun m!753729 () Bool)

(assert (=> b!811283 m!753729))

(declare-fun m!753731 () Bool)

(assert (=> start!69666 m!753731))

(declare-fun m!753733 () Bool)

(assert (=> start!69666 m!753733))

(assert (=> b!811277 m!753717))

(assert (=> b!811277 m!753717))

(declare-fun m!753735 () Bool)

(assert (=> b!811277 m!753735))

(declare-fun m!753737 () Bool)

(assert (=> b!811280 m!753737))

(declare-fun m!753739 () Bool)

(assert (=> b!811279 m!753739))

(declare-fun m!753741 () Bool)

(assert (=> b!811278 m!753741))

(declare-fun m!753743 () Bool)

(assert (=> b!811278 m!753743))

(declare-fun m!753745 () Bool)

(assert (=> b!811278 m!753745))

(declare-fun m!753747 () Bool)

(assert (=> b!811278 m!753747))

(declare-fun m!753749 () Bool)

(assert (=> b!811274 m!753749))

(declare-fun m!753751 () Bool)

(assert (=> b!811275 m!753751))

(assert (=> b!811275 m!753717))

(assert (=> b!811275 m!753717))

(declare-fun m!753753 () Bool)

(assert (=> b!811275 m!753753))

(assert (=> b!811275 m!753717))

(declare-fun m!753755 () Bool)

(assert (=> b!811275 m!753755))

(declare-fun m!753757 () Bool)

(assert (=> b!811284 m!753757))

(declare-fun m!753759 () Bool)

(assert (=> b!811281 m!753759))

(check-sat (not b!811274) (not b!811276) (not b!811284) (not b!811277) (not b!811279) (not b!811281) (not b!811275) (not b!811280) (not start!69666) (not b!811278))
(check-sat)
