; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65152 () Bool)

(assert start!65152)

(declare-fun b!735474 () Bool)

(declare-fun e!411516 () Bool)

(declare-fun e!411511 () Bool)

(assert (=> b!735474 (= e!411516 e!411511)))

(declare-fun res!494326 () Bool)

(assert (=> b!735474 (=> res!494326 e!411511)))

(declare-datatypes ((array!41278 0))(
  ( (array!41279 (arr!19749 (Array (_ BitVec 32) (_ BitVec 64))) (size!20170 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41278)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun lt!326083 () (_ BitVec 32))

(assert (=> b!735474 (= res!494326 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (bvslt lt!326083 #b00000000000000000000000000000000) (bvsge lt!326083 (size!20170 a!3186))))))

(declare-datatypes ((Unit!25042 0))(
  ( (Unit!25043) )
))
(declare-fun lt!326072 () Unit!25042)

(declare-fun e!411514 () Unit!25042)

(assert (=> b!735474 (= lt!326072 e!411514)))

(declare-fun c!80963 () Bool)

(declare-fun lt!326084 () Bool)

(assert (=> b!735474 (= c!80963 lt!326084)))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!735474 (= lt!326084 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!735474 (= lt!326083 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!735475 () Bool)

(declare-fun e!411510 () Bool)

(declare-fun e!411508 () Bool)

(assert (=> b!735475 (= e!411510 e!411508)))

(declare-fun res!494317 () Bool)

(assert (=> b!735475 (=> (not res!494317) (not e!411508))))

(declare-datatypes ((SeekEntryResult!7356 0))(
  ( (MissingZero!7356 (index!31791 (_ BitVec 32))) (Found!7356 (index!31792 (_ BitVec 32))) (Intermediate!7356 (undefined!8168 Bool) (index!31793 (_ BitVec 32)) (x!62827 (_ BitVec 32))) (Undefined!7356) (MissingVacant!7356 (index!31794 (_ BitVec 32))) )
))
(declare-fun lt!326075 () SeekEntryResult!7356)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!735475 (= res!494317 (or (= lt!326075 (MissingZero!7356 i!1173)) (= lt!326075 (MissingVacant!7356 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41278 (_ BitVec 32)) SeekEntryResult!7356)

(assert (=> b!735475 (= lt!326075 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun e!411512 () Bool)

(declare-fun lt!326082 () SeekEntryResult!7356)

(declare-fun b!735476 () Bool)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41278 (_ BitVec 32)) SeekEntryResult!7356)

(assert (=> b!735476 (= e!411512 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19749 a!3186) j!159) a!3186 mask!3328) lt!326082))))

(declare-fun b!735477 () Bool)

(declare-fun res!494320 () Bool)

(assert (=> b!735477 (=> (not res!494320) (not e!411510))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!735477 (= res!494320 (validKeyInArray!0 (select (arr!19749 a!3186) j!159)))))

(declare-fun b!735478 () Bool)

(declare-fun res!494321 () Bool)

(assert (=> b!735478 (=> (not res!494321) (not e!411508))))

(declare-datatypes ((List!13804 0))(
  ( (Nil!13801) (Cons!13800 (h!14872 (_ BitVec 64)) (t!20127 List!13804)) )
))
(declare-fun arrayNoDuplicates!0 (array!41278 (_ BitVec 32) List!13804) Bool)

(assert (=> b!735478 (= res!494321 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13801))))

(declare-fun b!735479 () Bool)

(declare-fun res!494312 () Bool)

(assert (=> b!735479 (=> (not res!494312) (not e!411510))))

(assert (=> b!735479 (= res!494312 (validKeyInArray!0 k!2102))))

(declare-fun res!494313 () Bool)

(assert (=> start!65152 (=> (not res!494313) (not e!411510))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65152 (= res!494313 (validMask!0 mask!3328))))

(assert (=> start!65152 e!411510))

(assert (=> start!65152 true))

(declare-fun array_inv!15523 (array!41278) Bool)

(assert (=> start!65152 (array_inv!15523 a!3186)))

(declare-fun b!735480 () Bool)

(declare-fun res!494311 () Bool)

(assert (=> b!735480 (=> (not res!494311) (not e!411508))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41278 (_ BitVec 32)) Bool)

(assert (=> b!735480 (= res!494311 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun b!735481 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41278 (_ BitVec 32)) SeekEntryResult!7356)

(assert (=> b!735481 (= e!411512 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19749 a!3186) j!159) a!3186 mask!3328) (Found!7356 j!159)))))

(declare-fun b!735482 () Bool)

(declare-fun res!494324 () Bool)

(assert (=> b!735482 (=> res!494324 e!411511)))

(declare-fun e!411517 () Bool)

(assert (=> b!735482 (= res!494324 e!411517)))

(declare-fun c!80964 () Bool)

(assert (=> b!735482 (= c!80964 lt!326084)))

(declare-fun b!735483 () Bool)

(declare-fun res!494328 () Bool)

(assert (=> b!735483 (=> (not res!494328) (not e!411510))))

(declare-fun arrayContainsKey!0 (array!41278 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!735483 (= res!494328 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!735484 () Bool)

(declare-fun e!411515 () Bool)

(assert (=> b!735484 (= e!411515 (not e!411516))))

(declare-fun res!494318 () Bool)

(assert (=> b!735484 (=> res!494318 e!411516)))

(declare-fun lt!326078 () SeekEntryResult!7356)

(assert (=> b!735484 (= res!494318 (or (not (is-Intermediate!7356 lt!326078)) (bvsge x!1131 (x!62827 lt!326078))))))

(declare-fun lt!326071 () SeekEntryResult!7356)

(assert (=> b!735484 (= lt!326071 (Found!7356 j!159))))

(declare-fun e!411519 () Bool)

(assert (=> b!735484 e!411519))

(declare-fun res!494325 () Bool)

(assert (=> b!735484 (=> (not res!494325) (not e!411519))))

(assert (=> b!735484 (= res!494325 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!326074 () Unit!25042)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41278 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25042)

(assert (=> b!735484 (= lt!326074 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!735485 () Bool)

(declare-fun Unit!25044 () Unit!25042)

(assert (=> b!735485 (= e!411514 Unit!25044)))

(assert (=> b!735485 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326083 (select (arr!19749 a!3186) j!159) a!3186 mask!3328) lt!326082)))

(declare-fun b!735486 () Bool)

(declare-fun e!411513 () Bool)

(assert (=> b!735486 (= e!411519 e!411513)))

(declare-fun res!494314 () Bool)

(assert (=> b!735486 (=> (not res!494314) (not e!411513))))

(declare-fun lt!326076 () SeekEntryResult!7356)

(assert (=> b!735486 (= res!494314 (= (seekEntryOrOpen!0 (select (arr!19749 a!3186) j!159) a!3186 mask!3328) lt!326076))))

(assert (=> b!735486 (= lt!326076 (Found!7356 j!159))))

(declare-fun b!735487 () Bool)

(declare-fun e!411509 () Bool)

(assert (=> b!735487 (= e!411508 e!411509)))

(declare-fun res!494323 () Bool)

(assert (=> b!735487 (=> (not res!494323) (not e!411509))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!735487 (= res!494323 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19749 a!3186) j!159) mask!3328) (select (arr!19749 a!3186) j!159) a!3186 mask!3328) lt!326082))))

