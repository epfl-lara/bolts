; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!66786 () Bool)

(assert start!66786)

(declare-fun b!769325 () Bool)

(declare-fun res!520406 () Bool)

(declare-fun e!428419 () Bool)

(assert (=> b!769325 (=> (not res!520406) (not e!428419))))

(declare-datatypes ((array!42303 0))(
  ( (array!42304 (arr!20248 (Array (_ BitVec 32) (_ BitVec 64))) (size!20669 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42303)

(declare-datatypes ((List!14303 0))(
  ( (Nil!14300) (Cons!14299 (h!15398 (_ BitVec 64)) (t!20626 List!14303)) )
))
(declare-fun arrayNoDuplicates!0 (array!42303 (_ BitVec 32) List!14303) Bool)

(assert (=> b!769325 (= res!520406 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14300))))

(declare-fun b!769326 () Bool)

(declare-fun res!520403 () Bool)

(assert (=> b!769326 (=> (not res!520403) (not e!428419))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42303 (_ BitVec 32)) Bool)

(assert (=> b!769326 (= res!520403 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!769328 () Bool)

(declare-fun res!520399 () Bool)

(declare-fun e!428416 () Bool)

(assert (=> b!769328 (=> (not res!520399) (not e!428416))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42303 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!769328 (= res!520399 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!769329 () Bool)

(declare-fun e!428415 () Bool)

(declare-fun e!428418 () Bool)

(assert (=> b!769329 (= e!428415 (not e!428418))))

(declare-fun res!520405 () Bool)

(assert (=> b!769329 (=> res!520405 e!428418)))

(declare-datatypes ((SeekEntryResult!7855 0))(
  ( (MissingZero!7855 (index!33787 (_ BitVec 32))) (Found!7855 (index!33788 (_ BitVec 32))) (Intermediate!7855 (undefined!8667 Bool) (index!33789 (_ BitVec 32)) (x!64747 (_ BitVec 32))) (Undefined!7855) (MissingVacant!7855 (index!33790 (_ BitVec 32))) )
))
(declare-fun lt!342321 () SeekEntryResult!7855)

(declare-fun x!1131 () (_ BitVec 32))

(get-info :version)

(assert (=> b!769329 (= res!520405 (or (not ((_ is Intermediate!7855) lt!342321)) (bvsge x!1131 (x!64747 lt!342321))))))

(declare-fun e!428412 () Bool)

(assert (=> b!769329 e!428412))

(declare-fun res!520408 () Bool)

(assert (=> b!769329 (=> (not res!520408) (not e!428412))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!769329 (= res!520408 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26456 0))(
  ( (Unit!26457) )
))
(declare-fun lt!342328 () Unit!26456)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42303 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26456)

(assert (=> b!769329 (= lt!342328 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!769330 () Bool)

(declare-fun res!520398 () Bool)

(assert (=> b!769330 (=> (not res!520398) (not e!428416))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!769330 (= res!520398 (validKeyInArray!0 k0!2102))))

(declare-fun b!769331 () Bool)

(declare-fun res!520404 () Bool)

(declare-fun e!428410 () Bool)

(assert (=> b!769331 (=> (not res!520404) (not e!428410))))

(declare-fun e!428413 () Bool)

(assert (=> b!769331 (= res!520404 e!428413)))

(declare-fun c!84860 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!769331 (= c!84860 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!769332 () Bool)

(declare-fun res!520401 () Bool)

(assert (=> b!769332 (=> (not res!520401) (not e!428419))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!769332 (= res!520401 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20669 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20669 a!3186))))))

(declare-fun b!769333 () Bool)

(declare-fun e!428411 () Unit!26456)

(declare-fun Unit!26458 () Unit!26456)

(assert (=> b!769333 (= e!428411 Unit!26458)))

(declare-fun lt!342325 () SeekEntryResult!7855)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42303 (_ BitVec 32)) SeekEntryResult!7855)

(assert (=> b!769333 (= lt!342325 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20248 a!3186) j!159) a!3186 mask!3328))))

(declare-fun lt!342327 () (_ BitVec 32))

(assert (=> b!769333 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!342327 resIntermediateIndex!5 (select (arr!20248 a!3186) j!159) a!3186 mask!3328) (Found!7855 j!159))))

(declare-fun b!769334 () Bool)

(declare-fun res!520411 () Bool)

