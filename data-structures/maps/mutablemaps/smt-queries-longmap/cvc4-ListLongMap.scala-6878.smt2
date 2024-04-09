; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86558 () Bool)

(assert start!86558)

(declare-fun b!1002451 () Bool)

(declare-fun e!564761 () Bool)

(declare-fun e!564762 () Bool)

(assert (=> b!1002451 (= e!564761 e!564762)))

(declare-fun res!672096 () Bool)

(assert (=> b!1002451 (=> (not res!672096) (not e!564762))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!9409 0))(
  ( (MissingZero!9409 (index!40006 (_ BitVec 32))) (Found!9409 (index!40007 (_ BitVec 32))) (Intermediate!9409 (undefined!10221 Bool) (index!40008 (_ BitVec 32)) (x!87446 (_ BitVec 32))) (Undefined!9409) (MissingVacant!9409 (index!40009 (_ BitVec 32))) )
))
(declare-fun lt!443197 () SeekEntryResult!9409)

(declare-fun lt!443194 () (_ BitVec 64))

(declare-datatypes ((array!63311 0))(
  ( (array!63312 (arr!30477 (Array (_ BitVec 32) (_ BitVec 64))) (size!30980 (_ BitVec 32))) )
))
(declare-fun lt!443199 () array!63311)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63311 (_ BitVec 32)) SeekEntryResult!9409)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1002451 (= res!672096 (not (= lt!443197 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!443194 mask!3464) lt!443194 lt!443199 mask!3464))))))

(declare-fun a!3219 () array!63311)

(declare-fun j!170 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(declare-fun k!2224 () (_ BitVec 64))

(assert (=> b!1002451 (= lt!443194 (select (store (arr!30477 a!3219) i!1194 k!2224) j!170))))

(assert (=> b!1002451 (= lt!443199 (array!63312 (store (arr!30477 a!3219) i!1194 k!2224) (size!30980 a!3219)))))

(declare-fun res!672093 () Bool)

(declare-fun e!564763 () Bool)

(assert (=> start!86558 (=> (not res!672093) (not e!564763))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86558 (= res!672093 (validMask!0 mask!3464))))

(assert (=> start!86558 e!564763))

(declare-fun array_inv!23467 (array!63311) Bool)

(assert (=> start!86558 (array_inv!23467 a!3219)))

(assert (=> start!86558 true))

(declare-fun b!1002452 () Bool)

(declare-fun res!672099 () Bool)

(declare-fun e!564765 () Bool)

(assert (=> b!1002452 (=> (not res!672099) (not e!564765))))

(declare-datatypes ((List!21279 0))(
  ( (Nil!21276) (Cons!21275 (h!22452 (_ BitVec 64)) (t!30288 List!21279)) )
))
(declare-fun arrayNoDuplicates!0 (array!63311 (_ BitVec 32) List!21279) Bool)

(assert (=> b!1002452 (= res!672099 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21276))))

(declare-fun b!1002453 () Bool)

(declare-fun e!564766 () Bool)

(assert (=> b!1002453 (= e!564766 false)))

(declare-fun lt!443196 () (_ BitVec 32))

(declare-fun lt!443195 () SeekEntryResult!9409)

(declare-fun x!1245 () (_ BitVec 32))

(assert (=> b!1002453 (= lt!443195 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!443196 lt!443194 lt!443199 mask!3464))))

(declare-fun b!1002454 () Bool)

(declare-fun res!672089 () Bool)

(assert (=> b!1002454 (=> (not res!672089) (not e!564762))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun lt!443192 () SeekEntryResult!9409)

(assert (=> b!1002454 (= res!672089 (not (= lt!443192 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!443194 lt!443199 mask!3464))))))

(declare-fun b!1002455 () Bool)

(declare-fun e!564764 () Bool)

(assert (=> b!1002455 (= e!564764 e!564761)))

(declare-fun res!672097 () Bool)

(assert (=> b!1002455 (=> (not res!672097) (not e!564761))))

(declare-fun lt!443198 () SeekEntryResult!9409)

(assert (=> b!1002455 (= res!672097 (= lt!443192 lt!443198))))

