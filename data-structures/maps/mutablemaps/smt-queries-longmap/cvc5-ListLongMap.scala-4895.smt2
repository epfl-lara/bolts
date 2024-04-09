; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67564 () Bool)

(assert start!67564)

(declare-fun b!781402 () Bool)

(declare-fun res!528753 () Bool)

(declare-fun e!434631 () Bool)

(assert (=> b!781402 (=> (not res!528753) (not e!434631))))

(declare-datatypes ((array!42622 0))(
  ( (array!42623 (arr!20397 (Array (_ BitVec 32) (_ BitVec 64))) (size!20818 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42622)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!781402 (= res!528753 (validKeyInArray!0 (select (arr!20397 a!3186) j!159)))))

(declare-fun b!781403 () Bool)

(declare-fun e!434632 () Bool)

(declare-fun e!434634 () Bool)

(assert (=> b!781403 (= e!434632 (not e!434634))))

(declare-fun res!528746 () Bool)

(assert (=> b!781403 (=> res!528746 e!434634)))

(declare-fun x!1131 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8004 0))(
  ( (MissingZero!8004 (index!34383 (_ BitVec 32))) (Found!8004 (index!34384 (_ BitVec 32))) (Intermediate!8004 (undefined!8816 Bool) (index!34385 (_ BitVec 32)) (x!65368 (_ BitVec 32))) (Undefined!8004) (MissingVacant!8004 (index!34386 (_ BitVec 32))) )
))
(declare-fun lt!348236 () SeekEntryResult!8004)

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!781403 (= res!528746 (or (not (is-Intermediate!8004 lt!348236)) (bvslt x!1131 (x!65368 lt!348236)) (not (= x!1131 (x!65368 lt!348236))) (not (= index!1321 (index!34385 lt!348236)))))))

(declare-fun e!434635 () Bool)

(assert (=> b!781403 e!434635))

(declare-fun res!528754 () Bool)

(assert (=> b!781403 (=> (not res!528754) (not e!434635))))

(declare-fun lt!348242 () SeekEntryResult!8004)

(declare-fun lt!348238 () SeekEntryResult!8004)

(assert (=> b!781403 (= res!528754 (= lt!348242 lt!348238))))

(assert (=> b!781403 (= lt!348238 (Found!8004 j!159))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42622 (_ BitVec 32)) SeekEntryResult!8004)

(assert (=> b!781403 (= lt!348242 (seekEntryOrOpen!0 (select (arr!20397 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42622 (_ BitVec 32)) Bool)

(assert (=> b!781403 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!26926 0))(
  ( (Unit!26927) )
))
(declare-fun lt!348244 () Unit!26926)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42622 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26926)

(assert (=> b!781403 (= lt!348244 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!781404 () Bool)

(declare-fun res!528751 () Bool)

(assert (=> b!781404 (=> (not res!528751) (not e!434631))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!781404 (= res!528751 (and (= (size!20818 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20818 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20818 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!781405 () Bool)

(declare-fun e!434636 () Bool)

(declare-fun e!434633 () Bool)

(assert (=> b!781405 (= e!434636 e!434633)))

(declare-fun res!528739 () Bool)

(assert (=> b!781405 (=> (not res!528739) (not e!434633))))

(declare-fun lt!348235 () SeekEntryResult!8004)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42622 (_ BitVec 32)) SeekEntryResult!8004)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!781405 (= res!528739 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20397 a!3186) j!159) mask!3328) (select (arr!20397 a!3186) j!159) a!3186 mask!3328) lt!348235))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!781405 (= lt!348235 (Intermediate!8004 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!781406 () Bool)

(assert (=> b!781406 (= e!434633 e!434632)))

(declare-fun res!528748 () Bool)

(assert (=> b!781406 (=> (not res!528748) (not e!434632))))

(declare-fun lt!348239 () SeekEntryResult!8004)

(assert (=> b!781406 (= res!528748 (= lt!348239 lt!348236))))

(declare-fun lt!348237 () (_ BitVec 64))

(declare-fun lt!348240 () array!42622)

(assert (=> b!781406 (= lt!348236 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!348237 lt!348240 mask!3328))))

(assert (=> b!781406 (= lt!348239 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!348237 mask!3328) lt!348237 lt!348240 mask!3328))))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!781406 (= lt!348237 (select (store (arr!20397 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!781406 (= lt!348240 (array!42623 (store (arr!20397 a!3186) i!1173 k!2102) (size!20818 a!3186)))))

(declare-fun b!781407 () Bool)

(declare-fun e!434630 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42622 (_ BitVec 32)) SeekEntryResult!8004)

(assert (=> b!781407 (= e!434630 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20397 a!3186) j!159) a!3186 mask!3328) (Found!8004 j!159)))))

