; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65862 () Bool)

(assert start!65862)

(declare-fun b!758387 () Bool)

(declare-fun res!513177 () Bool)

(declare-fun e!422845 () Bool)

(assert (=> b!758387 (=> (not res!513177) (not e!422845))))

(declare-datatypes ((array!41988 0))(
  ( (array!41989 (arr!20104 (Array (_ BitVec 32) (_ BitVec 64))) (size!20525 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41988)

(declare-datatypes ((List!14159 0))(
  ( (Nil!14156) (Cons!14155 (h!15227 (_ BitVec 64)) (t!20482 List!14159)) )
))
(declare-fun arrayNoDuplicates!0 (array!41988 (_ BitVec 32) List!14159) Bool)

(assert (=> b!758387 (= res!513177 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14156))))

(declare-fun b!758388 () Bool)

(declare-fun e!422849 () Bool)

(assert (=> b!758388 (= e!422845 e!422849)))

(declare-fun res!513166 () Bool)

(assert (=> b!758388 (=> (not res!513166) (not e!422849))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7711 0))(
  ( (MissingZero!7711 (index!33211 (_ BitVec 32))) (Found!7711 (index!33212 (_ BitVec 32))) (Intermediate!7711 (undefined!8523 Bool) (index!33213 (_ BitVec 32)) (x!64126 (_ BitVec 32))) (Undefined!7711) (MissingVacant!7711 (index!33214 (_ BitVec 32))) )
))
(declare-fun lt!337885 () SeekEntryResult!7711)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41988 (_ BitVec 32)) SeekEntryResult!7711)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!758388 (= res!513166 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20104 a!3186) j!159) mask!3328) (select (arr!20104 a!3186) j!159) a!3186 mask!3328) lt!337885))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!758388 (= lt!337885 (Intermediate!7711 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!758389 () Bool)

(declare-fun res!513173 () Bool)

(declare-fun e!422842 () Bool)

(assert (=> b!758389 (=> (not res!513173) (not e!422842))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!758389 (= res!513173 (validKeyInArray!0 (select (arr!20104 a!3186) j!159)))))

(declare-fun b!758390 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun e!422850 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41988 (_ BitVec 32)) SeekEntryResult!7711)

(assert (=> b!758390 (= e!422850 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20104 a!3186) j!159) a!3186 mask!3328) (Found!7711 j!159)))))

(declare-fun b!758391 () Bool)

(assert (=> b!758391 (= e!422842 e!422845)))

(declare-fun res!513167 () Bool)

(assert (=> b!758391 (=> (not res!513167) (not e!422845))))

(declare-fun lt!337892 () SeekEntryResult!7711)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!758391 (= res!513167 (or (= lt!337892 (MissingZero!7711 i!1173)) (= lt!337892 (MissingVacant!7711 i!1173))))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41988 (_ BitVec 32)) SeekEntryResult!7711)

