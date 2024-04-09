; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86822 () Bool)

(assert start!86822)

(declare-fun b!1006164 () Bool)

(declare-fun res!675409 () Bool)

(declare-fun e!566414 () Bool)

(assert (=> b!1006164 (=> (not res!675409) (not e!566414))))

(declare-datatypes ((array!63473 0))(
  ( (array!63474 (arr!30555 (Array (_ BitVec 32) (_ BitVec 64))) (size!31058 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63473)

(declare-fun j!170 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!9487 0))(
  ( (MissingZero!9487 (index!40318 (_ BitVec 32))) (Found!9487 (index!40319 (_ BitVec 32))) (Intermediate!9487 (undefined!10299 Bool) (index!40320 (_ BitVec 32)) (x!87744 (_ BitVec 32))) (Undefined!9487) (MissingVacant!9487 (index!40321 (_ BitVec 32))) )
))
(declare-fun lt!444695 () SeekEntryResult!9487)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63473 (_ BitVec 32)) SeekEntryResult!9487)

(assert (=> b!1006164 (= res!675409 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30555 a!3219) j!170) a!3219 mask!3464) lt!444695))))

(declare-fun b!1006165 () Bool)

(assert (=> b!1006165 (= e!566414 false)))

(declare-fun i!1194 () (_ BitVec 32))

(declare-fun lt!444694 () SeekEntryResult!9487)

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1006165 (= lt!444694 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!30555 a!3219) i!1194 k!2224) j!170) mask!3464) (select (store (arr!30555 a!3219) i!1194 k!2224) j!170) (array!63474 (store (arr!30555 a!3219) i!1194 k!2224) (size!31058 a!3219)) mask!3464))))

(declare-fun b!1006166 () Bool)

(declare-fun res!675408 () Bool)

(declare-fun e!566411 () Bool)

(assert (=> b!1006166 (=> (not res!675408) (not e!566411))))

(assert (=> b!1006166 (= res!675408 (and (= (size!31058 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31058 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31058 a!3219)) (not (= i!1194 j!170))))))

(declare-fun res!675418 () Bool)

(assert (=> start!86822 (=> (not res!675418) (not e!566411))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86822 (= res!675418 (validMask!0 mask!3464))))

(assert (=> start!86822 e!566411))

(declare-fun array_inv!23545 (array!63473) Bool)

(assert (=> start!86822 (array_inv!23545 a!3219)))

(assert (=> start!86822 true))

(declare-fun b!1006167 () Bool)

(declare-fun res!675412 () Bool)

(assert (=> b!1006167 (=> (not res!675412) (not e!566411))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1006167 (= res!675412 (validKeyInArray!0 (select (arr!30555 a!3219) j!170)))))

(declare-fun b!1006168 () Bool)

(declare-fun res!675417 () Bool)

(declare-fun e!566412 () Bool)

(assert (=> b!1006168 (=> (not res!675417) (not e!566412))))

(declare-datatypes ((List!21357 0))(
  ( (Nil!21354) (Cons!21353 (h!22536 (_ BitVec 64)) (t!30366 List!21357)) )
))
(declare-fun arrayNoDuplicates!0 (array!63473 (_ BitVec 32) List!21357) Bool)

(assert (=> b!1006168 (= res!675417 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21354))))

(declare-fun b!1006169 () Bool)

(assert (=> b!1006169 (= e!566412 e!566414)))

(declare-fun res!675414 () Bool)

(assert (=> b!1006169 (=> (not res!675414) (not e!566414))))

(assert (=> b!1006169 (= res!675414 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30555 a!3219) j!170) mask!3464) (select (arr!30555 a!3219) j!170) a!3219 mask!3464) lt!444695))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1006169 (= lt!444695 (Intermediate!9487 false resIndex!38 resX!38))))

(declare-fun b!1006170 () Bool)

(declare-fun res!675416 () Bool)

(assert (=> b!1006170 (=> (not res!675416) (not e!566412))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63473 (_ BitVec 32)) Bool)

