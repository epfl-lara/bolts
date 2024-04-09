; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86606 () Bool)

(assert start!86606)

(declare-fun res!673239 () Bool)

(declare-fun e!565267 () Bool)

(assert (=> start!86606 (=> (not res!673239) (not e!565267))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86606 (= res!673239 (validMask!0 mask!3464))))

(assert (=> start!86606 e!565267))

(declare-datatypes ((array!63359 0))(
  ( (array!63360 (arr!30501 (Array (_ BitVec 32) (_ BitVec 64))) (size!31004 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63359)

(declare-fun array_inv!23491 (array!63359) Bool)

(assert (=> start!86606 (array_inv!23491 a!3219)))

(assert (=> start!86606 true))

(declare-fun b!1003603 () Bool)

(declare-fun res!673251 () Bool)

(assert (=> b!1003603 (=> (not res!673251) (not e!565267))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1003603 (= res!673251 (validKeyInArray!0 (select (arr!30501 a!3219) j!170)))))

(declare-fun b!1003604 () Bool)

(declare-fun res!673240 () Bool)

(declare-fun e!565269 () Bool)

(assert (=> b!1003604 (=> (not res!673240) (not e!565269))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63359 (_ BitVec 32)) Bool)

(assert (=> b!1003604 (= res!673240 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1003605 () Bool)

(assert (=> b!1003605 (= e!565267 e!565269)))

(declare-fun res!673241 () Bool)

(assert (=> b!1003605 (=> (not res!673241) (not e!565269))))

(declare-datatypes ((SeekEntryResult!9433 0))(
  ( (MissingZero!9433 (index!40102 (_ BitVec 32))) (Found!9433 (index!40103 (_ BitVec 32))) (Intermediate!9433 (undefined!10245 Bool) (index!40104 (_ BitVec 32)) (x!87534 (_ BitVec 32))) (Undefined!9433) (MissingVacant!9433 (index!40105 (_ BitVec 32))) )
))
(declare-fun lt!443775 () SeekEntryResult!9433)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1003605 (= res!673241 (or (= lt!443775 (MissingVacant!9433 i!1194)) (= lt!443775 (MissingZero!9433 i!1194))))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63359 (_ BitVec 32)) SeekEntryResult!9433)

(assert (=> b!1003605 (= lt!443775 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1003606 () Bool)

(declare-fun res!673247 () Bool)

(assert (=> b!1003606 (=> (not res!673247) (not e!565269))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1003606 (= res!673247 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31004 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31004 a!3219))))))

(declare-fun b!1003607 () Bool)

(declare-fun e!565265 () Bool)

(declare-fun e!565270 () Bool)

(assert (=> b!1003607 (= e!565265 e!565270)))

(declare-fun res!673238 () Bool)

(assert (=> b!1003607 (=> (not res!673238) (not e!565270))))

(declare-fun lt!443769 () SeekEntryResult!9433)

(declare-fun lt!443773 () SeekEntryResult!9433)

(assert (=> b!1003607 (= res!673238 (= lt!443769 lt!443773))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63359 (_ BitVec 32)) SeekEntryResult!9433)

(assert (=> b!1003607 (= lt!443769 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30501 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1003608 () Bool)

(declare-fun res!673245 () Bool)

(assert (=> b!1003608 (=> (not res!673245) (not e!565269))))

(declare-datatypes ((List!21303 0))(
  ( (Nil!21300) (Cons!21299 (h!22476 (_ BitVec 64)) (t!30312 List!21303)) )
))
(declare-fun arrayNoDuplicates!0 (array!63359 (_ BitVec 32) List!21303) Bool)

(assert (=> b!1003608 (= res!673245 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21300))))

(declare-fun b!1003609 () Bool)

(declare-fun res!673246 () Bool)

(declare-fun e!565268 () Bool)

(assert (=> b!1003609 (=> (not res!673246) (not e!565268))))

(declare-fun lt!443770 () array!63359)

(declare-fun lt!443771 () (_ BitVec 64))

(assert (=> b!1003609 (= res!673246 (not (= lt!443769 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!443771 lt!443770 mask!3464))))))

(declare-fun b!1003610 () Bool)

(declare-fun res!673252 () Bool)

(assert (=> b!1003610 (=> (not res!673252) (not e!565267))))

(assert (=> b!1003610 (= res!673252 (validKeyInArray!0 k!2224))))

(declare-fun b!1003611 () Bool)

(declare-fun res!673237 () Bool)

(assert (=> b!1003611 (=> (not res!673237) (not e!565268))))

(assert (=> b!1003611 (= res!673237 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1003612 () Bool)

(declare-fun res!673250 () Bool)

(assert (=> b!1003612 (=> (not res!673250) (not e!565267))))

(assert (=> b!1003612 (= res!673250 (and (= (size!31004 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31004 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31004 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1003613 () Bool)

(assert (=> b!1003613 (= e!565270 e!565268)))

(declare-fun res!673249 () Bool)

(assert (=> b!1003613 (=> (not res!673249) (not e!565268))))

(declare-fun lt!443774 () SeekEntryResult!9433)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1003613 (= res!673249 (not (= lt!443774 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!443771 mask!3464) lt!443771 lt!443770 mask!3464))))))

(assert (=> b!1003613 (= lt!443771 (select (store (arr!30501 a!3219) i!1194 k!2224) j!170))))

(assert (=> b!1003613 (= lt!443770 (array!63360 (store (arr!30501 a!3219) i!1194 k!2224) (size!31004 a!3219)))))

(declare-fun b!1003614 () Bool)

(declare-fun res!673248 () Bool)

(declare-fun e!565266 () Bool)

(assert (=> b!1003614 (=> (not res!673248) (not e!565266))))

(declare-fun lt!443772 () (_ BitVec 32))

(assert (=> b!1003614 (= res!673248 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!443772 (select (arr!30501 a!3219) j!170) a!3219 mask!3464) lt!443773))))

(declare-fun b!1003615 () Bool)

(assert (=> b!1003615 (= e!565269 e!565265)))

(declare-fun res!673242 () Bool)

(assert (=> b!1003615 (=> (not res!673242) (not e!565265))))

(assert (=> b!1003615 (= res!673242 (= lt!443774 lt!443773))))

(assert (=> b!1003615 (= lt!443773 (Intermediate!9433 false resIndex!38 resX!38))))

(assert (=> b!1003615 (= lt!443774 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30501 a!3219) j!170) mask!3464) (select (arr!30501 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1003616 () Bool)

(assert (=> b!1003616 (= e!565268 e!565266)))

(declare-fun res!673244 () Bool)

(assert (=> b!1003616 (=> (not res!673244) (not e!565266))))

(assert (=> b!1003616 (= res!673244 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1245) resX!38) (bvsge (bvadd #b00000000000000000000000000000001 x!1245) #b00000000000000000000000000000000) (bvsge lt!443772 #b00000000000000000000000000000000) (bvslt lt!443772 (size!31004 a!3219))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1003616 (= lt!443772 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1003617 () Bool)

(assert (=> b!1003617 (= e!565266 false)))

(declare-fun lt!443768 () SeekEntryResult!9433)

(assert (=> b!1003617 (= lt!443768 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!443772 lt!443771 lt!443770 mask!3464))))

(declare-fun b!1003618 () Bool)

(declare-fun res!673243 () Bool)

(assert (=> b!1003618 (=> (not res!673243) (not e!565267))))

(declare-fun arrayContainsKey!0 (array!63359 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1003618 (= res!673243 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(assert (= (and start!86606 res!673239) b!1003612))

(assert (= (and b!1003612 res!673250) b!1003603))

(assert (= (and b!1003603 res!673251) b!1003610))

(assert (= (and b!1003610 res!673252) b!1003618))

(assert (= (and b!1003618 res!673243) b!1003605))

(assert (= (and b!1003605 res!673241) b!1003604))

(assert (= (and b!1003604 res!673240) b!1003608))

(assert (= (and b!1003608 res!673245) b!1003606))

(assert (= (and b!1003606 res!673247) b!1003615))

(assert (= (and b!1003615 res!673242) b!1003607))

(assert (= (and b!1003607 res!673238) b!1003613))

(assert (= (and b!1003613 res!673249) b!1003609))

(assert (= (and b!1003609 res!673246) b!1003611))

(assert (= (and b!1003611 res!673237) b!1003616))

(assert (= (and b!1003616 res!673244) b!1003614))

(assert (= (and b!1003614 res!673248) b!1003617))

(declare-fun m!929381 () Bool)

(assert (=> b!1003607 m!929381))

(assert (=> b!1003607 m!929381))

(declare-fun m!929383 () Bool)

(assert (=> b!1003607 m!929383))

(declare-fun m!929385 () Bool)

(assert (=> b!1003608 m!929385))

(declare-fun m!929387 () Bool)

(assert (=> b!1003617 m!929387))

(declare-fun m!929389 () Bool)

(assert (=> start!86606 m!929389))

(declare-fun m!929391 () Bool)

(assert (=> start!86606 m!929391))

(declare-fun m!929393 () Bool)

(assert (=> b!1003609 m!929393))

(assert (=> b!1003615 m!929381))

(assert (=> b!1003615 m!929381))

(declare-fun m!929395 () Bool)

(assert (=> b!1003615 m!929395))

(assert (=> b!1003615 m!929395))

(assert (=> b!1003615 m!929381))

(declare-fun m!929397 () Bool)

(assert (=> b!1003615 m!929397))

(declare-fun m!929399 () Bool)

(assert (=> b!1003605 m!929399))

(declare-fun m!929401 () Bool)

(assert (=> b!1003613 m!929401))

(assert (=> b!1003613 m!929401))

(declare-fun m!929403 () Bool)

(assert (=> b!1003613 m!929403))

(declare-fun m!929405 () Bool)

(assert (=> b!1003613 m!929405))

(declare-fun m!929407 () Bool)

(assert (=> b!1003613 m!929407))

(declare-fun m!929409 () Bool)

(assert (=> b!1003604 m!929409))

(assert (=> b!1003614 m!929381))

(assert (=> b!1003614 m!929381))

(declare-fun m!929411 () Bool)

(assert (=> b!1003614 m!929411))

(assert (=> b!1003603 m!929381))

(assert (=> b!1003603 m!929381))

(declare-fun m!929413 () Bool)

(assert (=> b!1003603 m!929413))

(declare-fun m!929415 () Bool)

(assert (=> b!1003610 m!929415))

(declare-fun m!929417 () Bool)

(assert (=> b!1003616 m!929417))

(declare-fun m!929419 () Bool)

(assert (=> b!1003618 m!929419))

(push 1)

