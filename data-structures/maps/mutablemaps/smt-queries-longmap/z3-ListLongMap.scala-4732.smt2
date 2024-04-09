; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65472 () Bool)

(assert start!65472)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!41598 0))(
  ( (array!41599 (arr!19909 (Array (_ BitVec 32) (_ BitVec 64))) (size!20330 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41598)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun e!416435 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun b!745587 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7516 0))(
  ( (MissingZero!7516 (index!32431 (_ BitVec 32))) (Found!7516 (index!32432 (_ BitVec 32))) (Intermediate!7516 (undefined!8328 Bool) (index!32433 (_ BitVec 32)) (x!63411 (_ BitVec 32))) (Undefined!7516) (MissingVacant!7516 (index!32434 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41598 (_ BitVec 32)) SeekEntryResult!7516)

(assert (=> b!745587 (= e!416435 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19909 a!3186) j!159) a!3186 mask!3328) (Found!7516 j!159)))))

(declare-fun b!745588 () Bool)

(declare-fun res!502580 () Bool)

(declare-fun e!416442 () Bool)

(assert (=> b!745588 (=> (not res!502580) (not e!416442))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!745588 (= res!502580 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20330 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20330 a!3186))))))

(declare-fun b!745589 () Bool)

(declare-fun lt!331279 () SeekEntryResult!7516)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41598 (_ BitVec 32)) SeekEntryResult!7516)

(assert (=> b!745589 (= e!416435 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19909 a!3186) j!159) a!3186 mask!3328) lt!331279))))

(declare-fun b!745590 () Bool)

(declare-fun e!416436 () Bool)

(assert (=> b!745590 (= e!416436 true)))

(declare-fun lt!331283 () SeekEntryResult!7516)

(declare-fun lt!331278 () SeekEntryResult!7516)

(assert (=> b!745590 (= lt!331283 lt!331278)))

(declare-fun b!745591 () Bool)

(declare-fun res!502583 () Bool)

(declare-fun e!416438 () Bool)

(assert (=> b!745591 (=> (not res!502583) (not e!416438))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!745591 (= res!502583 (validKeyInArray!0 k0!2102))))

(declare-fun b!745592 () Bool)

(declare-fun e!416437 () Bool)

(assert (=> b!745592 (= e!416442 e!416437)))

(declare-fun res!502576 () Bool)

(assert (=> b!745592 (=> (not res!502576) (not e!416437))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!745592 (= res!502576 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19909 a!3186) j!159) mask!3328) (select (arr!19909 a!3186) j!159) a!3186 mask!3328) lt!331279))))

(assert (=> b!745592 (= lt!331279 (Intermediate!7516 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!745593 () Bool)

(declare-fun res!502585 () Bool)

(assert (=> b!745593 (=> (not res!502585) (not e!416442))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41598 (_ BitVec 32)) Bool)

(assert (=> b!745593 (= res!502585 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!745594 () Bool)

(declare-fun lt!331281 () SeekEntryResult!7516)

(declare-fun e!416434 () Bool)

(assert (=> b!745594 (= e!416434 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19909 a!3186) j!159) a!3186 mask!3328) lt!331281))))

(declare-fun b!745595 () Bool)

(declare-fun res!502575 () Bool)

(assert (=> b!745595 (=> (not res!502575) (not e!416438))))

(assert (=> b!745595 (= res!502575 (validKeyInArray!0 (select (arr!19909 a!3186) j!159)))))

(declare-fun b!745596 () Bool)

(declare-fun e!416440 () Bool)

(assert (=> b!745596 (= e!416440 e!416436)))

(declare-fun res!502579 () Bool)

(assert (=> b!745596 (=> res!502579 e!416436)))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun lt!331285 () (_ BitVec 64))

