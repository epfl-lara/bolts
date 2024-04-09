; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32280 () Bool)

(assert start!32280)

(declare-fun b!321321 () Bool)

(declare-fun res!175602 () Bool)

(declare-fun e!199092 () Bool)

(assert (=> b!321321 (=> (not res!175602) (not e!199092))))

(declare-datatypes ((array!16466 0))(
  ( (array!16467 (arr!7789 (Array (_ BitVec 32) (_ BitVec 64))) (size!8141 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16466)

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!16466 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!321321 (= res!175602 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun res!175604 () Bool)

(assert (=> start!32280 (=> (not res!175604) (not e!199092))))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32280 (= res!175604 (validMask!0 mask!3777))))

(assert (=> start!32280 e!199092))

(declare-fun array_inv!5743 (array!16466) Bool)

(assert (=> start!32280 (array_inv!5743 a!3305)))

(assert (=> start!32280 true))

(declare-fun b!321322 () Bool)

(declare-fun res!175603 () Bool)

(declare-fun e!199091 () Bool)

(assert (=> b!321322 (=> (not res!175603) (not e!199091))))

(declare-datatypes ((SeekEntryResult!2931 0))(
  ( (MissingZero!2931 (index!13900 (_ BitVec 32))) (Found!2931 (index!13901 (_ BitVec 32))) (Intermediate!2931 (undefined!3743 Bool) (index!13902 (_ BitVec 32)) (x!32129 (_ BitVec 32))) (Undefined!2931) (MissingVacant!2931 (index!13903 (_ BitVec 32))) )
))
(declare-fun lt!156167 () SeekEntryResult!2931)

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16466 (_ BitVec 32)) SeekEntryResult!2931)

(assert (=> b!321322 (= res!175603 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!156167))))

(declare-fun b!321323 () Bool)

(declare-fun res!175600 () Bool)

(assert (=> b!321323 (=> (not res!175600) (not e!199092))))

(declare-fun i!1250 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16466 (_ BitVec 32)) SeekEntryResult!2931)

(assert (=> b!321323 (= res!175600 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!2931 i!1250)))))

(declare-fun b!321324 () Bool)

(declare-fun res!175601 () Bool)

(assert (=> b!321324 (=> (not res!175601) (not e!199092))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!321324 (= res!175601 (validKeyInArray!0 k!2497))))

(declare-fun b!321325 () Bool)

(assert (=> b!321325 (= e!199092 e!199091)))

(declare-fun res!175608 () Bool)

(assert (=> b!321325 (=> (not res!175608) (not e!199091))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!321325 (= res!175608 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!156167))))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(assert (=> b!321325 (= lt!156167 (Intermediate!2931 false resIndex!58 resX!58))))

(declare-fun b!321326 () Bool)

(declare-fun res!175606 () Bool)

(assert (=> b!321326 (=> (not res!175606) (not e!199091))))

(assert (=> b!321326 (= res!175606 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7789 a!3305) index!1840) k!2497)) (= x!1490 resX!58) (not (= resIndex!58 index!1840)) (not (= (select (arr!7789 a!3305) index!1840) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7789 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!321327 () Bool)

(assert (=> b!321327 (= e!199091 false)))

(declare-fun lt!156166 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!321327 (= lt!156166 (nextIndex!0 index!1840 x!1490 mask!3777))))

(declare-fun b!321328 () Bool)

(declare-fun res!175607 () Bool)

(assert (=> b!321328 (=> (not res!175607) (not e!199092))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16466 (_ BitVec 32)) Bool)

(assert (=> b!321328 (= res!175607 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!321329 () Bool)

(declare-fun res!175599 () Bool)

(assert (=> b!321329 (=> (not res!175599) (not e!199092))))

(assert (=> b!321329 (= res!175599 (and (= (size!8141 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8141 a!3305))))))

(declare-fun b!321330 () Bool)

(declare-fun res!175605 () Bool)

(assert (=> b!321330 (=> (not res!175605) (not e!199091))))

(assert (=> b!321330 (= res!175605 (and (= (select (arr!7789 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8141 a!3305))))))

(assert (= (and start!32280 res!175604) b!321329))

(assert (= (and b!321329 res!175599) b!321324))

(assert (= (and b!321324 res!175601) b!321321))

(assert (= (and b!321321 res!175602) b!321323))

(assert (= (and b!321323 res!175600) b!321328))

(assert (= (and b!321328 res!175607) b!321325))

(assert (= (and b!321325 res!175608) b!321330))

(assert (= (and b!321330 res!175605) b!321322))

(assert (= (and b!321322 res!175603) b!321326))

(assert (= (and b!321326 res!175606) b!321327))

(declare-fun m!329491 () Bool)

(assert (=> b!321324 m!329491))

(declare-fun m!329493 () Bool)

(assert (=> b!321328 m!329493))

(declare-fun m!329495 () Bool)

(assert (=> b!321325 m!329495))

(assert (=> b!321325 m!329495))

(declare-fun m!329497 () Bool)

(assert (=> b!321325 m!329497))

(declare-fun m!329499 () Bool)

(assert (=> b!321323 m!329499))

(declare-fun m!329501 () Bool)

(assert (=> b!321327 m!329501))

(declare-fun m!329503 () Bool)

(assert (=> b!321322 m!329503))

(declare-fun m!329505 () Bool)

(assert (=> b!321326 m!329505))

(declare-fun m!329507 () Bool)

(assert (=> b!321330 m!329507))

(declare-fun m!329509 () Bool)

(assert (=> b!321321 m!329509))

(declare-fun m!329511 () Bool)

(assert (=> start!32280 m!329511))

(declare-fun m!329513 () Bool)

(assert (=> start!32280 m!329513))

(push 1)

