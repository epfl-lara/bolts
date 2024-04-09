; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!32492 () Bool)

(assert start!32492)

(declare-fun b!324510 () Bool)

(declare-fun res!178001 () Bool)

(declare-fun e!200251 () Bool)

(assert (=> b!324510 (=> (not res!178001) (not e!200251))))

(declare-datatypes ((array!16627 0))(
  ( (array!16628 (arr!7868 (Array (_ BitVec 32) (_ BitVec 64))) (size!8220 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16627)

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(assert (=> b!324510 (= res!178001 (and (= (select (arr!7868 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8220 a!3305))))))

(declare-fun b!324511 () Bool)

(declare-fun res!177999 () Bool)

(declare-fun e!200250 () Bool)

(assert (=> b!324511 (=> (not res!177999) (not e!200250))))

(declare-fun k0!2497 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!16627 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!324511 (= res!177999 (not (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000)))))

(declare-fun b!324512 () Bool)

(assert (=> b!324512 (= e!200251 false)))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun lt!156818 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!324512 (= lt!156818 (nextIndex!0 index!1840 x!1490 mask!3777))))

(declare-fun b!324514 () Bool)

(declare-fun res!178008 () Bool)

(assert (=> b!324514 (=> (not res!178008) (not e!200251))))

(assert (=> b!324514 (= res!178008 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7868 a!3305) index!1840) k0!2497)) (not (= x!1490 resX!58))))))

(declare-fun b!324515 () Bool)

(assert (=> b!324515 (= e!200250 e!200251)))

(declare-fun res!178005 () Bool)

(assert (=> b!324515 (=> (not res!178005) (not e!200251))))

(declare-datatypes ((SeekEntryResult!3010 0))(
  ( (MissingZero!3010 (index!14216 (_ BitVec 32))) (Found!3010 (index!14217 (_ BitVec 32))) (Intermediate!3010 (undefined!3822 Bool) (index!14218 (_ BitVec 32)) (x!32425 (_ BitVec 32))) (Undefined!3010) (MissingVacant!3010 (index!14219 (_ BitVec 32))) )
))
(declare-fun lt!156817 () SeekEntryResult!3010)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16627 (_ BitVec 32)) SeekEntryResult!3010)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!324515 (= res!178005 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777) lt!156817))))

(assert (=> b!324515 (= lt!156817 (Intermediate!3010 false resIndex!58 resX!58))))

(declare-fun b!324516 () Bool)

(declare-fun res!178000 () Bool)

(assert (=> b!324516 (=> (not res!178000) (not e!200250))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!324516 (= res!178000 (validKeyInArray!0 k0!2497))))

(declare-fun b!324517 () Bool)

(declare-fun res!178006 () Bool)

(assert (=> b!324517 (=> (not res!178006) (not e!200251))))

(assert (=> b!324517 (= res!178006 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k0!2497 a!3305 mask!3777) lt!156817))))

(declare-fun b!324518 () Bool)

(declare-fun res!178003 () Bool)

(assert (=> b!324518 (=> (not res!178003) (not e!200250))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16627 (_ BitVec 32)) SeekEntryResult!3010)

(assert (=> b!324518 (= res!178003 (= (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777) (MissingVacant!3010 i!1250)))))

(declare-fun b!324519 () Bool)

(declare-fun res!178004 () Bool)

(assert (=> b!324519 (=> (not res!178004) (not e!200250))))

(assert (=> b!324519 (= res!178004 (and (= (size!8220 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8220 a!3305))))))

(declare-fun b!324513 () Bool)

(declare-fun res!178002 () Bool)

(assert (=> b!324513 (=> (not res!178002) (not e!200250))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16627 (_ BitVec 32)) Bool)

(assert (=> b!324513 (= res!178002 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun res!178007 () Bool)

(assert (=> start!32492 (=> (not res!178007) (not e!200250))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32492 (= res!178007 (validMask!0 mask!3777))))

(assert (=> start!32492 e!200250))

(declare-fun array_inv!5822 (array!16627) Bool)

(assert (=> start!32492 (array_inv!5822 a!3305)))

(assert (=> start!32492 true))

(assert (= (and start!32492 res!178007) b!324519))

(assert (= (and b!324519 res!178004) b!324516))

(assert (= (and b!324516 res!178000) b!324511))

(assert (= (and b!324511 res!177999) b!324518))

(assert (= (and b!324518 res!178003) b!324513))

(assert (= (and b!324513 res!178002) b!324515))

(assert (= (and b!324515 res!178005) b!324510))

(assert (= (and b!324510 res!178001) b!324517))

(assert (= (and b!324517 res!178006) b!324514))

(assert (= (and b!324514 res!178008) b!324512))

(declare-fun m!331543 () Bool)

(assert (=> b!324514 m!331543))

(declare-fun m!331545 () Bool)

(assert (=> b!324511 m!331545))

(declare-fun m!331547 () Bool)

(assert (=> b!324518 m!331547))

(declare-fun m!331549 () Bool)

(assert (=> b!324517 m!331549))

(declare-fun m!331551 () Bool)

(assert (=> b!324510 m!331551))

(declare-fun m!331553 () Bool)

(assert (=> b!324515 m!331553))

(assert (=> b!324515 m!331553))

(declare-fun m!331555 () Bool)

(assert (=> b!324515 m!331555))

(declare-fun m!331557 () Bool)

(assert (=> b!324516 m!331557))

(declare-fun m!331559 () Bool)

(assert (=> b!324512 m!331559))

(declare-fun m!331561 () Bool)

(assert (=> b!324513 m!331561))

(declare-fun m!331563 () Bool)

(assert (=> start!32492 m!331563))

(declare-fun m!331565 () Bool)

(assert (=> start!32492 m!331565))

(check-sat (not b!324511) (not b!324515) (not start!32492) (not b!324513) (not b!324517) (not b!324516) (not b!324518) (not b!324512))
(check-sat)
