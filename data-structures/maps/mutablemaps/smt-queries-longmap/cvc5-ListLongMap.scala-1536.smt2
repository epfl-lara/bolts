; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!29148 () Bool)

(assert start!29148)

(declare-fun b!295559 () Bool)

(declare-fun e!186823 () Bool)

(declare-fun e!186822 () Bool)

(assert (=> b!295559 (= e!186823 e!186822)))

(declare-fun res!155482 () Bool)

(assert (=> b!295559 (=> (not res!155482) (not e!186822))))

(declare-fun lt!146646 () Bool)

(assert (=> b!295559 (= res!155482 lt!146646)))

(declare-datatypes ((SeekEntryResult!2244 0))(
  ( (MissingZero!2244 (index!11146 (_ BitVec 32))) (Found!2244 (index!11147 (_ BitVec 32))) (Intermediate!2244 (undefined!3056 Bool) (index!11148 (_ BitVec 32)) (x!29333 (_ BitVec 32))) (Undefined!2244) (MissingVacant!2244 (index!11149 (_ BitVec 32))) )
))
(declare-fun lt!146648 () SeekEntryResult!2244)

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((array!14948 0))(
  ( (array!14949 (arr!7084 (Array (_ BitVec 32) (_ BitVec 64))) (size!7436 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14948)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun lt!146651 () (_ BitVec 32))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14948 (_ BitVec 32)) SeekEntryResult!2244)

(assert (=> b!295559 (= lt!146648 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!146651 k!2524 (array!14949 (store (arr!7084 a!3312) i!1256 k!2524) (size!7436 a!3312)) mask!3809))))

(declare-fun lt!146649 () SeekEntryResult!2244)

(assert (=> b!295559 (= lt!146649 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!146651 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!295559 (= lt!146651 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!295560 () Bool)

(declare-fun res!155487 () Bool)

(assert (=> b!295560 (=> (not res!155487) (not e!186823))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14948 (_ BitVec 32)) Bool)

(assert (=> b!295560 (= res!155487 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!295561 () Bool)

(declare-fun res!155486 () Bool)

(declare-fun e!186821 () Bool)

(assert (=> b!295561 (=> (not res!155486) (not e!186821))))

(assert (=> b!295561 (= res!155486 (and (= (size!7436 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7436 a!3312))))))

(declare-fun b!295562 () Bool)

(declare-fun res!155481 () Bool)

(assert (=> b!295562 (=> (not res!155481) (not e!186821))))

(declare-fun arrayContainsKey!0 (array!14948 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!295562 (= res!155481 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!295563 () Bool)

(declare-fun e!186824 () Bool)

(assert (=> b!295563 (= e!186824 (not true))))

(assert (=> b!295563 (and (= (select (arr!7084 a!3312) (index!11148 lt!146649)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!11148 lt!146649) i!1256))))

(declare-fun b!295564 () Bool)

(assert (=> b!295564 (= e!186821 e!186823)))

(declare-fun res!155480 () Bool)

(assert (=> b!295564 (=> (not res!155480) (not e!186823))))

(declare-fun lt!146650 () SeekEntryResult!2244)

(assert (=> b!295564 (= res!155480 (or lt!146646 (= lt!146650 (MissingVacant!2244 i!1256))))))

(assert (=> b!295564 (= lt!146646 (= lt!146650 (MissingZero!2244 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14948 (_ BitVec 32)) SeekEntryResult!2244)

(assert (=> b!295564 (= lt!146650 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!295565 () Bool)

(assert (=> b!295565 (= e!186822 e!186824)))

(declare-fun res!155485 () Bool)

(assert (=> b!295565 (=> (not res!155485) (not e!186824))))

(declare-fun lt!146647 () Bool)

(assert (=> b!295565 (= res!155485 (and (or lt!146647 (not (undefined!3056 lt!146649))) (or lt!146647 (not (= (select (arr!7084 a!3312) (index!11148 lt!146649)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or lt!146647 (not (= (select (arr!7084 a!3312) (index!11148 lt!146649)) k!2524))) (not lt!146647)))))

(assert (=> b!295565 (= lt!146647 (not (is-Intermediate!2244 lt!146649)))))

(declare-fun res!155484 () Bool)

(assert (=> start!29148 (=> (not res!155484) (not e!186821))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29148 (= res!155484 (validMask!0 mask!3809))))

(assert (=> start!29148 e!186821))

(assert (=> start!29148 true))

(declare-fun array_inv!5038 (array!14948) Bool)

(assert (=> start!29148 (array_inv!5038 a!3312)))

(declare-fun b!295558 () Bool)

(declare-fun res!155483 () Bool)

(assert (=> b!295558 (=> (not res!155483) (not e!186821))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!295558 (= res!155483 (validKeyInArray!0 k!2524))))

(assert (= (and start!29148 res!155484) b!295561))

(assert (= (and b!295561 res!155486) b!295558))

(assert (= (and b!295558 res!155483) b!295562))

(assert (= (and b!295562 res!155481) b!295564))

(assert (= (and b!295564 res!155480) b!295560))

(assert (= (and b!295560 res!155487) b!295559))

(assert (= (and b!295559 res!155482) b!295565))

(assert (= (and b!295565 res!155485) b!295563))

(declare-fun m!308681 () Bool)

(assert (=> b!295564 m!308681))

(declare-fun m!308683 () Bool)

(assert (=> b!295560 m!308683))

(declare-fun m!308685 () Bool)

(assert (=> b!295559 m!308685))

(declare-fun m!308687 () Bool)

(assert (=> b!295559 m!308687))

(declare-fun m!308689 () Bool)

(assert (=> b!295559 m!308689))

(declare-fun m!308691 () Bool)

(assert (=> b!295559 m!308691))

(declare-fun m!308693 () Bool)

(assert (=> b!295558 m!308693))

(declare-fun m!308695 () Bool)

(assert (=> b!295563 m!308695))

(declare-fun m!308697 () Bool)

(assert (=> b!295562 m!308697))

(assert (=> b!295565 m!308695))

(declare-fun m!308699 () Bool)

(assert (=> start!29148 m!308699))

(declare-fun m!308701 () Bool)

(assert (=> start!29148 m!308701))

(push 1)

(assert (not b!295558))

(assert (not b!295559))

(assert (not start!29148))

(assert (not b!295564))

(assert (not b!295562))

