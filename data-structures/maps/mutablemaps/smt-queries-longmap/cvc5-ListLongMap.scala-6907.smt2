; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86836 () Bool)

(assert start!86836)

(declare-fun b!1006395 () Bool)

(declare-fun res!675642 () Bool)

(declare-fun e!566495 () Bool)

(assert (=> b!1006395 (=> (not res!675642) (not e!566495))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1006395 (= res!675642 (validKeyInArray!0 k!2224))))

(declare-fun b!1006396 () Bool)

(declare-fun res!675648 () Bool)

(declare-fun e!566497 () Bool)

(assert (=> b!1006396 (=> (not res!675648) (not e!566497))))

(declare-datatypes ((array!63487 0))(
  ( (array!63488 (arr!30562 (Array (_ BitVec 32) (_ BitVec 64))) (size!31065 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63487)

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1006396 (= res!675648 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31065 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31065 a!3219))))))

(declare-fun b!1006398 () Bool)

(declare-fun res!675644 () Bool)

(assert (=> b!1006398 (=> (not res!675644) (not e!566497))))

(declare-datatypes ((List!21364 0))(
  ( (Nil!21361) (Cons!21360 (h!22543 (_ BitVec 64)) (t!30373 List!21364)) )
))
(declare-fun arrayNoDuplicates!0 (array!63487 (_ BitVec 32) List!21364) Bool)

(assert (=> b!1006398 (= res!675644 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21361))))

(declare-fun b!1006399 () Bool)

(declare-fun res!675639 () Bool)

(assert (=> b!1006399 (=> (not res!675639) (not e!566495))))

(declare-fun arrayContainsKey!0 (array!63487 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1006399 (= res!675639 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1006400 () Bool)

(declare-fun e!566496 () Bool)

(assert (=> b!1006400 (= e!566496 false)))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!9494 0))(
  ( (MissingZero!9494 (index!40346 (_ BitVec 32))) (Found!9494 (index!40347 (_ BitVec 32))) (Intermediate!9494 (undefined!10306 Bool) (index!40348 (_ BitVec 32)) (x!87775 (_ BitVec 32))) (Undefined!9494) (MissingVacant!9494 (index!40349 (_ BitVec 32))) )
))
(declare-fun lt!444757 () SeekEntryResult!9494)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63487 (_ BitVec 32)) SeekEntryResult!9494)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1006400 (= lt!444757 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!30562 a!3219) i!1194 k!2224) j!170) mask!3464) (select (store (arr!30562 a!3219) i!1194 k!2224) j!170) (array!63488 (store (arr!30562 a!3219) i!1194 k!2224) (size!31065 a!3219)) mask!3464))))

(declare-fun b!1006401 () Bool)

(declare-fun res!675646 () Bool)

(assert (=> b!1006401 (=> (not res!675646) (not e!566497))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63487 (_ BitVec 32)) Bool)

