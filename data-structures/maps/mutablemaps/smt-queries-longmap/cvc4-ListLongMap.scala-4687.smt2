; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65204 () Bool)

(assert start!65204)

(declare-fun b!737346 () Bool)

(declare-fun e!412446 () Bool)

(declare-fun e!412449 () Bool)

(assert (=> b!737346 (= e!412446 (not e!412449))))

(declare-fun res!495723 () Bool)

(assert (=> b!737346 (=> res!495723 e!412449)))

(declare-datatypes ((SeekEntryResult!7382 0))(
  ( (MissingZero!7382 (index!31895 (_ BitVec 32))) (Found!7382 (index!31896 (_ BitVec 32))) (Intermediate!7382 (undefined!8194 Bool) (index!31897 (_ BitVec 32)) (x!62917 (_ BitVec 32))) (Undefined!7382) (MissingVacant!7382 (index!31898 (_ BitVec 32))) )
))
(declare-fun lt!327170 () SeekEntryResult!7382)

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!737346 (= res!495723 (or (not (is-Intermediate!7382 lt!327170)) (bvsge x!1131 (x!62917 lt!327170))))))

(declare-fun lt!327164 () SeekEntryResult!7382)

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!737346 (= lt!327164 (Found!7382 j!159))))

(declare-fun e!412447 () Bool)

(assert (=> b!737346 e!412447))

(declare-fun res!495726 () Bool)

(assert (=> b!737346 (=> (not res!495726) (not e!412447))))

(declare-datatypes ((array!41330 0))(
  ( (array!41331 (arr!19775 (Array (_ BitVec 32) (_ BitVec 64))) (size!20196 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41330)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41330 (_ BitVec 32)) Bool)

(assert (=> b!737346 (= res!495726 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25146 0))(
  ( (Unit!25147) )
))
(declare-fun lt!327172 () Unit!25146)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41330 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25146)

(assert (=> b!737346 (= lt!327172 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!737347 () Bool)

(declare-fun e!412451 () Unit!25146)

(declare-fun Unit!25148 () Unit!25146)

(assert (=> b!737347 (= e!412451 Unit!25148)))

(declare-fun lt!327165 () SeekEntryResult!7382)

(declare-fun lt!327163 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41330 (_ BitVec 32)) SeekEntryResult!7382)

(assert (=> b!737347 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327163 (select (arr!19775 a!3186) j!159) a!3186 mask!3328) lt!327165)))

(declare-fun b!737348 () Bool)

(declare-fun res!495721 () Bool)

(declare-fun e!412448 () Bool)

(assert (=> b!737348 (=> (not res!495721) (not e!412448))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!41330 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!737348 (= res!495721 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!737349 () Bool)

(declare-fun res!495715 () Bool)

(declare-fun e!412445 () Bool)

(assert (=> b!737349 (=> (not res!495715) (not e!412445))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!737349 (= res!495715 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20196 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20196 a!3186))))))

(declare-fun b!737350 () Bool)

(declare-fun res!495725 () Bool)

(assert (=> b!737350 (=> (not res!495725) (not e!412448))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!737350 (= res!495725 (validKeyInArray!0 (select (arr!19775 a!3186) j!159)))))

(declare-fun b!737351 () Bool)

(declare-fun e!412444 () Bool)

(assert (=> b!737351 (= e!412445 e!412444)))

(declare-fun res!495728 () Bool)

(assert (=> b!737351 (=> (not res!495728) (not e!412444))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!737351 (= res!495728 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19775 a!3186) j!159) mask!3328) (select (arr!19775 a!3186) j!159) a!3186 mask!3328) lt!327165))))

(assert (=> b!737351 (= lt!327165 (Intermediate!7382 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun e!412455 () Bool)

(declare-fun b!737352 () Bool)

(declare-fun lt!327168 () SeekEntryResult!7382)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41330 (_ BitVec 32)) SeekEntryResult!7382)

(assert (=> b!737352 (= e!412455 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19775 a!3186) j!159) a!3186 mask!3328) lt!327168))))

