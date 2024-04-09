; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86834 () Bool)

(assert start!86834)

(declare-fun b!1006362 () Bool)

(declare-fun res!675606 () Bool)

(declare-fun e!566483 () Bool)

(assert (=> b!1006362 (=> (not res!675606) (not e!566483))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(declare-datatypes ((array!63485 0))(
  ( (array!63486 (arr!30561 (Array (_ BitVec 32) (_ BitVec 64))) (size!31064 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63485)

(assert (=> b!1006362 (= res!675606 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31064 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31064 a!3219))))))

(declare-fun b!1006363 () Bool)

(declare-fun e!566484 () Bool)

(assert (=> b!1006363 (= e!566484 e!566483)))

(declare-fun res!675613 () Bool)

(assert (=> b!1006363 (=> (not res!675613) (not e!566483))))

(declare-datatypes ((SeekEntryResult!9493 0))(
  ( (MissingZero!9493 (index!40342 (_ BitVec 32))) (Found!9493 (index!40343 (_ BitVec 32))) (Intermediate!9493 (undefined!10305 Bool) (index!40344 (_ BitVec 32)) (x!87766 (_ BitVec 32))) (Undefined!9493) (MissingVacant!9493 (index!40345 (_ BitVec 32))) )
))
(declare-fun lt!444748 () SeekEntryResult!9493)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1006363 (= res!675613 (or (= lt!444748 (MissingVacant!9493 i!1194)) (= lt!444748 (MissingZero!9493 i!1194))))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63485 (_ BitVec 32)) SeekEntryResult!9493)

(assert (=> b!1006363 (= lt!444748 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1006364 () Bool)

(declare-fun e!566486 () Bool)

(assert (=> b!1006364 (= e!566483 e!566486)))

(declare-fun res!675607 () Bool)

(assert (=> b!1006364 (=> (not res!675607) (not e!566486))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun lt!444749 () SeekEntryResult!9493)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63485 (_ BitVec 32)) SeekEntryResult!9493)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1006364 (= res!675607 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30561 a!3219) j!170) mask!3464) (select (arr!30561 a!3219) j!170) a!3219 mask!3464) lt!444749))))

(assert (=> b!1006364 (= lt!444749 (Intermediate!9493 false resIndex!38 resX!38))))

(declare-fun b!1006365 () Bool)

(declare-fun res!675610 () Bool)

(assert (=> b!1006365 (=> (not res!675610) (not e!566484))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1006365 (= res!675610 (validKeyInArray!0 (select (arr!30561 a!3219) j!170)))))

(declare-fun b!1006367 () Bool)

(declare-fun res!675616 () Bool)

(assert (=> b!1006367 (=> (not res!675616) (not e!566483))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63485 (_ BitVec 32)) Bool)

