; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86830 () Bool)

(assert start!86830)

(declare-fun b!1006296 () Bool)

(declare-fun e!566459 () Bool)

(declare-fun e!566460 () Bool)

(assert (=> b!1006296 (= e!566459 e!566460)))

(declare-fun res!675550 () Bool)

(assert (=> b!1006296 (=> (not res!675550) (not e!566460))))

(declare-datatypes ((array!63481 0))(
  ( (array!63482 (arr!30559 (Array (_ BitVec 32) (_ BitVec 64))) (size!31062 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63481)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun j!170 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!9491 0))(
  ( (MissingZero!9491 (index!40334 (_ BitVec 32))) (Found!9491 (index!40335 (_ BitVec 32))) (Intermediate!9491 (undefined!10303 Bool) (index!40336 (_ BitVec 32)) (x!87764 (_ BitVec 32))) (Undefined!9491) (MissingVacant!9491 (index!40337 (_ BitVec 32))) )
))
(declare-fun lt!444730 () SeekEntryResult!9491)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63481 (_ BitVec 32)) SeekEntryResult!9491)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1006296 (= res!675550 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30559 a!3219) j!170) mask!3464) (select (arr!30559 a!3219) j!170) a!3219 mask!3464) lt!444730))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1006296 (= lt!444730 (Intermediate!9491 false resIndex!38 resX!38))))

(declare-fun b!1006297 () Bool)

(assert (=> b!1006297 (= e!566460 false)))

(declare-fun i!1194 () (_ BitVec 32))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun lt!444732 () SeekEntryResult!9491)

(assert (=> b!1006297 (= lt!444732 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!30559 a!3219) i!1194 k!2224) j!170) mask!3464) (select (store (arr!30559 a!3219) i!1194 k!2224) j!170) (array!63482 (store (arr!30559 a!3219) i!1194 k!2224) (size!31062 a!3219)) mask!3464))))

(declare-fun b!1006298 () Bool)

(declare-fun e!566462 () Bool)

(assert (=> b!1006298 (= e!566462 e!566459)))

(declare-fun res!675541 () Bool)

(assert (=> b!1006298 (=> (not res!675541) (not e!566459))))

(declare-fun lt!444731 () SeekEntryResult!9491)

(assert (=> b!1006298 (= res!675541 (or (= lt!444731 (MissingVacant!9491 i!1194)) (= lt!444731 (MissingZero!9491 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63481 (_ BitVec 32)) SeekEntryResult!9491)

(assert (=> b!1006298 (= lt!444731 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun res!675542 () Bool)

(assert (=> start!86830 (=> (not res!675542) (not e!566462))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86830 (= res!675542 (validMask!0 mask!3464))))

(assert (=> start!86830 e!566462))

(declare-fun array_inv!23549 (array!63481) Bool)

(assert (=> start!86830 (array_inv!23549 a!3219)))

(assert (=> start!86830 true))

(declare-fun b!1006299 () Bool)

(declare-fun res!675546 () Bool)

(assert (=> b!1006299 (=> (not res!675546) (not e!566459))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(assert (=> b!1006299 (= res!675546 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31062 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31062 a!3219))))))

(declare-fun b!1006300 () Bool)

(declare-fun res!675547 () Bool)

(assert (=> b!1006300 (=> (not res!675547) (not e!566460))))

(assert (=> b!1006300 (= res!675547 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30559 a!3219) j!170) a!3219 mask!3464) lt!444730))))

(declare-fun b!1006301 () Bool)

(declare-fun res!675543 () Bool)

(assert (=> b!1006301 (=> (not res!675543) (not e!566462))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1006301 (= res!675543 (validKeyInArray!0 k!2224))))

(declare-fun b!1006302 () Bool)

(declare-fun res!675544 () Bool)

(assert (=> b!1006302 (=> (not res!675544) (not e!566459))))

(declare-datatypes ((List!21361 0))(
  ( (Nil!21358) (Cons!21357 (h!22540 (_ BitVec 64)) (t!30370 List!21361)) )
))
(declare-fun arrayNoDuplicates!0 (array!63481 (_ BitVec 32) List!21361) Bool)

(assert (=> b!1006302 (= res!675544 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21358))))