(declare-fun b!737353 () Bool)

(declare-fun res!495730 () Bool)

(assert (=> b!737353 (=> (not res!495730) (not e!412448))))

(assert (=> b!737353 (= res!495730 (validKeyInArray!0 k!2102))))

(declare-fun b!737354 () Bool)

(declare-fun e!412453 () Bool)

(assert (=> b!737354 (= e!412453 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19775 a!3186) j!159) a!3186 mask!3328) (Found!7382 j!159)))))

(declare-fun b!737355 () Bool)

(declare-fun res!495722 () Bool)

(assert (=> b!737355 (=> (not res!495722) (not e!412444))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!737355 (= res!495722 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19775 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!495724 () Bool)

(assert (=> start!65204 (=> (not res!495724) (not e!412448))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65204 (= res!495724 (validMask!0 mask!3328))))

(assert (=> start!65204 e!412448))

(assert (=> start!65204 true))

(declare-fun array_inv!15549 (array!41330) Bool)

(assert (=> start!65204 (array_inv!15549 a!3186)))

(declare-fun b!737356 () Bool)

(assert (=> b!737356 (= e!412447 e!412455)))

(declare-fun res!495731 () Bool)

(assert (=> b!737356 (=> (not res!495731) (not e!412455))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41330 (_ BitVec 32)) SeekEntryResult!7382)

(assert (=> b!737356 (= res!495731 (= (seekEntryOrOpen!0 (select (arr!19775 a!3186) j!159) a!3186 mask!3328) lt!327168))))

(assert (=> b!737356 (= lt!327168 (Found!7382 j!159))))

(declare-fun b!737357 () Bool)

(assert (=> b!737357 (= e!412448 e!412445)))

(declare-fun res!495729 () Bool)

(assert (=> b!737357 (=> (not res!495729) (not e!412445))))

(declare-fun lt!327171 () SeekEntryResult!7382)

(assert (=> b!737357 (= res!495729 (or (= lt!327171 (MissingZero!7382 i!1173)) (= lt!327171 (MissingVacant!7382 i!1173))))))

(assert (=> b!737357 (= lt!327171 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!737358 () Bool)

(declare-fun e!412452 () Bool)

(assert (=> b!737358 (= e!412452 true)))

(declare-fun lt!327174 () SeekEntryResult!7382)

(declare-fun lt!327175 () array!41330)

(declare-fun lt!327166 () (_ BitVec 64))

(assert (=> b!737358 (= lt!327174 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327163 lt!327166 lt!327175 mask!3328))))

(declare-fun b!737359 () Bool)

(declare-fun res!495716 () Bool)

(assert (=> b!737359 (=> (not res!495716) (not e!412445))))

(declare-datatypes ((List!13830 0))(
  ( (Nil!13827) (Cons!13826 (h!14898 (_ BitVec 64)) (t!20153 List!13830)) )
))
(declare-fun arrayNoDuplicates!0 (array!41330 (_ BitVec 32) List!13830) Bool)

(assert (=> b!737359 (= res!495716 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13827))))

(declare-fun b!737360 () Bool)

(assert (=> b!737360 (= e!412449 e!412452)))

(declare-fun res!495732 () Bool)

(assert (=> b!737360 (=> res!495732 e!412452)))

(assert (=> b!737360 (= res!495732 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (bvslt lt!327163 #b00000000000000000000000000000000) (bvsge lt!327163 (size!20196 a!3186))))))

(declare-fun lt!327176 () Unit!25146)

(assert (=> b!737360 (= lt!327176 e!412451)))

(declare-fun c!81197 () Bool)

(declare-fun lt!327169 () Bool)

(assert (=> b!737360 (= c!81197 lt!327169)))

(assert (=> b!737360 (= lt!327169 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!737360 (= lt!327163 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!737361 () Bool)

(assert (=> b!737361 (= e!412444 e!412446)))

(declare-fun res!495718 () Bool)

(assert (=> b!737361 (=> (not res!495718) (not e!412446))))

(declare-fun lt!327173 () SeekEntryResult!7382)

(assert (=> b!737361 (= res!495718 (= lt!327173 lt!327170))))

(assert (=> b!737361 (= lt!327170 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!327166 lt!327175 mask!3328))))

(assert (=> b!737361 (= lt!327173 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!327166 mask!3328) lt!327166 lt!327175 mask!3328))))

(assert (=> b!737361 (= lt!327166 (select (store (arr!19775 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!737361 (= lt!327175 (array!41331 (store (arr!19775 a!3186) i!1173 k!2102) (size!20196 a!3186)))))

(declare-fun e!412450 () Bool)

(declare-fun b!737362 () Bool)

(assert (=> b!737362 (= e!412450 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327163 resIntermediateIndex!5 (select (arr!19775 a!3186) j!159) a!3186 mask!3328) lt!327164)))))

(declare-fun b!737363 () Bool)

(assert (=> b!737363 (= e!412450 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327163 (select (arr!19775 a!3186) j!159) a!3186 mask!3328) lt!327165)))))

(declare-fun b!737364 () Bool)

(declare-fun res!495720 () Bool)

(assert (=> b!737364 (=> res!495720 e!412452)))

(assert (=> b!737364 (= res!495720 e!412450)))

(declare-fun c!81196 () Bool)

(assert (=> b!737364 (= c!81196 lt!327169)))

(declare-fun b!737365 () Bool)

(declare-fun Unit!25149 () Unit!25146)

(assert (=> b!737365 (= e!412451 Unit!25149)))

(declare-fun lt!327167 () SeekEntryResult!7382)

(assert (=> b!737365 (= lt!327167 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19775 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!737365 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327163 resIntermediateIndex!5 (select (arr!19775 a!3186) j!159) a!3186 mask!3328) lt!327164)))

(declare-fun b!737366 () Bool)

(assert (=> b!737366 (= e!412453 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19775 a!3186) j!159) a!3186 mask!3328) lt!327165))))