(assert (=> b!758391 (= lt!337892 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!758392 () Bool)

(declare-fun e!422841 () Bool)

(declare-fun e!422846 () Bool)

(assert (=> b!758392 (= e!422841 (not e!422846))))

(declare-fun res!513182 () Bool)

(assert (=> b!758392 (=> res!513182 e!422846)))

(declare-fun lt!337887 () SeekEntryResult!7711)

(get-info :version)

(assert (=> b!758392 (= res!513182 (or (not ((_ is Intermediate!7711) lt!337887)) (bvslt x!1131 (x!64126 lt!337887)) (not (= x!1131 (x!64126 lt!337887))) (not (= index!1321 (index!33213 lt!337887)))))))

(declare-fun e!422843 () Bool)

(assert (=> b!758392 e!422843))

(declare-fun res!513171 () Bool)

(assert (=> b!758392 (=> (not res!513171) (not e!422843))))

(declare-fun lt!337884 () SeekEntryResult!7711)

(declare-fun lt!337894 () SeekEntryResult!7711)

(assert (=> b!758392 (= res!513171 (= lt!337884 lt!337894))))

(assert (=> b!758392 (= lt!337894 (Found!7711 j!159))))

(assert (=> b!758392 (= lt!337884 (seekEntryOrOpen!0 (select (arr!20104 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41988 (_ BitVec 32)) Bool)

(assert (=> b!758392 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!26246 0))(
  ( (Unit!26247) )
))
(declare-fun lt!337881 () Unit!26246)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41988 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26246)

(assert (=> b!758392 (= lt!337881 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!758393 () Bool)

(declare-fun res!513178 () Bool)

(assert (=> b!758393 (=> (not res!513178) (not e!422842))))

(assert (=> b!758393 (= res!513178 (and (= (size!20525 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20525 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20525 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!758394 () Bool)

(declare-fun e!422839 () Unit!26246)

(declare-fun Unit!26248 () Unit!26246)

(assert (=> b!758394 (= e!422839 Unit!26248)))

(declare-fun res!513168 () Bool)

(assert (=> start!65862 (=> (not res!513168) (not e!422842))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65862 (= res!513168 (validMask!0 mask!3328))))

(assert (=> start!65862 e!422842))

(assert (=> start!65862 true))

(declare-fun array_inv!15878 (array!41988) Bool)

(assert (=> start!65862 (array_inv!15878 a!3186)))

(declare-fun b!758395 () Bool)

(declare-fun e!422848 () Bool)

(assert (=> b!758395 (= e!422848 (bvsge mask!3328 #b00000000000000000000000000000000))))

(declare-fun lt!337889 () SeekEntryResult!7711)

(declare-fun lt!337893 () SeekEntryResult!7711)

(assert (=> b!758395 (= lt!337889 lt!337893)))

(declare-fun lt!337883 () Unit!26246)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!41988 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26246)

(assert (=> b!758395 (= lt!337883 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3186 i!1173 k0!2102 j!159 index!1321 x!1131 resIntermediateIndex!5 index!1321 mask!3328))))

(declare-fun b!758396 () Bool)

(declare-fun res!513174 () Bool)

(assert (=> b!758396 (=> (not res!513174) (not e!422849))))

(assert (=> b!758396 (= res!513174 e!422850)))

(declare-fun c!82991 () Bool)

(assert (=> b!758396 (= c!82991 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!758397 () Bool)

(declare-fun res!513181 () Bool)

(assert (=> b!758397 (=> (not res!513181) (not e!422842))))

(declare-fun arrayContainsKey!0 (array!41988 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!758397 (= res!513181 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!758398 () Bool)

(declare-fun res!513183 () Bool)

(assert (=> b!758398 (=> (not res!513183) (not e!422849))))

(assert (=> b!758398 (= res!513183 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20104 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!758399 () Bool)

(assert (=> b!758399 (= e!422850 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20104 a!3186) j!159) a!3186 mask!3328) lt!337885))))

(declare-fun b!758400 () Bool)

(assert (=> b!758400 (= e!422849 e!422841)))

(declare-fun res!513175 () Bool)

(assert (=> b!758400 (=> (not res!513175) (not e!422841))))

(declare-fun lt!337888 () SeekEntryResult!7711)

(assert (=> b!758400 (= res!513175 (= lt!337888 lt!337887))))

(declare-fun lt!337882 () (_ BitVec 64))

(declare-fun lt!337886 () array!41988)

(assert (=> b!758400 (= lt!337887 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!337882 lt!337886 mask!3328))))

(assert (=> b!758400 (= lt!337888 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!337882 mask!3328) lt!337882 lt!337886 mask!3328))))

(assert (=> b!758400 (= lt!337882 (select (store (arr!20104 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!758400 (= lt!337886 (array!41989 (store (arr!20104 a!3186) i!1173 k0!2102) (size!20525 a!3186)))))

(declare-fun b!758401 () Bool)

(declare-fun e!422844 () Bool)

(assert (=> b!758401 (= e!422846 e!422844)))

(declare-fun res!513180 () Bool)

(assert (=> b!758401 (=> res!513180 e!422844)))

(assert (=> b!758401 (= res!513180 (not (= lt!337893 lt!337894)))))

(assert (=> b!758401 (= lt!337893 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20104 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!758402 () Bool)

(declare-fun res!513169 () Bool)

(assert (=> b!758402 (=> (not res!513169) (not e!422842))))

(assert (=> b!758402 (= res!513169 (validKeyInArray!0 k0!2102))))

(declare-fun b!758403 () Bool)

(declare-fun e!422840 () Bool)

(assert (=> b!758403 (= e!422844 e!422840)))

(declare-fun res!513176 () Bool)

(assert (=> b!758403 (=> res!513176 e!422840)))

(declare-fun lt!337891 () (_ BitVec 64))

(assert (=> b!758403 (= res!513176 (= lt!337891 lt!337882))))

(assert (=> b!758403 (= lt!337891 (select (store (arr!20104 a!3186) i!1173 k0!2102) index!1321))))

(declare-fun b!758404 () Bool)

(assert (=> b!758404 (= e!422840 e!422848)))

(declare-fun res!513170 () Bool)

(assert (=> b!758404 (=> res!513170 e!422848)))

(assert (=> b!758404 (= res!513170 (or (not (= (select (arr!20104 a!3186) index!1321) #b1000000000000000000000000000000000000000000000000000000000000000)) (= index!1321 resIntermediateIndex!5)))))

(declare-fun lt!337895 () SeekEntryResult!7711)

(assert (=> b!758404 (and (= lt!337895 lt!337889) (= lt!337884 lt!337893))))

(assert (=> b!758404 (= lt!337889 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!337882 lt!337886 mask!3328))))

(assert (=> b!758404 (= lt!337895 (seekEntryOrOpen!0 lt!337882 lt!337886 mask!3328))))

(assert (=> b!758404 (= lt!337891 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!337890 () Unit!26246)

(assert (=> b!758404 (= lt!337890 e!422839)))

(declare-fun c!82992 () Bool)

(assert (=> b!758404 (= c!82992 (= lt!337891 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!758405 () Bool)

(declare-fun Unit!26249 () Unit!26246)

(assert (=> b!758405 (= e!422839 Unit!26249)))

(assert (=> b!758405 false))

(declare-fun b!758406 () Bool)

(assert (=> b!758406 (= e!422843 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20104 a!3186) j!159) a!3186 mask!3328) lt!337894))))

(declare-fun b!758407 () Bool)

(declare-fun res!513172 () Bool)

(assert (=> b!758407 (=> (not res!513172) (not e!422845))))

(assert (=> b!758407 (= res!513172 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20525 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20525 a!3186))))))

(declare-fun b!758408 () Bool)

(declare-fun res!513179 () Bool)

(assert (=> b!758408 (=> (not res!513179) (not e!422845))))

(assert (=> b!758408 (= res!513179 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(assert (= (and start!65862 res!513168) b!758393))

(assert (= (and b!758393 res!513178) b!758389))

(assert (= (and b!758389 res!513173) b!758402))

(assert (= (and b!758402 res!513169) b!758397))

(assert (= (and b!758397 res!513181) b!758391))

(assert (= (and b!758391 res!513167) b!758408))

(assert (= (and b!758408 res!513179) b!758387))

(assert (= (and b!758387 res!513177) b!758407))

(assert (= (and b!758407 res!513172) b!758388))

(assert (= (and b!758388 res!513166) b!758398))

(assert (= (and b!758398 res!513183) b!758396))

(assert (= (and b!758396 c!82991) b!758399))

(assert (= (and b!758396 (not c!82991)) b!758390))

(assert (= (and b!758396 res!513174) b!758400))

(assert (= (and b!758400 res!513175) b!758392))

(assert (= (and b!758392 res!513171) b!758406))

(assert (= (and b!758392 (not res!513182)) b!758401))

(assert (= (and b!758401 (not res!513180)) b!758403))

(assert (= (and b!758403 (not res!513176)) b!758404))

(assert (= (and b!758404 c!82992) b!758405))

(assert (= (and b!758404 (not c!82992)) b!758394))

(assert (= (and b!758404 (not res!513170)) b!758395))

(declare-fun m!705957 () Bool)

(assert (=> b!758395 m!705957))

(declare-fun m!705959 () Bool)

(assert (=> b!758392 m!705959))

(assert (=> b!758392 m!705959))

(declare-fun m!705961 () Bool)

(assert (=> b!758392 m!705961))

(declare-fun m!705963 () Bool)

(assert (=> b!758392 m!705963))

(declare-fun m!705965 () Bool)

(assert (=> b!758392 m!705965))

(assert (=> b!758406 m!705959))

(assert (=> b!758406 m!705959))

(declare-fun m!705967 () Bool)

(assert (=> b!758406 m!705967))

(declare-fun m!705969 () Bool)

(assert (=> b!758398 m!705969))

(assert (=> b!758390 m!705959))

(assert (=> b!758390 m!705959))

(declare-fun m!705971 () Bool)

(assert (=> b!758390 m!705971))

(assert (=> b!758388 m!705959))

(assert (=> b!758388 m!705959))

(declare-fun m!705973 () Bool)

(assert (=> b!758388 m!705973))

(assert (=> b!758388 m!705973))

(assert (=> b!758388 m!705959))

(declare-fun m!705975 () Bool)

(assert (=> b!758388 m!705975))

(assert (=> b!758389 m!705959))

(assert (=> b!758389 m!705959))

(declare-fun m!705977 () Bool)

(assert (=> b!758389 m!705977))

(declare-fun m!705979 () Bool)

(assert (=> b!758408 m!705979))

(declare-fun m!705981 () Bool)

(assert (=> start!65862 m!705981))

(declare-fun m!705983 () Bool)

(assert (=> start!65862 m!705983))

(declare-fun m!705985 () Bool)

(assert (=> b!758402 m!705985))

(assert (=> b!758401 m!705959))

(assert (=> b!758401 m!705959))

(assert (=> b!758401 m!705971))

(assert (=> b!758399 m!705959))

(assert (=> b!758399 m!705959))

(declare-fun m!705987 () Bool)

(assert (=> b!758399 m!705987))

(declare-fun m!705989 () Bool)

(assert (=> b!758400 m!705989))

(declare-fun m!705991 () Bool)

(assert (=> b!758400 m!705991))

(declare-fun m!705993 () Bool)

(assert (=> b!758400 m!705993))

(declare-fun m!705995 () Bool)

(assert (=> b!758400 m!705995))

(assert (=> b!758400 m!705995))

(declare-fun m!705997 () Bool)

(assert (=> b!758400 m!705997))

(declare-fun m!705999 () Bool)

(assert (=> b!758397 m!705999))

(declare-fun m!706001 () Bool)

(assert (=> b!758391 m!706001))

(assert (=> b!758403 m!705989))

(declare-fun m!706003 () Bool)

(assert (=> b!758403 m!706003))

(declare-fun m!706005 () Bool)

(assert (=> b!758387 m!706005))

(declare-fun m!706007 () Bool)

(assert (=> b!758404 m!706007))

(declare-fun m!706009 () Bool)

(assert (=> b!758404 m!706009))

(declare-fun m!706011 () Bool)

(assert (=> b!758404 m!706011))

(check-sat (not b!758391) (not b!758387) (not b!758399) (not b!758392) (not b!758397) (not b!758395) (not b!758389) (not b!758404) (not b!758388) (not start!65862) (not b!758402) (not b!758401) (not b!758390) (not b!758408) (not b!758400) (not b!758406))
(check-sat)
