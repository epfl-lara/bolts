; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65784 () Bool)

(assert start!65784)

(declare-fun b!755710 () Bool)

(declare-fun res!510967 () Bool)

(declare-fun e!421438 () Bool)

(assert (=> b!755710 (=> (not res!510967) (not e!421438))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!41910 0))(
  ( (array!41911 (arr!20065 (Array (_ BitVec 32) (_ BitVec 64))) (size!20486 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41910)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!755710 (= res!510967 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20486 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20486 a!3186))))))

(declare-fun b!755711 () Bool)

(declare-fun e!421435 () Bool)

(declare-datatypes ((SeekEntryResult!7672 0))(
  ( (MissingZero!7672 (index!33055 (_ BitVec 32))) (Found!7672 (index!33056 (_ BitVec 32))) (Intermediate!7672 (undefined!8484 Bool) (index!33057 (_ BitVec 32)) (x!63983 (_ BitVec 32))) (Undefined!7672) (MissingVacant!7672 (index!33058 (_ BitVec 32))) )
))
(declare-fun lt!336445 () SeekEntryResult!7672)

(declare-fun lt!336438 () SeekEntryResult!7672)

(assert (=> b!755711 (= e!421435 (= lt!336445 lt!336438))))

(declare-fun b!755712 () Bool)

(declare-fun e!421436 () Bool)

(declare-fun e!421441 () Bool)

(assert (=> b!755712 (= e!421436 (not e!421441))))

(declare-fun res!510958 () Bool)

(assert (=> b!755712 (=> res!510958 e!421441)))

(declare-fun lt!336441 () SeekEntryResult!7672)

(get-info :version)

(assert (=> b!755712 (= res!510958 (or (not ((_ is Intermediate!7672) lt!336441)) (bvslt x!1131 (x!63983 lt!336441)) (not (= x!1131 (x!63983 lt!336441))) (not (= index!1321 (index!33057 lt!336441)))))))

(declare-fun e!421446 () Bool)

(assert (=> b!755712 e!421446))

(declare-fun res!510959 () Bool)

(assert (=> b!755712 (=> (not res!510959) (not e!421446))))

(declare-fun lt!336437 () SeekEntryResult!7672)

(assert (=> b!755712 (= res!510959 (= lt!336445 lt!336437))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!755712 (= lt!336437 (Found!7672 j!159))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41910 (_ BitVec 32)) SeekEntryResult!7672)

(assert (=> b!755712 (= lt!336445 (seekEntryOrOpen!0 (select (arr!20065 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41910 (_ BitVec 32)) Bool)

(assert (=> b!755712 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!26090 0))(
  ( (Unit!26091) )
))
(declare-fun lt!336442 () Unit!26090)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41910 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26090)

(assert (=> b!755712 (= lt!336442 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!755713 () Bool)

(declare-fun e!421442 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41910 (_ BitVec 32)) SeekEntryResult!7672)

(assert (=> b!755713 (= e!421442 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20065 a!3186) j!159) a!3186 mask!3328) (Found!7672 j!159)))))

(declare-fun b!755714 () Bool)

(declare-fun res!510965 () Bool)

(declare-fun e!421444 () Bool)

