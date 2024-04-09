; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!67698 () Bool)

(assert start!67698)

(declare-fun b!784070 () Bool)

(declare-fun res!530676 () Bool)

(declare-fun e!435966 () Bool)

(assert (=> b!784070 (=> (not res!530676) (not e!435966))))

(declare-datatypes ((array!42693 0))(
  ( (array!42694 (arr!20431 (Array (_ BitVec 32) (_ BitVec 64))) (size!20852 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42693)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42693 (_ BitVec 32)) Bool)

(assert (=> b!784070 (= res!530676 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!784071 () Bool)

(declare-fun e!435970 () Bool)

(assert (=> b!784071 (= e!435970 true)))

(declare-fun e!435964 () Bool)

(assert (=> b!784071 e!435964))

(declare-fun res!530677 () Bool)

(assert (=> b!784071 (=> (not res!530677) (not e!435964))))

(declare-fun lt!349537 () (_ BitVec 64))

(assert (=> b!784071 (= res!530677 (= lt!349537 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!27062 0))(
  ( (Unit!27063) )
))
(declare-fun lt!349533 () Unit!27062)

(declare-fun e!435961 () Unit!27062)

(assert (=> b!784071 (= lt!349533 e!435961)))

(declare-fun c!87107 () Bool)

(assert (=> b!784071 (= c!87107 (= lt!349537 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!784072 () Bool)

(declare-fun res!530679 () Bool)

(declare-fun e!435960 () Bool)

(assert (=> b!784072 (=> (not res!530679) (not e!435960))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42693 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!784072 (= res!530679 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!784073 () Bool)

(declare-fun e!435968 () Bool)

(assert (=> b!784073 (= e!435968 e!435970)))

(declare-fun res!530681 () Bool)

(assert (=> b!784073 (=> res!530681 e!435970)))

(declare-fun lt!349535 () (_ BitVec 64))

(assert (=> b!784073 (= res!530681 (= lt!349537 lt!349535))))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!784073 (= lt!349537 (select (store (arr!20431 a!3186) i!1173 k0!2102) index!1321))))

(declare-fun b!784074 () Bool)

(declare-fun e!435965 () Bool)

(assert (=> b!784074 (= e!435965 e!435968)))

(declare-fun res!530680 () Bool)

(assert (=> b!784074 (=> res!530680 e!435968)))

(declare-datatypes ((SeekEntryResult!8038 0))(
  ( (MissingZero!8038 (index!34519 (_ BitVec 32))) (Found!8038 (index!34520 (_ BitVec 32))) (Intermediate!8038 (undefined!8850 Bool) (index!34521 (_ BitVec 32)) (x!65499 (_ BitVec 32))) (Undefined!8038) (MissingVacant!8038 (index!34522 (_ BitVec 32))) )
))
(declare-fun lt!349530 () SeekEntryResult!8038)

(declare-fun lt!349532 () SeekEntryResult!8038)

(assert (=> b!784074 (= res!530680 (not (= lt!349530 lt!349532)))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42693 (_ BitVec 32)) SeekEntryResult!8038)

(assert (=> b!784074 (= lt!349530 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20431 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!784075 () Bool)

(declare-fun Unit!27064 () Unit!27062)

(assert (=> b!784075 (= e!435961 Unit!27064)))

(assert (=> b!784075 false))

(declare-fun b!784076 () Bool)

(declare-fun e!435959 () Bool)

(declare-fun e!435969 () Bool)

(assert (=> b!784076 (= e!435959 e!435969)))

(declare-fun res!530687 () Bool)

(assert (=> b!784076 (=> (not res!530687) (not e!435969))))

(declare-fun lt!349528 () SeekEntryResult!8038)

(declare-fun lt!349529 () SeekEntryResult!8038)

(assert (=> b!784076 (= res!530687 (= lt!349528 lt!349529))))

(declare-fun lt!349534 () array!42693)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42693 (_ BitVec 32)) SeekEntryResult!8038)

(assert (=> b!784076 (= lt!349529 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!349535 lt!349534 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!784076 (= lt!349528 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!349535 mask!3328) lt!349535 lt!349534 mask!3328))))

(assert (=> b!784076 (= lt!349535 (select (store (arr!20431 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!784076 (= lt!349534 (array!42694 (store (arr!20431 a!3186) i!1173 k0!2102) (size!20852 a!3186)))))

(declare-fun b!784077 () Bool)

(declare-fun lt!349527 () SeekEntryResult!8038)

(assert (=> b!784077 (= e!435964 (= lt!349527 lt!349530))))

(declare-fun b!784078 () Bool)

(declare-fun res!530684 () Bool)

(assert (=> b!784078 (=> (not res!530684) (not e!435966))))

(declare-datatypes ((List!14486 0))(
  ( (Nil!14483) (Cons!14482 (h!15605 (_ BitVec 64)) (t!20809 List!14486)) )
))
(declare-fun arrayNoDuplicates!0 (array!42693 (_ BitVec 32) List!14486) Bool)

(assert (=> b!784078 (= res!530684 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14483))))

(declare-fun b!784080 () Bool)

(assert (=> b!784080 (= e!435966 e!435959)))

(declare-fun res!530686 () Bool)

(assert (=> b!784080 (=> (not res!530686) (not e!435959))))

(declare-fun lt!349536 () SeekEntryResult!8038)

(assert (=> b!784080 (= res!530686 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20431 a!3186) j!159) mask!3328) (select (arr!20431 a!3186) j!159) a!3186 mask!3328) lt!349536))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!784080 (= lt!349536 (Intermediate!8038 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!784081 () Bool)

(declare-fun res!530673 () Bool)

(assert (=> b!784081 (=> (not res!530673) (not e!435966))))

(assert (=> b!784081 (= res!530673 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20852 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20852 a!3186))))))

(declare-fun e!435962 () Bool)

(declare-fun b!784082 () Bool)

(assert (=> b!784082 (= e!435962 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20431 a!3186) j!159) a!3186 mask!3328) lt!349532))))

(declare-fun b!784083 () Bool)

(declare-fun res!530689 () Bool)

(assert (=> b!784083 (=> (not res!530689) (not e!435960))))

(assert (=> b!784083 (= res!530689 (and (= (size!20852 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20852 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20852 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!784084 () Bool)

(assert (=> b!784084 (= e!435969 (not e!435965))))

(declare-fun res!530678 () Bool)

(assert (=> b!784084 (=> res!530678 e!435965)))

(get-info :version)

(assert (=> b!784084 (= res!530678 (or (not ((_ is Intermediate!8038) lt!349529)) (bvslt x!1131 (x!65499 lt!349529)) (not (= x!1131 (x!65499 lt!349529))) (not (= index!1321 (index!34521 lt!349529)))))))

(assert (=> b!784084 e!435962))

(declare-fun res!530682 () Bool)

(assert (=> b!784084 (=> (not res!530682) (not e!435962))))

(assert (=> b!784084 (= res!530682 (= lt!349527 lt!349532))))

(assert (=> b!784084 (= lt!349532 (Found!8038 j!159))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42693 (_ BitVec 32)) SeekEntryResult!8038)

(assert (=> b!784084 (= lt!349527 (seekEntryOrOpen!0 (select (arr!20431 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!784084 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!349526 () Unit!27062)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42693 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27062)

(assert (=> b!784084 (= lt!349526 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!784085 () Bool)

(declare-fun res!530675 () Bool)

(assert (=> b!784085 (=> (not res!530675) (not e!435960))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!784085 (= res!530675 (validKeyInArray!0 k0!2102))))

(declare-fun b!784086 () Bool)

(assert (=> b!784086 (= e!435960 e!435966)))

(declare-fun res!530683 () Bool)

(assert (=> b!784086 (=> (not res!530683) (not e!435966))))

(declare-fun lt!349531 () SeekEntryResult!8038)

(assert (=> b!784086 (= res!530683 (or (= lt!349531 (MissingZero!8038 i!1173)) (= lt!349531 (MissingVacant!8038 i!1173))))))

(assert (=> b!784086 (= lt!349531 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!784087 () Bool)

(declare-fun res!530671 () Bool)

(assert (=> b!784087 (=> (not res!530671) (not e!435960))))

(assert (=> b!784087 (= res!530671 (validKeyInArray!0 (select (arr!20431 a!3186) j!159)))))

(declare-fun b!784088 () Bool)

(declare-fun e!435963 () Bool)

(assert (=> b!784088 (= e!435963 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20431 a!3186) j!159) a!3186 mask!3328) (Found!8038 j!159)))))

(declare-fun b!784089 () Bool)

(assert (=> b!784089 (= e!435963 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20431 a!3186) j!159) a!3186 mask!3328) lt!349536))))

(declare-fun b!784090 () Bool)

(declare-fun res!530672 () Bool)

(assert (=> b!784090 (=> (not res!530672) (not e!435959))))

(assert (=> b!784090 (= res!530672 e!435963)))

(declare-fun c!87108 () Bool)

(assert (=> b!784090 (= c!87108 (bvsle x!1131 resIntermediateX!5))))

(declare-fun res!530674 () Bool)

(assert (=> start!67698 (=> (not res!530674) (not e!435960))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67698 (= res!530674 (validMask!0 mask!3328))))

(assert (=> start!67698 e!435960))

(assert (=> start!67698 true))

(declare-fun array_inv!16205 (array!42693) Bool)

(assert (=> start!67698 (array_inv!16205 a!3186)))

(declare-fun b!784079 () Bool)

(declare-fun Unit!27065 () Unit!27062)

(assert (=> b!784079 (= e!435961 Unit!27065)))

(declare-fun b!784091 () Bool)

(declare-fun res!530685 () Bool)

(assert (=> b!784091 (=> (not res!530685) (not e!435964))))

(assert (=> b!784091 (= res!530685 (= (seekEntryOrOpen!0 lt!349535 lt!349534 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!349535 lt!349534 mask!3328)))))

(declare-fun b!784092 () Bool)

(declare-fun res!530688 () Bool)

(assert (=> b!784092 (=> (not res!530688) (not e!435959))))

(assert (=> b!784092 (= res!530688 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20431 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!67698 res!530674) b!784083))

(assert (= (and b!784083 res!530689) b!784087))

(assert (= (and b!784087 res!530671) b!784085))

(assert (= (and b!784085 res!530675) b!784072))

(assert (= (and b!784072 res!530679) b!784086))

(assert (= (and b!784086 res!530683) b!784070))

(assert (= (and b!784070 res!530676) b!784078))

(assert (= (and b!784078 res!530684) b!784081))

(assert (= (and b!784081 res!530673) b!784080))

(assert (= (and b!784080 res!530686) b!784092))

(assert (= (and b!784092 res!530688) b!784090))

(assert (= (and b!784090 c!87108) b!784089))

(assert (= (and b!784090 (not c!87108)) b!784088))

(assert (= (and b!784090 res!530672) b!784076))

(assert (= (and b!784076 res!530687) b!784084))

(assert (= (and b!784084 res!530682) b!784082))

(assert (= (and b!784084 (not res!530678)) b!784074))

(assert (= (and b!784074 (not res!530680)) b!784073))

(assert (= (and b!784073 (not res!530681)) b!784071))

(assert (= (and b!784071 c!87107) b!784075))

(assert (= (and b!784071 (not c!87107)) b!784079))

(assert (= (and b!784071 res!530677) b!784091))

(assert (= (and b!784091 res!530685) b!784077))

(declare-fun m!726521 () Bool)

(assert (=> b!784078 m!726521))

(declare-fun m!726523 () Bool)

(assert (=> b!784084 m!726523))

(assert (=> b!784084 m!726523))

(declare-fun m!726525 () Bool)

(assert (=> b!784084 m!726525))

(declare-fun m!726527 () Bool)

(assert (=> b!784084 m!726527))

(declare-fun m!726529 () Bool)

(assert (=> b!784084 m!726529))

(assert (=> b!784074 m!726523))

(assert (=> b!784074 m!726523))

(declare-fun m!726531 () Bool)

(assert (=> b!784074 m!726531))

(declare-fun m!726533 () Bool)

(assert (=> b!784076 m!726533))

(declare-fun m!726535 () Bool)

(assert (=> b!784076 m!726535))

(declare-fun m!726537 () Bool)

(assert (=> b!784076 m!726537))

(declare-fun m!726539 () Bool)

(assert (=> b!784076 m!726539))

(assert (=> b!784076 m!726533))

(declare-fun m!726541 () Bool)

(assert (=> b!784076 m!726541))

(assert (=> b!784088 m!726523))

(assert (=> b!784088 m!726523))

(assert (=> b!784088 m!726531))

(declare-fun m!726543 () Bool)

(assert (=> b!784085 m!726543))

(declare-fun m!726545 () Bool)

(assert (=> b!784092 m!726545))

(declare-fun m!726547 () Bool)

(assert (=> b!784072 m!726547))

(assert (=> b!784089 m!726523))

(assert (=> b!784089 m!726523))

(declare-fun m!726549 () Bool)

(assert (=> b!784089 m!726549))

(assert (=> b!784082 m!726523))

(assert (=> b!784082 m!726523))

(declare-fun m!726551 () Bool)

(assert (=> b!784082 m!726551))

(declare-fun m!726553 () Bool)

(assert (=> b!784070 m!726553))

(declare-fun m!726555 () Bool)

(assert (=> start!67698 m!726555))

(declare-fun m!726557 () Bool)

(assert (=> start!67698 m!726557))

(declare-fun m!726559 () Bool)

(assert (=> b!784086 m!726559))

(assert (=> b!784087 m!726523))

(assert (=> b!784087 m!726523))

(declare-fun m!726561 () Bool)

(assert (=> b!784087 m!726561))

(assert (=> b!784073 m!726537))

(declare-fun m!726563 () Bool)

(assert (=> b!784073 m!726563))

(declare-fun m!726565 () Bool)

(assert (=> b!784091 m!726565))

(declare-fun m!726567 () Bool)

(assert (=> b!784091 m!726567))

(assert (=> b!784080 m!726523))

(assert (=> b!784080 m!726523))

(declare-fun m!726569 () Bool)

(assert (=> b!784080 m!726569))

(assert (=> b!784080 m!726569))

(assert (=> b!784080 m!726523))

(declare-fun m!726571 () Bool)

(assert (=> b!784080 m!726571))

(check-sat (not b!784088) (not b!784082) (not b!784087) (not b!784086) (not b!784085) (not b!784089) (not b!784080) (not b!784074) (not b!784070) (not b!784078) (not start!67698) (not b!784076) (not b!784072) (not b!784091) (not b!784084))
(check-sat)
