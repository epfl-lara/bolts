; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28346 () Bool)

(assert start!28346)

(declare-fun b!290309 () Bool)

(declare-fun res!151827 () Bool)

(declare-fun e!183718 () Bool)

(assert (=> b!290309 (=> (not res!151827) (not e!183718))))

(declare-datatypes ((array!14649 0))(
  ( (array!14650 (arr!6951 (Array (_ BitVec 32) (_ BitVec 64))) (size!7303 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14649)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14649 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!290309 (= res!151827 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!290310 () Bool)

(declare-fun res!151829 () Bool)

(assert (=> b!290310 (=> (not res!151829) (not e!183718))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!290310 (= res!151829 (validKeyInArray!0 k!2524))))

(declare-fun res!151830 () Bool)

(assert (=> start!28346 (=> (not res!151830) (not e!183718))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28346 (= res!151830 (validMask!0 mask!3809))))

(assert (=> start!28346 e!183718))

(assert (=> start!28346 true))

(declare-fun array_inv!4905 (array!14649) Bool)

(assert (=> start!28346 (array_inv!4905 a!3312)))

(declare-fun b!290311 () Bool)

(declare-fun e!183721 () Bool)

(declare-fun e!183717 () Bool)

(assert (=> b!290311 (= e!183721 e!183717)))

(declare-fun res!151826 () Bool)

(assert (=> b!290311 (=> (not res!151826) (not e!183717))))

(declare-fun lt!143468 () Bool)

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2111 0))(
  ( (MissingZero!2111 (index!10614 (_ BitVec 32))) (Found!2111 (index!10615 (_ BitVec 32))) (Intermediate!2111 (undefined!2923 Bool) (index!10616 (_ BitVec 32)) (x!28772 (_ BitVec 32))) (Undefined!2111) (MissingVacant!2111 (index!10617 (_ BitVec 32))) )
))
(declare-fun lt!143471 () SeekEntryResult!2111)

(assert (=> b!290311 (= res!151826 (and (not lt!143468) (= lt!143471 (MissingVacant!2111 i!1256))))))

(declare-fun lt!143466 () (_ BitVec 32))

(declare-fun lt!143467 () SeekEntryResult!2111)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14649 (_ BitVec 32)) SeekEntryResult!2111)

(assert (=> b!290311 (= lt!143467 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143466 k!2524 (array!14650 (store (arr!6951 a!3312) i!1256 k!2524) (size!7303 a!3312)) mask!3809))))

(declare-fun lt!143469 () SeekEntryResult!2111)

