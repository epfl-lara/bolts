; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65504 () Bool)

(assert start!65504)

(declare-fun b!746451 () Bool)

(declare-fun e!416869 () Bool)

(declare-fun e!416874 () Bool)

(assert (=> b!746451 (= e!416869 e!416874)))

(declare-fun res!503347 () Bool)

(assert (=> b!746451 (=> (not res!503347) (not e!416874))))

(declare-datatypes ((SeekEntryResult!7532 0))(
  ( (MissingZero!7532 (index!32495 (_ BitVec 32))) (Found!7532 (index!32496 (_ BitVec 32))) (Intermediate!7532 (undefined!8344 Bool) (index!32497 (_ BitVec 32)) (x!63467 (_ BitVec 32))) (Undefined!7532) (MissingVacant!7532 (index!32498 (_ BitVec 32))) )
))
(declare-fun lt!331763 () SeekEntryResult!7532)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!746451 (= res!503347 (or (= lt!331763 (MissingZero!7532 i!1173)) (= lt!331763 (MissingVacant!7532 i!1173))))))

(declare-datatypes ((array!41630 0))(
  ( (array!41631 (arr!19925 (Array (_ BitVec 32) (_ BitVec 64))) (size!20346 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41630)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41630 (_ BitVec 32)) SeekEntryResult!7532)

(assert (=> b!746451 (= lt!331763 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun res!503342 () Bool)

(assert (=> start!65504 (=> (not res!503342) (not e!416869))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65504 (= res!503342 (validMask!0 mask!3328))))

(assert (=> start!65504 e!416869))

(assert (=> start!65504 true))

(declare-fun array_inv!15699 (array!41630) Bool)

(assert (=> start!65504 (array_inv!15699 a!3186)))

(declare-fun b!746452 () Bool)

(declare-fun res!503350 () Bool)

(assert (=> b!746452 (=> (not res!503350) (not e!416874))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!746452 (= res!503350 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20346 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20346 a!3186))))))

(declare-fun b!746453 () Bool)

(declare-fun e!416867 () Bool)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41630 (_ BitVec 32)) SeekEntryResult!7532)

(assert (=> b!746453 (= e!416867 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19925 a!3186) j!159) a!3186 mask!3328) (Found!7532 j!159)))))

(declare-fun b!746454 () Bool)

(declare-fun res!503340 () Bool)

(assert (=> b!746454 (=> (not res!503340) (not e!416869))))

(declare-fun arrayContainsKey!0 (array!41630 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!746454 (= res!503340 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!746455 () Bool)

(declare-fun res!503343 () Bool)

(assert (=> b!746455 (=> (not res!503343) (not e!416874))))

(declare-datatypes ((List!13980 0))(
  ( (Nil!13977) (Cons!13976 (h!15048 (_ BitVec 64)) (t!20303 List!13980)) )
))
(declare-fun arrayNoDuplicates!0 (array!41630 (_ BitVec 32) List!13980) Bool)

(assert (=> b!746455 (= res!503343 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13977))))

(declare-fun b!746456 () Bool)

(declare-fun res!503346 () Bool)

(declare-fun e!416872 () Bool)

(assert (=> b!746456 (=> (not res!503346) (not e!416872))))

(assert (=> b!746456 (= res!503346 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19925 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!416871 () Bool)

(declare-fun b!746457 () Bool)

(assert (=> b!746457 (= e!416871 (or (bvslt mask!3328 #b00000000000000000000000000000000) (bvsge index!1321 (bvadd #b00000000000000000000000000000001 mask!3328)) (bvslt resIntermediateIndex!5 (bvadd #b00000000000000000000000000000001 mask!3328))))))

(declare-fun lt!331760 () SeekEntryResult!7532)

(declare-fun lt!331759 () SeekEntryResult!7532)

(assert (=> b!746457 (= lt!331760 lt!331759)))

(declare-fun b!746458 () Bool)

(assert (=> b!746458 (= e!416874 e!416872)))

(declare-fun res!503351 () Bool)

(assert (=> b!746458 (=> (not res!503351) (not e!416872))))

(declare-fun lt!331762 () SeekEntryResult!7532)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41630 (_ BitVec 32)) SeekEntryResult!7532)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!746458 (= res!503351 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19925 a!3186) j!159) mask!3328) (select (arr!19925 a!3186) j!159) a!3186 mask!3328) lt!331762))))