(assert (=> b!755714 (=> (not res!510965) (not e!421444))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!755714 (= res!510965 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20065 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!755715 () Bool)

(declare-fun e!421439 () Unit!26090)

(declare-fun Unit!26092 () Unit!26090)

(assert (=> b!755715 (= e!421439 Unit!26092)))

(assert (=> b!755715 false))

(declare-fun b!755716 () Bool)

(declare-fun res!510963 () Bool)

(assert (=> b!755716 (=> (not res!510963) (not e!421444))))

(assert (=> b!755716 (= res!510963 e!421442)))

(declare-fun c!82758 () Bool)

(assert (=> b!755716 (= c!82758 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!755717 () Bool)

(declare-fun res!510969 () Bool)

(declare-fun e!421440 () Bool)

(assert (=> b!755717 (=> (not res!510969) (not e!421440))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!41910 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!755717 (= res!510969 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!755719 () Bool)

(declare-fun Unit!26093 () Unit!26090)

(assert (=> b!755719 (= e!421439 Unit!26093)))

(declare-fun b!755720 () Bool)

(assert (=> b!755720 (= e!421444 e!421436)))

(declare-fun res!510966 () Bool)

(assert (=> b!755720 (=> (not res!510966) (not e!421436))))

(declare-fun lt!336435 () SeekEntryResult!7672)

(assert (=> b!755720 (= res!510966 (= lt!336435 lt!336441))))

(declare-fun lt!336439 () array!41910)

(declare-fun lt!336444 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41910 (_ BitVec 32)) SeekEntryResult!7672)

(assert (=> b!755720 (= lt!336441 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!336444 lt!336439 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!755720 (= lt!336435 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!336444 mask!3328) lt!336444 lt!336439 mask!3328))))

(assert (=> b!755720 (= lt!336444 (select (store (arr!20065 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!755720 (= lt!336439 (array!41911 (store (arr!20065 a!3186) i!1173 k0!2102) (size!20486 a!3186)))))

(declare-fun b!755721 () Bool)

(assert (=> b!755721 (= e!421438 e!421444)))

(declare-fun res!510974 () Bool)

(assert (=> b!755721 (=> (not res!510974) (not e!421444))))

(declare-fun lt!336443 () SeekEntryResult!7672)

(assert (=> b!755721 (= res!510974 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20065 a!3186) j!159) mask!3328) (select (arr!20065 a!3186) j!159) a!3186 mask!3328) lt!336443))))

(assert (=> b!755721 (= lt!336443 (Intermediate!7672 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!755722 () Bool)

(declare-fun res!510957 () Bool)

(assert (=> b!755722 (=> (not res!510957) (not e!421440))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!755722 (= res!510957 (validKeyInArray!0 k0!2102))))

(declare-fun b!755723 () Bool)

(declare-fun res!510970 () Bool)

(assert (=> b!755723 (=> (not res!510970) (not e!421438))))

(declare-datatypes ((List!14120 0))(
  ( (Nil!14117) (Cons!14116 (h!15188 (_ BitVec 64)) (t!20443 List!14120)) )
))
(declare-fun arrayNoDuplicates!0 (array!41910 (_ BitVec 32) List!14120) Bool)

(assert (=> b!755723 (= res!510970 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14117))))

(declare-fun b!755724 () Bool)

(assert (=> b!755724 (= e!421442 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20065 a!3186) j!159) a!3186 mask!3328) lt!336443))))

(declare-fun b!755718 () Bool)

(declare-fun res!510962 () Bool)

(assert (=> b!755718 (=> (not res!510962) (not e!421440))))

(assert (=> b!755718 (= res!510962 (and (= (size!20486 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20486 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20486 a!3186)) (not (= i!1173 j!159))))))

(declare-fun res!510964 () Bool)

(assert (=> start!65784 (=> (not res!510964) (not e!421440))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65784 (= res!510964 (validMask!0 mask!3328))))

(assert (=> start!65784 e!421440))

(assert (=> start!65784 true))

(declare-fun array_inv!15839 (array!41910) Bool)

(assert (=> start!65784 (array_inv!15839 a!3186)))

(declare-fun b!755725 () Bool)

(assert (=> b!755725 (= e!421440 e!421438)))

(declare-fun res!510968 () Bool)

(assert (=> b!755725 (=> (not res!510968) (not e!421438))))

(declare-fun lt!336446 () SeekEntryResult!7672)

(assert (=> b!755725 (= res!510968 (or (= lt!336446 (MissingZero!7672 i!1173)) (= lt!336446 (MissingVacant!7672 i!1173))))))

(assert (=> b!755725 (= lt!336446 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!755726 () Bool)

(assert (=> b!755726 (= e!421446 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20065 a!3186) j!159) a!3186 mask!3328) lt!336437))))

(declare-fun b!755727 () Bool)

(declare-fun e!421443 () Bool)

(declare-fun e!421437 () Bool)

(assert (=> b!755727 (= e!421443 e!421437)))

(declare-fun res!510975 () Bool)

(assert (=> b!755727 (=> res!510975 e!421437)))

(declare-fun lt!336440 () (_ BitVec 64))

(assert (=> b!755727 (= res!510975 (= lt!336440 lt!336444))))

(assert (=> b!755727 (= lt!336440 (select (store (arr!20065 a!3186) i!1173 k0!2102) index!1321))))

(declare-fun b!755728 () Bool)

(declare-fun res!510973 () Bool)

(assert (=> b!755728 (=> (not res!510973) (not e!421435))))

(assert (=> b!755728 (= res!510973 (= (seekEntryOrOpen!0 lt!336444 lt!336439 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!336444 lt!336439 mask!3328)))))

(declare-fun b!755729 () Bool)

(declare-fun res!510972 () Bool)

(assert (=> b!755729 (=> (not res!510972) (not e!421440))))

(assert (=> b!755729 (= res!510972 (validKeyInArray!0 (select (arr!20065 a!3186) j!159)))))

(declare-fun b!755730 () Bool)

(assert (=> b!755730 (= e!421437 true)))

(assert (=> b!755730 e!421435))

(declare-fun res!510971 () Bool)

(assert (=> b!755730 (=> (not res!510971) (not e!421435))))