(declare-fun b!781408 () Bool)

(declare-fun e!434638 () Unit!26926)

(declare-fun Unit!26928 () Unit!26926)

(assert (=> b!781408 (= e!434638 Unit!26928)))

(assert (=> b!781408 false))

(declare-fun b!781409 () Bool)

(declare-fun res!528749 () Bool)

(assert (=> b!781409 (=> (not res!528749) (not e!434633))))

(assert (=> b!781409 (= res!528749 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20397 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!528750 () Bool)

(assert (=> start!67564 (=> (not res!528750) (not e!434631))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67564 (= res!528750 (validMask!0 mask!3328))))

(assert (=> start!67564 e!434631))

(assert (=> start!67564 true))

(declare-fun array_inv!16171 (array!42622) Bool)

(assert (=> start!67564 (array_inv!16171 a!3186)))

(declare-fun b!781410 () Bool)

(assert (=> b!781410 (= e!434630 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20397 a!3186) j!159) a!3186 mask!3328) lt!348235))))

(declare-fun b!781411 () Bool)

(declare-fun res!528744 () Bool)

(assert (=> b!781411 (=> (not res!528744) (not e!434636))))

(declare-datatypes ((List!14452 0))(
  ( (Nil!14449) (Cons!14448 (h!15568 (_ BitVec 64)) (t!20775 List!14452)) )
))
(declare-fun arrayNoDuplicates!0 (array!42622 (_ BitVec 32) List!14452) Bool)

(assert (=> b!781411 (= res!528744 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14449))))

(declare-fun b!781412 () Bool)

(assert (=> b!781412 (= e!434635 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20397 a!3186) j!159) a!3186 mask!3328) lt!348238))))

(declare-fun b!781413 () Bool)

(declare-fun res!528743 () Bool)

(assert (=> b!781413 (=> (not res!528743) (not e!434631))))

(declare-fun arrayContainsKey!0 (array!42622 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!781413 (= res!528743 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!781414 () Bool)

(declare-fun res!528738 () Bool)

(assert (=> b!781414 (=> (not res!528738) (not e!434633))))

(assert (=> b!781414 (= res!528738 e!434630)))

(declare-fun c!86738 () Bool)

(assert (=> b!781414 (= c!86738 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!781415 () Bool)

(declare-fun res!528740 () Bool)

(assert (=> b!781415 (=> res!528740 e!434634)))

(assert (=> b!781415 (= res!528740 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20397 a!3186) j!159) a!3186 mask!3328) lt!348238)))))

(declare-fun b!781416 () Bool)

(declare-fun Unit!26929 () Unit!26926)

(assert (=> b!781416 (= e!434638 Unit!26929)))

(declare-fun b!781417 () Bool)

(declare-fun res!528742 () Bool)

(assert (=> b!781417 (=> (not res!528742) (not e!434636))))

(assert (=> b!781417 (= res!528742 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20818 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20818 a!3186))))))

(declare-fun b!781418 () Bool)

(declare-fun res!528747 () Bool)

(assert (=> b!781418 (=> (not res!528747) (not e!434631))))

(assert (=> b!781418 (= res!528747 (validKeyInArray!0 k!2102))))

(declare-fun b!781419 () Bool)

(assert (=> b!781419 (= e!434631 e!434636)))

(declare-fun res!528741 () Bool)

(assert (=> b!781419 (=> (not res!528741) (not e!434636))))

(declare-fun lt!348241 () SeekEntryResult!8004)

(assert (=> b!781419 (= res!528741 (or (= lt!348241 (MissingZero!8004 i!1173)) (= lt!348241 (MissingVacant!8004 i!1173))))))

