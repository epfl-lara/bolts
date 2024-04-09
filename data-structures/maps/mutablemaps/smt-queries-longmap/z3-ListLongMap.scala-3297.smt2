; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45738 () Bool)

(assert start!45738)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4078 0))(
  ( (MissingZero!4078 (index!18500 (_ BitVec 32))) (Found!4078 (index!18501 (_ BitVec 32))) (Intermediate!4078 (undefined!4890 Bool) (index!18502 (_ BitVec 32)) (x!47538 (_ BitVec 32))) (Undefined!4078) (MissingVacant!4078 (index!18503 (_ BitVec 32))) )
))
(declare-fun lt!230361 () SeekEntryResult!4078)

(declare-datatypes ((array!32454 0))(
  ( (array!32455 (arr!15604 (Array (_ BitVec 32) (_ BitVec 64))) (size!15968 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32454)

(declare-fun e!295803 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!230367 () SeekEntryResult!4078)

(declare-fun lt!230365 () (_ BitVec 32))

(declare-fun b!505297 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32454 (_ BitVec 32)) SeekEntryResult!4078)

(assert (=> b!505297 (= e!295803 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!230365 (index!18502 lt!230367) (select (arr!15604 a!3235) j!176) a!3235 mask!3524) lt!230361)))))

(declare-fun e!295807 () Bool)

(declare-fun b!505298 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32454 (_ BitVec 32)) SeekEntryResult!4078)

(assert (=> b!505298 (= e!295807 (= (seekEntryOrOpen!0 (select (arr!15604 a!3235) j!176) a!3235 mask!3524) (Found!4078 j!176)))))

(declare-fun b!505299 () Bool)

(declare-fun res!306512 () Bool)

(declare-fun e!295810 () Bool)

(assert (=> b!505299 (=> res!306512 e!295810)))

(declare-fun lt!230369 () (_ BitVec 64))

(declare-fun lt!230370 () SeekEntryResult!4078)

(declare-fun lt!230372 () array!32454)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32454 (_ BitVec 32)) SeekEntryResult!4078)

(assert (=> b!505299 (= res!306512 (not (= lt!230370 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!230365 lt!230369 lt!230372 mask!3524))))))

(declare-fun b!505300 () Bool)

(declare-fun e!295805 () Bool)

(assert (=> b!505300 (= e!295805 e!295810)))

(declare-fun res!306508 () Bool)

(assert (=> b!505300 (=> res!306508 e!295810)))

