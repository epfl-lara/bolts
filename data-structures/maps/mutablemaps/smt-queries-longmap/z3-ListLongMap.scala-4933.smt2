; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!67926 () Bool)

(assert start!67926)

(declare-fun b!790080 () Bool)

(declare-fun res!535397 () Bool)

(declare-fun e!439150 () Bool)

(assert (=> b!790080 (=> (not res!535397) (not e!439150))))

(declare-datatypes ((array!42858 0))(
  ( (array!42859 (arr!20512 (Array (_ BitVec 32) (_ BitVec 64))) (size!20933 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42858)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42858 (_ BitVec 32)) Bool)

(assert (=> b!790080 (= res!535397 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!790081 () Bool)

(declare-fun res!535393 () Bool)

(declare-fun e!439148 () Bool)

(assert (=> b!790081 (=> (not res!535393) (not e!439148))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42858 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!790081 (= res!535393 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!790082 () Bool)

(declare-fun e!439153 () Bool)

(declare-fun e!439151 () Bool)

(assert (=> b!790082 (= e!439153 e!439151)))

(declare-fun res!535390 () Bool)

(assert (=> b!790082 (=> res!535390 e!439151)))

(declare-datatypes ((SeekEntryResult!8119 0))(
  ( (MissingZero!8119 (index!34843 (_ BitVec 32))) (Found!8119 (index!34844 (_ BitVec 32))) (Intermediate!8119 (undefined!8931 Bool) (index!34845 (_ BitVec 32)) (x!65805 (_ BitVec 32))) (Undefined!8119) (MissingVacant!8119 (index!34846 (_ BitVec 32))) )
))
(declare-fun lt!352725 () SeekEntryResult!8119)

(declare-fun lt!352726 () SeekEntryResult!8119)

(assert (=> b!790082 (= res!535390 (not (= lt!352725 lt!352726)))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42858 (_ BitVec 32)) SeekEntryResult!8119)

(assert (=> b!790082 (= lt!352725 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20512 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!790083 () Bool)

(declare-fun res!535399 () Bool)

(declare-fun e!439152 () Bool)

(assert (=> b!790083 (=> (not res!535399) (not e!439152))))

(declare-fun e!439155 () Bool)

(assert (=> b!790083 (= res!535399 e!439155)))

(declare-fun c!87758 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!790083 (= c!87758 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!790084 () Bool)

(declare-fun res!535391 () Bool)

(assert (=> b!790084 (=> (not res!535391) (not e!439148))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!790084 (= res!535391 (and (= (size!20933 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20933 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20933 a!3186)) (not (= i!1173 j!159))))))

(declare-fun res!535386 () Bool)

(assert (=> start!67926 (=> (not res!535386) (not e!439148))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67926 (= res!535386 (validMask!0 mask!3328))))

(assert (=> start!67926 e!439148))

(assert (=> start!67926 true))

(declare-fun array_inv!16286 (array!42858) Bool)

(assert (=> start!67926 (array_inv!16286 a!3186)))

(declare-fun b!790085 () Bool)

(declare-fun e!439147 () Bool)

(assert (=> b!790085 (= e!439147 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20512 a!3186) j!159) a!3186 mask!3328) lt!352726))))

(declare-fun b!790086 () Bool)

(declare-fun e!439149 () Bool)

(declare-fun lt!352732 () SeekEntryResult!8119)

(assert (=> b!790086 (= e!439149 (= lt!352732 lt!352726))))

(declare-fun lt!352721 () SeekEntryResult!8119)

(assert (=> b!790086 (= lt!352721 lt!352725)))

(declare-datatypes ((Unit!27386 0))(
  ( (Unit!27387) )
))
(declare-fun lt!352729 () Unit!27386)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!42858 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27386)

(assert (=> b!790086 (= lt!352729 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3186 i!1173 k0!2102 j!159 index!1321 x!1131 resIntermediateIndex!5 index!1321 mask!3328))))

(declare-fun b!790087 () Bool)

(declare-fun e!439154 () Bool)

(assert (=> b!790087 (= e!439151 e!439154)))

(declare-fun res!535383 () Bool)

(assert (=> b!790087 (=> res!535383 e!439154)))

(declare-fun lt!352718 () (_ BitVec 64))

(declare-fun lt!352731 () (_ BitVec 64))

(assert (=> b!790087 (= res!535383 (= lt!352718 lt!352731))))

(assert (=> b!790087 (= lt!352718 (select (store (arr!20512 a!3186) i!1173 k0!2102) index!1321))))

(declare-fun b!790088 () Bool)

(declare-fun e!439145 () Bool)

(assert (=> b!790088 (= e!439145 (not e!439153))))

(declare-fun res!535387 () Bool)

(assert (=> b!790088 (=> res!535387 e!439153)))

(declare-fun lt!352728 () SeekEntryResult!8119)

(get-info :version)

(assert (=> b!790088 (= res!535387 (or (not ((_ is Intermediate!8119) lt!352728)) (bvslt x!1131 (x!65805 lt!352728)) (not (= x!1131 (x!65805 lt!352728))) (not (= index!1321 (index!34845 lt!352728)))))))

(assert (=> b!790088 e!439147))

(declare-fun res!535392 () Bool)

(assert (=> b!790088 (=> (not res!535392) (not e!439147))))

(declare-fun lt!352724 () SeekEntryResult!8119)

(assert (=> b!790088 (= res!535392 (= lt!352724 lt!352726))))

(assert (=> b!790088 (= lt!352726 (Found!8119 j!159))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42858 (_ BitVec 32)) SeekEntryResult!8119)

(assert (=> b!790088 (= lt!352724 (seekEntryOrOpen!0 (select (arr!20512 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!790088 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!352730 () Unit!27386)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42858 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27386)

(assert (=> b!790088 (= lt!352730 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!790089 () Bool)

(declare-fun res!535388 () Bool)

(assert (=> b!790089 (=> (not res!535388) (not e!439148))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!790089 (= res!535388 (validKeyInArray!0 (select (arr!20512 a!3186) j!159)))))

(declare-fun b!790090 () Bool)

(assert (=> b!790090 (= e!439152 e!439145)))

(declare-fun res!535398 () Bool)

(assert (=> b!790090 (=> (not res!535398) (not e!439145))))

(declare-fun lt!352722 () SeekEntryResult!8119)

(assert (=> b!790090 (= res!535398 (= lt!352722 lt!352728))))

(declare-fun lt!352719 () array!42858)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42858 (_ BitVec 32)) SeekEntryResult!8119)

(assert (=> b!790090 (= lt!352728 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!352731 lt!352719 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!790090 (= lt!352722 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!352731 mask!3328) lt!352731 lt!352719 mask!3328))))

(assert (=> b!790090 (= lt!352731 (select (store (arr!20512 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!790090 (= lt!352719 (array!42859 (store (arr!20512 a!3186) i!1173 k0!2102) (size!20933 a!3186)))))

(declare-fun b!790091 () Bool)

(assert (=> b!790091 (= e!439154 e!439149)))

(declare-fun res!535396 () Bool)

(assert (=> b!790091 (=> res!535396 e!439149)))

(assert (=> b!790091 (= res!535396 (or (not (= (select (arr!20512 a!3186) index!1321) #b1000000000000000000000000000000000000000000000000000000000000000)) (= index!1321 resIntermediateIndex!5)))))

(assert (=> b!790091 (and (= lt!352732 lt!352721) (= lt!352724 lt!352725))))

(assert (=> b!790091 (= lt!352721 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!352731 lt!352719 mask!3328))))

(assert (=> b!790091 (= lt!352732 (seekEntryOrOpen!0 lt!352731 lt!352719 mask!3328))))

(assert (=> b!790091 (= lt!352718 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!352720 () Unit!27386)

(declare-fun e!439156 () Unit!27386)

(assert (=> b!790091 (= lt!352720 e!439156)))

(declare-fun c!87759 () Bool)

(assert (=> b!790091 (= c!87759 (= lt!352718 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!790092 () Bool)

(assert (=> b!790092 (= e!439150 e!439152)))

(declare-fun res!535385 () Bool)

(assert (=> b!790092 (=> (not res!535385) (not e!439152))))

(declare-fun lt!352727 () SeekEntryResult!8119)

(assert (=> b!790092 (= res!535385 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20512 a!3186) j!159) mask!3328) (select (arr!20512 a!3186) j!159) a!3186 mask!3328) lt!352727))))

(assert (=> b!790092 (= lt!352727 (Intermediate!8119 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!790093 () Bool)

(declare-fun res!535382 () Bool)

(assert (=> b!790093 (=> (not res!535382) (not e!439152))))

(assert (=> b!790093 (= res!535382 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20512 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!790094 () Bool)

(assert (=> b!790094 (= e!439155 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20512 a!3186) j!159) a!3186 mask!3328) (Found!8119 j!159)))))

(declare-fun b!790095 () Bool)

(declare-fun Unit!27388 () Unit!27386)

(assert (=> b!790095 (= e!439156 Unit!27388)))

(declare-fun b!790096 () Bool)

(declare-fun res!535395 () Bool)

(assert (=> b!790096 (=> (not res!535395) (not e!439150))))

(declare-datatypes ((List!14567 0))(
  ( (Nil!14564) (Cons!14563 (h!15689 (_ BitVec 64)) (t!20890 List!14567)) )
))
(declare-fun arrayNoDuplicates!0 (array!42858 (_ BitVec 32) List!14567) Bool)

(assert (=> b!790096 (= res!535395 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14564))))

(declare-fun b!790097 () Bool)

(declare-fun res!535394 () Bool)

(assert (=> b!790097 (=> (not res!535394) (not e!439148))))

(assert (=> b!790097 (= res!535394 (validKeyInArray!0 k0!2102))))

(declare-fun b!790098 () Bool)

(assert (=> b!790098 (= e!439148 e!439150)))

(declare-fun res!535384 () Bool)

(assert (=> b!790098 (=> (not res!535384) (not e!439150))))

(declare-fun lt!352723 () SeekEntryResult!8119)

(assert (=> b!790098 (= res!535384 (or (= lt!352723 (MissingZero!8119 i!1173)) (= lt!352723 (MissingVacant!8119 i!1173))))))

(assert (=> b!790098 (= lt!352723 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!790099 () Bool)

(assert (=> b!790099 (= e!439155 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20512 a!3186) j!159) a!3186 mask!3328) lt!352727))))

(declare-fun b!790100 () Bool)

(declare-fun res!535389 () Bool)

(assert (=> b!790100 (=> (not res!535389) (not e!439150))))

(assert (=> b!790100 (= res!535389 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20933 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20933 a!3186))))))

(declare-fun b!790101 () Bool)

(declare-fun Unit!27389 () Unit!27386)

(assert (=> b!790101 (= e!439156 Unit!27389)))

(assert (=> b!790101 false))

(assert (= (and start!67926 res!535386) b!790084))

(assert (= (and b!790084 res!535391) b!790089))

(assert (= (and b!790089 res!535388) b!790097))

(assert (= (and b!790097 res!535394) b!790081))

(assert (= (and b!790081 res!535393) b!790098))

(assert (= (and b!790098 res!535384) b!790080))

(assert (= (and b!790080 res!535397) b!790096))

(assert (= (and b!790096 res!535395) b!790100))

(assert (= (and b!790100 res!535389) b!790092))

(assert (= (and b!790092 res!535385) b!790093))

(assert (= (and b!790093 res!535382) b!790083))

(assert (= (and b!790083 c!87758) b!790099))

(assert (= (and b!790083 (not c!87758)) b!790094))

(assert (= (and b!790083 res!535399) b!790090))

(assert (= (and b!790090 res!535398) b!790088))

(assert (= (and b!790088 res!535392) b!790085))

(assert (= (and b!790088 (not res!535387)) b!790082))

(assert (= (and b!790082 (not res!535390)) b!790087))

(assert (= (and b!790087 (not res!535383)) b!790091))

(assert (= (and b!790091 c!87759) b!790101))

(assert (= (and b!790091 (not c!87759)) b!790095))

(assert (= (and b!790091 (not res!535396)) b!790086))

(declare-fun m!731109 () Bool)

(assert (=> b!790094 m!731109))

(assert (=> b!790094 m!731109))

(declare-fun m!731111 () Bool)

(assert (=> b!790094 m!731111))

(declare-fun m!731113 () Bool)

(assert (=> start!67926 m!731113))

(declare-fun m!731115 () Bool)

(assert (=> start!67926 m!731115))

(assert (=> b!790082 m!731109))

(assert (=> b!790082 m!731109))

(assert (=> b!790082 m!731111))

(declare-fun m!731117 () Bool)

(assert (=> b!790081 m!731117))

(declare-fun m!731119 () Bool)

(assert (=> b!790096 m!731119))

(declare-fun m!731121 () Bool)

(assert (=> b!790093 m!731121))

(assert (=> b!790085 m!731109))

(assert (=> b!790085 m!731109))

(declare-fun m!731123 () Bool)

(assert (=> b!790085 m!731123))

(declare-fun m!731125 () Bool)

(assert (=> b!790087 m!731125))

(declare-fun m!731127 () Bool)

(assert (=> b!790087 m!731127))

(declare-fun m!731129 () Bool)

(assert (=> b!790098 m!731129))

(assert (=> b!790088 m!731109))

(assert (=> b!790088 m!731109))

(declare-fun m!731131 () Bool)

(assert (=> b!790088 m!731131))

(declare-fun m!731133 () Bool)

(assert (=> b!790088 m!731133))

(declare-fun m!731135 () Bool)

(assert (=> b!790088 m!731135))

(assert (=> b!790092 m!731109))

(assert (=> b!790092 m!731109))

(declare-fun m!731137 () Bool)

(assert (=> b!790092 m!731137))

(assert (=> b!790092 m!731137))

(assert (=> b!790092 m!731109))

(declare-fun m!731139 () Bool)

(assert (=> b!790092 m!731139))

(declare-fun m!731141 () Bool)

(assert (=> b!790090 m!731141))

(declare-fun m!731143 () Bool)

(assert (=> b!790090 m!731143))

(declare-fun m!731145 () Bool)

(assert (=> b!790090 m!731145))

(assert (=> b!790090 m!731141))

(assert (=> b!790090 m!731125))

(declare-fun m!731147 () Bool)

(assert (=> b!790090 m!731147))

(declare-fun m!731149 () Bool)

(assert (=> b!790097 m!731149))

(declare-fun m!731151 () Bool)

(assert (=> b!790086 m!731151))

(assert (=> b!790099 m!731109))

(assert (=> b!790099 m!731109))

(declare-fun m!731153 () Bool)

(assert (=> b!790099 m!731153))

(declare-fun m!731155 () Bool)

(assert (=> b!790091 m!731155))

(declare-fun m!731157 () Bool)

(assert (=> b!790091 m!731157))

(declare-fun m!731159 () Bool)

(assert (=> b!790091 m!731159))

(declare-fun m!731161 () Bool)

(assert (=> b!790080 m!731161))

(assert (=> b!790089 m!731109))

(assert (=> b!790089 m!731109))

(declare-fun m!731163 () Bool)

(assert (=> b!790089 m!731163))

(check-sat (not b!790098) (not b!790082) (not b!790089) (not b!790096) (not b!790085) (not b!790086) (not b!790097) (not b!790092) (not b!790081) (not b!790090) (not b!790099) (not b!790094) (not b!790091) (not b!790080) (not b!790088) (not start!67926))
(check-sat)
