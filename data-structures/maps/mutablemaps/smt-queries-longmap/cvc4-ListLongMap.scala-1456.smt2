; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28088 () Bool)

(assert start!28088)

(declare-fun b!287683 () Bool)

(declare-fun e!182192 () Bool)

(declare-fun e!182193 () Bool)

(assert (=> b!287683 (= e!182192 e!182193)))

(declare-fun res!149485 () Bool)

(assert (=> b!287683 (=> (not res!149485) (not e!182193))))

(declare-datatypes ((SeekEntryResult!2006 0))(
  ( (MissingZero!2006 (index!10194 (_ BitVec 32))) (Found!2006 (index!10195 (_ BitVec 32))) (Intermediate!2006 (undefined!2818 Bool) (index!10196 (_ BitVec 32)) (x!28381 (_ BitVec 32))) (Undefined!2006) (MissingVacant!2006 (index!10197 (_ BitVec 32))) )
))
(declare-fun lt!141655 () SeekEntryResult!2006)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!287683 (= res!149485 (or (= lt!141655 (MissingZero!2006 i!1256)) (= lt!141655 (MissingVacant!2006 i!1256))))))

(declare-datatypes ((array!14436 0))(
  ( (array!14437 (arr!6846 (Array (_ BitVec 32) (_ BitVec 64))) (size!7198 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14436)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14436 (_ BitVec 32)) SeekEntryResult!2006)

(assert (=> b!287683 (= lt!141655 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!287684 () Bool)

(declare-fun res!149488 () Bool)

(assert (=> b!287684 (=> (not res!149488) (not e!182193))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14436 (_ BitVec 32)) Bool)

(assert (=> b!287684 (= res!149488 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun res!149486 () Bool)

(assert (=> start!28088 (=> (not res!149486) (not e!182192))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28088 (= res!149486 (validMask!0 mask!3809))))

(assert (=> start!28088 e!182192))

(assert (=> start!28088 true))

(declare-fun array_inv!4800 (array!14436) Bool)

(assert (=> start!28088 (array_inv!4800 a!3312)))

(declare-fun b!287685 () Bool)

(declare-fun res!149490 () Bool)

(assert (=> b!287685 (=> (not res!149490) (not e!182192))))

(declare-fun arrayContainsKey!0 (array!14436 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!287685 (= res!149490 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!287686 () Bool)

(assert (=> b!287686 (= e!182193 false)))

(declare-fun lt!141656 () SeekEntryResult!2006)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14436 (_ BitVec 32)) SeekEntryResult!2006)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!287686 (= lt!141656 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2524 mask!3809) k!2524 a!3312 mask!3809))))

(declare-fun b!287687 () Bool)

(declare-fun res!149487 () Bool)

(assert (=> b!287687 (=> (not res!149487) (not e!182192))))

(assert (=> b!287687 (= res!149487 (and (= (size!7198 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7198 a!3312))))))

(declare-fun b!287688 () Bool)

(declare-fun res!149489 () Bool)

(assert (=> b!287688 (=> (not res!149489) (not e!182192))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!287688 (= res!149489 (validKeyInArray!0 k!2524))))

(assert (= (and start!28088 res!149486) b!287687))

(assert (= (and b!287687 res!149487) b!287688))

(assert (= (and b!287688 res!149489) b!287685))

(assert (= (and b!287685 res!149490) b!287683))

(assert (= (and b!287683 res!149485) b!287684))

(assert (= (and b!287684 res!149488) b!287686))

(declare-fun m!302055 () Bool)

(assert (=> b!287685 m!302055))

(declare-fun m!302057 () Bool)

(assert (=> b!287684 m!302057))

(declare-fun m!302059 () Bool)

(assert (=> b!287686 m!302059))

(assert (=> b!287686 m!302059))

(declare-fun m!302061 () Bool)

(assert (=> b!287686 m!302061))

(declare-fun m!302063 () Bool)

(assert (=> b!287683 m!302063))

(declare-fun m!302065 () Bool)

(assert (=> b!287688 m!302065))

(declare-fun m!302067 () Bool)

(assert (=> start!28088 m!302067))

(declare-fun m!302069 () Bool)

(assert (=> start!28088 m!302069))

(push 1)

(assert (not b!287683))

(assert (not start!28088))

(assert (not b!287688))

(assert (not b!287686))

(assert (not b!287684))

(assert (not b!287685))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

