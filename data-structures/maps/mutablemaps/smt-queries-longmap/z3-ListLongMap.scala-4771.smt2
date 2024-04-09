; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65706 () Bool)

(assert start!65706)

(declare-fun b!753020 () Bool)

(declare-datatypes ((Unit!25934 0))(
  ( (Unit!25935) )
))
(declare-fun e!420032 () Unit!25934)

(declare-fun Unit!25936 () Unit!25934)

(assert (=> b!753020 (= e!420032 Unit!25936)))

(assert (=> b!753020 false))

(declare-fun b!753021 () Bool)

(declare-fun res!508737 () Bool)

(declare-fun e!420031 () Bool)

(assert (=> b!753021 (=> (not res!508737) (not e!420031))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!41832 0))(
  ( (array!41833 (arr!20026 (Array (_ BitVec 32) (_ BitVec 64))) (size!20447 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41832)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!753021 (= res!508737 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20026 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun e!420042 () Bool)

(declare-fun b!753022 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7633 0))(
  ( (MissingZero!7633 (index!32899 (_ BitVec 32))) (Found!7633 (index!32900 (_ BitVec 32))) (Intermediate!7633 (undefined!8445 Bool) (index!32901 (_ BitVec 32)) (x!63840 (_ BitVec 32))) (Undefined!7633) (MissingVacant!7633 (index!32902 (_ BitVec 32))) )
))
(declare-fun lt!335032 () SeekEntryResult!7633)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41832 (_ BitVec 32)) SeekEntryResult!7633)

(assert (=> b!753022 (= e!420042 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20026 a!3186) j!159) a!3186 mask!3328) lt!335032))))

(declare-fun lt!335037 () SeekEntryResult!7633)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!753023 () Bool)

(declare-fun e!420041 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41832 (_ BitVec 32)) SeekEntryResult!7633)

(assert (=> b!753023 (= e!420041 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20026 a!3186) j!159) a!3186 mask!3328) lt!335037))))

(declare-fun b!753024 () Bool)

(declare-fun res!508743 () Bool)

(declare-fun e!420033 () Bool)

