; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65686 () Bool)

(assert start!65686)

(declare-fun b!752329 () Bool)

(declare-fun e!419672 () Bool)

(declare-datatypes ((SeekEntryResult!7623 0))(
  ( (MissingZero!7623 (index!32859 (_ BitVec 32))) (Found!7623 (index!32860 (_ BitVec 32))) (Intermediate!7623 (undefined!8435 Bool) (index!32861 (_ BitVec 32)) (x!63806 (_ BitVec 32))) (Undefined!7623) (MissingVacant!7623 (index!32862 (_ BitVec 32))) )
))
(declare-fun lt!334672 () SeekEntryResult!7623)

(declare-fun lt!334671 () SeekEntryResult!7623)

(assert (=> b!752329 (= e!419672 (= lt!334672 lt!334671))))

(declare-fun b!752330 () Bool)

(declare-fun res!508170 () Bool)

(assert (=> b!752330 (=> (not res!508170) (not e!419672))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-datatypes ((array!41812 0))(
  ( (array!41813 (arr!20016 (Array (_ BitVec 32) (_ BitVec 64))) (size!20437 (_ BitVec 32))) )
))
(declare-fun lt!334677 () array!41812)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun lt!334681 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41812 (_ BitVec 32)) SeekEntryResult!7623)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41812 (_ BitVec 32)) SeekEntryResult!7623)

(assert (=> b!752330 (= res!508170 (= (seekEntryOrOpen!0 lt!334681 lt!334677 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!334681 lt!334677 mask!3328)))))

(declare-fun b!752331 () Bool)

(declare-fun e!419678 () Bool)

(assert (=> b!752331 (= e!419678 true)))

(assert (=> b!752331 e!419672))

(declare-fun res!508171 () Bool)

(assert (=> b!752331 (=> (not res!508171) (not e!419672))))

(declare-fun lt!334682 () (_ BitVec 64))

(assert (=> b!752331 (= res!508171 (= lt!334682 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!25894 0))(
  ( (Unit!25895) )
))
(declare-fun lt!334680 () Unit!25894)

(declare-fun e!419671 () Unit!25894)

(assert (=> b!752331 (= lt!334680 e!419671)))

(declare-fun c!82464 () Bool)

(assert (=> b!752331 (= c!82464 (= lt!334682 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!752332 () Bool)

(declare-fun res!508178 () Bool)

(declare-fun e!419680 () Bool)

(assert (=> b!752332 (=> (not res!508178) (not e!419680))))

(declare-fun a!3186 () array!41812)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!752332 (= res!508178 (and (= (size!20437 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20437 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20437 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!752333 () Bool)

(declare-fun Unit!25896 () Unit!25894)

(assert (=> b!752333 (= e!419671 Unit!25896)))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun b!752334 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun lt!334676 () SeekEntryResult!7623)

(declare-fun e!419677 () Bool)

(assert (=> b!752334 (= e!419677 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20016 a!3186) j!159) a!3186 mask!3328) lt!334676))))

(declare-fun res!508179 () Bool)

(assert (=> start!65686 (=> (not res!508179) (not e!419680))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65686 (= res!508179 (validMask!0 mask!3328))))

(assert (=> start!65686 e!419680))

(assert (=> start!65686 true))

(declare-fun array_inv!15790 (array!41812) Bool)

(assert (=> start!65686 (array_inv!15790 a!3186)))

(declare-fun b!752335 () Bool)

(declare-fun e!419675 () Bool)

(declare-fun e!419681 () Bool)

(assert (=> b!752335 (= e!419675 (not e!419681))))

(declare-fun res!508169 () Bool)

(assert (=> b!752335 (=> res!508169 e!419681)))

(declare-fun lt!334674 () SeekEntryResult!7623)

(assert (=> b!752335 (= res!508169 (or (not (is-Intermediate!7623 lt!334674)) (bvslt x!1131 (x!63806 lt!334674)) (not (= x!1131 (x!63806 lt!334674))) (not (= index!1321 (index!32861 lt!334674)))))))

(assert (=> b!752335 e!419677))

(declare-fun res!508176 () Bool)

(assert (=> b!752335 (=> (not res!508176) (not e!419677))))

(assert (=> b!752335 (= res!508176 (= lt!334672 lt!334676))))

(assert (=> b!752335 (= lt!334676 (Found!7623 j!159))))

(assert (=> b!752335 (= lt!334672 (seekEntryOrOpen!0 (select (arr!20016 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41812 (_ BitVec 32)) Bool)

(assert (=> b!752335 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!334673 () Unit!25894)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41812 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25894)

(assert (=> b!752335 (= lt!334673 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!752336 () Bool)

(declare-fun res!508166 () Bool)

(declare-fun e!419676 () Bool)

(assert (=> b!752336 (=> (not res!508166) (not e!419676))))

(assert (=> b!752336 (= res!508166 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20437 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20437 a!3186))))))

(declare-fun e!419674 () Bool)

(declare-fun lt!334679 () SeekEntryResult!7623)

(declare-fun b!752337 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41812 (_ BitVec 32)) SeekEntryResult!7623)

(assert (=> b!752337 (= e!419674 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20016 a!3186) j!159) a!3186 mask!3328) lt!334679))))

