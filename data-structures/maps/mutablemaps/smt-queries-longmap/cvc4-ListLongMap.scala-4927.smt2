; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67892 () Bool)

(assert start!67892)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!42824 0))(
  ( (array!42825 (arr!20495 (Array (_ BitVec 32) (_ BitVec 64))) (size!20916 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42824)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!788940 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun e!438539 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8102 0))(
  ( (MissingZero!8102 (index!34775 (_ BitVec 32))) (Found!8102 (index!34776 (_ BitVec 32))) (Intermediate!8102 (undefined!8914 Bool) (index!34777 (_ BitVec 32)) (x!65740 (_ BitVec 32))) (Undefined!8102) (MissingVacant!8102 (index!34778 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42824 (_ BitVec 32)) SeekEntryResult!8102)

(assert (=> b!788940 (= e!438539 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20495 a!3186) j!159) a!3186 mask!3328) (Found!8102 j!159)))))

(declare-fun b!788941 () Bool)

(declare-fun res!534447 () Bool)

(declare-fun e!438542 () Bool)

(assert (=> b!788941 (=> (not res!534447) (not e!438542))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!788941 (= res!534447 (and (= (size!20916 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20916 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20916 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!788942 () Bool)

(declare-fun e!438544 () Bool)

(declare-fun lt!352017 () SeekEntryResult!8102)

(declare-fun lt!352013 () SeekEntryResult!8102)

(assert (=> b!788942 (= e!438544 (= lt!352017 lt!352013))))

(declare-fun b!788943 () Bool)

(declare-fun e!438537 () Bool)

(declare-fun e!438540 () Bool)

(assert (=> b!788943 (= e!438537 e!438540)))

(declare-fun res!534445 () Bool)

(assert (=> b!788943 (=> (not res!534445) (not e!438540))))

(declare-fun lt!352011 () SeekEntryResult!8102)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42824 (_ BitVec 32)) SeekEntryResult!8102)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!788943 (= res!534445 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20495 a!3186) j!159) mask!3328) (select (arr!20495 a!3186) j!159) a!3186 mask!3328) lt!352011))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!788943 (= lt!352011 (Intermediate!8102 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!788944 () Bool)

(declare-fun res!534452 () Bool)

(assert (=> b!788944 (=> (not res!534452) (not e!438537))))

(assert (=> b!788944 (= res!534452 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20916 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20916 a!3186))))))

(declare-fun b!788945 () Bool)

(declare-datatypes ((Unit!27318 0))(
  ( (Unit!27319) )
))
(declare-fun e!438541 () Unit!27318)

(declare-fun Unit!27320 () Unit!27318)

(assert (=> b!788945 (= e!438541 Unit!27320)))

(declare-fun b!788946 () Bool)

(declare-fun res!534446 () Bool)

(assert (=> b!788946 (=> (not res!534446) (not e!438540))))

(assert (=> b!788946 (= res!534446 e!438539)))

(declare-fun c!87656 () Bool)

(assert (=> b!788946 (= c!87656 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!788947 () Bool)

(declare-fun res!534449 () Bool)

(assert (=> b!788947 (=> (not res!534449) (not e!438540))))

(assert (=> b!788947 (= res!534449 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20495 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!788948 () Bool)

(declare-fun e!438538 () Bool)

(declare-fun e!438534 () Bool)

(assert (=> b!788948 (= e!438538 e!438534)))

(declare-fun res!534454 () Bool)

(assert (=> b!788948 (=> res!534454 e!438534)))

(declare-fun lt!352016 () (_ BitVec 64))

(declare-fun lt!352018 () (_ BitVec 64))

(assert (=> b!788948 (= res!534454 (= lt!352016 lt!352018))))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!788948 (= lt!352016 (select (store (arr!20495 a!3186) i!1173 k!2102) index!1321))))

(declare-fun lt!352014 () SeekEntryResult!8102)

(declare-fun e!438543 () Bool)

(declare-fun b!788949 () Bool)

(assert (=> b!788949 (= e!438543 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20495 a!3186) j!159) a!3186 mask!3328) lt!352014))))

(declare-fun b!788950 () Bool)

(assert (=> b!788950 (= e!438539 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20495 a!3186) j!159) a!3186 mask!3328) lt!352011))))

(declare-fun b!788951 () Bool)

(declare-fun e!438533 () Bool)

(declare-fun e!438536 () Bool)

(assert (=> b!788951 (= e!438533 (not e!438536))))

(declare-fun res!534453 () Bool)

(assert (=> b!788951 (=> res!534453 e!438536)))

(declare-fun lt!352015 () SeekEntryResult!8102)

(assert (=> b!788951 (= res!534453 (or (not (is-Intermediate!8102 lt!352015)) (bvslt x!1131 (x!65740 lt!352015)) (not (= x!1131 (x!65740 lt!352015))) (not (= index!1321 (index!34777 lt!352015)))))))

