; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30144 () Bool)

(assert start!30144)

(declare-fun b!301639 () Bool)

(declare-fun e!190311 () Bool)

(assert (=> b!301639 (= e!190311 false)))

(declare-fun lt!149924 () (_ BitVec 32))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!301639 (= lt!149924 (toIndex!0 k!2441 mask!3709))))

(declare-fun b!301640 () Bool)

(declare-fun res!159410 () Bool)

(assert (=> b!301640 (=> (not res!159410) (not e!190311))))

(declare-fun i!1240 () (_ BitVec 32))

(declare-datatypes ((array!15293 0))(
  ( (array!15294 (arr!7234 (Array (_ BitVec 32) (_ BitVec 64))) (size!7586 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15293)

(assert (=> b!301640 (= res!159410 (and (= (size!7586 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7586 a!3293))))))

(declare-fun b!301641 () Bool)

(declare-fun res!159411 () Bool)

(assert (=> b!301641 (=> (not res!159411) (not e!190311))))

(declare-datatypes ((SeekEntryResult!2385 0))(
  ( (MissingZero!2385 (index!11716 (_ BitVec 32))) (Found!2385 (index!11717 (_ BitVec 32))) (Intermediate!2385 (undefined!3197 Bool) (index!11718 (_ BitVec 32)) (x!29959 (_ BitVec 32))) (Undefined!2385) (MissingVacant!2385 (index!11719 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15293 (_ BitVec 32)) SeekEntryResult!2385)

(assert (=> b!301641 (= res!159411 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2385 i!1240)))))

(declare-fun b!301642 () Bool)

(declare-fun res!159406 () Bool)

(assert (=> b!301642 (=> (not res!159406) (not e!190311))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!301642 (= res!159406 (validKeyInArray!0 k!2441))))

(declare-fun b!301643 () Bool)

(declare-fun res!159408 () Bool)

(assert (=> b!301643 (=> (not res!159408) (not e!190311))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15293 (_ BitVec 32)) Bool)

(assert (=> b!301643 (= res!159408 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!301644 () Bool)

(declare-fun res!159409 () Bool)

(assert (=> b!301644 (=> (not res!159409) (not e!190311))))

(declare-fun arrayContainsKey!0 (array!15293 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!301644 (= res!159409 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun res!159407 () Bool)

(assert (=> start!30144 (=> (not res!159407) (not e!190311))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30144 (= res!159407 (validMask!0 mask!3709))))

(assert (=> start!30144 e!190311))

(assert (=> start!30144 true))

(declare-fun array_inv!5188 (array!15293) Bool)

(assert (=> start!30144 (array_inv!5188 a!3293)))

(assert (= (and start!30144 res!159407) b!301640))

(assert (= (and b!301640 res!159410) b!301642))

(assert (= (and b!301642 res!159406) b!301644))

(assert (= (and b!301644 res!159409) b!301641))

(assert (= (and b!301641 res!159411) b!301643))

(assert (= (and b!301643 res!159408) b!301639))

(declare-fun m!313363 () Bool)

(assert (=> b!301642 m!313363))

(declare-fun m!313365 () Bool)

(assert (=> b!301644 m!313365))

(declare-fun m!313367 () Bool)

(assert (=> b!301643 m!313367))

(declare-fun m!313369 () Bool)

(assert (=> b!301641 m!313369))

(declare-fun m!313371 () Bool)

(assert (=> start!30144 m!313371))

(declare-fun m!313373 () Bool)

(assert (=> start!30144 m!313373))

(declare-fun m!313375 () Bool)

(assert (=> b!301639 m!313375))

(push 1)

(assert (not b!301642))

(assert (not b!301639))

(assert (not b!301641))

(assert (not b!301643))

(assert (not start!30144))

(assert (not b!301644))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

