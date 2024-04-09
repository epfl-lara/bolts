; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67568 () Bool)

(assert start!67568)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!42626 0))(
  ( (array!42627 (arr!20399 (Array (_ BitVec 32) (_ BitVec 64))) (size!20820 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42626)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun b!781528 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun e!434687 () Bool)

(declare-datatypes ((SeekEntryResult!8006 0))(
  ( (MissingZero!8006 (index!34391 (_ BitVec 32))) (Found!8006 (index!34392 (_ BitVec 32))) (Intermediate!8006 (undefined!8818 Bool) (index!34393 (_ BitVec 32)) (x!65370 (_ BitVec 32))) (Undefined!8006) (MissingVacant!8006 (index!34394 (_ BitVec 32))) )
))
(declare-fun lt!348297 () SeekEntryResult!8006)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42626 (_ BitVec 32)) SeekEntryResult!8006)

(assert (=> b!781528 (= e!434687 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20399 a!3186) j!159) a!3186 mask!3328) lt!348297))))

(declare-fun b!781530 () Bool)

(declare-fun e!434692 () Bool)

(declare-fun e!434689 () Bool)

(assert (=> b!781530 (= e!434692 e!434689)))

(declare-fun res!528845 () Bool)

(assert (=> b!781530 (=> (not res!528845) (not e!434689))))

