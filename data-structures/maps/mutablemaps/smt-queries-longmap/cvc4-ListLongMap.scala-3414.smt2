; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47420 () Bool)

(assert start!47420)

(declare-fun b!521383 () Bool)

(declare-fun res!319313 () Bool)

(declare-fun e!304179 () Bool)

(assert (=> b!521383 (=> (not res!319313) (not e!304179))))

(declare-datatypes ((array!33206 0))(
  ( (array!33207 (arr!15956 (Array (_ BitVec 32) (_ BitVec 64))) (size!16320 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33206)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33206 (_ BitVec 32)) Bool)

(assert (=> b!521383 (= res!319313 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!521384 () Bool)

(declare-datatypes ((Unit!16186 0))(
  ( (Unit!16187) )
))
(declare-fun e!304178 () Unit!16186)

(declare-fun Unit!16188 () Unit!16186)

(assert (=> b!521384 (= e!304178 Unit!16188)))

(declare-fun b!521385 () Bool)

(declare-fun res!319312 () Bool)

(declare-fun e!304177 () Bool)

(assert (=> b!521385 (=> (not res!319312) (not e!304177))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!521385 (= res!319312 (validKeyInArray!0 k!2280))))

(declare-fun b!521386 () Bool)

(declare-fun e!304182 () Bool)

(assert (=> b!521386 (= e!304179 (not e!304182))))

(declare-fun res!319322 () Bool)

(assert (=> b!521386 (=> res!319322 e!304182)))

(declare-fun lt!239010 () (_ BitVec 64))

(declare-fun lt!239017 () (_ BitVec 32))

(declare-fun lt!239011 () array!33206)

(declare-datatypes ((SeekEntryResult!4430 0))(
  ( (MissingZero!4430 (index!19923 (_ BitVec 32))) (Found!4430 (index!19924 (_ BitVec 32))) (Intermediate!4430 (undefined!5242 Bool) (index!19925 (_ BitVec 32)) (x!48931 (_ BitVec 32))) (Undefined!4430) (MissingVacant!4430 (index!19926 (_ BitVec 32))) )
))
(declare-fun lt!239018 () SeekEntryResult!4430)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33206 (_ BitVec 32)) SeekEntryResult!4430)

(assert (=> b!521386 (= res!319322 (= lt!239018 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!239017 lt!239010 lt!239011 mask!3524)))))

(declare-fun lt!239014 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!521386 (= lt!239018 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!239014 (select (arr!15956 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!521386 (= lt!239017 (toIndex!0 lt!239010 mask!3524))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!521386 (= lt!239010 (select (store (arr!15956 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!521386 (= lt!239014 (toIndex!0 (select (arr!15956 a!3235) j!176) mask!3524))))

(assert (=> b!521386 (= lt!239011 (array!33207 (store (arr!15956 a!3235) i!1204 k!2280) (size!16320 a!3235)))))

(declare-fun e!304181 () Bool)

(assert (=> b!521386 e!304181))

(declare-fun res!319319 () Bool)

(assert (=> b!521386 (=> (not res!319319) (not e!304181))))

(assert (=> b!521386 (= res!319319 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!239012 () Unit!16186)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33206 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16186)

(assert (=> b!521386 (= lt!239012 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!521387 () Bool)

(declare-fun Unit!16189 () Unit!16186)

(assert (=> b!521387 (= e!304178 Unit!16189)))

(declare-fun lt!239015 () Unit!16186)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33206 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16186)

(assert (=> b!521387 (= lt!239015 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!239014 #b00000000000000000000000000000000 (index!19925 lt!239018) (x!48931 lt!239018) mask!3524))))

(declare-fun res!319315 () Bool)

(assert (=> b!521387 (= res!319315 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!239014 lt!239010 lt!239011 mask!3524) (Intermediate!4430 false (index!19925 lt!239018) (x!48931 lt!239018))))))

(declare-fun e!304183 () Bool)

(assert (=> b!521387 (=> (not res!319315) (not e!304183))))

(assert (=> b!521387 e!304183))

(declare-fun b!521388 () Bool)

(declare-fun res!319318 () Bool)

(assert (=> b!521388 (=> (not res!319318) (not e!304179))))

(declare-datatypes ((List!10167 0))(
  ( (Nil!10164) (Cons!10163 (h!11085 (_ BitVec 64)) (t!16403 List!10167)) )
))
(declare-fun arrayNoDuplicates!0 (array!33206 (_ BitVec 32) List!10167) Bool)

(assert (=> b!521388 (= res!319318 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10164))))

(declare-fun res!319320 () Bool)

(assert (=> start!47420 (=> (not res!319320) (not e!304177))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47420 (= res!319320 (validMask!0 mask!3524))))

(assert (=> start!47420 e!304177))

(assert (=> start!47420 true))

(declare-fun array_inv!11730 (array!33206) Bool)

(assert (=> start!47420 (array_inv!11730 a!3235)))

(declare-fun b!521389 () Bool)

(assert (=> b!521389 (= e!304177 e!304179)))

(declare-fun res!319314 () Bool)

(assert (=> b!521389 (=> (not res!319314) (not e!304179))))

(declare-fun lt!239016 () SeekEntryResult!4430)

(assert (=> b!521389 (= res!319314 (or (= lt!239016 (MissingZero!4430 i!1204)) (= lt!239016 (MissingVacant!4430 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33206 (_ BitVec 32)) SeekEntryResult!4430)

(assert (=> b!521389 (= lt!239016 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!521390 () Bool)

(assert (=> b!521390 (= e!304181 (= (seekEntryOrOpen!0 (select (arr!15956 a!3235) j!176) a!3235 mask!3524) (Found!4430 j!176)))))

(declare-fun b!521391 () Bool)

(assert (=> b!521391 (= e!304183 false)))

(declare-fun b!521392 () Bool)

(declare-fun res!319321 () Bool)

(assert (=> b!521392 (=> (not res!319321) (not e!304177))))

(assert (=> b!521392 (= res!319321 (validKeyInArray!0 (select (arr!15956 a!3235) j!176)))))

(declare-fun b!521393 () Bool)

(declare-fun res!319311 () Bool)

(assert (=> b!521393 (=> res!319311 e!304182)))

(assert (=> b!521393 (= res!319311 (or (undefined!5242 lt!239018) (not (is-Intermediate!4430 lt!239018))))))

(declare-fun b!521394 () Bool)

(assert (=> b!521394 (= e!304182 true)))

(assert (=> b!521394 (and (or (= (select (arr!15956 a!3235) (index!19925 lt!239018)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15956 a!3235) (index!19925 lt!239018)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15956 a!3235) (index!19925 lt!239018)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15956 a!3235) (index!19925 lt!239018)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!239013 () Unit!16186)

(assert (=> b!521394 (= lt!239013 e!304178)))

(declare-fun c!61337 () Bool)

(assert (=> b!521394 (= c!61337 (= (select (arr!15956 a!3235) (index!19925 lt!239018)) (select (arr!15956 a!3235) j!176)))))

(assert (=> b!521394 (and (bvslt (x!48931 lt!239018) #b01111111111111111111111111111110) (or (= (select (arr!15956 a!3235) (index!19925 lt!239018)) (select (arr!15956 a!3235) j!176)) (= (select (arr!15956 a!3235) (index!19925 lt!239018)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15956 a!3235) (index!19925 lt!239018)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!521395 () Bool)

(declare-fun res!319316 () Bool)

(assert (=> b!521395 (=> (not res!319316) (not e!304177))))

(declare-fun arrayContainsKey!0 (array!33206 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!521395 (= res!319316 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!521396 () Bool)

(declare-fun res!319317 () Bool)

(assert (=> b!521396 (=> (not res!319317) (not e!304177))))

(assert (=> b!521396 (= res!319317 (and (= (size!16320 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16320 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16320 a!3235)) (not (= i!1204 j!176))))))

(assert (= (and start!47420 res!319320) b!521396))

(assert (= (and b!521396 res!319317) b!521392))

(assert (= (and b!521392 res!319321) b!521385))

(assert (= (and b!521385 res!319312) b!521395))

(assert (= (and b!521395 res!319316) b!521389))

(assert (= (and b!521389 res!319314) b!521383))

(assert (= (and b!521383 res!319313) b!521388))

(assert (= (and b!521388 res!319318) b!521386))

(assert (= (and b!521386 res!319319) b!521390))

(assert (= (and b!521386 (not res!319322)) b!521393))

(assert (= (and b!521393 (not res!319311)) b!521394))

(assert (= (and b!521394 c!61337) b!521387))

(assert (= (and b!521394 (not c!61337)) b!521384))

(assert (= (and b!521387 res!319315) b!521391))

(declare-fun m!502333 () Bool)

(assert (=> b!521389 m!502333))

(declare-fun m!502335 () Bool)

(assert (=> b!521392 m!502335))

(assert (=> b!521392 m!502335))

(declare-fun m!502337 () Bool)

(assert (=> b!521392 m!502337))

(declare-fun m!502339 () Bool)

(assert (=> b!521385 m!502339))

(declare-fun m!502341 () Bool)

(assert (=> b!521395 m!502341))

(declare-fun m!502343 () Bool)

(assert (=> b!521383 m!502343))

(declare-fun m!502345 () Bool)

(assert (=> b!521387 m!502345))

(declare-fun m!502347 () Bool)

(assert (=> b!521387 m!502347))

(assert (=> b!521390 m!502335))

(assert (=> b!521390 m!502335))

(declare-fun m!502349 () Bool)

(assert (=> b!521390 m!502349))

(declare-fun m!502351 () Bool)

(assert (=> start!47420 m!502351))

(declare-fun m!502353 () Bool)

(assert (=> start!47420 m!502353))

(declare-fun m!502355 () Bool)

(assert (=> b!521388 m!502355))

(assert (=> b!521386 m!502335))

(declare-fun m!502357 () Bool)

(assert (=> b!521386 m!502357))

(declare-fun m!502359 () Bool)

(assert (=> b!521386 m!502359))

(declare-fun m!502361 () Bool)

(assert (=> b!521386 m!502361))

(declare-fun m!502363 () Bool)

(assert (=> b!521386 m!502363))

(declare-fun m!502365 () Bool)

(assert (=> b!521386 m!502365))

(declare-fun m!502367 () Bool)

(assert (=> b!521386 m!502367))

(assert (=> b!521386 m!502335))

(declare-fun m!502369 () Bool)

(assert (=> b!521386 m!502369))

(assert (=> b!521386 m!502335))

(declare-fun m!502371 () Bool)

(assert (=> b!521386 m!502371))

(declare-fun m!502373 () Bool)

(assert (=> b!521394 m!502373))

(assert (=> b!521394 m!502335))

(push 1)

