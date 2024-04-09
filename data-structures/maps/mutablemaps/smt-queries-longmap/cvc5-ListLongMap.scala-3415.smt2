; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47422 () Bool)

(assert start!47422)

(declare-fun b!521425 () Bool)

(declare-datatypes ((Unit!16190 0))(
  ( (Unit!16191) )
))
(declare-fun e!304198 () Unit!16190)

(declare-fun Unit!16192 () Unit!16190)

(assert (=> b!521425 (= e!304198 Unit!16192)))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!33208 0))(
  ( (array!33209 (arr!15957 (Array (_ BitVec 32) (_ BitVec 64))) (size!16321 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33208)

(declare-fun lt!239045 () (_ BitVec 32))

(declare-fun lt!239044 () Unit!16190)

(declare-datatypes ((SeekEntryResult!4431 0))(
  ( (MissingZero!4431 (index!19927 (_ BitVec 32))) (Found!4431 (index!19928 (_ BitVec 32))) (Intermediate!4431 (undefined!5243 Bool) (index!19929 (_ BitVec 32)) (x!48940 (_ BitVec 32))) (Undefined!4431) (MissingVacant!4431 (index!19930 (_ BitVec 32))) )
))
(declare-fun lt!239041 () SeekEntryResult!4431)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33208 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16190)

(assert (=> b!521425 (= lt!239044 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!239045 #b00000000000000000000000000000000 (index!19929 lt!239041) (x!48940 lt!239041) mask!3524))))

(declare-fun lt!239043 () array!33208)

(declare-fun lt!239042 () (_ BitVec 64))

(declare-fun res!319349 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33208 (_ BitVec 32)) SeekEntryResult!4431)

(assert (=> b!521425 (= res!319349 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!239045 lt!239042 lt!239043 mask!3524) (Intermediate!4431 false (index!19929 lt!239041) (x!48940 lt!239041))))))

(declare-fun e!304201 () Bool)

(assert (=> b!521425 (=> (not res!319349) (not e!304201))))

(assert (=> b!521425 e!304201))

(declare-fun b!521426 () Bool)

(declare-fun res!319356 () Bool)

(declare-fun e!304203 () Bool)

(assert (=> b!521426 (=> (not res!319356) (not e!304203))))

(declare-fun arrayContainsKey!0 (array!33208 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!521426 (= res!319356 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!521427 () Bool)

(declare-fun res!319351 () Bool)

(assert (=> b!521427 (=> (not res!319351) (not e!304203))))

(assert (=> b!521427 (= res!319351 (and (= (size!16321 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16321 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16321 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!521428 () Bool)

(declare-fun Unit!16193 () Unit!16190)

(assert (=> b!521428 (= e!304198 Unit!16193)))

(declare-fun res!319357 () Bool)

(assert (=> start!47422 (=> (not res!319357) (not e!304203))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47422 (= res!319357 (validMask!0 mask!3524))))

(assert (=> start!47422 e!304203))

(assert (=> start!47422 true))

(declare-fun array_inv!11731 (array!33208) Bool)

(assert (=> start!47422 (array_inv!11731 a!3235)))

(declare-fun b!521429 () Bool)

(declare-fun res!319358 () Bool)

(declare-fun e!304204 () Bool)

(assert (=> b!521429 (=> (not res!319358) (not e!304204))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33208 (_ BitVec 32)) Bool)

(assert (=> b!521429 (= res!319358 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!521430 () Bool)

(declare-fun e!304202 () Bool)

(assert (=> b!521430 (= e!304204 (not e!304202))))

(declare-fun res!319348 () Bool)

(assert (=> b!521430 (=> res!319348 e!304202)))

(declare-fun lt!239038 () (_ BitVec 32))

(assert (=> b!521430 (= res!319348 (= lt!239041 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!239038 lt!239042 lt!239043 mask!3524)))))

(assert (=> b!521430 (= lt!239041 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!239045 (select (arr!15957 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!521430 (= lt!239038 (toIndex!0 lt!239042 mask!3524))))

(assert (=> b!521430 (= lt!239042 (select (store (arr!15957 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!521430 (= lt!239045 (toIndex!0 (select (arr!15957 a!3235) j!176) mask!3524))))

(assert (=> b!521430 (= lt!239043 (array!33209 (store (arr!15957 a!3235) i!1204 k!2280) (size!16321 a!3235)))))

(declare-fun e!304200 () Bool)

(assert (=> b!521430 e!304200))

(declare-fun res!319355 () Bool)

(assert (=> b!521430 (=> (not res!319355) (not e!304200))))

(assert (=> b!521430 (= res!319355 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!239039 () Unit!16190)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33208 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16190)

(assert (=> b!521430 (= lt!239039 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!521431 () Bool)

(assert (=> b!521431 (= e!304203 e!304204)))

(declare-fun res!319352 () Bool)

(assert (=> b!521431 (=> (not res!319352) (not e!304204))))

(declare-fun lt!239037 () SeekEntryResult!4431)

(assert (=> b!521431 (= res!319352 (or (= lt!239037 (MissingZero!4431 i!1204)) (= lt!239037 (MissingVacant!4431 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33208 (_ BitVec 32)) SeekEntryResult!4431)

(assert (=> b!521431 (= lt!239037 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!521432 () Bool)

(declare-fun res!319347 () Bool)

(assert (=> b!521432 (=> res!319347 e!304202)))

(assert (=> b!521432 (= res!319347 (or (undefined!5243 lt!239041) (not (is-Intermediate!4431 lt!239041))))))

(declare-fun b!521433 () Bool)

(assert (=> b!521433 (= e!304200 (= (seekEntryOrOpen!0 (select (arr!15957 a!3235) j!176) a!3235 mask!3524) (Found!4431 j!176)))))

(declare-fun b!521434 () Bool)

(declare-fun res!319350 () Bool)

(assert (=> b!521434 (=> (not res!319350) (not e!304203))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!521434 (= res!319350 (validKeyInArray!0 k!2280))))

(declare-fun b!521435 () Bool)

(declare-fun res!319353 () Bool)

(assert (=> b!521435 (=> (not res!319353) (not e!304204))))

(declare-datatypes ((List!10168 0))(
  ( (Nil!10165) (Cons!10164 (h!11086 (_ BitVec 64)) (t!16404 List!10168)) )
))
(declare-fun arrayNoDuplicates!0 (array!33208 (_ BitVec 32) List!10168) Bool)

(assert (=> b!521435 (= res!319353 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10165))))

(declare-fun b!521436 () Bool)

(declare-fun res!319354 () Bool)

(assert (=> b!521436 (=> (not res!319354) (not e!304203))))

(assert (=> b!521436 (= res!319354 (validKeyInArray!0 (select (arr!15957 a!3235) j!176)))))

(declare-fun b!521437 () Bool)

(assert (=> b!521437 (= e!304201 false)))

(declare-fun b!521438 () Bool)

(assert (=> b!521438 (= e!304202 true)))

(assert (=> b!521438 (and (or (= (select (arr!15957 a!3235) (index!19929 lt!239041)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15957 a!3235) (index!19929 lt!239041)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15957 a!3235) (index!19929 lt!239041)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15957 a!3235) (index!19929 lt!239041)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!239040 () Unit!16190)

(assert (=> b!521438 (= lt!239040 e!304198)))

(declare-fun c!61340 () Bool)

(assert (=> b!521438 (= c!61340 (= (select (arr!15957 a!3235) (index!19929 lt!239041)) (select (arr!15957 a!3235) j!176)))))

(assert (=> b!521438 (and (bvslt (x!48940 lt!239041) #b01111111111111111111111111111110) (or (= (select (arr!15957 a!3235) (index!19929 lt!239041)) (select (arr!15957 a!3235) j!176)) (= (select (arr!15957 a!3235) (index!19929 lt!239041)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15957 a!3235) (index!19929 lt!239041)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!47422 res!319357) b!521427))

(assert (= (and b!521427 res!319351) b!521436))

(assert (= (and b!521436 res!319354) b!521434))

(assert (= (and b!521434 res!319350) b!521426))

(assert (= (and b!521426 res!319356) b!521431))

(assert (= (and b!521431 res!319352) b!521429))

(assert (= (and b!521429 res!319358) b!521435))

(assert (= (and b!521435 res!319353) b!521430))

(assert (= (and b!521430 res!319355) b!521433))

(assert (= (and b!521430 (not res!319348)) b!521432))

(assert (= (and b!521432 (not res!319347)) b!521438))

(assert (= (and b!521438 c!61340) b!521425))

(assert (= (and b!521438 (not c!61340)) b!521428))

(assert (= (and b!521425 res!319349) b!521437))

(declare-fun m!502375 () Bool)

(assert (=> b!521435 m!502375))

(declare-fun m!502377 () Bool)

(assert (=> start!47422 m!502377))

(declare-fun m!502379 () Bool)

(assert (=> start!47422 m!502379))

(declare-fun m!502381 () Bool)

(assert (=> b!521426 m!502381))

(declare-fun m!502383 () Bool)

(assert (=> b!521429 m!502383))

(declare-fun m!502385 () Bool)

(assert (=> b!521425 m!502385))

(declare-fun m!502387 () Bool)

(assert (=> b!521425 m!502387))

(declare-fun m!502389 () Bool)

(assert (=> b!521433 m!502389))

(assert (=> b!521433 m!502389))

(declare-fun m!502391 () Bool)

(assert (=> b!521433 m!502391))

(declare-fun m!502393 () Bool)

(assert (=> b!521431 m!502393))

(declare-fun m!502395 () Bool)

(assert (=> b!521434 m!502395))

(declare-fun m!502397 () Bool)

(assert (=> b!521438 m!502397))

(assert (=> b!521438 m!502389))

(declare-fun m!502399 () Bool)

(assert (=> b!521430 m!502399))

(declare-fun m!502401 () Bool)

(assert (=> b!521430 m!502401))

(declare-fun m!502403 () Bool)

(assert (=> b!521430 m!502403))

(declare-fun m!502405 () Bool)

(assert (=> b!521430 m!502405))

(assert (=> b!521430 m!502389))

(declare-fun m!502407 () Bool)

(assert (=> b!521430 m!502407))

(assert (=> b!521430 m!502389))

(assert (=> b!521430 m!502389))

(declare-fun m!502409 () Bool)

(assert (=> b!521430 m!502409))

(declare-fun m!502411 () Bool)

(assert (=> b!521430 m!502411))

(declare-fun m!502413 () Bool)

(assert (=> b!521430 m!502413))

(assert (=> b!521436 m!502389))

(assert (=> b!521436 m!502389))

(declare-fun m!502415 () Bool)

(assert (=> b!521436 m!502415))

(push 1)