(declare-fun b!1006303 () Bool)

(declare-fun res!675548 () Bool)

(assert (=> b!1006303 (=> (not res!675548) (not e!566462))))

(assert (=> b!1006303 (= res!675548 (validKeyInArray!0 (select (arr!30559 a!3219) j!170)))))

(declare-fun b!1006304 () Bool)

(declare-fun res!675545 () Bool)

(assert (=> b!1006304 (=> (not res!675545) (not e!566459))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63481 (_ BitVec 32)) Bool)

(assert (=> b!1006304 (= res!675545 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1006305 () Bool)

(declare-fun res!675540 () Bool)

(assert (=> b!1006305 (=> (not res!675540) (not e!566462))))

(declare-fun arrayContainsKey!0 (array!63481 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1006305 (= res!675540 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1006306 () Bool)

(declare-fun res!675549 () Bool)

(assert (=> b!1006306 (=> (not res!675549) (not e!566462))))

(assert (=> b!1006306 (= res!675549 (and (= (size!31062 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31062 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31062 a!3219)) (not (= i!1194 j!170))))))

(assert (= (and start!86830 res!675542) b!1006306))

(assert (= (and b!1006306 res!675549) b!1006303))

(assert (= (and b!1006303 res!675548) b!1006301))

(assert (= (and b!1006301 res!675543) b!1006305))

(assert (= (and b!1006305 res!675540) b!1006298))

(assert (= (and b!1006298 res!675541) b!1006304))

(assert (= (and b!1006304 res!675545) b!1006302))

(assert (= (and b!1006302 res!675544) b!1006299))

(assert (= (and b!1006299 res!675546) b!1006296))

(assert (= (and b!1006296 res!675550) b!1006300))

(assert (= (and b!1006300 res!675547) b!1006297))

(declare-fun m!931509 () Bool)

(assert (=> b!1006300 m!931509))

(assert (=> b!1006300 m!931509))

(declare-fun m!931511 () Bool)

(assert (=> b!1006300 m!931511))

(declare-fun m!931513 () Bool)

(assert (=> b!1006304 m!931513))

(declare-fun m!931515 () Bool)

(assert (=> start!86830 m!931515))

(declare-fun m!931517 () Bool)

(assert (=> start!86830 m!931517))

(assert (=> b!1006296 m!931509))

(assert (=> b!1006296 m!931509))

(declare-fun m!931519 () Bool)

(assert (=> b!1006296 m!931519))

(assert (=> b!1006296 m!931519))

(assert (=> b!1006296 m!931509))

(declare-fun m!931521 () Bool)

(assert (=> b!1006296 m!931521))

(declare-fun m!931523 () Bool)

(assert (=> b!1006301 m!931523))

(assert (=> b!1006303 m!931509))

(assert (=> b!1006303 m!931509))

(declare-fun m!931525 () Bool)

(assert (=> b!1006303 m!931525))

(declare-fun m!931527 () Bool)

(assert (=> b!1006305 m!931527))

(declare-fun m!931529 () Bool)

(assert (=> b!1006297 m!931529))

(declare-fun m!931531 () Bool)

(assert (=> b!1006297 m!931531))

(assert (=> b!1006297 m!931531))

(declare-fun m!931533 () Bool)

(assert (=> b!1006297 m!931533))

(assert (=> b!1006297 m!931533))

(assert (=> b!1006297 m!931531))

(declare-fun m!931535 () Bool)

(assert (=> b!1006297 m!931535))

(declare-fun m!931537 () Bool)

(assert (=> b!1006302 m!931537))

(declare-fun m!931539 () Bool)

(assert (=> b!1006298 m!931539))

(push 1)

