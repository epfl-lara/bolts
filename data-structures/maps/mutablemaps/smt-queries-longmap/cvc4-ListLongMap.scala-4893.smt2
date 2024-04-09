; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67490 () Bool)

(assert start!67490)

(declare-fun b!780733 () Bool)

(declare-fun res!528423 () Bool)

(declare-fun e!434274 () Bool)

(assert (=> b!780733 (=> (not res!528423) (not e!434274))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!780733 (= res!528423 (validKeyInArray!0 k!2102))))

(declare-fun b!780735 () Bool)

(declare-fun res!528415 () Bool)

(declare-fun e!434271 () Bool)

(assert (=> b!780735 (=> (not res!528415) (not e!434271))))

(declare-datatypes ((array!42611 0))(
  ( (array!42612 (arr!20393 (Array (_ BitVec 32) (_ BitVec 64))) (size!20814 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42611)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42611 (_ BitVec 32)) Bool)

(assert (=> b!780735 (= res!528415 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!780736 () Bool)

(declare-fun res!528419 () Bool)

(declare-fun e!434273 () Bool)

(assert (=> b!780736 (=> res!528419 e!434273)))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun lt!347957 () (_ BitVec 64))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!780736 (= res!528419 (= (select (store (arr!20393 a!3186) i!1173 k!2102) index!1321) lt!347957))))

(declare-fun b!780737 () Bool)

(assert (=> b!780737 (= e!434274 e!434271)))

(declare-fun res!528424 () Bool)

(assert (=> b!780737 (=> (not res!528424) (not e!434271))))

(declare-datatypes ((SeekEntryResult!8000 0))(
  ( (MissingZero!8000 (index!34367 (_ BitVec 32))) (Found!8000 (index!34368 (_ BitVec 32))) (Intermediate!8000 (undefined!8812 Bool) (index!34369 (_ BitVec 32)) (x!65339 (_ BitVec 32))) (Undefined!8000) (MissingVacant!8000 (index!34370 (_ BitVec 32))) )
))
(declare-fun lt!347959 () SeekEntryResult!8000)

(assert (=> b!780737 (= res!528424 (or (= lt!347959 (MissingZero!8000 i!1173)) (= lt!347959 (MissingVacant!8000 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42611 (_ BitVec 32)) SeekEntryResult!8000)

(assert (=> b!780737 (= lt!347959 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!780738 () Bool)

(declare-fun e!434278 () Bool)

(declare-fun e!434275 () Bool)

(assert (=> b!780738 (= e!434278 e!434275)))

(declare-fun res!528413 () Bool)

(assert (=> b!780738 (=> (not res!528413) (not e!434275))))

(declare-fun lt!347951 () SeekEntryResult!8000)

(declare-fun lt!347950 () SeekEntryResult!8000)

(assert (=> b!780738 (= res!528413 (= lt!347951 lt!347950))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun lt!347958 () array!42611)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42611 (_ BitVec 32)) SeekEntryResult!8000)

(assert (=> b!780738 (= lt!347950 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!347957 lt!347958 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!780738 (= lt!347951 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!347957 mask!3328) lt!347957 lt!347958 mask!3328))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!780738 (= lt!347957 (select (store (arr!20393 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!780738 (= lt!347958 (array!42612 (store (arr!20393 a!3186) i!1173 k!2102) (size!20814 a!3186)))))

(declare-fun b!780739 () Bool)

(declare-fun res!528410 () Bool)

(assert (=> b!780739 (=> (not res!528410) (not e!434274))))

(assert (=> b!780739 (= res!528410 (validKeyInArray!0 (select (arr!20393 a!3186) j!159)))))

(declare-fun b!780740 () Bool)

(declare-datatypes ((Unit!26910 0))(
  ( (Unit!26911) )
))
(declare-fun e!434277 () Unit!26910)

(declare-fun Unit!26912 () Unit!26910)

(assert (=> b!780740 (= e!434277 Unit!26912)))

(declare-fun b!780741 () Bool)

(declare-fun res!528408 () Bool)

(assert (=> b!780741 (=> (not res!528408) (not e!434274))))

(declare-fun arrayContainsKey!0 (array!42611 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!780741 (= res!528408 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!780742 () Bool)

(declare-fun res!528414 () Bool)

(assert (=> b!780742 (=> (not res!528414) (not e!434278))))

(declare-fun e!434276 () Bool)

(assert (=> b!780742 (= res!528414 e!434276)))

(declare-fun c!86567 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!780742 (= c!86567 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!780743 () Bool)

(declare-fun res!528412 () Bool)

(assert (=> b!780743 (=> (not res!528412) (not e!434278))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!780743 (= res!528412 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20393 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!780744 () Bool)

(declare-fun Unit!26913 () Unit!26910)

(assert (=> b!780744 (= e!434277 Unit!26913)))

(assert (=> b!780744 false))

(declare-fun b!780745 () Bool)

(declare-fun res!528409 () Bool)

(assert (=> b!780745 (=> (not res!528409) (not e!434271))))

(declare-datatypes ((List!14448 0))(
  ( (Nil!14445) (Cons!14444 (h!15561 (_ BitVec 64)) (t!20771 List!14448)) )
))
(declare-fun arrayNoDuplicates!0 (array!42611 (_ BitVec 32) List!14448) Bool)

(assert (=> b!780745 (= res!528409 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14445))))

(declare-fun res!528422 () Bool)

(assert (=> start!67490 (=> (not res!528422) (not e!434274))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67490 (= res!528422 (validMask!0 mask!3328))))

(assert (=> start!67490 e!434274))

(assert (=> start!67490 true))

(declare-fun array_inv!16167 (array!42611) Bool)

(assert (=> start!67490 (array_inv!16167 a!3186)))

(declare-fun lt!347954 () SeekEntryResult!8000)

(declare-fun b!780734 () Bool)

(assert (=> b!780734 (= e!434276 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20393 a!3186) j!159) a!3186 mask!3328) lt!347954))))

(declare-fun b!780746 () Bool)

(declare-fun res!528417 () Bool)

(assert (=> b!780746 (=> res!528417 e!434273)))

(declare-fun lt!347956 () SeekEntryResult!8000)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42611 (_ BitVec 32)) SeekEntryResult!8000)

(assert (=> b!780746 (= res!528417 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20393 a!3186) j!159) a!3186 mask!3328) lt!347956)))))

(declare-fun b!780747 () Bool)

(assert (=> b!780747 (= e!434273 (= (select (store (arr!20393 a!3186) i!1173 k!2102) index!1321) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!347952 () Unit!26910)

(assert (=> b!780747 (= lt!347952 e!434277)))

(declare-fun c!86568 () Bool)

(assert (=> b!780747 (= c!86568 (= (select (store (arr!20393 a!3186) i!1173 k!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!780748 () Bool)

(declare-fun res!528421 () Bool)

(assert (=> b!780748 (=> (not res!528421) (not e!434271))))

(assert (=> b!780748 (= res!528421 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20814 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20814 a!3186))))))

(declare-fun b!780749 () Bool)

(assert (=> b!780749 (= e!434275 (not e!434273))))

(declare-fun res!528411 () Bool)

(assert (=> b!780749 (=> res!528411 e!434273)))

(assert (=> b!780749 (= res!528411 (or (not (is-Intermediate!8000 lt!347950)) (bvslt x!1131 (x!65339 lt!347950)) (not (= x!1131 (x!65339 lt!347950))) (not (= index!1321 (index!34369 lt!347950)))))))

(declare-fun e!434272 () Bool)

(assert (=> b!780749 e!434272))

(declare-fun res!528418 () Bool)

(assert (=> b!780749 (=> (not res!528418) (not e!434272))))

(declare-fun lt!347953 () SeekEntryResult!8000)

(assert (=> b!780749 (= res!528418 (= lt!347953 lt!347956))))

(assert (=> b!780749 (= lt!347956 (Found!8000 j!159))))

(assert (=> b!780749 (= lt!347953 (seekEntryOrOpen!0 (select (arr!20393 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!780749 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!347955 () Unit!26910)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42611 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26910)

(assert (=> b!780749 (= lt!347955 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!780750 () Bool)

(assert (=> b!780750 (= e!434271 e!434278)))

(declare-fun res!528420 () Bool)

(assert (=> b!780750 (=> (not res!528420) (not e!434278))))

(assert (=> b!780750 (= res!528420 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20393 a!3186) j!159) mask!3328) (select (arr!20393 a!3186) j!159) a!3186 mask!3328) lt!347954))))

(assert (=> b!780750 (= lt!347954 (Intermediate!8000 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!780751 () Bool)

(declare-fun res!528416 () Bool)

(assert (=> b!780751 (=> (not res!528416) (not e!434274))))

(assert (=> b!780751 (= res!528416 (and (= (size!20814 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20814 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20814 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!780752 () Bool)

(assert (=> b!780752 (= e!434276 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20393 a!3186) j!159) a!3186 mask!3328) (Found!8000 j!159)))))

(declare-fun b!780753 () Bool)

(assert (=> b!780753 (= e!434272 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20393 a!3186) j!159) a!3186 mask!3328) lt!347956))))

(assert (= (and start!67490 res!528422) b!780751))

(assert (= (and b!780751 res!528416) b!780739))

(assert (= (and b!780739 res!528410) b!780733))

(assert (= (and b!780733 res!528423) b!780741))

(assert (= (and b!780741 res!528408) b!780737))

(assert (= (and b!780737 res!528424) b!780735))

(assert (= (and b!780735 res!528415) b!780745))

(assert (= (and b!780745 res!528409) b!780748))

(assert (= (and b!780748 res!528421) b!780750))

(assert (= (and b!780750 res!528420) b!780743))

(assert (= (and b!780743 res!528412) b!780742))

(assert (= (and b!780742 c!86567) b!780734))

(assert (= (and b!780742 (not c!86567)) b!780752))

(assert (= (and b!780742 res!528414) b!780738))

(assert (= (and b!780738 res!528413) b!780749))

(assert (= (and b!780749 res!528418) b!780753))

(assert (= (and b!780749 (not res!528411)) b!780746))

(assert (= (and b!780746 (not res!528417)) b!780736))

(assert (= (and b!780736 (not res!528419)) b!780747))

(assert (= (and b!780747 c!86568) b!780744))

(assert (= (and b!780747 (not c!86568)) b!780740))

(declare-fun m!724009 () Bool)

(assert (=> b!780749 m!724009))

(assert (=> b!780749 m!724009))

(declare-fun m!724011 () Bool)

(assert (=> b!780749 m!724011))

(declare-fun m!724013 () Bool)

(assert (=> b!780749 m!724013))

(declare-fun m!724015 () Bool)

(assert (=> b!780749 m!724015))

(declare-fun m!724017 () Bool)

(assert (=> b!780733 m!724017))

(declare-fun m!724019 () Bool)

(assert (=> b!780736 m!724019))

(declare-fun m!724021 () Bool)

(assert (=> b!780736 m!724021))

(declare-fun m!724023 () Bool)

(assert (=> b!780735 m!724023))

(declare-fun m!724025 () Bool)

(assert (=> b!780737 m!724025))

(declare-fun m!724027 () Bool)

(assert (=> b!780745 m!724027))

(assert (=> b!780746 m!724009))

(assert (=> b!780746 m!724009))

(declare-fun m!724029 () Bool)

(assert (=> b!780746 m!724029))

(assert (=> b!780750 m!724009))

(assert (=> b!780750 m!724009))

(declare-fun m!724031 () Bool)

(assert (=> b!780750 m!724031))

(assert (=> b!780750 m!724031))

(assert (=> b!780750 m!724009))

(declare-fun m!724033 () Bool)

(assert (=> b!780750 m!724033))

(declare-fun m!724035 () Bool)

(assert (=> start!67490 m!724035))

(declare-fun m!724037 () Bool)

(assert (=> start!67490 m!724037))

(assert (=> b!780747 m!724019))

(assert (=> b!780747 m!724021))

(assert (=> b!780752 m!724009))

(assert (=> b!780752 m!724009))

(assert (=> b!780752 m!724029))

(declare-fun m!724039 () Bool)

(assert (=> b!780743 m!724039))

(declare-fun m!724041 () Bool)

(assert (=> b!780741 m!724041))

(assert (=> b!780734 m!724009))

(assert (=> b!780734 m!724009))

(declare-fun m!724043 () Bool)

(assert (=> b!780734 m!724043))

(assert (=> b!780753 m!724009))

(assert (=> b!780753 m!724009))

(declare-fun m!724045 () Bool)

(assert (=> b!780753 m!724045))

(assert (=> b!780739 m!724009))

(assert (=> b!780739 m!724009))

(declare-fun m!724047 () Bool)

(assert (=> b!780739 m!724047))

(declare-fun m!724049 () Bool)

(assert (=> b!780738 m!724049))

(declare-fun m!724051 () Bool)

(assert (=> b!780738 m!724051))

(assert (=> b!780738 m!724019))

(declare-fun m!724053 () Bool)

(assert (=> b!780738 m!724053))

(declare-fun m!724055 () Bool)

(assert (=> b!780738 m!724055))

(assert (=> b!780738 m!724049))

(push 1)

(assert (not b!780750))

(assert (not b!780746))

(assert (not b!780735))

(assert (not b!780733))

(assert (not b!780741))

(assert (not b!780745))

(assert (not b!780739))

(assert (not b!780753))

(assert (not b!780752))

(assert (not start!67490))

(assert (not b!780749))

(assert (not b!780737))

(assert (not b!780734))

(assert (not b!780738))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun e!434347 () SeekEntryResult!8000)

(declare-fun b!780859 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!780859 (= e!434347 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) lt!347957 lt!347958 mask!3328))))

(declare-fun b!780860 () Bool)

(declare-fun e!434343 () SeekEntryResult!8000)

(assert (=> b!780860 (= e!434343 e!434347)))

(declare-fun c!86608 () Bool)

(declare-fun lt!347997 () (_ BitVec 64))

(assert (=> b!780860 (= c!86608 (or (= lt!347997 lt!347957) (= (bvadd lt!347997 lt!347997) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!780861 () Bool)

(declare-fun lt!347998 () SeekEntryResult!8000)

(assert (=> b!780861 (and (bvsge (index!34369 lt!347998) #b00000000000000000000000000000000) (bvslt (index!34369 lt!347998) (size!20814 lt!347958)))))

(declare-fun res!528453 () Bool)

(assert (=> b!780861 (= res!528453 (= (select (arr!20393 lt!347958) (index!34369 lt!347998)) lt!347957))))

(declare-fun e!434344 () Bool)

(assert (=> b!780861 (=> res!528453 e!434344)))

(declare-fun e!434345 () Bool)

(assert (=> b!780861 (= e!434345 e!434344)))

(declare-fun b!780862 () Bool)

(declare-fun e!434346 () Bool)

(assert (=> b!780862 (= e!434346 e!434345)))

(declare-fun res!528454 () Bool)

(assert (=> b!780862 (= res!528454 (and (is-Intermediate!8000 lt!347998) (not (undefined!8812 lt!347998)) (bvslt (x!65339 lt!347998) #b01111111111111111111111111111110) (bvsge (x!65339 lt!347998) #b00000000000000000000000000000000) (bvsge (x!65339 lt!347998) x!1131)))))

(assert (=> b!780862 (=> (not res!528454) (not e!434345))))

(declare-fun b!780863 () Bool)

(assert (=> b!780863 (and (bvsge (index!34369 lt!347998) #b00000000000000000000000000000000) (bvslt (index!34369 lt!347998) (size!20814 lt!347958)))))

(assert (=> b!780863 (= e!434344 (= (select (arr!20393 lt!347958) (index!34369 lt!347998)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!102453 () Bool)

(assert (=> d!102453 e!434346))

(declare-fun c!86610 () Bool)

(assert (=> d!102453 (= c!86610 (and (is-Intermediate!8000 lt!347998) (undefined!8812 lt!347998)))))

(assert (=> d!102453 (= lt!347998 e!434343)))

(declare-fun c!86609 () Bool)

(assert (=> d!102453 (= c!86609 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!102453 (= lt!347997 (select (arr!20393 lt!347958) index!1321))))

(assert (=> d!102453 (validMask!0 mask!3328)))

(assert (=> d!102453 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!347957 lt!347958 mask!3328) lt!347998)))

(declare-fun b!780864 () Bool)

(assert (=> b!780864 (= e!434347 (Intermediate!8000 false index!1321 x!1131))))

(declare-fun b!780865 () Bool)

(assert (=> b!780865 (= e!434346 (bvsge (x!65339 lt!347998) #b01111111111111111111111111111110))))

(declare-fun b!780866 () Bool)

(assert (=> b!780866 (and (bvsge (index!34369 lt!347998) #b00000000000000000000000000000000) (bvslt (index!34369 lt!347998) (size!20814 lt!347958)))))

(declare-fun res!528452 () Bool)

(assert (=> b!780866 (= res!528452 (= (select (arr!20393 lt!347958) (index!34369 lt!347998)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!780866 (=> res!528452 e!434344)))

(declare-fun b!780867 () Bool)

(assert (=> b!780867 (= e!434343 (Intermediate!8000 true index!1321 x!1131))))

(assert (= (and d!102453 c!86609) b!780867))

(assert (= (and d!102453 (not c!86609)) b!780860))

(assert (= (and b!780860 c!86608) b!780864))

(assert (= (and b!780860 (not c!86608)) b!780859))

(assert (= (and d!102453 c!86610) b!780865))

(assert (= (and d!102453 (not c!86610)) b!780862))

(assert (= (and b!780862 res!528454) b!780861))

(assert (= (and b!780861 (not res!528453)) b!780866))

(assert (= (and b!780866 (not res!528452)) b!780863))

(declare-fun m!724107 () Bool)

(assert (=> b!780859 m!724107))

(assert (=> b!780859 m!724107))

(declare-fun m!724109 () Bool)

(assert (=> b!780859 m!724109))

(declare-fun m!724111 () Bool)

(assert (=> b!780861 m!724111))

(declare-fun m!724113 () Bool)

(assert (=> d!102453 m!724113))

(assert (=> d!102453 m!724035))

(assert (=> b!780866 m!724111))

(assert (=> b!780863 m!724111))

(assert (=> b!780738 d!102453))

(declare-fun b!780868 () Bool)

(declare-fun e!434352 () SeekEntryResult!8000)

(assert (=> b!780868 (= e!434352 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!347957 mask!3328) #b00000000000000000000000000000000 mask!3328) lt!347957 lt!347958 mask!3328))))

(declare-fun b!780869 () Bool)

(declare-fun e!434348 () SeekEntryResult!8000)

(assert (=> b!780869 (= e!434348 e!434352)))

(declare-fun c!86611 () Bool)

(declare-fun lt!347999 () (_ BitVec 64))

(assert (=> b!780869 (= c!86611 (or (= lt!347999 lt!347957) (= (bvadd lt!347999 lt!347999) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!780870 () Bool)

(declare-fun lt!348000 () SeekEntryResult!8000)

(assert (=> b!780870 (and (bvsge (index!34369 lt!348000) #b00000000000000000000000000000000) (bvslt (index!34369 lt!348000) (size!20814 lt!347958)))))

(declare-fun res!528456 () Bool)

(assert (=> b!780870 (= res!528456 (= (select (arr!20393 lt!347958) (index!34369 lt!348000)) lt!347957))))

(declare-fun e!434349 () Bool)

(assert (=> b!780870 (=> res!528456 e!434349)))

(declare-fun e!434350 () Bool)

(assert (=> b!780870 (= e!434350 e!434349)))

(declare-fun b!780871 () Bool)

(declare-fun e!434351 () Bool)

(assert (=> b!780871 (= e!434351 e!434350)))

(declare-fun res!528457 () Bool)

(assert (=> b!780871 (= res!528457 (and (is-Intermediate!8000 lt!348000) (not (undefined!8812 lt!348000)) (bvslt (x!65339 lt!348000) #b01111111111111111111111111111110) (bvsge (x!65339 lt!348000) #b00000000000000000000000000000000) (bvsge (x!65339 lt!348000) #b00000000000000000000000000000000)))))

(assert (=> b!780871 (=> (not res!528457) (not e!434350))))

(declare-fun b!780872 () Bool)

(assert (=> b!780872 (and (bvsge (index!34369 lt!348000) #b00000000000000000000000000000000) (bvslt (index!34369 lt!348000) (size!20814 lt!347958)))))

(assert (=> b!780872 (= e!434349 (= (select (arr!20393 lt!347958) (index!34369 lt!348000)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!102459 () Bool)

(assert (=> d!102459 e!434351))

(declare-fun c!86613 () Bool)

(assert (=> d!102459 (= c!86613 (and (is-Intermediate!8000 lt!348000) (undefined!8812 lt!348000)))))

(assert (=> d!102459 (= lt!348000 e!434348)))

(declare-fun c!86612 () Bool)

(assert (=> d!102459 (= c!86612 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!102459 (= lt!347999 (select (arr!20393 lt!347958) (toIndex!0 lt!347957 mask!3328)))))

(assert (=> d!102459 (validMask!0 mask!3328)))

(assert (=> d!102459 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!347957 mask!3328) lt!347957 lt!347958 mask!3328) lt!348000)))

(declare-fun b!780873 () Bool)

(assert (=> b!780873 (= e!434352 (Intermediate!8000 false (toIndex!0 lt!347957 mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!780874 () Bool)

(assert (=> b!780874 (= e!434351 (bvsge (x!65339 lt!348000) #b01111111111111111111111111111110))))

(declare-fun b!780875 () Bool)

(assert (=> b!780875 (and (bvsge (index!34369 lt!348000) #b00000000000000000000000000000000) (bvslt (index!34369 lt!348000) (size!20814 lt!347958)))))

(declare-fun res!528455 () Bool)

(assert (=> b!780875 (= res!528455 (= (select (arr!20393 lt!347958) (index!34369 lt!348000)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!780875 (=> res!528455 e!434349)))

(declare-fun b!780876 () Bool)

(assert (=> b!780876 (= e!434348 (Intermediate!8000 true (toIndex!0 lt!347957 mask!3328) #b00000000000000000000000000000000))))

(assert (= (and d!102459 c!86612) b!780876))

(assert (= (and d!102459 (not c!86612)) b!780869))

(assert (= (and b!780869 c!86611) b!780873))

(assert (= (and b!780869 (not c!86611)) b!780868))

(assert (= (and d!102459 c!86613) b!780874))

(assert (= (and d!102459 (not c!86613)) b!780871))

(assert (= (and b!780871 res!528457) b!780870))

(assert (= (and b!780870 (not res!528456)) b!780875))

(assert (= (and b!780875 (not res!528455)) b!780872))

(assert (=> b!780868 m!724049))

(declare-fun m!724115 () Bool)

(assert (=> b!780868 m!724115))

(assert (=> b!780868 m!724115))

(declare-fun m!724117 () Bool)

(assert (=> b!780868 m!724117))

(declare-fun m!724119 () Bool)

(assert (=> b!780870 m!724119))

(assert (=> d!102459 m!724049))

(declare-fun m!724121 () Bool)

(assert (=> d!102459 m!724121))

(assert (=> d!102459 m!724035))

(assert (=> b!780875 m!724119))

(assert (=> b!780872 m!724119))

(assert (=> b!780738 d!102459))

(declare-fun d!102461 () Bool)

(declare-fun lt!348012 () (_ BitVec 32))

(declare-fun lt!348011 () (_ BitVec 32))

(assert (=> d!102461 (= lt!348012 (bvmul (bvxor lt!348011 (bvlshr lt!348011 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!102461 (= lt!348011 ((_ extract 31 0) (bvand (bvxor lt!347957 (bvlshr lt!347957 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!102461 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!528458 (let ((h!15562 ((_ extract 31 0) (bvand (bvxor lt!347957 (bvlshr lt!347957 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!65343 (bvmul (bvxor h!15562 (bvlshr h!15562 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!65343 (bvlshr x!65343 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!528458 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!528458 #b00000000000000000000000000000000))))))

(assert (=> d!102461 (= (toIndex!0 lt!347957 mask!3328) (bvand (bvxor lt!348012 (bvlshr lt!348012 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!780738 d!102461))

(declare-fun lt!348037 () SeekEntryResult!8000)

(declare-fun b!780967 () Bool)

(declare-fun e!434411 () SeekEntryResult!8000)

(assert (=> b!780967 (= e!434411 (seekKeyOrZeroReturnVacant!0 (x!65339 lt!348037) (index!34369 lt!348037) (index!34369 lt!348037) (select (arr!20393 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!780968 () Bool)

(declare-fun e!434410 () SeekEntryResult!8000)

(assert (=> b!780968 (= e!434410 (Found!8000 (index!34369 lt!348037)))))

(declare-fun b!780969 () Bool)

(declare-fun e!434412 () SeekEntryResult!8000)

(assert (=> b!780969 (= e!434412 Undefined!8000)))

(declare-fun b!780971 () Bool)

(assert (=> b!780971 (= e!434411 (MissingZero!8000 (index!34369 lt!348037)))))

(declare-fun b!780972 () Bool)

(declare-fun c!86646 () Bool)

(declare-fun lt!348038 () (_ BitVec 64))

(assert (=> b!780972 (= c!86646 (= lt!348038 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!780972 (= e!434410 e!434411)))

(declare-fun d!102471 () Bool)

(declare-fun lt!348039 () SeekEntryResult!8000)

(assert (=> d!102471 (and (or (is-Undefined!8000 lt!348039) (not (is-Found!8000 lt!348039)) (and (bvsge (index!34368 lt!348039) #b00000000000000000000000000000000) (bvslt (index!34368 lt!348039) (size!20814 a!3186)))) (or (is-Undefined!8000 lt!348039) (is-Found!8000 lt!348039) (not (is-MissingZero!8000 lt!348039)) (and (bvsge (index!34367 lt!348039) #b00000000000000000000000000000000) (bvslt (index!34367 lt!348039) (size!20814 a!3186)))) (or (is-Undefined!8000 lt!348039) (is-Found!8000 lt!348039) (is-MissingZero!8000 lt!348039) (not (is-MissingVacant!8000 lt!348039)) (and (bvsge (index!34370 lt!348039) #b00000000000000000000000000000000) (bvslt (index!34370 lt!348039) (size!20814 a!3186)))) (or (is-Undefined!8000 lt!348039) (ite (is-Found!8000 lt!348039) (= (select (arr!20393 a!3186) (index!34368 lt!348039)) (select (arr!20393 a!3186) j!159)) (ite (is-MissingZero!8000 lt!348039) (= (select (arr!20393 a!3186) (index!34367 lt!348039)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!8000 lt!348039) (= (select (arr!20393 a!3186) (index!34370 lt!348039)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!102471 (= lt!348039 e!434412)))

(declare-fun c!86644 () Bool)

(assert (=> d!102471 (= c!86644 (and (is-Intermediate!8000 lt!348037) (undefined!8812 lt!348037)))))

(assert (=> d!102471 (= lt!348037 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20393 a!3186) j!159) mask!3328) (select (arr!20393 a!3186) j!159) a!3186 mask!3328))))

(assert (=> d!102471 (validMask!0 mask!3328)))

(assert (=> d!102471 (= (seekEntryOrOpen!0 (select (arr!20393 a!3186) j!159) a!3186 mask!3328) lt!348039)))

(declare-fun b!780970 () Bool)

(assert (=> b!780970 (= e!434412 e!434410)))

(assert (=> b!780970 (= lt!348038 (select (arr!20393 a!3186) (index!34369 lt!348037)))))

(declare-fun c!86645 () Bool)

(assert (=> b!780970 (= c!86645 (= lt!348038 (select (arr!20393 a!3186) j!159)))))

(assert (= (and d!102471 c!86644) b!780969))

(assert (= (and d!102471 (not c!86644)) b!780970))

(assert (= (and b!780970 c!86645) b!780968))

(assert (= (and b!780970 (not c!86645)) b!780972))

(assert (= (and b!780972 c!86646) b!780971))

(assert (= (and b!780972 (not c!86646)) b!780967))

(assert (=> b!780967 m!724009))

(declare-fun m!724157 () Bool)

(assert (=> b!780967 m!724157))

(declare-fun m!724159 () Bool)

(assert (=> d!102471 m!724159))

(declare-fun m!724161 () Bool)

(assert (=> d!102471 m!724161))

(assert (=> d!102471 m!724035))

(assert (=> d!102471 m!724031))

(assert (=> d!102471 m!724009))

(assert (=> d!102471 m!724033))

(assert (=> d!102471 m!724009))

(assert (=> d!102471 m!724031))

(declare-fun m!724163 () Bool)

(assert (=> d!102471 m!724163))

(declare-fun m!724165 () Bool)

(assert (=> b!780970 m!724165))

(assert (=> b!780749 d!102471))

(declare-fun bm!35248 () Bool)

(declare-fun call!35251 () Bool)

(assert (=> bm!35248 (= call!35251 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!159 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun b!781015 () Bool)

(declare-fun e!434438 () Bool)

(declare-fun e!434439 () Bool)

(assert (=> b!781015 (= e!434438 e!434439)))

(declare-fun c!86662 () Bool)

(assert (=> b!781015 (= c!86662 (validKeyInArray!0 (select (arr!20393 a!3186) j!159)))))

(declare-fun b!781016 () Bool)

(declare-fun e!434440 () Bool)

(assert (=> b!781016 (= e!434440 call!35251)))

(declare-fun d!102483 () Bool)

(declare-fun res!528503 () Bool)

(assert (=> d!102483 (=> res!528503 e!434438)))

(assert (=> d!102483 (= res!528503 (bvsge j!159 (size!20814 a!3186)))))

(assert (=> d!102483 (= (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328) e!434438)))

(declare-fun b!781017 () Bool)

(assert (=> b!781017 (= e!434439 call!35251)))

(declare-fun b!781018 () Bool)

(assert (=> b!781018 (= e!434439 e!434440)))

(declare-fun lt!348065 () (_ BitVec 64))

(assert (=> b!781018 (= lt!348065 (select (arr!20393 a!3186) j!159))))

(declare-fun lt!348064 () Unit!26910)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!42611 (_ BitVec 64) (_ BitVec 32)) Unit!26910)

(assert (=> b!781018 (= lt!348064 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!348065 j!159))))

(assert (=> b!781018 (arrayContainsKey!0 a!3186 lt!348065 #b00000000000000000000000000000000)))

(declare-fun lt!348066 () Unit!26910)

(assert (=> b!781018 (= lt!348066 lt!348064)))

(declare-fun res!528502 () Bool)

(assert (=> b!781018 (= res!528502 (= (seekEntryOrOpen!0 (select (arr!20393 a!3186) j!159) a!3186 mask!3328) (Found!8000 j!159)))))

(assert (=> b!781018 (=> (not res!528502) (not e!434440))))

(assert (= (and d!102483 (not res!528503)) b!781015))

(assert (= (and b!781015 c!86662) b!781018))

(assert (= (and b!781015 (not c!86662)) b!781017))

(assert (= (and b!781018 res!528502) b!781016))

(assert (= (or b!781016 b!781017) bm!35248))

(declare-fun m!724205 () Bool)

(assert (=> bm!35248 m!724205))

(assert (=> b!781015 m!724009))

(assert (=> b!781015 m!724009))

(assert (=> b!781015 m!724047))

(assert (=> b!781018 m!724009))

(declare-fun m!724209 () Bool)

(assert (=> b!781018 m!724209))

(declare-fun m!724211 () Bool)

(assert (=> b!781018 m!724211))

(assert (=> b!781018 m!724009))

(assert (=> b!781018 m!724011))

(assert (=> b!780749 d!102483))

(declare-fun d!102495 () Bool)

(assert (=> d!102495 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!348077 () Unit!26910)

(declare-fun choose!38 (array!42611 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26910)

(assert (=> d!102495 (= lt!348077 (choose!38 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(assert (=> d!102495 (validMask!0 mask!3328)))

(assert (=> d!102495 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159) lt!348077)))

(declare-fun bs!21722 () Bool)

(assert (= bs!21722 d!102495))

(assert (=> bs!21722 m!724013))

(declare-fun m!724225 () Bool)

(assert (=> bs!21722 m!724225))

(assert (=> bs!21722 m!724035))

(assert (=> b!780749 d!102495))

(declare-fun b!781046 () Bool)

(declare-fun e!434460 () SeekEntryResult!8000)

(assert (=> b!781046 (= e!434460 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!20393 a!3186) j!159) mask!3328) #b00000000000000000000000000000000 mask!3328) (select (arr!20393 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!781047 () Bool)

(declare-fun e!434456 () SeekEntryResult!8000)

(assert (=> b!781047 (= e!434456 e!434460)))

(declare-fun lt!348078 () (_ BitVec 64))

(declare-fun c!86672 () Bool)

(assert (=> b!781047 (= c!86672 (or (= lt!348078 (select (arr!20393 a!3186) j!159)) (= (bvadd lt!348078 lt!348078) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!781048 () Bool)

(declare-fun lt!348079 () SeekEntryResult!8000)

(assert (=> b!781048 (and (bvsge (index!34369 lt!348079) #b00000000000000000000000000000000) (bvslt (index!34369 lt!348079) (size!20814 a!3186)))))

(declare-fun res!528514 () Bool)

(assert (=> b!781048 (= res!528514 (= (select (arr!20393 a!3186) (index!34369 lt!348079)) (select (arr!20393 a!3186) j!159)))))

(declare-fun e!434457 () Bool)

(assert (=> b!781048 (=> res!528514 e!434457)))

(declare-fun e!434458 () Bool)

(assert (=> b!781048 (= e!434458 e!434457)))

(declare-fun b!781049 () Bool)

(declare-fun e!434459 () Bool)

(assert (=> b!781049 (= e!434459 e!434458)))

(declare-fun res!528515 () Bool)

(assert (=> b!781049 (= res!528515 (and (is-Intermediate!8000 lt!348079) (not (undefined!8812 lt!348079)) (bvslt (x!65339 lt!348079) #b01111111111111111111111111111110) (bvsge (x!65339 lt!348079) #b00000000000000000000000000000000) (bvsge (x!65339 lt!348079) #b00000000000000000000000000000000)))))

(assert (=> b!781049 (=> (not res!528515) (not e!434458))))

(declare-fun b!781050 () Bool)

(assert (=> b!781050 (and (bvsge (index!34369 lt!348079) #b00000000000000000000000000000000) (bvslt (index!34369 lt!348079) (size!20814 a!3186)))))

(assert (=> b!781050 (= e!434457 (= (select (arr!20393 a!3186) (index!34369 lt!348079)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!102501 () Bool)

(assert (=> d!102501 e!434459))

(declare-fun c!86674 () Bool)

(assert (=> d!102501 (= c!86674 (and (is-Intermediate!8000 lt!348079) (undefined!8812 lt!348079)))))

(assert (=> d!102501 (= lt!348079 e!434456)))

(declare-fun c!86673 () Bool)

(assert (=> d!102501 (= c!86673 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!102501 (= lt!348078 (select (arr!20393 a!3186) (toIndex!0 (select (arr!20393 a!3186) j!159) mask!3328)))))

(assert (=> d!102501 (validMask!0 mask!3328)))

(assert (=> d!102501 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20393 a!3186) j!159) mask!3328) (select (arr!20393 a!3186) j!159) a!3186 mask!3328) lt!348079)))

(declare-fun b!781051 () Bool)

(assert (=> b!781051 (= e!434460 (Intermediate!8000 false (toIndex!0 (select (arr!20393 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!781052 () Bool)

(assert (=> b!781052 (= e!434459 (bvsge (x!65339 lt!348079) #b01111111111111111111111111111110))))

(declare-fun b!781053 () Bool)

(assert (=> b!781053 (and (bvsge (index!34369 lt!348079) #b00000000000000000000000000000000) (bvslt (index!34369 lt!348079) (size!20814 a!3186)))))

(declare-fun res!528513 () Bool)

(assert (=> b!781053 (= res!528513 (= (select (arr!20393 a!3186) (index!34369 lt!348079)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!781053 (=> res!528513 e!434457)))

(declare-fun b!781054 () Bool)

(assert (=> b!781054 (= e!434456 (Intermediate!8000 true (toIndex!0 (select (arr!20393 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(assert (= (and d!102501 c!86673) b!781054))

(assert (= (and d!102501 (not c!86673)) b!781047))

(assert (= (and b!781047 c!86672) b!781051))

(assert (= (and b!781047 (not c!86672)) b!781046))

(assert (= (and d!102501 c!86674) b!781052))

(assert (= (and d!102501 (not c!86674)) b!781049))

(assert (= (and b!781049 res!528515) b!781048))

(assert (= (and b!781048 (not res!528514)) b!781053))

(assert (= (and b!781053 (not res!528513)) b!781050))

(assert (=> b!781046 m!724031))

(declare-fun m!724227 () Bool)

(assert (=> b!781046 m!724227))

(assert (=> b!781046 m!724227))

(assert (=> b!781046 m!724009))

(declare-fun m!724229 () Bool)

(assert (=> b!781046 m!724229))

(declare-fun m!724231 () Bool)

(assert (=> b!781048 m!724231))

(assert (=> d!102501 m!724031))

(declare-fun m!724233 () Bool)

(assert (=> d!102501 m!724233))

(assert (=> d!102501 m!724035))

(assert (=> b!781053 m!724231))

(assert (=> b!781050 m!724231))

(assert (=> b!780750 d!102501))

(declare-fun d!102503 () Bool)

(declare-fun lt!348081 () (_ BitVec 32))

(declare-fun lt!348080 () (_ BitVec 32))

(assert (=> d!102503 (= lt!348081 (bvmul (bvxor lt!348080 (bvlshr lt!348080 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!102503 (= lt!348080 ((_ extract 31 0) (bvand (bvxor (select (arr!20393 a!3186) j!159) (bvlshr (select (arr!20393 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!102503 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!528458 (let ((h!15562 ((_ extract 31 0) (bvand (bvxor (select (arr!20393 a!3186) j!159) (bvlshr (select (arr!20393 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!65343 (bvmul (bvxor h!15562 (bvlshr h!15562 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!65343 (bvlshr x!65343 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!528458 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!528458 #b00000000000000000000000000000000))))))

(assert (=> d!102503 (= (toIndex!0 (select (arr!20393 a!3186) j!159) mask!3328) (bvand (bvxor lt!348081 (bvlshr lt!348081 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!780750 d!102503))

(declare-fun d!102505 () Bool)

(assert (=> d!102505 (= (validKeyInArray!0 (select (arr!20393 a!3186) j!159)) (and (not (= (select (arr!20393 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!20393 a!3186) j!159) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!780739 d!102505))

(declare-fun b!781110 () Bool)

(declare-fun c!86697 () Bool)

(declare-fun lt!348112 () (_ BitVec 64))

(assert (=> b!781110 (= c!86697 (= lt!348112 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!434493 () SeekEntryResult!8000)

(declare-fun e!434492 () SeekEntryResult!8000)

(assert (=> b!781110 (= e!434493 e!434492)))

(declare-fun b!781112 () Bool)

(declare-fun e!434491 () SeekEntryResult!8000)

(assert (=> b!781112 (= e!434491 Undefined!8000)))

(declare-fun b!781113 () Bool)

(assert (=> b!781113 (= e!434493 (Found!8000 index!1321))))

(declare-fun b!781114 () Bool)

(assert (=> b!781114 (= e!434492 (seekKeyOrZeroReturnVacant!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) resIntermediateIndex!5 (select (arr!20393 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!781115 () Bool)

(assert (=> b!781115 (= e!434491 e!434493)))

(declare-fun c!86699 () Bool)

(assert (=> b!781115 (= c!86699 (= lt!348112 (select (arr!20393 a!3186) j!159)))))

(declare-fun lt!348111 () SeekEntryResult!8000)

(declare-fun d!102507 () Bool)

(assert (=> d!102507 (and (or (is-Undefined!8000 lt!348111) (not (is-Found!8000 lt!348111)) (and (bvsge (index!34368 lt!348111) #b00000000000000000000000000000000) (bvslt (index!34368 lt!348111) (size!20814 a!3186)))) (or (is-Undefined!8000 lt!348111) (is-Found!8000 lt!348111) (not (is-MissingVacant!8000 lt!348111)) (not (= (index!34370 lt!348111) resIntermediateIndex!5)) (and (bvsge (index!34370 lt!348111) #b00000000000000000000000000000000) (bvslt (index!34370 lt!348111) (size!20814 a!3186)))) (or (is-Undefined!8000 lt!348111) (ite (is-Found!8000 lt!348111) (= (select (arr!20393 a!3186) (index!34368 lt!348111)) (select (arr!20393 a!3186) j!159)) (and (is-MissingVacant!8000 lt!348111) (= (index!34370 lt!348111) resIntermediateIndex!5) (= (select (arr!20393 a!3186) (index!34370 lt!348111)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!102507 (= lt!348111 e!434491)))

(declare-fun c!86698 () Bool)

(assert (=> d!102507 (= c!86698 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!102507 (= lt!348112 (select (arr!20393 a!3186) index!1321))))

(assert (=> d!102507 (validMask!0 mask!3328)))

(assert (=> d!102507 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20393 a!3186) j!159) a!3186 mask!3328) lt!348111)))

(declare-fun b!781111 () Bool)

(assert (=> b!781111 (= e!434492 (MissingVacant!8000 resIntermediateIndex!5))))

(assert (= (and d!102507 c!86698) b!781112))

(assert (= (and d!102507 (not c!86698)) b!781115))

(assert (= (and b!781115 c!86699) b!781113))

(assert (= (and b!781115 (not c!86699)) b!781110))

(assert (= (and b!781110 c!86697) b!781111))

(assert (= (and b!781110 (not c!86697)) b!781114))

(assert (=> b!781114 m!724107))

(assert (=> b!781114 m!724107))

(assert (=> b!781114 m!724009))

(declare-fun m!724283 () Bool)

(assert (=> b!781114 m!724283))

(declare-fun m!724285 () Bool)

(assert (=> d!102507 m!724285))

(declare-fun m!724287 () Bool)

(assert (=> d!102507 m!724287))

(declare-fun m!724289 () Bool)

(assert (=> d!102507 m!724289))

(assert (=> d!102507 m!724035))

(assert (=> b!780746 d!102507))

(declare-fun bm!35250 () Bool)

(declare-fun call!35253 () Bool)

(assert (=> bm!35250 (= call!35253 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun b!781116 () Bool)

(declare-fun e!434494 () Bool)

(declare-fun e!434495 () Bool)

(assert (=> b!781116 (= e!434494 e!434495)))

(declare-fun c!86700 () Bool)

(assert (=> b!781116 (= c!86700 (validKeyInArray!0 (select (arr!20393 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!781117 () Bool)

(declare-fun e!434496 () Bool)

(assert (=> b!781117 (= e!434496 call!35253)))

(declare-fun d!102527 () Bool)

(declare-fun res!528529 () Bool)

(assert (=> d!102527 (=> res!528529 e!434494)))

(assert (=> d!102527 (= res!528529 (bvsge #b00000000000000000000000000000000 (size!20814 a!3186)))))

(assert (=> d!102527 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328) e!434494)))

(declare-fun b!781118 () Bool)

(assert (=> b!781118 (= e!434495 call!35253)))

(declare-fun b!781119 () Bool)

(assert (=> b!781119 (= e!434495 e!434496)))

(declare-fun lt!348114 () (_ BitVec 64))

(assert (=> b!781119 (= lt!348114 (select (arr!20393 a!3186) #b00000000000000000000000000000000))))

(declare-fun lt!348113 () Unit!26910)

(assert (=> b!781119 (= lt!348113 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!348114 #b00000000000000000000000000000000))))

(assert (=> b!781119 (arrayContainsKey!0 a!3186 lt!348114 #b00000000000000000000000000000000)))

(declare-fun lt!348115 () Unit!26910)

(assert (=> b!781119 (= lt!348115 lt!348113)))

(declare-fun res!528528 () Bool)

(assert (=> b!781119 (= res!528528 (= (seekEntryOrOpen!0 (select (arr!20393 a!3186) #b00000000000000000000000000000000) a!3186 mask!3328) (Found!8000 #b00000000000000000000000000000000)))))

(assert (=> b!781119 (=> (not res!528528) (not e!434496))))

(assert (= (and d!102527 (not res!528529)) b!781116))

(assert (= (and b!781116 c!86700) b!781119))

(assert (= (and b!781116 (not c!86700)) b!781118))

(assert (= (and b!781119 res!528528) b!781117))

(assert (= (or b!781117 b!781118) bm!35250))

(declare-fun m!724291 () Bool)

(assert (=> bm!35250 m!724291))

(declare-fun m!724293 () Bool)

(assert (=> b!781116 m!724293))

(assert (=> b!781116 m!724293))

(declare-fun m!724295 () Bool)

(assert (=> b!781116 m!724295))

(assert (=> b!781119 m!724293))

(declare-fun m!724297 () Bool)

(assert (=> b!781119 m!724297))

(declare-fun m!724299 () Bool)

(assert (=> b!781119 m!724299))

(assert (=> b!781119 m!724293))

(declare-fun m!724301 () Bool)

(assert (=> b!781119 m!724301))

(assert (=> b!780735 d!102527))

(declare-fun lt!348116 () SeekEntryResult!8000)

(declare-fun e!434498 () SeekEntryResult!8000)

(declare-fun b!781120 () Bool)

(assert (=> b!781120 (= e!434498 (seekKeyOrZeroReturnVacant!0 (x!65339 lt!348116) (index!34369 lt!348116) (index!34369 lt!348116) k!2102 a!3186 mask!3328))))

(declare-fun b!781121 () Bool)

(declare-fun e!434497 () SeekEntryResult!8000)

(assert (=> b!781121 (= e!434497 (Found!8000 (index!34369 lt!348116)))))

(declare-fun b!781122 () Bool)

(declare-fun e!434499 () SeekEntryResult!8000)

(assert (=> b!781122 (= e!434499 Undefined!8000)))

(declare-fun b!781124 () Bool)

(assert (=> b!781124 (= e!434498 (MissingZero!8000 (index!34369 lt!348116)))))

(declare-fun b!781125 () Bool)

(declare-fun c!86703 () Bool)

(declare-fun lt!348117 () (_ BitVec 64))

(assert (=> b!781125 (= c!86703 (= lt!348117 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!781125 (= e!434497 e!434498)))

(declare-fun d!102529 () Bool)

(declare-fun lt!348118 () SeekEntryResult!8000)

(assert (=> d!102529 (and (or (is-Undefined!8000 lt!348118) (not (is-Found!8000 lt!348118)) (and (bvsge (index!34368 lt!348118) #b00000000000000000000000000000000) (bvslt (index!34368 lt!348118) (size!20814 a!3186)))) (or (is-Undefined!8000 lt!348118) (is-Found!8000 lt!348118) (not (is-MissingZero!8000 lt!348118)) (and (bvsge (index!34367 lt!348118) #b00000000000000000000000000000000) (bvslt (index!34367 lt!348118) (size!20814 a!3186)))) (or (is-Undefined!8000 lt!348118) (is-Found!8000 lt!348118) (is-MissingZero!8000 lt!348118) (not (is-MissingVacant!8000 lt!348118)) (and (bvsge (index!34370 lt!348118) #b00000000000000000000000000000000) (bvslt (index!34370 lt!348118) (size!20814 a!3186)))) (or (is-Undefined!8000 lt!348118) (ite (is-Found!8000 lt!348118) (= (select (arr!20393 a!3186) (index!34368 lt!348118)) k!2102) (ite (is-MissingZero!8000 lt!348118) (= (select (arr!20393 a!3186) (index!34367 lt!348118)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!8000 lt!348118) (= (select (arr!20393 a!3186) (index!34370 lt!348118)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!102529 (= lt!348118 e!434499)))

(declare-fun c!86701 () Bool)

(assert (=> d!102529 (= c!86701 (and (is-Intermediate!8000 lt!348116) (undefined!8812 lt!348116)))))

(assert (=> d!102529 (= lt!348116 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2102 mask!3328) k!2102 a!3186 mask!3328))))

(assert (=> d!102529 (validMask!0 mask!3328)))

(assert (=> d!102529 (= (seekEntryOrOpen!0 k!2102 a!3186 mask!3328) lt!348118)))

(declare-fun b!781123 () Bool)

(assert (=> b!781123 (= e!434499 e!434497)))

(assert (=> b!781123 (= lt!348117 (select (arr!20393 a!3186) (index!34369 lt!348116)))))

(declare-fun c!86702 () Bool)

(assert (=> b!781123 (= c!86702 (= lt!348117 k!2102))))

(assert (= (and d!102529 c!86701) b!781122))

(assert (= (and d!102529 (not c!86701)) b!781123))

(assert (= (and b!781123 c!86702) b!781121))

(assert (= (and b!781123 (not c!86702)) b!781125))

(assert (= (and b!781125 c!86703) b!781124))

(assert (= (and b!781125 (not c!86703)) b!781120))

(declare-fun m!724303 () Bool)

(assert (=> b!781120 m!724303))

(declare-fun m!724305 () Bool)

(assert (=> d!102529 m!724305))

(declare-fun m!724307 () Bool)

(assert (=> d!102529 m!724307))

(assert (=> d!102529 m!724035))

(declare-fun m!724309 () Bool)

(assert (=> d!102529 m!724309))

(declare-fun m!724311 () Bool)

(assert (=> d!102529 m!724311))

(assert (=> d!102529 m!724309))

(declare-fun m!724313 () Bool)

(assert (=> d!102529 m!724313))

(declare-fun m!724315 () Bool)

(assert (=> b!781123 m!724315))

(assert (=> b!780737 d!102529))

(declare-fun d!102531 () Bool)

(assert (=> d!102531 (= (validMask!0 mask!3328) (and (or (= mask!3328 #b00000000000000000000000000000111) (= mask!3328 #b00000000000000000000000000001111) (= mask!3328 #b00000000000000000000000000011111) (= mask!3328 #b00000000000000000000000000111111) (= mask!3328 #b00000000000000000000000001111111) (= mask!3328 #b00000000000000000000000011111111) (= mask!3328 #b00000000000000000000000111111111) (= mask!3328 #b00000000000000000000001111111111) (= mask!3328 #b00000000000000000000011111111111) (= mask!3328 #b00000000000000000000111111111111) (= mask!3328 #b00000000000000000001111111111111) (= mask!3328 #b00000000000000000011111111111111) (= mask!3328 #b00000000000000000111111111111111) (= mask!3328 #b00000000000000001111111111111111) (= mask!3328 #b00000000000000011111111111111111) (= mask!3328 #b00000000000000111111111111111111) (= mask!3328 #b00000000000001111111111111111111) (= mask!3328 #b00000000000011111111111111111111) (= mask!3328 #b00000000000111111111111111111111) (= mask!3328 #b00000000001111111111111111111111) (= mask!3328 #b00000000011111111111111111111111) (= mask!3328 #b00000000111111111111111111111111) (= mask!3328 #b00000001111111111111111111111111) (= mask!3328 #b00000011111111111111111111111111) (= mask!3328 #b00000111111111111111111111111111) (= mask!3328 #b00001111111111111111111111111111) (= mask!3328 #b00011111111111111111111111111111) (= mask!3328 #b00111111111111111111111111111111)) (bvsle mask!3328 #b00111111111111111111111111111111)))))

(assert (=> start!67490 d!102531))

(declare-fun d!102537 () Bool)

(assert (=> d!102537 (= (array_inv!16167 a!3186) (bvsge (size!20814 a!3186) #b00000000000000000000000000000000))))

(assert (=> start!67490 d!102537))

(declare-fun d!102539 () Bool)

(assert (=> d!102539 (= (validKeyInArray!0 k!2102) (and (not (= k!2102 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2102 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!780733 d!102539))

(declare-fun e!434509 () SeekEntryResult!8000)

(declare-fun b!781135 () Bool)

(assert (=> b!781135 (= e!434509 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) (select (arr!20393 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!781136 () Bool)

(declare-fun e!434505 () SeekEntryResult!8000)

(assert (=> b!781136 (= e!434505 e!434509)))

(declare-fun lt!348121 () (_ BitVec 64))

(declare-fun c!86707 () Bool)

(assert (=> b!781136 (= c!86707 (or (= lt!348121 (select (arr!20393 a!3186) j!159)) (= (bvadd lt!348121 lt!348121) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!781137 () Bool)

(declare-fun lt!348122 () SeekEntryResult!8000)

(assert (=> b!781137 (and (bvsge (index!34369 lt!348122) #b00000000000000000000000000000000) (bvslt (index!34369 lt!348122) (size!20814 a!3186)))))

(declare-fun res!528534 () Bool)

(assert (=> b!781137 (= res!528534 (= (select (arr!20393 a!3186) (index!34369 lt!348122)) (select (arr!20393 a!3186) j!159)))))

(declare-fun e!434506 () Bool)

(assert (=> b!781137 (=> res!528534 e!434506)))

(declare-fun e!434507 () Bool)

(assert (=> b!781137 (= e!434507 e!434506)))

(declare-fun b!781138 () Bool)

(declare-fun e!434508 () Bool)

(assert (=> b!781138 (= e!434508 e!434507)))

(declare-fun res!528535 () Bool)

(assert (=> b!781138 (= res!528535 (and (is-Intermediate!8000 lt!348122) (not (undefined!8812 lt!348122)) (bvslt (x!65339 lt!348122) #b01111111111111111111111111111110) (bvsge (x!65339 lt!348122) #b00000000000000000000000000000000) (bvsge (x!65339 lt!348122) x!1131)))))

(assert (=> b!781138 (=> (not res!528535) (not e!434507))))

(declare-fun b!781139 () Bool)

(assert (=> b!781139 (and (bvsge (index!34369 lt!348122) #b00000000000000000000000000000000) (bvslt (index!34369 lt!348122) (size!20814 a!3186)))))

(assert (=> b!781139 (= e!434506 (= (select (arr!20393 a!3186) (index!34369 lt!348122)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!102541 () Bool)

(assert (=> d!102541 e!434508))

(declare-fun c!86709 () Bool)

(assert (=> d!102541 (= c!86709 (and (is-Intermediate!8000 lt!348122) (undefined!8812 lt!348122)))))

(assert (=> d!102541 (= lt!348122 e!434505)))

(declare-fun c!86708 () Bool)

(assert (=> d!102541 (= c!86708 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!102541 (= lt!348121 (select (arr!20393 a!3186) index!1321))))