(assert (=> b!1006170 (= res!675416 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1006171 () Bool)

(assert (=> b!1006171 (= e!566411 e!566412)))

(declare-fun res!675411 () Bool)

(assert (=> b!1006171 (=> (not res!675411) (not e!566412))))

(declare-fun lt!444696 () SeekEntryResult!9487)

(assert (=> b!1006171 (= res!675411 (or (= lt!444696 (MissingVacant!9487 i!1194)) (= lt!444696 (MissingZero!9487 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63473 (_ BitVec 32)) SeekEntryResult!9487)

(assert (=> b!1006171 (= lt!444696 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1006172 () Bool)

(declare-fun res!675410 () Bool)

(assert (=> b!1006172 (=> (not res!675410) (not e!566411))))

(assert (=> b!1006172 (= res!675410 (validKeyInArray!0 k!2224))))

(declare-fun b!1006173 () Bool)

(declare-fun res!675415 () Bool)

(assert (=> b!1006173 (=> (not res!675415) (not e!566412))))

(assert (=> b!1006173 (= res!675415 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31058 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31058 a!3219))))))

(declare-fun b!1006174 () Bool)

(declare-fun res!675413 () Bool)

(assert (=> b!1006174 (=> (not res!675413) (not e!566411))))

(declare-fun arrayContainsKey!0 (array!63473 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1006174 (= res!675413 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(assert (= (and start!86822 res!675418) b!1006166))

(assert (= (and b!1006166 res!675408) b!1006167))

(assert (= (and b!1006167 res!675412) b!1006172))

(assert (= (and b!1006172 res!675410) b!1006174))

(assert (= (and b!1006174 res!675413) b!1006171))

(assert (= (and b!1006171 res!675411) b!1006170))

(assert (= (and b!1006170 res!675416) b!1006168))

(assert (= (and b!1006168 res!675417) b!1006173))

(assert (= (and b!1006173 res!675415) b!1006169))

(assert (= (and b!1006169 res!675414) b!1006164))

(assert (= (and b!1006164 res!675409) b!1006165))

(declare-fun m!931381 () Bool)

(assert (=> b!1006167 m!931381))

(assert (=> b!1006167 m!931381))

(declare-fun m!931383 () Bool)

(assert (=> b!1006167 m!931383))

(declare-fun m!931385 () Bool)

(assert (=> b!1006172 m!931385))

(assert (=> b!1006169 m!931381))

(assert (=> b!1006169 m!931381))

(declare-fun m!931387 () Bool)

(assert (=> b!1006169 m!931387))

(assert (=> b!1006169 m!931387))

(assert (=> b!1006169 m!931381))

(declare-fun m!931389 () Bool)

(assert (=> b!1006169 m!931389))

(declare-fun m!931391 () Bool)

(assert (=> b!1006171 m!931391))

(declare-fun m!931393 () Bool)

(assert (=> b!1006174 m!931393))

(declare-fun m!931395 () Bool)

(assert (=> b!1006165 m!931395))

(declare-fun m!931397 () Bool)

(assert (=> b!1006165 m!931397))

(assert (=> b!1006165 m!931397))

(declare-fun m!931399 () Bool)

(assert (=> b!1006165 m!931399))

(assert (=> b!1006165 m!931399))

(assert (=> b!1006165 m!931397))

(declare-fun m!931401 () Bool)

(assert (=> b!1006165 m!931401))

(declare-fun m!931403 () Bool)

(assert (=> b!1006168 m!931403))

(declare-fun m!931405 () Bool)

(assert (=> b!1006170 m!931405))

(declare-fun m!931407 () Bool)

(assert (=> start!86822 m!931407))

(declare-fun m!931409 () Bool)

(assert (=> start!86822 m!931409))

(assert (=> b!1006164 m!931381))

(assert (=> b!1006164 m!931381))

(declare-fun m!931411 () Bool)

(assert (=> b!1006164 m!931411))

(push 1)

