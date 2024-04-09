; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65258 () Bool)

(assert start!65258)

(declare-fun b!739290 () Bool)

(declare-fun res!497177 () Bool)

(declare-fun e!413425 () Bool)

(assert (=> b!739290 (=> (not res!497177) (not e!413425))))

(declare-datatypes ((array!41384 0))(
  ( (array!41385 (arr!19802 (Array (_ BitVec 32) (_ BitVec 64))) (size!20223 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41384)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!739290 (= res!497177 (validKeyInArray!0 (select (arr!19802 a!3186) j!159)))))

(declare-fun b!739291 () Bool)

(declare-datatypes ((Unit!25254 0))(
  ( (Unit!25255) )
))
(declare-fun e!413419 () Unit!25254)

(declare-fun Unit!25256 () Unit!25254)

(assert (=> b!739291 (= e!413419 Unit!25256)))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7409 0))(
  ( (MissingZero!7409 (index!32003 (_ BitVec 32))) (Found!7409 (index!32004 (_ BitVec 32))) (Intermediate!7409 (undefined!8221 Bool) (index!32005 (_ BitVec 32)) (x!63016 (_ BitVec 32))) (Undefined!7409) (MissingVacant!7409 (index!32006 (_ BitVec 32))) )
))
(declare-fun lt!328298 () SeekEntryResult!7409)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41384 (_ BitVec 32)) SeekEntryResult!7409)

(assert (=> b!739291 (= lt!328298 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19802 a!3186) j!159) a!3186 mask!3328))))

(declare-fun lt!328299 () SeekEntryResult!7409)

(declare-fun lt!328310 () (_ BitVec 32))

(assert (=> b!739291 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328310 resIntermediateIndex!5 (select (arr!19802 a!3186) j!159) a!3186 mask!3328) lt!328299)))

(declare-fun b!739292 () Bool)

(declare-fun e!413422 () Bool)

(declare-fun e!413417 () Bool)

(assert (=> b!739292 (= e!413422 e!413417)))

(declare-fun res!497180 () Bool)

(assert (=> b!739292 (=> (not res!497180) (not e!413417))))

(declare-fun lt!328304 () SeekEntryResult!7409)

(declare-fun lt!328303 () SeekEntryResult!7409)

(assert (=> b!739292 (= res!497180 (= lt!328304 lt!328303))))

(declare-fun lt!328301 () (_ BitVec 64))

(declare-fun lt!328307 () array!41384)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41384 (_ BitVec 32)) SeekEntryResult!7409)

(assert (=> b!739292 (= lt!328303 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!328301 lt!328307 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!739292 (= lt!328304 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!328301 mask!3328) lt!328301 lt!328307 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!739292 (= lt!328301 (select (store (arr!19802 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!739292 (= lt!328307 (array!41385 (store (arr!19802 a!3186) i!1173 k!2102) (size!20223 a!3186)))))

(declare-fun b!739293 () Bool)

(declare-fun e!413421 () Bool)

(assert (=> b!739293 (= e!413417 (not e!413421))))

(declare-fun res!497174 () Bool)

(assert (=> b!739293 (=> res!497174 e!413421)))

(assert (=> b!739293 (= res!497174 (or (not (is-Intermediate!7409 lt!328303)) (bvsge x!1131 (x!63016 lt!328303))))))

(assert (=> b!739293 (= lt!328299 (Found!7409 j!159))))

(declare-fun e!413423 () Bool)

(assert (=> b!739293 e!413423))

(declare-fun res!497185 () Bool)

(assert (=> b!739293 (=> (not res!497185) (not e!413423))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41384 (_ BitVec 32)) Bool)

(assert (=> b!739293 (= res!497185 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!328308 () Unit!25254)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41384 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25254)

(assert (=> b!739293 (= lt!328308 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun e!413420 () Bool)

(declare-fun b!739294 () Bool)

(assert (=> b!739294 (= e!413420 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19802 a!3186) j!159) a!3186 mask!3328) (Found!7409 j!159)))))

(declare-fun b!739296 () Bool)

(declare-fun res!497173 () Bool)

(assert (=> b!739296 (=> (not res!497173) (not e!413425))))

(assert (=> b!739296 (= res!497173 (and (= (size!20223 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20223 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20223 a!3186)) (not (= i!1173 j!159))))))

(declare-fun e!413424 () Bool)

(declare-fun b!739297 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun lt!328297 () SeekEntryResult!7409)

(assert (=> b!739297 (= e!413424 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19802 a!3186) j!159) a!3186 mask!3328) lt!328297))))

