; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!86826 () Bool)

(assert start!86826)

(declare-fun b!1006230 () Bool)

(declare-fun res!675476 () Bool)

(declare-fun e!566435 () Bool)

(assert (=> b!1006230 (=> (not res!675476) (not e!566435))))

(declare-datatypes ((array!63477 0))(
  ( (array!63478 (arr!30557 (Array (_ BitVec 32) (_ BitVec 64))) (size!31060 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63477)

(declare-datatypes ((List!21359 0))(
  ( (Nil!21356) (Cons!21355 (h!22538 (_ BitVec 64)) (t!30368 List!21359)) )
))
(declare-fun arrayNoDuplicates!0 (array!63477 (_ BitVec 32) List!21359) Bool)

(assert (=> b!1006230 (= res!675476 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21356))))

(declare-fun b!1006231 () Bool)

(declare-fun res!675482 () Bool)

(declare-fun e!566437 () Bool)

(assert (=> b!1006231 (=> (not res!675482) (not e!566437))))

(declare-fun k0!2224 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1006231 (= res!675482 (validKeyInArray!0 k0!2224))))

(declare-fun b!1006232 () Bool)

(declare-fun res!675481 () Bool)

(assert (=> b!1006232 (=> (not res!675481) (not e!566435))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63477 (_ BitVec 32)) Bool)

(assert (=> b!1006232 (= res!675481 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1006233 () Bool)

(declare-fun res!675475 () Bool)

(declare-fun e!566436 () Bool)

(assert (=> b!1006233 (=> (not res!675475) (not e!566436))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!9489 0))(
  ( (MissingZero!9489 (index!40326 (_ BitVec 32))) (Found!9489 (index!40327 (_ BitVec 32))) (Intermediate!9489 (undefined!10301 Bool) (index!40328 (_ BitVec 32)) (x!87754 (_ BitVec 32))) (Undefined!9489) (MissingVacant!9489 (index!40329 (_ BitVec 32))) )
))
(declare-fun lt!444713 () SeekEntryResult!9489)

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63477 (_ BitVec 32)) SeekEntryResult!9489)

(assert (=> b!1006233 (= res!675475 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30557 a!3219) j!170) a!3219 mask!3464) lt!444713))))

(declare-fun b!1006234 () Bool)

(assert (=> b!1006234 (= e!566436 false)))

(declare-fun i!1194 () (_ BitVec 32))

(declare-fun lt!444712 () SeekEntryResult!9489)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1006234 (= lt!444712 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!30557 a!3219) i!1194 k0!2224) j!170) mask!3464) (select (store (arr!30557 a!3219) i!1194 k0!2224) j!170) (array!63478 (store (arr!30557 a!3219) i!1194 k0!2224) (size!31060 a!3219)) mask!3464))))

(declare-fun b!1006235 () Bool)

(assert (=> b!1006235 (= e!566437 e!566435)))

(declare-fun res!675474 () Bool)

(assert (=> b!1006235 (=> (not res!675474) (not e!566435))))

(declare-fun lt!444714 () SeekEntryResult!9489)

