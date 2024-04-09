; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67762 () Bool)

(assert start!67762)

(declare-fun b!786278 () Bool)

(declare-fun res!532503 () Bool)

(declare-fun e!437111 () Bool)

(assert (=> b!786278 (=> (not res!532503) (not e!437111))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!42757 0))(
  ( (array!42758 (arr!20463 (Array (_ BitVec 32) (_ BitVec 64))) (size!20884 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42757)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!786278 (= res!532503 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20463 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!786279 () Bool)

(declare-fun e!437113 () Bool)

(assert (=> b!786279 (= e!437111 e!437113)))

(declare-fun res!532504 () Bool)

(assert (=> b!786279 (=> (not res!532504) (not e!437113))))

(declare-datatypes ((SeekEntryResult!8070 0))(
  ( (MissingZero!8070 (index!34647 (_ BitVec 32))) (Found!8070 (index!34648 (_ BitVec 32))) (Intermediate!8070 (undefined!8882 Bool) (index!34649 (_ BitVec 32)) (x!65619 (_ BitVec 32))) (Undefined!8070) (MissingVacant!8070 (index!34650 (_ BitVec 32))) )
))
(declare-fun lt!350686 () SeekEntryResult!8070)

(declare-fun lt!350678 () SeekEntryResult!8070)

(assert (=> b!786279 (= res!532504 (= lt!350686 lt!350678))))

(declare-fun lt!350680 () array!42757)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun lt!350684 () (_ BitVec 64))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42757 (_ BitVec 32)) SeekEntryResult!8070)