(declare-fun b!739298 () Bool)

(declare-fun e!413416 () Bool)

(assert (=> b!739298 (= e!413421 e!413416)))

(declare-fun res!497184 () Bool)

(assert (=> b!739298 (=> res!497184 e!413416)))

(assert (=> b!739298 (= res!497184 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (bvslt lt!328310 #b00000000000000000000000000000000) (bvsge lt!328310 (size!20223 a!3186))))))

(declare-fun lt!328306 () Unit!25254)

(assert (=> b!739298 (= lt!328306 e!413419)))

(declare-fun c!81440 () Bool)

(declare-fun lt!328302 () Bool)

(assert (=> b!739298 (= c!81440 lt!328302)))

(assert (=> b!739298 (= lt!328302 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!739298 (= lt!328310 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!739299 () Bool)

(declare-fun lt!328309 () SeekEntryResult!7409)

(assert (=> b!739299 (= e!413420 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19802 a!3186) j!159) a!3186 mask!3328) lt!328309))))

(declare-fun res!497179 () Bool)

(assert (=> start!65258 (=> (not res!497179) (not e!413425))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65258 (= res!497179 (validMask!0 mask!3328))))

(assert (=> start!65258 e!413425))

(assert (=> start!65258 true))

(declare-fun array_inv!15576 (array!41384) Bool)

(assert (=> start!65258 (array_inv!15576 a!3186)))

(declare-fun b!739295 () Bool)

(declare-fun res!497190 () Bool)

(assert (=> b!739295 (=> res!497190 e!413416)))

(declare-fun e!413426 () Bool)

(assert (=> b!739295 (= res!497190 e!413426)))

(declare-fun c!81439 () Bool)

(assert (=> b!739295 (= c!81439 lt!328302)))

(declare-fun b!739300 () Bool)

(declare-fun res!497187 () Bool)

(assert (=> b!739300 (=> (not res!497187) (not e!413425))))

(assert (=> b!739300 (= res!497187 (validKeyInArray!0 k!2102))))

(declare-fun b!739301 () Bool)

(assert (=> b!739301 (= e!413426 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328310 resIntermediateIndex!5 (select (arr!19802 a!3186) j!159) a!3186 mask!3328) lt!328299)))))

(declare-fun b!739302 () Bool)

(assert (=> b!739302 (= e!413416 true)))

(declare-fun lt!328300 () SeekEntryResult!7409)

(assert (=> b!739302 (= lt!328300 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328310 lt!328301 lt!328307 mask!3328))))

(declare-fun b!739303 () Bool)

(assert (=> b!739303 (= e!413423 e!413424)))

(declare-fun res!497175 () Bool)

(assert (=> b!739303 (=> (not res!497175) (not e!413424))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41384 (_ BitVec 32)) SeekEntryResult!7409)

(assert (=> b!739303 (= res!497175 (= (seekEntryOrOpen!0 (select (arr!19802 a!3186) j!159) a!3186 mask!3328) lt!328297))))

(assert (=> b!739303 (= lt!328297 (Found!7409 j!159))))

(declare-fun b!739304 () Bool)

(declare-fun e!413427 () Bool)

(assert (=> b!739304 (= e!413425 e!413427)))

(declare-fun res!497188 () Bool)