(assert (=> b!781419 (= lt!348241 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!781420 () Bool)

(declare-fun res!528752 () Bool)

(assert (=> b!781420 (=> res!528752 e!434634)))

(assert (=> b!781420 (= res!528752 (= (select (store (arr!20397 a!3186) i!1173 k!2102) index!1321) lt!348237))))

(declare-fun b!781421 () Bool)

(assert (=> b!781421 (= e!434634 true)))

(assert (=> b!781421 (= (select (store (arr!20397 a!3186) i!1173 k!2102) index!1321) #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!348243 () Unit!26926)

(assert (=> b!781421 (= lt!348243 e!434638)))

(declare-fun c!86739 () Bool)

(assert (=> b!781421 (= c!86739 (= (select (store (arr!20397 a!3186) i!1173 k!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!781422 () Bool)

(declare-fun res!528745 () Bool)

(assert (=> b!781422 (=> (not res!528745) (not e!434636))))

(assert (=> b!781422 (= res!528745 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(assert (= (and start!67564 res!528750) b!781404))

(assert (= (and b!781404 res!528751) b!781402))

(assert (= (and b!781402 res!528753) b!781418))

(assert (= (and b!781418 res!528747) b!781413))

(assert (= (and b!781413 res!528743) b!781419))

(assert (= (and b!781419 res!528741) b!781422))

(assert (= (and b!781422 res!528745) b!781411))

(assert (= (and b!781411 res!528744) b!781417))

(assert (= (and b!781417 res!528742) b!781405))

(assert (= (and b!781405 res!528739) b!781409))

(assert (= (and b!781409 res!528749) b!781414))

(assert (= (and b!781414 c!86738) b!781410))

(assert (= (and b!781414 (not c!86738)) b!781407))

(assert (= (and b!781414 res!528738) b!781406))

(assert (= (and b!781406 res!528748) b!781403))

(assert (= (and b!781403 res!528754) b!781412))

(assert (= (and b!781403 (not res!528746)) b!781415))

(assert (= (and b!781415 (not res!528740)) b!781420))

(assert (= (and b!781420 (not res!528752)) b!781421))

(assert (= (and b!781421 c!86739) b!781408))

(assert (= (and b!781421 (not c!86739)) b!781416))

(declare-fun m!724483 () Bool)

(assert (=> b!781418 m!724483))

(declare-fun m!724485 () Bool)

(assert (=> b!781411 m!724485))

(declare-fun m!724487 () Bool)

(assert (=> b!781402 m!724487))

(assert (=> b!781402 m!724487))

(declare-fun m!724489 () Bool)

(assert (=> b!781402 m!724489))

(declare-fun m!724491 () Bool)

(assert (=> start!67564 m!724491))

(declare-fun m!724493 () Bool)

(assert (=> start!67564 m!724493))

(assert (=> b!781407 m!724487))

(assert (=> b!781407 m!724487))

(declare-fun m!724495 () Bool)

(assert (=> b!781407 m!724495))

(assert (=> b!781415 m!724487))

(assert (=> b!781415 m!724487))

(assert (=> b!781415 m!724495))

(declare-fun m!724497 () Bool)

(assert (=> b!781420 m!724497))

(declare-fun m!724499 () Bool)

(assert (=> b!781420 m!724499))

(assert (=> b!781403 m!724487))

(assert (=> b!781403 m!724487))

(declare-fun m!724501 () Bool)

(assert (=> b!781403 m!724501))

(declare-fun m!724503 () Bool)

(assert (=> b!781403 m!724503))

(declare-fun m!724505 () Bool)

(assert (=> b!781403 m!724505))

(assert (=> b!781410 m!724487))

(assert (=> b!781410 m!724487))

(declare-fun m!724507 () Bool)

(assert (=> b!781410 m!724507))

(assert (=> b!781421 m!724497))

(assert (=> b!781421 m!724499))

(declare-fun m!724509 () Bool)

(assert (=> b!781409 m!724509))

(assert (=> b!781412 m!724487))

(assert (=> b!781412 m!724487))

(declare-fun m!724511 () Bool)

(assert (=> b!781412 m!724511))

(declare-fun m!724513 () Bool)

(assert (=> b!781419 m!724513))

(declare-fun m!724515 () Bool)

(assert (=> b!781413 m!724515))

(declare-fun m!724517 () Bool)

(assert (=> b!781406 m!724517))

(declare-fun m!724519 () Bool)

(assert (=> b!781406 m!724519))

(declare-fun m!724521 () Bool)

(assert (=> b!781406 m!724521))

(assert (=> b!781406 m!724497))

(declare-fun m!724523 () Bool)

(assert (=> b!781406 m!724523))

(assert (=> b!781406 m!724519))

(assert (=> b!781405 m!724487))

(assert (=> b!781405 m!724487))

(declare-fun m!724525 () Bool)

(assert (=> b!781405 m!724525))

(assert (=> b!781405 m!724525))

(assert (=> b!781405 m!724487))

(declare-fun m!724527 () Bool)

(assert (=> b!781405 m!724527))

(declare-fun m!724529 () Bool)

(assert (=> b!781422 m!724529))

(push 1)

