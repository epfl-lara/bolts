; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65260 () Bool)

(assert start!65260)

(declare-fun b!739362 () Bool)

(declare-fun res!497228 () Bool)

(declare-fun e!413452 () Bool)

(assert (=> b!739362 (=> (not res!497228) (not e!413452))))

(declare-datatypes ((array!41386 0))(
  ( (array!41387 (arr!19803 (Array (_ BitVec 32) (_ BitVec 64))) (size!20224 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41386)

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!41386 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!739362 (= res!497228 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun e!413460 () Bool)

(declare-datatypes ((SeekEntryResult!7410 0))(
  ( (MissingZero!7410 (index!32007 (_ BitVec 32))) (Found!7410 (index!32008 (_ BitVec 32))) (Intermediate!7410 (undefined!8222 Bool) (index!32009 (_ BitVec 32)) (x!63025 (_ BitVec 32))) (Undefined!7410) (MissingVacant!7410 (index!32010 (_ BitVec 32))) )
))
(declare-fun lt!328345 () SeekEntryResult!7410)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun b!739363 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun lt!328340 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41386 (_ BitVec 32)) SeekEntryResult!7410)

(assert (=> b!739363 (= e!413460 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328340 resIntermediateIndex!5 (select (arr!19803 a!3186) j!159) a!3186 mask!3328) lt!328345)))))

(declare-fun b!739364 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!328339 () SeekEntryResult!7410)

(declare-fun e!413463 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41386 (_ BitVec 32)) SeekEntryResult!7410)

(assert (=> b!739364 (= e!413463 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19803 a!3186) j!159) a!3186 mask!3328) lt!328339))))

(declare-fun res!497236 () Bool)

(assert (=> start!65260 (=> (not res!497236) (not e!413452))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65260 (= res!497236 (validMask!0 mask!3328))))

(assert (=> start!65260 e!413452))

(assert (=> start!65260 true))

(declare-fun array_inv!15577 (array!41386) Bool)

(assert (=> start!65260 (array_inv!15577 a!3186)))

(declare-fun b!739365 () Bool)

(declare-fun e!413462 () Bool)

(assert (=> b!739365 (= e!413452 e!413462)))

(declare-fun res!497230 () Bool)

(assert (=> b!739365 (=> (not res!497230) (not e!413462))))