(assert (=> b!739304 (=> (not res!497188) (not e!413427))))

(declare-fun lt!328305 () SeekEntryResult!7409)

(assert (=> b!739304 (= res!497188 (or (= lt!328305 (MissingZero!7409 i!1173)) (= lt!328305 (MissingVacant!7409 i!1173))))))

(assert (=> b!739304 (= lt!328305 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!739305 () Bool)

(declare-fun res!497183 () Bool)

(assert (=> b!739305 (=> (not res!497183) (not e!413427))))

(assert (=> b!739305 (= res!497183 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!739306 () Bool)

(declare-fun res!497176 () Bool)

(assert (=> b!739306 (=> (not res!497176) (not e!413427))))

(assert (=> b!739306 (= res!497176 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20223 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20223 a!3186))))))

(declare-fun b!739307 () Bool)

(declare-fun res!497189 () Bool)

(assert (=> b!739307 (=> (not res!497189) (not e!413422))))

(assert (=> b!739307 (= res!497189 e!413420)))

(declare-fun c!81441 () Bool)

(assert (=> b!739307 (= c!81441 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!739308 () Bool)

(assert (=> b!739308 (= e!413427 e!413422)))

(declare-fun res!497186 () Bool)

(assert (=> b!739308 (=> (not res!497186) (not e!413422))))

(assert (=> b!739308 (= res!497186 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19802 a!3186) j!159) mask!3328) (select (arr!19802 a!3186) j!159) a!3186 mask!3328) lt!328309))))

