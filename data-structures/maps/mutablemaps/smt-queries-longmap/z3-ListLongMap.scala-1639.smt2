; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30620 () Bool)

(assert start!30620)

(declare-fun b!306968 () Bool)

(declare-fun res!163887 () Bool)

(declare-fun e!192316 () Bool)

(assert (=> b!306968 (=> (not res!163887) (not e!192316))))

(declare-datatypes ((array!15622 0))(
  ( (array!15623 (arr!7394 (Array (_ BitVec 32) (_ BitVec 64))) (size!7746 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15622)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun resX!52 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2545 0))(
  ( (MissingZero!2545 (index!12356 (_ BitVec 32))) (Found!2545 (index!12357 (_ BitVec 32))) (Intermediate!2545 (undefined!3357 Bool) (index!12358 (_ BitVec 32)) (x!30567 (_ BitVec 32))) (Undefined!2545) (MissingVacant!2545 (index!12359 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15622 (_ BitVec 32)) SeekEntryResult!2545)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!306968 (= res!163887 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) (Intermediate!2545 false resIndex!52 resX!52)))))

(declare-fun b!306969 () Bool)

(assert (=> b!306969 (= e!192316 false)))

(declare-fun lt!151061 () SeekEntryResult!2545)

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!306969 (= lt!151061 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709))))

(declare-fun res!163882 () Bool)

(assert (=> start!30620 (=> (not res!163882) (not e!192316))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30620 (= res!163882 (validMask!0 mask!3709))))

(assert (=> start!30620 e!192316))

(declare-fun array_inv!5348 (array!15622) Bool)

(assert (=> start!30620 (array_inv!5348 a!3293)))

(assert (=> start!30620 true))

(declare-fun b!306970 () Bool)

(declare-fun res!163881 () Bool)

(assert (=> b!306970 (=> (not res!163881) (not e!192316))))

(declare-fun arrayContainsKey!0 (array!15622 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!306970 (= res!163881 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!306971 () Bool)

(declare-fun res!163885 () Bool)

(assert (=> b!306971 (=> (not res!163885) (not e!192316))))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15622 (_ BitVec 32)) SeekEntryResult!2545)

(assert (=> b!306971 (= res!163885 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2545 i!1240)))))

(declare-fun b!306972 () Bool)

(declare-fun res!163883 () Bool)

(assert (=> b!306972 (=> (not res!163883) (not e!192316))))

(assert (=> b!306972 (= res!163883 (and (= (size!7746 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7746 a!3293))))))

(declare-fun b!306973 () Bool)

(declare-fun res!163880 () Bool)

(assert (=> b!306973 (=> (not res!163880) (not e!192316))))

(assert (=> b!306973 (= res!163880 (and (= (select (arr!7394 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7746 a!3293))))))

(declare-fun b!306974 () Bool)

(declare-fun res!163886 () Bool)

(assert (=> b!306974 (=> (not res!163886) (not e!192316))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!306974 (= res!163886 (validKeyInArray!0 k0!2441))))

(declare-fun b!306975 () Bool)

(declare-fun res!163884 () Bool)

(assert (=> b!306975 (=> (not res!163884) (not e!192316))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15622 (_ BitVec 32)) Bool)

(assert (=> b!306975 (= res!163884 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(assert (= (and start!30620 res!163882) b!306972))

(assert (= (and b!306972 res!163883) b!306974))

(assert (= (and b!306974 res!163886) b!306970))

(assert (= (and b!306970 res!163881) b!306971))

(assert (= (and b!306971 res!163885) b!306975))

(assert (= (and b!306975 res!163884) b!306968))

(assert (= (and b!306968 res!163887) b!306973))

(assert (= (and b!306973 res!163880) b!306969))

(declare-fun m!317367 () Bool)

(assert (=> b!306974 m!317367))

(declare-fun m!317369 () Bool)

(assert (=> b!306968 m!317369))

(assert (=> b!306968 m!317369))

(declare-fun m!317371 () Bool)

(assert (=> b!306968 m!317371))

(declare-fun m!317373 () Bool)

(assert (=> b!306971 m!317373))

(declare-fun m!317375 () Bool)

(assert (=> b!306970 m!317375))

(declare-fun m!317377 () Bool)

(assert (=> b!306969 m!317377))

(declare-fun m!317379 () Bool)

(assert (=> b!306975 m!317379))

(declare-fun m!317381 () Bool)

(assert (=> b!306973 m!317381))

(declare-fun m!317383 () Bool)

(assert (=> start!30620 m!317383))

(declare-fun m!317385 () Bool)

(assert (=> start!30620 m!317385))

(check-sat (not b!306975) (not start!30620) (not b!306970) (not b!306968) (not b!306971) (not b!306974) (not b!306969))