(assert (=> b!735487 (= lt!326082 (Intermediate!7356 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!735488 () Bool)

(declare-fun Unit!25045 () Unit!25042)

(assert (=> b!735488 (= e!411514 Unit!25045)))

(declare-fun lt!326081 () SeekEntryResult!7356)

(assert (=> b!735488 (= lt!326081 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19749 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!735488 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326083 resIntermediateIndex!5 (select (arr!19749 a!3186) j!159) a!3186 mask!3328) lt!326071)))

(declare-fun b!735489 () Bool)

(assert (=> b!735489 (= e!411517 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326083 (select (arr!19749 a!3186) j!159) a!3186 mask!3328) lt!326082)))))

(declare-fun b!735490 () Bool)

(declare-fun res!494322 () Bool)

(assert (=> b!735490 (=> (not res!494322) (not e!411508))))

(assert (=> b!735490 (= res!494322 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20170 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20170 a!3186))))))

(declare-fun b!735491 () Bool)

(assert (=> b!735491 (= e!411509 e!411515)))

(declare-fun res!494327 () Bool)

(assert (=> b!735491 (=> (not res!494327) (not e!411515))))

(declare-fun lt!326073 () SeekEntryResult!7356)

(assert (=> b!735491 (= res!494327 (= lt!326073 lt!326078))))

