; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!67812 () Bool)

(assert start!67812)

(declare-fun b!788003 () Bool)

(declare-fun res!533921 () Bool)

(declare-fun e!438018 () Bool)

(assert (=> b!788003 (=> (not res!533921) (not e!438018))))

(declare-fun e!438019 () Bool)

(assert (=> b!788003 (= res!533921 e!438019)))

(declare-fun c!87450 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!788003 (= c!87450 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!788004 () Bool)

(declare-fun e!438012 () Bool)

(declare-datatypes ((SeekEntryResult!8095 0))(
  ( (MissingZero!8095 (index!34747 (_ BitVec 32))) (Found!8095 (index!34748 (_ BitVec 32))) (Intermediate!8095 (undefined!8907 Bool) (index!34749 (_ BitVec 32)) (x!65708 (_ BitVec 32))) (Undefined!8095) (MissingVacant!8095 (index!34750 (_ BitVec 32))) )
))
(declare-fun lt!351586 () SeekEntryResult!8095)

(declare-fun lt!351589 () SeekEntryResult!8095)

(assert (=> b!788004 (= e!438012 (= lt!351586 lt!351589))))

(declare-fun b!788005 () Bool)

(declare-fun res!533923 () Bool)

(declare-fun e!438014 () Bool)

(assert (=> b!788005 (=> (not res!533923) (not e!438014))))

(declare-datatypes ((array!42807 0))(
  ( (array!42808 (arr!20488 (Array (_ BitVec 32) (_ BitVec 64))) (size!20909 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42807)

(declare-datatypes ((List!14543 0))(
  ( (Nil!14540) (Cons!14539 (h!15662 (_ BitVec 64)) (t!20866 List!14543)) )
))
(declare-fun arrayNoDuplicates!0 (array!42807 (_ BitVec 32) List!14543) Bool)

(assert (=> b!788005 (= res!533923 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14540))))

(declare-fun res!533937 () Bool)

(declare-fun e!438011 () Bool)

(assert (=> start!67812 (=> (not res!533937) (not e!438011))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67812 (= res!533937 (validMask!0 mask!3328))))

(assert (=> start!67812 e!438011))

(assert (=> start!67812 true))

(declare-fun array_inv!16262 (array!42807) Bool)

(assert (=> start!67812 (array_inv!16262 a!3186)))

(declare-fun b!788006 () Bool)

(declare-fun res!533938 () Bool)

(assert (=> b!788006 (=> (not res!533938) (not e!438012))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!351584 () array!42807)

(declare-fun lt!351579 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42807 (_ BitVec 32)) SeekEntryResult!8095)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42807 (_ BitVec 32)) SeekEntryResult!8095)

(assert (=> b!788006 (= res!533938 (= (seekEntryOrOpen!0 lt!351579 lt!351584 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!351579 lt!351584 mask!3328)))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun b!788007 () Bool)

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!788007 (= e!438019 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20488 a!3186) j!159) a!3186 mask!3328) (Found!8095 j!159)))))

(declare-fun b!788008 () Bool)

(declare-fun e!438021 () Bool)

(declare-fun e!438016 () Bool)

(assert (=> b!788008 (= e!438021 e!438016)))

(declare-fun res!533927 () Bool)

(assert (=> b!788008 (=> res!533927 e!438016)))

(declare-fun lt!351583 () SeekEntryResult!8095)

(assert (=> b!788008 (= res!533927 (not (= lt!351589 lt!351583)))))

(assert (=> b!788008 (= lt!351589 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20488 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!788009 () Bool)

(assert (=> b!788009 (= e!438014 e!438018)))

(declare-fun res!533933 () Bool)

(assert (=> b!788009 (=> (not res!533933) (not e!438018))))

(declare-fun lt!351585 () SeekEntryResult!8095)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42807 (_ BitVec 32)) SeekEntryResult!8095)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!788009 (= res!533933 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20488 a!3186) j!159) mask!3328) (select (arr!20488 a!3186) j!159) a!3186 mask!3328) lt!351585))))

(assert (=> b!788009 (= lt!351585 (Intermediate!8095 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!788010 () Bool)

(declare-fun e!438022 () Bool)

(assert (=> b!788010 (= e!438016 e!438022)))

(declare-fun res!533925 () Bool)

(assert (=> b!788010 (=> res!533925 e!438022)))

(declare-fun lt!351580 () (_ BitVec 64))

(assert (=> b!788010 (= res!533925 (= lt!351580 lt!351579))))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k0!2102 () (_ BitVec 64))

(assert (=> b!788010 (= lt!351580 (select (store (arr!20488 a!3186) i!1173 k0!2102) index!1321))))

(declare-fun b!788011 () Bool)

(declare-fun e!438017 () Bool)

(assert (=> b!788011 (= e!438018 e!438017)))

(declare-fun res!533934 () Bool)

(assert (=> b!788011 (=> (not res!533934) (not e!438017))))

(declare-fun lt!351587 () SeekEntryResult!8095)

(declare-fun lt!351581 () SeekEntryResult!8095)

(assert (=> b!788011 (= res!533934 (= lt!351587 lt!351581))))

(assert (=> b!788011 (= lt!351581 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!351579 lt!351584 mask!3328))))

(assert (=> b!788011 (= lt!351587 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!351579 mask!3328) lt!351579 lt!351584 mask!3328))))