(assert (=> b!1002455 (= lt!443192 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30477 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1002456 () Bool)

(declare-fun res!672091 () Bool)

(assert (=> b!1002456 (=> (not res!672091) (not e!564762))))

(declare-fun resIndex!38 () (_ BitVec 32))

(assert (=> b!1002456 (= res!672091 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1002457 () Bool)

(declare-fun res!672094 () Bool)

(assert (=> b!1002457 (=> (not res!672094) (not e!564763))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1002457 (= res!672094 (validKeyInArray!0 k!2224))))

(declare-fun b!1002458 () Bool)

(declare-fun res!672095 () Bool)

(assert (=> b!1002458 (=> (not res!672095) (not e!564763))))

(assert (=> b!1002458 (= res!672095 (and (= (size!30980 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30980 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30980 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1002459 () Bool)

(declare-fun res!672087 () Bool)

(assert (=> b!1002459 (=> (not res!672087) (not e!564765))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63311 (_ BitVec 32)) Bool)

(assert (=> b!1002459 (= res!672087 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1002460 () Bool)

(declare-fun res!672092 () Bool)

(assert (=> b!1002460 (=> (not res!672092) (not e!564766))))

(assert (=> b!1002460 (= res!672092 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!443196 (select (arr!30477 a!3219) j!170) a!3219 mask!3464) lt!443198))))

(declare-fun b!1002461 () Bool)

(declare-fun res!672100 () Bool)

(assert (=> b!1002461 (=> (not res!672100) (not e!564763))))

(declare-fun arrayContainsKey!0 (array!63311 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1002461 (= res!672100 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1002462 () Bool)

(declare-fun res!672090 () Bool)

(assert (=> b!1002462 (=> (not res!672090) (not e!564763))))

(assert (=> b!1002462 (= res!672090 (validKeyInArray!0 (select (arr!30477 a!3219) j!170)))))

(declare-fun b!1002463 () Bool)

(declare-fun res!672085 () Bool)

(assert (=> b!1002463 (=> (not res!672085) (not e!564765))))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1002463 (= res!672085 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30980 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30980 a!3219))))))

(declare-fun b!1002464 () Bool)

(assert (=> b!1002464 (= e!564763 e!564765)))

(declare-fun res!672088 () Bool)

(assert (=> b!1002464 (=> (not res!672088) (not e!564765))))

(declare-fun lt!443193 () SeekEntryResult!9409)

(assert (=> b!1002464 (= res!672088 (or (= lt!443193 (MissingVacant!9409 i!1194)) (= lt!443193 (MissingZero!9409 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63311 (_ BitVec 32)) SeekEntryResult!9409)

(assert (=> b!1002464 (= lt!443193 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1002465 () Bool)

(assert (=> b!1002465 (= e!564762 e!564766)))

(declare-fun res!672098 () Bool)

(assert (=> b!1002465 (=> (not res!672098) (not e!564766))))

(assert (=> b!1002465 (= res!672098 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1245) resX!38) (bvsge (bvadd #b00000000000000000000000000000001 x!1245) #b00000000000000000000000000000000) (bvsge lt!443196 #b00000000000000000000000000000000) (bvslt lt!443196 (size!30980 a!3219))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1002465 (= lt!443196 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1002466 () Bool)

(assert (=> b!1002466 (= e!564765 e!564764)))

(declare-fun res!672086 () Bool)

(assert (=> b!1002466 (=> (not res!672086) (not e!564764))))

(assert (=> b!1002466 (= res!672086 (= lt!443197 lt!443198))))

(assert (=> b!1002466 (= lt!443198 (Intermediate!9409 false resIndex!38 resX!38))))

(assert (=> b!1002466 (= lt!443197 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30477 a!3219) j!170) mask!3464) (select (arr!30477 a!3219) j!170) a!3219 mask!3464))))

(assert (= (and start!86558 res!672093) b!1002458))

(assert (= (and b!1002458 res!672095) b!1002462))

(assert (= (and b!1002462 res!672090) b!1002457))

(assert (= (and b!1002457 res!672094) b!1002461))

(assert (= (and b!1002461 res!672100) b!1002464))

(assert (= (and b!1002464 res!672088) b!1002459))

(assert (= (and b!1002459 res!672087) b!1002452))

(assert (= (and b!1002452 res!672099) b!1002463))

(assert (= (and b!1002463 res!672085) b!1002466))

(assert (= (and b!1002466 res!672086) b!1002455))

(assert (= (and b!1002455 res!672097) b!1002451))

(assert (= (and b!1002451 res!672096) b!1002454))

(assert (= (and b!1002454 res!672089) b!1002456))

(assert (= (and b!1002456 res!672091) b!1002465))

(assert (= (and b!1002465 res!672098) b!1002460))

(assert (= (and b!1002460 res!672092) b!1002453))

(declare-fun m!928421 () Bool)

(assert (=> b!1002459 m!928421))

(declare-fun m!928423 () Bool)

(assert (=> b!1002451 m!928423))

(assert (=> b!1002451 m!928423))

(declare-fun m!928425 () Bool)

(assert (=> b!1002451 m!928425))

(declare-fun m!928427 () Bool)

(assert (=> b!1002451 m!928427))

(declare-fun m!928429 () Bool)

(assert (=> b!1002451 m!928429))

(declare-fun m!928431 () Bool)

(assert (=> b!1002457 m!928431))

(declare-fun m!928433 () Bool)

(assert (=> b!1002454 m!928433))

(declare-fun m!928435 () Bool)

(assert (=> b!1002461 m!928435))

(declare-fun m!928437 () Bool)

(assert (=> b!1002455 m!928437))

(assert (=> b!1002455 m!928437))

(declare-fun m!928439 () Bool)

(assert (=> b!1002455 m!928439))

(assert (=> b!1002460 m!928437))

(assert (=> b!1002460 m!928437))

(declare-fun m!928441 () Bool)

(assert (=> b!1002460 m!928441))

(declare-fun m!928443 () Bool)

(assert (=> b!1002465 m!928443))

(declare-fun m!928445 () Bool)

(assert (=> b!1002453 m!928445))

(declare-fun m!928447 () Bool)

(assert (=> start!86558 m!928447))

(declare-fun m!928449 () Bool)

(assert (=> start!86558 m!928449))

(assert (=> b!1002466 m!928437))

(assert (=> b!1002466 m!928437))

(declare-fun m!928451 () Bool)

(assert (=> b!1002466 m!928451))

(assert (=> b!1002466 m!928451))

(assert (=> b!1002466 m!928437))

(declare-fun m!928453 () Bool)

(assert (=> b!1002466 m!928453))

(declare-fun m!928455 () Bool)

(assert (=> b!1002464 m!928455))

(assert (=> b!1002462 m!928437))

(assert (=> b!1002462 m!928437))

(declare-fun m!928457 () Bool)

(assert (=> b!1002462 m!928457))

(declare-fun m!928459 () Bool)

(assert (=> b!1002452 m!928459))

(push 1)

