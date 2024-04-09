; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67696 () Bool)

(assert start!67696)

(declare-fun b!784001 () Bool)

(declare-fun res!530626 () Bool)

(declare-fun e!435927 () Bool)

(assert (=> b!784001 (=> (not res!530626) (not e!435927))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-datatypes ((array!42691 0))(
  ( (array!42692 (arr!20430 (Array (_ BitVec 32) (_ BitVec 64))) (size!20851 (_ BitVec 32))) )
))
(declare-fun lt!349501 () array!42691)

(declare-fun lt!349496 () (_ BitVec 64))

(declare-fun index!1321 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8037 0))(
  ( (MissingZero!8037 (index!34515 (_ BitVec 32))) (Found!8037 (index!34516 (_ BitVec 32))) (Intermediate!8037 (undefined!8849 Bool) (index!34517 (_ BitVec 32)) (x!65498 (_ BitVec 32))) (Undefined!8037) (MissingVacant!8037 (index!34518 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42691 (_ BitVec 32)) SeekEntryResult!8037)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42691 (_ BitVec 32)) SeekEntryResult!8037)

(assert (=> b!784001 (= res!530626 (= (seekEntryOrOpen!0 lt!349496 lt!349501 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!349496 lt!349501 mask!3328)))))

(declare-fun b!784002 () Bool)

(declare-fun e!435931 () Bool)

(declare-fun e!435923 () Bool)

(assert (=> b!784002 (= e!435931 (not e!435923))))

(declare-fun res!530614 () Bool)

(assert (=> b!784002 (=> res!530614 e!435923)))

(declare-fun lt!349490 () SeekEntryResult!8037)

(assert (=> b!784002 (= res!530614 (or (not (is-Intermediate!8037 lt!349490)) (bvslt x!1131 (x!65498 lt!349490)) (not (= x!1131 (x!65498 lt!349490))) (not (= index!1321 (index!34517 lt!349490)))))))

(declare-fun e!435932 () Bool)

(assert (=> b!784002 e!435932))

(declare-fun res!530625 () Bool)

(assert (=> b!784002 (=> (not res!530625) (not e!435932))))

(declare-fun lt!349500 () SeekEntryResult!8037)

(declare-fun lt!349495 () SeekEntryResult!8037)

(assert (=> b!784002 (= res!530625 (= lt!349500 lt!349495))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!784002 (= lt!349495 (Found!8037 j!159))))

(declare-fun a!3186 () array!42691)

