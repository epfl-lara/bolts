; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86824 () Bool)

(assert start!86824)

(declare-fun b!1006197 () Bool)

(declare-fun res!675451 () Bool)

(declare-fun e!566424 () Bool)

(assert (=> b!1006197 (=> (not res!675451) (not e!566424))))

(declare-datatypes ((array!63475 0))(
  ( (array!63476 (arr!30556 (Array (_ BitVec 32) (_ BitVec 64))) (size!31059 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63475)

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1006197 (= res!675451 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31059 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31059 a!3219))))))

(declare-fun res!675442 () Bool)

(declare-fun e!566423 () Bool)

(assert (=> start!86824 (=> (not res!675442) (not e!566423))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86824 (= res!675442 (validMask!0 mask!3464))))

(assert (=> start!86824 e!566423))

(declare-fun array_inv!23546 (array!63475) Bool)

(assert (=> start!86824 (array_inv!23546 a!3219)))

(assert (=> start!86824 true))

(declare-fun b!1006198 () Bool)

(declare-fun res!675443 () Bool)

(assert (=> b!1006198 (=> (not res!675443) (not e!566424))))

(declare-datatypes ((List!21358 0))(
  ( (Nil!21355) (Cons!21354 (h!22537 (_ BitVec 64)) (t!30367 List!21358)) )
))
(declare-fun arrayNoDuplicates!0 (array!63475 (_ BitVec 32) List!21358) Bool)

(assert (=> b!1006198 (= res!675443 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21355))))

(declare-fun b!1006199 () Bool)

(assert (=> b!1006199 (= e!566423 e!566424)))

(declare-fun res!675450 () Bool)

(assert (=> b!1006199 (=> (not res!675450) (not e!566424))))

(declare-datatypes ((SeekEntryResult!9488 0))(
  ( (MissingZero!9488 (index!40322 (_ BitVec 32))) (Found!9488 (index!40323 (_ BitVec 32))) (Intermediate!9488 (undefined!10300 Bool) (index!40324 (_ BitVec 32)) (x!87753 (_ BitVec 32))) (Undefined!9488) (MissingVacant!9488 (index!40325 (_ BitVec 32))) )
))
(declare-fun lt!444703 () SeekEntryResult!9488)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1006199 (= res!675450 (or (= lt!444703 (MissingVacant!9488 i!1194)) (= lt!444703 (MissingZero!9488 i!1194))))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63475 (_ BitVec 32)) SeekEntryResult!9488)

(assert (=> b!1006199 (= lt!444703 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1006200 () Bool)

(declare-fun res!675445 () Bool)

(assert (=> b!1006200 (=> (not res!675445) (not e!566424))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63475 (_ BitVec 32)) Bool)

(assert (=> b!1006200 (= res!675445 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1006201 () Bool)

(declare-fun res!675444 () Bool)

(assert (=> b!1006201 (=> (not res!675444) (not e!566423))))

(declare-fun j!170 () (_ BitVec 32))

(assert (=> b!1006201 (= res!675444 (and (= (size!31059 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31059 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31059 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1006202 () Bool)

(declare-fun res!675441 () Bool)

(assert (=> b!1006202 (=> (not res!675441) (not e!566423))))

(declare-fun arrayContainsKey!0 (array!63475 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1006202 (= res!675441 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1006203 () Bool)

(declare-fun res!675446 () Bool)

(assert (=> b!1006203 (=> (not res!675446) (not e!566423))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1006203 (= res!675446 (validKeyInArray!0 (select (arr!30556 a!3219) j!170)))))

(declare-fun b!1006204 () Bool)

(declare-fun e!566426 () Bool)

(assert (=> b!1006204 (= e!566424 e!566426)))

(declare-fun res!675447 () Bool)

(assert (=> b!1006204 (=> (not res!675447) (not e!566426))))

(declare-fun lt!444705 () SeekEntryResult!9488)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63475 (_ BitVec 32)) SeekEntryResult!9488)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1006204 (= res!675447 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30556 a!3219) j!170) mask!3464) (select (arr!30556 a!3219) j!170) a!3219 mask!3464) lt!444705))))

(assert (=> b!1006204 (= lt!444705 (Intermediate!9488 false resIndex!38 resX!38))))

(declare-fun b!1006205 () Bool)

(declare-fun res!675448 () Bool)

(assert (=> b!1006205 (=> (not res!675448) (not e!566423))))

(assert (=> b!1006205 (= res!675448 (validKeyInArray!0 k!2224))))

(declare-fun b!1006206 () Bool)

(declare-fun res!675449 () Bool)

(assert (=> b!1006206 (=> (not res!675449) (not e!566426))))

(assert (=> b!1006206 (= res!675449 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30556 a!3219) j!170) a!3219 mask!3464) lt!444705))))