(assert (=> b!755730 (= res!510971 (= lt!336440 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!336436 () Unit!26090)

(assert (=> b!755730 (= lt!336436 e!421439)))

(declare-fun c!82757 () Bool)

(assert (=> b!755730 (= c!82757 (= lt!336440 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!755731 () Bool)

(assert (=> b!755731 (= e!421441 e!421443)))

(declare-fun res!510961 () Bool)

(assert (=> b!755731 (=> res!510961 e!421443)))

(assert (=> b!755731 (= res!510961 (not (= lt!336438 lt!336437)))))

(assert (=> b!755731 (= lt!336438 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20065 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!755732 () Bool)

(declare-fun res!510960 () Bool)

(assert (=> b!755732 (=> (not res!510960) (not e!421438))))

(assert (=> b!755732 (= res!510960 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(assert (= (and start!65784 res!510964) b!755718))

(assert (= (and b!755718 res!510962) b!755729))

(assert (= (and b!755729 res!510972) b!755722))

(assert (= (and b!755722 res!510957) b!755717))

(assert (= (and b!755717 res!510969) b!755725))

(assert (= (and b!755725 res!510968) b!755732))

(assert (= (and b!755732 res!510960) b!755723))

(assert (= (and b!755723 res!510970) b!755710))

(assert (= (and b!755710 res!510967) b!755721))

(assert (= (and b!755721 res!510974) b!755714))

(assert (= (and b!755714 res!510965) b!755716))

(assert (= (and b!755716 c!82758) b!755724))

(assert (= (and b!755716 (not c!82758)) b!755713))

(assert (= (and b!755716 res!510963) b!755720))

(assert (= (and b!755720 res!510966) b!755712))

(assert (= (and b!755712 res!510959) b!755726))

(assert (= (and b!755712 (not res!510958)) b!755731))

(assert (= (and b!755731 (not res!510961)) b!755727))

(assert (= (and b!755727 (not res!510975)) b!755730))

(assert (= (and b!755730 c!82757) b!755715))

(assert (= (and b!755730 (not c!82757)) b!755719))

(assert (= (and b!755730 res!510971) b!755728))

(assert (= (and b!755728 res!510973) b!755711))

(declare-fun m!703913 () Bool)

(assert (=> b!755720 m!703913))

(declare-fun m!703915 () Bool)

(assert (=> b!755720 m!703915))

(declare-fun m!703917 () Bool)

(assert (=> b!755720 m!703917))

(declare-fun m!703919 () Bool)

(assert (=> b!755720 m!703919))

(assert (=> b!755720 m!703913))

(declare-fun m!703921 () Bool)

(assert (=> b!755720 m!703921))

(declare-fun m!703923 () Bool)

(assert (=> b!755722 m!703923))

(declare-fun m!703925 () Bool)

(assert (=> b!755731 m!703925))

(assert (=> b!755731 m!703925))

(declare-fun m!703927 () Bool)

(assert (=> b!755731 m!703927))

(assert (=> b!755724 m!703925))

(assert (=> b!755724 m!703925))

(declare-fun m!703929 () Bool)

(assert (=> b!755724 m!703929))

(assert (=> b!755721 m!703925))

(assert (=> b!755721 m!703925))

(declare-fun m!703931 () Bool)

(assert (=> b!755721 m!703931))

(assert (=> b!755721 m!703931))

(assert (=> b!755721 m!703925))

(declare-fun m!703933 () Bool)

(assert (=> b!755721 m!703933))

(assert (=> b!755727 m!703915))

(declare-fun m!703935 () Bool)

(assert (=> b!755727 m!703935))

(assert (=> b!755713 m!703925))

(assert (=> b!755713 m!703925))

(assert (=> b!755713 m!703927))

(assert (=> b!755729 m!703925))

(assert (=> b!755729 m!703925))

(declare-fun m!703937 () Bool)

(assert (=> b!755729 m!703937))

(declare-fun m!703939 () Bool)

(assert (=> b!755723 m!703939))

(declare-fun m!703941 () Bool)

(assert (=> b!755728 m!703941))

(declare-fun m!703943 () Bool)

(assert (=> b!755728 m!703943))

(declare-fun m!703945 () Bool)

(assert (=> b!755717 m!703945))

(declare-fun m!703947 () Bool)

(assert (=> b!755714 m!703947))

(declare-fun m!703949 () Bool)

(assert (=> start!65784 m!703949))

(declare-fun m!703951 () Bool)

(assert (=> start!65784 m!703951))

(assert (=> b!755726 m!703925))

(assert (=> b!755726 m!703925))

(declare-fun m!703953 () Bool)

(assert (=> b!755726 m!703953))

(declare-fun m!703955 () Bool)

(assert (=> b!755725 m!703955))

(assert (=> b!755712 m!703925))

(assert (=> b!755712 m!703925))

(declare-fun m!703957 () Bool)

(assert (=> b!755712 m!703957))

(declare-fun m!703959 () Bool)

(assert (=> b!755712 m!703959))

(declare-fun m!703961 () Bool)

(assert (=> b!755712 m!703961))

(declare-fun m!703963 () Bool)

(assert (=> b!755732 m!703963))

(check-sat (not b!755731) (not b!755728) (not b!755726) (not b!755717) (not b!755721) (not b!755724) (not b!755713) (not b!755725) (not b!755712) (not b!755720) (not b!755722) (not b!755732) (not b!755723) (not start!65784) (not b!755729))
(check-sat)
