; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65322 () Bool)

(assert start!65322)

(declare-fun b!741415 () Bool)

(declare-fun res!498852 () Bool)

(declare-fun e!414450 () Bool)

(assert (=> b!741415 (=> (not res!498852) (not e!414450))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!41448 0))(
  ( (array!41449 (arr!19834 (Array (_ BitVec 32) (_ BitVec 64))) (size!20255 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41448)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!741415 (= res!498852 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20255 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20255 a!3186))))))

(declare-fun b!741416 () Bool)

(declare-fun res!498862 () Bool)

(declare-fun e!414454 () Bool)

(assert (=> b!741416 (=> (not res!498862) (not e!414454))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!741416 (= res!498862 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19834 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!741417 () Bool)

(declare-fun res!498861 () Bool)

(declare-fun e!414456 () Bool)

(assert (=> b!741417 (=> (not res!498861) (not e!414456))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!741417 (= res!498861 (and (= (size!20255 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20255 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20255 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!741418 () Bool)

(declare-fun res!498851 () Bool)

(assert (=> b!741418 (=> (not res!498851) (not e!414450))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41448 (_ BitVec 32)) Bool)

(assert (=> b!741418 (= res!498851 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!741419 () Bool)

(declare-fun res!498857 () Bool)

(assert (=> b!741419 (=> (not res!498857) (not e!414454))))

(declare-fun e!414452 () Bool)

(assert (=> b!741419 (= res!498857 e!414452)))

(declare-fun c!81663 () Bool)

(assert (=> b!741419 (= c!81663 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!741420 () Bool)

(declare-fun e!414453 () Bool)

(declare-datatypes ((SeekEntryResult!7441 0))(
  ( (MissingZero!7441 (index!32131 (_ BitVec 32))) (Found!7441 (index!32132 (_ BitVec 32))) (Intermediate!7441 (undefined!8253 Bool) (index!32133 (_ BitVec 32)) (x!63136 (_ BitVec 32))) (Undefined!7441) (MissingVacant!7441 (index!32134 (_ BitVec 32))) )
))
(declare-fun lt!329415 () SeekEntryResult!7441)

(get-info :version)

(assert (=> b!741420 (= e!414453 (not (or (not ((_ is Intermediate!7441) lt!329415)) (not (= x!1131 (x!63136 lt!329415))) (not (= index!1321 (index!32133 lt!329415))) (bvslt mask!3328 #b00000000000000000000000000000000) (bvslt index!1321 (bvadd #b00000000000000000000000000000001 mask!3328)))))))

(declare-fun e!414451 () Bool)

(assert (=> b!741420 e!414451))

(declare-fun res!498853 () Bool)

(assert (=> b!741420 (=> (not res!498853) (not e!414451))))

(assert (=> b!741420 (= res!498853 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25362 0))(
  ( (Unit!25363) )
))
(declare-fun lt!329414 () Unit!25362)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41448 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25362)

(assert (=> b!741420 (= lt!329414 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!741421 () Bool)

(declare-fun res!498850 () Bool)

(assert (=> b!741421 (=> (not res!498850) (not e!414456))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!741421 (= res!498850 (validKeyInArray!0 (select (arr!19834 a!3186) j!159)))))

(declare-fun b!741422 () Bool)

(assert (=> b!741422 (= e!414456 e!414450)))

(declare-fun res!498859 () Bool)

(assert (=> b!741422 (=> (not res!498859) (not e!414450))))

(declare-fun lt!329418 () SeekEntryResult!7441)

(assert (=> b!741422 (= res!498859 (or (= lt!329418 (MissingZero!7441 i!1173)) (= lt!329418 (MissingVacant!7441 i!1173))))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41448 (_ BitVec 32)) SeekEntryResult!7441)

(assert (=> b!741422 (= lt!329418 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!741423 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41448 (_ BitVec 32)) SeekEntryResult!7441)

(assert (=> b!741423 (= e!414452 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19834 a!3186) j!159) a!3186 mask!3328) (Found!7441 j!159)))))

(declare-fun b!741424 () Bool)

(assert (=> b!741424 (= e!414450 e!414454)))

(declare-fun res!498856 () Bool)

(assert (=> b!741424 (=> (not res!498856) (not e!414454))))

(declare-fun lt!329419 () SeekEntryResult!7441)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41448 (_ BitVec 32)) SeekEntryResult!7441)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!741424 (= res!498856 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19834 a!3186) j!159) mask!3328) (select (arr!19834 a!3186) j!159) a!3186 mask!3328) lt!329419))))

(assert (=> b!741424 (= lt!329419 (Intermediate!7441 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!741425 () Bool)

(assert (=> b!741425 (= e!414452 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19834 a!3186) j!159) a!3186 mask!3328) lt!329419))))

(declare-fun b!741426 () Bool)

(declare-fun e!414455 () Bool)

(declare-fun lt!329417 () SeekEntryResult!7441)

(assert (=> b!741426 (= e!414455 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19834 a!3186) j!159) a!3186 mask!3328) lt!329417))))

(declare-fun b!741427 () Bool)

(assert (=> b!741427 (= e!414451 e!414455)))

(declare-fun res!498858 () Bool)

(assert (=> b!741427 (=> (not res!498858) (not e!414455))))

(assert (=> b!741427 (= res!498858 (= (seekEntryOrOpen!0 (select (arr!19834 a!3186) j!159) a!3186 mask!3328) lt!329417))))

(assert (=> b!741427 (= lt!329417 (Found!7441 j!159))))

(declare-fun res!498860 () Bool)

(assert (=> start!65322 (=> (not res!498860) (not e!414456))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65322 (= res!498860 (validMask!0 mask!3328))))

(assert (=> start!65322 e!414456))

(assert (=> start!65322 true))

(declare-fun array_inv!15608 (array!41448) Bool)

(assert (=> start!65322 (array_inv!15608 a!3186)))

(declare-fun b!741428 () Bool)

(declare-fun res!498854 () Bool)

(assert (=> b!741428 (=> (not res!498854) (not e!414456))))

(assert (=> b!741428 (= res!498854 (validKeyInArray!0 k0!2102))))

(declare-fun b!741429 () Bool)

(declare-fun res!498864 () Bool)

(assert (=> b!741429 (=> (not res!498864) (not e!414456))))

(declare-fun arrayContainsKey!0 (array!41448 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!741429 (= res!498864 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!741430 () Bool)

(assert (=> b!741430 (= e!414454 e!414453)))

(declare-fun res!498855 () Bool)

(assert (=> b!741430 (=> (not res!498855) (not e!414453))))

(declare-fun lt!329416 () SeekEntryResult!7441)

(assert (=> b!741430 (= res!498855 (= lt!329416 lt!329415))))

(declare-fun lt!329413 () array!41448)

(declare-fun lt!329420 () (_ BitVec 64))

(assert (=> b!741430 (= lt!329415 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!329420 lt!329413 mask!3328))))

(assert (=> b!741430 (= lt!329416 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!329420 mask!3328) lt!329420 lt!329413 mask!3328))))

