; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!86832 () Bool)

(assert start!86832)

(declare-fun b!1006329 () Bool)

(declare-fun e!566471 () Bool)

(declare-fun e!566473 () Bool)

(assert (=> b!1006329 (= e!566471 e!566473)))

(declare-fun res!675573 () Bool)

(assert (=> b!1006329 (=> (not res!675573) (not e!566473))))

(declare-datatypes ((SeekEntryResult!9492 0))(
  ( (MissingZero!9492 (index!40338 (_ BitVec 32))) (Found!9492 (index!40339 (_ BitVec 32))) (Intermediate!9492 (undefined!10304 Bool) (index!40340 (_ BitVec 32)) (x!87765 (_ BitVec 32))) (Undefined!9492) (MissingVacant!9492 (index!40341 (_ BitVec 32))) )
))
(declare-fun lt!444741 () SeekEntryResult!9492)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1006329 (= res!675573 (or (= lt!444741 (MissingVacant!9492 i!1194)) (= lt!444741 (MissingZero!9492 i!1194))))))

(declare-datatypes ((array!63483 0))(
  ( (array!63484 (arr!30560 (Array (_ BitVec 32) (_ BitVec 64))) (size!31063 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63483)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun k0!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63483 (_ BitVec 32)) SeekEntryResult!9492)

(assert (=> b!1006329 (= lt!444741 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(declare-fun b!1006330 () Bool)

(declare-fun res!675575 () Bool)

(assert (=> b!1006330 (=> (not res!675575) (not e!566473))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63483 (_ BitVec 32)) Bool)

(assert (=> b!1006330 (= res!675575 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1006331 () Bool)

(declare-fun e!566472 () Bool)

(assert (=> b!1006331 (= e!566472 false)))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun lt!444739 () SeekEntryResult!9492)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63483 (_ BitVec 32)) SeekEntryResult!9492)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1006331 (= lt!444739 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!30560 a!3219) i!1194 k0!2224) j!170) mask!3464) (select (store (arr!30560 a!3219) i!1194 k0!2224) j!170) (array!63484 (store (arr!30560 a!3219) i!1194 k0!2224) (size!31063 a!3219)) mask!3464))))

(declare-fun b!1006332 () Bool)

(declare-fun res!675579 () Bool)

(assert (=> b!1006332 (=> (not res!675579) (not e!566471))))

(assert (=> b!1006332 (= res!675579 (and (= (size!31063 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31063 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31063 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1006333 () Bool)

(declare-fun res!675576 () Bool)

(assert (=> b!1006333 (=> (not res!675576) (not e!566473))))

(declare-datatypes ((List!21362 0))(
  ( (Nil!21359) (Cons!21358 (h!22541 (_ BitVec 64)) (t!30371 List!21362)) )
))
(declare-fun arrayNoDuplicates!0 (array!63483 (_ BitVec 32) List!21362) Bool)

(assert (=> b!1006333 (= res!675576 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21359))))

(declare-fun res!675583 () Bool)

(assert (=> start!86832 (=> (not res!675583) (not e!566471))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86832 (= res!675583 (validMask!0 mask!3464))))

(assert (=> start!86832 e!566471))

(declare-fun array_inv!23550 (array!63483) Bool)

(assert (=> start!86832 (array_inv!23550 a!3219)))

(assert (=> start!86832 true))

(declare-fun b!1006334 () Bool)

(declare-fun res!675578 () Bool)

(assert (=> b!1006334 (=> (not res!675578) (not e!566471))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1006334 (= res!675578 (validKeyInArray!0 k0!2224))))

(declare-fun b!1006335 () Bool)

(declare-fun res!675580 () Bool)

(assert (=> b!1006335 (=> (not res!675580) (not e!566471))))

(assert (=> b!1006335 (= res!675580 (validKeyInArray!0 (select (arr!30560 a!3219) j!170)))))

(declare-fun b!1006336 () Bool)

(assert (=> b!1006336 (= e!566473 e!566472)))

(declare-fun res!675582 () Bool)

(assert (=> b!1006336 (=> (not res!675582) (not e!566472))))

(declare-fun lt!444740 () SeekEntryResult!9492)

(assert (=> b!1006336 (= res!675582 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30560 a!3219) j!170) mask!3464) (select (arr!30560 a!3219) j!170) a!3219 mask!3464) lt!444740))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1006336 (= lt!444740 (Intermediate!9492 false resIndex!38 resX!38))))