(declare-fun b!1006207 () Bool)

(assert (=> b!1006207 (= e!566426 false)))

(declare-fun lt!444704 () SeekEntryResult!9488)

(assert (=> b!1006207 (= lt!444704 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!30556 a!3219) i!1194 k!2224) j!170) mask!3464) (select (store (arr!30556 a!3219) i!1194 k!2224) j!170) (array!63476 (store (arr!30556 a!3219) i!1194 k!2224) (size!31059 a!3219)) mask!3464))))

(assert (= (and start!86824 res!675442) b!1006201))

(assert (= (and b!1006201 res!675444) b!1006203))

(assert (= (and b!1006203 res!675446) b!1006205))

(assert (= (and b!1006205 res!675448) b!1006202))

(assert (= (and b!1006202 res!675441) b!1006199))

(assert (= (and b!1006199 res!675450) b!1006200))

(assert (= (and b!1006200 res!675445) b!1006198))

(assert (= (and b!1006198 res!675443) b!1006197))

(assert (= (and b!1006197 res!675451) b!1006204))

(assert (= (and b!1006204 res!675447) b!1006206))

(assert (= (and b!1006206 res!675449) b!1006207))

(declare-fun m!931413 () Bool)

(assert (=> start!86824 m!931413))

(declare-fun m!931415 () Bool)

(assert (=> start!86824 m!931415))

(declare-fun m!931417 () Bool)

(assert (=> b!1006203 m!931417))

(assert (=> b!1006203 m!931417))

(declare-fun m!931419 () Bool)

(assert (=> b!1006203 m!931419))

(assert (=> b!1006206 m!931417))

(assert (=> b!1006206 m!931417))

(declare-fun m!931421 () Bool)

(assert (=> b!1006206 m!931421))

(assert (=> b!1006204 m!931417))

(assert (=> b!1006204 m!931417))

(declare-fun m!931423 () Bool)

(assert (=> b!1006204 m!931423))

(assert (=> b!1006204 m!931423))

(assert (=> b!1006204 m!931417))

(declare-fun m!931425 () Bool)

(assert (=> b!1006204 m!931425))

(declare-fun m!931427 () Bool)

(assert (=> b!1006198 m!931427))

(declare-fun m!931429 () Bool)

(assert (=> b!1006202 m!931429))

(declare-fun m!931431 () Bool)

(assert (=> b!1006200 m!931431))

(declare-fun m!931433 () Bool)

(assert (=> b!1006199 m!931433))

(declare-fun m!931435 () Bool)

(assert (=> b!1006207 m!931435))

(declare-fun m!931437 () Bool)

(assert (=> b!1006207 m!931437))

(assert (=> b!1006207 m!931437))

(declare-fun m!931439 () Bool)

(assert (=> b!1006207 m!931439))

(assert (=> b!1006207 m!931439))

(assert (=> b!1006207 m!931437))

(declare-fun m!931441 () Bool)

(assert (=> b!1006207 m!931441))

(declare-fun m!931443 () Bool)

(assert (=> b!1006205 m!931443))

(push 1)

