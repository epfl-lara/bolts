; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67594 () Bool)

(assert start!67594)

(declare-fun b!782347 () Bool)

(declare-datatypes ((Unit!26986 0))(
  ( (Unit!26987) )
))
(declare-fun e!435037 () Unit!26986)

(declare-fun Unit!26988 () Unit!26986)

(assert (=> b!782347 (= e!435037 Unit!26988)))

(declare-fun b!782348 () Bool)

(declare-fun res!529508 () Bool)

(declare-fun e!435040 () Bool)

(assert (=> b!782348 (=> (not res!529508) (not e!435040))))

(declare-datatypes ((array!42652 0))(
  ( (array!42653 (arr!20412 (Array (_ BitVec 32) (_ BitVec 64))) (size!20833 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42652)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42652 (_ BitVec 32)) Bool)

(assert (=> b!782348 (= res!529508 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!782349 () Bool)

(declare-fun res!529517 () Bool)

(declare-fun e!435044 () Bool)

(assert (=> b!782349 (=> (not res!529517) (not e!435044))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42652 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!782349 (= res!529517 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!782350 () Bool)

(declare-fun res!529515 () Bool)

(declare-fun e!435043 () Bool)

(assert (=> b!782350 (=> (not res!529515) (not e!435043))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!782350 (= res!529515 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20412 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun e!435042 () Bool)

(declare-fun b!782351 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8019 0))(
  ( (MissingZero!8019 (index!34443 (_ BitVec 32))) (Found!8019 (index!34444 (_ BitVec 32))) (Intermediate!8019 (undefined!8831 Bool) (index!34445 (_ BitVec 32)) (x!65423 (_ BitVec 32))) (Undefined!8019) (MissingVacant!8019 (index!34446 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42652 (_ BitVec 32)) SeekEntryResult!8019)

(assert (=> b!782351 (= e!435042 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20412 a!3186) j!159) a!3186 mask!3328) (Found!8019 j!159)))))

(declare-fun b!782352 () Bool)

(declare-fun res!529519 () Bool)

(assert (=> b!782352 (=> (not res!529519) (not e!435043))))

(assert (=> b!782352 (= res!529519 e!435042)))

(declare-fun c!86829 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!782352 (= c!86829 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!782353 () Bool)

(declare-fun e!435038 () Bool)

(declare-fun e!435046 () Bool)

(assert (=> b!782353 (= e!435038 (not e!435046))))

(declare-fun res!529505 () Bool)

(assert (=> b!782353 (=> res!529505 e!435046)))

(declare-fun lt!348692 () SeekEntryResult!8019)

(assert (=> b!782353 (= res!529505 (or (not (is-Intermediate!8019 lt!348692)) (bvslt x!1131 (x!65423 lt!348692)) (not (= x!1131 (x!65423 lt!348692))) (not (= index!1321 (index!34445 lt!348692)))))))

(declare-fun e!435041 () Bool)

(assert (=> b!782353 e!435041))

(declare-fun res!529513 () Bool)

(assert (=> b!782353 (=> (not res!529513) (not e!435041))))

(declare-fun lt!348687 () SeekEntryResult!8019)

(declare-fun lt!348688 () SeekEntryResult!8019)

(assert (=> b!782353 (= res!529513 (= lt!348687 lt!348688))))

(assert (=> b!782353 (= lt!348688 (Found!8019 j!159))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42652 (_ BitVec 32)) SeekEntryResult!8019)

(assert (=> b!782353 (= lt!348687 (seekEntryOrOpen!0 (select (arr!20412 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!782353 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!348690 () Unit!26986)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42652 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26986)

(assert (=> b!782353 (= lt!348690 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!782354 () Bool)

(declare-fun lt!348689 () SeekEntryResult!8019)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42652 (_ BitVec 32)) SeekEntryResult!8019)

(assert (=> b!782354 (= e!435042 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20412 a!3186) j!159) a!3186 mask!3328) lt!348689))))

(declare-fun b!782355 () Bool)

(declare-fun res!529511 () Bool)

(assert (=> b!782355 (=> (not res!529511) (not e!435044))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!782355 (= res!529511 (validKeyInArray!0 k!2102))))

(declare-fun b!782356 () Bool)

(assert (=> b!782356 (= e!435044 e!435040)))

(declare-fun res!529512 () Bool)

(assert (=> b!782356 (=> (not res!529512) (not e!435040))))

(declare-fun lt!348693 () SeekEntryResult!8019)

(assert (=> b!782356 (= res!529512 (or (= lt!348693 (MissingZero!8019 i!1173)) (= lt!348693 (MissingVacant!8019 i!1173))))))

(assert (=> b!782356 (= lt!348693 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun res!529516 () Bool)

(assert (=> start!67594 (=> (not res!529516) (not e!435044))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67594 (= res!529516 (validMask!0 mask!3328))))

(assert (=> start!67594 e!435044))

(assert (=> start!67594 true))

(declare-fun array_inv!16186 (array!42652) Bool)

(assert (=> start!67594 (array_inv!16186 a!3186)))

(declare-fun b!782357 () Bool)

(declare-fun res!529504 () Bool)

(assert (=> b!782357 (=> (not res!529504) (not e!435040))))

(assert (=> b!782357 (= res!529504 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20833 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20833 a!3186))))))

(declare-fun b!782358 () Bool)

(assert (=> b!782358 (= e!435041 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20412 a!3186) j!159) a!3186 mask!3328) lt!348688))))

(declare-fun b!782359 () Bool)

(declare-fun res!529506 () Bool)

(assert (=> b!782359 (=> (not res!529506) (not e!435040))))

(declare-datatypes ((List!14467 0))(
  ( (Nil!14464) (Cons!14463 (h!15583 (_ BitVec 64)) (t!20790 List!14467)) )
))
(declare-fun arrayNoDuplicates!0 (array!42652 (_ BitVec 32) List!14467) Bool)

(assert (=> b!782359 (= res!529506 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14464))))

(declare-fun b!782360 () Bool)

(assert (=> b!782360 (= e!435043 e!435038)))

(declare-fun res!529514 () Bool)

(assert (=> b!782360 (=> (not res!529514) (not e!435038))))

(declare-fun lt!348697 () SeekEntryResult!8019)

(assert (=> b!782360 (= res!529514 (= lt!348697 lt!348692))))

(declare-fun lt!348691 () (_ BitVec 64))

(declare-fun lt!348694 () array!42652)

(assert (=> b!782360 (= lt!348692 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!348691 lt!348694 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!782360 (= lt!348697 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!348691 mask!3328) lt!348691 lt!348694 mask!3328))))

(assert (=> b!782360 (= lt!348691 (select (store (arr!20412 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!782360 (= lt!348694 (array!42653 (store (arr!20412 a!3186) i!1173 k!2102) (size!20833 a!3186)))))

(declare-fun b!782361 () Bool)

(declare-fun res!529507 () Bool)

(assert (=> b!782361 (=> res!529507 e!435046)))

(assert (=> b!782361 (= res!529507 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20412 a!3186) j!159) a!3186 mask!3328) lt!348688)))))

(declare-fun b!782362 () Bool)

(declare-fun res!529509 () Bool)

(assert (=> b!782362 (=> (not res!529509) (not e!435044))))

(assert (=> b!782362 (= res!529509 (validKeyInArray!0 (select (arr!20412 a!3186) j!159)))))

(declare-fun b!782363 () Bool)

(declare-fun res!529503 () Bool)

(assert (=> b!782363 (=> (not res!529503) (not e!435044))))

(assert (=> b!782363 (= res!529503 (and (= (size!20833 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20833 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20833 a!3186)) (not (= i!1173 j!159))))))

(declare-fun e!435039 () Bool)

(declare-fun b!782364 () Bool)

(assert (=> b!782364 (= e!435039 (= (seekEntryOrOpen!0 lt!348691 lt!348694 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!348691 lt!348694 mask!3328)))))

(declare-fun lt!348695 () (_ BitVec 64))

