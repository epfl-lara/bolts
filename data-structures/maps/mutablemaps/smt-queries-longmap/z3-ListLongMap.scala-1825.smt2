; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!33014 () Bool)

(assert start!33014)

(declare-fun res!181003 () Bool)

(declare-fun e!201940 () Bool)

(assert (=> start!33014 (=> (not res!181003) (not e!201940))))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33014 (= res!181003 (validMask!0 mask!3777))))

(assert (=> start!33014 e!201940))

(declare-datatypes ((array!16816 0))(
  ( (array!16817 (arr!7952 (Array (_ BitVec 32) (_ BitVec 64))) (size!8304 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16816)

(declare-fun array_inv!5906 (array!16816) Bool)

(assert (=> start!33014 (array_inv!5906 a!3305)))

(assert (=> start!33014 true))

(declare-fun b!328514 () Bool)

(assert (=> b!328514 (= e!201940 false)))

(declare-datatypes ((SeekEntryResult!3094 0))(
  ( (MissingZero!3094 (index!14552 (_ BitVec 32))) (Found!3094 (index!14553 (_ BitVec 32))) (Intermediate!3094 (undefined!3906 Bool) (index!14554 (_ BitVec 32)) (x!32784 (_ BitVec 32))) (Undefined!3094) (MissingVacant!3094 (index!14555 (_ BitVec 32))) )
))
(declare-fun lt!157976 () SeekEntryResult!3094)

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun k0!2497 () (_ BitVec 64))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16816 (_ BitVec 32)) SeekEntryResult!3094)

(assert (=> b!328514 (= lt!157976 (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k0!2497 a!3305 mask!3777))))

(declare-fun b!328515 () Bool)

(declare-fun res!181002 () Bool)

(assert (=> b!328515 (=> (not res!181002) (not e!201940))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16816 (_ BitVec 32)) Bool)

(assert (=> b!328515 (= res!181002 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!328516 () Bool)

(declare-fun res!181004 () Bool)

(assert (=> b!328516 (=> (not res!181004) (not e!201940))))

(declare-fun arrayContainsKey!0 (array!16816 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!328516 (= res!181004 (not (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000)))))

(declare-fun b!328517 () Bool)

(declare-fun res!180999 () Bool)

(assert (=> b!328517 (=> (not res!180999) (not e!201940))))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!328517 (= res!180999 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777) (Intermediate!3094 false resIndex!58 resX!58)))))

(declare-fun b!328518 () Bool)

(declare-fun res!181000 () Bool)

(assert (=> b!328518 (=> (not res!181000) (not e!201940))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!328518 (= res!181000 (validKeyInArray!0 k0!2497))))

(declare-fun b!328519 () Bool)

(declare-fun res!181001 () Bool)

(assert (=> b!328519 (=> (not res!181001) (not e!201940))))

(declare-fun i!1250 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16816 (_ BitVec 32)) SeekEntryResult!3094)

(assert (=> b!328519 (= res!181001 (= (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777) (MissingVacant!3094 i!1250)))))

(declare-fun b!328520 () Bool)

(declare-fun res!181005 () Bool)

(assert (=> b!328520 (=> (not res!181005) (not e!201940))))

(assert (=> b!328520 (= res!181005 (and (= (size!8304 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8304 a!3305))))))

(declare-fun b!328521 () Bool)

(declare-fun res!180998 () Bool)

(assert (=> b!328521 (=> (not res!180998) (not e!201940))))

(assert (=> b!328521 (= res!180998 (and (= (select (arr!7952 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8304 a!3305))))))

(assert (= (and start!33014 res!181003) b!328520))

(assert (= (and b!328520 res!181005) b!328518))

(assert (= (and b!328518 res!181000) b!328516))

(assert (= (and b!328516 res!181004) b!328519))

(assert (= (and b!328519 res!181001) b!328515))

(assert (= (and b!328515 res!181002) b!328517))

(assert (= (and b!328517 res!180999) b!328521))

(assert (= (and b!328521 res!180998) b!328514))

(declare-fun m!334425 () Bool)

(assert (=> b!328517 m!334425))

(assert (=> b!328517 m!334425))

(declare-fun m!334427 () Bool)

(assert (=> b!328517 m!334427))

(declare-fun m!334429 () Bool)

(assert (=> start!33014 m!334429))

(declare-fun m!334431 () Bool)

(assert (=> start!33014 m!334431))

(declare-fun m!334433 () Bool)

(assert (=> b!328519 m!334433))

(declare-fun m!334435 () Bool)

(assert (=> b!328518 m!334435))

(declare-fun m!334437 () Bool)

(assert (=> b!328521 m!334437))

(declare-fun m!334439 () Bool)

(assert (=> b!328514 m!334439))

(declare-fun m!334441 () Bool)

(assert (=> b!328515 m!334441))

(declare-fun m!334443 () Bool)

(assert (=> b!328516 m!334443))

(check-sat (not b!328514) (not b!328518) (not start!33014) (not b!328516) (not b!328517) (not b!328519) (not b!328515))
