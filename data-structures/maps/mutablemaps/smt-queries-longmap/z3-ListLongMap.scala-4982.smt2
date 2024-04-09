; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68424 () Bool)

(assert start!68424)

(declare-fun b!794781 () Bool)

(declare-fun res!539476 () Bool)

(declare-fun e!441244 () Bool)

(assert (=> b!794781 (=> (not res!539476) (not e!441244))))

(declare-datatypes ((array!43165 0))(
  ( (array!43166 (arr!20659 (Array (_ BitVec 32) (_ BitVec 64))) (size!21080 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43165)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!794781 (= res!539476 (validKeyInArray!0 (select (arr!20659 a!3170) j!153)))))

(declare-fun b!794782 () Bool)

(declare-fun res!539477 () Bool)

(assert (=> b!794782 (=> (not res!539477) (not e!441244))))

(declare-fun k0!2044 () (_ BitVec 64))

(assert (=> b!794782 (= res!539477 (validKeyInArray!0 k0!2044))))

(declare-fun b!794783 () Bool)

(declare-fun res!539475 () Bool)

(declare-fun e!441246 () Bool)

(assert (=> b!794783 (=> (not res!539475) (not e!441246))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43165 (_ BitVec 32)) Bool)

(assert (=> b!794783 (= res!539475 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun res!539470 () Bool)

(assert (=> start!68424 (=> (not res!539470) (not e!441244))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68424 (= res!539470 (validMask!0 mask!3266))))

(assert (=> start!68424 e!441244))

(assert (=> start!68424 true))

(declare-fun array_inv!16433 (array!43165) Bool)

(assert (=> start!68424 (array_inv!16433 a!3170)))

(declare-fun b!794784 () Bool)

(assert (=> b!794784 (= e!441244 e!441246)))

(declare-fun res!539473 () Bool)

(assert (=> b!794784 (=> (not res!539473) (not e!441246))))

(declare-datatypes ((SeekEntryResult!8257 0))(
  ( (MissingZero!8257 (index!35395 (_ BitVec 32))) (Found!8257 (index!35396 (_ BitVec 32))) (Intermediate!8257 (undefined!9069 Bool) (index!35397 (_ BitVec 32)) (x!66344 (_ BitVec 32))) (Undefined!8257) (MissingVacant!8257 (index!35398 (_ BitVec 32))) )
))
(declare-fun lt!354294 () SeekEntryResult!8257)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!794784 (= res!539473 (or (= lt!354294 (MissingZero!8257 i!1163)) (= lt!354294 (MissingVacant!8257 i!1163))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43165 (_ BitVec 32)) SeekEntryResult!8257)

(assert (=> b!794784 (= lt!354294 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!794785 () Bool)

(declare-fun e!441245 () Bool)

(assert (=> b!794785 (= e!441246 e!441245)))

(declare-fun res!539479 () Bool)

(assert (=> b!794785 (=> (not res!539479) (not e!441245))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!354295 () (_ BitVec 64))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun lt!354296 () array!43165)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43165 (_ BitVec 32)) SeekEntryResult!8257)

(assert (=> b!794785 (= res!539479 (= (seekEntryOrOpen!0 lt!354295 lt!354296 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!354295 lt!354296 mask!3266)))))

(assert (=> b!794785 (= lt!354295 (select (store (arr!20659 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!794785 (= lt!354296 (array!43166 (store (arr!20659 a!3170) i!1163 k0!2044) (size!21080 a!3170)))))

(declare-fun b!794786 () Bool)

(declare-fun res!539474 () Bool)

(assert (=> b!794786 (=> (not res!539474) (not e!441244))))

(assert (=> b!794786 (= res!539474 (and (= (size!21080 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21080 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21080 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!794787 () Bool)

(declare-fun res!539478 () Bool)

(assert (=> b!794787 (=> (not res!539478) (not e!441246))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!794787 (= res!539478 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21080 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20659 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21080 a!3170)) (= (select (arr!20659 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!794788 () Bool)

(declare-fun res!539471 () Bool)

(assert (=> b!794788 (=> (not res!539471) (not e!441246))))

(declare-datatypes ((List!14675 0))(
  ( (Nil!14672) (Cons!14671 (h!15800 (_ BitVec 64)) (t!20998 List!14675)) )
))
(declare-fun arrayNoDuplicates!0 (array!43165 (_ BitVec 32) List!14675) Bool)

(assert (=> b!794788 (= res!539471 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14672))))

(declare-fun b!794789 () Bool)

(declare-fun res!539472 () Bool)

(assert (=> b!794789 (=> (not res!539472) (not e!441244))))

(declare-fun arrayContainsKey!0 (array!43165 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!794789 (= res!539472 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!794790 () Bool)

(assert (=> b!794790 (= e!441245 false)))

(declare-fun lt!354298 () SeekEntryResult!8257)

(assert (=> b!794790 (= lt!354298 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20659 a!3170) j!153) a!3170 mask!3266))))

(declare-fun lt!354297 () SeekEntryResult!8257)

(assert (=> b!794790 (= lt!354297 (seekEntryOrOpen!0 (select (arr!20659 a!3170) j!153) a!3170 mask!3266))))

(assert (= (and start!68424 res!539470) b!794786))

(assert (= (and b!794786 res!539474) b!794781))

(assert (= (and b!794781 res!539476) b!794782))

(assert (= (and b!794782 res!539477) b!794789))

(assert (= (and b!794789 res!539472) b!794784))

(assert (= (and b!794784 res!539473) b!794783))

(assert (= (and b!794783 res!539475) b!794788))

(assert (= (and b!794788 res!539471) b!794787))

(assert (= (and b!794787 res!539478) b!794785))

(assert (= (and b!794785 res!539479) b!794790))

(declare-fun m!735455 () Bool)

(assert (=> b!794790 m!735455))

(assert (=> b!794790 m!735455))

(declare-fun m!735457 () Bool)

(assert (=> b!794790 m!735457))

(assert (=> b!794790 m!735455))

(declare-fun m!735459 () Bool)

(assert (=> b!794790 m!735459))

(declare-fun m!735461 () Bool)

(assert (=> start!68424 m!735461))

(declare-fun m!735463 () Bool)

(assert (=> start!68424 m!735463))

(declare-fun m!735465 () Bool)

(assert (=> b!794785 m!735465))

(declare-fun m!735467 () Bool)

(assert (=> b!794785 m!735467))

(declare-fun m!735469 () Bool)

(assert (=> b!794785 m!735469))

(declare-fun m!735471 () Bool)

(assert (=> b!794785 m!735471))

(declare-fun m!735473 () Bool)

(assert (=> b!794783 m!735473))

(assert (=> b!794781 m!735455))

(assert (=> b!794781 m!735455))

(declare-fun m!735475 () Bool)

(assert (=> b!794781 m!735475))

(declare-fun m!735477 () Bool)

(assert (=> b!794788 m!735477))

(declare-fun m!735479 () Bool)

(assert (=> b!794789 m!735479))

(declare-fun m!735481 () Bool)

(assert (=> b!794782 m!735481))

(declare-fun m!735483 () Bool)

(assert (=> b!794784 m!735483))

(declare-fun m!735485 () Bool)

(assert (=> b!794787 m!735485))

(declare-fun m!735487 () Bool)

(assert (=> b!794787 m!735487))

(check-sat (not b!794789) (not b!794781) (not b!794788) (not start!68424) (not b!794785) (not b!794782) (not b!794790) (not b!794784) (not b!794783))
(check-sat)
