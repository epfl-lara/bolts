; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45734 () Bool)

(assert start!45734)

(declare-fun b!505195 () Bool)

(declare-fun res!306414 () Bool)

(declare-fun e!295750 () Bool)

(assert (=> b!505195 (=> (not res!306414) (not e!295750))))

(declare-datatypes ((array!32450 0))(
  ( (array!32451 (arr!15602 (Array (_ BitVec 32) (_ BitVec 64))) (size!15966 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32450)

(declare-datatypes ((List!9813 0))(
  ( (Nil!9810) (Cons!9809 (h!10686 (_ BitVec 64)) (t!16049 List!9813)) )
))
(declare-fun arrayNoDuplicates!0 (array!32450 (_ BitVec 32) List!9813) Bool)

(assert (=> b!505195 (= res!306414 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9810))))

(declare-fun b!505196 () Bool)

(declare-fun res!306427 () Bool)

(declare-fun e!295754 () Bool)

(assert (=> b!505196 (=> (not res!306427) (not e!295754))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!505196 (= res!306427 (validKeyInArray!0 (select (arr!15602 a!3235) j!176)))))

(declare-fun b!505197 () Bool)

(declare-fun res!306420 () Bool)

(assert (=> b!505197 (=> (not res!306420) (not e!295754))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!505197 (= res!306420 (and (= (size!15966 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15966 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15966 a!3235)) (not (= i!1204 j!176))))))

(declare-fun res!306426 () Bool)

(assert (=> start!45734 (=> (not res!306426) (not e!295754))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45734 (= res!306426 (validMask!0 mask!3524))))

(assert (=> start!45734 e!295754))

(assert (=> start!45734 true))

(declare-fun array_inv!11376 (array!32450) Bool)

(assert (=> start!45734 (array_inv!11376 a!3235)))

(declare-fun b!505198 () Bool)

(declare-fun e!295748 () Bool)

(assert (=> b!505198 (= e!295750 (not e!295748))))

(declare-fun res!306415 () Bool)

(assert (=> b!505198 (=> res!306415 e!295748)))

(declare-datatypes ((SeekEntryResult!4076 0))(
  ( (MissingZero!4076 (index!18492 (_ BitVec 32))) (Found!4076 (index!18493 (_ BitVec 32))) (Intermediate!4076 (undefined!4888 Bool) (index!18494 (_ BitVec 32)) (x!47528 (_ BitVec 32))) (Undefined!4076) (MissingVacant!4076 (index!18495 (_ BitVec 32))) )
))
(declare-fun lt!230286 () SeekEntryResult!4076)

(declare-fun lt!230292 () SeekEntryResult!4076)

(assert (=> b!505198 (= res!306415 (or (= lt!230286 lt!230292) (undefined!4888 lt!230286) (not (is-Intermediate!4076 lt!230286))))))

(declare-fun lt!230285 () (_ BitVec 32))

(declare-fun lt!230294 () (_ BitVec 64))

(declare-fun lt!230291 () array!32450)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32450 (_ BitVec 32)) SeekEntryResult!4076)

(assert (=> b!505198 (= lt!230292 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!230285 lt!230294 lt!230291 mask!3524))))

(declare-fun lt!230282 () (_ BitVec 32))

