; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!67578 () Bool)

(assert start!67578)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!42636 0))(
  ( (array!42637 (arr!20404 (Array (_ BitVec 32) (_ BitVec 64))) (size!20825 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42636)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun b!781843 () Bool)

(declare-fun e!434825 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8011 0))(
  ( (MissingZero!8011 (index!34411 (_ BitVec 32))) (Found!8011 (index!34412 (_ BitVec 32))) (Intermediate!8011 (undefined!8823 Bool) (index!34413 (_ BitVec 32)) (x!65391 (_ BitVec 32))) (Undefined!8011) (MissingVacant!8011 (index!34414 (_ BitVec 32))) )
))
(declare-fun lt!348449 () SeekEntryResult!8011)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42636 (_ BitVec 32)) SeekEntryResult!8011)

(assert (=> b!781843 (= e!434825 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20404 a!3186) j!159) a!3186 mask!3328) lt!348449))))

(declare-fun b!781844 () Bool)

(declare-fun res!529105 () Bool)

(declare-fun e!434819 () Bool)

(assert (=> b!781844 (=> (not res!529105) (not e!434819))))

(declare-datatypes ((List!14459 0))(
  ( (Nil!14456) (Cons!14455 (h!15575 (_ BitVec 64)) (t!20782 List!14459)) )
))
(declare-fun arrayNoDuplicates!0 (array!42636 (_ BitVec 32) List!14459) Bool)

(assert (=> b!781844 (= res!529105 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14456))))

(declare-fun b!781845 () Bool)

(declare-fun res!529101 () Bool)

(declare-fun e!434821 () Bool)

(assert (=> b!781845 (=> res!529101 e!434821)))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun lt!348453 () (_ BitVec 64))

(assert (=> b!781845 (= res!529101 (= (select (store (arr!20404 a!3186) i!1173 k0!2102) index!1321) lt!348453))))

(declare-fun b!781847 () Bool)

(declare-fun res!529102 () Bool)

(assert (=> b!781847 (=> (not res!529102) (not e!434819))))

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!781847 (= res!529102 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20825 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20825 a!3186))))))

(declare-fun b!781848 () Bool)

(declare-datatypes ((Unit!26954 0))(
  ( (Unit!26955) )
))
(declare-fun e!434826 () Unit!26954)

(declare-fun Unit!26956 () Unit!26954)

(assert (=> b!781848 (= e!434826 Unit!26956)))

(declare-fun b!781849 () Bool)

(declare-fun res!529099 () Bool)

(assert (=> b!781849 (=> (not res!529099) (not e!434819))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42636 (_ BitVec 32)) Bool)

(assert (=> b!781849 (= res!529099 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!781850 () Bool)

(declare-fun e!434824 () Bool)

(declare-fun e!434823 () Bool)

(assert (=> b!781850 (= e!434824 e!434823)))

(declare-fun res!529098 () Bool)

(assert (=> b!781850 (=> (not res!529098) (not e!434823))))

(declare-fun lt!348447 () SeekEntryResult!8011)

(declare-fun lt!348451 () SeekEntryResult!8011)

(assert (=> b!781850 (= res!529098 (= lt!348447 lt!348451))))

(declare-fun lt!348450 () array!42636)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42636 (_ BitVec 32)) SeekEntryResult!8011)

(assert (=> b!781850 (= lt!348451 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!348453 lt!348450 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!781850 (= lt!348447 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!348453 mask!3328) lt!348453 lt!348450 mask!3328))))

(assert (=> b!781850 (= lt!348453 (select (store (arr!20404 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!781850 (= lt!348450 (array!42637 (store (arr!20404 a!3186) i!1173 k0!2102) (size!20825 a!3186)))))

(declare-fun b!781851 () Bool)

(declare-fun res!529106 () Bool)

(declare-fun e!434827 () Bool)

(assert (=> b!781851 (=> (not res!529106) (not e!434827))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!781851 (= res!529106 (validKeyInArray!0 (select (arr!20404 a!3186) j!159)))))

(declare-fun b!781852 () Bool)

(declare-fun e!434822 () Bool)

(assert (=> b!781852 (= e!434822 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20404 a!3186) j!159) a!3186 mask!3328) (Found!8011 j!159)))))

(declare-fun b!781853 () Bool)

(assert (=> b!781853 (= e!434821 true)))