(assert (=> b!784002 (= lt!349500 (seekEntryOrOpen!0 (select (arr!20430 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42691 (_ BitVec 32)) Bool)

(assert (=> b!784002 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!27058 0))(
  ( (Unit!27059) )
))
(declare-fun lt!349497 () Unit!27058)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42691 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27058)

(assert (=> b!784002 (= lt!349497 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!784003 () Bool)

(declare-fun e!435933 () Bool)

(assert (=> b!784003 (= e!435933 true)))

(assert (=> b!784003 e!435927))

(declare-fun res!530630 () Bool)

(assert (=> b!784003 (=> (not res!530630) (not e!435927))))

(declare-fun lt!349491 () (_ BitVec 64))

(assert (=> b!784003 (= res!530630 (= lt!349491 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!349494 () Unit!27058)

(declare-fun e!435928 () Unit!27058)

(assert (=> b!784003 (= lt!349494 e!435928)))

(declare-fun c!87102 () Bool)

(assert (=> b!784003 (= c!87102 (= lt!349491 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!784004 () Bool)

(declare-fun res!530627 () Bool)

(declare-fun e!435929 () Bool)

(assert (=> b!784004 (=> (not res!530627) (not e!435929))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42691 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!784004 (= res!530627 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!784005 () Bool)

(declare-fun e!435925 () Bool)

(declare-fun e!435934 () Bool)

(assert (=> b!784005 (= e!435925 e!435934)))

(declare-fun res!530632 () Bool)

(assert (=> b!784005 (=> (not res!530632) (not e!435934))))

(declare-fun lt!349499 () SeekEntryResult!8037)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42691 (_ BitVec 32)) SeekEntryResult!8037)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!784005 (= res!530632 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20430 a!3186) j!159) mask!3328) (select (arr!20430 a!3186) j!159) a!3186 mask!3328) lt!349499))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!784005 (= lt!349499 (Intermediate!8037 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!784006 () Bool)

(declare-fun e!435926 () Bool)

(assert (=> b!784006 (= e!435926 e!435933)))

(declare-fun res!530624 () Bool)

(assert (=> b!784006 (=> res!530624 e!435933)))

(assert (=> b!784006 (= res!530624 (= lt!349491 lt!349496))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!784006 (= lt!349491 (select (store (arr!20430 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!784007 () Bool)

(declare-fun res!530619 () Bool)

(assert (=> b!784007 (=> (not res!530619) (not e!435929))))

(assert (=> b!784007 (= res!530619 (and (= (size!20851 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20851 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20851 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!784008 () Bool)

(declare-fun res!530617 () Bool)

(assert (=> b!784008 (=> (not res!530617) (not e!435934))))

(assert (=> b!784008 (= res!530617 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20430 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!530616 () Bool)

(assert (=> start!67696 (=> (not res!530616) (not e!435929))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67696 (= res!530616 (validMask!0 mask!3328))))

(assert (=> start!67696 e!435929))

(assert (=> start!67696 true))

(declare-fun array_inv!16204 (array!42691) Bool)

(assert (=> start!67696 (array_inv!16204 a!3186)))

(declare-fun b!784009 () Bool)

(declare-fun res!530629 () Bool)

(assert (=> b!784009 (=> (not res!530629) (not e!435929))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!784009 (= res!530629 (validKeyInArray!0 (select (arr!20430 a!3186) j!159)))))

(declare-fun b!784010 () Bool)

(assert (=> b!784010 (= e!435923 e!435926)))

(declare-fun res!530620 () Bool)

(assert (=> b!784010 (=> res!530620 e!435926)))

(declare-fun lt!349492 () SeekEntryResult!8037)

(assert (=> b!784010 (= res!530620 (not (= lt!349492 lt!349495)))))

(assert (=> b!784010 (= lt!349492 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20430 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!784011 () Bool)

(declare-fun res!530618 () Bool)

(assert (=> b!784011 (=> (not res!530618) (not e!435925))))

(assert (=> b!784011 (= res!530618 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20851 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20851 a!3186))))))

(declare-fun b!784012 () Bool)

(declare-fun e!435930 () Bool)

(assert (=> b!784012 (= e!435930 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20430 a!3186) j!159) a!3186 mask!3328) (Found!8037 j!159)))))

(declare-fun b!784013 () Bool)

(assert (=> b!784013 (= e!435927 (= lt!349500 lt!349492))))

(declare-fun b!784014 () Bool)

(assert (=> b!784014 (= e!435930 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20430 a!3186) j!159) a!3186 mask!3328) lt!349499))))

(declare-fun b!784015 () Bool)

(declare-fun Unit!27060 () Unit!27058)

(assert (=> b!784015 (= e!435928 Unit!27060)))

(assert (=> b!784015 false))

(declare-fun b!784016 () Bool)

(assert (=> b!784016 (= e!435929 e!435925)))

(declare-fun res!530622 () Bool)

(assert (=> b!784016 (=> (not res!530622) (not e!435925))))

(declare-fun lt!349498 () SeekEntryResult!8037)

(assert (=> b!784016 (= res!530622 (or (= lt!349498 (MissingZero!8037 i!1173)) (= lt!349498 (MissingVacant!8037 i!1173))))))

(assert (=> b!784016 (= lt!349498 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!784017 () Bool)

(assert (=> b!784017 (= e!435934 e!435931)))

(declare-fun res!530628 () Bool)

(assert (=> b!784017 (=> (not res!530628) (not e!435931))))

(declare-fun lt!349493 () SeekEntryResult!8037)

(assert (=> b!784017 (= res!530628 (= lt!349493 lt!349490))))

(assert (=> b!784017 (= lt!349490 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!349496 lt!349501 mask!3328))))

(assert (=> b!784017 (= lt!349493 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!349496 mask!3328) lt!349496 lt!349501 mask!3328))))

(assert (=> b!784017 (= lt!349496 (select (store (arr!20430 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!784017 (= lt!349501 (array!42692 (store (arr!20430 a!3186) i!1173 k!2102) (size!20851 a!3186)))))

(declare-fun b!784018 () Bool)

(declare-fun res!530623 () Bool)

(assert (=> b!784018 (=> (not res!530623) (not e!435929))))

(assert (=> b!784018 (= res!530623 (validKeyInArray!0 k!2102))))

(declare-fun b!784019 () Bool)

(declare-fun res!530615 () Bool)

(assert (=> b!784019 (=> (not res!530615) (not e!435925))))

(assert (=> b!784019 (= res!530615 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!784020 () Bool)

(declare-fun res!530631 () Bool)

(assert (=> b!784020 (=> (not res!530631) (not e!435934))))

(assert (=> b!784020 (= res!530631 e!435930)))

(declare-fun c!87101 () Bool)

(assert (=> b!784020 (= c!87101 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!784021 () Bool)

(assert (=> b!784021 (= e!435932 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20430 a!3186) j!159) a!3186 mask!3328) lt!349495))))

(declare-fun b!784022 () Bool)

(declare-fun res!530621 () Bool)

(assert (=> b!784022 (=> (not res!530621) (not e!435925))))

(declare-datatypes ((List!14485 0))(
  ( (Nil!14482) (Cons!14481 (h!15604 (_ BitVec 64)) (t!20808 List!14485)) )
))
(declare-fun arrayNoDuplicates!0 (array!42691 (_ BitVec 32) List!14485) Bool)

(assert (=> b!784022 (= res!530621 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14482))))

(declare-fun b!784023 () Bool)

(declare-fun Unit!27061 () Unit!27058)

(assert (=> b!784023 (= e!435928 Unit!27061)))

(assert (= (and start!67696 res!530616) b!784007))

(assert (= (and b!784007 res!530619) b!784009))

(assert (= (and b!784009 res!530629) b!784018))

(assert (= (and b!784018 res!530623) b!784004))

(assert (= (and b!784004 res!530627) b!784016))

(assert (= (and b!784016 res!530622) b!784019))

(assert (= (and b!784019 res!530615) b!784022))

(assert (= (and b!784022 res!530621) b!784011))

(assert (= (and b!784011 res!530618) b!784005))

(assert (= (and b!784005 res!530632) b!784008))

(assert (= (and b!784008 res!530617) b!784020))

(assert (= (and b!784020 c!87101) b!784014))

(assert (= (and b!784020 (not c!87101)) b!784012))

(assert (= (and b!784020 res!530631) b!784017))

(assert (= (and b!784017 res!530628) b!784002))

(assert (= (and b!784002 res!530625) b!784021))

(assert (= (and b!784002 (not res!530614)) b!784010))

(assert (= (and b!784010 (not res!530620)) b!784006))

(assert (= (and b!784006 (not res!530624)) b!784003))

(assert (= (and b!784003 c!87102) b!784015))

(assert (= (and b!784003 (not c!87102)) b!784023))

(assert (= (and b!784003 res!530630) b!784001))

(assert (= (and b!784001 res!530626) b!784013))

(declare-fun m!726469 () Bool)

(assert (=> b!784016 m!726469))

(declare-fun m!726471 () Bool)

(assert (=> b!784008 m!726471))

(declare-fun m!726473 () Bool)

(assert (=> b!784009 m!726473))

(assert (=> b!784009 m!726473))

(declare-fun m!726475 () Bool)

(assert (=> b!784009 m!726475))

(assert (=> b!784010 m!726473))

(assert (=> b!784010 m!726473))

(declare-fun m!726477 () Bool)

(assert (=> b!784010 m!726477))

(declare-fun m!726479 () Bool)

(assert (=> b!784001 m!726479))

(declare-fun m!726481 () Bool)

(assert (=> b!784001 m!726481))

(declare-fun m!726483 () Bool)

(assert (=> b!784004 m!726483))

(declare-fun m!726485 () Bool)

(assert (=> b!784018 m!726485))

(declare-fun m!726487 () Bool)

(assert (=> b!784006 m!726487))

(declare-fun m!726489 () Bool)

(assert (=> b!784006 m!726489))

(declare-fun m!726491 () Bool)

(assert (=> b!784022 m!726491))

(declare-fun m!726493 () Bool)

(assert (=> b!784017 m!726493))

(assert (=> b!784017 m!726487))

(declare-fun m!726495 () Bool)

(assert (=> b!784017 m!726495))

(assert (=> b!784017 m!726495))

(declare-fun m!726497 () Bool)

(assert (=> b!784017 m!726497))

(declare-fun m!726499 () Bool)

(assert (=> b!784017 m!726499))

(assert (=> b!784005 m!726473))

(assert (=> b!784005 m!726473))

(declare-fun m!726501 () Bool)

(assert (=> b!784005 m!726501))

(assert (=> b!784005 m!726501))

(assert (=> b!784005 m!726473))

(declare-fun m!726503 () Bool)

(assert (=> b!784005 m!726503))

(assert (=> b!784021 m!726473))

(assert (=> b!784021 m!726473))

(declare-fun m!726505 () Bool)

(assert (=> b!784021 m!726505))

(declare-fun m!726507 () Bool)

(assert (=> b!784019 m!726507))

(assert (=> b!784002 m!726473))

(assert (=> b!784002 m!726473))

(declare-fun m!726509 () Bool)

(assert (=> b!784002 m!726509))

(declare-fun m!726511 () Bool)

(assert (=> b!784002 m!726511))

(declare-fun m!726513 () Bool)

(assert (=> b!784002 m!726513))

(assert (=> b!784012 m!726473))

(assert (=> b!784012 m!726473))

(assert (=> b!784012 m!726477))

(declare-fun m!726515 () Bool)

(assert (=> start!67696 m!726515))

(declare-fun m!726517 () Bool)

(assert (=> start!67696 m!726517))

(assert (=> b!784014 m!726473))

(assert (=> b!784014 m!726473))

(declare-fun m!726519 () Bool)

(assert (=> b!784014 m!726519))

(push 1)

