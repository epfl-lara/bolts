; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!32462 () Bool)

(assert start!32462)

(declare-fun b!324064 () Bool)

(declare-fun res!177557 () Bool)

(declare-fun e!200114 () Bool)

(assert (=> b!324064 (=> (not res!177557) (not e!200114))))

(declare-fun k0!2497 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!324064 (= res!177557 (validKeyInArray!0 k0!2497))))

(declare-fun b!324065 () Bool)

(declare-fun res!177558 () Bool)

(assert (=> b!324065 (=> (not res!177558) (not e!200114))))

(declare-datatypes ((array!16597 0))(
  ( (array!16598 (arr!7853 (Array (_ BitVec 32) (_ BitVec 64))) (size!8205 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16597)

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!324065 (= res!177558 (and (= (size!8205 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8205 a!3305))))))

(declare-fun b!324066 () Bool)

(declare-fun res!177555 () Bool)

(assert (=> b!324066 (=> (not res!177555) (not e!200114))))

(declare-fun arrayContainsKey!0 (array!16597 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!324066 (= res!177555 (not (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000)))))

(declare-fun b!324067 () Bool)

(declare-fun res!177561 () Bool)

(declare-fun e!200115 () Bool)

(assert (=> b!324067 (=> (not res!177561) (not e!200115))))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2995 0))(
  ( (MissingZero!2995 (index!14156 (_ BitVec 32))) (Found!2995 (index!14157 (_ BitVec 32))) (Intermediate!2995 (undefined!3807 Bool) (index!14158 (_ BitVec 32)) (x!32370 (_ BitVec 32))) (Undefined!2995) (MissingVacant!2995 (index!14159 (_ BitVec 32))) )
))
(declare-fun lt!156731 () SeekEntryResult!2995)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16597 (_ BitVec 32)) SeekEntryResult!2995)

(assert (=> b!324067 (= res!177561 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k0!2497 a!3305 mask!3777) lt!156731))))

(declare-fun b!324068 () Bool)

(assert (=> b!324068 (= e!200114 e!200115)))

(declare-fun res!177559 () Bool)

(assert (=> b!324068 (=> (not res!177559) (not e!200115))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!324068 (= res!177559 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777) lt!156731))))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(assert (=> b!324068 (= lt!156731 (Intermediate!2995 false resIndex!58 resX!58))))

(declare-fun b!324069 () Bool)

(assert (=> b!324069 (= e!200115 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7853 a!3305) index!1840) k0!2497)) (not (= x!1490 resX!58)) (bvsge mask!3777 #b00000000000000000000000000000000) (bvslt index!1840 (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsgt x!1490 #b01111111111111111111111111111110)))))

(declare-fun b!324070 () Bool)

(declare-fun res!177554 () Bool)

(assert (=> b!324070 (=> (not res!177554) (not e!200114))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16597 (_ BitVec 32)) SeekEntryResult!2995)

(assert (=> b!324070 (= res!177554 (= (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777) (MissingVacant!2995 i!1250)))))

(declare-fun res!177560 () Bool)

(assert (=> start!32462 (=> (not res!177560) (not e!200114))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32462 (= res!177560 (validMask!0 mask!3777))))

(assert (=> start!32462 e!200114))

(declare-fun array_inv!5807 (array!16597) Bool)

(assert (=> start!32462 (array_inv!5807 a!3305)))

(assert (=> start!32462 true))

(declare-fun b!324071 () Bool)

(declare-fun res!177553 () Bool)

(assert (=> b!324071 (=> (not res!177553) (not e!200115))))

(assert (=> b!324071 (= res!177553 (and (= (select (arr!7853 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8205 a!3305))))))

(declare-fun b!324072 () Bool)

(declare-fun res!177556 () Bool)

(assert (=> b!324072 (=> (not res!177556) (not e!200114))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16597 (_ BitVec 32)) Bool)

(assert (=> b!324072 (= res!177556 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(assert (= (and start!32462 res!177560) b!324065))

(assert (= (and b!324065 res!177558) b!324064))

(assert (= (and b!324064 res!177557) b!324066))

(assert (= (and b!324066 res!177555) b!324070))

(assert (= (and b!324070 res!177554) b!324072))

(assert (= (and b!324072 res!177556) b!324068))

(assert (= (and b!324068 res!177559) b!324071))

(assert (= (and b!324071 res!177553) b!324067))

(assert (= (and b!324067 res!177561) b!324069))

(declare-fun m!331187 () Bool)

(assert (=> b!324072 m!331187))

(declare-fun m!331189 () Bool)

(assert (=> b!324066 m!331189))

(declare-fun m!331191 () Bool)

(assert (=> b!324067 m!331191))

(declare-fun m!331193 () Bool)

(assert (=> b!324069 m!331193))

(declare-fun m!331195 () Bool)

(assert (=> start!32462 m!331195))

(declare-fun m!331197 () Bool)

(assert (=> start!32462 m!331197))

(declare-fun m!331199 () Bool)

(assert (=> b!324070 m!331199))

(declare-fun m!331201 () Bool)

(assert (=> b!324068 m!331201))

(assert (=> b!324068 m!331201))

(declare-fun m!331203 () Bool)

(assert (=> b!324068 m!331203))

(declare-fun m!331205 () Bool)

(assert (=> b!324064 m!331205))

(declare-fun m!331207 () Bool)

(assert (=> b!324071 m!331207))

(check-sat (not b!324070) (not start!32462) (not b!324064) (not b!324066) (not b!324072) (not b!324068) (not b!324067))
(check-sat)