(assert (=> b!769334 (=> (not res!520411) (not e!428416))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!769334 (= res!520411 (and (= (size!20669 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20669 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20669 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!769335 () Bool)

(declare-fun res!520396 () Bool)

(assert (=> b!769335 (=> (not res!520396) (not e!428410))))

(assert (=> b!769335 (= res!520396 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20248 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!769336 () Bool)

(declare-fun lt!342324 () SeekEntryResult!7855)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42303 (_ BitVec 32)) SeekEntryResult!7855)

(assert (=> b!769336 (= e!428413 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20248 a!3186) j!159) a!3186 mask!3328) lt!342324))))

(declare-fun b!769337 () Bool)

(declare-fun res!520409 () Bool)

(assert (=> b!769337 (=> (not res!520409) (not e!428416))))

(assert (=> b!769337 (= res!520409 (validKeyInArray!0 (select (arr!20248 a!3186) j!159)))))

(declare-fun b!769338 () Bool)

(assert (=> b!769338 (= e!428416 e!428419)))

(declare-fun res!520407 () Bool)

(assert (=> b!769338 (=> (not res!520407) (not e!428419))))

(declare-fun lt!342322 () SeekEntryResult!7855)

(assert (=> b!769338 (= res!520407 (or (= lt!342322 (MissingZero!7855 i!1173)) (= lt!342322 (MissingVacant!7855 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42303 (_ BitVec 32)) SeekEntryResult!7855)

(assert (=> b!769338 (= lt!342322 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!769339 () Bool)

(assert (=> b!769339 (= e!428413 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20248 a!3186) j!159) a!3186 mask!3328) (Found!7855 j!159)))))

(declare-fun b!769340 () Bool)

(declare-fun lt!342323 () SeekEntryResult!7855)

(declare-fun e!428414 () Bool)

(assert (=> b!769340 (= e!428414 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20248 a!3186) j!159) a!3186 mask!3328) lt!342323))))

(declare-fun b!769327 () Bool)

(declare-fun Unit!26459 () Unit!26456)

(assert (=> b!769327 (= e!428411 Unit!26459)))

(assert (=> b!769327 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!342327 (select (arr!20248 a!3186) j!159) a!3186 mask!3328) lt!342324)))

(declare-fun res!520400 () Bool)

(assert (=> start!66786 (=> (not res!520400) (not e!428416))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66786 (= res!520400 (validMask!0 mask!3328))))

(assert (=> start!66786 e!428416))

(assert (=> start!66786 true))

(declare-fun array_inv!16022 (array!42303) Bool)

(assert (=> start!66786 (array_inv!16022 a!3186)))

(declare-fun b!769341 () Bool)

(assert (=> b!769341 (= e!428410 e!428415)))

(declare-fun res!520397 () Bool)

(assert (=> b!769341 (=> (not res!520397) (not e!428415))))

(declare-fun lt!342331 () SeekEntryResult!7855)

(assert (=> b!769341 (= res!520397 (= lt!342331 lt!342321))))

(declare-fun lt!342330 () array!42303)

(declare-fun lt!342329 () (_ BitVec 64))

(assert (=> b!769341 (= lt!342321 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!342329 lt!342330 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!769341 (= lt!342331 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!342329 mask!3328) lt!342329 lt!342330 mask!3328))))

(assert (=> b!769341 (= lt!342329 (select (store (arr!20248 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!769341 (= lt!342330 (array!42304 (store (arr!20248 a!3186) i!1173 k0!2102) (size!20669 a!3186)))))

(declare-fun b!769342 () Bool)

(assert (=> b!769342 (= e!428412 e!428414)))

(declare-fun res!520410 () Bool)

(assert (=> b!769342 (=> (not res!520410) (not e!428414))))

(assert (=> b!769342 (= res!520410 (= (seekEntryOrOpen!0 (select (arr!20248 a!3186) j!159) a!3186 mask!3328) lt!342323))))

(assert (=> b!769342 (= lt!342323 (Found!7855 j!159))))

(declare-fun b!769343 () Bool)

(assert (=> b!769343 (= e!428419 e!428410)))

(declare-fun res!520402 () Bool)

(assert (=> b!769343 (=> (not res!520402) (not e!428410))))

(assert (=> b!769343 (= res!520402 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20248 a!3186) j!159) mask!3328) (select (arr!20248 a!3186) j!159) a!3186 mask!3328) lt!342324))))