(assert (=> b!782364 (= lt!348695 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!348696 () Unit!26986)

(assert (=> b!782364 (= lt!348696 e!435037)))

(declare-fun c!86828 () Bool)

(assert (=> b!782364 (= c!86828 (= lt!348695 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!782365 () Bool)

(declare-fun Unit!26989 () Unit!26986)

(assert (=> b!782365 (= e!435037 Unit!26989)))

(assert (=> b!782365 false))

(declare-fun b!782366 () Bool)

(assert (=> b!782366 (= e!435046 e!435039)))

(declare-fun res!529510 () Bool)

(assert (=> b!782366 (=> res!529510 e!435039)))

(assert (=> b!782366 (= res!529510 (= lt!348695 lt!348691))))

(assert (=> b!782366 (= lt!348695 (select (store (arr!20412 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!782367 () Bool)

(assert (=> b!782367 (= e!435040 e!435043)))

(declare-fun res!529518 () Bool)

(assert (=> b!782367 (=> (not res!529518) (not e!435043))))

(assert (=> b!782367 (= res!529518 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20412 a!3186) j!159) mask!3328) (select (arr!20412 a!3186) j!159) a!3186 mask!3328) lt!348689))))

(assert (=> b!782367 (= lt!348689 (Intermediate!8019 false resIntermediateIndex!5 resIntermediateX!5))))

(assert (= (and start!67594 res!529516) b!782363))

(assert (= (and b!782363 res!529503) b!782362))

(assert (= (and b!782362 res!529509) b!782355))

(assert (= (and b!782355 res!529511) b!782349))

(assert (= (and b!782349 res!529517) b!782356))

(assert (= (and b!782356 res!529512) b!782348))

(assert (= (and b!782348 res!529508) b!782359))

(assert (= (and b!782359 res!529506) b!782357))

(assert (= (and b!782357 res!529504) b!782367))

(assert (= (and b!782367 res!529518) b!782350))

(assert (= (and b!782350 res!529515) b!782352))

(assert (= (and b!782352 c!86829) b!782354))

(assert (= (and b!782352 (not c!86829)) b!782351))

(assert (= (and b!782352 res!529519) b!782360))

(assert (= (and b!782360 res!529514) b!782353))

(assert (= (and b!782353 res!529513) b!782358))

(assert (= (and b!782353 (not res!529505)) b!782361))

(assert (= (and b!782361 (not res!529507)) b!782366))

(assert (= (and b!782366 (not res!529510)) b!782364))

(assert (= (and b!782364 c!86828) b!782365))

(assert (= (and b!782364 (not c!86828)) b!782347))

(declare-fun m!725203 () Bool)

(assert (=> b!782356 m!725203))

(declare-fun m!725205 () Bool)

(assert (=> b!782366 m!725205))

(declare-fun m!725207 () Bool)

(assert (=> b!782366 m!725207))

(declare-fun m!725209 () Bool)

(assert (=> b!782359 m!725209))

(declare-fun m!725211 () Bool)

(assert (=> b!782353 m!725211))

(assert (=> b!782353 m!725211))

(declare-fun m!725213 () Bool)

(assert (=> b!782353 m!725213))

(declare-fun m!725215 () Bool)

(assert (=> b!782353 m!725215))

(declare-fun m!725217 () Bool)

(assert (=> b!782353 m!725217))

(assert (=> b!782367 m!725211))

(assert (=> b!782367 m!725211))

(declare-fun m!725219 () Bool)

(assert (=> b!782367 m!725219))

(assert (=> b!782367 m!725219))

(assert (=> b!782367 m!725211))

(declare-fun m!725221 () Bool)

(assert (=> b!782367 m!725221))

(declare-fun m!725223 () Bool)

(assert (=> b!782350 m!725223))

(declare-fun m!725225 () Bool)

(assert (=> b!782355 m!725225))

(declare-fun m!725227 () Bool)

(assert (=> b!782364 m!725227))

(declare-fun m!725229 () Bool)

(assert (=> b!782364 m!725229))

(declare-fun m!725231 () Bool)

(assert (=> start!67594 m!725231))

(declare-fun m!725233 () Bool)

(assert (=> start!67594 m!725233))

(declare-fun m!725235 () Bool)

(assert (=> b!782349 m!725235))

(assert (=> b!782362 m!725211))

(assert (=> b!782362 m!725211))

(declare-fun m!725237 () Bool)

(assert (=> b!782362 m!725237))

(assert (=> b!782361 m!725211))

(assert (=> b!782361 m!725211))

(declare-fun m!725239 () Bool)

(assert (=> b!782361 m!725239))

(assert (=> b!782351 m!725211))

(assert (=> b!782351 m!725211))

(assert (=> b!782351 m!725239))

(declare-fun m!725241 () Bool)

(assert (=> b!782348 m!725241))

(declare-fun m!725243 () Bool)

(assert (=> b!782360 m!725243))

(declare-fun m!725245 () Bool)

(assert (=> b!782360 m!725245))

(assert (=> b!782360 m!725205))

(declare-fun m!725247 () Bool)

(assert (=> b!782360 m!725247))

(assert (=> b!782360 m!725245))

(declare-fun m!725249 () Bool)

(assert (=> b!782360 m!725249))

(assert (=> b!782358 m!725211))

(assert (=> b!782358 m!725211))

(declare-fun m!725251 () Bool)

(assert (=> b!782358 m!725251))

(assert (=> b!782354 m!725211))

(assert (=> b!782354 m!725211))

(declare-fun m!725253 () Bool)

(assert (=> b!782354 m!725253))

(push 1)

(assert (not b!782361))

(assert (not b!782367))

(assert (not b!782364))

(assert (not b!782356))

(assert (not b!782360))

(assert (not b!782351))

(assert (not b!782358))

(assert (not start!67594))

(assert (not b!782353))

(assert (not b!782362))

(assert (not b!782349))

(assert (not b!782359))

(assert (not b!782355))

(assert (not b!782354))

(assert (not b!782348))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!782608 () Bool)

(declare-fun lt!348801 () SeekEntryResult!8019)

(assert (=> b!782608 (and (bvsge (index!34445 lt!348801) #b00000000000000000000000000000000) (bvslt (index!34445 lt!348801) (size!20833 a!3186)))))

(declare-fun res!529649 () Bool)

(assert (=> b!782608 (= res!529649 (= (select (arr!20412 a!3186) (index!34445 lt!348801)) (select (arr!20412 a!3186) j!159)))))

(declare-fun e!435172 () Bool)

(assert (=> b!782608 (=> res!529649 e!435172)))

(declare-fun e!435169 () Bool)

(assert (=> b!782608 (= e!435169 e!435172)))

(declare-fun b!782609 () Bool)

(declare-fun e!435170 () SeekEntryResult!8019)

(assert (=> b!782609 (= e!435170 (Intermediate!8019 false index!1321 x!1131))))

(declare-fun b!782610 () Bool)

(declare-fun e!435171 () SeekEntryResult!8019)

(assert (=> b!782610 (= e!435171 (Intermediate!8019 true index!1321 x!1131))))

(declare-fun b!782611 () Bool)

(assert (=> b!782611 (and (bvsge (index!34445 lt!348801) #b00000000000000000000000000000000) (bvslt (index!34445 lt!348801) (size!20833 a!3186)))))

(assert (=> b!782611 (= e!435172 (= (select (arr!20412 a!3186) (index!34445 lt!348801)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!782612 () Bool)

(declare-fun e!435168 () Bool)

(assert (=> b!782612 (= e!435168 (bvsge (x!65423 lt!348801) #b01111111111111111111111111111110))))

(declare-fun b!782613 () Bool)

(assert (=> b!782613 (= e!435171 e!435170)))

(declare-fun c!86888 () Bool)

(declare-fun lt!348804 () (_ BitVec 64))

(assert (=> b!782613 (= c!86888 (or (= lt!348804 (select (arr!20412 a!3186) j!159)) (= (bvadd lt!348804 lt!348804) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!102577 () Bool)

(assert (=> d!102577 e!435168))

(declare-fun c!86887 () Bool)

(assert (=> d!102577 (= c!86887 (and (is-Intermediate!8019 lt!348801) (undefined!8831 lt!348801)))))

(assert (=> d!102577 (= lt!348801 e!435171)))

(declare-fun c!86889 () Bool)

(assert (=> d!102577 (= c!86889 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!102577 (= lt!348804 (select (arr!20412 a!3186) index!1321))))

(assert (=> d!102577 (validMask!0 mask!3328)))

(assert (=> d!102577 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20412 a!3186) j!159) a!3186 mask!3328) lt!348801)))

(declare-fun b!782614 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!782614 (= e!435170 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) (select (arr!20412 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!782615 () Bool)

(assert (=> b!782615 (= e!435168 e!435169)))

(declare-fun res!529648 () Bool)

(assert (=> b!782615 (= res!529648 (and (is-Intermediate!8019 lt!348801) (not (undefined!8831 lt!348801)) (bvslt (x!65423 lt!348801) #b01111111111111111111111111111110) (bvsge (x!65423 lt!348801) #b00000000000000000000000000000000) (bvsge (x!65423 lt!348801) x!1131)))))

(assert (=> b!782615 (=> (not res!529648) (not e!435169))))

(declare-fun b!782616 () Bool)

(assert (=> b!782616 (and (bvsge (index!34445 lt!348801) #b00000000000000000000000000000000) (bvslt (index!34445 lt!348801) (size!20833 a!3186)))))

(declare-fun res!529647 () Bool)

(assert (=> b!782616 (= res!529647 (= (select (arr!20412 a!3186) (index!34445 lt!348801)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!782616 (=> res!529647 e!435172)))

(assert (= (and d!102577 c!86889) b!782610))

(assert (= (and d!102577 (not c!86889)) b!782613))

(assert (= (and b!782613 c!86888) b!782609))

(assert (= (and b!782613 (not c!86888)) b!782614))

(assert (= (and d!102577 c!86887) b!782612))

(assert (= (and d!102577 (not c!86887)) b!782615))

(assert (= (and b!782615 res!529648) b!782608))

(assert (= (and b!782608 (not res!529649)) b!782616))

(assert (= (and b!782616 (not res!529647)) b!782611))

(declare-fun m!725403 () Bool)

(assert (=> b!782616 m!725403))

(declare-fun m!725405 () Bool)

(assert (=> b!782614 m!725405))

(assert (=> b!782614 m!725405))

(assert (=> b!782614 m!725211))

(declare-fun m!725407 () Bool)

(assert (=> b!782614 m!725407))

(assert (=> b!782608 m!725403))

(declare-fun m!725409 () Bool)

(assert (=> d!102577 m!725409))

(assert (=> d!102577 m!725231))

(assert (=> b!782611 m!725403))

(assert (=> b!782354 d!102577))

(declare-fun b!782688 () Bool)

(declare-fun e!435217 () SeekEntryResult!8019)

(assert (=> b!782688 (= e!435217 Undefined!8019)))

(declare-fun b!782689 () Bool)

(declare-fun e!435220 () SeekEntryResult!8019)

(declare-fun lt!348845 () SeekEntryResult!8019)

(assert (=> b!782689 (= e!435220 (MissingZero!8019 (index!34445 lt!348845)))))

(declare-fun b!782690 () Bool)

(declare-fun e!435219 () SeekEntryResult!8019)

(assert (=> b!782690 (= e!435217 e!435219)))

(declare-fun lt!348844 () (_ BitVec 64))

(assert (=> b!782690 (= lt!348844 (select (arr!20412 lt!348694) (index!34445 lt!348845)))))

(declare-fun c!86918 () Bool)

(assert (=> b!782690 (= c!86918 (= lt!348844 lt!348691))))

(declare-fun b!782691 () Bool)

(declare-fun c!86919 () Bool)

(assert (=> b!782691 (= c!86919 (= lt!348844 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!782691 (= e!435219 e!435220)))

(declare-fun d!102585 () Bool)

(declare-fun lt!348843 () SeekEntryResult!8019)

(assert (=> d!102585 (and (or (is-Undefined!8019 lt!348843) (not (is-Found!8019 lt!348843)) (and (bvsge (index!34444 lt!348843) #b00000000000000000000000000000000) (bvslt (index!34444 lt!348843) (size!20833 lt!348694)))) (or (is-Undefined!8019 lt!348843) (is-Found!8019 lt!348843) (not (is-MissingZero!8019 lt!348843)) (and (bvsge (index!34443 lt!348843) #b00000000000000000000000000000000) (bvslt (index!34443 lt!348843) (size!20833 lt!348694)))) (or (is-Undefined!8019 lt!348843) (is-Found!8019 lt!348843) (is-MissingZero!8019 lt!348843) (not (is-MissingVacant!8019 lt!348843)) (and (bvsge (index!34446 lt!348843) #b00000000000000000000000000000000) (bvslt (index!34446 lt!348843) (size!20833 lt!348694)))) (or (is-Undefined!8019 lt!348843) (ite (is-Found!8019 lt!348843) (= (select (arr!20412 lt!348694) (index!34444 lt!348843)) lt!348691) (ite (is-MissingZero!8019 lt!348843) (= (select (arr!20412 lt!348694) (index!34443 lt!348843)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!8019 lt!348843) (= (select (arr!20412 lt!348694) (index!34446 lt!348843)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!102585 (= lt!348843 e!435217)))

(declare-fun c!86917 () Bool)

(assert (=> d!102585 (= c!86917 (and (is-Intermediate!8019 lt!348845) (undefined!8831 lt!348845)))))

(assert (=> d!102585 (= lt!348845 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!348691 mask!3328) lt!348691 lt!348694 mask!3328))))

(assert (=> d!102585 (validMask!0 mask!3328)))

(assert (=> d!102585 (= (seekEntryOrOpen!0 lt!348691 lt!348694 mask!3328) lt!348843)))

(declare-fun b!782692 () Bool)

(assert (=> b!782692 (= e!435220 (seekKeyOrZeroReturnVacant!0 (x!65423 lt!348845) (index!34445 lt!348845) (index!34445 lt!348845) lt!348691 lt!348694 mask!3328))))

(declare-fun b!782693 () Bool)

(assert (=> b!782693 (= e!435219 (Found!8019 (index!34445 lt!348845)))))

(assert (= (and d!102585 c!86917) b!782688))

(assert (= (and d!102585 (not c!86917)) b!782690))

(assert (= (and b!782690 c!86918) b!782693))

(assert (= (and b!782690 (not c!86918)) b!782691))

(assert (= (and b!782691 c!86919) b!782689))

(assert (= (and b!782691 (not c!86919)) b!782692))

(declare-fun m!725457 () Bool)

(assert (=> b!782690 m!725457))

(assert (=> d!102585 m!725231))

(declare-fun m!725459 () Bool)

(assert (=> d!102585 m!725459))

(declare-fun m!725461 () Bool)

(assert (=> d!102585 m!725461))

(declare-fun m!725463 () Bool)

(assert (=> d!102585 m!725463))

(assert (=> d!102585 m!725245))

(assert (=> d!102585 m!725245))

(assert (=> d!102585 m!725249))

(declare-fun m!725465 () Bool)

(assert (=> b!782692 m!725465))

(assert (=> b!782364 d!102585))

(declare-fun b!782730 () Bool)

(declare-fun e!435245 () SeekEntryResult!8019)

(declare-fun e!435247 () SeekEntryResult!8019)

(assert (=> b!782730 (= e!435245 e!435247)))

(declare-fun c!86931 () Bool)

(declare-fun lt!348850 () (_ BitVec 64))

(assert (=> b!782730 (= c!86931 (= lt!348850 lt!348691))))

(declare-fun lt!348851 () SeekEntryResult!8019)

(declare-fun d!102601 () Bool)

(assert (=> d!102601 (and (or (is-Undefined!8019 lt!348851) (not (is-Found!8019 lt!348851)) (and (bvsge (index!34444 lt!348851) #b00000000000000000000000000000000) (bvslt (index!34444 lt!348851) (size!20833 lt!348694)))) (or (is-Undefined!8019 lt!348851) (is-Found!8019 lt!348851) (not (is-MissingVacant!8019 lt!348851)) (not (= (index!34446 lt!348851) index!1321)) (and (bvsge (index!34446 lt!348851) #b00000000000000000000000000000000) (bvslt (index!34446 lt!348851) (size!20833 lt!348694)))) (or (is-Undefined!8019 lt!348851) (ite (is-Found!8019 lt!348851) (= (select (arr!20412 lt!348694) (index!34444 lt!348851)) lt!348691) (and (is-MissingVacant!8019 lt!348851) (= (index!34446 lt!348851) index!1321) (= (select (arr!20412 lt!348694) (index!34446 lt!348851)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!102601 (= lt!348851 e!435245)))

(declare-fun c!86932 () Bool)

(assert (=> d!102601 (= c!86932 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!102601 (= lt!348850 (select (arr!20412 lt!348694) index!1321))))

(assert (=> d!102601 (validMask!0 mask!3328)))

(assert (=> d!102601 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!348691 lt!348694 mask!3328) lt!348851)))

(declare-fun b!782731 () Bool)

(assert (=> b!782731 (= e!435245 Undefined!8019)))

(declare-fun e!435246 () SeekEntryResult!8019)

(declare-fun b!782732 () Bool)

(assert (=> b!782732 (= e!435246 (seekKeyOrZeroReturnVacant!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) index!1321 lt!348691 lt!348694 mask!3328))))

(declare-fun b!782733 () Bool)

(declare-fun c!86930 () Bool)

(assert (=> b!782733 (= c!86930 (= lt!348850 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!782733 (= e!435247 e!435246)))

(declare-fun b!782734 () Bool)

(assert (=> b!782734 (= e!435247 (Found!8019 index!1321))))

(declare-fun b!782735 () Bool)

(assert (=> b!782735 (= e!435246 (MissingVacant!8019 index!1321))))

(assert (= (and d!102601 c!86932) b!782731))

(assert (= (and d!102601 (not c!86932)) b!782730))

(assert (= (and b!782730 c!86931) b!782734))

(assert (= (and b!782730 (not c!86931)) b!782733))

(assert (= (and b!782733 c!86930) b!782735))

(assert (= (and b!782733 (not c!86930)) b!782732))

(declare-fun m!725479 () Bool)

(assert (=> d!102601 m!725479))

(declare-fun m!725481 () Bool)

(assert (=> d!102601 m!725481))

(declare-fun m!725483 () Bool)

(assert (=> d!102601 m!725483))

(assert (=> d!102601 m!725231))

(assert (=> b!782732 m!725405))

(assert (=> b!782732 m!725405))

(declare-fun m!725485 () Bool)

(assert (=> b!782732 m!725485))

(assert (=> b!782364 d!102601))

(declare-fun d!102611 () Bool)

(assert (=> d!102611 (= (validKeyInArray!0 k!2102) (and (not (= k!2102 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2102 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!782355 d!102611))

(declare-fun d!102615 () Bool)

(assert (=> d!102615 (= (validMask!0 mask!3328) (and (or (= mask!3328 #b00000000000000000000000000000111) (= mask!3328 #b00000000000000000000000000001111) (= mask!3328 #b00000000000000000000000000011111) (= mask!3328 #b00000000000000000000000000111111) (= mask!3328 #b00000000000000000000000001111111) (= mask!3328 #b00000000000000000000000011111111) (= mask!3328 #b00000000000000000000000111111111) (= mask!3328 #b00000000000000000000001111111111) (= mask!3328 #b00000000000000000000011111111111) (= mask!3328 #b00000000000000000000111111111111) (= mask!3328 #b00000000000000000001111111111111) (= mask!3328 #b00000000000000000011111111111111) (= mask!3328 #b00000000000000000111111111111111) (= mask!3328 #b00000000000000001111111111111111) (= mask!3328 #b00000000000000011111111111111111) (= mask!3328 #b00000000000000111111111111111111) (= mask!3328 #b00000000000001111111111111111111) (= mask!3328 #b00000000000011111111111111111111) (= mask!3328 #b00000000000111111111111111111111) (= mask!3328 #b00000000001111111111111111111111) (= mask!3328 #b00000000011111111111111111111111) (= mask!3328 #b00000000111111111111111111111111) (= mask!3328 #b00000001111111111111111111111111) (= mask!3328 #b00000011111111111111111111111111) (= mask!3328 #b00000111111111111111111111111111) (= mask!3328 #b00001111111111111111111111111111) (= mask!3328 #b00011111111111111111111111111111) (= mask!3328 #b00111111111111111111111111111111)) (bvsle mask!3328 #b00111111111111111111111111111111)))))

(assert (=> start!67594 d!102615))

(declare-fun d!102629 () Bool)

(assert (=> d!102629 (= (array_inv!16186 a!3186) (bvsge (size!20833 a!3186) #b00000000000000000000000000000000))))

(assert (=> start!67594 d!102629))

(declare-fun b!782792 () Bool)

(declare-fun lt!348875 () SeekEntryResult!8019)

(assert (=> b!782792 (and (bvsge (index!34445 lt!348875) #b00000000000000000000000000000000) (bvslt (index!34445 lt!348875) (size!20833 a!3186)))))

(declare-fun res!529694 () Bool)

(assert (=> b!782792 (= res!529694 (= (select (arr!20412 a!3186) (index!34445 lt!348875)) (select (arr!20412 a!3186) j!159)))))

(declare-fun e!435282 () Bool)

(assert (=> b!782792 (=> res!529694 e!435282)))

(declare-fun e!435279 () Bool)

(assert (=> b!782792 (= e!435279 e!435282)))

(declare-fun e!435280 () SeekEntryResult!8019)

(declare-fun b!782793 () Bool)

(assert (=> b!782793 (= e!435280 (Intermediate!8019 false (toIndex!0 (select (arr!20412 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!782794 () Bool)

(declare-fun e!435281 () SeekEntryResult!8019)

(assert (=> b!782794 (= e!435281 (Intermediate!8019 true (toIndex!0 (select (arr!20412 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!782795 () Bool)

(assert (=> b!782795 (and (bvsge (index!34445 lt!348875) #b00000000000000000000000000000000) (bvslt (index!34445 lt!348875) (size!20833 a!3186)))))

(assert (=> b!782795 (= e!435282 (= (select (arr!20412 a!3186) (index!34445 lt!348875)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!782796 () Bool)

(declare-fun e!435278 () Bool)

(assert (=> b!782796 (= e!435278 (bvsge (x!65423 lt!348875) #b01111111111111111111111111111110))))

(declare-fun b!782797 () Bool)

(assert (=> b!782797 (= e!435281 e!435280)))

(declare-fun lt!348876 () (_ BitVec 64))

(declare-fun c!86958 () Bool)

(assert (=> b!782797 (= c!86958 (or (= lt!348876 (select (arr!20412 a!3186) j!159)) (= (bvadd lt!348876 lt!348876) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!102631 () Bool)

(assert (=> d!102631 e!435278))

(declare-fun c!86957 () Bool)

(assert (=> d!102631 (= c!86957 (and (is-Intermediate!8019 lt!348875) (undefined!8831 lt!348875)))))

(assert (=> d!102631 (= lt!348875 e!435281)))

(declare-fun c!86959 () Bool)

(assert (=> d!102631 (= c!86959 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!102631 (= lt!348876 (select (arr!20412 a!3186) (toIndex!0 (select (arr!20412 a!3186) j!159) mask!3328)))))

(assert (=> d!102631 (validMask!0 mask!3328)))

(assert (=> d!102631 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20412 a!3186) j!159) mask!3328) (select (arr!20412 a!3186) j!159) a!3186 mask!3328) lt!348875)))

(declare-fun b!782798 () Bool)

(assert (=> b!782798 (= e!435280 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!20412 a!3186) j!159) mask!3328) #b00000000000000000000000000000000 mask!3328) (select (arr!20412 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!782799 () Bool)

(assert (=> b!782799 (= e!435278 e!435279)))

(declare-fun res!529693 () Bool)

(assert (=> b!782799 (= res!529693 (and (is-Intermediate!8019 lt!348875) (not (undefined!8831 lt!348875)) (bvslt (x!65423 lt!348875) #b01111111111111111111111111111110) (bvsge (x!65423 lt!348875) #b00000000000000000000000000000000) (bvsge (x!65423 lt!348875) #b00000000000000000000000000000000)))))

(assert (=> b!782799 (=> (not res!529693) (not e!435279))))

(declare-fun b!782800 () Bool)

(assert (=> b!782800 (and (bvsge (index!34445 lt!348875) #b00000000000000000000000000000000) (bvslt (index!34445 lt!348875) (size!20833 a!3186)))))

(declare-fun res!529692 () Bool)

(assert (=> b!782800 (= res!529692 (= (select (arr!20412 a!3186) (index!34445 lt!348875)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!782800 (=> res!529692 e!435282)))

(assert (= (and d!102631 c!86959) b!782794))

(assert (= (and d!102631 (not c!86959)) b!782797))

(assert (= (and b!782797 c!86958) b!782793))

(assert (= (and b!782797 (not c!86958)) b!782798))

(assert (= (and d!102631 c!86957) b!782796))

(assert (= (and d!102631 (not c!86957)) b!782799))

(assert (= (and b!782799 res!529693) b!782792))

(assert (= (and b!782792 (not res!529694)) b!782800))

(assert (= (and b!782800 (not res!529692)) b!782795))

(declare-fun m!725543 () Bool)

(assert (=> b!782800 m!725543))

(assert (=> b!782798 m!725219))

(declare-fun m!725545 () Bool)

(assert (=> b!782798 m!725545))

(assert (=> b!782798 m!725545))

(assert (=> b!782798 m!725211))

(declare-fun m!725547 () Bool)

(assert (=> b!782798 m!725547))

(assert (=> b!782792 m!725543))

(assert (=> d!102631 m!725219))

(declare-fun m!725549 () Bool)

(assert (=> d!102631 m!725549))

(assert (=> d!102631 m!725231))

(assert (=> b!782795 m!725543))

(assert (=> b!782367 d!102631))

(declare-fun d!102633 () Bool)

(declare-fun lt!348891 () (_ BitVec 32))

(declare-fun lt!348890 () (_ BitVec 32))

(assert (=> d!102633 (= lt!348891 (bvmul (bvxor lt!348890 (bvlshr lt!348890 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!102633 (= lt!348890 ((_ extract 31 0) (bvand (bvxor (select (arr!20412 a!3186) j!159) (bvlshr (select (arr!20412 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!102633 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!529697 (let ((h!15588 ((_ extract 31 0) (bvand (bvxor (select (arr!20412 a!3186) j!159) (bvlshr (select (arr!20412 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!65434 (bvmul (bvxor h!15588 (bvlshr h!15588 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!65434 (bvlshr x!65434 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!529697 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!529697 #b00000000000000000000000000000000))))))

(assert (=> d!102633 (= (toIndex!0 (select (arr!20412 a!3186) j!159) mask!3328) (bvand (bvxor lt!348891 (bvlshr lt!348891 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!782367 d!102633))

(declare-fun b!782813 () Bool)

(declare-fun e!435292 () SeekEntryResult!8019)

(assert (=> b!782813 (= e!435292 Undefined!8019)))

(declare-fun b!782814 () Bool)

(declare-fun e!435294 () SeekEntryResult!8019)

(declare-fun lt!348894 () SeekEntryResult!8019)

(assert (=> b!782814 (= e!435294 (MissingZero!8019 (index!34445 lt!348894)))))

(declare-fun b!782815 () Bool)

(declare-fun e!435293 () SeekEntryResult!8019)

(assert (=> b!782815 (= e!435292 e!435293)))

(declare-fun lt!348893 () (_ BitVec 64))

(assert (=> b!782815 (= lt!348893 (select (arr!20412 a!3186) (index!34445 lt!348894)))))

(declare-fun c!86964 () Bool)

(assert (=> b!782815 (= c!86964 (= lt!348893 k!2102))))

(declare-fun b!782816 () Bool)

(declare-fun c!86965 () Bool)

(assert (=> b!782816 (= c!86965 (= lt!348893 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!782816 (= e!435293 e!435294)))

(declare-fun d!102637 () Bool)

(declare-fun lt!348892 () SeekEntryResult!8019)

(assert (=> d!102637 (and (or (is-Undefined!8019 lt!348892) (not (is-Found!8019 lt!348892)) (and (bvsge (index!34444 lt!348892) #b00000000000000000000000000000000) (bvslt (index!34444 lt!348892) (size!20833 a!3186)))) (or (is-Undefined!8019 lt!348892) (is-Found!8019 lt!348892) (not (is-MissingZero!8019 lt!348892)) (and (bvsge (index!34443 lt!348892) #b00000000000000000000000000000000) (bvslt (index!34443 lt!348892) (size!20833 a!3186)))) (or (is-Undefined!8019 lt!348892) (is-Found!8019 lt!348892) (is-MissingZero!8019 lt!348892) (not (is-MissingVacant!8019 lt!348892)) (and (bvsge (index!34446 lt!348892) #b00000000000000000000000000000000) (bvslt (index!34446 lt!348892) (size!20833 a!3186)))) (or (is-Undefined!8019 lt!348892) (ite (is-Found!8019 lt!348892) (= (select (arr!20412 a!3186) (index!34444 lt!348892)) k!2102) (ite (is-MissingZero!8019 lt!348892) (= (select (arr!20412 a!3186) (index!34443 lt!348892)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!8019 lt!348892) (= (select (arr!20412 a!3186) (index!34446 lt!348892)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!102637 (= lt!348892 e!435292)))

(declare-fun c!86963 () Bool)

(assert (=> d!102637 (= c!86963 (and (is-Intermediate!8019 lt!348894) (undefined!8831 lt!348894)))))

(assert (=> d!102637 (= lt!348894 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2102 mask!3328) k!2102 a!3186 mask!3328))))

(assert (=> d!102637 (validMask!0 mask!3328)))

(assert (=> d!102637 (= (seekEntryOrOpen!0 k!2102 a!3186 mask!3328) lt!348892)))

(declare-fun b!782817 () Bool)

(assert (=> b!782817 (= e!435294 (seekKeyOrZeroReturnVacant!0 (x!65423 lt!348894) (index!34445 lt!348894) (index!34445 lt!348894) k!2102 a!3186 mask!3328))))

(declare-fun b!782818 () Bool)

(assert (=> b!782818 (= e!435293 (Found!8019 (index!34445 lt!348894)))))

(assert (= (and d!102637 c!86963) b!782813))

(assert (= (and d!102637 (not c!86963)) b!782815))

(assert (= (and b!782815 c!86964) b!782818))

(assert (= (and b!782815 (not c!86964)) b!782816))

(assert (= (and b!782816 c!86965) b!782814))

(assert (= (and b!782816 (not c!86965)) b!782817))

(declare-fun m!725557 () Bool)

(assert (=> b!782815 m!725557))

(assert (=> d!102637 m!725231))

(declare-fun m!725559 () Bool)

(assert (=> d!102637 m!725559))

(declare-fun m!725561 () Bool)

(assert (=> d!102637 m!725561))

(declare-fun m!725563 () Bool)

(assert (=> d!102637 m!725563))

(declare-fun m!725565 () Bool)

(assert (=> d!102637 m!725565))

(assert (=> d!102637 m!725565))

(declare-fun m!725567 () Bool)

(assert (=> d!102637 m!725567))

(declare-fun m!725569 () Bool)

(assert (=> b!782817 m!725569))

(assert (=> b!782356 d!102637))

(declare-fun b!782819 () Bool)

(declare-fun e!435295 () SeekEntryResult!8019)

(declare-fun e!435297 () SeekEntryResult!8019)

(assert (=> b!782819 (= e!435295 e!435297)))

(declare-fun lt!348895 () (_ BitVec 64))

(declare-fun c!86967 () Bool)

(assert (=> b!782819 (= c!86967 (= lt!348895 (select (arr!20412 a!3186) j!159)))))

(declare-fun lt!348896 () SeekEntryResult!8019)

(declare-fun d!102639 () Bool)

(assert (=> d!102639 (and (or (is-Undefined!8019 lt!348896) (not (is-Found!8019 lt!348896)) (and (bvsge (index!34444 lt!348896) #b00000000000000000000000000000000) (bvslt (index!34444 lt!348896) (size!20833 a!3186)))) (or (is-Undefined!8019 lt!348896) (is-Found!8019 lt!348896) (not (is-MissingVacant!8019 lt!348896)) (not (= (index!34446 lt!348896) resIntermediateIndex!5)) (and (bvsge (index!34446 lt!348896) #b00000000000000000000000000000000) (bvslt (index!34446 lt!348896) (size!20833 a!3186)))) (or (is-Undefined!8019 lt!348896) (ite (is-Found!8019 lt!348896) (= (select (arr!20412 a!3186) (index!34444 lt!348896)) (select (arr!20412 a!3186) j!159)) (and (is-MissingVacant!8019 lt!348896) (= (index!34446 lt!348896) resIntermediateIndex!5) (= (select (arr!20412 a!3186) (index!34446 lt!348896)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!102639 (= lt!348896 e!435295)))

(declare-fun c!86968 () Bool)

(assert (=> d!102639 (= c!86968 (bvsge resIntermediateX!5 #b01111111111111111111111111111110))))

(assert (=> d!102639 (= lt!348895 (select (arr!20412 a!3186) resIntermediateIndex!5))))

(assert (=> d!102639 (validMask!0 mask!3328)))

(assert (=> d!102639 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20412 a!3186) j!159) a!3186 mask!3328) lt!348896)))

(declare-fun b!782820 () Bool)

(assert (=> b!782820 (= e!435295 Undefined!8019)))

(declare-fun b!782821 () Bool)

(declare-fun e!435296 () SeekEntryResult!8019)

(assert (=> b!782821 (= e!435296 (seekKeyOrZeroReturnVacant!0 (bvadd resIntermediateX!5 #b00000000000000000000000000000001) (nextIndex!0 resIntermediateIndex!5 resIntermediateX!5 mask!3328) resIntermediateIndex!5 (select (arr!20412 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!782822 () Bool)

(declare-fun c!86966 () Bool)

(assert (=> b!782822 (= c!86966 (= lt!348895 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!782822 (= e!435297 e!435296)))

(declare-fun b!782823 () Bool)

(assert (=> b!782823 (= e!435297 (Found!8019 resIntermediateIndex!5))))

(declare-fun b!782824 () Bool)

(assert (=> b!782824 (= e!435296 (MissingVacant!8019 resIntermediateIndex!5))))

(assert (= (and d!102639 c!86968) b!782820))

(assert (= (and d!102639 (not c!86968)) b!782819))

(assert (= (and b!782819 c!86967) b!782823))

(assert (= (and b!782819 (not c!86967)) b!782822))

(assert (= (and b!782822 c!86966) b!782824))

(assert (= (and b!782822 (not c!86966)) b!782821))

(declare-fun m!725571 () Bool)

(assert (=> d!102639 m!725571))

(declare-fun m!725573 () Bool)

(assert (=> d!102639 m!725573))

(assert (=> d!102639 m!725223))

(assert (=> d!102639 m!725231))

(declare-fun m!725575 () Bool)

(assert (=> b!782821 m!725575))

(assert (=> b!782821 m!725575))

(assert (=> b!782821 m!725211))

(declare-fun m!725577 () Bool)

(assert (=> b!782821 m!725577))

(assert (=> b!782358 d!102639))

(declare-fun d!102641 () Bool)

(declare-fun res!529706 () Bool)

(declare-fun e!435302 () Bool)

(assert (=> d!102641 (=> res!529706 e!435302)))

(assert (=> d!102641 (= res!529706 (= (select (arr!20412 a!3186) #b00000000000000000000000000000000) k!2102))))

(assert (=> d!102641 (= (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000) e!435302)))

(declare-fun b!782829 () Bool)

(declare-fun e!435303 () Bool)

(assert (=> b!782829 (= e!435302 e!435303)))

(declare-fun res!529707 () Bool)

(assert (=> b!782829 (=> (not res!529707) (not e!435303))))

(assert (=> b!782829 (= res!529707 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!20833 a!3186)))))

(declare-fun b!782830 () Bool)

(assert (=> b!782830 (= e!435303 (arrayContainsKey!0 a!3186 k!2102 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!102641 (not res!529706)) b!782829))

(assert (= (and b!782829 res!529707) b!782830))

(declare-fun m!725581 () Bool)

(assert (=> d!102641 m!725581))

(declare-fun m!725583 () Bool)

(assert (=> b!782830 m!725583))

(assert (=> b!782349 d!102641))

(declare-fun bm!35269 () Bool)

(declare-fun call!35272 () Bool)

(declare-fun c!86971 () Bool)

(assert (=> bm!35269 (= call!35272 (arrayNoDuplicates!0 a!3186 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!86971 (Cons!14463 (select (arr!20412 a!3186) #b00000000000000000000000000000000) Nil!14464) Nil!14464)))))

(declare-fun b!782841 () Bool)

(declare-fun e!435315 () Bool)

(declare-fun e!435314 () Bool)

(assert (=> b!782841 (= e!435315 e!435314)))

(assert (=> b!782841 (= c!86971 (validKeyInArray!0 (select (arr!20412 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!782842 () Bool)

(declare-fun e!435313 () Bool)

(declare-fun contains!4110 (List!14467 (_ BitVec 64)) Bool)

(assert (=> b!782842 (= e!435313 (contains!4110 Nil!14464 (select (arr!20412 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!782843 () Bool)

(assert (=> b!782843 (= e!435314 call!35272)))

(declare-fun d!102645 () Bool)

(declare-fun res!529716 () Bool)

(declare-fun e!435312 () Bool)

(assert (=> d!102645 (=> res!529716 e!435312)))

(assert (=> d!102645 (= res!529716 (bvsge #b00000000000000000000000000000000 (size!20833 a!3186)))))

(assert (=> d!102645 (= (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14464) e!435312)))

(declare-fun b!782844 () Bool)

(assert (=> b!782844 (= e!435314 call!35272)))

(declare-fun b!782845 () Bool)

(assert (=> b!782845 (= e!435312 e!435315)))

(declare-fun res!529715 () Bool)

(assert (=> b!782845 (=> (not res!529715) (not e!435315))))

(assert (=> b!782845 (= res!529715 (not e!435313))))

(declare-fun res!529714 () Bool)

(assert (=> b!782845 (=> (not res!529714) (not e!435313))))

(assert (=> b!782845 (= res!529714 (validKeyInArray!0 (select (arr!20412 a!3186) #b00000000000000000000000000000000)))))

(assert (= (and d!102645 (not res!529716)) b!782845))

(assert (= (and b!782845 res!529714) b!782842))

(assert (= (and b!782845 res!529715) b!782841))

(assert (= (and b!782841 c!86971) b!782843))

(assert (= (and b!782841 (not c!86971)) b!782844))

(assert (= (or b!782843 b!782844) bm!35269))

(assert (=> bm!35269 m!725581))

(declare-fun m!725585 () Bool)

(assert (=> bm!35269 m!725585))

(assert (=> b!782841 m!725581))

(assert (=> b!782841 m!725581))

(declare-fun m!725587 () Bool)

(assert (=> b!782841 m!725587))

(assert (=> b!782842 m!725581))

(assert (=> b!782842 m!725581))

(declare-fun m!725589 () Bool)

(assert (=> b!782842 m!725589))

(assert (=> b!782845 m!725581))

(assert (=> b!782845 m!725581))

(assert (=> b!782845 m!725587))

(assert (=> b!782359 d!102645))

(declare-fun b!782888 () Bool)

(declare-fun e!435345 () Bool)

(declare-fun e!435343 () Bool)

(assert (=> b!782888 (= e!435345 e!435343)))

(declare-fun c!86983 () Bool)

(assert (=> b!782888 (= c!86983 (validKeyInArray!0 (select (arr!20412 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!782889 () Bool)

(declare-fun e!435344 () Bool)

(declare-fun call!35275 () Bool)

(assert (=> b!782889 (= e!435344 call!35275)))

(declare-fun bm!35272 () Bool)

(assert (=> bm!35272 (= call!35275 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun b!782890 () Bool)

(assert (=> b!782890 (= e!435343 e!435344)))

(declare-fun lt!348916 () (_ BitVec 64))

(assert (=> b!782890 (= lt!348916 (select (arr!20412 a!3186) #b00000000000000000000000000000000))))

(declare-fun lt!348915 () Unit!26986)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!42652 (_ BitVec 64) (_ BitVec 32)) Unit!26986)

(assert (=> b!782890 (= lt!348915 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!348916 #b00000000000000000000000000000000))))

(assert (=> b!782890 (arrayContainsKey!0 a!3186 lt!348916 #b00000000000000000000000000000000)))

(declare-fun lt!348914 () Unit!26986)

(assert (=> b!782890 (= lt!348914 lt!348915)))

(declare-fun res!529736 () Bool)

(assert (=> b!782890 (= res!529736 (= (seekEntryOrOpen!0 (select (arr!20412 a!3186) #b00000000000000000000000000000000) a!3186 mask!3328) (Found!8019 #b00000000000000000000000000000000)))))

(assert (=> b!782890 (=> (not res!529736) (not e!435344))))

(declare-fun d!102647 () Bool)

(declare-fun res!529737 () Bool)

(assert (=> d!102647 (=> res!529737 e!435345)))

(assert (=> d!102647 (= res!529737 (bvsge #b00000000000000000000000000000000 (size!20833 a!3186)))))

(assert (=> d!102647 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328) e!435345)))

(declare-fun b!782887 () Bool)

(assert (=> b!782887 (= e!435343 call!35275)))

(assert (= (and d!102647 (not res!529737)) b!782888))

(assert (= (and b!782888 c!86983) b!782890))

(assert (= (and b!782888 (not c!86983)) b!782887))

(assert (= (and b!782890 res!529736) b!782889))

(assert (= (or b!782889 b!782887) bm!35272))

(assert (=> b!782888 m!725581))

(assert (=> b!782888 m!725581))

(assert (=> b!782888 m!725587))

(declare-fun m!725615 () Bool)

(assert (=> bm!35272 m!725615))

(assert (=> b!782890 m!725581))

(declare-fun m!725617 () Bool)

(assert (=> b!782890 m!725617))

(declare-fun m!725619 () Bool)

(assert (=> b!782890 m!725619))

(assert (=> b!782890 m!725581))

(declare-fun m!725621 () Bool)

(assert (=> b!782890 m!725621))

(assert (=> b!782348 d!102647))

(declare-fun b!782897 () Bool)

(declare-fun e!435349 () SeekEntryResult!8019)

(declare-fun e!435351 () SeekEntryResult!8019)

(assert (=> b!782897 (= e!435349 e!435351)))

(declare-fun lt!348920 () (_ BitVec 64))

(declare-fun c!86988 () Bool)

(assert (=> b!782897 (= c!86988 (= lt!348920 (select (arr!20412 a!3186) j!159)))))

(declare-fun d!102663 () Bool)

(declare-fun lt!348921 () SeekEntryResult!8019)

(assert (=> d!102663 (and (or (is-Undefined!8019 lt!348921) (not (is-Found!8019 lt!348921)) (and (bvsge (index!34444 lt!348921) #b00000000000000000000000000000000) (bvslt (index!34444 lt!348921) (size!20833 a!3186)))) (or (is-Undefined!8019 lt!348921) (is-Found!8019 lt!348921) (not (is-MissingVacant!8019 lt!348921)) (not (= (index!34446 lt!348921) resIntermediateIndex!5)) (and (bvsge (index!34446 lt!348921) #b00000000000000000000000000000000) (bvslt (index!34446 lt!348921) (size!20833 a!3186)))) (or (is-Undefined!8019 lt!348921) (ite (is-Found!8019 lt!348921) (= (select (arr!20412 a!3186) (index!34444 lt!348921)) (select (arr!20412 a!3186) j!159)) (and (is-MissingVacant!8019 lt!348921) (= (index!34446 lt!348921) resIntermediateIndex!5) (= (select (arr!20412 a!3186) (index!34446 lt!348921)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!102663 (= lt!348921 e!435349)))

(declare-fun c!86989 () Bool)

(assert (=> d!102663 (= c!86989 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!102663 (= lt!348920 (select (arr!20412 a!3186) index!1321))))

(assert (=> d!102663 (validMask!0 mask!3328)))

(assert (=> d!102663 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20412 a!3186) j!159) a!3186 mask!3328) lt!348921)))

(declare-fun b!782898 () Bool)

(assert (=> b!782898 (= e!435349 Undefined!8019)))

(declare-fun e!435350 () SeekEntryResult!8019)

(declare-fun b!782899 () Bool)

(assert (=> b!782899 (= e!435350 (seekKeyOrZeroReturnVacant!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) resIntermediateIndex!5 (select (arr!20412 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!782900 () Bool)

(declare-fun c!86987 () Bool)

(assert (=> b!782900 (= c!86987 (= lt!348920 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!782900 (= e!435351 e!435350)))

(declare-fun b!782901 () Bool)

(assert (=> b!782901 (= e!435351 (Found!8019 index!1321))))

(declare-fun b!782902 () Bool)

(assert (=> b!782902 (= e!435350 (MissingVacant!8019 resIntermediateIndex!5))))

(assert (= (and d!102663 c!86989) b!782898))

(assert (= (and d!102663 (not c!86989)) b!782897))

(assert (= (and b!782897 c!86988) b!782901))

(assert (= (and b!782897 (not c!86988)) b!782900))

(assert (= (and b!782900 c!86987) b!782902))

(assert (= (and b!782900 (not c!86987)) b!782899))

(declare-fun m!725633 () Bool)

(assert (=> d!102663 m!725633))

(declare-fun m!725635 () Bool)

(assert (=> d!102663 m!725635))

(assert (=> d!102663 m!725409))

(assert (=> d!102663 m!725231))

(assert (=> b!782899 m!725405))

(assert (=> b!782899 m!725405))

(assert (=> b!782899 m!725211))

(declare-fun m!725637 () Bool)

(assert (=> b!782899 m!725637))

(assert (=> b!782361 d!102663))

(declare-fun b!782909 () Bool)

(declare-fun lt!348924 () SeekEntryResult!8019)

(assert (=> b!782909 (and (bvsge (index!34445 lt!348924) #b00000000000000000000000000000000) (bvslt (index!34445 lt!348924) (size!20833 lt!348694)))))

(declare-fun res!529740 () Bool)

(assert (=> b!782909 (= res!529740 (= (select (arr!20412 lt!348694) (index!34445 lt!348924)) lt!348691))))

(declare-fun e!435359 () Bool)

(assert (=> b!782909 (=> res!529740 e!435359)))

(declare-fun e!435356 () Bool)

(assert (=> b!782909 (= e!435356 e!435359)))

(declare-fun b!782910 () Bool)

(declare-fun e!435357 () SeekEntryResult!8019)

(assert (=> b!782910 (= e!435357 (Intermediate!8019 false index!1321 x!1131))))

(declare-fun b!782911 () Bool)

(declare-fun e!435358 () SeekEntryResult!8019)

(assert (=> b!782911 (= e!435358 (Intermediate!8019 true index!1321 x!1131))))

(declare-fun b!782912 () Bool)

(assert (=> b!782912 (and (bvsge (index!34445 lt!348924) #b00000000000000000000000000000000) (bvslt (index!34445 lt!348924) (size!20833 lt!348694)))))

(assert (=> b!782912 (= e!435359 (= (select (arr!20412 lt!348694) (index!34445 lt!348924)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!782913 () Bool)

(declare-fun e!435355 () Bool)

(assert (=> b!782913 (= e!435355 (bvsge (x!65423 lt!348924) #b01111111111111111111111111111110))))

(declare-fun b!782914 () Bool)

(assert (=> b!782914 (= e!435358 e!435357)))

(declare-fun c!86994 () Bool)

(declare-fun lt!348925 () (_ BitVec 64))

(assert (=> b!782914 (= c!86994 (or (= lt!348925 lt!348691) (= (bvadd lt!348925 lt!348925) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!102667 () Bool)

(assert (=> d!102667 e!435355))

(declare-fun c!86993 () Bool)

(assert (=> d!102667 (= c!86993 (and (is-Intermediate!8019 lt!348924) (undefined!8831 lt!348924)))))

(assert (=> d!102667 (= lt!348924 e!435358)))

(declare-fun c!86995 () Bool)

(assert (=> d!102667 (= c!86995 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!102667 (= lt!348925 (select (arr!20412 lt!348694) index!1321))))

(assert (=> d!102667 (validMask!0 mask!3328)))

(assert (=> d!102667 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!348691 lt!348694 mask!3328) lt!348924)))

(declare-fun b!782915 () Bool)

(assert (=> b!782915 (= e!435357 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) lt!348691 lt!348694 mask!3328))))

(declare-fun b!782916 () Bool)

(assert (=> b!782916 (= e!435355 e!435356)))

(declare-fun res!529739 () Bool)

(assert (=> b!782916 (= res!529739 (and (is-Intermediate!8019 lt!348924) (not (undefined!8831 lt!348924)) (bvslt (x!65423 lt!348924) #b01111111111111111111111111111110) (bvsge (x!65423 lt!348924) #b00000000000000000000000000000000) (bvsge (x!65423 lt!348924) x!1131)))))

(assert (=> b!782916 (=> (not res!529739) (not e!435356))))

(declare-fun b!782917 () Bool)

(assert (=> b!782917 (and (bvsge (index!34445 lt!348924) #b00000000000000000000000000000000) (bvslt (index!34445 lt!348924) (size!20833 lt!348694)))))

(declare-fun res!529738 () Bool)

(assert (=> b!782917 (= res!529738 (= (select (arr!20412 lt!348694) (index!34445 lt!348924)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!782917 (=> res!529738 e!435359)))

(assert (= (and d!102667 c!86995) b!782911))

(assert (= (and d!102667 (not c!86995)) b!782914))

(assert (= (and b!782914 c!86994) b!782910))

(assert (= (and b!782914 (not c!86994)) b!782915))

(assert (= (and d!102667 c!86993) b!782913))

(assert (= (and d!102667 (not c!86993)) b!782916))

(assert (= (and b!782916 res!529739) b!782909))

(assert (= (and b!782909 (not res!529740)) b!782917))

(assert (= (and b!782917 (not res!529738)) b!782912))

(declare-fun m!725645 () Bool)

(assert (=> b!782917 m!725645))

(assert (=> b!782915 m!725405))

(assert (=> b!782915 m!725405))

(declare-fun m!725647 () Bool)

(assert (=> b!782915 m!725647))

(assert (=> b!782909 m!725645))

(assert (=> d!102667 m!725483))

(assert (=> d!102667 m!725231))

(assert (=> b!782912 m!725645))

(assert (=> b!782360 d!102667))

(declare-fun b!782918 () Bool)

(declare-fun lt!348926 () SeekEntryResult!8019)

(assert (=> b!782918 (and (bvsge (index!34445 lt!348926) #b00000000000000000000000000000000) (bvslt (index!34445 lt!348926) (size!20833 lt!348694)))))

(declare-fun res!529743 () Bool)

(assert (=> b!782918 (= res!529743 (= (select (arr!20412 lt!348694) (index!34445 lt!348926)) lt!348691))))

(declare-fun e!435364 () Bool)

(assert (=> b!782918 (=> res!529743 e!435364)))

(declare-fun e!435361 () Bool)

(assert (=> b!782918 (= e!435361 e!435364)))

(declare-fun b!782919 () Bool)

(declare-fun e!435362 () SeekEntryResult!8019)

(assert (=> b!782919 (= e!435362 (Intermediate!8019 false (toIndex!0 lt!348691 mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!782920 () Bool)

(declare-fun e!435363 () SeekEntryResult!8019)

(assert (=> b!782920 (= e!435363 (Intermediate!8019 true (toIndex!0 lt!348691 mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!782921 () Bool)

(assert (=> b!782921 (and (bvsge (index!34445 lt!348926) #b00000000000000000000000000000000) (bvslt (index!34445 lt!348926) (size!20833 lt!348694)))))

(assert (=> b!782921 (= e!435364 (= (select (arr!20412 lt!348694) (index!34445 lt!348926)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!782922 () Bool)

(declare-fun e!435360 () Bool)

(assert (=> b!782922 (= e!435360 (bvsge (x!65423 lt!348926) #b01111111111111111111111111111110))))

(declare-fun b!782923 () Bool)

(assert (=> b!782923 (= e!435363 e!435362)))

(declare-fun c!86997 () Bool)

(declare-fun lt!348927 () (_ BitVec 64))

(assert (=> b!782923 (= c!86997 (or (= lt!348927 lt!348691) (= (bvadd lt!348927 lt!348927) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!102671 () Bool)

(assert (=> d!102671 e!435360))

(declare-fun c!86996 () Bool)

(assert (=> d!102671 (= c!86996 (and (is-Intermediate!8019 lt!348926) (undefined!8831 lt!348926)))))

(assert (=> d!102671 (= lt!348926 e!435363)))

(declare-fun c!86998 () Bool)

(assert (=> d!102671 (= c!86998 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!102671 (= lt!348927 (select (arr!20412 lt!348694) (toIndex!0 lt!348691 mask!3328)))))

(assert (=> d!102671 (validMask!0 mask!3328)))

(assert (=> d!102671 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!348691 mask!3328) lt!348691 lt!348694 mask!3328) lt!348926)))

(declare-fun b!782924 () Bool)

(assert (=> b!782924 (= e!435362 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!348691 mask!3328) #b00000000000000000000000000000000 mask!3328) lt!348691 lt!348694 mask!3328))))

(declare-fun b!782925 () Bool)

(assert (=> b!782925 (= e!435360 e!435361)))

(declare-fun res!529742 () Bool)

(assert (=> b!782925 (= res!529742 (and (is-Intermediate!8019 lt!348926) (not (undefined!8831 lt!348926)) (bvslt (x!65423 lt!348926) #b01111111111111111111111111111110) (bvsge (x!65423 lt!348926) #b00000000000000000000000000000000) (bvsge (x!65423 lt!348926) #b00000000000000000000000000000000)))))

(assert (=> b!782925 (=> (not res!529742) (not e!435361))))

(declare-fun b!782926 () Bool)

(assert (=> b!782926 (and (bvsge (index!34445 lt!348926) #b00000000000000000000000000000000) (bvslt (index!34445 lt!348926) (size!20833 lt!348694)))))

(declare-fun res!529741 () Bool)

(assert (=> b!782926 (= res!529741 (= (select (arr!20412 lt!348694) (index!34445 lt!348926)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!782926 (=> res!529741 e!435364)))

(assert (= (and d!102671 c!86998) b!782920))

(assert (= (and d!102671 (not c!86998)) b!782923))

(assert (= (and b!782923 c!86997) b!782919))

(assert (= (and b!782923 (not c!86997)) b!782924))

(assert (= (and d!102671 c!86996) b!782922))

(assert (= (and d!102671 (not c!86996)) b!782925))

(assert (= (and b!782925 res!529742) b!782918))

(assert (= (and b!782918 (not res!529743)) b!782926))

(assert (= (and b!782926 (not res!529741)) b!782921))

(declare-fun m!725655 () Bool)

(assert (=> b!782926 m!725655))

(assert (=> b!782924 m!725245))

(declare-fun m!725659 () Bool)

(assert (=> b!782924 m!725659))

(assert (=> b!782924 m!725659))

(declare-fun m!725661 () Bool)

(assert (=> b!782924 m!725661))

(assert (=> b!782918 m!725655))

(assert (=> d!102671 m!725245))

(declare-fun m!725663 () Bool)

(assert (=> d!102671 m!725663))

(assert (=> d!102671 m!725231))

(assert (=> b!782921 m!725655))

(assert (=> b!782360 d!102671))

(declare-fun d!102677 () Bool)

(declare-fun lt!348934 () (_ BitVec 32))

(declare-fun lt!348933 () (_ BitVec 32))

(assert (=> d!102677 (= lt!348934 (bvmul (bvxor lt!348933 (bvlshr lt!348933 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!102677 (= lt!348933 ((_ extract 31 0) (bvand (bvxor lt!348691 (bvlshr lt!348691 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!102677 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!529697 (let ((h!15588 ((_ extract 31 0) (bvand (bvxor lt!348691 (bvlshr lt!348691 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!65434 (bvmul (bvxor h!15588 (bvlshr h!15588 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!65434 (bvlshr x!65434 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!529697 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!529697 #b00000000000000000000000000000000))))))

(assert (=> d!102677 (= (toIndex!0 lt!348691 mask!3328) (bvand (bvxor lt!348934 (bvlshr lt!348934 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!782360 d!102677))

(declare-fun d!102679 () Bool)

(assert (=> d!102679 (= (validKeyInArray!0 (select (arr!20412 a!3186) j!159)) (and (not (= (select (arr!20412 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!20412 a!3186) j!159) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!782362 d!102679))

(assert (=> b!782351 d!102663))

(declare-fun b!782937 () Bool)

(declare-fun e!435371 () SeekEntryResult!8019)

(assert (=> b!782937 (= e!435371 Undefined!8019)))

(declare-fun b!782938 () Bool)

(declare-fun e!435373 () SeekEntryResult!8019)

(declare-fun lt!348937 () SeekEntryResult!8019)

(assert (=> b!782938 (= e!435373 (MissingZero!8019 (index!34445 lt!348937)))))

(declare-fun b!782939 () Bool)

(declare-fun e!435372 () SeekEntryResult!8019)

(assert (=> b!782939 (= e!435371 e!435372)))

(declare-fun lt!348936 () (_ BitVec 64))

(assert (=> b!782939 (= lt!348936 (select (arr!20412 a!3186) (index!34445 lt!348937)))))

(declare-fun c!87004 () Bool)

(assert (=> b!782939 (= c!87004 (= lt!348936 (select (arr!20412 a!3186) j!159)))))

(declare-fun b!782940 () Bool)

(declare-fun c!87005 () Bool)

(assert (=> b!782940 (= c!87005 (= lt!348936 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!782940 (= e!435372 e!435373)))

(declare-fun d!102681 () Bool)

(declare-fun lt!348935 () SeekEntryResult!8019)

(assert (=> d!102681 (and (or (is-Undefined!8019 lt!348935) (not (is-Found!8019 lt!348935)) (and (bvsge (index!34444 lt!348935) #b00000000000000000000000000000000) (bvslt (index!34444 lt!348935) (size!20833 a!3186)))) (or (is-Undefined!8019 lt!348935) (is-Found!8019 lt!348935) (not (is-MissingZero!8019 lt!348935)) (and (bvsge (index!34443 lt!348935) #b00000000000000000000000000000000) (bvslt (index!34443 lt!348935) (size!20833 a!3186)))) (or (is-Undefined!8019 lt!348935) (is-Found!8019 lt!348935) (is-MissingZero!8019 lt!348935) (not (is-MissingVacant!8019 lt!348935)) (and (bvsge (index!34446 lt!348935) #b00000000000000000000000000000000) (bvslt (index!34446 lt!348935) (size!20833 a!3186)))) (or (is-Undefined!8019 lt!348935) (ite (is-Found!8019 lt!348935) (= (select (arr!20412 a!3186) (index!34444 lt!348935)) (select (arr!20412 a!3186) j!159)) (ite (is-MissingZero!8019 lt!348935) (= (select (arr!20412 a!3186) (index!34443 lt!348935)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!8019 lt!348935) (= (select (arr!20412 a!3186) (index!34446 lt!348935)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!102681 (= lt!348935 e!435371)))

(declare-fun c!87003 () Bool)

(assert (=> d!102681 (= c!87003 (and (is-Intermediate!8019 lt!348937) (undefined!8831 lt!348937)))))

(assert (=> d!102681 (= lt!348937 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20412 a!3186) j!159) mask!3328) (select (arr!20412 a!3186) j!159) a!3186 mask!3328))))

(assert (=> d!102681 (validMask!0 mask!3328)))

(assert (=> d!102681 (= (seekEntryOrOpen!0 (select (arr!20412 a!3186) j!159) a!3186 mask!3328) lt!348935)))

(declare-fun b!782941 () Bool)

(assert (=> b!782941 (= e!435373 (seekKeyOrZeroReturnVacant!0 (x!65423 lt!348937) (index!34445 lt!348937) (index!34445 lt!348937) (select (arr!20412 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!782942 () Bool)

(assert (=> b!782942 (= e!435372 (Found!8019 (index!34445 lt!348937)))))

(assert (= (and d!102681 c!87003) b!782937))

(assert (= (and d!102681 (not c!87003)) b!782939))

(assert (= (and b!782939 c!87004) b!782942))

(assert (= (and b!782939 (not c!87004)) b!782940))

(assert (= (and b!782940 c!87005) b!782938))

(assert (= (and b!782940 (not c!87005)) b!782941))

(declare-fun m!725671 () Bool)

(assert (=> b!782939 m!725671))

(assert (=> d!102681 m!725231))

(declare-fun m!725673 () Bool)

(assert (=> d!102681 m!725673))

(declare-fun m!725675 () Bool)

(assert (=> d!102681 m!725675))

(declare-fun m!725677 () Bool)

(assert (=> d!102681 m!725677))

(assert (=> d!102681 m!725211))

(assert (=> d!102681 m!725219))

(assert (=> d!102681 m!725219))

(assert (=> d!102681 m!725211))

(assert (=> d!102681 m!725221))

(assert (=> b!782941 m!725211))

(declare-fun m!725679 () Bool)

(assert (=> b!782941 m!725679))

(assert (=> b!782353 d!102681))

(declare-fun b!782944 () Bool)

(declare-fun e!435376 () Bool)

(declare-fun e!435374 () Bool)

(assert (=> b!782944 (= e!435376 e!435374)))

(declare-fun c!87006 () Bool)

(assert (=> b!782944 (= c!87006 (validKeyInArray!0 (select (arr!20412 a!3186) j!159)))))

(declare-fun b!782945 () Bool)

(declare-fun e!435375 () Bool)

(declare-fun call!35277 () Bool)

(assert (=> b!782945 (= e!435375 call!35277)))

(declare-fun bm!35274 () Bool)

(assert (=> bm!35274 (= call!35277 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!159 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun b!782946 () Bool)

(assert (=> b!782946 (= e!435374 e!435375)))

(declare-fun lt!348940 () (_ BitVec 64))

(assert (=> b!782946 (= lt!348940 (select (arr!20412 a!3186) j!159))))

(declare-fun lt!348939 () Unit!26986)

(assert (=> b!782946 (= lt!348939 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!348940 j!159))))

(assert (=> b!782946 (arrayContainsKey!0 a!3186 lt!348940 #b00000000000000000000000000000000)))

(declare-fun lt!348938 () Unit!26986)

(assert (=> b!782946 (= lt!348938 lt!348939)))

(declare-fun res!529746 () Bool)

(assert (=> b!782946 (= res!529746 (= (seekEntryOrOpen!0 (select (arr!20412 a!3186) j!159) a!3186 mask!3328) (Found!8019 j!159)))))

(assert (=> b!782946 (=> (not res!529746) (not e!435375))))

(declare-fun d!102685 () Bool)

(declare-fun res!529747 () Bool)

(assert (=> d!102685 (=> res!529747 e!435376)))

(assert (=> d!102685 (= res!529747 (bvsge j!159 (size!20833 a!3186)))))

(assert (=> d!102685 (= (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328) e!435376)))

(declare-fun b!782943 () Bool)