(assert (=> b!1006367 (= res!675616 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1006368 () Bool)

(declare-fun res!675614 () Bool)

(assert (=> b!1006368 (=> (not res!675614) (not e!566484))))

(assert (=> b!1006368 (= res!675614 (and (= (size!31064 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31064 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31064 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1006369 () Bool)

(declare-fun res!675611 () Bool)

(assert (=> b!1006369 (=> (not res!675611) (not e!566484))))

(assert (=> b!1006369 (= res!675611 (validKeyInArray!0 k!2224))))

(declare-fun b!1006370 () Bool)

(assert (=> b!1006370 (= e!566486 false)))

(declare-fun lt!444750 () SeekEntryResult!9493)

(assert (=> b!1006370 (= lt!444750 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!30561 a!3219) i!1194 k!2224) j!170) mask!3464) (select (store (arr!30561 a!3219) i!1194 k!2224) j!170) (array!63486 (store (arr!30561 a!3219) i!1194 k!2224) (size!31064 a!3219)) mask!3464))))

(declare-fun b!1006371 () Bool)

(declare-fun res!675608 () Bool)

(assert (=> b!1006371 (=> (not res!675608) (not e!566484))))

(declare-fun arrayContainsKey!0 (array!63485 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1006371 (= res!675608 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1006372 () Bool)

(declare-fun res!675615 () Bool)

(assert (=> b!1006372 (=> (not res!675615) (not e!566483))))

(declare-datatypes ((List!21363 0))(
  ( (Nil!21360) (Cons!21359 (h!22542 (_ BitVec 64)) (t!30372 List!21363)) )
))
(declare-fun arrayNoDuplicates!0 (array!63485 (_ BitVec 32) List!21363) Bool)

(assert (=> b!1006372 (= res!675615 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21360))))

(declare-fun res!675612 () Bool)

(assert (=> start!86834 (=> (not res!675612) (not e!566484))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86834 (= res!675612 (validMask!0 mask!3464))))

(assert (=> start!86834 e!566484))

(declare-fun array_inv!23551 (array!63485) Bool)

(assert (=> start!86834 (array_inv!23551 a!3219)))

(assert (=> start!86834 true))

(declare-fun b!1006366 () Bool)

(declare-fun res!675609 () Bool)

(assert (=> b!1006366 (=> (not res!675609) (not e!566486))))

(assert (=> b!1006366 (= res!675609 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30561 a!3219) j!170) a!3219 mask!3464) lt!444749))))

(assert (= (and start!86834 res!675612) b!1006368))

(assert (= (and b!1006368 res!675614) b!1006365))

(assert (= (and b!1006365 res!675610) b!1006369))

(assert (= (and b!1006369 res!675611) b!1006371))

(assert (= (and b!1006371 res!675608) b!1006363))

(assert (= (and b!1006363 res!675613) b!1006367))

(assert (= (and b!1006367 res!675616) b!1006372))

(assert (= (and b!1006372 res!675615) b!1006362))

(assert (= (and b!1006362 res!675606) b!1006364))

(assert (= (and b!1006364 res!675607) b!1006366))

(assert (= (and b!1006366 res!675609) b!1006370))

(declare-fun m!931573 () Bool)

(assert (=> b!1006370 m!931573))

(declare-fun m!931575 () Bool)

(assert (=> b!1006370 m!931575))

(assert (=> b!1006370 m!931575))

(declare-fun m!931577 () Bool)

(assert (=> b!1006370 m!931577))

(assert (=> b!1006370 m!931577))

(assert (=> b!1006370 m!931575))

(declare-fun m!931579 () Bool)

(assert (=> b!1006370 m!931579))

(declare-fun m!931581 () Bool)

(assert (=> b!1006364 m!931581))

(assert (=> b!1006364 m!931581))

(declare-fun m!931583 () Bool)

(assert (=> b!1006364 m!931583))

(assert (=> b!1006364 m!931583))

(assert (=> b!1006364 m!931581))

(declare-fun m!931585 () Bool)

(assert (=> b!1006364 m!931585))

(assert (=> b!1006366 m!931581))

(assert (=> b!1006366 m!931581))

(declare-fun m!931587 () Bool)

(assert (=> b!1006366 m!931587))

(declare-fun m!931589 () Bool)

(assert (=> start!86834 m!931589))

(declare-fun m!931591 () Bool)

(assert (=> start!86834 m!931591))

(declare-fun m!931593 () Bool)

(assert (=> b!1006372 m!931593))

(declare-fun m!931595 () Bool)

(assert (=> b!1006371 m!931595))

(declare-fun m!931597 () Bool)

(assert (=> b!1006363 m!931597))

(declare-fun m!931599 () Bool)

(assert (=> b!1006369 m!931599))

(declare-fun m!931601 () Bool)

(assert (=> b!1006367 m!931601))

(assert (=> b!1006365 m!931581))

(assert (=> b!1006365 m!931581))

(declare-fun m!931603 () Bool)

(assert (=> b!1006365 m!931603))

(push 1)

(assert (not b!1006366))

(assert (not b!1006369))

(assert (not b!1006367))

(assert (not start!86834))