(assert (=> b!745596 (= res!502579 (or (not (= lt!331278 lt!331281)) (= (select (store (arr!19909 a!3186) i!1173 k0!2102) index!1321) lt!331285) (not (= (select (store (arr!19909 a!3186) i!1173 k0!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!745596 (= lt!331278 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19909 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!745597 () Bool)

(declare-fun res!502582 () Bool)

(assert (=> b!745597 (=> (not res!502582) (not e!416437))))

(assert (=> b!745597 (= res!502582 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19909 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!745598 () Bool)

(declare-fun e!416441 () Bool)

(assert (=> b!745598 (= e!416437 e!416441)))

(declare-fun res!502587 () Bool)

(assert (=> b!745598 (=> (not res!502587) (not e!416441))))

(declare-fun lt!331277 () SeekEntryResult!7516)

(declare-fun lt!331280 () SeekEntryResult!7516)

(assert (=> b!745598 (= res!502587 (= lt!331277 lt!331280))))

(declare-fun lt!331286 () array!41598)

(assert (=> b!745598 (= lt!331280 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!331285 lt!331286 mask!3328))))

(assert (=> b!745598 (= lt!331277 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!331285 mask!3328) lt!331285 lt!331286 mask!3328))))

(assert (=> b!745598 (= lt!331285 (select (store (arr!19909 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!745598 (= lt!331286 (array!41599 (store (arr!19909 a!3186) i!1173 k0!2102) (size!20330 a!3186)))))

(declare-fun b!745599 () Bool)

(declare-fun res!502572 () Bool)

(assert (=> b!745599 (=> (not res!502572) (not e!416438))))

(assert (=> b!745599 (= res!502572 (and (= (size!20330 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20330 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20330 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!745600 () Bool)

(declare-fun res!502573 () Bool)

(assert (=> b!745600 (=> (not res!502573) (not e!416438))))

(declare-fun arrayContainsKey!0 (array!41598 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!745600 (= res!502573 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!745601 () Bool)

(assert (=> b!745601 (= e!416441 (not e!416440))))

(declare-fun res!502577 () Bool)

(assert (=> b!745601 (=> res!502577 e!416440)))

(get-info :version)

(assert (=> b!745601 (= res!502577 (or (not ((_ is Intermediate!7516) lt!331280)) (bvslt x!1131 (x!63411 lt!331280)) (not (= x!1131 (x!63411 lt!331280))) (not (= index!1321 (index!32433 lt!331280)))))))

(assert (=> b!745601 e!416434))

(declare-fun res!502581 () Bool)

(assert (=> b!745601 (=> (not res!502581) (not e!416434))))

(assert (=> b!745601 (= res!502581 (= lt!331283 lt!331281))))

(assert (=> b!745601 (= lt!331281 (Found!7516 j!159))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41598 (_ BitVec 32)) SeekEntryResult!7516)

(assert (=> b!745601 (= lt!331283 (seekEntryOrOpen!0 (select (arr!19909 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!745601 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!25512 0))(
  ( (Unit!25513) )
))
(declare-fun lt!331284 () Unit!25512)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41598 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25512)

(assert (=> b!745601 (= lt!331284 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!745602 () Bool)

(declare-fun res!502574 () Bool)

(assert (=> b!745602 (=> (not res!502574) (not e!416437))))

(assert (=> b!745602 (= res!502574 e!416435)))

(declare-fun c!81888 () Bool)

(assert (=> b!745602 (= c!81888 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!745604 () Bool)

(declare-fun res!502578 () Bool)

(assert (=> b!745604 (=> (not res!502578) (not e!416442))))

(declare-datatypes ((List!13964 0))(
  ( (Nil!13961) (Cons!13960 (h!15032 (_ BitVec 64)) (t!20287 List!13964)) )
))
(declare-fun arrayNoDuplicates!0 (array!41598 (_ BitVec 32) List!13964) Bool)

(assert (=> b!745604 (= res!502578 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13961))))

(declare-fun b!745603 () Bool)

(assert (=> b!745603 (= e!416438 e!416442)))

(declare-fun res!502584 () Bool)

(assert (=> b!745603 (=> (not res!502584) (not e!416442))))

(declare-fun lt!331282 () SeekEntryResult!7516)

(assert (=> b!745603 (= res!502584 (or (= lt!331282 (MissingZero!7516 i!1173)) (= lt!331282 (MissingVacant!7516 i!1173))))))

(assert (=> b!745603 (= lt!331282 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun res!502586 () Bool)

(assert (=> start!65472 (=> (not res!502586) (not e!416438))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65472 (= res!502586 (validMask!0 mask!3328))))

(assert (=> start!65472 e!416438))

(assert (=> start!65472 true))

(declare-fun array_inv!15683 (array!41598) Bool)

(assert (=> start!65472 (array_inv!15683 a!3186)))

(assert (= (and start!65472 res!502586) b!745599))

(assert (= (and b!745599 res!502572) b!745595))

(assert (= (and b!745595 res!502575) b!745591))

(assert (= (and b!745591 res!502583) b!745600))

(assert (= (and b!745600 res!502573) b!745603))

(assert (= (and b!745603 res!502584) b!745593))

(assert (= (and b!745593 res!502585) b!745604))

(assert (= (and b!745604 res!502578) b!745588))

(assert (= (and b!745588 res!502580) b!745592))

(assert (= (and b!745592 res!502576) b!745597))

(assert (= (and b!745597 res!502582) b!745602))

(assert (= (and b!745602 c!81888) b!745589))

(assert (= (and b!745602 (not c!81888)) b!745587))

(assert (= (and b!745602 res!502574) b!745598))

(assert (= (and b!745598 res!502587) b!745601))

(assert (= (and b!745601 res!502581) b!745594))

(assert (= (and b!745601 (not res!502577)) b!745596))

(assert (= (and b!745596 (not res!502579)) b!745590))

(declare-fun m!696025 () Bool)

(assert (=> b!745601 m!696025))

(assert (=> b!745601 m!696025))

(declare-fun m!696027 () Bool)

(assert (=> b!745601 m!696027))

(declare-fun m!696029 () Bool)

(assert (=> b!745601 m!696029))

(declare-fun m!696031 () Bool)

(assert (=> b!745601 m!696031))

(declare-fun m!696033 () Bool)

(assert (=> b!745604 m!696033))

(declare-fun m!696035 () Bool)

(assert (=> b!745591 m!696035))

(assert (=> b!745589 m!696025))

(assert (=> b!745589 m!696025))

(declare-fun m!696037 () Bool)

(assert (=> b!745589 m!696037))

(assert (=> b!745587 m!696025))

(assert (=> b!745587 m!696025))

(declare-fun m!696039 () Bool)

(assert (=> b!745587 m!696039))

(assert (=> b!745592 m!696025))

(assert (=> b!745592 m!696025))

(declare-fun m!696041 () Bool)

(assert (=> b!745592 m!696041))

(assert (=> b!745592 m!696041))

(assert (=> b!745592 m!696025))

(declare-fun m!696043 () Bool)

(assert (=> b!745592 m!696043))

(assert (=> b!745594 m!696025))

(assert (=> b!745594 m!696025))

(declare-fun m!696045 () Bool)

(assert (=> b!745594 m!696045))

(assert (=> b!745595 m!696025))

(assert (=> b!745595 m!696025))

(declare-fun m!696047 () Bool)

(assert (=> b!745595 m!696047))

(declare-fun m!696049 () Bool)

(assert (=> start!65472 m!696049))

(declare-fun m!696051 () Bool)

(assert (=> start!65472 m!696051))

(declare-fun m!696053 () Bool)

(assert (=> b!745600 m!696053))

(declare-fun m!696055 () Bool)

(assert (=> b!745597 m!696055))

(declare-fun m!696057 () Bool)

(assert (=> b!745603 m!696057))

(declare-fun m!696059 () Bool)

(assert (=> b!745596 m!696059))

(declare-fun m!696061 () Bool)

(assert (=> b!745596 m!696061))

(assert (=> b!745596 m!696025))

(assert (=> b!745596 m!696025))

(assert (=> b!745596 m!696039))

(declare-fun m!696063 () Bool)

(assert (=> b!745598 m!696063))

(assert (=> b!745598 m!696059))

(declare-fun m!696065 () Bool)

(assert (=> b!745598 m!696065))

(declare-fun m!696067 () Bool)

(assert (=> b!745598 m!696067))

(assert (=> b!745598 m!696067))

(declare-fun m!696069 () Bool)

(assert (=> b!745598 m!696069))

(declare-fun m!696071 () Bool)

(assert (=> b!745593 m!696071))

(check-sat (not b!745591) (not b!745595) (not b!745589) (not b!745598) (not b!745596) (not b!745603) (not b!745594) (not b!745593) (not b!745601) (not b!745592) (not start!65472) (not b!745604) (not b!745600) (not b!745587))
(check-sat)