(assert (=> b!769343 (= lt!342324 (Intermediate!7855 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!769344 () Bool)

(assert (=> b!769344 (= e!428418 true)))

(declare-fun lt!342326 () Unit!26456)

(assert (=> b!769344 (= lt!342326 e!428411)))

(declare-fun c!84861 () Bool)

(assert (=> b!769344 (= c!84861 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!769344 (= lt!342327 (nextIndex!0 index!1321 x!1131 mask!3328))))

(assert (= (and start!66786 res!520400) b!769334))

(assert (= (and b!769334 res!520411) b!769337))

(assert (= (and b!769337 res!520409) b!769330))

(assert (= (and b!769330 res!520398) b!769328))

(assert (= (and b!769328 res!520399) b!769338))

(assert (= (and b!769338 res!520407) b!769326))

(assert (= (and b!769326 res!520403) b!769325))

(assert (= (and b!769325 res!520406) b!769332))

(assert (= (and b!769332 res!520401) b!769343))

(assert (= (and b!769343 res!520402) b!769335))

(assert (= (and b!769335 res!520396) b!769331))

(assert (= (and b!769331 c!84860) b!769336))

(assert (= (and b!769331 (not c!84860)) b!769339))

(assert (= (and b!769331 res!520404) b!769341))

(assert (= (and b!769341 res!520397) b!769329))

(assert (= (and b!769329 res!520408) b!769342))

(assert (= (and b!769342 res!520410) b!769340))

(assert (= (and b!769329 (not res!520405)) b!769344))

(assert (= (and b!769344 c!84861) b!769327))

(assert (= (and b!769344 (not c!84861)) b!769333))

(declare-fun m!714815 () Bool)

(assert (=> start!66786 m!714815))

(declare-fun m!714817 () Bool)

(assert (=> start!66786 m!714817))

(declare-fun m!714819 () Bool)

(assert (=> b!769326 m!714819))

(declare-fun m!714821 () Bool)

(assert (=> b!769336 m!714821))

(assert (=> b!769336 m!714821))

(declare-fun m!714823 () Bool)

(assert (=> b!769336 m!714823))

(declare-fun m!714825 () Bool)

(assert (=> b!769328 m!714825))

(declare-fun m!714827 () Bool)

(assert (=> b!769329 m!714827))

(declare-fun m!714829 () Bool)

(assert (=> b!769329 m!714829))

(declare-fun m!714831 () Bool)

(assert (=> b!769330 m!714831))

(assert (=> b!769339 m!714821))

(assert (=> b!769339 m!714821))

(declare-fun m!714833 () Bool)

(assert (=> b!769339 m!714833))

(declare-fun m!714835 () Bool)

(assert (=> b!769335 m!714835))

(declare-fun m!714837 () Bool)

(assert (=> b!769344 m!714837))

(declare-fun m!714839 () Bool)

(assert (=> b!769338 m!714839))

(assert (=> b!769333 m!714821))

(assert (=> b!769333 m!714821))

(assert (=> b!769333 m!714833))

(assert (=> b!769333 m!714821))

(declare-fun m!714841 () Bool)

(assert (=> b!769333 m!714841))

(assert (=> b!769340 m!714821))

(assert (=> b!769340 m!714821))

(declare-fun m!714843 () Bool)

(assert (=> b!769340 m!714843))

(assert (=> b!769342 m!714821))

(assert (=> b!769342 m!714821))

(declare-fun m!714845 () Bool)

(assert (=> b!769342 m!714845))

(assert (=> b!769327 m!714821))

(assert (=> b!769327 m!714821))

(declare-fun m!714847 () Bool)

(assert (=> b!769327 m!714847))

(assert (=> b!769343 m!714821))

(assert (=> b!769343 m!714821))

(declare-fun m!714849 () Bool)

(assert (=> b!769343 m!714849))

(assert (=> b!769343 m!714849))

(assert (=> b!769343 m!714821))

(declare-fun m!714851 () Bool)

(assert (=> b!769343 m!714851))

(declare-fun m!714853 () Bool)

(assert (=> b!769341 m!714853))

(declare-fun m!714855 () Bool)

(assert (=> b!769341 m!714855))

(declare-fun m!714857 () Bool)

(assert (=> b!769341 m!714857))

(declare-fun m!714859 () Bool)

(assert (=> b!769341 m!714859))

(assert (=> b!769341 m!714855))

(declare-fun m!714861 () Bool)

(assert (=> b!769341 m!714861))

(declare-fun m!714863 () Bool)

(assert (=> b!769325 m!714863))

(assert (=> b!769337 m!714821))

(assert (=> b!769337 m!714821))

(declare-fun m!714865 () Bool)

(assert (=> b!769337 m!714865))

(check-sat (not start!66786) (not b!769327) (not b!769326) (not b!769330) (not b!769338) (not b!769339) (not b!769333) (not b!769336) (not b!769325) (not b!769337) (not b!769328) (not b!769340) (not b!769341) (not b!769343) (not b!769329) (not b!769342) (not b!769344))
(check-sat)