(assert (=> b!505300 (= res!306508 (or (bvsgt (x!47538 lt!230367) #b01111111111111111111111111111110) (bvslt lt!230365 #b00000000000000000000000000000000) (bvsge lt!230365 (size!15968 a!3235)) (bvslt (index!18502 lt!230367) #b00000000000000000000000000000000) (bvsge (index!18502 lt!230367) (size!15968 a!3235)) (not (= lt!230367 (Intermediate!4078 false (index!18502 lt!230367) (x!47538 lt!230367))))))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!505300 (= (index!18502 lt!230367) i!1204)))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-datatypes ((Unit!15402 0))(
  ( (Unit!15403) )
))
(declare-fun lt!230363 () Unit!15402)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!32454 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15402)

(assert (=> b!505300 (= lt!230363 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k0!2280 j!176 lt!230365 #b00000000000000000000000000000000 (index!18502 lt!230367) (x!47538 lt!230367) mask!3524))))

(assert (=> b!505300 (and (or (= (select (arr!15604 a!3235) (index!18502 lt!230367)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15604 a!3235) (index!18502 lt!230367)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15604 a!3235) (index!18502 lt!230367)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15604 a!3235) (index!18502 lt!230367)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!230360 () Unit!15402)

(declare-fun e!295806 () Unit!15402)

(assert (=> b!505300 (= lt!230360 e!295806)))

(declare-fun c!59675 () Bool)

(assert (=> b!505300 (= c!59675 (= (select (arr!15604 a!3235) (index!18502 lt!230367)) (select (arr!15604 a!3235) j!176)))))

(assert (=> b!505300 (and (bvslt (x!47538 lt!230367) #b01111111111111111111111111111110) (or (= (select (arr!15604 a!3235) (index!18502 lt!230367)) (select (arr!15604 a!3235) j!176)) (= (select (arr!15604 a!3235) (index!18502 lt!230367)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15604 a!3235) (index!18502 lt!230367)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!505301 () Bool)

(assert (=> b!505301 (= e!295810 true)))

(assert (=> b!505301 (= (seekEntryOrOpen!0 lt!230369 lt!230372 mask!3524) lt!230361)))

(declare-fun lt!230366 () Unit!15402)

(declare-fun lemmaPutValidKeyPreservesVacantIsAtI!0 (array!32454 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15402)

(assert (=> b!505301 (= lt!230366 (lemmaPutValidKeyPreservesVacantIsAtI!0 a!3235 i!1204 k0!2280 j!176 lt!230365 #b00000000000000000000000000000000 (index!18502 lt!230367) (x!47538 lt!230367) mask!3524))))

(declare-fun b!505302 () Bool)

(declare-fun e!295809 () Bool)

(assert (=> b!505302 (= e!295809 false)))

(declare-fun b!505303 () Bool)

(declare-fun res!306517 () Bool)

(declare-fun e!295808 () Bool)

(assert (=> b!505303 (=> (not res!306517) (not e!295808))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32454 (_ BitVec 32)) Bool)

(assert (=> b!505303 (= res!306517 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun res!306504 () Bool)

(declare-fun e!295804 () Bool)

(assert (=> start!45738 (=> (not res!306504) (not e!295804))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45738 (= res!306504 (validMask!0 mask!3524))))

(assert (=> start!45738 e!295804))

(assert (=> start!45738 true))

(declare-fun array_inv!11378 (array!32454) Bool)

(assert (=> start!45738 (array_inv!11378 a!3235)))

(declare-fun b!505304 () Bool)

(declare-fun Unit!15404 () Unit!15402)

(assert (=> b!505304 (= e!295806 Unit!15404)))

(declare-fun b!505305 () Bool)

(declare-fun res!306509 () Bool)

(assert (=> b!505305 (=> res!306509 e!295810)))

(assert (=> b!505305 (= res!306509 e!295803)))

(declare-fun res!306515 () Bool)

(assert (=> b!505305 (=> (not res!306515) (not e!295803))))

(assert (=> b!505305 (= res!306515 (bvsgt #b00000000000000000000000000000000 (x!47538 lt!230367)))))

(declare-fun b!505306 () Bool)

(assert (=> b!505306 (= e!295804 e!295808)))

(declare-fun res!306511 () Bool)

(assert (=> b!505306 (=> (not res!306511) (not e!295808))))

(declare-fun lt!230368 () SeekEntryResult!4078)

(assert (=> b!505306 (= res!306511 (or (= lt!230368 (MissingZero!4078 i!1204)) (= lt!230368 (MissingVacant!4078 i!1204))))))

(assert (=> b!505306 (= lt!230368 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!505307 () Bool)

(declare-fun res!306506 () Bool)

(assert (=> b!505307 (=> (not res!306506) (not e!295804))))

(assert (=> b!505307 (= res!306506 (and (= (size!15968 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15968 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15968 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!505308 () Bool)

(declare-fun res!306505 () Bool)

(assert (=> b!505308 (=> (not res!306505) (not e!295804))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!505308 (= res!306505 (validKeyInArray!0 (select (arr!15604 a!3235) j!176)))))

(declare-fun b!505309 () Bool)

(declare-fun res!306507 () Bool)

(assert (=> b!505309 (=> (not res!306507) (not e!295808))))

(declare-datatypes ((List!9815 0))(
  ( (Nil!9812) (Cons!9811 (h!10688 (_ BitVec 64)) (t!16051 List!9815)) )
))
(declare-fun arrayNoDuplicates!0 (array!32454 (_ BitVec 32) List!9815) Bool)

(assert (=> b!505309 (= res!306507 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9812))))

(declare-fun b!505310 () Bool)

(declare-fun Unit!15405 () Unit!15402)

(assert (=> b!505310 (= e!295806 Unit!15405)))

(declare-fun lt!230364 () Unit!15402)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32454 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15402)

(assert (=> b!505310 (= lt!230364 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!230365 #b00000000000000000000000000000000 (index!18502 lt!230367) (x!47538 lt!230367) mask!3524))))

(declare-fun res!306510 () Bool)

(assert (=> b!505310 (= res!306510 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!230365 lt!230369 lt!230372 mask!3524) (Intermediate!4078 false (index!18502 lt!230367) (x!47538 lt!230367))))))

(assert (=> b!505310 (=> (not res!306510) (not e!295809))))

(assert (=> b!505310 e!295809))

(declare-fun b!505311 () Bool)

(assert (=> b!505311 (= e!295808 (not e!295805))))

(declare-fun res!306518 () Bool)

(assert (=> b!505311 (=> res!306518 e!295805)))

(get-info :version)

(assert (=> b!505311 (= res!306518 (or (= lt!230367 lt!230370) (undefined!4890 lt!230367) (not ((_ is Intermediate!4078) lt!230367))))))

(declare-fun lt!230371 () (_ BitVec 32))

(assert (=> b!505311 (= lt!230370 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!230371 lt!230369 lt!230372 mask!3524))))

(assert (=> b!505311 (= lt!230367 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!230365 (select (arr!15604 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!505311 (= lt!230371 (toIndex!0 lt!230369 mask!3524))))

(assert (=> b!505311 (= lt!230369 (select (store (arr!15604 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!505311 (= lt!230365 (toIndex!0 (select (arr!15604 a!3235) j!176) mask!3524))))

(assert (=> b!505311 (= lt!230372 (array!32455 (store (arr!15604 a!3235) i!1204 k0!2280) (size!15968 a!3235)))))

(assert (=> b!505311 (= lt!230361 (Found!4078 j!176))))

(assert (=> b!505311 e!295807))

(declare-fun res!306514 () Bool)

(assert (=> b!505311 (=> (not res!306514) (not e!295807))))

(assert (=> b!505311 (= res!306514 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!230362 () Unit!15402)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32454 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15402)

(assert (=> b!505311 (= lt!230362 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!505312 () Bool)

(declare-fun res!306513 () Bool)

(assert (=> b!505312 (=> (not res!306513) (not e!295804))))

(declare-fun arrayContainsKey!0 (array!32454 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!505312 (= res!306513 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!505313 () Bool)

(declare-fun res!306516 () Bool)

(assert (=> b!505313 (=> (not res!306516) (not e!295804))))

(assert (=> b!505313 (= res!306516 (validKeyInArray!0 k0!2280))))

(assert (= (and start!45738 res!306504) b!505307))

(assert (= (and b!505307 res!306506) b!505308))

(assert (= (and b!505308 res!306505) b!505313))

(assert (= (and b!505313 res!306516) b!505312))

(assert (= (and b!505312 res!306513) b!505306))

(assert (= (and b!505306 res!306511) b!505303))

(assert (= (and b!505303 res!306517) b!505309))

(assert (= (and b!505309 res!306507) b!505311))

(assert (= (and b!505311 res!306514) b!505298))

(assert (= (and b!505311 (not res!306518)) b!505300))

(assert (= (and b!505300 c!59675) b!505310))

(assert (= (and b!505300 (not c!59675)) b!505304))

(assert (= (and b!505310 res!306510) b!505302))

(assert (= (and b!505300 (not res!306508)) b!505305))

(assert (= (and b!505305 res!306515) b!505297))

(assert (= (and b!505305 (not res!306509)) b!505299))

(assert (= (and b!505299 (not res!306512)) b!505301))

(declare-fun m!485997 () Bool)

(assert (=> b!505308 m!485997))

(assert (=> b!505308 m!485997))

(declare-fun m!485999 () Bool)

(assert (=> b!505308 m!485999))

(declare-fun m!486001 () Bool)

(assert (=> start!45738 m!486001))

(declare-fun m!486003 () Bool)

(assert (=> start!45738 m!486003))

(declare-fun m!486005 () Bool)

(assert (=> b!505301 m!486005))

(declare-fun m!486007 () Bool)

(assert (=> b!505301 m!486007))

(declare-fun m!486009 () Bool)

(assert (=> b!505312 m!486009))

(declare-fun m!486011 () Bool)

(assert (=> b!505300 m!486011))

(declare-fun m!486013 () Bool)

(assert (=> b!505300 m!486013))

(assert (=> b!505300 m!485997))

(declare-fun m!486015 () Bool)

(assert (=> b!505310 m!486015))

(declare-fun m!486017 () Bool)

(assert (=> b!505310 m!486017))

(assert (=> b!505299 m!486017))

(declare-fun m!486019 () Bool)

(assert (=> b!505303 m!486019))

(declare-fun m!486021 () Bool)

(assert (=> b!505313 m!486021))

(assert (=> b!505298 m!485997))

(assert (=> b!505298 m!485997))

(declare-fun m!486023 () Bool)

(assert (=> b!505298 m!486023))

(declare-fun m!486025 () Bool)

(assert (=> b!505309 m!486025))

(assert (=> b!505297 m!485997))

(assert (=> b!505297 m!485997))

(declare-fun m!486027 () Bool)

(assert (=> b!505297 m!486027))

(declare-fun m!486029 () Bool)

(assert (=> b!505306 m!486029))

(declare-fun m!486031 () Bool)

(assert (=> b!505311 m!486031))

(declare-fun m!486033 () Bool)

(assert (=> b!505311 m!486033))

(declare-fun m!486035 () Bool)

(assert (=> b!505311 m!486035))

(declare-fun m!486037 () Bool)

(assert (=> b!505311 m!486037))

(assert (=> b!505311 m!485997))

(declare-fun m!486039 () Bool)

(assert (=> b!505311 m!486039))

(assert (=> b!505311 m!485997))

(declare-fun m!486041 () Bool)

(assert (=> b!505311 m!486041))

(assert (=> b!505311 m!485997))

(declare-fun m!486043 () Bool)

(assert (=> b!505311 m!486043))

(declare-fun m!486045 () Bool)

(assert (=> b!505311 m!486045))

(check-sat (not b!505308) (not b!505310) (not b!505299) (not b!505297) (not b!505312) (not b!505313) (not b!505300) (not b!505309) (not b!505306) (not b!505303) (not b!505301) (not start!45738) (not b!505298) (not b!505311))
(check-sat)