(assert (=> b!753024 (=> (not res!508743) (not e!420033))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!41832 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!753024 (= res!508743 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!753025 () Bool)

(declare-fun e!420039 () Bool)

(assert (=> b!753025 (= e!420033 e!420039)))

(declare-fun res!508751 () Bool)

(assert (=> b!753025 (=> (not res!508751) (not e!420039))))

(declare-fun lt!335033 () SeekEntryResult!7633)

(assert (=> b!753025 (= res!508751 (or (= lt!335033 (MissingZero!7633 i!1173)) (= lt!335033 (MissingVacant!7633 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41832 (_ BitVec 32)) SeekEntryResult!7633)

(assert (=> b!753025 (= lt!335033 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!753026 () Bool)

(declare-fun res!508739 () Bool)

(assert (=> b!753026 (=> (not res!508739) (not e!420033))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!753026 (= res!508739 (validKeyInArray!0 (select (arr!20026 a!3186) j!159)))))

(declare-fun b!753027 () Bool)

(declare-fun e!420034 () Bool)

(assert (=> b!753027 (= e!420034 true)))

(declare-fun e!420038 () Bool)

(assert (=> b!753027 e!420038))

(declare-fun res!508738 () Bool)

(assert (=> b!753027 (=> (not res!508738) (not e!420038))))

(declare-fun lt!335041 () (_ BitVec 64))

(assert (=> b!753027 (= res!508738 (= lt!335041 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!335038 () Unit!25934)

(assert (=> b!753027 (= lt!335038 e!420032)))

(declare-fun c!82524 () Bool)

(assert (=> b!753027 (= c!82524 (= lt!335041 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!753028 () Bool)

(declare-fun e!420040 () Bool)

(declare-fun e!420037 () Bool)

(assert (=> b!753028 (= e!420040 e!420037)))

(declare-fun res!508749 () Bool)

(assert (=> b!753028 (=> res!508749 e!420037)))

(declare-fun lt!335039 () SeekEntryResult!7633)

(assert (=> b!753028 (= res!508749 (not (= lt!335039 lt!335032)))))

(assert (=> b!753028 (= lt!335039 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20026 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!753029 () Bool)

(declare-fun res!508752 () Bool)

(assert (=> b!753029 (=> (not res!508752) (not e!420038))))

(declare-fun lt!335036 () array!41832)

(declare-fun lt!335031 () (_ BitVec 64))

(assert (=> b!753029 (= res!508752 (= (seekEntryOrOpen!0 lt!335031 lt!335036 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!335031 lt!335036 mask!3328)))))

(declare-fun b!753030 () Bool)

(assert (=> b!753030 (= e!420039 e!420031)))

(declare-fun res!508742 () Bool)

(assert (=> b!753030 (=> (not res!508742) (not e!420031))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!753030 (= res!508742 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20026 a!3186) j!159) mask!3328) (select (arr!20026 a!3186) j!159) a!3186 mask!3328) lt!335037))))

(assert (=> b!753030 (= lt!335037 (Intermediate!7633 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!753031 () Bool)

(assert (=> b!753031 (= e!420041 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20026 a!3186) j!159) a!3186 mask!3328) (Found!7633 j!159)))))

(declare-fun b!753032 () Bool)

(declare-fun lt!335042 () SeekEntryResult!7633)

(assert (=> b!753032 (= e!420038 (= lt!335042 lt!335039))))

(declare-fun b!753033 () Bool)

(assert (=> b!753033 (= e!420037 e!420034)))

(declare-fun res!508748 () Bool)

(assert (=> b!753033 (=> res!508748 e!420034)))

(assert (=> b!753033 (= res!508748 (= lt!335041 lt!335031))))

(assert (=> b!753033 (= lt!335041 (select (store (arr!20026 a!3186) i!1173 k0!2102) index!1321))))

(declare-fun res!508745 () Bool)

(assert (=> start!65706 (=> (not res!508745) (not e!420033))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65706 (= res!508745 (validMask!0 mask!3328))))

(assert (=> start!65706 e!420033))

(assert (=> start!65706 true))

(declare-fun array_inv!15800 (array!41832) Bool)

(assert (=> start!65706 (array_inv!15800 a!3186)))

(declare-fun b!753019 () Bool)

(declare-fun res!508736 () Bool)

(assert (=> b!753019 (=> (not res!508736) (not e!420039))))

(assert (=> b!753019 (= res!508736 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20447 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20447 a!3186))))))

(declare-fun b!753034 () Bool)

(declare-fun res!508746 () Bool)

(assert (=> b!753034 (=> (not res!508746) (not e!420033))))

(assert (=> b!753034 (= res!508746 (validKeyInArray!0 k0!2102))))

(declare-fun b!753035 () Bool)

(declare-fun res!508734 () Bool)

(assert (=> b!753035 (=> (not res!508734) (not e!420033))))

(assert (=> b!753035 (= res!508734 (and (= (size!20447 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20447 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20447 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!753036 () Bool)

(declare-fun e!420036 () Bool)

(assert (=> b!753036 (= e!420036 (not e!420040))))

(declare-fun res!508744 () Bool)

(assert (=> b!753036 (=> res!508744 e!420040)))

(declare-fun lt!335034 () SeekEntryResult!7633)

(get-info :version)

(assert (=> b!753036 (= res!508744 (or (not ((_ is Intermediate!7633) lt!335034)) (bvslt x!1131 (x!63840 lt!335034)) (not (= x!1131 (x!63840 lt!335034))) (not (= index!1321 (index!32901 lt!335034)))))))

(assert (=> b!753036 e!420042))

(declare-fun res!508735 () Bool)

(assert (=> b!753036 (=> (not res!508735) (not e!420042))))

(assert (=> b!753036 (= res!508735 (= lt!335042 lt!335032))))

(assert (=> b!753036 (= lt!335032 (Found!7633 j!159))))

(assert (=> b!753036 (= lt!335042 (seekEntryOrOpen!0 (select (arr!20026 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41832 (_ BitVec 32)) Bool)

(assert (=> b!753036 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!335040 () Unit!25934)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41832 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25934)

(assert (=> b!753036 (= lt!335040 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!753037 () Bool)

(declare-fun res!508750 () Bool)

(assert (=> b!753037 (=> (not res!508750) (not e!420031))))

(assert (=> b!753037 (= res!508750 e!420041)))

(declare-fun c!82523 () Bool)

(assert (=> b!753037 (= c!82523 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!753038 () Bool)

(assert (=> b!753038 (= e!420031 e!420036)))

(declare-fun res!508741 () Bool)

(assert (=> b!753038 (=> (not res!508741) (not e!420036))))

(declare-fun lt!335035 () SeekEntryResult!7633)

(assert (=> b!753038 (= res!508741 (= lt!335035 lt!335034))))

(assert (=> b!753038 (= lt!335034 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!335031 lt!335036 mask!3328))))

(assert (=> b!753038 (= lt!335035 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!335031 mask!3328) lt!335031 lt!335036 mask!3328))))

(assert (=> b!753038 (= lt!335031 (select (store (arr!20026 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!753038 (= lt!335036 (array!41833 (store (arr!20026 a!3186) i!1173 k0!2102) (size!20447 a!3186)))))

(declare-fun b!753039 () Bool)

(declare-fun res!508740 () Bool)

(assert (=> b!753039 (=> (not res!508740) (not e!420039))))

(assert (=> b!753039 (= res!508740 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!753040 () Bool)

(declare-fun Unit!25937 () Unit!25934)

(assert (=> b!753040 (= e!420032 Unit!25937)))

(declare-fun b!753041 () Bool)

(declare-fun res!508747 () Bool)

(assert (=> b!753041 (=> (not res!508747) (not e!420039))))

(declare-datatypes ((List!14081 0))(
  ( (Nil!14078) (Cons!14077 (h!15149 (_ BitVec 64)) (t!20404 List!14081)) )
))
(declare-fun arrayNoDuplicates!0 (array!41832 (_ BitVec 32) List!14081) Bool)

(assert (=> b!753041 (= res!508747 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14078))))

(assert (= (and start!65706 res!508745) b!753035))

(assert (= (and b!753035 res!508734) b!753026))

(assert (= (and b!753026 res!508739) b!753034))

(assert (= (and b!753034 res!508746) b!753024))

(assert (= (and b!753024 res!508743) b!753025))

(assert (= (and b!753025 res!508751) b!753039))

(assert (= (and b!753039 res!508740) b!753041))

(assert (= (and b!753041 res!508747) b!753019))

(assert (= (and b!753019 res!508736) b!753030))

(assert (= (and b!753030 res!508742) b!753021))

(assert (= (and b!753021 res!508737) b!753037))

(assert (= (and b!753037 c!82523) b!753023))

(assert (= (and b!753037 (not c!82523)) b!753031))

(assert (= (and b!753037 res!508750) b!753038))

(assert (= (and b!753038 res!508741) b!753036))

(assert (= (and b!753036 res!508735) b!753022))

(assert (= (and b!753036 (not res!508744)) b!753028))

(assert (= (and b!753028 (not res!508749)) b!753033))

(assert (= (and b!753033 (not res!508748)) b!753027))

(assert (= (and b!753027 c!82524) b!753020))

(assert (= (and b!753027 (not c!82524)) b!753040))

(assert (= (and b!753027 res!508738) b!753029))

(assert (= (and b!753029 res!508752) b!753032))

(declare-fun m!701885 () Bool)

(assert (=> b!753030 m!701885))

(assert (=> b!753030 m!701885))

(declare-fun m!701887 () Bool)

(assert (=> b!753030 m!701887))

(assert (=> b!753030 m!701887))

(assert (=> b!753030 m!701885))

(declare-fun m!701889 () Bool)

(assert (=> b!753030 m!701889))

(declare-fun m!701891 () Bool)

(assert (=> b!753039 m!701891))

(declare-fun m!701893 () Bool)

(assert (=> b!753021 m!701893))

(declare-fun m!701895 () Bool)

(assert (=> b!753033 m!701895))

(declare-fun m!701897 () Bool)

(assert (=> b!753033 m!701897))

(declare-fun m!701899 () Bool)

(assert (=> b!753034 m!701899))

(declare-fun m!701901 () Bool)

(assert (=> b!753041 m!701901))

(declare-fun m!701903 () Bool)

(assert (=> b!753025 m!701903))

(declare-fun m!701905 () Bool)

(assert (=> b!753024 m!701905))

(assert (=> b!753023 m!701885))

(assert (=> b!753023 m!701885))

(declare-fun m!701907 () Bool)

(assert (=> b!753023 m!701907))

(assert (=> b!753026 m!701885))

(assert (=> b!753026 m!701885))

(declare-fun m!701909 () Bool)

(assert (=> b!753026 m!701909))

(declare-fun m!701911 () Bool)

(assert (=> b!753029 m!701911))

(declare-fun m!701913 () Bool)

(assert (=> b!753029 m!701913))

(assert (=> b!753022 m!701885))

(assert (=> b!753022 m!701885))

(declare-fun m!701915 () Bool)

(assert (=> b!753022 m!701915))

(assert (=> b!753028 m!701885))

(assert (=> b!753028 m!701885))

(declare-fun m!701917 () Bool)

(assert (=> b!753028 m!701917))

(assert (=> b!753031 m!701885))

(assert (=> b!753031 m!701885))

(assert (=> b!753031 m!701917))

(declare-fun m!701919 () Bool)

(assert (=> b!753038 m!701919))

(declare-fun m!701921 () Bool)

(assert (=> b!753038 m!701921))

(assert (=> b!753038 m!701895))

(declare-fun m!701923 () Bool)

(assert (=> b!753038 m!701923))

(assert (=> b!753038 m!701921))

(declare-fun m!701925 () Bool)

(assert (=> b!753038 m!701925))

(assert (=> b!753036 m!701885))

(assert (=> b!753036 m!701885))

(declare-fun m!701927 () Bool)

(assert (=> b!753036 m!701927))

(declare-fun m!701929 () Bool)

(assert (=> b!753036 m!701929))

(declare-fun m!701931 () Bool)

(assert (=> b!753036 m!701931))

(declare-fun m!701933 () Bool)

(assert (=> start!65706 m!701933))

(declare-fun m!701935 () Bool)

(assert (=> start!65706 m!701935))

(check-sat (not b!753022) (not b!753030) (not b!753031) (not b!753024) (not b!753041) (not b!753039) (not b!753025) (not b!753029) (not b!753023) (not start!65706) (not b!753028) (not b!753034) (not b!753026) (not b!753038) (not b!753036))
(check-sat)