(declare-fun b!1006337 () Bool)

(declare-fun res!675581 () Bool)

(assert (=> b!1006337 (=> (not res!675581) (not e!566472))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun x!1245 () (_ BitVec 32))

(assert (=> b!1006337 (= res!675581 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30560 a!3219) j!170) a!3219 mask!3464) lt!444740))))

(declare-fun b!1006338 () Bool)

(declare-fun res!675577 () Bool)

(assert (=> b!1006338 (=> (not res!675577) (not e!566473))))

(assert (=> b!1006338 (= res!675577 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31063 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31063 a!3219))))))

(declare-fun b!1006339 () Bool)

(declare-fun res!675574 () Bool)

(assert (=> b!1006339 (=> (not res!675574) (not e!566471))))

(declare-fun arrayContainsKey!0 (array!63483 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1006339 (= res!675574 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(assert (= (and start!86832 res!675583) b!1006332))

(assert (= (and b!1006332 res!675579) b!1006335))

(assert (= (and b!1006335 res!675580) b!1006334))

(assert (= (and b!1006334 res!675578) b!1006339))

(assert (= (and b!1006339 res!675574) b!1006329))

(assert (= (and b!1006329 res!675573) b!1006330))

(assert (= (and b!1006330 res!675575) b!1006333))

(assert (= (and b!1006333 res!675576) b!1006338))

(assert (= (and b!1006338 res!675577) b!1006336))

(assert (= (and b!1006336 res!675582) b!1006337))

(assert (= (and b!1006337 res!675581) b!1006331))

(declare-fun m!931541 () Bool)

(assert (=> b!1006336 m!931541))

(assert (=> b!1006336 m!931541))

(declare-fun m!931543 () Bool)

(assert (=> b!1006336 m!931543))

(assert (=> b!1006336 m!931543))

(assert (=> b!1006336 m!931541))

(declare-fun m!931545 () Bool)

(assert (=> b!1006336 m!931545))

(declare-fun m!931547 () Bool)

(assert (=> b!1006331 m!931547))

(declare-fun m!931549 () Bool)

(assert (=> b!1006331 m!931549))

(assert (=> b!1006331 m!931549))

(declare-fun m!931551 () Bool)

(assert (=> b!1006331 m!931551))

(assert (=> b!1006331 m!931551))

(assert (=> b!1006331 m!931549))

(declare-fun m!931553 () Bool)

(assert (=> b!1006331 m!931553))

(declare-fun m!931555 () Bool)

(assert (=> b!1006329 m!931555))

(declare-fun m!931557 () Bool)

(assert (=> b!1006334 m!931557))

(declare-fun m!931559 () Bool)

(assert (=> b!1006339 m!931559))

(assert (=> b!1006337 m!931541))

(assert (=> b!1006337 m!931541))

(declare-fun m!931561 () Bool)

(assert (=> b!1006337 m!931561))

(assert (=> b!1006335 m!931541))

(assert (=> b!1006335 m!931541))

(declare-fun m!931563 () Bool)

(assert (=> b!1006335 m!931563))

(declare-fun m!931565 () Bool)

(assert (=> start!86832 m!931565))

(declare-fun m!931567 () Bool)

(assert (=> start!86832 m!931567))

(declare-fun m!931569 () Bool)

(assert (=> b!1006330 m!931569))

(declare-fun m!931571 () Bool)

(assert (=> b!1006333 m!931571))

(check-sat (not b!1006333) (not b!1006339) (not b!1006329) (not b!1006337) (not b!1006336) (not start!86832) (not b!1006334) (not b!1006330) (not b!1006335) (not b!1006331))
(check-sat)
