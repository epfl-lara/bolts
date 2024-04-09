; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!86922 () Bool)

(assert start!86922)

(declare-fun b!1007343 () Bool)

(declare-fun e!566970 () Bool)

(declare-fun e!566971 () Bool)

(assert (=> b!1007343 (= e!566970 e!566971)))

(declare-fun res!676399 () Bool)

(assert (=> b!1007343 (=> (not res!676399) (not e!566971))))

(declare-datatypes ((SeekEntryResult!9510 0))(
  ( (MissingZero!9510 (index!40410 (_ BitVec 32))) (Found!9510 (index!40411 (_ BitVec 32))) (Intermediate!9510 (undefined!10322 Bool) (index!40412 (_ BitVec 32)) (x!87837 (_ BitVec 32))) (Undefined!9510) (MissingVacant!9510 (index!40413 (_ BitVec 32))) )
))
(declare-fun lt!445162 () SeekEntryResult!9510)

(declare-fun lt!445166 () SeekEntryResult!9510)

(assert (=> b!1007343 (= res!676399 (= lt!445162 lt!445166))))

(declare-datatypes ((array!63522 0))(
  ( (array!63523 (arr!30578 (Array (_ BitVec 32) (_ BitVec 64))) (size!31081 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63522)

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63522 (_ BitVec 32)) SeekEntryResult!9510)

(assert (=> b!1007343 (= lt!445162 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30578 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1007344 () Bool)

(declare-fun res!676398 () Bool)

(declare-fun e!566967 () Bool)

(assert (=> b!1007344 (=> (not res!676398) (not e!566967))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1007344 (= res!676398 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1007345 () Bool)

(assert (=> b!1007345 (= e!566967 false)))

(declare-fun lt!445163 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1007345 (= lt!445163 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1007346 () Bool)

(declare-fun res!676400 () Bool)

(declare-fun e!566969 () Bool)

(assert (=> b!1007346 (=> (not res!676400) (not e!566969))))

(declare-datatypes ((List!21380 0))(
  ( (Nil!21377) (Cons!21376 (h!22562 (_ BitVec 64)) (t!30389 List!21380)) )
))
(declare-fun arrayNoDuplicates!0 (array!63522 (_ BitVec 32) List!21380) Bool)

(assert (=> b!1007346 (= res!676400 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21377))))

(declare-fun b!1007347 () Bool)

(declare-fun res!676402 () Bool)

(assert (=> b!1007347 (=> (not res!676402) (not e!566967))))

(declare-fun lt!445164 () array!63522)

(declare-fun lt!445161 () (_ BitVec 64))

(assert (=> b!1007347 (= res!676402 (not (= lt!445162 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!445161 lt!445164 mask!3464))))))

(declare-fun b!1007348 () Bool)

(declare-fun res!676396 () Bool)

(assert (=> b!1007348 (=> (not res!676396) (not e!566969))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63522 (_ BitVec 32)) Bool)

(assert (=> b!1007348 (= res!676396 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1007349 () Bool)

(assert (=> b!1007349 (= e!566971 e!566967)))

(declare-fun res!676405 () Bool)

(assert (=> b!1007349 (=> (not res!676405) (not e!566967))))

(declare-fun lt!445167 () SeekEntryResult!9510)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1007349 (= res!676405 (not (= lt!445167 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!445161 mask!3464) lt!445161 lt!445164 mask!3464))))))

(declare-fun k0!2224 () (_ BitVec 64))

(assert (=> b!1007349 (= lt!445161 (select (store (arr!30578 a!3219) i!1194 k0!2224) j!170))))

(assert (=> b!1007349 (= lt!445164 (array!63523 (store (arr!30578 a!3219) i!1194 k0!2224) (size!31081 a!3219)))))

(declare-fun b!1007350 () Bool)

(declare-fun res!676401 () Bool)

(declare-fun e!566968 () Bool)

(assert (=> b!1007350 (=> (not res!676401) (not e!566968))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1007350 (= res!676401 (validKeyInArray!0 (select (arr!30578 a!3219) j!170)))))

(declare-fun b!1007351 () Bool)

(assert (=> b!1007351 (= e!566969 e!566970)))

(declare-fun res!676404 () Bool)

(assert (=> b!1007351 (=> (not res!676404) (not e!566970))))

(assert (=> b!1007351 (= res!676404 (= lt!445167 lt!445166))))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1007351 (= lt!445166 (Intermediate!9510 false resIndex!38 resX!38))))

(assert (=> b!1007351 (= lt!445167 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30578 a!3219) j!170) mask!3464) (select (arr!30578 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1007352 () Bool)

(declare-fun res!676393 () Bool)

(assert (=> b!1007352 (=> (not res!676393) (not e!566968))))

(declare-fun arrayContainsKey!0 (array!63522 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1007352 (= res!676393 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(declare-fun res!676392 () Bool)

(assert (=> start!86922 (=> (not res!676392) (not e!566968))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86922 (= res!676392 (validMask!0 mask!3464))))

(assert (=> start!86922 e!566968))

(declare-fun array_inv!23568 (array!63522) Bool)

(assert (=> start!86922 (array_inv!23568 a!3219)))

(assert (=> start!86922 true))

(declare-fun b!1007353 () Bool)

(declare-fun res!676394 () Bool)

(assert (=> b!1007353 (=> (not res!676394) (not e!566968))))

(assert (=> b!1007353 (= res!676394 (and (= (size!31081 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31081 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31081 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1007354 () Bool)

(declare-fun res!676395 () Bool)

(assert (=> b!1007354 (=> (not res!676395) (not e!566969))))

(assert (=> b!1007354 (= res!676395 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31081 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31081 a!3219))))))

(declare-fun b!1007355 () Bool)

(declare-fun res!676403 () Bool)

(assert (=> b!1007355 (=> (not res!676403) (not e!566968))))

(assert (=> b!1007355 (= res!676403 (validKeyInArray!0 k0!2224))))

(declare-fun b!1007356 () Bool)

(assert (=> b!1007356 (= e!566968 e!566969)))

(declare-fun res!676397 () Bool)

(assert (=> b!1007356 (=> (not res!676397) (not e!566969))))

(declare-fun lt!445165 () SeekEntryResult!9510)

(assert (=> b!1007356 (= res!676397 (or (= lt!445165 (MissingVacant!9510 i!1194)) (= lt!445165 (MissingZero!9510 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63522 (_ BitVec 32)) SeekEntryResult!9510)

(assert (=> b!1007356 (= lt!445165 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(assert (= (and start!86922 res!676392) b!1007353))

(assert (= (and b!1007353 res!676394) b!1007350))

(assert (= (and b!1007350 res!676401) b!1007355))

(assert (= (and b!1007355 res!676403) b!1007352))

(assert (= (and b!1007352 res!676393) b!1007356))

(assert (= (and b!1007356 res!676397) b!1007348))

(assert (= (and b!1007348 res!676396) b!1007346))

(assert (= (and b!1007346 res!676400) b!1007354))

(assert (= (and b!1007354 res!676395) b!1007351))

(assert (= (and b!1007351 res!676404) b!1007343))

(assert (= (and b!1007343 res!676399) b!1007349))

(assert (= (and b!1007349 res!676405) b!1007347))

(assert (= (and b!1007347 res!676402) b!1007344))

(assert (= (and b!1007344 res!676398) b!1007345))

(declare-fun m!932343 () Bool)

(assert (=> b!1007348 m!932343))

(declare-fun m!932345 () Bool)

(assert (=> b!1007343 m!932345))

(assert (=> b!1007343 m!932345))

(declare-fun m!932347 () Bool)

(assert (=> b!1007343 m!932347))

(assert (=> b!1007351 m!932345))

(assert (=> b!1007351 m!932345))

(declare-fun m!932349 () Bool)

(assert (=> b!1007351 m!932349))

(assert (=> b!1007351 m!932349))

(assert (=> b!1007351 m!932345))

(declare-fun m!932351 () Bool)

(assert (=> b!1007351 m!932351))

(declare-fun m!932353 () Bool)

(assert (=> b!1007347 m!932353))

(declare-fun m!932355 () Bool)

(assert (=> b!1007346 m!932355))

(declare-fun m!932357 () Bool)

(assert (=> b!1007355 m!932357))

(declare-fun m!932359 () Bool)

(assert (=> b!1007356 m!932359))

(assert (=> b!1007350 m!932345))

(assert (=> b!1007350 m!932345))

(declare-fun m!932361 () Bool)

(assert (=> b!1007350 m!932361))

(declare-fun m!932363 () Bool)

(assert (=> start!86922 m!932363))

(declare-fun m!932365 () Bool)

(assert (=> start!86922 m!932365))

(declare-fun m!932367 () Bool)

(assert (=> b!1007345 m!932367))

(declare-fun m!932369 () Bool)

(assert (=> b!1007349 m!932369))

(assert (=> b!1007349 m!932369))

(declare-fun m!932371 () Bool)

(assert (=> b!1007349 m!932371))

(declare-fun m!932373 () Bool)

(assert (=> b!1007349 m!932373))

(declare-fun m!932375 () Bool)

(assert (=> b!1007349 m!932375))

(declare-fun m!932377 () Bool)

(assert (=> b!1007352 m!932377))

(check-sat (not b!1007355) (not b!1007348) (not b!1007356) (not b!1007345) (not b!1007346) (not b!1007343) (not b!1007347) (not b!1007352) (not b!1007351) (not b!1007350) (not b!1007349) (not start!86922))
(check-sat)
