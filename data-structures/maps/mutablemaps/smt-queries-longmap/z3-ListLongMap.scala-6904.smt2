; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!86820 () Bool)

(assert start!86820)

(declare-fun b!1006131 () Bool)

(declare-fun e!566401 () Bool)

(declare-fun e!566402 () Bool)

(assert (=> b!1006131 (= e!566401 e!566402)))

(declare-fun res!675384 () Bool)

(assert (=> b!1006131 (=> (not res!675384) (not e!566402))))

(declare-datatypes ((SeekEntryResult!9486 0))(
  ( (MissingZero!9486 (index!40314 (_ BitVec 32))) (Found!9486 (index!40315 (_ BitVec 32))) (Intermediate!9486 (undefined!10298 Bool) (index!40316 (_ BitVec 32)) (x!87743 (_ BitVec 32))) (Undefined!9486) (MissingVacant!9486 (index!40317 (_ BitVec 32))) )
))
(declare-fun lt!444686 () SeekEntryResult!9486)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1006131 (= res!675384 (or (= lt!444686 (MissingVacant!9486 i!1194)) (= lt!444686 (MissingZero!9486 i!1194))))))

(declare-datatypes ((array!63471 0))(
  ( (array!63472 (arr!30554 (Array (_ BitVec 32) (_ BitVec 64))) (size!31057 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63471)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun k0!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63471 (_ BitVec 32)) SeekEntryResult!9486)

(assert (=> b!1006131 (= lt!444686 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(declare-fun b!1006132 () Bool)

(declare-fun res!675376 () Bool)

(assert (=> b!1006132 (=> (not res!675376) (not e!566402))))

(declare-datatypes ((List!21356 0))(
  ( (Nil!21353) (Cons!21352 (h!22535 (_ BitVec 64)) (t!30365 List!21356)) )
))
(declare-fun arrayNoDuplicates!0 (array!63471 (_ BitVec 32) List!21356) Bool)

(assert (=> b!1006132 (= res!675376 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21353))))

(declare-fun b!1006133 () Bool)

(declare-fun res!675385 () Bool)

(assert (=> b!1006133 (=> (not res!675385) (not e!566401))))

(declare-fun j!170 () (_ BitVec 32))

(assert (=> b!1006133 (= res!675385 (and (= (size!31057 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31057 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31057 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1006134 () Bool)

(declare-fun res!675383 () Bool)

(assert (=> b!1006134 (=> (not res!675383) (not e!566401))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1006134 (= res!675383 (validKeyInArray!0 (select (arr!30554 a!3219) j!170)))))

(declare-fun res!675375 () Bool)

(assert (=> start!86820 (=> (not res!675375) (not e!566401))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86820 (= res!675375 (validMask!0 mask!3464))))

(assert (=> start!86820 e!566401))

(declare-fun array_inv!23544 (array!63471) Bool)

(assert (=> start!86820 (array_inv!23544 a!3219)))

(assert (=> start!86820 true))

(declare-fun b!1006135 () Bool)

(declare-fun e!566399 () Bool)

(assert (=> b!1006135 (= e!566399 false)))

(declare-fun lt!444687 () SeekEntryResult!9486)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63471 (_ BitVec 32)) SeekEntryResult!9486)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1006135 (= lt!444687 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!30554 a!3219) i!1194 k0!2224) j!170) mask!3464) (select (store (arr!30554 a!3219) i!1194 k0!2224) j!170) (array!63472 (store (arr!30554 a!3219) i!1194 k0!2224) (size!31057 a!3219)) mask!3464))))

(declare-fun b!1006136 () Bool)

(declare-fun res!675380 () Bool)

(assert (=> b!1006136 (=> (not res!675380) (not e!566401))))

(assert (=> b!1006136 (= res!675380 (validKeyInArray!0 k0!2224))))

(declare-fun b!1006137 () Bool)

(declare-fun res!675378 () Bool)

(assert (=> b!1006137 (=> (not res!675378) (not e!566401))))