(declare-fun lt!328349 () SeekEntryResult!7410)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!739365 (= res!497230 (or (= lt!328349 (MissingZero!7410 i!1173)) (= lt!328349 (MissingVacant!7410 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41386 (_ BitVec 32)) SeekEntryResult!7410)

(assert (=> b!739365 (= lt!328349 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!739366 () Bool)

(declare-fun res!497241 () Bool)

(assert (=> b!739366 (=> (not res!497241) (not e!413452))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!739366 (= res!497241 (validKeyInArray!0 (select (arr!19803 a!3186) j!159)))))

(declare-fun b!739367 () Bool)

(declare-fun res!497244 () Bool)

(declare-fun e!413455 () Bool)

(assert (=> b!739367 (=> (not res!497244) (not e!413455))))

(assert (=> b!739367 (= res!497244 e!413463)))

(declare-fun c!81449 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!739367 (= c!81449 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!739368 () Bool)

(declare-fun res!497234 () Bool)

(assert (=> b!739368 (=> (not res!497234) (not e!413462))))

(assert (=> b!739368 (= res!497234 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20224 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20224 a!3186))))))

(declare-fun b!739369 () Bool)

(declare-fun res!497238 () Bool)

(assert (=> b!739369 (=> (not res!497238) (not e!413462))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41386 (_ BitVec 32)) Bool)

(assert (=> b!739369 (= res!497238 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!739370 () Bool)

(declare-fun e!413453 () Bool)

(declare-fun e!413458 () Bool)

(assert (=> b!739370 (= e!413453 e!413458)))

(declare-fun res!497235 () Bool)

(assert (=> b!739370 (=> res!497235 e!413458)))

(assert (=> b!739370 (= res!497235 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (bvslt lt!328340 #b00000000000000000000000000000000) (bvsge lt!328340 (size!20224 a!3186))))))

(declare-datatypes ((Unit!25258 0))(
  ( (Unit!25259) )
))
(declare-fun lt!328342 () Unit!25258)

(declare-fun e!413461 () Unit!25258)

(assert (=> b!739370 (= lt!328342 e!413461)))

(declare-fun c!81448 () Bool)

(declare-fun lt!328348 () Bool)

(assert (=> b!739370 (= c!81448 lt!328348)))

(assert (=> b!739370 (= lt!328348 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!739370 (= lt!328340 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!739371 () Bool)

(declare-fun e!413454 () Bool)

(declare-fun e!413457 () Bool)

(assert (=> b!739371 (= e!413454 e!413457)))

(declare-fun res!497243 () Bool)

(assert (=> b!739371 (=> (not res!497243) (not e!413457))))

(declare-fun lt!328344 () SeekEntryResult!7410)

(assert (=> b!739371 (= res!497243 (= (seekEntryOrOpen!0 (select (arr!19803 a!3186) j!159) a!3186 mask!3328) lt!328344))))

(assert (=> b!739371 (= lt!328344 (Found!7410 j!159))))

(declare-fun b!739372 () Bool)

(declare-fun res!497232 () Bool)

(assert (=> b!739372 (=> (not res!497232) (not e!413455))))

(assert (=> b!739372 (= res!497232 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19803 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!739373 () Bool)

(assert (=> b!739373 (= e!413460 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328340 (select (arr!19803 a!3186) j!159) a!3186 mask!3328) lt!328339)))))

(declare-fun b!739374 () Bool)

(declare-fun res!497233 () Bool)

(assert (=> b!739374 (=> res!497233 e!413458)))

(assert (=> b!739374 (= res!497233 e!413460)))

(declare-fun c!81450 () Bool)

(assert (=> b!739374 (= c!81450 lt!328348)))

(declare-fun b!739375 () Bool)

(assert (=> b!739375 (= e!413463 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19803 a!3186) j!159) a!3186 mask!3328) (Found!7410 j!159)))))

(declare-fun b!739376 () Bool)

(assert (=> b!739376 (= e!413458 true)))

(declare-fun lt!328341 () array!41386)

(declare-fun lt!328350 () SeekEntryResult!7410)

(declare-fun lt!328346 () (_ BitVec 64))

(assert (=> b!739376 (= lt!328350 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328340 lt!328346 lt!328341 mask!3328))))

(declare-fun b!739377 () Bool)

(declare-fun res!497229 () Bool)

(assert (=> b!739377 (=> (not res!497229) (not e!413462))))

(declare-datatypes ((List!13858 0))(
  ( (Nil!13855) (Cons!13854 (h!14926 (_ BitVec 64)) (t!20181 List!13858)) )
))
(declare-fun arrayNoDuplicates!0 (array!41386 (_ BitVec 32) List!13858) Bool)

(assert (=> b!739377 (= res!497229 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13855))))

(declare-fun b!739378 () Bool)

(declare-fun e!413459 () Bool)

(assert (=> b!739378 (= e!413459 (not e!413453))))

(declare-fun res!497240 () Bool)

(assert (=> b!739378 (=> res!497240 e!413453)))

(declare-fun lt!328347 () SeekEntryResult!7410)

(assert (=> b!739378 (= res!497240 (or (not (is-Intermediate!7410 lt!328347)) (bvsge x!1131 (x!63025 lt!328347))))))

(assert (=> b!739378 (= lt!328345 (Found!7410 j!159))))

(assert (=> b!739378 e!413454))

(declare-fun res!497231 () Bool)

(assert (=> b!739378 (=> (not res!497231) (not e!413454))))

(assert (=> b!739378 (= res!497231 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!328351 () Unit!25258)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41386 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25258)

(assert (=> b!739378 (= lt!328351 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!739379 () Bool)

(assert (=> b!739379 (= e!413457 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19803 a!3186) j!159) a!3186 mask!3328) lt!328344))))

(declare-fun b!739380 () Bool)

(declare-fun res!497239 () Bool)

(assert (=> b!739380 (=> (not res!497239) (not e!413452))))

(assert (=> b!739380 (= res!497239 (and (= (size!20224 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20224 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20224 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!739381 () Bool)

(declare-fun Unit!25260 () Unit!25258)

(assert (=> b!739381 (= e!413461 Unit!25260)))

(declare-fun lt!328343 () SeekEntryResult!7410)

(assert (=> b!739381 (= lt!328343 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19803 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!739381 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328340 resIntermediateIndex!5 (select (arr!19803 a!3186) j!159) a!3186 mask!3328) lt!328345)))

(declare-fun b!739382 () Bool)

(assert (=> b!739382 (= e!413455 e!413459)))

(declare-fun res!497227 () Bool)

(assert (=> b!739382 (=> (not res!497227) (not e!413459))))

(declare-fun lt!328352 () SeekEntryResult!7410)

(assert (=> b!739382 (= res!497227 (= lt!328352 lt!328347))))

(assert (=> b!739382 (= lt!328347 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!328346 lt!328341 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!739382 (= lt!328352 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!328346 mask!3328) lt!328346 lt!328341 mask!3328))))

(assert (=> b!739382 (= lt!328346 (select (store (arr!19803 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!739382 (= lt!328341 (array!41387 (store (arr!19803 a!3186) i!1173 k!2102) (size!20224 a!3186)))))

(declare-fun b!739383 () Bool)

(declare-fun Unit!25261 () Unit!25258)

(assert (=> b!739383 (= e!413461 Unit!25261)))

(assert (=> b!739383 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328340 (select (arr!19803 a!3186) j!159) a!3186 mask!3328) lt!328339)))

(declare-fun b!739384 () Bool)

(declare-fun res!497242 () Bool)

(assert (=> b!739384 (=> (not res!497242) (not e!413452))))

(assert (=> b!739384 (= res!497242 (validKeyInArray!0 k!2102))))

(declare-fun b!739385 () Bool)

(assert (=> b!739385 (= e!413462 e!413455)))

(declare-fun res!497237 () Bool)

(assert (=> b!739385 (=> (not res!497237) (not e!413455))))

(assert (=> b!739385 (= res!497237 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19803 a!3186) j!159) mask!3328) (select (arr!19803 a!3186) j!159) a!3186 mask!3328) lt!328339))))

(assert (=> b!739385 (= lt!328339 (Intermediate!7410 false resIntermediateIndex!5 resIntermediateX!5))))

(assert (= (and start!65260 res!497236) b!739380))

(assert (= (and b!739380 res!497239) b!739366))

(assert (= (and b!739366 res!497241) b!739384))

(assert (= (and b!739384 res!497242) b!739362))

(assert (= (and b!739362 res!497228) b!739365))

(assert (= (and b!739365 res!497230) b!739369))

(assert (= (and b!739369 res!497238) b!739377))

(assert (= (and b!739377 res!497229) b!739368))

(assert (= (and b!739368 res!497234) b!739385))

(assert (= (and b!739385 res!497237) b!739372))

(assert (= (and b!739372 res!497232) b!739367))

(assert (= (and b!739367 c!81449) b!739364))

(assert (= (and b!739367 (not c!81449)) b!739375))

(assert (= (and b!739367 res!497244) b!739382))

(assert (= (and b!739382 res!497227) b!739378))

(assert (= (and b!739378 res!497231) b!739371))

(assert (= (and b!739371 res!497243) b!739379))

(assert (= (and b!739378 (not res!497240)) b!739370))

(assert (= (and b!739370 c!81448) b!739383))

(assert (= (and b!739370 (not c!81448)) b!739381))

(assert (= (and b!739370 (not res!497235)) b!739374))

(assert (= (and b!739374 c!81450) b!739373))

(assert (= (and b!739374 (not c!81450)) b!739363))

(assert (= (and b!739374 (not res!497233)) b!739376))

(declare-fun m!690829 () Bool)

(assert (=> b!739365 m!690829))

(declare-fun m!690831 () Bool)

(assert (=> b!739372 m!690831))

(declare-fun m!690833 () Bool)

(assert (=> start!65260 m!690833))

(declare-fun m!690835 () Bool)

(assert (=> start!65260 m!690835))

(declare-fun m!690837 () Bool)

(assert (=> b!739371 m!690837))

(assert (=> b!739371 m!690837))

(declare-fun m!690839 () Bool)

(assert (=> b!739371 m!690839))

(declare-fun m!690841 () Bool)

(assert (=> b!739384 m!690841))

(assert (=> b!739366 m!690837))

(assert (=> b!739366 m!690837))

(declare-fun m!690843 () Bool)

(assert (=> b!739366 m!690843))

(assert (=> b!739364 m!690837))

(assert (=> b!739364 m!690837))

(declare-fun m!690845 () Bool)

(assert (=> b!739364 m!690845))

(assert (=> b!739383 m!690837))

(assert (=> b!739383 m!690837))

(declare-fun m!690847 () Bool)

(assert (=> b!739383 m!690847))

(assert (=> b!739381 m!690837))

(assert (=> b!739381 m!690837))

(declare-fun m!690849 () Bool)

(assert (=> b!739381 m!690849))

(assert (=> b!739381 m!690837))

(declare-fun m!690851 () Bool)

(assert (=> b!739381 m!690851))

(declare-fun m!690853 () Bool)

(assert (=> b!739370 m!690853))

(declare-fun m!690855 () Bool)

(assert (=> b!739378 m!690855))

(declare-fun m!690857 () Bool)

(assert (=> b!739378 m!690857))

(assert (=> b!739373 m!690837))

(assert (=> b!739373 m!690837))

(assert (=> b!739373 m!690847))

(declare-fun m!690859 () Bool)

(assert (=> b!739369 m!690859))

(declare-fun m!690861 () Bool)

(assert (=> b!739376 m!690861))

(assert (=> b!739375 m!690837))

(assert (=> b!739375 m!690837))

(assert (=> b!739375 m!690849))

(declare-fun m!690863 () Bool)

(assert (=> b!739377 m!690863))

(assert (=> b!739385 m!690837))

(assert (=> b!739385 m!690837))

(declare-fun m!690865 () Bool)

(assert (=> b!739385 m!690865))

(assert (=> b!739385 m!690865))

(assert (=> b!739385 m!690837))

(declare-fun m!690867 () Bool)

(assert (=> b!739385 m!690867))

(assert (=> b!739363 m!690837))

(assert (=> b!739363 m!690837))

(assert (=> b!739363 m!690851))

(declare-fun m!690869 () Bool)

(assert (=> b!739382 m!690869))

(declare-fun m!690871 () Bool)

(assert (=> b!739382 m!690871))

(declare-fun m!690873 () Bool)

(assert (=> b!739382 m!690873))

(assert (=> b!739382 m!690869))

(declare-fun m!690875 () Bool)

(assert (=> b!739382 m!690875))

(declare-fun m!690877 () Bool)

(assert (=> b!739382 m!690877))

(assert (=> b!739379 m!690837))

(assert (=> b!739379 m!690837))

(declare-fun m!690879 () Bool)

(assert (=> b!739379 m!690879))

(declare-fun m!690881 () Bool)

(assert (=> b!739362 m!690881))

(push 1)