(assert (=> b!741430 (= lt!329420 (select (store (arr!19834 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!741430 (= lt!329413 (array!41449 (store (arr!19834 a!3186) i!1173 k0!2102) (size!20255 a!3186)))))

(declare-fun b!741431 () Bool)

(declare-fun res!498863 () Bool)

(assert (=> b!741431 (=> (not res!498863) (not e!414450))))

(declare-datatypes ((List!13889 0))(
  ( (Nil!13886) (Cons!13885 (h!14957 (_ BitVec 64)) (t!20212 List!13889)) )
))
(declare-fun arrayNoDuplicates!0 (array!41448 (_ BitVec 32) List!13889) Bool)

(assert (=> b!741431 (= res!498863 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13886))))

(assert (= (and start!65322 res!498860) b!741417))

(assert (= (and b!741417 res!498861) b!741421))

(assert (= (and b!741421 res!498850) b!741428))

(assert (= (and b!741428 res!498854) b!741429))

(assert (= (and b!741429 res!498864) b!741422))

(assert (= (and b!741422 res!498859) b!741418))

(assert (= (and b!741418 res!498851) b!741431))

(assert (= (and b!741431 res!498863) b!741415))

(assert (= (and b!741415 res!498852) b!741424))

(assert (= (and b!741424 res!498856) b!741416))

(assert (= (and b!741416 res!498862) b!741419))

(assert (= (and b!741419 c!81663) b!741425))

(assert (= (and b!741419 (not c!81663)) b!741423))

(assert (= (and b!741419 res!498857) b!741430))

(assert (= (and b!741430 res!498855) b!741420))

(assert (= (and b!741420 res!498853) b!741427))

(assert (= (and b!741427 res!498858) b!741426))

(declare-fun m!692477 () Bool)

(assert (=> b!741428 m!692477))

(declare-fun m!692479 () Bool)

(assert (=> start!65322 m!692479))

(declare-fun m!692481 () Bool)

(assert (=> start!65322 m!692481))

(declare-fun m!692483 () Bool)

(assert (=> b!741421 m!692483))

(assert (=> b!741421 m!692483))

(declare-fun m!692485 () Bool)

(assert (=> b!741421 m!692485))

(assert (=> b!741424 m!692483))

(assert (=> b!741424 m!692483))

(declare-fun m!692487 () Bool)

(assert (=> b!741424 m!692487))

(assert (=> b!741424 m!692487))

(assert (=> b!741424 m!692483))

(declare-fun m!692489 () Bool)

(assert (=> b!741424 m!692489))

(declare-fun m!692491 () Bool)

(assert (=> b!741422 m!692491))

(assert (=> b!741423 m!692483))

(assert (=> b!741423 m!692483))

(declare-fun m!692493 () Bool)

(assert (=> b!741423 m!692493))

(assert (=> b!741427 m!692483))

(assert (=> b!741427 m!692483))

(declare-fun m!692495 () Bool)

(assert (=> b!741427 m!692495))

(declare-fun m!692497 () Bool)

(assert (=> b!741431 m!692497))

(declare-fun m!692499 () Bool)

(assert (=> b!741420 m!692499))

(declare-fun m!692501 () Bool)

(assert (=> b!741420 m!692501))

(declare-fun m!692503 () Bool)

(assert (=> b!741429 m!692503))

(declare-fun m!692505 () Bool)

(assert (=> b!741430 m!692505))

(declare-fun m!692507 () Bool)

(assert (=> b!741430 m!692507))

(declare-fun m!692509 () Bool)

(assert (=> b!741430 m!692509))

(declare-fun m!692511 () Bool)

(assert (=> b!741430 m!692511))

(declare-fun m!692513 () Bool)

(assert (=> b!741430 m!692513))

(assert (=> b!741430 m!692505))

(assert (=> b!741425 m!692483))

(assert (=> b!741425 m!692483))

(declare-fun m!692515 () Bool)

(assert (=> b!741425 m!692515))

(assert (=> b!741426 m!692483))

(assert (=> b!741426 m!692483))

(declare-fun m!692517 () Bool)

(assert (=> b!741426 m!692517))

(declare-fun m!692519 () Bool)

(assert (=> b!741418 m!692519))

(declare-fun m!692521 () Bool)

(assert (=> b!741416 m!692521))

(check-sat (not b!741429) (not b!741424) (not start!65322) (not b!741427) (not b!741425) (not b!741418) (not b!741426) (not b!741423) (not b!741422) (not b!741431) (not b!741421) (not b!741430) (not b!741420) (not b!741428))
(check-sat)