(assert (=> b!781853 (= (select (store (arr!20404 a!3186) i!1173 k0!2102) index!1321) #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!348454 () Unit!26954)

(assert (=> b!781853 (= lt!348454 e!434826)))

(declare-fun c!86781 () Bool)

(assert (=> b!781853 (= c!86781 (= (select (store (arr!20404 a!3186) i!1173 k0!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!781854 () Bool)

(declare-fun res!529104 () Bool)

(assert (=> b!781854 (=> (not res!529104) (not e!434827))))

(assert (=> b!781854 (= res!529104 (and (= (size!20825 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20825 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20825 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!781855 () Bool)

(declare-fun res!529103 () Bool)

(assert (=> b!781855 (=> (not res!529103) (not e!434824))))

(assert (=> b!781855 (= res!529103 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20404 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!781856 () Bool)

(assert (=> b!781856 (= e!434827 e!434819)))

(declare-fun res!529109 () Bool)

(assert (=> b!781856 (=> (not res!529109) (not e!434819))))

(declare-fun lt!348445 () SeekEntryResult!8011)

(assert (=> b!781856 (= res!529109 (or (= lt!348445 (MissingZero!8011 i!1173)) (= lt!348445 (MissingVacant!8011 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42636 (_ BitVec 32)) SeekEntryResult!8011)

(assert (=> b!781856 (= lt!348445 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!781857 () Bool)

(declare-fun res!529096 () Bool)

(assert (=> b!781857 (=> res!529096 e!434821)))

(assert (=> b!781857 (= res!529096 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20404 a!3186) j!159) a!3186 mask!3328) lt!348449)))))

(declare-fun b!781858 () Bool)

(declare-fun res!529100 () Bool)

(assert (=> b!781858 (=> (not res!529100) (not e!434827))))

(assert (=> b!781858 (= res!529100 (validKeyInArray!0 k0!2102))))

(declare-fun b!781859 () Bool)

(assert (=> b!781859 (= e!434819 e!434824)))

(declare-fun res!529111 () Bool)

(assert (=> b!781859 (=> (not res!529111) (not e!434824))))

(declare-fun lt!348452 () SeekEntryResult!8011)

(assert (=> b!781859 (= res!529111 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20404 a!3186) j!159) mask!3328) (select (arr!20404 a!3186) j!159) a!3186 mask!3328) lt!348452))))

(assert (=> b!781859 (= lt!348452 (Intermediate!8011 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!781860 () Bool)

(assert (=> b!781860 (= e!434822 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20404 a!3186) j!159) a!3186 mask!3328) lt!348452))))

(declare-fun b!781861 () Bool)

(declare-fun res!529095 () Bool)

(assert (=> b!781861 (=> (not res!529095) (not e!434827))))

(declare-fun arrayContainsKey!0 (array!42636 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!781861 (= res!529095 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun res!529107 () Bool)

(assert (=> start!67578 (=> (not res!529107) (not e!434827))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67578 (= res!529107 (validMask!0 mask!3328))))

(assert (=> start!67578 e!434827))

(assert (=> start!67578 true))

(declare-fun array_inv!16178 (array!42636) Bool)

(assert (=> start!67578 (array_inv!16178 a!3186)))

(declare-fun b!781846 () Bool)

(declare-fun res!529097 () Bool)

(assert (=> b!781846 (=> (not res!529097) (not e!434824))))

(assert (=> b!781846 (= res!529097 e!434822)))

(declare-fun c!86780 () Bool)

(assert (=> b!781846 (= c!86780 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!781862 () Bool)

(declare-fun Unit!26957 () Unit!26954)

(assert (=> b!781862 (= e!434826 Unit!26957)))

(assert (=> b!781862 false))

(declare-fun b!781863 () Bool)

(assert (=> b!781863 (= e!434823 (not e!434821))))

(declare-fun res!529108 () Bool)

(assert (=> b!781863 (=> res!529108 e!434821)))

(get-info :version)

(assert (=> b!781863 (= res!529108 (or (not ((_ is Intermediate!8011) lt!348451)) (bvslt x!1131 (x!65391 lt!348451)) (not (= x!1131 (x!65391 lt!348451))) (not (= index!1321 (index!34413 lt!348451)))))))

(assert (=> b!781863 e!434825))

(declare-fun res!529110 () Bool)

(assert (=> b!781863 (=> (not res!529110) (not e!434825))))

(declare-fun lt!348446 () SeekEntryResult!8011)

(assert (=> b!781863 (= res!529110 (= lt!348446 lt!348449))))

(assert (=> b!781863 (= lt!348449 (Found!8011 j!159))))

(assert (=> b!781863 (= lt!348446 (seekEntryOrOpen!0 (select (arr!20404 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!781863 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!348448 () Unit!26954)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42636 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26954)

(assert (=> b!781863 (= lt!348448 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(assert (= (and start!67578 res!529107) b!781854))

(assert (= (and b!781854 res!529104) b!781851))

(assert (= (and b!781851 res!529106) b!781858))

(assert (= (and b!781858 res!529100) b!781861))

(assert (= (and b!781861 res!529095) b!781856))

(assert (= (and b!781856 res!529109) b!781849))

(assert (= (and b!781849 res!529099) b!781844))

(assert (= (and b!781844 res!529105) b!781847))

(assert (= (and b!781847 res!529102) b!781859))

(assert (= (and b!781859 res!529111) b!781855))

(assert (= (and b!781855 res!529103) b!781846))

(assert (= (and b!781846 c!86780) b!781860))

(assert (= (and b!781846 (not c!86780)) b!781852))

(assert (= (and b!781846 res!529097) b!781850))

(assert (= (and b!781850 res!529098) b!781863))

(assert (= (and b!781863 res!529110) b!781843))

(assert (= (and b!781863 (not res!529108)) b!781857))

(assert (= (and b!781857 (not res!529096)) b!781845))

(assert (= (and b!781845 (not res!529101)) b!781853))

(assert (= (and b!781853 c!86781) b!781862))

(assert (= (and b!781853 (not c!86781)) b!781848))

(declare-fun m!724819 () Bool)

(assert (=> b!781863 m!724819))

(assert (=> b!781863 m!724819))

(declare-fun m!724821 () Bool)

(assert (=> b!781863 m!724821))

(declare-fun m!724823 () Bool)

(assert (=> b!781863 m!724823))

(declare-fun m!724825 () Bool)

(assert (=> b!781863 m!724825))

(declare-fun m!724827 () Bool)

(assert (=> b!781845 m!724827))

(declare-fun m!724829 () Bool)

(assert (=> b!781845 m!724829))

(declare-fun m!724831 () Bool)

(assert (=> b!781856 m!724831))

(declare-fun m!724833 () Bool)

(assert (=> b!781850 m!724833))

(declare-fun m!724835 () Bool)

(assert (=> b!781850 m!724835))

(declare-fun m!724837 () Bool)

(assert (=> b!781850 m!724837))

(declare-fun m!724839 () Bool)

(assert (=> b!781850 m!724839))

(assert (=> b!781850 m!724835))

(assert (=> b!781850 m!724827))

(assert (=> b!781857 m!724819))

(assert (=> b!781857 m!724819))

(declare-fun m!724841 () Bool)

(assert (=> b!781857 m!724841))

(declare-fun m!724843 () Bool)

(assert (=> b!781855 m!724843))

(assert (=> b!781852 m!724819))

(assert (=> b!781852 m!724819))

(assert (=> b!781852 m!724841))

(declare-fun m!724845 () Bool)

(assert (=> start!67578 m!724845))

(declare-fun m!724847 () Bool)

(assert (=> start!67578 m!724847))

(assert (=> b!781860 m!724819))

(assert (=> b!781860 m!724819))

(declare-fun m!724849 () Bool)

(assert (=> b!781860 m!724849))

(assert (=> b!781859 m!724819))

(assert (=> b!781859 m!724819))

(declare-fun m!724851 () Bool)

(assert (=> b!781859 m!724851))

(assert (=> b!781859 m!724851))

(assert (=> b!781859 m!724819))

(declare-fun m!724853 () Bool)

(assert (=> b!781859 m!724853))

(declare-fun m!724855 () Bool)

(assert (=> b!781858 m!724855))

(assert (=> b!781851 m!724819))

(assert (=> b!781851 m!724819))

(declare-fun m!724857 () Bool)

(assert (=> b!781851 m!724857))

(declare-fun m!724859 () Bool)

(assert (=> b!781844 m!724859))

(declare-fun m!724861 () Bool)

(assert (=> b!781861 m!724861))

(assert (=> b!781843 m!724819))

(assert (=> b!781843 m!724819))

(declare-fun m!724863 () Bool)

(assert (=> b!781843 m!724863))

(declare-fun m!724865 () Bool)

(assert (=> b!781849 m!724865))

(assert (=> b!781853 m!724827))

(assert (=> b!781853 m!724829))

(check-sat (not b!781844) (not b!781852) (not b!781849) (not b!781843) (not start!67578) (not b!781860) (not b!781856) (not b!781861) (not b!781863) (not b!781858) (not b!781859) (not b!781857) (not b!781851) (not b!781850))
(check-sat)