(declare-fun b!737367 () Bool)

(declare-fun res!495719 () Bool)

(assert (=> b!737367 (=> (not res!495719) (not e!412448))))

(assert (=> b!737367 (= res!495719 (and (= (size!20196 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20196 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20196 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!737368 () Bool)

(declare-fun res!495727 () Bool)

(assert (=> b!737368 (=> (not res!495727) (not e!412445))))

(assert (=> b!737368 (= res!495727 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!737369 () Bool)

(declare-fun res!495717 () Bool)

(assert (=> b!737369 (=> (not res!495717) (not e!412444))))

(assert (=> b!737369 (= res!495717 e!412453)))

(declare-fun c!81198 () Bool)

(assert (=> b!737369 (= c!81198 (bvsle x!1131 resIntermediateX!5))))

(assert (= (and start!65204 res!495724) b!737367))

(assert (= (and b!737367 res!495719) b!737350))

(assert (= (and b!737350 res!495725) b!737353))

(assert (= (and b!737353 res!495730) b!737348))

(assert (= (and b!737348 res!495721) b!737357))

(assert (= (and b!737357 res!495729) b!737368))

(assert (= (and b!737368 res!495727) b!737359))

(assert (= (and b!737359 res!495716) b!737349))

(assert (= (and b!737349 res!495715) b!737351))

(assert (= (and b!737351 res!495728) b!737355))

(assert (= (and b!737355 res!495722) b!737369))

(assert (= (and b!737369 c!81198) b!737366))

(assert (= (and b!737369 (not c!81198)) b!737354))

(assert (= (and b!737369 res!495717) b!737361))

(assert (= (and b!737361 res!495718) b!737346))

(assert (= (and b!737346 res!495726) b!737356))

(assert (= (and b!737356 res!495731) b!737352))

(assert (= (and b!737346 (not res!495723)) b!737360))

(assert (= (and b!737360 c!81197) b!737347))

(assert (= (and b!737360 (not c!81197)) b!737365))

(assert (= (and b!737360 (not res!495732)) b!737364))

(assert (= (and b!737364 c!81196) b!737363))

(assert (= (and b!737364 (not c!81196)) b!737362))

(assert (= (and b!737364 (not res!495720)) b!737358))

(declare-fun m!689317 () Bool)

(assert (=> start!65204 m!689317))

(declare-fun m!689319 () Bool)

(assert (=> start!65204 m!689319))

(declare-fun m!689321 () Bool)

(assert (=> b!737353 m!689321))

(declare-fun m!689323 () Bool)

(assert (=> b!737348 m!689323))

(declare-fun m!689325 () Bool)

(assert (=> b!737358 m!689325))

(declare-fun m!689327 () Bool)

(assert (=> b!737350 m!689327))

(assert (=> b!737350 m!689327))

(declare-fun m!689329 () Bool)

(assert (=> b!737350 m!689329))

(declare-fun m!689331 () Bool)

(assert (=> b!737346 m!689331))

(declare-fun m!689333 () Bool)

(assert (=> b!737346 m!689333))

(declare-fun m!689335 () Bool)

(assert (=> b!737361 m!689335))

(declare-fun m!689337 () Bool)

(assert (=> b!737361 m!689337))

(declare-fun m!689339 () Bool)

(assert (=> b!737361 m!689339))

(declare-fun m!689341 () Bool)

(assert (=> b!737361 m!689341))

(declare-fun m!689343 () Bool)

(assert (=> b!737361 m!689343))

(assert (=> b!737361 m!689337))

(assert (=> b!737354 m!689327))

(assert (=> b!737354 m!689327))

(declare-fun m!689345 () Bool)

(assert (=> b!737354 m!689345))

(assert (=> b!737352 m!689327))

(assert (=> b!737352 m!689327))

(declare-fun m!689347 () Bool)

(assert (=> b!737352 m!689347))

(assert (=> b!737362 m!689327))

(assert (=> b!737362 m!689327))

(declare-fun m!689349 () Bool)

(assert (=> b!737362 m!689349))

(declare-fun m!689351 () Bool)

(assert (=> b!737360 m!689351))

(assert (=> b!737366 m!689327))

(assert (=> b!737366 m!689327))

(declare-fun m!689353 () Bool)

(assert (=> b!737366 m!689353))

(assert (=> b!737356 m!689327))

(assert (=> b!737356 m!689327))

(declare-fun m!689355 () Bool)

(assert (=> b!737356 m!689355))

(assert (=> b!737363 m!689327))

(assert (=> b!737363 m!689327))

(declare-fun m!689357 () Bool)

(assert (=> b!737363 m!689357))

(assert (=> b!737347 m!689327))

(assert (=> b!737347 m!689327))

(assert (=> b!737347 m!689357))

(declare-fun m!689359 () Bool)

(assert (=> b!737368 m!689359))

(declare-fun m!689361 () Bool)

(assert (=> b!737357 m!689361))

(assert (=> b!737351 m!689327))

(assert (=> b!737351 m!689327))

(declare-fun m!689363 () Bool)

(assert (=> b!737351 m!689363))

(assert (=> b!737351 m!689363))

(assert (=> b!737351 m!689327))

(declare-fun m!689365 () Bool)

(assert (=> b!737351 m!689365))

(declare-fun m!689367 () Bool)

(assert (=> b!737359 m!689367))

(declare-fun m!689369 () Bool)

(assert (=> b!737355 m!689369))

(assert (=> b!737365 m!689327))

(assert (=> b!737365 m!689327))

(assert (=> b!737365 m!689345))

(assert (=> b!737365 m!689327))

(assert (=> b!737365 m!689349))

(push 1)