(declare-fun lt!326079 () (_ BitVec 64))

(declare-fun lt!326080 () array!41278)

(assert (=> b!735491 (= lt!326078 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!326079 lt!326080 mask!3328))))

(assert (=> b!735491 (= lt!326073 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!326079 mask!3328) lt!326079 lt!326080 mask!3328))))

(assert (=> b!735491 (= lt!326079 (select (store (arr!19749 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!735491 (= lt!326080 (array!41279 (store (arr!19749 a!3186) i!1173 k!2102) (size!20170 a!3186)))))

(declare-fun b!735492 () Bool)

(assert (=> b!735492 (= e!411511 true)))

(declare-fun lt!326077 () SeekEntryResult!7356)

(assert (=> b!735492 (= lt!326077 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326083 lt!326079 lt!326080 mask!3328))))

(declare-fun b!735493 () Bool)

(assert (=> b!735493 (= e!411517 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326083 resIntermediateIndex!5 (select (arr!19749 a!3186) j!159) a!3186 mask!3328) lt!326071)))))

(declare-fun b!735494 () Bool)

(declare-fun res!494315 () Bool)

(assert (=> b!735494 (=> (not res!494315) (not e!411510))))

(assert (=> b!735494 (= res!494315 (and (= (size!20170 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20170 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20170 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!735495 () Bool)

(declare-fun res!494316 () Bool)

(assert (=> b!735495 (=> (not res!494316) (not e!411509))))

(assert (=> b!735495 (= res!494316 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19749 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!735496 () Bool)

(assert (=> b!735496 (= e!411513 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19749 a!3186) j!159) a!3186 mask!3328) lt!326076))))

(declare-fun b!735497 () Bool)

(declare-fun res!494319 () Bool)

(assert (=> b!735497 (=> (not res!494319) (not e!411509))))

(assert (=> b!735497 (= res!494319 e!411512)))

(declare-fun c!80962 () Bool)

(assert (=> b!735497 (= c!80962 (bvsle x!1131 resIntermediateX!5))))

(assert (= (and start!65152 res!494313) b!735494))

(assert (= (and b!735494 res!494315) b!735477))

(assert (= (and b!735477 res!494320) b!735479))

(assert (= (and b!735479 res!494312) b!735483))

(assert (= (and b!735483 res!494328) b!735475))

(assert (= (and b!735475 res!494317) b!735480))

(assert (= (and b!735480 res!494311) b!735478))

(assert (= (and b!735478 res!494321) b!735490))

(assert (= (and b!735490 res!494322) b!735487))

(assert (= (and b!735487 res!494323) b!735495))

(assert (= (and b!735495 res!494316) b!735497))

(assert (= (and b!735497 c!80962) b!735476))

(assert (= (and b!735497 (not c!80962)) b!735481))

(assert (= (and b!735497 res!494319) b!735491))

(assert (= (and b!735491 res!494327) b!735484))

(assert (= (and b!735484 res!494325) b!735486))

(assert (= (and b!735486 res!494314) b!735496))

(assert (= (and b!735484 (not res!494318)) b!735474))

(assert (= (and b!735474 c!80963) b!735485))

(assert (= (and b!735474 (not c!80963)) b!735488))

(assert (= (and b!735474 (not res!494326)) b!735482))

(assert (= (and b!735482 c!80964) b!735489))

(assert (= (and b!735482 (not c!80964)) b!735493))

(assert (= (and b!735482 (not res!494324)) b!735492))

(declare-fun m!687913 () Bool)

(assert (=> b!735493 m!687913))

(assert (=> b!735493 m!687913))

(declare-fun m!687915 () Bool)

(assert (=> b!735493 m!687915))

(assert (=> b!735476 m!687913))

(assert (=> b!735476 m!687913))

(declare-fun m!687917 () Bool)

(assert (=> b!735476 m!687917))

(declare-fun m!687919 () Bool)

(assert (=> b!735479 m!687919))

(declare-fun m!687921 () Bool)

(assert (=> b!735492 m!687921))

(assert (=> b!735486 m!687913))

(assert (=> b!735486 m!687913))

(declare-fun m!687923 () Bool)

(assert (=> b!735486 m!687923))

(assert (=> b!735485 m!687913))

(assert (=> b!735485 m!687913))

(declare-fun m!687925 () Bool)

(assert (=> b!735485 m!687925))

(assert (=> b!735487 m!687913))

(assert (=> b!735487 m!687913))

(declare-fun m!687927 () Bool)

(assert (=> b!735487 m!687927))

(assert (=> b!735487 m!687927))

(assert (=> b!735487 m!687913))

(declare-fun m!687929 () Bool)

(assert (=> b!735487 m!687929))

(declare-fun m!687931 () Bool)

(assert (=> b!735480 m!687931))

(declare-fun m!687933 () Bool)

(assert (=> b!735475 m!687933))

(assert (=> b!735496 m!687913))

(assert (=> b!735496 m!687913))

(declare-fun m!687935 () Bool)

(assert (=> b!735496 m!687935))

(declare-fun m!687937 () Bool)

(assert (=> b!735495 m!687937))

(declare-fun m!687939 () Bool)

(assert (=> b!735474 m!687939))

(declare-fun m!687941 () Bool)

(assert (=> b!735483 m!687941))

(assert (=> b!735489 m!687913))

(assert (=> b!735489 m!687913))

(assert (=> b!735489 m!687925))

(declare-fun m!687943 () Bool)

(assert (=> b!735491 m!687943))

(declare-fun m!687945 () Bool)

(assert (=> b!735491 m!687945))

(declare-fun m!687947 () Bool)

(assert (=> b!735491 m!687947))

(declare-fun m!687949 () Bool)

(assert (=> b!735491 m!687949))

(declare-fun m!687951 () Bool)

(assert (=> b!735491 m!687951))

(assert (=> b!735491 m!687943))

(assert (=> b!735488 m!687913))

(assert (=> b!735488 m!687913))

(declare-fun m!687953 () Bool)

(assert (=> b!735488 m!687953))

(assert (=> b!735488 m!687913))

(assert (=> b!735488 m!687915))

(declare-fun m!687955 () Bool)

(assert (=> b!735484 m!687955))

(declare-fun m!687957 () Bool)

(assert (=> b!735484 m!687957))

(assert (=> b!735481 m!687913))

(assert (=> b!735481 m!687913))

(assert (=> b!735481 m!687953))

(declare-fun m!687959 () Bool)

(assert (=> start!65152 m!687959))

(declare-fun m!687961 () Bool)

(assert (=> start!65152 m!687961))

(assert (=> b!735477 m!687913))

(assert (=> b!735477 m!687913))

(declare-fun m!687963 () Bool)

(assert (=> b!735477 m!687963))

(declare-fun m!687965 () Bool)

(assert (=> b!735478 m!687965))

(push 1)

