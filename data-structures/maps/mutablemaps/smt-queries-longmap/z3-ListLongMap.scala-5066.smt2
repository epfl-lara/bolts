; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68928 () Bool)

(assert start!68928)

(declare-fun b!803579 () Bool)

(declare-fun res!548272 () Bool)

(declare-fun e!445285 () Bool)

(assert (=> b!803579 (=> (not res!548272) (not e!445285))))

(declare-datatypes ((array!43669 0))(
  ( (array!43670 (arr!20911 (Array (_ BitVec 32) (_ BitVec 64))) (size!21332 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43669)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!803579 (= res!548272 (validKeyInArray!0 (select (arr!20911 a!3170) j!153)))))

(declare-fun b!803580 () Bool)

(declare-fun e!445282 () Bool)

(declare-fun e!445284 () Bool)

(assert (=> b!803580 (= e!445282 e!445284)))

(declare-fun res!548277 () Bool)

(assert (=> b!803580 (=> (not res!548277) (not e!445284))))

(declare-datatypes ((SeekEntryResult!8509 0))(
  ( (MissingZero!8509 (index!36403 (_ BitVec 32))) (Found!8509 (index!36404 (_ BitVec 32))) (Intermediate!8509 (undefined!9321 Bool) (index!36405 (_ BitVec 32)) (x!67268 (_ BitVec 32))) (Undefined!8509) (MissingVacant!8509 (index!36406 (_ BitVec 32))) )
))
(declare-fun lt!359773 () SeekEntryResult!8509)

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun lt!359768 () SeekEntryResult!8509)

(assert (=> b!803580 (= res!548277 (and (= lt!359773 lt!359768) (= lt!359768 (Found!8509 j!153)) (not (= (select (arr!20911 a!3170) index!1236) (select (arr!20911 a!3170) j!153)))))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43669 (_ BitVec 32)) SeekEntryResult!8509)

(assert (=> b!803580 (= lt!359768 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20911 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43669 (_ BitVec 32)) SeekEntryResult!8509)

(assert (=> b!803580 (= lt!359773 (seekEntryOrOpen!0 (select (arr!20911 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!803581 () Bool)

(declare-fun res!548269 () Bool)

(assert (=> b!803581 (=> (not res!548269) (not e!445285))))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!803581 (= res!548269 (and (= (size!21332 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21332 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21332 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!803582 () Bool)

(declare-fun res!548273 () Bool)

(declare-fun e!445281 () Bool)

(assert (=> b!803582 (=> (not res!548273) (not e!445281))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43669 (_ BitVec 32)) Bool)

(assert (=> b!803582 (= res!548273 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!803583 () Bool)

(declare-fun res!548278 () Bool)

(assert (=> b!803583 (=> (not res!548278) (not e!445281))))

(declare-datatypes ((List!14927 0))(
  ( (Nil!14924) (Cons!14923 (h!16052 (_ BitVec 64)) (t!21250 List!14927)) )
))
(declare-fun arrayNoDuplicates!0 (array!43669 (_ BitVec 32) List!14927) Bool)

(assert (=> b!803583 (= res!548278 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14924))))

(declare-fun b!803584 () Bool)

(assert (=> b!803584 (= e!445284 (not true))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!359769 () (_ BitVec 32))

(declare-fun lt!359767 () (_ BitVec 64))

(declare-fun lt!359771 () array!43669)

(assert (=> b!803584 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!359769 vacantAfter!23 lt!359767 lt!359771 mask!3266) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!359769 vacantBefore!23 (select (arr!20911 a!3170) j!153) a!3170 mask!3266))))

(declare-datatypes ((Unit!27560 0))(
  ( (Unit!27561) )
))
(declare-fun lt!359770 () Unit!27560)

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!43669 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27560)

(assert (=> b!803584 (= lt!359770 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3170 i!1163 k0!2044 j!153 lt!359769 (bvadd #b00000000000000000000000000000001 x!1077) vacantBefore!23 vacantAfter!23 mask!3266))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!803584 (= lt!359769 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!803585 () Bool)

(declare-fun res!548275 () Bool)

(assert (=> b!803585 (=> (not res!548275) (not e!445285))))

(declare-fun arrayContainsKey!0 (array!43669 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!803585 (= res!548275 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun res!548271 () Bool)

(assert (=> start!68928 (=> (not res!548271) (not e!445285))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68928 (= res!548271 (validMask!0 mask!3266))))

(assert (=> start!68928 e!445285))

(assert (=> start!68928 true))

(declare-fun array_inv!16685 (array!43669) Bool)

(assert (=> start!68928 (array_inv!16685 a!3170)))

(declare-fun b!803586 () Bool)

(declare-fun res!548276 () Bool)

(assert (=> b!803586 (=> (not res!548276) (not e!445281))))

(assert (=> b!803586 (= res!548276 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21332 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20911 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21332 a!3170)) (= (select (arr!20911 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!803587 () Bool)

(assert (=> b!803587 (= e!445285 e!445281)))

(declare-fun res!548270 () Bool)

(assert (=> b!803587 (=> (not res!548270) (not e!445281))))

(declare-fun lt!359772 () SeekEntryResult!8509)

(assert (=> b!803587 (= res!548270 (or (= lt!359772 (MissingZero!8509 i!1163)) (= lt!359772 (MissingVacant!8509 i!1163))))))

(assert (=> b!803587 (= lt!359772 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!803588 () Bool)

(declare-fun res!548268 () Bool)

(assert (=> b!803588 (=> (not res!548268) (not e!445285))))

(assert (=> b!803588 (= res!548268 (validKeyInArray!0 k0!2044))))

(declare-fun b!803589 () Bool)

(assert (=> b!803589 (= e!445281 e!445282)))

(declare-fun res!548274 () Bool)

(assert (=> b!803589 (=> (not res!548274) (not e!445282))))

(assert (=> b!803589 (= res!548274 (= (seekEntryOrOpen!0 lt!359767 lt!359771 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!359767 lt!359771 mask!3266)))))

(assert (=> b!803589 (= lt!359767 (select (store (arr!20911 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!803589 (= lt!359771 (array!43670 (store (arr!20911 a!3170) i!1163 k0!2044) (size!21332 a!3170)))))

(assert (= (and start!68928 res!548271) b!803581))

(assert (= (and b!803581 res!548269) b!803579))

(assert (= (and b!803579 res!548272) b!803588))

(assert (= (and b!803588 res!548268) b!803585))

(assert (= (and b!803585 res!548275) b!803587))

(assert (= (and b!803587 res!548270) b!803582))

(assert (= (and b!803582 res!548273) b!803583))

(assert (= (and b!803583 res!548278) b!803586))

(assert (= (and b!803586 res!548276) b!803589))

(assert (= (and b!803589 res!548274) b!803580))

(assert (= (and b!803580 res!548277) b!803584))

(declare-fun m!745485 () Bool)

(assert (=> b!803585 m!745485))

(declare-fun m!745487 () Bool)

(assert (=> b!803584 m!745487))

(declare-fun m!745489 () Bool)

(assert (=> b!803584 m!745489))

(declare-fun m!745491 () Bool)

(assert (=> b!803584 m!745491))

(assert (=> b!803584 m!745487))

(declare-fun m!745493 () Bool)

(assert (=> b!803584 m!745493))

(declare-fun m!745495 () Bool)

(assert (=> b!803584 m!745495))

(declare-fun m!745497 () Bool)

(assert (=> b!803580 m!745497))

(assert (=> b!803580 m!745487))

(assert (=> b!803580 m!745487))

(declare-fun m!745499 () Bool)

(assert (=> b!803580 m!745499))

(assert (=> b!803580 m!745487))

(declare-fun m!745501 () Bool)

(assert (=> b!803580 m!745501))

(declare-fun m!745503 () Bool)

(assert (=> b!803589 m!745503))

(declare-fun m!745505 () Bool)

(assert (=> b!803589 m!745505))

(declare-fun m!745507 () Bool)

(assert (=> b!803589 m!745507))

(declare-fun m!745509 () Bool)

(assert (=> b!803589 m!745509))

(assert (=> b!803579 m!745487))

(assert (=> b!803579 m!745487))

(declare-fun m!745511 () Bool)

(assert (=> b!803579 m!745511))

(declare-fun m!745513 () Bool)

(assert (=> b!803587 m!745513))

(declare-fun m!745515 () Bool)

(assert (=> b!803586 m!745515))

(declare-fun m!745517 () Bool)

(assert (=> b!803586 m!745517))

(declare-fun m!745519 () Bool)

(assert (=> b!803588 m!745519))

(declare-fun m!745521 () Bool)

(assert (=> b!803582 m!745521))

(declare-fun m!745523 () Bool)

(assert (=> b!803583 m!745523))

(declare-fun m!745525 () Bool)

(assert (=> start!68928 m!745525))

(declare-fun m!745527 () Bool)

(assert (=> start!68928 m!745527))

(check-sat (not b!803589) (not b!803588) (not b!803582) (not b!803585) (not b!803580) (not b!803579) (not start!68928) (not b!803587) (not b!803584) (not b!803583))
(check-sat)