(assert (=> b!788011 (= lt!351579 (select (store (arr!20488 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!788011 (= lt!351584 (array!42808 (store (arr!20488 a!3186) i!1173 k0!2102) (size!20909 a!3186)))))

(declare-fun b!788012 () Bool)

(assert (=> b!788012 (= e!438022 (= (select (arr!20488 a!3186) index!1321) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!788012 e!438012))

(declare-fun res!533926 () Bool)

(assert (=> b!788012 (=> (not res!533926) (not e!438012))))

(assert (=> b!788012 (= res!533926 (= lt!351580 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!27290 0))(
  ( (Unit!27291) )
))
(declare-fun lt!351582 () Unit!27290)

(declare-fun e!438020 () Unit!27290)

(assert (=> b!788012 (= lt!351582 e!438020)))

(declare-fun c!87449 () Bool)

(assert (=> b!788012 (= c!87449 (= lt!351580 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!788013 () Bool)

(assert (=> b!788013 (= e!438019 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20488 a!3186) j!159) a!3186 mask!3328) lt!351585))))

(declare-fun b!788014 () Bool)

(declare-fun res!533930 () Bool)

(assert (=> b!788014 (=> (not res!533930) (not e!438011))))

(assert (=> b!788014 (= res!533930 (and (= (size!20909 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20909 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20909 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!788015 () Bool)

(declare-fun res!533932 () Bool)

(assert (=> b!788015 (=> (not res!533932) (not e!438014))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42807 (_ BitVec 32)) Bool)

(assert (=> b!788015 (= res!533932 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!788016 () Bool)

(declare-fun res!533922 () Bool)

(assert (=> b!788016 (=> (not res!533922) (not e!438011))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!788016 (= res!533922 (validKeyInArray!0 k0!2102))))

(declare-fun b!788017 () Bool)

(assert (=> b!788017 (= e!438011 e!438014)))

(declare-fun res!533931 () Bool)

(assert (=> b!788017 (=> (not res!533931) (not e!438014))))

(declare-fun lt!351578 () SeekEntryResult!8095)

(assert (=> b!788017 (= res!533931 (or (= lt!351578 (MissingZero!8095 i!1173)) (= lt!351578 (MissingVacant!8095 i!1173))))))

(assert (=> b!788017 (= lt!351578 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!788018 () Bool)

(declare-fun res!533924 () Bool)

(assert (=> b!788018 (=> (not res!533924) (not e!438014))))

(assert (=> b!788018 (= res!533924 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20909 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20909 a!3186))))))

(declare-fun b!788019 () Bool)

(declare-fun Unit!27292 () Unit!27290)

(assert (=> b!788019 (= e!438020 Unit!27292)))

(declare-fun b!788020 () Bool)

(declare-fun res!533935 () Bool)

(assert (=> b!788020 (=> (not res!533935) (not e!438018))))

(assert (=> b!788020 (= res!533935 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20488 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!788021 () Bool)

(declare-fun e!438013 () Bool)

(assert (=> b!788021 (= e!438013 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20488 a!3186) j!159) a!3186 mask!3328) lt!351583))))

(declare-fun b!788022 () Bool)

(declare-fun res!533929 () Bool)

(assert (=> b!788022 (=> (not res!533929) (not e!438011))))

(assert (=> b!788022 (= res!533929 (validKeyInArray!0 (select (arr!20488 a!3186) j!159)))))

(declare-fun b!788023 () Bool)

(declare-fun res!533920 () Bool)

(assert (=> b!788023 (=> (not res!533920) (not e!438011))))

(declare-fun arrayContainsKey!0 (array!42807 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!788023 (= res!533920 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!788024 () Bool)

(assert (=> b!788024 (= e!438017 (not e!438021))))

(declare-fun res!533928 () Bool)

(assert (=> b!788024 (=> res!533928 e!438021)))

(get-info :version)

(assert (=> b!788024 (= res!533928 (or (not ((_ is Intermediate!8095) lt!351581)) (bvslt x!1131 (x!65708 lt!351581)) (not (= x!1131 (x!65708 lt!351581))) (not (= index!1321 (index!34749 lt!351581)))))))

(assert (=> b!788024 e!438013))

(declare-fun res!533936 () Bool)

(assert (=> b!788024 (=> (not res!533936) (not e!438013))))

(assert (=> b!788024 (= res!533936 (= lt!351586 lt!351583))))

(assert (=> b!788024 (= lt!351583 (Found!8095 j!159))))

(assert (=> b!788024 (= lt!351586 (seekEntryOrOpen!0 (select (arr!20488 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!788024 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!351588 () Unit!27290)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42807 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27290)

(assert (=> b!788024 (= lt!351588 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!788025 () Bool)

(declare-fun Unit!27293 () Unit!27290)

(assert (=> b!788025 (= e!438020 Unit!27293)))

(assert (=> b!788025 false))

(assert (= (and start!67812 res!533937) b!788014))

(assert (= (and b!788014 res!533930) b!788022))

(assert (= (and b!788022 res!533929) b!788016))

(assert (= (and b!788016 res!533922) b!788023))

(assert (= (and b!788023 res!533920) b!788017))

(assert (= (and b!788017 res!533931) b!788015))

(assert (= (and b!788015 res!533932) b!788005))

(assert (= (and b!788005 res!533923) b!788018))

(assert (= (and b!788018 res!533924) b!788009))

(assert (= (and b!788009 res!533933) b!788020))

(assert (= (and b!788020 res!533935) b!788003))

(assert (= (and b!788003 c!87450) b!788013))

(assert (= (and b!788003 (not c!87450)) b!788007))

(assert (= (and b!788003 res!533921) b!788011))

(assert (= (and b!788011 res!533934) b!788024))

(assert (= (and b!788024 res!533936) b!788021))

(assert (= (and b!788024 (not res!533928)) b!788008))

(assert (= (and b!788008 (not res!533927)) b!788010))

(assert (= (and b!788010 (not res!533925)) b!788012))

(assert (= (and b!788012 c!87449) b!788025))

(assert (= (and b!788012 (not c!87449)) b!788019))

(assert (= (and b!788012 res!533926) b!788006))

(assert (= (and b!788006 res!533938) b!788004))

(declare-fun m!729487 () Bool)

(assert (=> b!788016 m!729487))

(declare-fun m!729489 () Bool)

(assert (=> b!788015 m!729489))

(declare-fun m!729491 () Bool)

(assert (=> b!788010 m!729491))

(declare-fun m!729493 () Bool)

(assert (=> b!788010 m!729493))

(declare-fun m!729495 () Bool)

(assert (=> b!788023 m!729495))

(declare-fun m!729497 () Bool)

(assert (=> b!788024 m!729497))

(assert (=> b!788024 m!729497))

(declare-fun m!729499 () Bool)

(assert (=> b!788024 m!729499))

(declare-fun m!729501 () Bool)

(assert (=> b!788024 m!729501))

(declare-fun m!729503 () Bool)

(assert (=> b!788024 m!729503))

(declare-fun m!729505 () Bool)

(assert (=> b!788011 m!729505))

(declare-fun m!729507 () Bool)

(assert (=> b!788011 m!729507))

(assert (=> b!788011 m!729491))

(declare-fun m!729509 () Bool)

(assert (=> b!788011 m!729509))

(assert (=> b!788011 m!729507))

(declare-fun m!729511 () Bool)

(assert (=> b!788011 m!729511))

(assert (=> b!788013 m!729497))

(assert (=> b!788013 m!729497))

(declare-fun m!729513 () Bool)

(assert (=> b!788013 m!729513))

(declare-fun m!729515 () Bool)

(assert (=> start!67812 m!729515))

(declare-fun m!729517 () Bool)

(assert (=> start!67812 m!729517))

(assert (=> b!788007 m!729497))

(assert (=> b!788007 m!729497))

(declare-fun m!729519 () Bool)

(assert (=> b!788007 m!729519))

(declare-fun m!729521 () Bool)

(assert (=> b!788017 m!729521))

(assert (=> b!788022 m!729497))

(assert (=> b!788022 m!729497))

(declare-fun m!729523 () Bool)

(assert (=> b!788022 m!729523))

(declare-fun m!729525 () Bool)

(assert (=> b!788012 m!729525))

(assert (=> b!788008 m!729497))

(assert (=> b!788008 m!729497))

(assert (=> b!788008 m!729519))

(declare-fun m!729527 () Bool)

(assert (=> b!788006 m!729527))

(declare-fun m!729529 () Bool)

(assert (=> b!788006 m!729529))

(assert (=> b!788021 m!729497))

(assert (=> b!788021 m!729497))

(declare-fun m!729531 () Bool)

(assert (=> b!788021 m!729531))

(declare-fun m!729533 () Bool)

(assert (=> b!788005 m!729533))

(declare-fun m!729535 () Bool)

(assert (=> b!788020 m!729535))

(assert (=> b!788009 m!729497))

(assert (=> b!788009 m!729497))

(declare-fun m!729537 () Bool)

(assert (=> b!788009 m!729537))

(assert (=> b!788009 m!729537))

(assert (=> b!788009 m!729497))

(declare-fun m!729539 () Bool)

(assert (=> b!788009 m!729539))

(check-sat (not b!788024) (not b!788005) (not b!788023) (not b!788022) (not b!788017) (not b!788008) (not b!788021) (not b!788013) (not b!788006) (not b!788011) (not start!67812) (not b!788015) (not b!788009) (not b!788007) (not b!788016))
(check-sat)
