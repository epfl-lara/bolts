; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!32480 () Bool)

(assert start!32480)

(declare-fun res!177824 () Bool)

(declare-fun e!200196 () Bool)

(assert (=> start!32480 (=> (not res!177824) (not e!200196))))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32480 (= res!177824 (validMask!0 mask!3777))))

(assert (=> start!32480 e!200196))

(declare-datatypes ((array!16615 0))(
  ( (array!16616 (arr!7862 (Array (_ BitVec 32) (_ BitVec 64))) (size!8214 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16615)

(declare-fun array_inv!5816 (array!16615) Bool)

(assert (=> start!32480 (array_inv!5816 a!3305)))

(assert (=> start!32480 true))

(declare-fun b!324330 () Bool)

(declare-fun res!177828 () Bool)

(declare-fun e!200195 () Bool)

(assert (=> b!324330 (=> (not res!177828) (not e!200195))))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3004 0))(
  ( (MissingZero!3004 (index!14192 (_ BitVec 32))) (Found!3004 (index!14193 (_ BitVec 32))) (Intermediate!3004 (undefined!3816 Bool) (index!14194 (_ BitVec 32)) (x!32403 (_ BitVec 32))) (Undefined!3004) (MissingVacant!3004 (index!14195 (_ BitVec 32))) )
))
(declare-fun lt!156781 () SeekEntryResult!3004)

(declare-fun k0!2497 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16615 (_ BitVec 32)) SeekEntryResult!3004)

(assert (=> b!324330 (= res!177828 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k0!2497 a!3305 mask!3777) lt!156781))))

(declare-fun b!324331 () Bool)

(declare-fun res!177823 () Bool)

(assert (=> b!324331 (=> (not res!177823) (not e!200196))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16615 (_ BitVec 32)) Bool)

(assert (=> b!324331 (= res!177823 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!324332 () Bool)

(assert (=> b!324332 (= e!200195 false)))

(declare-fun lt!156782 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!324332 (= lt!156782 (nextIndex!0 index!1840 x!1490 mask!3777))))

(declare-fun b!324333 () Bool)

(assert (=> b!324333 (= e!200196 e!200195)))

(declare-fun res!177825 () Bool)

(assert (=> b!324333 (=> (not res!177825) (not e!200195))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!324333 (= res!177825 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777) lt!156781))))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(assert (=> b!324333 (= lt!156781 (Intermediate!3004 false resIndex!58 resX!58))))

(declare-fun b!324334 () Bool)

(declare-fun res!177820 () Bool)

(assert (=> b!324334 (=> (not res!177820) (not e!200196))))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!324334 (= res!177820 (and (= (size!8214 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8214 a!3305))))))

(declare-fun b!324335 () Bool)

(declare-fun res!177827 () Bool)

(assert (=> b!324335 (=> (not res!177827) (not e!200196))))

(declare-fun arrayContainsKey!0 (array!16615 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!324335 (= res!177827 (not (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000)))))

(declare-fun b!324336 () Bool)

(declare-fun res!177822 () Bool)

(assert (=> b!324336 (=> (not res!177822) (not e!200196))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!324336 (= res!177822 (validKeyInArray!0 k0!2497))))

(declare-fun b!324337 () Bool)

(declare-fun res!177819 () Bool)

(assert (=> b!324337 (=> (not res!177819) (not e!200195))))

(assert (=> b!324337 (= res!177819 (and (= (select (arr!7862 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8214 a!3305))))))

(declare-fun b!324338 () Bool)

(declare-fun res!177826 () Bool)

(assert (=> b!324338 (=> (not res!177826) (not e!200195))))

(assert (=> b!324338 (= res!177826 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7862 a!3305) index!1840) k0!2497)) (not (= x!1490 resX!58))))))

(declare-fun b!324339 () Bool)

(declare-fun res!177821 () Bool)

(assert (=> b!324339 (=> (not res!177821) (not e!200196))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16615 (_ BitVec 32)) SeekEntryResult!3004)

(assert (=> b!324339 (= res!177821 (= (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777) (MissingVacant!3004 i!1250)))))

(assert (= (and start!32480 res!177824) b!324334))

(assert (= (and b!324334 res!177820) b!324336))

(assert (= (and b!324336 res!177822) b!324335))

(assert (= (and b!324335 res!177827) b!324339))

(assert (= (and b!324339 res!177821) b!324331))

(assert (= (and b!324331 res!177823) b!324333))

(assert (= (and b!324333 res!177825) b!324337))

(assert (= (and b!324337 res!177819) b!324330))

(assert (= (and b!324330 res!177828) b!324338))

(assert (= (and b!324338 res!177826) b!324332))

(declare-fun m!331399 () Bool)

(assert (=> b!324339 m!331399))

(declare-fun m!331401 () Bool)

(assert (=> b!324336 m!331401))

(declare-fun m!331403 () Bool)

(assert (=> b!324335 m!331403))

(declare-fun m!331405 () Bool)

(assert (=> b!324338 m!331405))

(declare-fun m!331407 () Bool)

(assert (=> b!324332 m!331407))

(declare-fun m!331409 () Bool)

(assert (=> b!324333 m!331409))

(assert (=> b!324333 m!331409))

(declare-fun m!331411 () Bool)

(assert (=> b!324333 m!331411))

(declare-fun m!331413 () Bool)

(assert (=> b!324331 m!331413))

(declare-fun m!331415 () Bool)

(assert (=> b!324337 m!331415))

(declare-fun m!331417 () Bool)

(assert (=> b!324330 m!331417))

(declare-fun m!331419 () Bool)

(assert (=> start!32480 m!331419))

(declare-fun m!331421 () Bool)

(assert (=> start!32480 m!331421))

(check-sat (not b!324331) (not b!324336) (not b!324339) (not b!324333) (not b!324330) (not b!324335) (not b!324332) (not start!32480))
(check-sat)
