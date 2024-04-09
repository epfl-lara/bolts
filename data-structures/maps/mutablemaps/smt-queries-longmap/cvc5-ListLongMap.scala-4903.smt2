; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67678 () Bool)

(assert start!67678)

(declare-fun b!783387 () Bool)

(declare-fun e!435601 () Bool)

(declare-fun e!435602 () Bool)

(assert (=> b!783387 (= e!435601 (not e!435602))))

(declare-fun res!530115 () Bool)

(assert (=> b!783387 (=> res!530115 e!435602)))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8028 0))(
  ( (MissingZero!8028 (index!34479 (_ BitVec 32))) (Found!8028 (index!34480 (_ BitVec 32))) (Intermediate!8028 (undefined!8840 Bool) (index!34481 (_ BitVec 32)) (x!65465 (_ BitVec 32))) (Undefined!8028) (MissingVacant!8028 (index!34482 (_ BitVec 32))) )
))
(declare-fun lt!349176 () SeekEntryResult!8028)

(assert (=> b!783387 (= res!530115 (or (not (is-Intermediate!8028 lt!349176)) (bvslt x!1131 (x!65465 lt!349176)) (not (= x!1131 (x!65465 lt!349176))) (not (= index!1321 (index!34481 lt!349176)))))))

(declare-fun e!435604 () Bool)

(assert (=> b!783387 e!435604))

(declare-fun res!530111 () Bool)

(assert (=> b!783387 (=> (not res!530111) (not e!435604))))

(declare-fun lt!349174 () SeekEntryResult!8028)

(declare-fun lt!349173 () SeekEntryResult!8028)

(assert (=> b!783387 (= res!530111 (= lt!349174 lt!349173))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!783387 (= lt!349173 (Found!8028 j!159))))

