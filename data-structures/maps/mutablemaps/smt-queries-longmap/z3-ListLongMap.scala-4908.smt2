; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!67710 () Bool)

(assert start!67710)

(declare-fun res!531016 () Bool)

(declare-fun e!436181 () Bool)

(assert (=> start!67710 (=> (not res!531016) (not e!436181))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67710 (= res!531016 (validMask!0 mask!3328))))

(assert (=> start!67710 e!436181))

(assert (=> start!67710 true))

(declare-datatypes ((array!42705 0))(
  ( (array!42706 (arr!20437 (Array (_ BitVec 32) (_ BitVec 64))) (size!20858 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42705)

(declare-fun array_inv!16211 (array!42705) Bool)

(assert (=> start!67710 (array_inv!16211 a!3186)))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun b!784484 () Bool)

(declare-datatypes ((SeekEntryResult!8044 0))(
  ( (MissingZero!8044 (index!34543 (_ BitVec 32))) (Found!8044 (index!34544 (_ BitVec 32))) (Intermediate!8044 (undefined!8856 Bool) (index!34545 (_ BitVec 32)) (x!65521 (_ BitVec 32))) (Undefined!8044) (MissingVacant!8044 (index!34546 (_ BitVec 32))) )
))
(declare-fun lt!349750 () SeekEntryResult!8044)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun e!436176 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42705 (_ BitVec 32)) SeekEntryResult!8044)

(assert (=> b!784484 (= e!436176 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20437 a!3186) j!159) a!3186 mask!3328) lt!349750))))

(declare-fun b!784485 () Bool)

(declare-datatypes ((Unit!27086 0))(
  ( (Unit!27087) )
))
(declare-fun e!436179 () Unit!27086)

(declare-fun Unit!27088 () Unit!27086)

(assert (=> b!784485 (= e!436179 Unit!27088)))

(assert (=> b!784485 false))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!784486 () Bool)

(declare-fun e!436183 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!784486 (= e!436183 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20437 a!3186) j!159) a!3186 mask!3328) (Found!8044 j!159)))))

(declare-fun b!784487 () Bool)

(declare-fun e!436182 () Bool)

(declare-fun lt!349748 () SeekEntryResult!8044)

(declare-fun lt!349752 () SeekEntryResult!8044)

(assert (=> b!784487 (= e!436182 (= lt!349748 lt!349752))))

(declare-fun b!784488 () Bool)

(declare-fun e!436178 () Bool)

(declare-fun e!436184 () Bool)

(assert (=> b!784488 (= e!436178 (not e!436184))))

(declare-fun res!531020 () Bool)

(assert (=> b!784488 (=> res!531020 e!436184)))

(declare-fun lt!349742 () SeekEntryResult!8044)

(get-info :version)

(assert (=> b!784488 (= res!531020 (or (not ((_ is Intermediate!8044) lt!349742)) (bvslt x!1131 (x!65521 lt!349742)) (not (= x!1131 (x!65521 lt!349742))) (not (= index!1321 (index!34545 lt!349742)))))))

(assert (=> b!784488 e!436176))

(declare-fun res!531030 () Bool)

(assert (=> b!784488 (=> (not res!531030) (not e!436176))))

(assert (=> b!784488 (= res!531030 (= lt!349748 lt!349750))))

(assert (=> b!784488 (= lt!349750 (Found!8044 j!159))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42705 (_ BitVec 32)) SeekEntryResult!8044)

