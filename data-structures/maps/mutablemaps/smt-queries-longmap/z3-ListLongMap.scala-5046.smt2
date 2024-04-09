; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68808 () Bool)

(assert start!68808)

(declare-fun b!801518 () Bool)

(declare-fun res!546215 () Bool)

(declare-fun e!444303 () Bool)

(assert (=> b!801518 (=> (not res!546215) (not e!444303))))

(declare-datatypes ((array!43549 0))(
  ( (array!43550 (arr!20851 (Array (_ BitVec 32) (_ BitVec 64))) (size!21272 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43549)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!801518 (= res!546215 (validKeyInArray!0 (select (arr!20851 a!3170) j!153)))))

(declare-fun b!801519 () Bool)

(declare-fun e!444300 () Bool)

(declare-fun e!444302 () Bool)

(assert (=> b!801519 (= e!444300 e!444302)))

(declare-fun res!546211 () Bool)

(assert (=> b!801519 (=> (not res!546211) (not e!444302))))

(declare-datatypes ((SeekEntryResult!8449 0))(
  ( (MissingZero!8449 (index!36163 (_ BitVec 32))) (Found!8449 (index!36164 (_ BitVec 32))) (Intermediate!8449 (undefined!9261 Bool) (index!36165 (_ BitVec 32)) (x!67048 (_ BitVec 32))) (Undefined!8449) (MissingVacant!8449 (index!36166 (_ BitVec 32))) )
))
(declare-fun lt!358324 () SeekEntryResult!8449)

(declare-fun lt!358319 () SeekEntryResult!8449)

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!801519 (= res!546211 (and (= lt!358324 lt!358319) (= lt!358319 (Found!8449 j!153)) (not (= (select (arr!20851 a!3170) index!1236) (select (arr!20851 a!3170) j!153)))))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43549 (_ BitVec 32)) SeekEntryResult!8449)