(declare-datatypes ((array!42673 0))(
  ( (array!42674 (arr!20421 (Array (_ BitVec 32) (_ BitVec 64))) (size!20842 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42673)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42673 (_ BitVec 32)) SeekEntryResult!8028)

(assert (=> b!783387 (= lt!349174 (seekEntryOrOpen!0 (select (arr!20421 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42673 (_ BitVec 32)) Bool)

(assert (=> b!783387 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!27022 0))(
  ( (Unit!27023) )
))
(declare-fun lt!349168 () Unit!27022)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42673 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27022)

(assert (=> b!783387 (= lt!349168 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!783388 () Bool)

(declare-fun e!435607 () Bool)

(assert (=> b!783388 (= e!435607 e!435601)))

(declare-fun res!530120 () Bool)

(assert (=> b!783388 (=> (not res!530120) (not e!435601))))

(declare-fun lt!349171 () SeekEntryResult!8028)

(assert (=> b!783388 (= res!530120 (= lt!349171 lt!349176))))

(declare-fun lt!349166 () array!42673)

(declare-fun lt!349175 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42673 (_ BitVec 32)) SeekEntryResult!8028)

(assert (=> b!783388 (= lt!349176 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!349175 lt!349166 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!783388 (= lt!349171 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!349175 mask!3328) lt!349175 lt!349166 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!783388 (= lt!349175 (select (store (arr!20421 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!783388 (= lt!349166 (array!42674 (store (arr!20421 a!3186) i!1173 k!2102) (size!20842 a!3186)))))

(declare-fun b!783389 () Bool)

(declare-fun res!530109 () Bool)

(declare-fun e!435599 () Bool)

(assert (=> b!783389 (=> (not res!530109) (not e!435599))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!783389 (= res!530109 (validKeyInArray!0 (select (arr!20421 a!3186) j!159)))))

(declare-fun b!783390 () Bool)

(declare-fun res!530121 () Bool)

(declare-fun e!435610 () Bool)

(assert (=> b!783390 (=> (not res!530121) (not e!435610))))

(assert (=> b!783390 (= res!530121 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!783391 () Bool)

(declare-fun res!530119 () Bool)

(assert (=> b!783391 (=> (not res!530119) (not e!435599))))

(declare-fun arrayContainsKey!0 (array!42673 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!783391 (= res!530119 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!783392 () Bool)

(assert (=> b!783392 (= e!435610 e!435607)))

(declare-fun res!530112 () Bool)

(assert (=> b!783392 (=> (not res!530112) (not e!435607))))

(declare-fun lt!349169 () SeekEntryResult!8028)

(assert (=> b!783392 (= res!530112 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20421 a!3186) j!159) mask!3328) (select (arr!20421 a!3186) j!159) a!3186 mask!3328) lt!349169))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!783392 (= lt!349169 (Intermediate!8028 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!783393 () Bool)

(declare-fun res!530108 () Bool)

(assert (=> b!783393 (=> (not res!530108) (not e!435599))))

(assert (=> b!783393 (= res!530108 (validKeyInArray!0 k!2102))))

(declare-fun b!783394 () Bool)

(declare-fun res!530118 () Bool)

(assert (=> b!783394 (=> (not res!530118) (not e!435607))))

(declare-fun e!435603 () Bool)

(assert (=> b!783394 (= res!530118 e!435603)))

(declare-fun c!87047 () Bool)

(assert (=> b!783394 (= c!87047 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!783395 () Bool)

(declare-fun e!435600 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42673 (_ BitVec 32)) SeekEntryResult!8028)

(assert (=> b!783395 (= e!435600 (= (seekEntryOrOpen!0 lt!349175 lt!349166 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!349175 lt!349166 mask!3328)))))

(declare-fun b!783396 () Bool)

(assert (=> b!783396 (= e!435599 e!435610)))

(declare-fun res!530114 () Bool)

(assert (=> b!783396 (=> (not res!530114) (not e!435610))))

(declare-fun lt!349172 () SeekEntryResult!8028)

(assert (=> b!783396 (= res!530114 (or (= lt!349172 (MissingZero!8028 i!1173)) (= lt!349172 (MissingVacant!8028 i!1173))))))

(assert (=> b!783396 (= lt!349172 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!783397 () Bool)

(declare-fun e!435605 () Bool)

(declare-fun lt!349177 () SeekEntryResult!8028)

(assert (=> b!783397 (= e!435605 (= lt!349174 lt!349177))))

(assert (=> b!783397 e!435600))

(declare-fun res!530117 () Bool)

(assert (=> b!783397 (=> (not res!530117) (not e!435600))))

(declare-fun lt!349170 () (_ BitVec 64))

(assert (=> b!783397 (= res!530117 (= lt!349170 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!349167 () Unit!27022)

(declare-fun e!435609 () Unit!27022)

(assert (=> b!783397 (= lt!349167 e!435609)))

(declare-fun c!87048 () Bool)

(assert (=> b!783397 (= c!87048 (= lt!349170 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!783399 () Bool)

(declare-fun Unit!27024 () Unit!27022)

(assert (=> b!783399 (= e!435609 Unit!27024)))

(assert (=> b!783399 false))

(declare-fun b!783400 () Bool)

(declare-fun res!530116 () Bool)

(assert (=> b!783400 (=> (not res!530116) (not e!435607))))

(assert (=> b!783400 (= res!530116 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20421 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!783401 () Bool)

(assert (=> b!783401 (= e!435604 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20421 a!3186) j!159) a!3186 mask!3328) lt!349173))))

(declare-fun b!783402 () Bool)

(declare-fun res!530125 () Bool)

(assert (=> b!783402 (=> (not res!530125) (not e!435610))))

(declare-datatypes ((List!14476 0))(
  ( (Nil!14473) (Cons!14472 (h!15595 (_ BitVec 64)) (t!20799 List!14476)) )
))
(declare-fun arrayNoDuplicates!0 (array!42673 (_ BitVec 32) List!14476) Bool)

(assert (=> b!783402 (= res!530125 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14473))))

(declare-fun b!783403 () Bool)

(assert (=> b!783403 (= e!435603 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20421 a!3186) j!159) a!3186 mask!3328) (Found!8028 j!159)))))

(declare-fun b!783404 () Bool)

(declare-fun res!530124 () Bool)

(assert (=> b!783404 (=> (not res!530124) (not e!435599))))

(assert (=> b!783404 (= res!530124 (and (= (size!20842 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20842 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20842 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!783405 () Bool)

(declare-fun e!435606 () Bool)

(assert (=> b!783405 (= e!435606 e!435605)))

(declare-fun res!530113 () Bool)

(assert (=> b!783405 (=> res!530113 e!435605)))

(assert (=> b!783405 (= res!530113 (= lt!349170 lt!349175))))

(assert (=> b!783405 (= lt!349170 (select (store (arr!20421 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!783406 () Bool)

(declare-fun res!530122 () Bool)

(assert (=> b!783406 (=> (not res!530122) (not e!435610))))

(assert (=> b!783406 (= res!530122 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20842 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20842 a!3186))))))

(declare-fun b!783407 () Bool)

(declare-fun Unit!27025 () Unit!27022)

(assert (=> b!783407 (= e!435609 Unit!27025)))

(declare-fun b!783408 () Bool)

(assert (=> b!783408 (= e!435603 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20421 a!3186) j!159) a!3186 mask!3328) lt!349169))))

(declare-fun b!783398 () Bool)

(assert (=> b!783398 (= e!435602 e!435606)))

(declare-fun res!530110 () Bool)

(assert (=> b!783398 (=> res!530110 e!435606)))

(assert (=> b!783398 (= res!530110 (not (= lt!349177 lt!349173)))))

(assert (=> b!783398 (= lt!349177 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20421 a!3186) j!159) a!3186 mask!3328))))

(declare-fun res!530123 () Bool)

(assert (=> start!67678 (=> (not res!530123) (not e!435599))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67678 (= res!530123 (validMask!0 mask!3328))))

(assert (=> start!67678 e!435599))

(assert (=> start!67678 true))

(declare-fun array_inv!16195 (array!42673) Bool)

(assert (=> start!67678 (array_inv!16195 a!3186)))

(assert (= (and start!67678 res!530123) b!783404))

(assert (= (and b!783404 res!530124) b!783389))

(assert (= (and b!783389 res!530109) b!783393))

(assert (= (and b!783393 res!530108) b!783391))

(assert (= (and b!783391 res!530119) b!783396))

(assert (= (and b!783396 res!530114) b!783390))

(assert (= (and b!783390 res!530121) b!783402))

(assert (= (and b!783402 res!530125) b!783406))

(assert (= (and b!783406 res!530122) b!783392))

(assert (= (and b!783392 res!530112) b!783400))

(assert (= (and b!783400 res!530116) b!783394))

(assert (= (and b!783394 c!87047) b!783408))

(assert (= (and b!783394 (not c!87047)) b!783403))

(assert (= (and b!783394 res!530118) b!783388))

(assert (= (and b!783388 res!530120) b!783387))

(assert (= (and b!783387 res!530111) b!783401))

(assert (= (and b!783387 (not res!530115)) b!783398))

(assert (= (and b!783398 (not res!530110)) b!783405))

(assert (= (and b!783405 (not res!530113)) b!783397))

(assert (= (and b!783397 c!87048) b!783399))

(assert (= (and b!783397 (not c!87048)) b!783407))

(assert (= (and b!783397 res!530117) b!783395))

(declare-fun m!726001 () Bool)

(assert (=> b!783395 m!726001))

(declare-fun m!726003 () Bool)

(assert (=> b!783395 m!726003))

(declare-fun m!726005 () Bool)

(assert (=> b!783388 m!726005))

(declare-fun m!726007 () Bool)

(assert (=> b!783388 m!726007))

(declare-fun m!726009 () Bool)

(assert (=> b!783388 m!726009))

(declare-fun m!726011 () Bool)

(assert (=> b!783388 m!726011))

(assert (=> b!783388 m!726009))

(declare-fun m!726013 () Bool)

(assert (=> b!783388 m!726013))

(declare-fun m!726015 () Bool)

(assert (=> b!783396 m!726015))

(declare-fun m!726017 () Bool)

(assert (=> b!783392 m!726017))

(assert (=> b!783392 m!726017))

(declare-fun m!726019 () Bool)

(assert (=> b!783392 m!726019))

(assert (=> b!783392 m!726019))

(assert (=> b!783392 m!726017))

(declare-fun m!726021 () Bool)

(assert (=> b!783392 m!726021))

(assert (=> b!783401 m!726017))

(assert (=> b!783401 m!726017))

(declare-fun m!726023 () Bool)

(assert (=> b!783401 m!726023))

(assert (=> b!783387 m!726017))

(assert (=> b!783387 m!726017))

(declare-fun m!726025 () Bool)

(assert (=> b!783387 m!726025))

(declare-fun m!726027 () Bool)

(assert (=> b!783387 m!726027))

(declare-fun m!726029 () Bool)

(assert (=> b!783387 m!726029))

(assert (=> b!783408 m!726017))

(assert (=> b!783408 m!726017))

(declare-fun m!726031 () Bool)

(assert (=> b!783408 m!726031))

(declare-fun m!726033 () Bool)

(assert (=> b!783390 m!726033))

(declare-fun m!726035 () Bool)

(assert (=> start!67678 m!726035))

(declare-fun m!726037 () Bool)

(assert (=> start!67678 m!726037))

(assert (=> b!783389 m!726017))

(assert (=> b!783389 m!726017))

(declare-fun m!726039 () Bool)

(assert (=> b!783389 m!726039))

(declare-fun m!726041 () Bool)

(assert (=> b!783402 m!726041))

(declare-fun m!726043 () Bool)

(assert (=> b!783393 m!726043))

(assert (=> b!783398 m!726017))

(assert (=> b!783398 m!726017))

(declare-fun m!726045 () Bool)

(assert (=> b!783398 m!726045))

(assert (=> b!783403 m!726017))

(assert (=> b!783403 m!726017))

(assert (=> b!783403 m!726045))

(declare-fun m!726047 () Bool)

(assert (=> b!783391 m!726047))

(declare-fun m!726049 () Bool)

(assert (=> b!783400 m!726049))

(assert (=> b!783405 m!726005))

(declare-fun m!726051 () Bool)

(assert (=> b!783405 m!726051))

(push 1)