(assert (=> b!784488 (= lt!349748 (seekEntryOrOpen!0 (select (arr!20437 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42705 (_ BitVec 32)) Bool)

(assert (=> b!784488 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!349749 () Unit!27086)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42705 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27086)

(assert (=> b!784488 (= lt!349749 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!784489 () Bool)

(declare-fun res!531029 () Bool)

(declare-fun e!436180 () Bool)

(assert (=> b!784489 (=> (not res!531029) (not e!436180))))

(assert (=> b!784489 (= res!531029 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20858 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20858 a!3186))))))

(declare-fun b!784490 () Bool)

(declare-fun e!436186 () Bool)

(assert (=> b!784490 (= e!436186 true)))

(assert (=> b!784490 e!436182))

(declare-fun res!531013 () Bool)

(assert (=> b!784490 (=> (not res!531013) (not e!436182))))

(declare-fun lt!349746 () (_ BitVec 64))

(assert (=> b!784490 (= res!531013 (= lt!349746 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!349743 () Unit!27086)

(assert (=> b!784490 (= lt!349743 e!436179)))

(declare-fun c!87144 () Bool)

(assert (=> b!784490 (= c!87144 (= lt!349746 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!784491 () Bool)

(assert (=> b!784491 (= e!436181 e!436180)))

(declare-fun res!531027 () Bool)

(assert (=> b!784491 (=> (not res!531027) (not e!436180))))

(declare-fun lt!349753 () SeekEntryResult!8044)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!784491 (= res!531027 (or (= lt!349753 (MissingZero!8044 i!1173)) (= lt!349753 (MissingVacant!8044 i!1173))))))

(declare-fun k0!2102 () (_ BitVec 64))

(assert (=> b!784491 (= lt!349753 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!784492 () Bool)

(declare-fun res!531025 () Bool)

(declare-fun e!436185 () Bool)

(assert (=> b!784492 (=> (not res!531025) (not e!436185))))

(assert (=> b!784492 (= res!531025 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20437 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!784493 () Bool)

(declare-fun res!531014 () Bool)

(assert (=> b!784493 (=> (not res!531014) (not e!436180))))

(assert (=> b!784493 (= res!531014 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!784494 () Bool)

(declare-fun res!531015 () Bool)

(assert (=> b!784494 (=> (not res!531015) (not e!436181))))

(assert (=> b!784494 (= res!531015 (and (= (size!20858 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20858 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20858 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!784495 () Bool)

(assert (=> b!784495 (= e!436180 e!436185)))

(declare-fun res!531019 () Bool)

(assert (=> b!784495 (=> (not res!531019) (not e!436185))))

(declare-fun lt!349744 () SeekEntryResult!8044)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42705 (_ BitVec 32)) SeekEntryResult!8044)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!784495 (= res!531019 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20437 a!3186) j!159) mask!3328) (select (arr!20437 a!3186) j!159) a!3186 mask!3328) lt!349744))))

(assert (=> b!784495 (= lt!349744 (Intermediate!8044 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!784496 () Bool)

(declare-fun res!531024 () Bool)

(assert (=> b!784496 (=> (not res!531024) (not e!436181))))

(declare-fun arrayContainsKey!0 (array!42705 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!784496 (= res!531024 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!784497 () Bool)

(declare-fun e!436175 () Bool)

(assert (=> b!784497 (= e!436175 e!436186)))

(declare-fun res!531021 () Bool)

(assert (=> b!784497 (=> res!531021 e!436186)))

(declare-fun lt!349747 () (_ BitVec 64))

(assert (=> b!784497 (= res!531021 (= lt!349746 lt!349747))))

(assert (=> b!784497 (= lt!349746 (select (store (arr!20437 a!3186) i!1173 k0!2102) index!1321))))

(declare-fun b!784498 () Bool)

(declare-fun Unit!27089 () Unit!27086)

(assert (=> b!784498 (= e!436179 Unit!27089)))

(declare-fun b!784499 () Bool)

(declare-fun res!531026 () Bool)

(assert (=> b!784499 (=> (not res!531026) (not e!436182))))

(declare-fun lt!349751 () array!42705)

(assert (=> b!784499 (= res!531026 (= (seekEntryOrOpen!0 lt!349747 lt!349751 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!349747 lt!349751 mask!3328)))))

(declare-fun b!784500 () Bool)

(declare-fun res!531017 () Bool)

(assert (=> b!784500 (=> (not res!531017) (not e!436181))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!784500 (= res!531017 (validKeyInArray!0 k0!2102))))

(declare-fun b!784501 () Bool)

(assert (=> b!784501 (= e!436185 e!436178)))

(declare-fun res!531023 () Bool)

(assert (=> b!784501 (=> (not res!531023) (not e!436178))))

(declare-fun lt!349745 () SeekEntryResult!8044)

(assert (=> b!784501 (= res!531023 (= lt!349745 lt!349742))))

(assert (=> b!784501 (= lt!349742 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!349747 lt!349751 mask!3328))))

(assert (=> b!784501 (= lt!349745 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!349747 mask!3328) lt!349747 lt!349751 mask!3328))))

(assert (=> b!784501 (= lt!349747 (select (store (arr!20437 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!784501 (= lt!349751 (array!42706 (store (arr!20437 a!3186) i!1173 k0!2102) (size!20858 a!3186)))))

(declare-fun b!784502 () Bool)

(declare-fun res!531022 () Bool)

(assert (=> b!784502 (=> (not res!531022) (not e!436185))))

(assert (=> b!784502 (= res!531022 e!436183)))

(declare-fun c!87143 () Bool)

(assert (=> b!784502 (= c!87143 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!784503 () Bool)

(assert (=> b!784503 (= e!436183 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20437 a!3186) j!159) a!3186 mask!3328) lt!349744))))

(declare-fun b!784504 () Bool)

(declare-fun res!531018 () Bool)

(assert (=> b!784504 (=> (not res!531018) (not e!436180))))

(declare-datatypes ((List!14492 0))(
  ( (Nil!14489) (Cons!14488 (h!15611 (_ BitVec 64)) (t!20815 List!14492)) )
))
(declare-fun arrayNoDuplicates!0 (array!42705 (_ BitVec 32) List!14492) Bool)

(assert (=> b!784504 (= res!531018 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14489))))

(declare-fun b!784505 () Bool)

(declare-fun res!531031 () Bool)

(assert (=> b!784505 (=> (not res!531031) (not e!436181))))

(assert (=> b!784505 (= res!531031 (validKeyInArray!0 (select (arr!20437 a!3186) j!159)))))

(declare-fun b!784506 () Bool)

(assert (=> b!784506 (= e!436184 e!436175)))

(declare-fun res!531028 () Bool)

(assert (=> b!784506 (=> res!531028 e!436175)))

(assert (=> b!784506 (= res!531028 (not (= lt!349752 lt!349750)))))

(assert (=> b!784506 (= lt!349752 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20437 a!3186) j!159) a!3186 mask!3328))))

(assert (= (and start!67710 res!531016) b!784494))

(assert (= (and b!784494 res!531015) b!784505))

(assert (= (and b!784505 res!531031) b!784500))

(assert (= (and b!784500 res!531017) b!784496))

(assert (= (and b!784496 res!531024) b!784491))

(assert (= (and b!784491 res!531027) b!784493))

(assert (= (and b!784493 res!531014) b!784504))

(assert (= (and b!784504 res!531018) b!784489))

(assert (= (and b!784489 res!531029) b!784495))

(assert (= (and b!784495 res!531019) b!784492))

(assert (= (and b!784492 res!531025) b!784502))

(assert (= (and b!784502 c!87143) b!784503))

(assert (= (and b!784502 (not c!87143)) b!784486))

(assert (= (and b!784502 res!531022) b!784501))

(assert (= (and b!784501 res!531023) b!784488))

(assert (= (and b!784488 res!531030) b!784484))

(assert (= (and b!784488 (not res!531020)) b!784506))

(assert (= (and b!784506 (not res!531028)) b!784497))

(assert (= (and b!784497 (not res!531021)) b!784490))

(assert (= (and b!784490 c!87144) b!784485))

(assert (= (and b!784490 (not c!87144)) b!784498))

(assert (= (and b!784490 res!531013) b!784499))

(assert (= (and b!784499 res!531026) b!784487))

(declare-fun m!726833 () Bool)

(assert (=> b!784495 m!726833))

(assert (=> b!784495 m!726833))

(declare-fun m!726835 () Bool)

(assert (=> b!784495 m!726835))

(assert (=> b!784495 m!726835))

(assert (=> b!784495 m!726833))

(declare-fun m!726837 () Bool)

(assert (=> b!784495 m!726837))

(declare-fun m!726839 () Bool)

(assert (=> b!784497 m!726839))

(declare-fun m!726841 () Bool)

(assert (=> b!784497 m!726841))

(assert (=> b!784486 m!726833))

(assert (=> b!784486 m!726833))

(declare-fun m!726843 () Bool)

(assert (=> b!784486 m!726843))

(declare-fun m!726845 () Bool)

(assert (=> b!784492 m!726845))

(assert (=> b!784505 m!726833))

(assert (=> b!784505 m!726833))

(declare-fun m!726847 () Bool)

(assert (=> b!784505 m!726847))

(assert (=> b!784506 m!726833))

(assert (=> b!784506 m!726833))

(assert (=> b!784506 m!726843))

(declare-fun m!726849 () Bool)

(assert (=> b!784501 m!726849))

(declare-fun m!726851 () Bool)

(assert (=> b!784501 m!726851))

(assert (=> b!784501 m!726839))

(declare-fun m!726853 () Bool)

(assert (=> b!784501 m!726853))

(assert (=> b!784501 m!726849))

(declare-fun m!726855 () Bool)

(assert (=> b!784501 m!726855))

(assert (=> b!784484 m!726833))

(assert (=> b!784484 m!726833))

(declare-fun m!726857 () Bool)

(assert (=> b!784484 m!726857))

(assert (=> b!784503 m!726833))

(assert (=> b!784503 m!726833))

(declare-fun m!726859 () Bool)

(assert (=> b!784503 m!726859))

(assert (=> b!784488 m!726833))

(assert (=> b!784488 m!726833))

(declare-fun m!726861 () Bool)

(assert (=> b!784488 m!726861))

(declare-fun m!726863 () Bool)

(assert (=> b!784488 m!726863))

(declare-fun m!726865 () Bool)

(assert (=> b!784488 m!726865))

(declare-fun m!726867 () Bool)

(assert (=> b!784491 m!726867))

(declare-fun m!726869 () Bool)

(assert (=> b!784496 m!726869))

(declare-fun m!726871 () Bool)

(assert (=> start!67710 m!726871))

(declare-fun m!726873 () Bool)

(assert (=> start!67710 m!726873))

(declare-fun m!726875 () Bool)

(assert (=> b!784493 m!726875))

(declare-fun m!726877 () Bool)

(assert (=> b!784499 m!726877))

(declare-fun m!726879 () Bool)

(assert (=> b!784499 m!726879))

(declare-fun m!726881 () Bool)

(assert (=> b!784500 m!726881))

(declare-fun m!726883 () Bool)

(assert (=> b!784504 m!726883))

(check-sat (not b!784499) (not b!784500) (not b!784491) (not start!67710) (not b!784503) (not b!784488) (not b!784506) (not b!784504) (not b!784484) (not b!784505) (not b!784493) (not b!784501) (not b!784495) (not b!784496) (not b!784486))
(check-sat)
