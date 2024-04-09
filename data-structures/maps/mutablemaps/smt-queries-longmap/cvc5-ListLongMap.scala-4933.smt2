; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67924 () Bool)

(assert start!67924)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!42856 0))(
  ( (array!42857 (arr!20511 (Array (_ BitVec 32) (_ BitVec 64))) (size!20932 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42856)

(declare-fun b!790014 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun e!439115 () Bool)

(declare-datatypes ((SeekEntryResult!8118 0))(
  ( (MissingZero!8118 (index!34839 (_ BitVec 32))) (Found!8118 (index!34840 (_ BitVec 32))) (Intermediate!8118 (undefined!8930 Bool) (index!34841 (_ BitVec 32)) (x!65804 (_ BitVec 32))) (Undefined!8118) (MissingVacant!8118 (index!34842 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42856 (_ BitVec 32)) SeekEntryResult!8118)

(assert (=> b!790014 (= e!439115 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20511 a!3186) j!159) a!3186 mask!3328) (Found!8118 j!159)))))

(declare-fun b!790015 () Bool)

(declare-fun e!439118 () Bool)

(declare-fun e!439119 () Bool)

(assert (=> b!790015 (= e!439118 e!439119)))

(declare-fun res!535343 () Bool)

(assert (=> b!790015 (=> res!535343 e!439119)))

(assert (=> b!790015 (= res!535343 (or (not (= (select (arr!20511 a!3186) index!1321) #b1000000000000000000000000000000000000000000000000000000000000000)) (= index!1321 resIntermediateIndex!5)))))

(declare-fun lt!352673 () SeekEntryResult!8118)

(declare-fun lt!352687 () SeekEntryResult!8118)

(declare-fun lt!352675 () SeekEntryResult!8118)

(declare-fun lt!352686 () SeekEntryResult!8118)

(assert (=> b!790015 (and (= lt!352675 lt!352686) (= lt!352673 lt!352687))))

(declare-fun lt!352674 () (_ BitVec 64))

(declare-fun lt!352679 () array!42856)

(assert (=> b!790015 (= lt!352686 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!352674 lt!352679 mask!3328))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42856 (_ BitVec 32)) SeekEntryResult!8118)

(assert (=> b!790015 (= lt!352675 (seekEntryOrOpen!0 lt!352674 lt!352679 mask!3328))))

(declare-fun lt!352678 () (_ BitVec 64))

(assert (=> b!790015 (= lt!352678 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-datatypes ((Unit!27382 0))(
  ( (Unit!27383) )
))
(declare-fun lt!352680 () Unit!27382)

(declare-fun e!439116 () Unit!27382)

(assert (=> b!790015 (= lt!352680 e!439116)))

(declare-fun c!87753 () Bool)

(assert (=> b!790015 (= c!87753 (= lt!352678 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!790016 () Bool)

(declare-fun e!439117 () Bool)

(declare-fun e!439120 () Bool)

(assert (=> b!790016 (= e!439117 e!439120)))

(declare-fun res!535342 () Bool)

(assert (=> b!790016 (=> (not res!535342) (not e!439120))))

(declare-fun lt!352682 () SeekEntryResult!8118)

(declare-fun lt!352676 () SeekEntryResult!8118)

(assert (=> b!790016 (= res!535342 (= lt!352682 lt!352676))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42856 (_ BitVec 32)) SeekEntryResult!8118)

(assert (=> b!790016 (= lt!352676 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!352674 lt!352679 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!790016 (= lt!352682 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!352674 mask!3328) lt!352674 lt!352679 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!790016 (= lt!352674 (select (store (arr!20511 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!790016 (= lt!352679 (array!42857 (store (arr!20511 a!3186) i!1173 k!2102) (size!20932 a!3186)))))

(declare-fun lt!352685 () SeekEntryResult!8118)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun b!790017 () Bool)

(declare-fun e!439114 () Bool)

(assert (=> b!790017 (= e!439114 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20511 a!3186) j!159) a!3186 mask!3328) lt!352685))))

(declare-fun b!790018 () Bool)

(declare-fun e!439110 () Bool)

(assert (=> b!790018 (= e!439110 e!439117)))

(declare-fun res!535331 () Bool)

(assert (=> b!790018 (=> (not res!535331) (not e!439117))))

(declare-fun lt!352677 () SeekEntryResult!8118)

(assert (=> b!790018 (= res!535331 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20511 a!3186) j!159) mask!3328) (select (arr!20511 a!3186) j!159) a!3186 mask!3328) lt!352677))))

(assert (=> b!790018 (= lt!352677 (Intermediate!8118 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!790019 () Bool)

(declare-fun res!535340 () Bool)

(assert (=> b!790019 (=> (not res!535340) (not e!439117))))

(assert (=> b!790019 (= res!535340 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20511 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!535332 () Bool)

(declare-fun e!439109 () Bool)

(assert (=> start!67924 (=> (not res!535332) (not e!439109))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67924 (= res!535332 (validMask!0 mask!3328))))

(assert (=> start!67924 e!439109))

(assert (=> start!67924 true))

(declare-fun array_inv!16285 (array!42856) Bool)

(assert (=> start!67924 (array_inv!16285 a!3186)))

(declare-fun b!790020 () Bool)

(declare-fun Unit!27384 () Unit!27382)

(assert (=> b!790020 (= e!439116 Unit!27384)))

(declare-fun b!790021 () Bool)

(declare-fun e!439113 () Bool)

(assert (=> b!790021 (= e!439113 e!439118)))

(declare-fun res!535329 () Bool)

(assert (=> b!790021 (=> res!535329 e!439118)))

(assert (=> b!790021 (= res!535329 (= lt!352678 lt!352674))))

(assert (=> b!790021 (= lt!352678 (select (store (arr!20511 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!790022 () Bool)

(declare-fun res!535337 () Bool)

(assert (=> b!790022 (=> (not res!535337) (not e!439110))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42856 (_ BitVec 32)) Bool)

(assert (=> b!790022 (= res!535337 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!790023 () Bool)

(assert (=> b!790023 (= e!439115 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20511 a!3186) j!159) a!3186 mask!3328) lt!352677))))

(declare-fun b!790024 () Bool)

(declare-fun e!439111 () Bool)

(assert (=> b!790024 (= e!439120 (not e!439111))))

(declare-fun res!535334 () Bool)

(assert (=> b!790024 (=> res!535334 e!439111)))

(assert (=> b!790024 (= res!535334 (or (not (is-Intermediate!8118 lt!352676)) (bvslt x!1131 (x!65804 lt!352676)) (not (= x!1131 (x!65804 lt!352676))) (not (= index!1321 (index!34841 lt!352676)))))))

(assert (=> b!790024 e!439114))

(declare-fun res!535344 () Bool)

(assert (=> b!790024 (=> (not res!535344) (not e!439114))))

(assert (=> b!790024 (= res!535344 (= lt!352673 lt!352685))))

(assert (=> b!790024 (= lt!352685 (Found!8118 j!159))))

(assert (=> b!790024 (= lt!352673 (seekEntryOrOpen!0 (select (arr!20511 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!790024 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!352681 () Unit!27382)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42856 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27382)

(assert (=> b!790024 (= lt!352681 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!790025 () Bool)

(declare-fun res!535330 () Bool)

(assert (=> b!790025 (=> (not res!535330) (not e!439110))))

(assert (=> b!790025 (= res!535330 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20932 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20932 a!3186))))))

(declare-fun b!790026 () Bool)

(declare-fun res!535345 () Bool)

(assert (=> b!790026 (=> (not res!535345) (not e!439109))))

(declare-fun arrayContainsKey!0 (array!42856 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!790026 (= res!535345 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!790027 () Bool)

(assert (=> b!790027 (= e!439109 e!439110)))

(declare-fun res!535341 () Bool)

(assert (=> b!790027 (=> (not res!535341) (not e!439110))))

(declare-fun lt!352684 () SeekEntryResult!8118)

(assert (=> b!790027 (= res!535341 (or (= lt!352684 (MissingZero!8118 i!1173)) (= lt!352684 (MissingVacant!8118 i!1173))))))

(assert (=> b!790027 (= lt!352684 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!790028 () Bool)

(assert (=> b!790028 (= e!439111 e!439113)))

(declare-fun res!535335 () Bool)

(assert (=> b!790028 (=> res!535335 e!439113)))

(assert (=> b!790028 (= res!535335 (not (= lt!352687 lt!352685)))))

(assert (=> b!790028 (= lt!352687 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20511 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!790029 () Bool)

(assert (=> b!790029 (= e!439119 (= lt!352675 lt!352685))))

(assert (=> b!790029 (= lt!352686 lt!352687)))

(declare-fun lt!352683 () Unit!27382)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!42856 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27382)

(assert (=> b!790029 (= lt!352683 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3186 i!1173 k!2102 j!159 index!1321 x!1131 resIntermediateIndex!5 index!1321 mask!3328))))

(declare-fun b!790030 () Bool)

(declare-fun res!535336 () Bool)

(assert (=> b!790030 (=> (not res!535336) (not e!439109))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!790030 (= res!535336 (validKeyInArray!0 k!2102))))

(declare-fun b!790031 () Bool)

(declare-fun res!535328 () Bool)

(assert (=> b!790031 (=> (not res!535328) (not e!439109))))

(assert (=> b!790031 (= res!535328 (and (= (size!20932 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20932 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20932 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!790032 () Bool)

(declare-fun res!535338 () Bool)

(assert (=> b!790032 (=> (not res!535338) (not e!439117))))

(assert (=> b!790032 (= res!535338 e!439115)))

(declare-fun c!87752 () Bool)

(assert (=> b!790032 (= c!87752 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!790033 () Bool)

(declare-fun res!535333 () Bool)

(assert (=> b!790033 (=> (not res!535333) (not e!439110))))

(declare-datatypes ((List!14566 0))(
  ( (Nil!14563) (Cons!14562 (h!15688 (_ BitVec 64)) (t!20889 List!14566)) )
))
(declare-fun arrayNoDuplicates!0 (array!42856 (_ BitVec 32) List!14566) Bool)

(assert (=> b!790033 (= res!535333 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14563))))

(declare-fun b!790034 () Bool)

(declare-fun res!535339 () Bool)

(assert (=> b!790034 (=> (not res!535339) (not e!439109))))

(assert (=> b!790034 (= res!535339 (validKeyInArray!0 (select (arr!20511 a!3186) j!159)))))

(declare-fun b!790035 () Bool)

(declare-fun Unit!27385 () Unit!27382)

(assert (=> b!790035 (= e!439116 Unit!27385)))

(assert (=> b!790035 false))

(assert (= (and start!67924 res!535332) b!790031))

(assert (= (and b!790031 res!535328) b!790034))

(assert (= (and b!790034 res!535339) b!790030))

(assert (= (and b!790030 res!535336) b!790026))

(assert (= (and b!790026 res!535345) b!790027))

(assert (= (and b!790027 res!535341) b!790022))

(assert (= (and b!790022 res!535337) b!790033))

(assert (= (and b!790033 res!535333) b!790025))

(assert (= (and b!790025 res!535330) b!790018))

(assert (= (and b!790018 res!535331) b!790019))

(assert (= (and b!790019 res!535340) b!790032))

(assert (= (and b!790032 c!87752) b!790023))

(assert (= (and b!790032 (not c!87752)) b!790014))

(assert (= (and b!790032 res!535338) b!790016))

(assert (= (and b!790016 res!535342) b!790024))

(assert (= (and b!790024 res!535344) b!790017))

(assert (= (and b!790024 (not res!535334)) b!790028))

(assert (= (and b!790028 (not res!535335)) b!790021))

(assert (= (and b!790021 (not res!535329)) b!790015))

(assert (= (and b!790015 c!87753) b!790035))

(assert (= (and b!790015 (not c!87753)) b!790020))

(assert (= (and b!790015 (not res!535343)) b!790029))

(declare-fun m!731053 () Bool)

(assert (=> b!790026 m!731053))

(declare-fun m!731055 () Bool)

(assert (=> b!790022 m!731055))

(declare-fun m!731057 () Bool)

(assert (=> b!790019 m!731057))

(declare-fun m!731059 () Bool)

(assert (=> b!790027 m!731059))

(declare-fun m!731061 () Bool)

(assert (=> b!790030 m!731061))

(declare-fun m!731063 () Bool)

(assert (=> b!790023 m!731063))

(assert (=> b!790023 m!731063))

(declare-fun m!731065 () Bool)

(assert (=> b!790023 m!731065))

(assert (=> b!790024 m!731063))

(assert (=> b!790024 m!731063))

(declare-fun m!731067 () Bool)

(assert (=> b!790024 m!731067))

(declare-fun m!731069 () Bool)

(assert (=> b!790024 m!731069))

(declare-fun m!731071 () Bool)

(assert (=> b!790024 m!731071))

(assert (=> b!790018 m!731063))

(assert (=> b!790018 m!731063))

(declare-fun m!731073 () Bool)

(assert (=> b!790018 m!731073))

(assert (=> b!790018 m!731073))

(assert (=> b!790018 m!731063))

(declare-fun m!731075 () Bool)

(assert (=> b!790018 m!731075))

(declare-fun m!731077 () Bool)

(assert (=> b!790033 m!731077))

(assert (=> b!790028 m!731063))

(assert (=> b!790028 m!731063))

(declare-fun m!731079 () Bool)

(assert (=> b!790028 m!731079))

(assert (=> b!790034 m!731063))

(assert (=> b!790034 m!731063))

(declare-fun m!731081 () Bool)

(assert (=> b!790034 m!731081))

(declare-fun m!731083 () Bool)

(assert (=> b!790015 m!731083))

(declare-fun m!731085 () Bool)

(assert (=> b!790015 m!731085))

(declare-fun m!731087 () Bool)

(assert (=> b!790015 m!731087))

(assert (=> b!790017 m!731063))

(assert (=> b!790017 m!731063))

(declare-fun m!731089 () Bool)

(assert (=> b!790017 m!731089))

(declare-fun m!731091 () Bool)

(assert (=> b!790021 m!731091))

(declare-fun m!731093 () Bool)

(assert (=> b!790021 m!731093))

(declare-fun m!731095 () Bool)

(assert (=> start!67924 m!731095))

(declare-fun m!731097 () Bool)

(assert (=> start!67924 m!731097))

(declare-fun m!731099 () Bool)

(assert (=> b!790016 m!731099))

(declare-fun m!731101 () Bool)

(assert (=> b!790016 m!731101))

(assert (=> b!790016 m!731091))

(declare-fun m!731103 () Bool)

(assert (=> b!790016 m!731103))

(assert (=> b!790016 m!731099))

(declare-fun m!731105 () Bool)

(assert (=> b!790016 m!731105))

(declare-fun m!731107 () Bool)

(assert (=> b!790029 m!731107))

(assert (=> b!790014 m!731063))

(assert (=> b!790014 m!731063))

(assert (=> b!790014 m!731079))

(push 1)