(assert (=> b!505198 (= lt!230286 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!230282 (select (arr!15602 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!505198 (= lt!230285 (toIndex!0 lt!230294 mask!3524))))

(declare-fun k!2280 () (_ BitVec 64))

(assert (=> b!505198 (= lt!230294 (select (store (arr!15602 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!505198 (= lt!230282 (toIndex!0 (select (arr!15602 a!3235) j!176) mask!3524))))

(assert (=> b!505198 (= lt!230291 (array!32451 (store (arr!15602 a!3235) i!1204 k!2280) (size!15966 a!3235)))))

(declare-fun lt!230290 () SeekEntryResult!4076)

(assert (=> b!505198 (= lt!230290 (Found!4076 j!176))))

(declare-fun e!295751 () Bool)

(assert (=> b!505198 e!295751))

(declare-fun res!306424 () Bool)

(assert (=> b!505198 (=> (not res!306424) (not e!295751))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32450 (_ BitVec 32)) Bool)

(assert (=> b!505198 (= res!306424 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15394 0))(
  ( (Unit!15395) )
))
(declare-fun lt!230293 () Unit!15394)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32450 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15394)

(assert (=> b!505198 (= lt!230293 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!505199 () Bool)

(declare-fun e!295756 () Bool)

(assert (=> b!505199 (= e!295748 e!295756)))

(declare-fun res!306428 () Bool)

(assert (=> b!505199 (=> res!306428 e!295756)))

(assert (=> b!505199 (= res!306428 (or (bvsgt (x!47528 lt!230286) #b01111111111111111111111111111110) (bvslt lt!230282 #b00000000000000000000000000000000) (bvsge lt!230282 (size!15966 a!3235)) (bvslt (index!18494 lt!230286) #b00000000000000000000000000000000) (bvsge (index!18494 lt!230286) (size!15966 a!3235)) (not (= lt!230286 (Intermediate!4076 false (index!18494 lt!230286) (x!47528 lt!230286))))))))

(assert (=> b!505199 (= (index!18494 lt!230286) i!1204)))

(declare-fun lt!230287 () Unit!15394)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!32450 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15394)

(assert (=> b!505199 (= lt!230287 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!230282 #b00000000000000000000000000000000 (index!18494 lt!230286) (x!47528 lt!230286) mask!3524))))

(assert (=> b!505199 (and (or (= (select (arr!15602 a!3235) (index!18494 lt!230286)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15602 a!3235) (index!18494 lt!230286)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15602 a!3235) (index!18494 lt!230286)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15602 a!3235) (index!18494 lt!230286)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!230289 () Unit!15394)

(declare-fun e!295755 () Unit!15394)

(assert (=> b!505199 (= lt!230289 e!295755)))

(declare-fun c!59669 () Bool)

(assert (=> b!505199 (= c!59669 (= (select (arr!15602 a!3235) (index!18494 lt!230286)) (select (arr!15602 a!3235) j!176)))))

(assert (=> b!505199 (and (bvslt (x!47528 lt!230286) #b01111111111111111111111111111110) (or (= (select (arr!15602 a!3235) (index!18494 lt!230286)) (select (arr!15602 a!3235) j!176)) (= (select (arr!15602 a!3235) (index!18494 lt!230286)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15602 a!3235) (index!18494 lt!230286)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!505200 () Bool)

(declare-fun e!295752 () Bool)

(assert (=> b!505200 (= e!295752 false)))

(declare-fun b!505201 () Bool)

(declare-fun res!306423 () Bool)

(assert (=> b!505201 (=> res!306423 e!295756)))

(declare-fun e!295749 () Bool)

(assert (=> b!505201 (= res!306423 e!295749)))

(declare-fun res!306416 () Bool)

(assert (=> b!505201 (=> (not res!306416) (not e!295749))))

(assert (=> b!505201 (= res!306416 (bvsgt #b00000000000000000000000000000000 (x!47528 lt!230286)))))

(declare-fun b!505202 () Bool)

(assert (=> b!505202 (= e!295756 (bvsge mask!3524 #b00000000000000000000000000000000))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32450 (_ BitVec 32)) SeekEntryResult!4076)

(assert (=> b!505202 (= (seekEntryOrOpen!0 lt!230294 lt!230291 mask!3524) lt!230290)))

(declare-fun lt!230284 () Unit!15394)

(declare-fun lemmaPutValidKeyPreservesVacantIsAtI!0 (array!32450 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15394)

(assert (=> b!505202 (= lt!230284 (lemmaPutValidKeyPreservesVacantIsAtI!0 a!3235 i!1204 k!2280 j!176 lt!230282 #b00000000000000000000000000000000 (index!18494 lt!230286) (x!47528 lt!230286) mask!3524))))

(declare-fun b!505203 () Bool)

(declare-fun res!306418 () Bool)

(assert (=> b!505203 (=> res!306418 e!295756)))

(assert (=> b!505203 (= res!306418 (not (= lt!230292 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!230282 lt!230294 lt!230291 mask!3524))))))

(declare-fun b!505204 () Bool)

(declare-fun res!306422 () Bool)

(assert (=> b!505204 (=> (not res!306422) (not e!295754))))

(declare-fun arrayContainsKey!0 (array!32450 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!505204 (= res!306422 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!505205 () Bool)

(declare-fun res!306419 () Bool)

(assert (=> b!505205 (=> (not res!306419) (not e!295750))))

(assert (=> b!505205 (= res!306419 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!505206 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32450 (_ BitVec 32)) SeekEntryResult!4076)

(assert (=> b!505206 (= e!295749 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!230282 (index!18494 lt!230286) (select (arr!15602 a!3235) j!176) a!3235 mask!3524) lt!230290)))))

(declare-fun b!505207 () Bool)

(assert (=> b!505207 (= e!295751 (= (seekEntryOrOpen!0 (select (arr!15602 a!3235) j!176) a!3235 mask!3524) (Found!4076 j!176)))))

(declare-fun b!505208 () Bool)

(declare-fun Unit!15396 () Unit!15394)

(assert (=> b!505208 (= e!295755 Unit!15396)))

(declare-fun lt!230283 () Unit!15394)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32450 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15394)

(assert (=> b!505208 (= lt!230283 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!230282 #b00000000000000000000000000000000 (index!18494 lt!230286) (x!47528 lt!230286) mask!3524))))

(declare-fun res!306425 () Bool)

(assert (=> b!505208 (= res!306425 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!230282 lt!230294 lt!230291 mask!3524) (Intermediate!4076 false (index!18494 lt!230286) (x!47528 lt!230286))))))

(assert (=> b!505208 (=> (not res!306425) (not e!295752))))

(assert (=> b!505208 e!295752))

(declare-fun b!505209 () Bool)

(assert (=> b!505209 (= e!295754 e!295750)))

(declare-fun res!306417 () Bool)

(assert (=> b!505209 (=> (not res!306417) (not e!295750))))

(declare-fun lt!230288 () SeekEntryResult!4076)

(assert (=> b!505209 (= res!306417 (or (= lt!230288 (MissingZero!4076 i!1204)) (= lt!230288 (MissingVacant!4076 i!1204))))))

(assert (=> b!505209 (= lt!230288 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!505210 () Bool)

(declare-fun res!306421 () Bool)

(assert (=> b!505210 (=> (not res!306421) (not e!295754))))

(assert (=> b!505210 (= res!306421 (validKeyInArray!0 k!2280))))

(declare-fun b!505211 () Bool)

(declare-fun Unit!15397 () Unit!15394)

(assert (=> b!505211 (= e!295755 Unit!15397)))

(assert (= (and start!45734 res!306426) b!505197))

(assert (= (and b!505197 res!306420) b!505196))

(assert (= (and b!505196 res!306427) b!505210))

(assert (= (and b!505210 res!306421) b!505204))

(assert (= (and b!505204 res!306422) b!505209))

(assert (= (and b!505209 res!306417) b!505205))

(assert (= (and b!505205 res!306419) b!505195))

(assert (= (and b!505195 res!306414) b!505198))

(assert (= (and b!505198 res!306424) b!505207))

(assert (= (and b!505198 (not res!306415)) b!505199))

(assert (= (and b!505199 c!59669) b!505208))

(assert (= (and b!505199 (not c!59669)) b!505211))

(assert (= (and b!505208 res!306425) b!505200))

(assert (= (and b!505199 (not res!306428)) b!505201))

(assert (= (and b!505201 res!306416) b!505206))

(assert (= (and b!505201 (not res!306423)) b!505203))

(assert (= (and b!505203 (not res!306418)) b!505202))

(declare-fun m!485897 () Bool)

(assert (=> b!505208 m!485897))

(declare-fun m!485899 () Bool)

(assert (=> b!505208 m!485899))

(assert (=> b!505203 m!485899))

(declare-fun m!485901 () Bool)

(assert (=> b!505205 m!485901))

(declare-fun m!485903 () Bool)

(assert (=> b!505198 m!485903))

(declare-fun m!485905 () Bool)

(assert (=> b!505198 m!485905))

(declare-fun m!485907 () Bool)

(assert (=> b!505198 m!485907))

(declare-fun m!485909 () Bool)

(assert (=> b!505198 m!485909))

(assert (=> b!505198 m!485907))

(declare-fun m!485911 () Bool)

(assert (=> b!505198 m!485911))

(declare-fun m!485913 () Bool)

(assert (=> b!505198 m!485913))

(assert (=> b!505198 m!485907))

(declare-fun m!485915 () Bool)

(assert (=> b!505198 m!485915))

(declare-fun m!485917 () Bool)

(assert (=> b!505198 m!485917))

(declare-fun m!485919 () Bool)

(assert (=> b!505198 m!485919))

(declare-fun m!485921 () Bool)

(assert (=> b!505204 m!485921))

(declare-fun m!485923 () Bool)

(assert (=> b!505209 m!485923))

(assert (=> b!505196 m!485907))

(assert (=> b!505196 m!485907))

(declare-fun m!485925 () Bool)

(assert (=> b!505196 m!485925))

(declare-fun m!485927 () Bool)

(assert (=> b!505202 m!485927))

(declare-fun m!485929 () Bool)

(assert (=> b!505202 m!485929))

(declare-fun m!485931 () Bool)

(assert (=> b!505195 m!485931))

(declare-fun m!485933 () Bool)

(assert (=> b!505199 m!485933))

(declare-fun m!485935 () Bool)

(assert (=> b!505199 m!485935))

(assert (=> b!505199 m!485907))

(declare-fun m!485937 () Bool)

(assert (=> b!505210 m!485937))

(assert (=> b!505206 m!485907))

(assert (=> b!505206 m!485907))

(declare-fun m!485939 () Bool)

(assert (=> b!505206 m!485939))

(declare-fun m!485941 () Bool)

(assert (=> start!45734 m!485941))

(declare-fun m!485943 () Bool)

(assert (=> start!45734 m!485943))

(assert (=> b!505207 m!485907))

(assert (=> b!505207 m!485907))

(declare-fun m!485945 () Bool)

(assert (=> b!505207 m!485945))

(push 1)