(assert (=> b!801519 (= lt!358319 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20851 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43549 (_ BitVec 32)) SeekEntryResult!8449)

(assert (=> b!801519 (= lt!358324 (seekEntryOrOpen!0 (select (arr!20851 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!801520 () Bool)

(assert (=> b!801520 (= e!444302 (not true))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!358321 () (_ BitVec 64))

(declare-fun lt!358322 () (_ BitVec 32))

(declare-fun lt!358320 () array!43549)

(assert (=> b!801520 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!358322 vacantAfter!23 lt!358321 lt!358320 mask!3266) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!358322 vacantBefore!23 (select (arr!20851 a!3170) j!153) a!3170 mask!3266))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-datatypes ((Unit!27440 0))(
  ( (Unit!27441) )
))
(declare-fun lt!358323 () Unit!27440)

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!43549 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27440)

(assert (=> b!801520 (= lt!358323 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3170 i!1163 k0!2044 j!153 lt!358322 (bvadd #b00000000000000000000000000000001 x!1077) vacantBefore!23 vacantAfter!23 mask!3266))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!801520 (= lt!358322 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!801521 () Bool)

(declare-fun res!546217 () Bool)

(assert (=> b!801521 (=> (not res!546217) (not e!444303))))

(assert (=> b!801521 (= res!546217 (and (= (size!21272 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21272 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21272 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!801522 () Bool)

(declare-fun res!546208 () Bool)

(declare-fun e!444301 () Bool)

(assert (=> b!801522 (=> (not res!546208) (not e!444301))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43549 (_ BitVec 32)) Bool)

(assert (=> b!801522 (= res!546208 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun res!546214 () Bool)

(assert (=> start!68808 (=> (not res!546214) (not e!444303))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68808 (= res!546214 (validMask!0 mask!3266))))

(assert (=> start!68808 e!444303))

(assert (=> start!68808 true))

(declare-fun array_inv!16625 (array!43549) Bool)

(assert (=> start!68808 (array_inv!16625 a!3170)))

(declare-fun b!801523 () Bool)

(assert (=> b!801523 (= e!444303 e!444301)))

(declare-fun res!546209 () Bool)

(assert (=> b!801523 (=> (not res!546209) (not e!444301))))

(declare-fun lt!358318 () SeekEntryResult!8449)

(assert (=> b!801523 (= res!546209 (or (= lt!358318 (MissingZero!8449 i!1163)) (= lt!358318 (MissingVacant!8449 i!1163))))))

(assert (=> b!801523 (= lt!358318 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!801524 () Bool)

(declare-fun res!546207 () Bool)

(assert (=> b!801524 (=> (not res!546207) (not e!444303))))

(assert (=> b!801524 (= res!546207 (validKeyInArray!0 k0!2044))))

(declare-fun b!801525 () Bool)

(declare-fun res!546212 () Bool)

(assert (=> b!801525 (=> (not res!546212) (not e!444301))))

(assert (=> b!801525 (= res!546212 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21272 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20851 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21272 a!3170)) (= (select (arr!20851 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!801526 () Bool)

(declare-fun res!546213 () Bool)

(assert (=> b!801526 (=> (not res!546213) (not e!444301))))

(declare-datatypes ((List!14867 0))(
  ( (Nil!14864) (Cons!14863 (h!15992 (_ BitVec 64)) (t!21190 List!14867)) )
))
(declare-fun arrayNoDuplicates!0 (array!43549 (_ BitVec 32) List!14867) Bool)

(assert (=> b!801526 (= res!546213 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14864))))

(declare-fun b!801527 () Bool)

(assert (=> b!801527 (= e!444301 e!444300)))

(declare-fun res!546216 () Bool)

(assert (=> b!801527 (=> (not res!546216) (not e!444300))))

(assert (=> b!801527 (= res!546216 (= (seekEntryOrOpen!0 lt!358321 lt!358320 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!358321 lt!358320 mask!3266)))))

(assert (=> b!801527 (= lt!358321 (select (store (arr!20851 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!801527 (= lt!358320 (array!43550 (store (arr!20851 a!3170) i!1163 k0!2044) (size!21272 a!3170)))))

(declare-fun b!801528 () Bool)

(declare-fun res!546210 () Bool)

(assert (=> b!801528 (=> (not res!546210) (not e!444303))))

(declare-fun arrayContainsKey!0 (array!43549 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!801528 (= res!546210 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(assert (= (and start!68808 res!546214) b!801521))

(assert (= (and b!801521 res!546217) b!801518))

(assert (= (and b!801518 res!546215) b!801524))

(assert (= (and b!801524 res!546207) b!801528))

(assert (= (and b!801528 res!546210) b!801523))

(assert (= (and b!801523 res!546209) b!801522))

(assert (= (and b!801522 res!546208) b!801526))

(assert (= (and b!801526 res!546213) b!801525))

(assert (= (and b!801525 res!546212) b!801527))

(assert (= (and b!801527 res!546216) b!801519))

(assert (= (and b!801519 res!546211) b!801520))

(declare-fun m!742809 () Bool)

(assert (=> b!801523 m!742809))

(declare-fun m!742811 () Bool)

(assert (=> b!801522 m!742811))

(declare-fun m!742813 () Bool)

(assert (=> b!801527 m!742813))

(declare-fun m!742815 () Bool)

(assert (=> b!801527 m!742815))

(declare-fun m!742817 () Bool)

(assert (=> b!801527 m!742817))

(declare-fun m!742819 () Bool)

(assert (=> b!801527 m!742819))

(declare-fun m!742821 () Bool)

(assert (=> b!801528 m!742821))

(declare-fun m!742823 () Bool)

(assert (=> b!801518 m!742823))

(assert (=> b!801518 m!742823))

(declare-fun m!742825 () Bool)

(assert (=> b!801518 m!742825))

(declare-fun m!742827 () Bool)

(assert (=> b!801525 m!742827))

(declare-fun m!742829 () Bool)

(assert (=> b!801525 m!742829))

(declare-fun m!742831 () Bool)

(assert (=> b!801520 m!742831))

(assert (=> b!801520 m!742823))

(declare-fun m!742833 () Bool)

(assert (=> b!801520 m!742833))

(declare-fun m!742835 () Bool)

(assert (=> b!801520 m!742835))

(assert (=> b!801520 m!742823))

(declare-fun m!742837 () Bool)

(assert (=> b!801520 m!742837))

(declare-fun m!742839 () Bool)

(assert (=> start!68808 m!742839))

(declare-fun m!742841 () Bool)

(assert (=> start!68808 m!742841))

(declare-fun m!742843 () Bool)

(assert (=> b!801524 m!742843))

(declare-fun m!742845 () Bool)

(assert (=> b!801519 m!742845))

(assert (=> b!801519 m!742823))

(assert (=> b!801519 m!742823))

(declare-fun m!742847 () Bool)

(assert (=> b!801519 m!742847))

(assert (=> b!801519 m!742823))

(declare-fun m!742849 () Bool)

(assert (=> b!801519 m!742849))

(declare-fun m!742851 () Bool)

(assert (=> b!801526 m!742851))

(check-sat (not b!801524) (not b!801528) (not b!801526) (not b!801522) (not start!68808) (not b!801527) (not b!801519) (not b!801523) (not b!801520) (not b!801518))
(check-sat)