(assert (=> b!788951 e!438543))

(declare-fun res!534461 () Bool)

(assert (=> b!788951 (=> (not res!534461) (not e!438543))))

(assert (=> b!788951 (= res!534461 (= lt!352017 lt!352014))))

(assert (=> b!788951 (= lt!352014 (Found!8102 j!159))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42824 (_ BitVec 32)) SeekEntryResult!8102)

(assert (=> b!788951 (= lt!352017 (seekEntryOrOpen!0 (select (arr!20495 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42824 (_ BitVec 32)) Bool)

(assert (=> b!788951 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!352012 () Unit!27318)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42824 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27318)

(assert (=> b!788951 (= lt!352012 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!788952 () Bool)

(declare-fun res!534458 () Bool)

(assert (=> b!788952 (=> (not res!534458) (not e!438542))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!788952 (= res!534458 (validKeyInArray!0 k!2102))))

(declare-fun b!788939 () Bool)

(declare-fun res!534456 () Bool)

(assert (=> b!788939 (=> (not res!534456) (not e!438542))))

(declare-fun arrayContainsKey!0 (array!42824 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!788939 (= res!534456 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun res!534450 () Bool)

(assert (=> start!67892 (=> (not res!534450) (not e!438542))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67892 (= res!534450 (validMask!0 mask!3328))))

(assert (=> start!67892 e!438542))

(assert (=> start!67892 true))

(declare-fun array_inv!16269 (array!42824) Bool)

(assert (=> start!67892 (array_inv!16269 a!3186)))

(declare-fun b!788953 () Bool)

(declare-fun res!534448 () Bool)

(assert (=> b!788953 (=> (not res!534448) (not e!438544))))

(declare-fun lt!352020 () array!42824)

(assert (=> b!788953 (= res!534448 (= (seekEntryOrOpen!0 lt!352018 lt!352020 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!352018 lt!352020 mask!3328)))))

(declare-fun b!788954 () Bool)

(assert (=> b!788954 (= e!438542 e!438537)))

(declare-fun res!534459 () Bool)

(assert (=> b!788954 (=> (not res!534459) (not e!438537))))

(declare-fun lt!352019 () SeekEntryResult!8102)

(assert (=> b!788954 (= res!534459 (or (= lt!352019 (MissingZero!8102 i!1173)) (= lt!352019 (MissingVacant!8102 i!1173))))))

(assert (=> b!788954 (= lt!352019 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!788955 () Bool)

(declare-fun Unit!27321 () Unit!27318)

(assert (=> b!788955 (= e!438541 Unit!27321)))

(assert (=> b!788955 false))

(declare-fun b!788956 () Bool)

(declare-fun res!534462 () Bool)

(assert (=> b!788956 (=> (not res!534462) (not e!438542))))

(assert (=> b!788956 (= res!534462 (validKeyInArray!0 (select (arr!20495 a!3186) j!159)))))

(declare-fun b!788957 () Bool)

(declare-fun res!534463 () Bool)

(assert (=> b!788957 (=> (not res!534463) (not e!438537))))

(declare-datatypes ((List!14550 0))(
  ( (Nil!14547) (Cons!14546 (h!15672 (_ BitVec 64)) (t!20873 List!14550)) )
))
(declare-fun arrayNoDuplicates!0 (array!42824 (_ BitVec 32) List!14550) Bool)

(assert (=> b!788957 (= res!534463 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14547))))

(declare-fun b!788958 () Bool)

(declare-fun res!534451 () Bool)

(assert (=> b!788958 (=> (not res!534451) (not e!438537))))

(assert (=> b!788958 (= res!534451 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!788959 () Bool)

(assert (=> b!788959 (= e!438536 e!438538)))

(declare-fun res!534455 () Bool)

(assert (=> b!788959 (=> res!534455 e!438538)))

(assert (=> b!788959 (= res!534455 (not (= lt!352013 lt!352014)))))

(assert (=> b!788959 (= lt!352013 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20495 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!788960 () Bool)

(assert (=> b!788960 (= e!438540 e!438533)))

(declare-fun res!534460 () Bool)

(assert (=> b!788960 (=> (not res!534460) (not e!438533))))

(declare-fun lt!352010 () SeekEntryResult!8102)

(assert (=> b!788960 (= res!534460 (= lt!352010 lt!352015))))

(assert (=> b!788960 (= lt!352015 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!352018 lt!352020 mask!3328))))

(assert (=> b!788960 (= lt!352010 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!352018 mask!3328) lt!352018 lt!352020 mask!3328))))

(assert (=> b!788960 (= lt!352018 (select (store (arr!20495 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!788960 (= lt!352020 (array!42825 (store (arr!20495 a!3186) i!1173 k!2102) (size!20916 a!3186)))))

(declare-fun b!788961 () Bool)

(assert (=> b!788961 (= e!438534 true)))

(assert (=> b!788961 e!438544))

(declare-fun res!534457 () Bool)

(assert (=> b!788961 (=> (not res!534457) (not e!438544))))

(assert (=> b!788961 (= res!534457 (= lt!352016 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!352021 () Unit!27318)

(assert (=> b!788961 (= lt!352021 e!438541)))

(declare-fun c!87657 () Bool)

(assert (=> b!788961 (= c!87657 (= lt!352016 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!67892 res!534450) b!788941))

(assert (= (and b!788941 res!534447) b!788956))

(assert (= (and b!788956 res!534462) b!788952))

(assert (= (and b!788952 res!534458) b!788939))

(assert (= (and b!788939 res!534456) b!788954))

(assert (= (and b!788954 res!534459) b!788958))

(assert (= (and b!788958 res!534451) b!788957))

(assert (= (and b!788957 res!534463) b!788944))

(assert (= (and b!788944 res!534452) b!788943))

(assert (= (and b!788943 res!534445) b!788947))

(assert (= (and b!788947 res!534449) b!788946))

(assert (= (and b!788946 c!87656) b!788950))

(assert (= (and b!788946 (not c!87656)) b!788940))

(assert (= (and b!788946 res!534446) b!788960))

(assert (= (and b!788960 res!534460) b!788951))

(assert (= (and b!788951 res!534461) b!788949))

(assert (= (and b!788951 (not res!534453)) b!788959))

(assert (= (and b!788959 (not res!534455)) b!788948))

(assert (= (and b!788948 (not res!534454)) b!788961))

(assert (= (and b!788961 c!87657) b!788955))

(assert (= (and b!788961 (not c!87657)) b!788945))

(assert (= (and b!788961 res!534457) b!788953))

(assert (= (and b!788953 res!534448) b!788942))

(declare-fun m!730185 () Bool)

(assert (=> b!788947 m!730185))

(declare-fun m!730187 () Bool)

(assert (=> start!67892 m!730187))

(declare-fun m!730189 () Bool)

(assert (=> start!67892 m!730189))

(declare-fun m!730191 () Bool)

(assert (=> b!788943 m!730191))

(assert (=> b!788943 m!730191))

(declare-fun m!730193 () Bool)

(assert (=> b!788943 m!730193))

(assert (=> b!788943 m!730193))

(assert (=> b!788943 m!730191))

(declare-fun m!730195 () Bool)

(assert (=> b!788943 m!730195))

(assert (=> b!788951 m!730191))

(assert (=> b!788951 m!730191))

(declare-fun m!730197 () Bool)

(assert (=> b!788951 m!730197))

(declare-fun m!730199 () Bool)

(assert (=> b!788951 m!730199))

(declare-fun m!730201 () Bool)

(assert (=> b!788951 m!730201))

(assert (=> b!788949 m!730191))

(assert (=> b!788949 m!730191))

(declare-fun m!730203 () Bool)

(assert (=> b!788949 m!730203))

(assert (=> b!788950 m!730191))

(assert (=> b!788950 m!730191))

(declare-fun m!730205 () Bool)

(assert (=> b!788950 m!730205))

(declare-fun m!730207 () Bool)

(assert (=> b!788952 m!730207))

(declare-fun m!730209 () Bool)

(assert (=> b!788957 m!730209))

(declare-fun m!730211 () Bool)

(assert (=> b!788958 m!730211))

(assert (=> b!788959 m!730191))

(assert (=> b!788959 m!730191))

(declare-fun m!730213 () Bool)

(assert (=> b!788959 m!730213))

(assert (=> b!788956 m!730191))

(assert (=> b!788956 m!730191))

(declare-fun m!730215 () Bool)

(assert (=> b!788956 m!730215))

(assert (=> b!788940 m!730191))

(assert (=> b!788940 m!730191))

(assert (=> b!788940 m!730213))

(declare-fun m!730217 () Bool)

(assert (=> b!788939 m!730217))

(declare-fun m!730219 () Bool)

(assert (=> b!788948 m!730219))

(declare-fun m!730221 () Bool)

(assert (=> b!788948 m!730221))

(declare-fun m!730223 () Bool)

(assert (=> b!788954 m!730223))

(declare-fun m!730225 () Bool)

(assert (=> b!788960 m!730225))

(declare-fun m!730227 () Bool)

(assert (=> b!788960 m!730227))

(declare-fun m!730229 () Bool)

(assert (=> b!788960 m!730229))

(declare-fun m!730231 () Bool)

(assert (=> b!788960 m!730231))

(assert (=> b!788960 m!730219))

(assert (=> b!788960 m!730227))

(declare-fun m!730233 () Bool)

(assert (=> b!788953 m!730233))

(declare-fun m!730235 () Bool)

(assert (=> b!788953 m!730235))

(push 1)

