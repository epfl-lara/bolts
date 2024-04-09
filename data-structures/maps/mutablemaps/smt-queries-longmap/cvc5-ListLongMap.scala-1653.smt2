; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30756 () Bool)

(assert start!30756)

(declare-fun b!308323 () Bool)

(declare-fun res!165095 () Bool)

(declare-fun e!192797 () Bool)

(assert (=> b!308323 (=> (not res!165095) (not e!192797))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!308323 (= res!165095 (validKeyInArray!0 k!2441))))

(declare-fun b!308324 () Bool)

(declare-fun res!165102 () Bool)

(declare-fun e!192798 () Bool)

(assert (=> b!308324 (=> (not res!165102) (not e!192798))))

(declare-datatypes ((array!15707 0))(
  ( (array!15708 (arr!7435 (Array (_ BitVec 32) (_ BitVec 64))) (size!7787 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15707)

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!308324 (= res!165102 (and (= (select (arr!7435 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7787 a!3293))))))

(declare-fun b!308325 () Bool)

(assert (=> b!308325 (= e!192797 e!192798)))

(declare-fun res!165097 () Bool)

(assert (=> b!308325 (=> (not res!165097) (not e!192798))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2586 0))(
  ( (MissingZero!2586 (index!12520 (_ BitVec 32))) (Found!2586 (index!12521 (_ BitVec 32))) (Intermediate!2586 (undefined!3398 Bool) (index!12522 (_ BitVec 32)) (x!30729 (_ BitVec 32))) (Undefined!2586) (MissingVacant!2586 (index!12523 (_ BitVec 32))) )
))
(declare-fun lt!151345 () SeekEntryResult!2586)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15707 (_ BitVec 32)) SeekEntryResult!2586)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!308325 (= res!165097 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!151345))))

(assert (=> b!308325 (= lt!151345 (Intermediate!2586 false resIndex!52 resX!52))))

(declare-fun res!165099 () Bool)

(assert (=> start!30756 (=> (not res!165099) (not e!192797))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30756 (= res!165099 (validMask!0 mask!3709))))

(assert (=> start!30756 e!192797))

(declare-fun array_inv!5389 (array!15707) Bool)

(assert (=> start!30756 (array_inv!5389 a!3293)))

(assert (=> start!30756 true))

(declare-fun b!308326 () Bool)

(declare-fun res!165101 () Bool)

(assert (=> b!308326 (=> (not res!165101) (not e!192797))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15707 (_ BitVec 32)) SeekEntryResult!2586)

(assert (=> b!308326 (= res!165101 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2586 i!1240)))))

(declare-fun b!308327 () Bool)

(declare-fun res!165100 () Bool)

(assert (=> b!308327 (=> (not res!165100) (not e!192797))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15707 (_ BitVec 32)) Bool)

(assert (=> b!308327 (= res!165100 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!308328 () Bool)

(declare-fun e!192796 () Bool)

(assert (=> b!308328 (= e!192798 e!192796)))

(declare-fun res!165096 () Bool)

(assert (=> b!308328 (=> (not res!165096) (not e!192796))))

(declare-fun lt!151346 () SeekEntryResult!2586)

(assert (=> b!308328 (= res!165096 (and (= lt!151346 lt!151345) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7435 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!308328 (= lt!151346 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!308329 () Bool)

(declare-fun res!165094 () Bool)

(assert (=> b!308329 (=> (not res!165094) (not e!192797))))

(assert (=> b!308329 (= res!165094 (and (= (size!7787 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7787 a!3293))))))

(declare-fun b!308330 () Bool)

(assert (=> b!308330 (= e!192796 (not true))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!308330 (= lt!151346 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun b!308331 () Bool)

(declare-fun res!165098 () Bool)

(assert (=> b!308331 (=> (not res!165098) (not e!192797))))

(declare-fun arrayContainsKey!0 (array!15707 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!308331 (= res!165098 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(assert (= (and start!30756 res!165099) b!308329))

(assert (= (and b!308329 res!165094) b!308323))

(assert (= (and b!308323 res!165095) b!308331))

(assert (= (and b!308331 res!165098) b!308326))

(assert (= (and b!308326 res!165101) b!308327))

(assert (= (and b!308327 res!165100) b!308325))

(assert (= (and b!308325 res!165097) b!308324))

(assert (= (and b!308324 res!165102) b!308328))

(assert (= (and b!308328 res!165096) b!308330))

(declare-fun m!318403 () Bool)

(assert (=> b!308330 m!318403))

(assert (=> b!308330 m!318403))

(declare-fun m!318405 () Bool)

(assert (=> b!308330 m!318405))

(declare-fun m!318407 () Bool)

(assert (=> b!308327 m!318407))

(declare-fun m!318409 () Bool)

(assert (=> b!308331 m!318409))

(declare-fun m!318411 () Bool)

(assert (=> b!308328 m!318411))

(declare-fun m!318413 () Bool)

(assert (=> b!308328 m!318413))

(declare-fun m!318415 () Bool)

(assert (=> b!308326 m!318415))

(declare-fun m!318417 () Bool)

(assert (=> b!308323 m!318417))

(declare-fun m!318419 () Bool)

(assert (=> start!30756 m!318419))

(declare-fun m!318421 () Bool)

(assert (=> start!30756 m!318421))

(declare-fun m!318423 () Bool)

(assert (=> b!308324 m!318423))

(declare-fun m!318425 () Bool)

(assert (=> b!308325 m!318425))

(assert (=> b!308325 m!318425))

(declare-fun m!318427 () Bool)

(assert (=> b!308325 m!318427))

(push 1)

(assert (not start!30756))

(assert (not b!308327))

(assert (not b!308328))

(assert (not b!308325))

(assert (not b!308331))

(assert (not b!308326))

(assert (not b!308330))

(assert (not b!308323))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