(assert (=> b!1006235 (= res!675474 (or (= lt!444714 (MissingVacant!9489 i!1194)) (= lt!444714 (MissingZero!9489 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63477 (_ BitVec 32)) SeekEntryResult!9489)

(assert (=> b!1006235 (= lt!444714 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(declare-fun b!1006236 () Bool)

(declare-fun res!675484 () Bool)

(assert (=> b!1006236 (=> (not res!675484) (not e!566435))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1006236 (= res!675484 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31060 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31060 a!3219))))))

(declare-fun res!675479 () Bool)

(assert (=> start!86826 (=> (not res!675479) (not e!566437))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86826 (= res!675479 (validMask!0 mask!3464))))

(assert (=> start!86826 e!566437))

(declare-fun array_inv!23547 (array!63477) Bool)

(assert (=> start!86826 (array_inv!23547 a!3219)))

(assert (=> start!86826 true))

(declare-fun b!1006237 () Bool)

(declare-fun res!675480 () Bool)

(assert (=> b!1006237 (=> (not res!675480) (not e!566437))))

(assert (=> b!1006237 (= res!675480 (and (= (size!31060 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31060 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31060 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1006238 () Bool)

(assert (=> b!1006238 (= e!566435 e!566436)))

(declare-fun res!675478 () Bool)

(assert (=> b!1006238 (=> (not res!675478) (not e!566436))))

(assert (=> b!1006238 (= res!675478 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30557 a!3219) j!170) mask!3464) (select (arr!30557 a!3219) j!170) a!3219 mask!3464) lt!444713))))

(assert (=> b!1006238 (= lt!444713 (Intermediate!9489 false resIndex!38 resX!38))))

(declare-fun b!1006239 () Bool)

(declare-fun res!675477 () Bool)

(assert (=> b!1006239 (=> (not res!675477) (not e!566437))))

(declare-fun arrayContainsKey!0 (array!63477 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1006239 (= res!675477 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1006240 () Bool)

(declare-fun res!675483 () Bool)

(assert (=> b!1006240 (=> (not res!675483) (not e!566437))))

(assert (=> b!1006240 (= res!675483 (validKeyInArray!0 (select (arr!30557 a!3219) j!170)))))

(assert (= (and start!86826 res!675479) b!1006237))

(assert (= (and b!1006237 res!675480) b!1006240))

(assert (= (and b!1006240 res!675483) b!1006231))

(assert (= (and b!1006231 res!675482) b!1006239))

(assert (= (and b!1006239 res!675477) b!1006235))

(assert (= (and b!1006235 res!675474) b!1006232))

(assert (= (and b!1006232 res!675481) b!1006230))

(assert (= (and b!1006230 res!675476) b!1006236))

(assert (= (and b!1006236 res!675484) b!1006238))

(assert (= (and b!1006238 res!675478) b!1006233))

(assert (= (and b!1006233 res!675475) b!1006234))

(declare-fun m!931445 () Bool)

(assert (=> b!1006233 m!931445))

(assert (=> b!1006233 m!931445))

(declare-fun m!931447 () Bool)

(assert (=> b!1006233 m!931447))

(declare-fun m!931449 () Bool)

(assert (=> b!1006232 m!931449))

(declare-fun m!931451 () Bool)

(assert (=> start!86826 m!931451))

(declare-fun m!931453 () Bool)

(assert (=> start!86826 m!931453))

(declare-fun m!931455 () Bool)

(assert (=> b!1006230 m!931455))

(declare-fun m!931457 () Bool)

(assert (=> b!1006231 m!931457))

(declare-fun m!931459 () Bool)

(assert (=> b!1006239 m!931459))

(declare-fun m!931461 () Bool)

(assert (=> b!1006234 m!931461))

(declare-fun m!931463 () Bool)

(assert (=> b!1006234 m!931463))

(assert (=> b!1006234 m!931463))

(declare-fun m!931465 () Bool)

(assert (=> b!1006234 m!931465))

(assert (=> b!1006234 m!931465))

(assert (=> b!1006234 m!931463))

(declare-fun m!931467 () Bool)

(assert (=> b!1006234 m!931467))

(assert (=> b!1006240 m!931445))

(assert (=> b!1006240 m!931445))

(declare-fun m!931469 () Bool)

(assert (=> b!1006240 m!931469))

(declare-fun m!931471 () Bool)

(assert (=> b!1006235 m!931471))

(assert (=> b!1006238 m!931445))

(assert (=> b!1006238 m!931445))

(declare-fun m!931473 () Bool)

(assert (=> b!1006238 m!931473))

(assert (=> b!1006238 m!931473))

(assert (=> b!1006238 m!931445))

(declare-fun m!931475 () Bool)

(assert (=> b!1006238 m!931475))

(check-sat (not b!1006240) (not b!1006232) (not b!1006230) (not b!1006238) (not start!86826) (not b!1006231) (not b!1006235) (not b!1006239) (not b!1006234) (not b!1006233))
(check-sat)