(declare-fun lt!348303 () SeekEntryResult!8006)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!781530 (= res!528845 (or (= lt!348303 (MissingZero!8006 i!1173)) (= lt!348303 (MissingVacant!8006 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42626 (_ BitVec 32)) SeekEntryResult!8006)

(assert (=> b!781530 (= lt!348303 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!781531 () Bool)

(declare-fun res!528848 () Bool)

(declare-fun e!434685 () Bool)

(assert (=> b!781531 (=> res!528848 e!434685)))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!348295 () (_ BitVec 64))

(assert (=> b!781531 (= res!528848 (= (select (store (arr!20399 a!3186) i!1173 k!2102) index!1321) lt!348295))))

(declare-fun b!781532 () Bool)

(assert (=> b!781532 (= e!434685 true)))

(assert (=> b!781532 (= (select (store (arr!20399 a!3186) i!1173 k!2102) index!1321) #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-datatypes ((Unit!26934 0))(
  ( (Unit!26935) )
))
(declare-fun lt!348298 () Unit!26934)

(declare-fun e!434691 () Unit!26934)

(assert (=> b!781532 (= lt!348298 e!434691)))

(declare-fun c!86751 () Bool)

(assert (=> b!781532 (= c!86751 (= (select (store (arr!20399 a!3186) i!1173 k!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!781533 () Bool)

(declare-fun res!528855 () Bool)

(declare-fun e!434690 () Bool)

(assert (=> b!781533 (=> (not res!528855) (not e!434690))))

(declare-fun e!434686 () Bool)

(assert (=> b!781533 (= res!528855 e!434686)))

(declare-fun c!86750 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!781533 (= c!86750 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!781534 () Bool)

(declare-fun e!434688 () Bool)

(assert (=> b!781534 (= e!434688 (not e!434685))))

(declare-fun res!528850 () Bool)

(assert (=> b!781534 (=> res!528850 e!434685)))

(declare-fun lt!348302 () SeekEntryResult!8006)

(assert (=> b!781534 (= res!528850 (or (not (is-Intermediate!8006 lt!348302)) (bvslt x!1131 (x!65370 lt!348302)) (not (= x!1131 (x!65370 lt!348302))) (not (= index!1321 (index!34393 lt!348302)))))))

(assert (=> b!781534 e!434687))

(declare-fun res!528846 () Bool)

(assert (=> b!781534 (=> (not res!528846) (not e!434687))))

(declare-fun lt!348296 () SeekEntryResult!8006)

(assert (=> b!781534 (= res!528846 (= lt!348296 lt!348297))))

(assert (=> b!781534 (= lt!348297 (Found!8006 j!159))))

(assert (=> b!781534 (= lt!348296 (seekEntryOrOpen!0 (select (arr!20399 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42626 (_ BitVec 32)) Bool)

(assert (=> b!781534 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!348299 () Unit!26934)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42626 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26934)

(assert (=> b!781534 (= lt!348299 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!781535 () Bool)

(declare-fun res!528844 () Bool)

(assert (=> b!781535 (=> (not res!528844) (not e!434692))))

(assert (=> b!781535 (= res!528844 (and (= (size!20820 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20820 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20820 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!781536 () Bool)

(assert (=> b!781536 (= e!434690 e!434688)))

(declare-fun res!528854 () Bool)

(assert (=> b!781536 (=> (not res!528854) (not e!434688))))

(declare-fun lt!348304 () SeekEntryResult!8006)

(assert (=> b!781536 (= res!528854 (= lt!348304 lt!348302))))

(declare-fun lt!348300 () array!42626)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42626 (_ BitVec 32)) SeekEntryResult!8006)

(assert (=> b!781536 (= lt!348302 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!348295 lt!348300 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!781536 (= lt!348304 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!348295 mask!3328) lt!348295 lt!348300 mask!3328))))

(assert (=> b!781536 (= lt!348295 (select (store (arr!20399 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!781536 (= lt!348300 (array!42627 (store (arr!20399 a!3186) i!1173 k!2102) (size!20820 a!3186)))))

(declare-fun res!528841 () Bool)

(assert (=> start!67568 (=> (not res!528841) (not e!434692))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67568 (= res!528841 (validMask!0 mask!3328))))

(assert (=> start!67568 e!434692))

(assert (=> start!67568 true))

(declare-fun array_inv!16173 (array!42626) Bool)

(assert (=> start!67568 (array_inv!16173 a!3186)))

(declare-fun b!781529 () Bool)

(declare-fun Unit!26936 () Unit!26934)

(assert (=> b!781529 (= e!434691 Unit!26936)))

(declare-fun lt!348301 () SeekEntryResult!8006)

(declare-fun b!781537 () Bool)

(assert (=> b!781537 (= e!434686 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20399 a!3186) j!159) a!3186 mask!3328) lt!348301))))

(declare-fun b!781538 () Bool)

(declare-fun res!528852 () Bool)

(assert (=> b!781538 (=> (not res!528852) (not e!434692))))

(declare-fun arrayContainsKey!0 (array!42626 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!781538 (= res!528852 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!781539 () Bool)

(declare-fun res!528856 () Bool)

(assert (=> b!781539 (=> (not res!528856) (not e!434690))))

(assert (=> b!781539 (= res!528856 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20399 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!781540 () Bool)

(declare-fun Unit!26937 () Unit!26934)

(assert (=> b!781540 (= e!434691 Unit!26937)))

(assert (=> b!781540 false))

(declare-fun b!781541 () Bool)

(declare-fun res!528843 () Bool)

(assert (=> b!781541 (=> (not res!528843) (not e!434692))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!781541 (= res!528843 (validKeyInArray!0 (select (arr!20399 a!3186) j!159)))))

(declare-fun b!781542 () Bool)

(assert (=> b!781542 (= e!434686 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20399 a!3186) j!159) a!3186 mask!3328) (Found!8006 j!159)))))

(declare-fun b!781543 () Bool)

(declare-fun res!528842 () Bool)

(assert (=> b!781543 (=> (not res!528842) (not e!434689))))

(declare-datatypes ((List!14454 0))(
  ( (Nil!14451) (Cons!14450 (h!15570 (_ BitVec 64)) (t!20777 List!14454)) )
))
(declare-fun arrayNoDuplicates!0 (array!42626 (_ BitVec 32) List!14454) Bool)

(assert (=> b!781543 (= res!528842 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14451))))

(declare-fun b!781544 () Bool)

(declare-fun res!528847 () Bool)

(assert (=> b!781544 (=> (not res!528847) (not e!434689))))

(assert (=> b!781544 (= res!528847 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!781545 () Bool)

(declare-fun res!528840 () Bool)

(assert (=> b!781545 (=> (not res!528840) (not e!434689))))

(assert (=> b!781545 (= res!528840 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20820 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20820 a!3186))))))

(declare-fun b!781546 () Bool)

(declare-fun res!528849 () Bool)

(assert (=> b!781546 (=> res!528849 e!434685)))

(assert (=> b!781546 (= res!528849 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20399 a!3186) j!159) a!3186 mask!3328) lt!348297)))))

(declare-fun b!781547 () Bool)

(declare-fun res!528853 () Bool)

(assert (=> b!781547 (=> (not res!528853) (not e!434692))))

(assert (=> b!781547 (= res!528853 (validKeyInArray!0 k!2102))))

(declare-fun b!781548 () Bool)

(assert (=> b!781548 (= e!434689 e!434690)))

(declare-fun res!528851 () Bool)

(assert (=> b!781548 (=> (not res!528851) (not e!434690))))

(assert (=> b!781548 (= res!528851 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20399 a!3186) j!159) mask!3328) (select (arr!20399 a!3186) j!159) a!3186 mask!3328) lt!348301))))

(assert (=> b!781548 (= lt!348301 (Intermediate!8006 false resIntermediateIndex!5 resIntermediateX!5))))

(assert (= (and start!67568 res!528841) b!781535))

(assert (= (and b!781535 res!528844) b!781541))

(assert (= (and b!781541 res!528843) b!781547))

(assert (= (and b!781547 res!528853) b!781538))

(assert (= (and b!781538 res!528852) b!781530))

(assert (= (and b!781530 res!528845) b!781544))

(assert (= (and b!781544 res!528847) b!781543))

(assert (= (and b!781543 res!528842) b!781545))

(assert (= (and b!781545 res!528840) b!781548))

(assert (= (and b!781548 res!528851) b!781539))

(assert (= (and b!781539 res!528856) b!781533))

(assert (= (and b!781533 c!86750) b!781537))

(assert (= (and b!781533 (not c!86750)) b!781542))

(assert (= (and b!781533 res!528855) b!781536))

(assert (= (and b!781536 res!528854) b!781534))

(assert (= (and b!781534 res!528846) b!781528))

(assert (= (and b!781534 (not res!528850)) b!781546))

(assert (= (and b!781546 (not res!528849)) b!781531))

(assert (= (and b!781531 (not res!528848)) b!781532))

(assert (= (and b!781532 c!86751) b!781540))

(assert (= (and b!781532 (not c!86751)) b!781529))

(declare-fun m!724579 () Bool)

(assert (=> b!781542 m!724579))

(assert (=> b!781542 m!724579))

(declare-fun m!724581 () Bool)

(assert (=> b!781542 m!724581))

(assert (=> b!781548 m!724579))

(assert (=> b!781548 m!724579))

(declare-fun m!724583 () Bool)

(assert (=> b!781548 m!724583))

(assert (=> b!781548 m!724583))

(assert (=> b!781548 m!724579))

(declare-fun m!724585 () Bool)

(assert (=> b!781548 m!724585))

(assert (=> b!781541 m!724579))

(assert (=> b!781541 m!724579))

(declare-fun m!724587 () Bool)

(assert (=> b!781541 m!724587))

(declare-fun m!724589 () Bool)

(assert (=> b!781538 m!724589))

(assert (=> b!781537 m!724579))

(assert (=> b!781537 m!724579))

(declare-fun m!724591 () Bool)

(assert (=> b!781537 m!724591))

(assert (=> b!781528 m!724579))

(assert (=> b!781528 m!724579))

(declare-fun m!724593 () Bool)

(assert (=> b!781528 m!724593))

(declare-fun m!724595 () Bool)

(assert (=> start!67568 m!724595))

(declare-fun m!724597 () Bool)

(assert (=> start!67568 m!724597))

(declare-fun m!724599 () Bool)

(assert (=> b!781536 m!724599))

(declare-fun m!724601 () Bool)

(assert (=> b!781536 m!724601))

(declare-fun m!724603 () Bool)

(assert (=> b!781536 m!724603))

(declare-fun m!724605 () Bool)

(assert (=> b!781536 m!724605))

(assert (=> b!781536 m!724599))

(declare-fun m!724607 () Bool)

(assert (=> b!781536 m!724607))

(declare-fun m!724609 () Bool)

(assert (=> b!781539 m!724609))

(declare-fun m!724611 () Bool)

(assert (=> b!781547 m!724611))

(declare-fun m!724613 () Bool)

(assert (=> b!781543 m!724613))

(assert (=> b!781531 m!724603))

(declare-fun m!724615 () Bool)

(assert (=> b!781531 m!724615))

(assert (=> b!781532 m!724603))

(assert (=> b!781532 m!724615))

(declare-fun m!724617 () Bool)

(assert (=> b!781530 m!724617))

(assert (=> b!781546 m!724579))

(assert (=> b!781546 m!724579))

(assert (=> b!781546 m!724581))

(assert (=> b!781534 m!724579))

(assert (=> b!781534 m!724579))

(declare-fun m!724619 () Bool)

(assert (=> b!781534 m!724619))

(declare-fun m!724621 () Bool)

(assert (=> b!781534 m!724621))

(declare-fun m!724623 () Bool)

(assert (=> b!781534 m!724623))

(declare-fun m!724625 () Bool)

(assert (=> b!781544 m!724625))

(push 1)