(assert (=> b!1006401 (= res!675646 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1006402 () Bool)

(assert (=> b!1006402 (= e!566495 e!566497)))

(declare-fun res!675643 () Bool)

(assert (=> b!1006402 (=> (not res!675643) (not e!566497))))

(declare-fun lt!444759 () SeekEntryResult!9494)

(assert (=> b!1006402 (= res!675643 (or (= lt!444759 (MissingVacant!9494 i!1194)) (= lt!444759 (MissingZero!9494 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63487 (_ BitVec 32)) SeekEntryResult!9494)

(assert (=> b!1006402 (= lt!444759 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1006403 () Bool)

(assert (=> b!1006403 (= e!566497 e!566496)))

(declare-fun res!675649 () Bool)

(assert (=> b!1006403 (=> (not res!675649) (not e!566496))))

(declare-fun lt!444758 () SeekEntryResult!9494)

(assert (=> b!1006403 (= res!675649 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30562 a!3219) j!170) mask!3464) (select (arr!30562 a!3219) j!170) a!3219 mask!3464) lt!444758))))

(assert (=> b!1006403 (= lt!444758 (Intermediate!9494 false resIndex!38 resX!38))))

(declare-fun b!1006404 () Bool)

(declare-fun res!675647 () Bool)

(assert (=> b!1006404 (=> (not res!675647) (not e!566495))))

(assert (=> b!1006404 (= res!675647 (and (= (size!31065 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31065 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31065 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1006405 () Bool)

(declare-fun res!675645 () Bool)

(assert (=> b!1006405 (=> (not res!675645) (not e!566495))))

(assert (=> b!1006405 (= res!675645 (validKeyInArray!0 (select (arr!30562 a!3219) j!170)))))

(declare-fun b!1006397 () Bool)

(declare-fun res!675641 () Bool)

(assert (=> b!1006397 (=> (not res!675641) (not e!566496))))

(assert (=> b!1006397 (= res!675641 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30562 a!3219) j!170) a!3219 mask!3464) lt!444758))))

(declare-fun res!675640 () Bool)

(assert (=> start!86836 (=> (not res!675640) (not e!566495))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86836 (= res!675640 (validMask!0 mask!3464))))

(assert (=> start!86836 e!566495))

(declare-fun array_inv!23552 (array!63487) Bool)

(assert (=> start!86836 (array_inv!23552 a!3219)))

(assert (=> start!86836 true))

(assert (= (and start!86836 res!675640) b!1006404))

(assert (= (and b!1006404 res!675647) b!1006405))

(assert (= (and b!1006405 res!675645) b!1006395))

(assert (= (and b!1006395 res!675642) b!1006399))

(assert (= (and b!1006399 res!675639) b!1006402))

(assert (= (and b!1006402 res!675643) b!1006401))

(assert (= (and b!1006401 res!675646) b!1006398))

(assert (= (and b!1006398 res!675644) b!1006396))

(assert (= (and b!1006396 res!675648) b!1006403))

(assert (= (and b!1006403 res!675649) b!1006397))

(assert (= (and b!1006397 res!675641) b!1006400))

(declare-fun m!931605 () Bool)

(assert (=> b!1006397 m!931605))

(assert (=> b!1006397 m!931605))

(declare-fun m!931607 () Bool)

(assert (=> b!1006397 m!931607))

(declare-fun m!931609 () Bool)

(assert (=> b!1006400 m!931609))

(declare-fun m!931611 () Bool)

(assert (=> b!1006400 m!931611))

(assert (=> b!1006400 m!931611))

(declare-fun m!931613 () Bool)

(assert (=> b!1006400 m!931613))

(assert (=> b!1006400 m!931613))

(assert (=> b!1006400 m!931611))

(declare-fun m!931615 () Bool)

(assert (=> b!1006400 m!931615))

(declare-fun m!931617 () Bool)

(assert (=> b!1006398 m!931617))

(declare-fun m!931619 () Bool)

(assert (=> start!86836 m!931619))

(declare-fun m!931621 () Bool)

(assert (=> start!86836 m!931621))

(declare-fun m!931623 () Bool)

(assert (=> b!1006399 m!931623))

(declare-fun m!931625 () Bool)

(assert (=> b!1006395 m!931625))

(assert (=> b!1006405 m!931605))

(assert (=> b!1006405 m!931605))

(declare-fun m!931627 () Bool)

(assert (=> b!1006405 m!931627))

(declare-fun m!931629 () Bool)

(assert (=> b!1006402 m!931629))

(assert (=> b!1006403 m!931605))

(assert (=> b!1006403 m!931605))

(declare-fun m!931631 () Bool)

(assert (=> b!1006403 m!931631))

(assert (=> b!1006403 m!931631))

(assert (=> b!1006403 m!931605))

(declare-fun m!931633 () Bool)

(assert (=> b!1006403 m!931633))

(declare-fun m!931635 () Bool)

(assert (=> b!1006401 m!931635))

(push 1)