(assert (=> b!290311 (= lt!143469 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143466 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!290311 (= lt!143466 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!290312 () Bool)

(declare-fun e!183719 () Bool)

(assert (=> b!290312 (= e!183717 e!183719)))

(declare-fun res!151831 () Bool)

(assert (=> b!290312 (=> (not res!151831) (not e!183719))))

(declare-fun lt!143470 () Bool)

(assert (=> b!290312 (= res!151831 (and (or lt!143470 (not (undefined!2923 lt!143469))) (not lt!143470) (= (select (arr!6951 a!3312) (index!10616 lt!143469)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!290312 (= lt!143470 (not (is-Intermediate!2111 lt!143469)))))

(declare-fun b!290313 () Bool)

(declare-fun res!151828 () Bool)

(assert (=> b!290313 (=> (not res!151828) (not e!183718))))

(assert (=> b!290313 (= res!151828 (and (= (size!7303 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7303 a!3312))))))

(declare-fun b!290314 () Bool)

(assert (=> b!290314 (= e!183718 e!183721)))

(declare-fun res!151832 () Bool)

(assert (=> b!290314 (=> (not res!151832) (not e!183721))))

(assert (=> b!290314 (= res!151832 (or lt!143468 (= lt!143471 (MissingVacant!2111 i!1256))))))

(assert (=> b!290314 (= lt!143468 (= lt!143471 (MissingZero!2111 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14649 (_ BitVec 32)) SeekEntryResult!2111)

(assert (=> b!290314 (= lt!143471 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!290315 () Bool)

(declare-fun res!151833 () Bool)

(assert (=> b!290315 (=> (not res!151833) (not e!183721))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14649 (_ BitVec 32)) Bool)

(assert (=> b!290315 (= res!151833 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!290316 () Bool)

(assert (=> b!290316 (= e!183719 (not (or (bvslt mask!3809 #b00000000000000000000000000000000) (bvsle mask!3809 #b00111111111111111111111111111111))))))

(assert (=> b!290316 (= (index!10616 lt!143469) i!1256)))

(assert (= (and start!28346 res!151830) b!290313))

(assert (= (and b!290313 res!151828) b!290310))

(assert (= (and b!290310 res!151829) b!290309))

(assert (= (and b!290309 res!151827) b!290314))

(assert (= (and b!290314 res!151832) b!290315))

(assert (= (and b!290315 res!151833) b!290311))

(assert (= (and b!290311 res!151826) b!290312))

(assert (= (and b!290312 res!151831) b!290316))

(declare-fun m!304455 () Bool)

(assert (=> b!290315 m!304455))

(declare-fun m!304457 () Bool)

(assert (=> b!290311 m!304457))

(declare-fun m!304459 () Bool)

(assert (=> b!290311 m!304459))

(declare-fun m!304461 () Bool)

(assert (=> b!290311 m!304461))

(declare-fun m!304463 () Bool)

(assert (=> b!290311 m!304463))

(declare-fun m!304465 () Bool)

(assert (=> b!290309 m!304465))

(declare-fun m!304467 () Bool)

(assert (=> b!290312 m!304467))

(declare-fun m!304469 () Bool)

(assert (=> b!290314 m!304469))

(declare-fun m!304471 () Bool)

(assert (=> start!28346 m!304471))

(declare-fun m!304473 () Bool)

(assert (=> start!28346 m!304473))

(declare-fun m!304475 () Bool)

(assert (=> b!290310 m!304475))

(push 1)

(assert (not start!28346))

(assert (not b!290309))

(assert (not b!290311))

(assert (not b!290314))

(assert (not b!290310))

(assert (not b!290315))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!290431 () Bool)

(declare-fun e!183790 () SeekEntryResult!2111)

(declare-fun e!183787 () SeekEntryResult!2111)

(assert (=> b!290431 (= e!183790 e!183787)))

(declare-fun c!46843 () Bool)

(declare-fun lt!143513 () (_ BitVec 64))

(assert (=> b!290431 (= c!46843 (or (= lt!143513 k!2524) (= (bvadd lt!143513 lt!143513) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!143514 () SeekEntryResult!2111)

(declare-fun b!290432 () Bool)

(assert (=> b!290432 (and (bvsge (index!10616 lt!143514) #b00000000000000000000000000000000) (bvslt (index!10616 lt!143514) (size!7303 (array!14650 (store (arr!6951 a!3312) i!1256 k!2524) (size!7303 a!3312)))))))

(declare-fun res!151874 () Bool)

(assert (=> b!290432 (= res!151874 (= (select (arr!6951 (array!14650 (store (arr!6951 a!3312) i!1256 k!2524) (size!7303 a!3312))) (index!10616 lt!143514)) k!2524))))

(declare-fun e!183789 () Bool)

(assert (=> b!290432 (=> res!151874 e!183789)))

(declare-fun e!183791 () Bool)

(assert (=> b!290432 (= e!183791 e!183789)))

(declare-fun b!290433 () Bool)

(assert (=> b!290433 (= e!183790 (Intermediate!2111 true lt!143466 #b00000000000000000000000000000000))))

(declare-fun b!290434 () Bool)

(declare-fun e!183788 () Bool)

(assert (=> b!290434 (= e!183788 e!183791)))

(declare-fun res!151872 () Bool)

(assert (=> b!290434 (= res!151872 (and (is-Intermediate!2111 lt!143514) (not (undefined!2923 lt!143514)) (bvslt (x!28772 lt!143514) #b01111111111111111111111111111110) (bvsge (x!28772 lt!143514) #b00000000000000000000000000000000) (bvsge (x!28772 lt!143514) #b00000000000000000000000000000000)))))

(assert (=> b!290434 (=> (not res!151872) (not e!183791))))

(declare-fun b!290436 () Bool)

(assert (=> b!290436 (and (bvsge (index!10616 lt!143514) #b00000000000000000000000000000000) (bvslt (index!10616 lt!143514) (size!7303 (array!14650 (store (arr!6951 a!3312) i!1256 k!2524) (size!7303 a!3312)))))))

(declare-fun res!151873 () Bool)

(assert (=> b!290436 (= res!151873 (= (select (arr!6951 (array!14650 (store (arr!6951 a!3312) i!1256 k!2524) (size!7303 a!3312))) (index!10616 lt!143514)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!290436 (=> res!151873 e!183789)))

(declare-fun b!290437 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!290437 (= e!183787 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!143466 #b00000000000000000000000000000000 mask!3809) k!2524 (array!14650 (store (arr!6951 a!3312) i!1256 k!2524) (size!7303 a!3312)) mask!3809))))

(declare-fun b!290438 () Bool)

