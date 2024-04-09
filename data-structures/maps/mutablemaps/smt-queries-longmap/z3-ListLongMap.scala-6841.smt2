; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!86172 () Bool)

(assert start!86172)

(declare-fun b!997455 () Bool)

(declare-fun res!667569 () Bool)

(declare-fun e!562630 () Bool)

(assert (=> b!997455 (=> (not res!667569) (not e!562630))))

(declare-fun k0!2224 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!997455 (= res!667569 (validKeyInArray!0 k0!2224))))

(declare-fun b!997456 () Bool)

(declare-fun e!562631 () Bool)

(declare-fun mask!3464 () (_ BitVec 32))

(assert (=> b!997456 (= e!562631 (bvslt mask!3464 #b00000000000000000000000000000000))))

(declare-fun b!997457 () Bool)

(declare-fun res!667571 () Bool)

(declare-fun e!562629 () Bool)

(assert (=> b!997457 (=> (not res!667571) (not e!562629))))

(declare-datatypes ((array!63078 0))(
  ( (array!63079 (arr!30365 (Array (_ BitVec 32) (_ BitVec 64))) (size!30868 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63078)

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!997457 (= res!667571 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30868 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30868 a!3219))))))

(declare-fun b!997458 () Bool)

(declare-fun res!667572 () Bool)

(assert (=> b!997458 (=> (not res!667572) (not e!562630))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!997458 (= res!667572 (and (= (size!30868 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30868 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30868 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!997459 () Bool)

(declare-fun res!667573 () Bool)

(assert (=> b!997459 (=> (not res!667573) (not e!562629))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63078 (_ BitVec 32)) Bool)

(assert (=> b!997459 (= res!667573 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun res!667576 () Bool)

(assert (=> start!86172 (=> (not res!667576) (not e!562630))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86172 (= res!667576 (validMask!0 mask!3464))))

(assert (=> start!86172 e!562630))

(declare-fun array_inv!23355 (array!63078) Bool)

(assert (=> start!86172 (array_inv!23355 a!3219)))

(assert (=> start!86172 true))

(declare-fun b!997460 () Bool)

(declare-fun res!667574 () Bool)

(assert (=> b!997460 (=> (not res!667574) (not e!562631))))

(declare-datatypes ((SeekEntryResult!9297 0))(
  ( (MissingZero!9297 (index!39558 (_ BitVec 32))) (Found!9297 (index!39559 (_ BitVec 32))) (Intermediate!9297 (undefined!10109 Bool) (index!39560 (_ BitVec 32)) (x!87020 (_ BitVec 32))) (Undefined!9297) (MissingVacant!9297 (index!39561 (_ BitVec 32))) )
))
(declare-fun lt!441431 () SeekEntryResult!9297)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63078 (_ BitVec 32)) SeekEntryResult!9297)

(assert (=> b!997460 (= res!667574 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30365 a!3219) j!170) a!3219 mask!3464) lt!441431))))

(declare-fun b!997461 () Bool)

(declare-fun res!667568 () Bool)

(assert (=> b!997461 (=> (not res!667568) (not e!562630))))

(declare-fun arrayContainsKey!0 (array!63078 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!997461 (= res!667568 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(declare-fun b!997462 () Bool)

(declare-fun res!667575 () Bool)

(assert (=> b!997462 (=> (not res!667575) (not e!562630))))

(assert (=> b!997462 (= res!667575 (validKeyInArray!0 (select (arr!30365 a!3219) j!170)))))

(declare-fun b!997463 () Bool)

(assert (=> b!997463 (= e!562629 e!562631)))

(declare-fun res!667570 () Bool)

(assert (=> b!997463 (=> (not res!667570) (not e!562631))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!997463 (= res!667570 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30365 a!3219) j!170) mask!3464) (select (arr!30365 a!3219) j!170) a!3219 mask!3464) lt!441431))))

(assert (=> b!997463 (= lt!441431 (Intermediate!9297 false resIndex!38 resX!38))))

(declare-fun b!997464 () Bool)

(declare-fun res!667567 () Bool)

(assert (=> b!997464 (=> (not res!667567) (not e!562629))))

(declare-datatypes ((List!21167 0))(
  ( (Nil!21164) (Cons!21163 (h!22331 (_ BitVec 64)) (t!30176 List!21167)) )
))
(declare-fun arrayNoDuplicates!0 (array!63078 (_ BitVec 32) List!21167) Bool)

(assert (=> b!997464 (= res!667567 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21164))))

(declare-fun b!997465 () Bool)

(assert (=> b!997465 (= e!562630 e!562629)))

(declare-fun res!667566 () Bool)

(assert (=> b!997465 (=> (not res!667566) (not e!562629))))

(declare-fun lt!441432 () SeekEntryResult!9297)

(assert (=> b!997465 (= res!667566 (or (= lt!441432 (MissingVacant!9297 i!1194)) (= lt!441432 (MissingZero!9297 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63078 (_ BitVec 32)) SeekEntryResult!9297)

(assert (=> b!997465 (= lt!441432 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(assert (= (and start!86172 res!667576) b!997458))

(assert (= (and b!997458 res!667572) b!997462))

(assert (= (and b!997462 res!667575) b!997455))

(assert (= (and b!997455 res!667569) b!997461))

(assert (= (and b!997461 res!667568) b!997465))

(assert (= (and b!997465 res!667566) b!997459))

(assert (= (and b!997459 res!667573) b!997464))

(assert (= (and b!997464 res!667567) b!997457))

(assert (= (and b!997457 res!667571) b!997463))

(assert (= (and b!997463 res!667570) b!997460))

(assert (= (and b!997460 res!667574) b!997456))

(declare-fun m!924357 () Bool)

(assert (=> b!997459 m!924357))

(declare-fun m!924359 () Bool)

(assert (=> b!997465 m!924359))

(declare-fun m!924361 () Bool)

(assert (=> b!997463 m!924361))

(assert (=> b!997463 m!924361))

(declare-fun m!924363 () Bool)

(assert (=> b!997463 m!924363))

(assert (=> b!997463 m!924363))

(assert (=> b!997463 m!924361))

(declare-fun m!924365 () Bool)

(assert (=> b!997463 m!924365))

(declare-fun m!924367 () Bool)

(assert (=> b!997455 m!924367))

(declare-fun m!924369 () Bool)

(assert (=> b!997461 m!924369))

(assert (=> b!997460 m!924361))

(assert (=> b!997460 m!924361))

(declare-fun m!924371 () Bool)

(assert (=> b!997460 m!924371))

(assert (=> b!997462 m!924361))

(assert (=> b!997462 m!924361))

(declare-fun m!924373 () Bool)

(assert (=> b!997462 m!924373))

(declare-fun m!924375 () Bool)

(assert (=> start!86172 m!924375))

(declare-fun m!924377 () Bool)

(assert (=> start!86172 m!924377))

(declare-fun m!924379 () Bool)

(assert (=> b!997464 m!924379))

(check-sat (not b!997461) (not start!86172) (not b!997460) (not b!997455) (not b!997462) (not b!997463) (not b!997465) (not b!997464) (not b!997459))
(check-sat)