(assert (=> b!739308 (= lt!328309 (Intermediate!7409 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!739309 () Bool)

(declare-fun res!497178 () Bool)

(assert (=> b!739309 (=> (not res!497178) (not e!413422))))

(assert (=> b!739309 (= res!497178 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19802 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!739310 () Bool)

(declare-fun Unit!25257 () Unit!25254)

(assert (=> b!739310 (= e!413419 Unit!25257)))

(assert (=> b!739310 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328310 (select (arr!19802 a!3186) j!159) a!3186 mask!3328) lt!328309)))

(declare-fun b!739311 () Bool)

(declare-fun res!497182 () Bool)

(assert (=> b!739311 (=> (not res!497182) (not e!413427))))

(declare-datatypes ((List!13857 0))(
  ( (Nil!13854) (Cons!13853 (h!14925 (_ BitVec 64)) (t!20180 List!13857)) )
))
(declare-fun arrayNoDuplicates!0 (array!41384 (_ BitVec 32) List!13857) Bool)

(assert (=> b!739311 (= res!497182 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13854))))

(declare-fun b!739312 () Bool)

(declare-fun res!497181 () Bool)

(assert (=> b!739312 (=> (not res!497181) (not e!413425))))

(declare-fun arrayContainsKey!0 (array!41384 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!739312 (= res!497181 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!739313 () Bool)

(assert (=> b!739313 (= e!413426 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328310 (select (arr!19802 a!3186) j!159) a!3186 mask!3328) lt!328309)))))

(assert (= (and start!65258 res!497179) b!739296))

(assert (= (and b!739296 res!497173) b!739290))

(assert (= (and b!739290 res!497177) b!739300))

(assert (= (and b!739300 res!497187) b!739312))

(assert (= (and b!739312 res!497181) b!739304))

(assert (= (and b!739304 res!497188) b!739305))

(assert (= (and b!739305 res!497183) b!739311))

(assert (= (and b!739311 res!497182) b!739306))

(assert (= (and b!739306 res!497176) b!739308))

(assert (= (and b!739308 res!497186) b!739309))

(assert (= (and b!739309 res!497178) b!739307))

(assert (= (and b!739307 c!81441) b!739299))

(assert (= (and b!739307 (not c!81441)) b!739294))

(assert (= (and b!739307 res!497189) b!739292))

(assert (= (and b!739292 res!497180) b!739293))

(assert (= (and b!739293 res!497185) b!739303))

(assert (= (and b!739303 res!497175) b!739297))

(assert (= (and b!739293 (not res!497174)) b!739298))

(assert (= (and b!739298 c!81440) b!739310))

(assert (= (and b!739298 (not c!81440)) b!739291))

(assert (= (and b!739298 (not res!497184)) b!739295))

(assert (= (and b!739295 c!81439) b!739313))

(assert (= (and b!739295 (not c!81439)) b!739301))

(assert (= (and b!739295 (not res!497190)) b!739302))

(declare-fun m!690775 () Bool)

(assert (=> b!739290 m!690775))

(assert (=> b!739290 m!690775))

(declare-fun m!690777 () Bool)

(assert (=> b!739290 m!690777))

(assert (=> b!739310 m!690775))

(assert (=> b!739310 m!690775))

(declare-fun m!690779 () Bool)

(assert (=> b!739310 m!690779))

(declare-fun m!690781 () Bool)

(assert (=> b!739292 m!690781))

(declare-fun m!690783 () Bool)

(assert (=> b!739292 m!690783))

(declare-fun m!690785 () Bool)

(assert (=> b!739292 m!690785))

(declare-fun m!690787 () Bool)

(assert (=> b!739292 m!690787))

(declare-fun m!690789 () Bool)

(assert (=> b!739292 m!690789))

(assert (=> b!739292 m!690787))

(declare-fun m!690791 () Bool)

(assert (=> b!739309 m!690791))

(assert (=> b!739313 m!690775))

(assert (=> b!739313 m!690775))

(assert (=> b!739313 m!690779))

(declare-fun m!690793 () Bool)

(assert (=> b!739304 m!690793))

(declare-fun m!690795 () Bool)

(assert (=> b!739293 m!690795))

(declare-fun m!690797 () Bool)

(assert (=> b!739293 m!690797))

(assert (=> b!739303 m!690775))

(assert (=> b!739303 m!690775))

(declare-fun m!690799 () Bool)

(assert (=> b!739303 m!690799))

(declare-fun m!690801 () Bool)

(assert (=> b!739312 m!690801))

(declare-fun m!690803 () Bool)

(assert (=> start!65258 m!690803))

(declare-fun m!690805 () Bool)

(assert (=> start!65258 m!690805))

(assert (=> b!739297 m!690775))

(assert (=> b!739297 m!690775))

(declare-fun m!690807 () Bool)

(assert (=> b!739297 m!690807))

(assert (=> b!739308 m!690775))

(assert (=> b!739308 m!690775))

(declare-fun m!690809 () Bool)

(assert (=> b!739308 m!690809))

(assert (=> b!739308 m!690809))

(assert (=> b!739308 m!690775))

(declare-fun m!690811 () Bool)

(assert (=> b!739308 m!690811))

(declare-fun m!690813 () Bool)

(assert (=> b!739298 m!690813))

(declare-fun m!690815 () Bool)

(assert (=> b!739300 m!690815))

(declare-fun m!690817 () Bool)

(assert (=> b!739302 m!690817))

(declare-fun m!690819 () Bool)

(assert (=> b!739311 m!690819))

(assert (=> b!739301 m!690775))

(assert (=> b!739301 m!690775))

(declare-fun m!690821 () Bool)

(assert (=> b!739301 m!690821))

(declare-fun m!690823 () Bool)

(assert (=> b!739305 m!690823))

(assert (=> b!739291 m!690775))

(assert (=> b!739291 m!690775))

(declare-fun m!690825 () Bool)

(assert (=> b!739291 m!690825))

(assert (=> b!739291 m!690775))

(assert (=> b!739291 m!690821))

(assert (=> b!739299 m!690775))

(assert (=> b!739299 m!690775))

(declare-fun m!690827 () Bool)

(assert (=> b!739299 m!690827))

(assert (=> b!739294 m!690775))

(assert (=> b!739294 m!690775))

(assert (=> b!739294 m!690825))

(push 1)