(assert (=> b!786279 (= lt!350678 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!350684 lt!350680 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!786279 (= lt!350686 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!350684 mask!3328) lt!350684 lt!350680 mask!3328))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!786279 (= lt!350684 (select (store (arr!20463 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!786279 (= lt!350680 (array!42758 (store (arr!20463 a!3186) i!1173 k!2102) (size!20884 a!3186)))))

(declare-fun b!786280 () Bool)

(declare-fun res!532501 () Bool)

(assert (=> b!786280 (=> (not res!532501) (not e!437111))))

(declare-fun e!437118 () Bool)

(assert (=> b!786280 (= res!532501 e!437118)))

(declare-fun c!87299 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!786280 (= c!87299 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!786281 () Bool)

(declare-fun res!532510 () Bool)

(declare-fun e!437115 () Bool)

(assert (=> b!786281 (=> (not res!532510) (not e!437115))))

(declare-datatypes ((List!14518 0))(
  ( (Nil!14515) (Cons!14514 (h!15637 (_ BitVec 64)) (t!20841 List!14518)) )
))
(declare-fun arrayNoDuplicates!0 (array!42757 (_ BitVec 32) List!14518) Bool)

(assert (=> b!786281 (= res!532510 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14515))))

(declare-fun b!786282 () Bool)

(declare-datatypes ((Unit!27190 0))(
  ( (Unit!27191) )
))
(declare-fun e!437122 () Unit!27190)

(declare-fun Unit!27192 () Unit!27190)

(assert (=> b!786282 (= e!437122 Unit!27192)))

(declare-fun b!786283 () Bool)

(declare-fun e!437116 () Bool)

(declare-fun lt!350679 () SeekEntryResult!8070)

(declare-fun lt!350683 () SeekEntryResult!8070)

(assert (=> b!786283 (= e!437116 (= lt!350679 lt!350683))))

(declare-fun b!786284 () Bool)

(declare-fun e!437121 () Bool)

(assert (=> b!786284 (= e!437113 (not e!437121))))

(declare-fun res!532506 () Bool)

(assert (=> b!786284 (=> res!532506 e!437121)))

(assert (=> b!786284 (= res!532506 (or (not (is-Intermediate!8070 lt!350678)) (bvslt x!1131 (x!65619 lt!350678)) (not (= x!1131 (x!65619 lt!350678))) (not (= index!1321 (index!34649 lt!350678)))))))

(declare-fun e!437112 () Bool)

(assert (=> b!786284 e!437112))

(declare-fun res!532513 () Bool)

(assert (=> b!786284 (=> (not res!532513) (not e!437112))))

(declare-fun lt!350685 () SeekEntryResult!8070)

(assert (=> b!786284 (= res!532513 (= lt!350679 lt!350685))))

(assert (=> b!786284 (= lt!350685 (Found!8070 j!159))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42757 (_ BitVec 32)) SeekEntryResult!8070)

(assert (=> b!786284 (= lt!350679 (seekEntryOrOpen!0 (select (arr!20463 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42757 (_ BitVec 32)) Bool)

(assert (=> b!786284 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!350681 () Unit!27190)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42757 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27190)

(assert (=> b!786284 (= lt!350681 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!786285 () Bool)

(declare-fun e!437119 () Bool)

(assert (=> b!786285 (= e!437119 e!437115)))

(declare-fun res!532512 () Bool)

(assert (=> b!786285 (=> (not res!532512) (not e!437115))))

(declare-fun lt!350687 () SeekEntryResult!8070)

(assert (=> b!786285 (= res!532512 (or (= lt!350687 (MissingZero!8070 i!1173)) (= lt!350687 (MissingVacant!8070 i!1173))))))

(assert (=> b!786285 (= lt!350687 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!786286 () Bool)

(declare-fun e!437117 () Bool)

(declare-fun e!437114 () Bool)

(assert (=> b!786286 (= e!437117 e!437114)))

(declare-fun res!532496 () Bool)

(assert (=> b!786286 (=> res!532496 e!437114)))

(declare-fun lt!350688 () (_ BitVec 64))

(assert (=> b!786286 (= res!532496 (= lt!350688 lt!350684))))

(assert (=> b!786286 (= lt!350688 (select (store (arr!20463 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!786287 () Bool)

(declare-fun res!532499 () Bool)

(assert (=> b!786287 (=> (not res!532499) (not e!437119))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!786287 (= res!532499 (validKeyInArray!0 k!2102))))

(declare-fun b!786288 () Bool)

(declare-fun res!532505 () Bool)

(assert (=> b!786288 (=> (not res!532505) (not e!437119))))

(assert (=> b!786288 (= res!532505 (validKeyInArray!0 (select (arr!20463 a!3186) j!159)))))

(declare-fun lt!350689 () SeekEntryResult!8070)

(declare-fun b!786289 () Bool)

(assert (=> b!786289 (= e!437118 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20463 a!3186) j!159) a!3186 mask!3328) lt!350689))))

(declare-fun res!532509 () Bool)

(assert (=> start!67762 (=> (not res!532509) (not e!437119))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67762 (= res!532509 (validMask!0 mask!3328))))

(assert (=> start!67762 e!437119))

(assert (=> start!67762 true))

(declare-fun array_inv!16237 (array!42757) Bool)

(assert (=> start!67762 (array_inv!16237 a!3186)))

(declare-fun b!786290 () Bool)

(assert (=> b!786290 (= e!437121 e!437117)))

(declare-fun res!532500 () Bool)

(assert (=> b!786290 (=> res!532500 e!437117)))

(assert (=> b!786290 (= res!532500 (not (= lt!350683 lt!350685)))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42757 (_ BitVec 32)) SeekEntryResult!8070)

(assert (=> b!786290 (= lt!350683 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20463 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!786291 () Bool)

(declare-fun Unit!27193 () Unit!27190)

(assert (=> b!786291 (= e!437122 Unit!27193)))

(assert (=> b!786291 false))

(declare-fun b!786292 () Bool)

(declare-fun res!532502 () Bool)

(assert (=> b!786292 (=> (not res!532502) (not e!437116))))

(assert (=> b!786292 (= res!532502 (= (seekEntryOrOpen!0 lt!350684 lt!350680 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!350684 lt!350680 mask!3328)))))

(declare-fun b!786293 () Bool)

(declare-fun res!532497 () Bool)

(assert (=> b!786293 (=> (not res!532497) (not e!437115))))

(assert (=> b!786293 (= res!532497 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20884 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20884 a!3186))))))

(declare-fun b!786294 () Bool)

(declare-fun res!532508 () Bool)

(assert (=> b!786294 (=> (not res!532508) (not e!437115))))

(assert (=> b!786294 (= res!532508 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!786295 () Bool)

(declare-fun res!532498 () Bool)

(assert (=> b!786295 (=> (not res!532498) (not e!437119))))

(declare-fun arrayContainsKey!0 (array!42757 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!786295 (= res!532498 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!786296 () Bool)

(assert (=> b!786296 (= e!437114 true)))

(assert (=> b!786296 e!437116))

(declare-fun res!532495 () Bool)

(assert (=> b!786296 (=> (not res!532495) (not e!437116))))

(assert (=> b!786296 (= res!532495 (= lt!350688 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!350682 () Unit!27190)

(assert (=> b!786296 (= lt!350682 e!437122)))

(declare-fun c!87300 () Bool)

(assert (=> b!786296 (= c!87300 (= lt!350688 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!786297 () Bool)

(assert (=> b!786297 (= e!437118 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20463 a!3186) j!159) a!3186 mask!3328) (Found!8070 j!159)))))

(declare-fun b!786298 () Bool)

(assert (=> b!786298 (= e!437115 e!437111)))

(declare-fun res!532511 () Bool)

(assert (=> b!786298 (=> (not res!532511) (not e!437111))))

(assert (=> b!786298 (= res!532511 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20463 a!3186) j!159) mask!3328) (select (arr!20463 a!3186) j!159) a!3186 mask!3328) lt!350689))))

(assert (=> b!786298 (= lt!350689 (Intermediate!8070 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!786299 () Bool)

(declare-fun res!532507 () Bool)

(assert (=> b!786299 (=> (not res!532507) (not e!437119))))

(assert (=> b!786299 (= res!532507 (and (= (size!20884 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20884 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20884 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!786300 () Bool)

(assert (=> b!786300 (= e!437112 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20463 a!3186) j!159) a!3186 mask!3328) lt!350685))))

(assert (= (and start!67762 res!532509) b!786299))

(assert (= (and b!786299 res!532507) b!786288))

(assert (= (and b!786288 res!532505) b!786287))

(assert (= (and b!786287 res!532499) b!786295))

(assert (= (and b!786295 res!532498) b!786285))

(assert (= (and b!786285 res!532512) b!786294))

(assert (= (and b!786294 res!532508) b!786281))

(assert (= (and b!786281 res!532510) b!786293))

(assert (= (and b!786293 res!532497) b!786298))

(assert (= (and b!786298 res!532511) b!786278))

(assert (= (and b!786278 res!532503) b!786280))

(assert (= (and b!786280 c!87299) b!786289))

(assert (= (and b!786280 (not c!87299)) b!786297))

(assert (= (and b!786280 res!532501) b!786279))

(assert (= (and b!786279 res!532504) b!786284))

(assert (= (and b!786284 res!532513) b!786300))

(assert (= (and b!786284 (not res!532506)) b!786290))

(assert (= (and b!786290 (not res!532500)) b!786286))

(assert (= (and b!786286 (not res!532496)) b!786296))

(assert (= (and b!786296 c!87300) b!786291))

(assert (= (and b!786296 (not c!87300)) b!786282))

(assert (= (and b!786296 res!532495) b!786292))

(assert (= (and b!786292 res!532502) b!786283))

(declare-fun m!728185 () Bool)

(assert (=> start!67762 m!728185))

(declare-fun m!728187 () Bool)

(assert (=> start!67762 m!728187))

(declare-fun m!728189 () Bool)

(assert (=> b!786278 m!728189))

(declare-fun m!728191 () Bool)

(assert (=> b!786294 m!728191))

(declare-fun m!728193 () Bool)

(assert (=> b!786289 m!728193))

(assert (=> b!786289 m!728193))

(declare-fun m!728195 () Bool)

(assert (=> b!786289 m!728195))

(assert (=> b!786297 m!728193))

(assert (=> b!786297 m!728193))

(declare-fun m!728197 () Bool)

(assert (=> b!786297 m!728197))

(declare-fun m!728199 () Bool)

(assert (=> b!786286 m!728199))

(declare-fun m!728201 () Bool)

(assert (=> b!786286 m!728201))

(assert (=> b!786298 m!728193))

(assert (=> b!786298 m!728193))

(declare-fun m!728203 () Bool)

(assert (=> b!786298 m!728203))

(assert (=> b!786298 m!728203))

(assert (=> b!786298 m!728193))

(declare-fun m!728205 () Bool)

(assert (=> b!786298 m!728205))

(assert (=> b!786288 m!728193))

(assert (=> b!786288 m!728193))

(declare-fun m!728207 () Bool)

(assert (=> b!786288 m!728207))

(declare-fun m!728209 () Bool)

(assert (=> b!786287 m!728209))

(declare-fun m!728211 () Bool)

(assert (=> b!786295 m!728211))

(declare-fun m!728213 () Bool)

(assert (=> b!786279 m!728213))

(declare-fun m!728215 () Bool)

(assert (=> b!786279 m!728215))

(assert (=> b!786279 m!728199))

(assert (=> b!786279 m!728213))

(declare-fun m!728217 () Bool)

(assert (=> b!786279 m!728217))

(declare-fun m!728219 () Bool)

(assert (=> b!786279 m!728219))

(declare-fun m!728221 () Bool)

(assert (=> b!786285 m!728221))

(assert (=> b!786290 m!728193))

(assert (=> b!786290 m!728193))

(assert (=> b!786290 m!728197))

(declare-fun m!728223 () Bool)

(assert (=> b!786292 m!728223))

(declare-fun m!728225 () Bool)

(assert (=> b!786292 m!728225))

(assert (=> b!786300 m!728193))

(assert (=> b!786300 m!728193))

(declare-fun m!728227 () Bool)

(assert (=> b!786300 m!728227))

(declare-fun m!728229 () Bool)

(assert (=> b!786281 m!728229))

(assert (=> b!786284 m!728193))

(assert (=> b!786284 m!728193))

(declare-fun m!728231 () Bool)

(assert (=> b!786284 m!728231))

(declare-fun m!728233 () Bool)

(assert (=> b!786284 m!728233))

(declare-fun m!728235 () Bool)

(assert (=> b!786284 m!728235))

(push 1)