(declare-fun arrayContainsKey!0 (array!63471 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1006137 (= res!675378 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1006138 () Bool)

(assert (=> b!1006138 (= e!566402 e!566399)))

(declare-fun res!675381 () Bool)

(assert (=> b!1006138 (=> (not res!675381) (not e!566399))))

(declare-fun lt!444685 () SeekEntryResult!9486)

(assert (=> b!1006138 (= res!675381 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30554 a!3219) j!170) mask!3464) (select (arr!30554 a!3219) j!170) a!3219 mask!3464) lt!444685))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1006138 (= lt!444685 (Intermediate!9486 false resIndex!38 resX!38))))

(declare-fun b!1006139 () Bool)

(declare-fun res!675379 () Bool)

(assert (=> b!1006139 (=> (not res!675379) (not e!566402))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63471 (_ BitVec 32)) Bool)

(assert (=> b!1006139 (= res!675379 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1006140 () Bool)

(declare-fun res!675377 () Bool)

(assert (=> b!1006140 (=> (not res!675377) (not e!566399))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun x!1245 () (_ BitVec 32))

(assert (=> b!1006140 (= res!675377 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30554 a!3219) j!170) a!3219 mask!3464) lt!444685))))

(declare-fun b!1006141 () Bool)

(declare-fun res!675382 () Bool)

(assert (=> b!1006141 (=> (not res!675382) (not e!566402))))

(assert (=> b!1006141 (= res!675382 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31057 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31057 a!3219))))))

(assert (= (and start!86820 res!675375) b!1006133))

(assert (= (and b!1006133 res!675385) b!1006134))

(assert (= (and b!1006134 res!675383) b!1006136))

(assert (= (and b!1006136 res!675380) b!1006137))

(assert (= (and b!1006137 res!675378) b!1006131))

(assert (= (and b!1006131 res!675384) b!1006139))

(assert (= (and b!1006139 res!675379) b!1006132))

(assert (= (and b!1006132 res!675376) b!1006141))

(assert (= (and b!1006141 res!675382) b!1006138))

(assert (= (and b!1006138 res!675381) b!1006140))

(assert (= (and b!1006140 res!675377) b!1006135))

(declare-fun m!931349 () Bool)

(assert (=> b!1006134 m!931349))

(assert (=> b!1006134 m!931349))

(declare-fun m!931351 () Bool)

(assert (=> b!1006134 m!931351))

(declare-fun m!931353 () Bool)

(assert (=> b!1006132 m!931353))

(declare-fun m!931355 () Bool)

(assert (=> b!1006135 m!931355))

(declare-fun m!931357 () Bool)

(assert (=> b!1006135 m!931357))

(assert (=> b!1006135 m!931357))

(declare-fun m!931359 () Bool)

(assert (=> b!1006135 m!931359))

(assert (=> b!1006135 m!931359))

(assert (=> b!1006135 m!931357))

(declare-fun m!931361 () Bool)

(assert (=> b!1006135 m!931361))

(declare-fun m!931363 () Bool)

(assert (=> b!1006136 m!931363))

(declare-fun m!931365 () Bool)

(assert (=> b!1006137 m!931365))

(assert (=> b!1006138 m!931349))

(assert (=> b!1006138 m!931349))

(declare-fun m!931367 () Bool)

(assert (=> b!1006138 m!931367))

(assert (=> b!1006138 m!931367))

(assert (=> b!1006138 m!931349))

(declare-fun m!931369 () Bool)

(assert (=> b!1006138 m!931369))

(declare-fun m!931371 () Bool)

(assert (=> start!86820 m!931371))

(declare-fun m!931373 () Bool)

(assert (=> start!86820 m!931373))

(declare-fun m!931375 () Bool)

(assert (=> b!1006131 m!931375))

(assert (=> b!1006140 m!931349))

(assert (=> b!1006140 m!931349))

(declare-fun m!931377 () Bool)

(assert (=> b!1006140 m!931377))

(declare-fun m!931379 () Bool)

(assert (=> b!1006139 m!931379))

(check-sat (not b!1006139) (not b!1006138) (not b!1006134) (not b!1006136) (not b!1006135) (not b!1006137) (not b!1006132) (not b!1006140) (not b!1006131) (not start!86820))
(check-sat)