(assert (=> b!746458 (= lt!331762 (Intermediate!7532 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!746459 () Bool)

(declare-fun res!503348 () Bool)

(assert (=> b!746459 (=> (not res!503348) (not e!416874))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41630 (_ BitVec 32)) Bool)

(assert (=> b!746459 (= res!503348 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun e!416870 () Bool)

(declare-fun lt!331766 () SeekEntryResult!7532)

(declare-fun b!746460 () Bool)

(assert (=> b!746460 (= e!416870 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19925 a!3186) j!159) a!3186 mask!3328) lt!331766))))

(declare-fun b!746461 () Bool)

(declare-fun e!416868 () Bool)

(declare-fun e!416866 () Bool)

(assert (=> b!746461 (= e!416868 (not e!416866))))

(declare-fun res!503355 () Bool)

(assert (=> b!746461 (=> res!503355 e!416866)))

(declare-fun lt!331764 () SeekEntryResult!7532)

(assert (=> b!746461 (= res!503355 (or (not (is-Intermediate!7532 lt!331764)) (bvslt x!1131 (x!63467 lt!331764)) (not (= x!1131 (x!63467 lt!331764))) (not (= index!1321 (index!32497 lt!331764)))))))

(assert (=> b!746461 e!416870))

(declare-fun res!503352 () Bool)

(assert (=> b!746461 (=> (not res!503352) (not e!416870))))

(assert (=> b!746461 (= res!503352 (= lt!331760 lt!331766))))

(assert (=> b!746461 (= lt!331766 (Found!7532 j!159))))

(assert (=> b!746461 (= lt!331760 (seekEntryOrOpen!0 (select (arr!19925 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!746461 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!25544 0))(
  ( (Unit!25545) )
))
(declare-fun lt!331765 () Unit!25544)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41630 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25544)

(assert (=> b!746461 (= lt!331765 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!746462 () Bool)

(assert (=> b!746462 (= e!416867 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19925 a!3186) j!159) a!3186 mask!3328) lt!331762))))

(declare-fun b!746463 () Bool)

(declare-fun res!503344 () Bool)

(assert (=> b!746463 (=> (not res!503344) (not e!416869))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!746463 (= res!503344 (validKeyInArray!0 (select (arr!19925 a!3186) j!159)))))

(declare-fun b!746464 () Bool)

(declare-fun res!503341 () Bool)

(assert (=> b!746464 (=> (not res!503341) (not e!416869))))

(assert (=> b!746464 (= res!503341 (validKeyInArray!0 k!2102))))

(declare-fun b!746465 () Bool)

(declare-fun res!503349 () Bool)

(assert (=> b!746465 (=> (not res!503349) (not e!416869))))

(assert (=> b!746465 (= res!503349 (and (= (size!20346 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20346 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20346 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!746466 () Bool)

(assert (=> b!746466 (= e!416866 e!416871)))

(declare-fun res!503345 () Bool)

(assert (=> b!746466 (=> res!503345 e!416871)))

(declare-fun lt!331757 () (_ BitVec 64))

(assert (=> b!746466 (= res!503345 (or (not (= lt!331759 lt!331766)) (= (select (store (arr!19925 a!3186) i!1173 k!2102) index!1321) lt!331757) (not (= (select (store (arr!19925 a!3186) i!1173 k!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!746466 (= lt!331759 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19925 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!746467 () Bool)

(declare-fun res!503353 () Bool)

(assert (=> b!746467 (=> (not res!503353) (not e!416872))))

(assert (=> b!746467 (= res!503353 e!416867)))

(declare-fun c!81936 () Bool)

(assert (=> b!746467 (= c!81936 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!746468 () Bool)

(assert (=> b!746468 (= e!416872 e!416868)))

(declare-fun res!503354 () Bool)

(assert (=> b!746468 (=> (not res!503354) (not e!416868))))

(declare-fun lt!331758 () SeekEntryResult!7532)

(assert (=> b!746468 (= res!503354 (= lt!331758 lt!331764))))

(declare-fun lt!331761 () array!41630)

(assert (=> b!746468 (= lt!331764 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!331757 lt!331761 mask!3328))))

(assert (=> b!746468 (= lt!331758 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!331757 mask!3328) lt!331757 lt!331761 mask!3328))))

(assert (=> b!746468 (= lt!331757 (select (store (arr!19925 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!746468 (= lt!331761 (array!41631 (store (arr!19925 a!3186) i!1173 k!2102) (size!20346 a!3186)))))

(assert (= (and start!65504 res!503342) b!746465))

(assert (= (and b!746465 res!503349) b!746463))

(assert (= (and b!746463 res!503344) b!746464))

(assert (= (and b!746464 res!503341) b!746454))

(assert (= (and b!746454 res!503340) b!746451))

(assert (= (and b!746451 res!503347) b!746459))

(assert (= (and b!746459 res!503348) b!746455))

(assert (= (and b!746455 res!503343) b!746452))

(assert (= (and b!746452 res!503350) b!746458))

(assert (= (and b!746458 res!503351) b!746456))

(assert (= (and b!746456 res!503346) b!746467))

(assert (= (and b!746467 c!81936) b!746462))

(assert (= (and b!746467 (not c!81936)) b!746453))

(assert (= (and b!746467 res!503353) b!746468))

(assert (= (and b!746468 res!503354) b!746461))

(assert (= (and b!746461 res!503352) b!746460))

(assert (= (and b!746461 (not res!503355)) b!746466))

(assert (= (and b!746466 (not res!503345)) b!746457))

(declare-fun m!696793 () Bool)

(assert (=> b!746455 m!696793))

(declare-fun m!696795 () Bool)

(assert (=> start!65504 m!696795))

(declare-fun m!696797 () Bool)

(assert (=> start!65504 m!696797))

(declare-fun m!696799 () Bool)

(assert (=> b!746464 m!696799))

(declare-fun m!696801 () Bool)

(assert (=> b!746459 m!696801))

(declare-fun m!696803 () Bool)

(assert (=> b!746461 m!696803))

(assert (=> b!746461 m!696803))

(declare-fun m!696805 () Bool)

(assert (=> b!746461 m!696805))

(declare-fun m!696807 () Bool)

(assert (=> b!746461 m!696807))

(declare-fun m!696809 () Bool)

(assert (=> b!746461 m!696809))

(assert (=> b!746453 m!696803))

(assert (=> b!746453 m!696803))

(declare-fun m!696811 () Bool)

(assert (=> b!746453 m!696811))

(declare-fun m!696813 () Bool)

(assert (=> b!746468 m!696813))

(declare-fun m!696815 () Bool)

(assert (=> b!746468 m!696815))

(declare-fun m!696817 () Bool)

(assert (=> b!746468 m!696817))

(declare-fun m!696819 () Bool)

(assert (=> b!746468 m!696819))

(declare-fun m!696821 () Bool)

(assert (=> b!746468 m!696821))

(assert (=> b!746468 m!696813))

(declare-fun m!696823 () Bool)

(assert (=> b!746451 m!696823))

(assert (=> b!746460 m!696803))

(assert (=> b!746460 m!696803))

(declare-fun m!696825 () Bool)

(assert (=> b!746460 m!696825))

(assert (=> b!746462 m!696803))

(assert (=> b!746462 m!696803))

(declare-fun m!696827 () Bool)

(assert (=> b!746462 m!696827))

(assert (=> b!746463 m!696803))

(assert (=> b!746463 m!696803))

(declare-fun m!696829 () Bool)

(assert (=> b!746463 m!696829))

(declare-fun m!696831 () Bool)

(assert (=> b!746456 m!696831))

(assert (=> b!746466 m!696817))

(declare-fun m!696833 () Bool)

(assert (=> b!746466 m!696833))

(assert (=> b!746466 m!696803))

(assert (=> b!746466 m!696803))

(assert (=> b!746466 m!696811))

(declare-fun m!696835 () Bool)

(assert (=> b!746454 m!696835))

(assert (=> b!746458 m!696803))

(assert (=> b!746458 m!696803))

(declare-fun m!696837 () Bool)

(assert (=> b!746458 m!696837))

(assert (=> b!746458 m!696837))

(assert (=> b!746458 m!696803))

(declare-fun m!696839 () Bool)

(assert (=> b!746458 m!696839))

(push 1)

(assert (not b!746455))

(assert (not start!65504))

(assert (not b!746462))

(assert (not b!746451))

(assert (not b!746460))

(assert (not b!746461))

(assert (not b!746468))

(assert (not b!746454))

(assert (not b!746466))

(assert (not b!746453))

(assert (not b!746464))

(assert (not b!746458))

(assert (not b!746463))

(assert (not b!746459))

(check-sat)

(pop 1)

(push 1)

(check-sat)