(declare-fun b!752338 () Bool)

(declare-fun res!508167 () Bool)

(assert (=> b!752338 (=> (not res!508167) (not e!419676))))

(declare-datatypes ((List!14071 0))(
  ( (Nil!14068) (Cons!14067 (h!15139 (_ BitVec 64)) (t!20394 List!14071)) )
))
(declare-fun arrayNoDuplicates!0 (array!41812 (_ BitVec 32) List!14071) Bool)

(assert (=> b!752338 (= res!508167 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14068))))

(declare-fun b!752339 () Bool)

(declare-fun res!508180 () Bool)

(assert (=> b!752339 (=> (not res!508180) (not e!419676))))

(assert (=> b!752339 (= res!508180 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!752340 () Bool)

(assert (=> b!752340 (= e!419680 e!419676)))

(declare-fun res!508181 () Bool)

(assert (=> b!752340 (=> (not res!508181) (not e!419676))))

(declare-fun lt!334678 () SeekEntryResult!7623)

(assert (=> b!752340 (= res!508181 (or (= lt!334678 (MissingZero!7623 i!1173)) (= lt!334678 (MissingVacant!7623 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!752340 (= lt!334678 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!752341 () Bool)

(declare-fun res!508174 () Bool)

(assert (=> b!752341 (=> (not res!508174) (not e!419680))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!752341 (= res!508174 (validKeyInArray!0 (select (arr!20016 a!3186) j!159)))))

(declare-fun b!752342 () Bool)

(declare-fun res!508175 () Bool)

(declare-fun e!419673 () Bool)

(assert (=> b!752342 (=> (not res!508175) (not e!419673))))

(assert (=> b!752342 (= res!508175 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20016 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!752343 () Bool)

(declare-fun res!508173 () Bool)

(assert (=> b!752343 (=> (not res!508173) (not e!419673))))

(assert (=> b!752343 (= res!508173 e!419674)))

(declare-fun c!82463 () Bool)

(assert (=> b!752343 (= c!82463 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!752344 () Bool)

(declare-fun e!419679 () Bool)

(assert (=> b!752344 (= e!419679 e!419678)))

(declare-fun res!508168 () Bool)

(assert (=> b!752344 (=> res!508168 e!419678)))

(assert (=> b!752344 (= res!508168 (= lt!334682 lt!334681))))

(assert (=> b!752344 (= lt!334682 (select (store (arr!20016 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!752345 () Bool)

(declare-fun res!508164 () Bool)

(assert (=> b!752345 (=> (not res!508164) (not e!419680))))

(declare-fun arrayContainsKey!0 (array!41812 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!752345 (= res!508164 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!752346 () Bool)

(assert (=> b!752346 (= e!419673 e!419675)))

(declare-fun res!508165 () Bool)

(assert (=> b!752346 (=> (not res!508165) (not e!419675))))

(declare-fun lt!334675 () SeekEntryResult!7623)

(assert (=> b!752346 (= res!508165 (= lt!334675 lt!334674))))

(assert (=> b!752346 (= lt!334674 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!334681 lt!334677 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!752346 (= lt!334675 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!334681 mask!3328) lt!334681 lt!334677 mask!3328))))

(assert (=> b!752346 (= lt!334681 (select (store (arr!20016 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!752346 (= lt!334677 (array!41813 (store (arr!20016 a!3186) i!1173 k!2102) (size!20437 a!3186)))))

(declare-fun b!752347 () Bool)

(declare-fun Unit!25897 () Unit!25894)

(assert (=> b!752347 (= e!419671 Unit!25897)))

(assert (=> b!752347 false))

(declare-fun b!752348 () Bool)

(declare-fun res!508172 () Bool)

(assert (=> b!752348 (=> (not res!508172) (not e!419680))))

(assert (=> b!752348 (= res!508172 (validKeyInArray!0 k!2102))))

(declare-fun b!752349 () Bool)

(assert (=> b!752349 (= e!419674 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20016 a!3186) j!159) a!3186 mask!3328) (Found!7623 j!159)))))

(declare-fun b!752350 () Bool)

(assert (=> b!752350 (= e!419676 e!419673)))

(declare-fun res!508177 () Bool)

(assert (=> b!752350 (=> (not res!508177) (not e!419673))))

(assert (=> b!752350 (= res!508177 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20016 a!3186) j!159) mask!3328) (select (arr!20016 a!3186) j!159) a!3186 mask!3328) lt!334679))))

(assert (=> b!752350 (= lt!334679 (Intermediate!7623 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!752351 () Bool)

(assert (=> b!752351 (= e!419681 e!419679)))

(declare-fun res!508182 () Bool)

(assert (=> b!752351 (=> res!508182 e!419679)))

(assert (=> b!752351 (= res!508182 (not (= lt!334671 lt!334676)))))

(assert (=> b!752351 (= lt!334671 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20016 a!3186) j!159) a!3186 mask!3328))))

(assert (= (and start!65686 res!508179) b!752332))

(assert (= (and b!752332 res!508178) b!752341))

(assert (= (and b!752341 res!508174) b!752348))

(assert (= (and b!752348 res!508172) b!752345))

(assert (= (and b!752345 res!508164) b!752340))

(assert (= (and b!752340 res!508181) b!752339))

(assert (= (and b!752339 res!508180) b!752338))

(assert (= (and b!752338 res!508167) b!752336))

(assert (= (and b!752336 res!508166) b!752350))

(assert (= (and b!752350 res!508177) b!752342))

(assert (= (and b!752342 res!508175) b!752343))

(assert (= (and b!752343 c!82463) b!752337))

(assert (= (and b!752343 (not c!82463)) b!752349))

(assert (= (and b!752343 res!508173) b!752346))

(assert (= (and b!752346 res!508165) b!752335))

(assert (= (and b!752335 res!508176) b!752334))

(assert (= (and b!752335 (not res!508169)) b!752351))

(assert (= (and b!752351 (not res!508182)) b!752344))

(assert (= (and b!752344 (not res!508168)) b!752331))

(assert (= (and b!752331 c!82464) b!752347))

(assert (= (and b!752331 (not c!82464)) b!752333))

(assert (= (and b!752331 res!508171) b!752330))

(assert (= (and b!752330 res!508170) b!752329))

(declare-fun m!701365 () Bool)

(assert (=> b!752350 m!701365))

(assert (=> b!752350 m!701365))

(declare-fun m!701367 () Bool)

(assert (=> b!752350 m!701367))

(assert (=> b!752350 m!701367))

(assert (=> b!752350 m!701365))

(declare-fun m!701369 () Bool)

(assert (=> b!752350 m!701369))

(assert (=> b!752334 m!701365))

(assert (=> b!752334 m!701365))

(declare-fun m!701371 () Bool)

(assert (=> b!752334 m!701371))

(declare-fun m!701373 () Bool)

(assert (=> b!752344 m!701373))

(declare-fun m!701375 () Bool)

(assert (=> b!752344 m!701375))

(declare-fun m!701377 () Bool)

(assert (=> b!752339 m!701377))

(assert (=> b!752337 m!701365))

(assert (=> b!752337 m!701365))

(declare-fun m!701379 () Bool)

(assert (=> b!752337 m!701379))

(declare-fun m!701381 () Bool)

(assert (=> b!752342 m!701381))

(declare-fun m!701383 () Bool)

(assert (=> start!65686 m!701383))

(declare-fun m!701385 () Bool)

(assert (=> start!65686 m!701385))

(declare-fun m!701387 () Bool)

(assert (=> b!752330 m!701387))

(declare-fun m!701389 () Bool)

(assert (=> b!752330 m!701389))

(assert (=> b!752351 m!701365))

(assert (=> b!752351 m!701365))

(declare-fun m!701391 () Bool)

(assert (=> b!752351 m!701391))

(declare-fun m!701393 () Bool)

(assert (=> b!752348 m!701393))

(declare-fun m!701395 () Bool)

(assert (=> b!752345 m!701395))

(declare-fun m!701397 () Bool)

(assert (=> b!752338 m!701397))

(assert (=> b!752341 m!701365))

(assert (=> b!752341 m!701365))

(declare-fun m!701399 () Bool)

(assert (=> b!752341 m!701399))

(declare-fun m!701401 () Bool)

(assert (=> b!752346 m!701401))

(assert (=> b!752346 m!701373))

(declare-fun m!701403 () Bool)

(assert (=> b!752346 m!701403))

(declare-fun m!701405 () Bool)

(assert (=> b!752346 m!701405))

(assert (=> b!752346 m!701405))

(declare-fun m!701407 () Bool)

(assert (=> b!752346 m!701407))

(assert (=> b!752349 m!701365))

(assert (=> b!752349 m!701365))

(assert (=> b!752349 m!701391))

(declare-fun m!701409 () Bool)

(assert (=> b!752340 m!701409))

(assert (=> b!752335 m!701365))

(assert (=> b!752335 m!701365))

(declare-fun m!701411 () Bool)

(assert (=> b!752335 m!701411))

(declare-fun m!701413 () Bool)

(assert (=> b!752335 m!701413))

(declare-fun m!701415 () Bool)

(assert (=> b!752335 m!701415))

(push 1)

