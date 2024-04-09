; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!32282 () Bool)

(assert start!32282)

(declare-fun b!321351 () Bool)

(declare-fun res!175635 () Bool)

(declare-fun e!199102 () Bool)

(assert (=> b!321351 (=> (not res!175635) (not e!199102))))

(declare-datatypes ((array!16468 0))(
  ( (array!16469 (arr!7790 (Array (_ BitVec 32) (_ BitVec 64))) (size!8142 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16468)

(declare-fun k0!2497 () (_ BitVec 64))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2932 0))(
  ( (MissingZero!2932 (index!13904 (_ BitVec 32))) (Found!2932 (index!13905 (_ BitVec 32))) (Intermediate!2932 (undefined!3744 Bool) (index!13906 (_ BitVec 32)) (x!32130 (_ BitVec 32))) (Undefined!2932) (MissingVacant!2932 (index!13907 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16468 (_ BitVec 32)) SeekEntryResult!2932)

(assert (=> b!321351 (= res!175635 (= (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777) (MissingVacant!2932 i!1250)))))

(declare-fun b!321352 () Bool)

(declare-fun res!175637 () Bool)

(assert (=> b!321352 (=> (not res!175637) (not e!199102))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16468 (_ BitVec 32)) Bool)

(assert (=> b!321352 (= res!175637 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!321353 () Bool)

(declare-fun res!175632 () Bool)

(assert (=> b!321353 (=> (not res!175632) (not e!199102))))

(assert (=> b!321353 (= res!175632 (and (= (size!8142 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8142 a!3305))))))

(declare-fun b!321354 () Bool)

(declare-fun res!175629 () Bool)

(assert (=> b!321354 (=> (not res!175629) (not e!199102))))

(declare-fun arrayContainsKey!0 (array!16468 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!321354 (= res!175629 (not (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000)))))

(declare-fun b!321355 () Bool)

(declare-fun res!175633 () Bool)

(assert (=> b!321355 (=> (not res!175633) (not e!199102))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!321355 (= res!175633 (validKeyInArray!0 k0!2497))))

(declare-fun b!321356 () Bool)

(declare-fun res!175638 () Bool)

(declare-fun e!199100 () Bool)

(assert (=> b!321356 (=> (not res!175638) (not e!199100))))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(assert (=> b!321356 (= res!175638 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7790 a!3305) index!1840) k0!2497)) (= x!1490 resX!58) (not (= resIndex!58 index!1840)) (not (= (select (arr!7790 a!3305) index!1840) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7790 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!321357 () Bool)

(declare-fun res!175631 () Bool)

(assert (=> b!321357 (=> (not res!175631) (not e!199100))))

(assert (=> b!321357 (= res!175631 (and (= (select (arr!7790 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8142 a!3305))))))

(declare-fun b!321358 () Bool)

(declare-fun res!175636 () Bool)

(assert (=> b!321358 (=> (not res!175636) (not e!199100))))

(declare-fun lt!156172 () SeekEntryResult!2932)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16468 (_ BitVec 32)) SeekEntryResult!2932)

(assert (=> b!321358 (= res!175636 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k0!2497 a!3305 mask!3777) lt!156172))))

(declare-fun b!321360 () Bool)

(assert (=> b!321360 (= e!199102 e!199100)))

(declare-fun res!175634 () Bool)

(assert (=> b!321360 (=> (not res!175634) (not e!199100))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!321360 (= res!175634 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777) lt!156172))))

(assert (=> b!321360 (= lt!156172 (Intermediate!2932 false resIndex!58 resX!58))))

(declare-fun b!321359 () Bool)

(assert (=> b!321359 (= e!199100 false)))

(declare-fun lt!156173 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!321359 (= lt!156173 (nextIndex!0 index!1840 x!1490 mask!3777))))

(declare-fun res!175630 () Bool)

(assert (=> start!32282 (=> (not res!175630) (not e!199102))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32282 (= res!175630 (validMask!0 mask!3777))))

(assert (=> start!32282 e!199102))

(declare-fun array_inv!5744 (array!16468) Bool)

(assert (=> start!32282 (array_inv!5744 a!3305)))

(assert (=> start!32282 true))

(assert (= (and start!32282 res!175630) b!321353))

(assert (= (and b!321353 res!175632) b!321355))

(assert (= (and b!321355 res!175633) b!321354))

(assert (= (and b!321354 res!175629) b!321351))

(assert (= (and b!321351 res!175635) b!321352))

(assert (= (and b!321352 res!175637) b!321360))

(assert (= (and b!321360 res!175634) b!321357))

(assert (= (and b!321357 res!175631) b!321358))

(assert (= (and b!321358 res!175636) b!321356))

(assert (= (and b!321356 res!175638) b!321359))

(declare-fun m!329515 () Bool)

(assert (=> b!321357 m!329515))

(declare-fun m!329517 () Bool)

(assert (=> b!321360 m!329517))

(assert (=> b!321360 m!329517))

(declare-fun m!329519 () Bool)

(assert (=> b!321360 m!329519))

(declare-fun m!329521 () Bool)

(assert (=> b!321358 m!329521))

(declare-fun m!329523 () Bool)

(assert (=> b!321355 m!329523))

(declare-fun m!329525 () Bool)

(assert (=> start!32282 m!329525))

(declare-fun m!329527 () Bool)

(assert (=> start!32282 m!329527))

(declare-fun m!329529 () Bool)

(assert (=> b!321354 m!329529))

(declare-fun m!329531 () Bool)

(assert (=> b!321352 m!329531))

(declare-fun m!329533 () Bool)

(assert (=> b!321351 m!329533))

(declare-fun m!329535 () Bool)

(assert (=> b!321356 m!329535))

(declare-fun m!329537 () Bool)

(assert (=> b!321359 m!329537))

(check-sat (not start!32282) (not b!321355) (not b!321354) (not b!321360) (not b!321358) (not b!321351) (not b!321352) (not b!321359))
(check-sat)
